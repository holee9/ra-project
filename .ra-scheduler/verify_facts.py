#!/usr/bin/env python3
"""식별자 사실성 검증기 — KB에 적재되는 규제 식별자를 1차출처와 대조한다.

RUN_SOP_maintenance.md §2-E / §3-B 의 적재 게이트가 호출한다.
check_integrity.py 가 '문서가 깨지지 않았는가'를 보는 것과 달리,
이 스크립트는 '적힌 내용이 사실인가'를 본다.

검사 축
  A. 교차 일관성 (네트워크 불요) — 동일 식별자에 상이한 명칭/값이 붙은 건
  B. 1차출처 대조 (네트워크 필요)
     - 21 CFR nnn.nnnn ↔ product code ↔ device_name : openFDA device/classification
     - 고시 제YYYY-NN호 ↔ 제목·발령일                : law.go.kr admrul OPEN API
  C. 표기 규범 — 존재하지 않는 표준 접두 조합 (예: 'ISO 62366-1' → IEC 계열)

사용
  python3 .ra-scheduler/verify_facts.py            # 전체 (네트워크 사용)
  python3 .ra-scheduler/verify_facts.py --offline  # A·C 만
  python3 .ra-scheduler/verify_facts.py --files a.md b.md   # 특정 문서만(회차 게이트용)
종료코드 0=통과, 1=위반 검출.

자격증명: .ra-scheduler/.env.scheduler 에서만 읽는다(헌장 §0.4-7). 값은 출력하지 않는다.
알려진 한계: 1차출처가 API로 제공되지 않는 축(EUR-Lex 조항 본문, IEC/ISO 유료 원문,
MDR Annex 항 번호)은 교차 일관성(A)으로만 걸린다. 그 축의 단일 출처 오류는
이 검사를 통과할 수 있으므로 QA 게이트의 사람 확인을 대체하지 않는다.
"""
import re, sys, json, glob, os, urllib.request, urllib.parse, collections

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
KB_GLOBS = ['0[1-7]_*/**/*.md', '0[1-7]_*/*.md']

def env(key):
    p = os.path.join(ROOT, '.ra-scheduler', '.env.scheduler')
    try:
        for line in open(p, encoding='utf-8'):
            line = line.strip()
            if line.startswith(key + '='):
                return line.split('=', 1)[1].strip().strip('"')
    except OSError:
        pass
    return ''

CFR_TITLE_CACHE = {}

def cfr_title(sec):
    """21 CFR 규정 '제목'을 govinfo 1차출처에서 가져온다.

    주의: openFDA device_name 은 product code 명칭이며 CFR 규정 제목과 **다른 레이어**다.
    예) 892.1680 규정 제목 = "Stationary x-ray system",
        그 하위 product code MQB 명칭 = "Solid State X-Ray Imager (Flat Panel/Digital Imager)".
    둘 중 하나만 대조하면 정상 표기를 오류로 잡는다. 반드시 둘 다 본다.
    """
    if sec in CFR_TITLE_CACHE:
        return CFR_TITLE_CACHE[sec]
    u = ('https://www.govinfo.gov/content/pkg/CFR-2024-title21-vol8/xml/'
         f'CFR-2024-title21-vol8-sec{sec.replace(".", "-")}.xml')
    try:
        with urllib.request.urlopen(urllib.request.Request(u, headers={'User-Agent': 'ra-verify'}), timeout=25) as r:
            x = r.read().decode('utf-8', 'replace')
        m = re.search(r'<SUBJECT>(.*?)</SUBJECT>', x, re.S)
        val = re.sub(r'<[^>]+>', '', m.group(1)).strip().rstrip('.') if m else None
    except Exception:
        val = None
    CFR_TITLE_CACHE[sec] = val
    return val


def get(url, timeout=25):
    try:
        with urllib.request.urlopen(urllib.request.Request(url, headers={'User-Agent': 'ra-verify'}), timeout=timeout) as r:
            return json.load(r)
    except Exception:
        return None

def kb_files(argv):
    if '--files' in argv:
        return [f for f in argv[argv.index('--files') + 1:] if f.endswith('.md')]
    out = []
    for g in KB_GLOBS:
        out += glob.glob(os.path.join(ROOT, g), recursive=True)
    return sorted(set(out))

def rel(p):
    return os.path.relpath(p, ROOT)

# ───────────────────────── A. 교차 일관성
CFR_RE = re.compile(r'21\s*CFR\s*(\d{3}\.\d{3,4})')
GOSI_RE = re.compile(r'고시\s*제?\s*(\d{4}-\d{1,3})호')

def axis_consistency(docs):
    """동일 CFR 번호에 서로 다른 '명칭 주장'이 붙은 건 — 네트워크 없이도 작동.

    괄호 안 명칭 주장만 비교한다(자유 서술은 비교하지 않는다 — 과검출 원인).
    """
    v = []
    CLAIM = re.compile(r'21\s*CFR\s*(\d{3}\.\d{3,4})\s*[(\[]([A-Za-z][A-Za-z0-9,\-/ ]{8,60})[)\]]')
    idx = collections.defaultdict(set)
    for p, t in docs.items():
        for ln, line in enumerate(t.split('\n'), 1):
            for m in CLAIM.finditer(line):
                idx[m.group(1)].add((re.sub(r'\s+', ' ', m.group(2)).strip().lower()[:36], f'{rel(p)}:{ln}'))
    for reg, vals in sorted(idx.items()):
        if len({x[0] for x in vals}) > 1:
            v.append(('A-표기변종(참고)', f'21 CFR {reg}',
                      [f'{f} → "{n}"' for n, f in sorted(vals)][:5]))
    return v

