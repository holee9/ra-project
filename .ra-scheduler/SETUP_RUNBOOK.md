# 1회성 셋업 런북 — 유지관리 스케줄러 자동 교체

> 1회성 스케줄 작업(`ra-maint-cutover`)이 이 파일을 읽고 **그대로 실행**한다.
> 대화 기억 없음 전제. 작성: 2026-06-05.
> 로컬 경로 동적 탐지: `BASE = glob('/sessions/*/mnt/RA project')[0]`.

## 목표
4개 자격증명을 재검증하고, **모두 통과한 경우에만** 빌드용 스케줄러 2개를 유지관리용 2개로 교체한다. 하나라도 실패하면 파괴적 작업 없이 로그만 남기고 종료한다.

---

## STEP 1 — 자격증명 재검증 (필수, 게이트)

`<BASE>/.ra-scheduler/.env.scheduler`를 읽어 아래 Python을 `mcp__workspace__bash`로 실행한다.

```python
import os, glob, urllib.request, urllib.parse, json, ssl
BASE=(glob.glob('/sessions/*/mnt/RA project') or [None])[0]
env={}
for line in open(f"{BASE}/.ra-scheduler/.env.scheduler"):
    line=line.strip()
    if line and not line.startswith("#") and "=" in line:
        k,v=line.split("=",1); env[k]=v.strip().strip('"')
ctx=ssl.create_default_context()
def get(u,h=None,t=30):
    r=urllib.request.Request(u,headers=h or {"User-Agent":"ra"})
    try:
        with urllib.request.urlopen(r,timeout=t,context=ctx) as x: return x.status,x.read().decode("utf-8","replace")
    except urllib.error.HTTPError as e: return e.code,e.read().decode("utf-8","replace")
    except Exception as e: return None,f"{type(e).__name__}:{e}"

ok={}
# 1 GitHub
s,t=get("https://api.github.com/repos/holee9/ra-project",{"Authorization":f"Bearer {env.get('GITHUB_PAT','')}","Accept":"application/vnd.github+json","User-Agent":"ra"})
ok['github']= s==200 and '"push": true' in t.replace(" ","").replace('"push":true','"push": true')
ok['github']= (s==200 and json.loads(t).get("permissions",{}).get("push") is True) if s==200 else False
# 2 openFDA
s,t=get(f"https://api.fda.gov/device/recall.json?api_key={env.get('OPENFDA_API_KEY','')}&limit=1"); ok['openfda']=(s==200 and t.lstrip().startswith("{"))
# 3 law.go.kr
s,t=get(f"http://www.law.go.kr/DRF/lawSearch.do?OC={env.get('LAW_GO_KR_OC','')}&target=admrul&type=JSON&query=%EC%9D%98%EB%A3%8C%EA%B8%B0%EA%B8%B0&display=1"); ok['law']=(s==200 and t.lstrip().startswith("{"))
# 4 data.go.kr
raw=env.get('DATA_GO_KR_KEY_ENCODING',''); enc=raw if "%" in raw else urllib.parse.quote(raw,safe="")
s,t=get(f"http://apis.data.go.kr/1471000/MdlpMnfcturPrmisnInfoService01/getMdlpMnfcturPrmisnList01?serviceKey={enc}&pageNo=1&numOfRows=1&type=json"); ok['datagokr']=(s==200 and t.lstrip().startswith("{"))
print("VERIFY:",ok)
print("ALL_GREEN:", all(ok.values()))
```

- 출력 `ALL_GREEN: True` → **STEP 2로 진행**.
- `False` → **STEP 2~3 수행 금지**. `<BASE>/.ra-scheduler/STATE_maintenance.md`에 `cutover_note: <YYYY-MM-DD HH:MM> 미통과 <실패항목> — 재시도 필요` 추가하고, 사용자에게 "data.go.kr 키 활성 지연 등으로 미통과, 수동 재시도 요망" 1줄 보고 후 종료.

---

## STEP 2 — 신규 유지관리 스케줄러 2개 생성 (ALL_GREEN일 때만)

`mcp__scheduled-tasks__create_scheduled_task`를 2회 호출한다.

