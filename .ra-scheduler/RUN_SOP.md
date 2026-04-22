# RA KB 자동보강 실행 SOP (자동 스케줄 러닝용)

> 본 문서는 자동 스케줄 러닝 시작 시 Claude가 **최우선으로 읽는 자기완결 지침서**.
> 모든 단계는 이 문서에 명시된 순서대로 엄격히 수행할 것. 대화 기억 없음을 전제.
> 최초 제정: 2026-04-22

## 0. 핵심 사실 (고정)
- 레포: `holee9/ra-project` (https://github.com/holee9/ra-project)
- 기본 브랜치: `main`
- PAT 파일: `C:\Users\drake.lee\.git-credentials`
  - 형식: `https://holee9:<PAT>@github.com`에서 `<PAT>` 추출 사용
- 로컬 작업 디렉토리: `C:\Users\drake.lee\Documents\Claude\Projects\RA project`
- 사용자: `holee9` / `hnabyz2023@gmail.com`
- 프로젝트 목표: 의료용 X-ray (Detector / Handheld Source / GUI SW) 3대 지역(MFDS·FDA·MDR) 인허가 지식저장소
- 지시자 선호: 예의·팩트 기반·간단명확·중언부언 금지

## 1. Step 1 — 상태 파악 (필수)
1. `.ra-scheduler/STATE.md` 읽기 → `last_issue`, `last_run`, `current_status`, `next_candidate` 확인
2. GitHub API로 open 이슈 조회:
   - `GET /repos/holee9/ra-project/issues?state=open&labels=ra-auto`
3. `in-progress` 또는 `carryover` 라벨 이슈 존재 → **해당 이슈 이어받기** (Step 2 skip)
4. 없으면 `.ra-scheduler/BACKLOG.md` 최상단 항목 선택

## 2. Step 2 — 이슈 등록 (신규 주제일 때)
- 제목: `[AUTO-YYYY-MM-DD-HHMM] <주제>`
- 본문(체크리스트 포함):
  ```
  ## 목표
  <주제 요지 1~2줄>

  ## 작업 체크리스트
  - [ ] 공식 소스 리서치 (3개 지역)
  - [ ] 교차 검증 (최소 3개 독립 소스)
  - [ ] 딥싱크 비교 매트릭스
  - [ ] 문서 작성/갱신
  - [ ] 자사 3개 제품 영향 맵핑
  - [ ] 커밋 (GitHub API)
  - [ ] README 성장 로그 갱신
  - [ ] STATE.md 갱신

  ## 참조 소스
  (러닝 중 기록)
  ```
- 라벨: `ra-auto`, `in-progress`, 주제별(`regulation` / `technical-file` / `template` / `education` / `qms` / `cybersecurity` / `clinical` / `labeling` / `post-market`)

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

## 4. Step 4 — 딥싱크 (작성 전 설계)
- 3개 지역 비교 **매트릭스**로 재구성
- 자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW) **각각 영향 맵핑**
- 기존 KB 문서와 **상충·중복** 점검 → 필요시 기존 문서 갱신 (INDEX.md 참조)

## 5. Step 5 — 문서 작성·갱신
- 파일 경로: `INDEX.md` 체계 준수
- 모든 신규·갱신 문서 **상단 2줄 필수**:
  ```
  > 최종 갱신: YYYY-MM-DD (자동보강 #<issue>)
  > 근거: <공식 소스 URL 리스트>
  ```
- 표기 원칙:
  - 한글·영문 병기 (공식 명칭)
  - 날짜 ISO (`YYYY-MM-DD`)
  - 법령·가이던스: 연도·버전·개정일 명시
  - 불확실 정보: `[검증 필요]` 태그

