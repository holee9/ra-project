# RA KB 자동보강 실행 SOP (자동 스케줄 러닝용)

> 본 문서는 자동 스케줄 러닝 시작 시 Claude가 **최우선으로 읽는 자기완결 지침서**.
> 모든 단계는 이 문서에 명시된 순서대로 엄격히 수행할 것. 대화 기억 없음을 전제.
> 최초 제정: 2026-04-22 / EP 기반 정책 도입: 2026-04-30

---

## 0-A. 회차별 업무 분장 (1일 2회차 체계)

| 회차 | Task ID | 시각 | EP 예산 | 주력 업무 |
|---|---|---|---|---|
| **1회차** | `ra-kb-autogrowth-0300` | 03:00 | 3 EP | BACKLOG 상단부터 EP 예산 소진까지 처리 → 커밋 |
| **2회차** | `ra-kb-autogrowth-1930` | 19:30 | 3 EP | carryover 이슈 우선 처리 → 잔여 예산으로 신규 항목 처리 |
| **CATCHUP** | (동일 Task ID) | 해당 시각 | 4 EP | 미실행 누적분 해소 목적으로 예산 1 EP 증가 |

### EP 예산 처리 원칙
1. 회차 시작 시 STATE.md `run_ep_budget_today_remaining` 확인.
2. BACKLOG 최상단 미완료 항목의 `[EP:N]` 값을 확인한다.
3. **잔여 예산 ≥ 항목 EP** → 해당 항목 처리 착수. 완료 후 잔여 예산에서 EP 차감.
4. 차감 후 잔여 예산이 남으면 다음 항목도 처리 (예: 예산 3, EP:1 항목 2개 처리 후 EP:1 항목 1개 추가 처리 가능).
5. **잔여 예산 < 다음 항목 EP** → 중단, carryover 처리.
6. 회차 종료 시 STATE.md 갱신 (EP 실적 반드시 기록).

---

## 0. 핵심 사실 (고정)

- 레포: `holee9/ra-project` (https://github.com/holee9/ra-project)
- 기본 브랜치: `main`
- PAT 파일: `C:\Users\drake.lee\.git-credentials`
  - 형식: `https://holee9:<PAT>@github.com`에서 `<PAT>` 추출 사용
- 로컬 작업 디렉토리: `C:\Users\drake.lee\Documents\Claude\Projects\RA project`
- 사용자: `holee9` / `hnabyz2023@gmail.com`
- 프로젝트 목표: 의료용 X-ray (Detector / Handheld Source / GUI SW) 3대 지역(MFDS·FDA·MDR) 인허가 지식저장소
- 지시자 선호: 예의·팩트 기반·간단명확·중언부언 금지

---

## 1. Step 1 — 상태 파악 (필수)

### 1-A. 미실행 회차 감지 (최우선 체크)
1. 현재 시각(UTC)과 STATE.md `last_run` 차이를 계산한다.
2. **차이 > 26시간** → 직전 회차 미실행으로 판단:
   - STATE.md에 `missed_run: true` + `missed_since: <last_run 값>` 기록
   - 미실행 횟수 추정: (경과 시간 / 12시간) 반올림. `missed_run_count_approx` 갱신.
   - `missed_ep_total`: missed_run_count_approx × 3 으로 갱신.
   - 이번 회차 EP 예산을 CATCHUP 예산(4 EP)으로 설정.
   - 이슈 제목에 `[CATCHUP]` 접두어 추가하여 일반 회차와 구분.
   - CATCHUP 해소 판단: 매 회차 `missed_ep_total`에서 실제 소비 EP 차감. 0 이하 도달 시 `missed_run: false`, CATCHUP 종료.
3. **차이 ≤ 26시간** → 정상 회차. EP 예산 3으로 설정. `missed_run: false` 유지.

### 1-B. 일반 상태 파악
1. `.ra-scheduler/STATE.md` 읽기 → `last_issue`, `last_run`, `ep_remaining`, `next_candidate`, `run_ep_budget_today_remaining` 확인.
2. GitHub API로 open 이슈 조회:
   - `GET /repos/holee9/ra-project/issues?state=open&labels=ra-auto`
3. `in-progress` 또는 `carryover` 라벨 이슈 존재 → **해당 이슈 이어받기** (Step 2 skip).
4. 없으면 `.ra-scheduler/BACKLOG.md` 최상단 미완료 항목 선택 (EP 예산 확인 후).

---

## 2. Step 2 — 이슈 등록 (신규 주제일 때)

- 제목: `[AUTO-YYYY-MM-DD-HHMM] <주제> [EP:N]`
- 본문(체크리스트 포함):
  ```
  ## 목표
  <주제 요지 1~2줄>

  ## EP 정보
  - 할당 EP: N
  - 회차 예산 잔여: M EP

  ## 작업 체크리스트
  - [ ] 공식 소스 리서치 (3개 지역)
  - [ ] 교차 검증 (최소 3개 독립 소스)
  - [ ] 딥싱크 비교 매트릭스
  - [ ] 문서 작성/갱신
  - [ ] 자사 3개 제품 영향 맵핑
  - [ ] 커밋 (GitHub API)
  - [ ] README 성장 로그 갱신
  - [ ] STATE.md 갱신 (EP 실적 포함)

  ## 참조 소스
  (러닝 중 기록)
  ```
- 라벨: `ra-auto`, `in-progress`, 주제별(`regulation` / `technical-file` / `template` / `education` / `qms` / `cybersecurity` / `clinical` / `labeling` / `post-market`)

---

## 3. Step 3 — 딥리서치 (매 회차 필수)

- WebSearch / WebFetch 우선 (api.github.com 외 공식 1차 소스)
  - MFDS: `mfds.go.kr`, `law.go.kr`, `rsedu.mfds.go.kr`
  - FDA: `fda.gov`, `accessdata.fda.gov`, `ecfr.gov`
  - EU: `eur-lex.europa.eu`, `health.ec.europa.eu`, NANDO
  - 표준: ISO/IEC 공식 abstract
- **최소 3개 독립 소스 교차 검증**
- 2024~현재 기준 **최신 개정·발효일** 확인 필수
- 결과를 3계층으로 분리 기록:
  1. 사실 (fact) — 원문 인용
  2. 해석 (interpretation) — 업계·MDCG·FDA guidance 관점
  3. 행동 지시 (action) — 자사 제품 적용 시 무엇을 해야 하는가

---

## 4. Step 4 — 딥싱크 (작성 전 설계)

- 3개 지역 비교 **매트릭스**로 재구성
- 자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW) **각각 영향 맵핑**
- 기존 KB 문서와 **상충·중복** 점검 → 필요시 기존 문서 갱신 (INDEX.md 참조)