### 2-A. 주간 모니터링
- taskId: `ra-kb-monitor-weekly`
- cronExpression: `0 7 * * 1`
- description: `RA KB 주간 모니터링 — 규제변경 조기탐지·이슈화·커밋·대시보드`
- prompt(아래 전문 그대로):
```
RA 인허가 지식저장소 주간 모니터링 회차다. 대화 기억 없음 전제.
1) 로컬 경로 동적 탐지: BASE = glob('/sessions/*/mnt/RA project')[0].
2) 최우선으로 BASE/.ra-scheduler/RUN_SOP_maintenance.md 전문을 읽고 엄수.
3) 이어 STATE_maintenance.md 읽기. 자격증명은 BASE/.ra-scheduler/.env.scheduler에서만 로드(하드코딩 금지).
4) SOP의 "2. 주간 모니터링 회차" 절차를 순서대로 수행: 소스 폴링(openFDA·Federal Register·EUR-Lex RSS·law.go.kr·data.go.kr) → last_seen 이후 신규성 판정 → 영향도 triage → 고영향 KB갱신+이슈, 중영향 이슈(for-quarterly) → GitHub Git Data API 커밋 → 원격→로컬 동기(동적경로) → README 로그 → STATE_maintenance.md last_seen·last_weekly_run 갱신 → 대시보드 update_artifact.
5) CATCHUP·EP소진·세션경로 하드코딩 로직은 절대 사용 금지.
6) 종료 시 1줄 보고: [weekly] 신규감지 N건 / 이슈 #.. / 커밋 sha7 / 대시보드 ok|fail.
```

### 2-B. 분기 심층패치
- taskId: `ra-kb-patch-quarterly`
- cronExpression: `0 3 1 1,4,7,10 *`
- description: `RA KB 분기 심층패치 — P5 정기패치·표준개정 반영·정합성 점검`
- prompt(아래 전문 그대로):
```
RA 인허가 지식저장소 분기 심층패치 회차다. 대화 기억 없음 전제.
1) 로컬 경로 동적 탐지: BASE = glob('/sessions/*/mnt/RA project')[0].
2) 최우선으로 BASE/.ra-scheduler/RUN_SOP_maintenance.md 전문을 읽고 엄수.
3) STATE_maintenance.md·BACKLOG.md 읽기. 자격증명은 .env.scheduler에서만 로드.
4) SOP의 "3. 분기 심층패치 회차" 절차 수행: P5 미완료 + 주간이 남긴 for-quarterly 이슈 중 1~2개 처리(우선순위: 마감임박>표준개정>P5정기). 공식 1차소스 3개 교차검증, 3지역 매트릭스+3제품 맵핑, 문서 갱신(상단 2줄), 인증유지(PSUR/CER/Vigilance) 캘린더·표준 매트릭스 갱신.
5) GitHub Git Data API 커밋 → 원격→로컬 동기(동적경로) → 이슈 close → README 로그 → STATE last_quarterly_run 갱신 → 대시보드. 1월 회차는 ISO 13485 5.6 전수 정합성 점검 겸함.
6) CATCHUP·EP소진·세션경로 하드코딩 금지. 종료 시 1줄 보고.
```

생성 후 `mcp__scheduled-tasks__list_scheduled_tasks`로 두 작업이 등록됐는지 확인.

---

## STEP 3 — 구 빌드 스케줄러 2개 삭제 (STEP 2 성공 확인 후)

빌드용 일 2회 스케줄러를 비활성/삭제한다. `update_scheduled_task`로 `enabled:false` 처리하거나 삭제:
- `ra-kb-autogrowth-0300`
- `ra-kb-autogrowth-1930`

> 삭제 도구가 없으면 `update_scheduled_task(enabled=false)`로 비활성화하고 STATE에 `legacy_disabled: true` 기록.

---

## STEP 4 — 마무리 로그
- `STATE_maintenance.md`에 `cutover_done: <YYYY-MM-DD HH:MM>` 기록.
- 사용자에게 1줄 보고: `교체 완료 — 신규 주간/분기 스케줄러 가동, 구 빌드 스케줄러 2개 비활성. 첫 주간회차: 다음 월요일 07:00`.
- 구 토큰(ghp_8AxX...) 잔존 시 README 보안노트로 폐기 권고 1줄.
