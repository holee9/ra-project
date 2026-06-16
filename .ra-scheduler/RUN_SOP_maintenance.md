# RA KB 유지관리 SOP (Phase 5 — 모니터링 기반)

> 본 문서는 유지관리용 스케줄러(주간 모니터링 / 분기 심층패치)가 실행 시 최우선으로 읽는 자기완결 지침서.
> 대화 기억 없음 전제. BACKLOG 소진형 빌드 SOP(RUN_SOP.md)를 대체한다.
> 제정: 2026-06-05. 빌드 단계(EP 168/168) 완료 후 유지관리 전환.

---

## 0. 핵심 사실 (고정)

- 레포: `holee9/ra-project` (기본 브랜치 `main`)
- 프로젝트: 의료용 X-ray(Detector / Handheld Source / 촬영실 GUI SW) × 3지역(MFDS·FDA·MDR) 인허가 지식저장소
- 지시자 선호: 예의·팩트 기반·간단명확·중언부언 금지
- **자격증명은 절대 하드코딩 금지.** 모두 `.ra-scheduler/.env.scheduler`에서 읽는다:
  - `GITHUB_PAT` (커밋·이슈), `OPENFDA_API_KEY`, `LAW_GO_KR_OC`, `DATA_GO_KR_KEY_ENCODING`
- **로컬 경로는 동적 탐지** (세션 ID 하드코딩 금지):
  ```python
  import glob; BASE = (glob.glob('/sessions/*/mnt/RA project') or ['/sessions/_/mnt/RA project'])[0]
  ```

## 0-A. 금지 사항 (구 SOP 버그 제거)
- ❌ CATCHUP / 미실행 감지(26시간 로직) 사용 금지 — 주간·분기 주기에서 오발화함.
- ❌ BACKLOG 최상단 EP 소진 로직 사용 금지 — 빌드 BACKLOG는 완료됨(EP 168/168).
- ❌ 세션 경로(`/sessions/<고정ID>/...`) 하드코딩 금지.

## 0-B. 마스터 헌장 로드 (최우선, #97)
- 본 SOP보다 먼저 `BASE/.ra-scheduler/MASTER_CHARTER.md`를 읽는다.
- 이번 회차 작업은 **헌장 §1 판단 원칙(규제 임박도 > 3제품 영향 > 정합성/검증 > 선제 기회)으로 마스터(Chief RA Strategist)가 선정**한다. BACKLOG를 맹목 처리하지 말 것.
- 작성은 도메인 페르소나(MFDS/FDA/MDR/표준) 관점, 검토는 QA 게이트(헌장 §3)로 **분리** 수행한다.
- 모든 신규·갱신 문서 하단에 헌장 §3 검토 라인을 넣는다(절차: `QA_GATE.md`).
- KPI(헌장 §4)를 STATE_maintenance·대시보드에 갱신한다.
- 추가 거버넌스 문서를 함께 참조: `QA_GATE.md`(검토 게이트), `VERIFICATION_REGISTER.md`(검증 폐쇄 큐), `DOSSIER_MAP.md`(변경→제품 매핑), `GROUNDING_REGISTRY.md`(근거 1차출처·인용 의무). 변경 감지 시 DOSSIER_MAP으로 영향 제품(P1/P2/P3)을 이슈에 명시한다.

---

## 1. 공통 Step 1 — 상태·자격증명 로드
1. `.env.scheduler`를 읽어 4개 자격증명 확보. 누락 시 해당 소스만 건너뛰고 로그.
2. `.ra-scheduler/STATE_maintenance.md` 읽기 → `last_weekly_run`, `last_quarterly_run`, `last_seen`(소스별 마지막 감지 기준일/ID), `open_followups`.
3. GitHub open 이슈 조회: `GET /repos/holee9/ra-project/issues?state=open&labels=ra-maint`.

---

## 2. 주간 모니터링 회차 (cron `0 7 * * 1`)