> EP:1(S) 항목: 딥싱크 생략 가능. 공식 소스 확인 후 바로 작성.
> EP:2(M) 항목: 단일 지역/제품 중심으로 축약 딥싱크.
> EP:3(L) 항목: 3지역 + 3제품 전체 매트릭스 필수.

---

## 5. Step 5 — 문서 작성·갱신

- 파일 경로: `INDEX.md` 체계 준수
- 모든 신규·갱신 문서 **상단 2줄 필수**:
  ```
  > 최종 갱신: YYYY-MM-DD (자동보강 #<issue>)
  > 근거: <공식 소스 URL 리스트>
  ```
- 표기 원칙:
  - 전문용어·기술어는 영어 표기, 설명은 한국어
  - 다른 언어(일어·중국어 등) 사용 금지
  - 날짜 ISO (`YYYY-MM-DD`)
  - 법령·가이던스: 연도·버전·개정일 명시
  - 불확실 정보: `[검증 필요]` 태그

---

## 6. Step 6 — 커밋 (GitHub Git Data API)

순서대로 API 호출 (`Authorization: Bearer <PAT>`):
1. `GET /repos/holee9/ra-project/git/refs/heads/main` → `baseCommitSha`
2. `GET /repos/holee9/ra-project/git/commits/<baseCommitSha>` → `baseTreeSha`
3. 변경·신규 파일마다: `POST /repos/.../git/blobs` (UTF-8 → base64)
4. `POST /repos/.../git/trees` (`base_tree`=baseTreeSha, `tree`=변경 엔트리)
5. `POST /repos/.../git/commits` (message: `auto(#<issue>): <주제 요지> [EP:N]`, parents=[baseCommitSha])
6. `PATCH /repos/.../git/refs/heads/main` (sha=new commit sha)

### 경로 우선순위 (API 차단 대비)
1. Cowork WebFetch → api.github.com 시도
2. 실패 시 bash `curl` 시도
3. 전부 실패 시: 로컬 파일만 쓰고 이슈에 `pat-error` 또는 `network-error` 라벨 + 상세 로그 코멘트 (다음 회차에 