## 6. Step 6 — 커밋 (GitHub Git Data API)
순서대로 API 호출 (`Authorization: Bearer <PAT>`):
1. `GET /repos/holee9/ra-project/git/refs/heads/main` → `baseCommitSha`
2. `GET /repos/holee9/ra-project/git/commits/<baseCommitSha>` → `baseTreeSha`
3. 변경·신규 파일마다: `POST /repos/.../git/blobs` (UTF-8 → base64)
4. `POST /repos/.../git/trees` (`base_tree`=baseTreeSha, `tree`=변경 엔트리)
5. `POST /repos/.../git/commits` (message: `auto(#<issue>): <주제 요지>`, parents=[baseCommitSha])
6. `PATCH /repos/.../git/refs/heads/main` (sha=new commit sha)

### 경로 우선순위 (API 차단 대비)
1. Cowork WebFetch → api.github.com 시도
2. 실패 시 bash `curl` 시도
3. 전부 실패 시: 로컬 파일만 쓰고 이슈에 `pat-error` 또는 `network-error` 라벨 + 상세 로그 코멘트 (다음 회차에 재푸시)

## 7. Step 7 — 이슈 진행 코멘트 (POST /issues/:n/comments)
다음 형식:
```
### 진행 결과 (YYYY-MM-DD HH:MM)

**완료**
- [x] <완료 항목>

**생성·수정 파일**
- `<path>` — <1줄 요지>

**참조 소스**
- <URL> — <발행일·의미>

**다음**
- <남은 체크리스트> 또는 `DONE`
```

## 8. Step 8 — README 성장 로그 갱신
- `README.md` 최하단 `## 자동보강 로그` 섹션에 1줄 추가:
  ```
  - YYYY-MM-DD HH:MM (#<issue>) <주제> — 파일 N개, <핵심 요지>
  ```
- 로그 50줄 초과 시 오래된 항목 → `ARCHIVE_LOG.md` 이전

## 9. Step 9 — 완료/이월 판정
- **완료 조건 충족**:
  - 이슈 코멘트 말미 `DONE`
  - 라벨 `in-progress` 제거, `done` 추가
  - 이슈 close (`PATCH /issues/:n` state=closed)
- **잔여 존재**:
  - 이슈 코멘트에 잔여 체크리스트 명시
  - 라벨 `in-progress` → `carryover`
  - 이슈 open 유지

## 10. Step 10 — STATE.md 갱신
- `last_run`: ISO 타임스탬프
- `last_issue`: 이슈 번호
- `current_status`: `done` or `carryover`
- `next_candidate`: BACKLOG 기준 다음 최우선 항목

## 11. 실패·예외 대응
| 실패 지점 | 처리 |
|---|---|
| WebSearch/WebFetch 실패 | 이슈 코멘트 기록, 다음 회차 재시도 |
| GitHub API 401/403 | 이슈 신규 생성 `pat-error` 라벨 + 중단 |
| GitHub API 기타 오류 | 3회 재시도 후 이슈 코멘트 + carryover |
| 부분 성공 | 완료된 만큼만 커밋, 나머지 carryover |

## 12. 품질 원칙 (엄수)
- **거짓 정보 금지**: 확인 불가 시 `[검증 필요]` 태그 필수
- **공식 소스 URL 반드시 인용**
- **3개 지역 비교 관점 유지** (특정 지역만 다루더라도 타 지역 영향 1줄 언급)
- **자사 3개 제품 적용 관점 포함**
- **거창한 설명 금지**, 팩트 기반 간결 서술
- **중복 생성 금지**: 기존 문서와 내용 겹칠 경우 기존 문서 갱신이 원칙

## 13. 스코프 가드 (회당 부하 조절)
- 회당 BACKLOG 항목 **1~2개**만 처리
- 주제가 크면 하위 항목으로 쪼개 BACKLOG에 재등록
- 문서 1개 당 분량 기준: 200~500줄 (초과 시 분할)

## 14. 금지 사항
- 기존 법적 책임자 역할(MFDS 안전관리책임자·FDA US Agent·MDR PRRC) 대행 금지
- 공식 제출물에 서명·제출 금지 (초안까지만)
- 지시자 승인 없는 스코프 확장 금지
- 사이트 가입·유료 서비스 가입 금지