목적: 시간민감 규제 변경(의견수렴 마감·안전성 정보·신규 고시/규칙)을 조기 포착. **경량**.

### 2-A. 소스 폴링 (WebFetch 우선, 실패 시 bash urllib)
| 소스 | 호출 | 감지 대상 |
|---|---|---|
| openFDA recall | `https://api.fda.gov/device/recall.json?api_key=<KEY>&search=report_date:[<last_seen>+TO+NOW]&limit=20` | X-ray 관련 회수 |
| openFDA enforcement | `.../device/enforcement.json?...` | 집행조치 |
| Federal Register | `https://www.federalregister.gov/api/v1/documents.json?conditions[agencies][]=food-and-drug-administration&conditions[publication_date][gte]=<last_seen>&per_page=20&order=newest` | FDA 규칙·가이던스 |
| EUR-Lex SPARQL | Cellar 엔드포인트(무등록) — MDR/IVDR 개정 추적 (아래 2-A-EU) | EU 개정·결정 |
| law.go.kr 행정규칙 | `http://www.law.go.kr/DRF/lawSearch.do?OC=<OC>&target=admrul&type=JSON&query=의료기기&display=20&sort=ddes` | 식약처 고시 제·개정 |
| law.go.kr 현행법령 | `...&target=law&query=의료기기...` | 의료기기법령 개정 |
| data.go.kr 추적관리 | `http://apis.data.go.kr/1471000/TraceManageMdlpInfoService01/getTraceManageMdlpInfoList01?serviceKey=<KEY>&type=json&numOfRows=20` | 회수·판매중지 |

> .go.kr 게시판 HTML 직접 fetch 금지(JS 렌더링 빈응답). 위 API/SPARQL만 사용.
> ⚠ EUR-Lex RSS는 토큰 없이는 동작 안 함(202/404 확인됨) → RSS 대신 아래 SPARQL 사용.

### 2-A-EU. EUR-Lex 개정 추적 (확정 방식, 2026-06-08 실측)
엔드포인트(무등록): `https://publications.europa.eu/webapi/rdf/sparql`
GET 파라미터: `query=<아래 쿼리>` + `format=application/sparql-results+json`
```sparql
PREFIX cdm:<http://publications.europa.eu/ontology/cdm#>
SELECT DISTINCT ?celex ?date WHERE {
 ?mdr cdm:resource_legal_id_celex "32017R0745"^^<http://www.w3.org/2001/XMLSchema#string> .
 ?amender cdm:resource_legal_amends_resource_legal ?mdr .
 ?amender cdm:resource_legal_id_celex ?celex .
 OPTIONAL { ?amender cdm:work_date_document ?date . }
} ORDER BY DESC(?date) LIMIT 10
```
- IVDR도 보려면 CELEX를 `32017R0746`으로 바꿔 1회 더 호출.
- 신규성 판정: 반환 CELEX 목록을 STATE `eurlex_known_amendments`와 비교 → 신규 CELEX만 처리, 처리 후 목록 갱신.
- 2026-06-08 기준 알려진 MDR 개정: 32025R2457·32025R1920·32024R1860·32024R0568·32023R2197·32023R0607·32023R0502·32020R0561.

### 2-B. 신규성 판정 (triage)
- 각 소스 응답에서 `last_seen` 이후 신규 항목만 추출.
- 관련성 필터: 자사 제품(X-ray Detector/Handheld Source/GUI SW)·3지역·핵심표준(IEC 60601·62304·62366, ISO 14971·13485) 키워드.
- 영향도 분류: **고**(즉시 KB 갱신+이슈) / **중**(이슈만 등록, 분기처리 보류) / **저**(STATE 로그만).