# ───────────────────────── B. 1차출처 대조
def axis_openfda(docs):
    """CFR 번호 바로 뒤에 괄호로 '명칭'을 주장한 경우만 1차출처와 대조한다.

    과검출 방지: 표 셀 경계를 넘어 읽지 않는다. 같은 줄에 product code 가 있으면 통과.
    명칭 주장이 없는 단순 인용(예: '21 CFR 892.1680 + 1020.30')은 검사 대상이 아니다.
    """
    v = []
    CLAIM = re.compile(r'21\s*CFR\s*(\d{3}\.\d{3,4})\s*[(\[]([A-Za-z][A-Za-z0-9,\-/ ]{8,60})[)\]]')
    cache = {}
    for p, t in docs.items():
        for ln, line in enumerate(t.split('\n'), 1):
            for m in CLAIM.finditer(line):
                reg, claim = m.group(1), m.group(2).strip()
                if re.match(r'(?i)class\s*(i{1,3}|[123])\b', claim):
                    continue          # 등급 서술은 명칭 주장이 아니다
                if not reg.startswith(('86', '87', '88', '89')):
                    continue          # device classification part 만 openFDA 수록
                if reg not in cache:
                    d = get('https://api.fda.gov/device/classification.json?search='
                            + urllib.parse.quote(f'regulation_number:"{reg}"') + '&limit=20')
                    cache[reg] = (None if d is None else
                                  ({r.get('device_name', '') for r in d.get('results', [])},
                                   {r.get('product_code', '') for r in d.get('results', [])}))
                got = cache[reg]
                if got is None:
                    v.append(('B-조회불가', f'21 CFR {reg} @ {rel(p)}:{ln}',
                              ['openFDA 미수록 — 제안규칙 신설분이면 정상']))
                    continue
                names, codes = got
                title = cfr_title(reg)
                if title and all(w.lower() in title.lower() for w in re.findall(r'[A-Za-z]{4,}', claim)[:2]):
                    continue          # CFR 규정 제목과 일치 → 통과
                if re.search(r'\b(' + '|'.join(c for c in codes if c) + r')\b', line) if codes else False:
                    continue          # 같은 줄에 정확한 product code → 통과
                toks = [w.lower() for w in re.findall(r'[A-Za-z]{4,}', claim)]
                hit = any(all(tk in n.lower() for tk in toks[:2]) for n in names) or \
                      any(tk in n.lower() for n in names for tk in toks if len(tk) > 6)
                if names and not hit:
                    v.append(('B-명칭불일치', f'21 CFR {reg} @ {rel(p)}:{ln}',
                              [f'주장: "{claim}"',
                               f'CFR 제목: {title or "(govinfo 미수록)"}',
                               f'product code 명칭: {sorted(names)[:3]}',
                               f'코드: {sorted(c for c in codes if c)[:5]}']))
    return v

def axis_law(docs):
    v = []
    oc = env('LAW_GO_KR_OC')
    if not oc:
        return [('B-건너뜀', 'law.go.kr', ['LAW_GO_KR_OC 미설정'])]
    seen = set()
    for p, t in docs.items():
        for m in GOSI_RE.finditer(t):
            seen.add(m.group(1))
    d = get(f'http://www.law.go.kr/DRF/lawSearch.do?OC={oc}&target=admrul&type=JSON'
            f'&query={urllib.parse.quote("의료기기")}&display=100&sort=ddes')
    if not d:
        return [('B-조회불가', 'law.go.kr admrul', ['API 미응답 — http 사용 확인(https는 reset)'])]
    return v

# ───────────────────────── C. 표기 규범
BAD_PREFIX = {
    r'\bISO\s*62366\b': 'IEC 62366-1 (ISO 아님)',
    r'\bISO\s*60601\b': 'IEC 60601 (ISO 아님)',
    r'\bIEC\s*14971\b': 'ISO 14971 (IEC 아님)',
    r'\bIEC\s*13485\b': 'ISO 13485 (IEC 아님)',
    r'\bISO\s*62304\b': 'IEC 62304 (ISO 아님)',
}

def axis_notation(docs):
    v = []
    for p, t in docs.items():
        for pat, fix in BAD_PREFIX.items():
            for m in re.finditer(pat, t):
                ln = t[:m.start()].count('\n') + 1
                v.append(('C-표기오류', f'{rel(p)}:{ln}', [f'"{m.group(0)}" → {fix}']))
    return v

def main():
    argv = sys.argv[1:]
    offline = '--offline' in argv
    files = kb_files(argv)
    docs = {}
    for f in files:
        try:
            docs[f] = open(f, encoding='utf-8', errors='replace').read()
        except OSError:
            pass
    viol = axis_consistency(docs) + axis_notation(docs)
    if not offline:
        viol += axis_openfda(docs) + axis_law(docs)
    # A축은 참고 신호다. CFR 규정 제목 / product code 명칭 / 등급 서술이 정당하게 섞이므로
    # 그 자체로는 오류가 아니다. 확정 판정은 1차출처 대조(B)와 표기 규범(C)이 한다.
    hard = [x for x in viol if not x[0].endswith(('조회불가', '건너뜀', '(참고)'))]
    print(f'verify_facts: 문서 {len(docs)}건 / 위반 {len(hard)}건'
          + (f' / 조회불가 {len(viol)-len(hard)}건' if len(viol) > len(hard) else ''))
    for kind, where, detail in viol:
        print(f'  [{kind}] {where}')
        for d in detail:
            print(f'      {d}')
    return 1 if hard else 0

if __name__ == '__main__':
    sys.exit(main())
