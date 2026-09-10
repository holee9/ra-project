#!/usr/bin/env python3
"""문서 무결성 검사 (RUN_SOP_maintenance §6).

판정 신호는 셋뿐이다 — 그 외 휴리스틱은 정상 문서를 대량 오검출하므로 쓰지 않는다.
  ① UTF-8 디코딩 실패 (멀티바이트 중간 절단)
  ② U+FFFD 치환문자 포함
  ③ 말미 줄의 마크다운 구조 미완결 (대괄호·괄호 미닫힘, 인라인 백틱 홀수, 코드펜스 홀수)
     - 코드펜스(```)는 인라인 백틱 계산에서 제외한다.

사용:
  python3 .ra-scheduler/check_integrity.py            # 원격 origin/main 전수
  python3 .ra-scheduler/check_integrity.py --local    # 작업트리 전수
  python3 .ra-scheduler/check_integrity.py --staged   # 커밋 대상만
종료코드 0=정상, 1=손상 검출.

**알려진 한계 (2026-09-10 실측).** 본 검사는 사후 탐지이며 만능이 아니다. 절단이
일어나도 마크다운 구조가 우연히 유효하면 검출되지 않는다 — 실제로 확인된 손상 8건 중
4건(URL 중간·단어 중간·목록 항목 중간 절단)은 본 검사를 통과했다.
따라서 **1차 방어는 커밋 시점의 바이트 수 대조**(RUN_SOP_maintenance §6-②)이고,
본 검사는 2차 그물이다. 둘 다 수행할 것.
"""
import subprocess, sys

def sh(a): return subprocess.run(a, capture_output=True).stdout

def verdict(d: bytes):
    try:
        t = d.decode('utf-8')
    except Exception:
        return 'UTF-8 중간절단', ''
    if '�' in t:
        return 'U+FFFD 치환문자', ''
    fences = sum(1 for L in t.split('\n') if L.startswith('```'))
    if fences % 2 == 1:
        return '코드펜스 미닫힘', t.rstrip('\n').split('\n')[-1][-45:]
    last = t.rstrip('\n').split('\n')[-1]
    inline = last.replace('```', '')
    if last.count('[') > last.count(']') or last.count('(') > last.count(')') or inline.count('`') % 2 == 1:
        return '말미 구조 미완결', last[-45:]
    return None, ''

mode = sys.argv[1] if len(sys.argv) > 1 else '--remote'
if mode == '--local':
    paths = sh(['git', '-c', 'core.quotepath=false', 'ls-files', '*.md']).decode().splitlines()
    get = lambda p: open(p, 'rb').read()
elif mode == '--staged':
    paths = sh(['git', '-c', 'core.quotepath=false', 'diff', '--cached', '--name-only']).decode().splitlines()
    paths = [p for p in paths if p.endswith('.md')]
    get = lambda p: open(p, 'rb').read()
else:
    paths = sh(['git', '-c', 'core.quotepath=false', 'ls-tree', '-r', '--name-only', 'origin/main']).decode().splitlines()
    paths = [p for p in paths if p.endswith('.md')]
    get = lambda p: sh(['git', 'show', f'origin/main:{p}'])

bad = []
for p in paths:
    try:
        d = get(p)
    except FileNotFoundError:
        continue
    if not d:
        continue
    why, tail = verdict(d)
    if why:
        bad.append((p, len(d), why, tail))

print(f"검사 {len(paths)}건 / 손상 {len(bad)}건")
for p, n, why, tail in bad:
    print(f"  [{why}] {n}B  {p}")
    if tail:
        print(f"      말미: ...{tail}")
sys.exit(1 if bad else 0)