### 2-C. 처리
- 고영향: 해당 KB 문서 갱신(상단 `> 최종 갱신: YYYY-MM-DD (주간모니터)` + 근거 URL), GitHub 이슈 생성(라벨 `ra-maint`,`monitor`,영향도).
- 중영향: 이슈만 생성(라벨 `ra-maint`,`for-quarterly`) → 분기 회차가 처리.
- 의견수렴 마감 임박(FDA 60일·MFDS 행정예고 20일/입법예고 40일) 항목은 이슈 제목에 `[마감 D-n]` 표기.

### 2-D. 마감
- 변경분 GitHub Git Data API로 커밋(아래 4 공통).
- README `## 자동보강 로그`에 1줄. `STATE_maintenance.md`의 `last_weekly_run`·소스별 `last_seen` 갱신.
- 변경 없으면: "주간 모니터 — 신규 규제변경 없음" 1줄 로그만, 커밋 생략 가능.
- 대시보드 갱신(아래 5).

---

## 3. 분기 심층패치 회차 (cron `0 3 1 1,4,7,10 *`)

목적: 실질 콘텐츠 갱신·표준 개정 반영·저장소 정합성 점검. **심층**.

1. `BACKLOG.md`의 `[P5]` 미완료 항목 + 주간회차가 남긴 `for-quarterly` 이슈 확인.
2. 회당 **1~2개** 처리(스코프 가드). 우선순위: (a) 마감 임박 규제, (b) 표준 개정(IEC 62304 Ed.2 등), (c) P5 정기 패치.
3. 딥리서치: 공식 1차 소스 **최소 3개 교차검증**, 2024~현재 최신 개정·발효일 확인. 사실/해석/행동 3계층 기록.
4. 딥싱크: 3지역 비교 매트릭스 + 자사 3제품 영향 맵핑. 기존 KB 상충·중복 점검(INDEX.md).
5. 문서 작성·갱신(상단 2줄 필수). 표준 매트릭스·인증유지(PSUR/CER/Vigilance) 캘린더 갱신.
6. 커밋(아래 4) → 이슈 close/label `done` → README 로그 → `STATE_maintenance.md` `last_quarterly_run` 갱신 → 대시보드(5).
7. 1월 회차는 ISO 13485 5.6 경영검토 관점의 **전수 정합성 점검**을 겸한다.

---

## 4. 커밋 (GitHub Git Data API) — 공통

`Authorization: Bearer <GITHUB_PAT>` 헤더로 순서대로:
1. `GET /repos/holee9/ra-project/git/refs/heads/main` → baseCommitSha
2. `GET .../git/commits/<baseCommitSha>` → baseTreeSha
3. 파일마다 `POST .../git/blobs` (UTF-8→base64)
4. `POST .../git/trees` (base_tree=baseTreeSha)
5. `POST .../git/commits` (message: `maint(weekly|quarterly): <요지>`, parents=[baseCommitSha])
6. `PATCH .../git/refs/heads/main`

경로 우선순위: WebFetch → 실패 시 bash `urllib`/`curl`. 전부 실패 시 로컬만 쓰고 STATE에 `commit_failed: true` 기록.

### 4-A. 원격→로컬 동기 (커밋 후, 동적 경로)
```python
import glob, os, urllib.request, base64, json, hashlib
BASE=(glob.glob('/sessions/*/mnt/RA project') or [None])[0]
# (구 SOP의 동기 스크립트 로직 사용하되 LOCAL_BASE=BASE 로 동적 지정)
```

## 5. 대시보드 갱신 (공통 마지막) — 유지관리 KPI 기준

`STATE_maintenance.md` 갱신 후 `ra-kb-dashboard.html`을 Read→Write로 갱신하고 `mcp__cowork__update_artifact`(id `ra-kb-dashboard`) 호출. **빌드용 EP 도넛/속도/예상완료 지표는 사용 금지**(폐기됨). 아래 유지관리 구성을 유지·갱신한다:

1. **grid4 운영현황**: 주간 모니터(최근/다음 실행일), 분기 패치(최근/다음), 최근 주간 감지 건수(고/중/저), KB 규모(문서 수).
2. *