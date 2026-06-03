# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-06-04T03:00+09:00
last_issue: 87
current_status: done
next_candidate: (BACKLOG 완료 — 모든 항목 처리됨)
run_count: 68
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-05-26T03:00+09:00
missed_run_count_approx: 13
missed_ep_total: 14
catchup_note: 2026-06-04 03:00 CATCHUP 회차 (#86 EP:2 + #87 EP:2) = 4 EP 소비. 잔여 missed_ep: 14. 다음 회차 CATCHUP 계속. BACKLOG 전체 항목 완료됨.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 0  # 03:00 CATCHUP: #86(EP:2) + #87(EP:2) = 4 EP 소비.

### 누적 EP 실적
ep_total: 165
ep_completed: 165
ep_remaining: 0
ep_completion_pct: 100.0

### 속도 추적
velocity_7day_ep: 5.8
velocity_30day_ep: (미집계)
runs_normal: 30
runs_catchup: 17

### 완료 예측
estimated_done_optimistic: 2026-06-04 (완료)
estimated_done_conservative: 2026-06-04 (완료)
estimated_done_basis: ep_remaining = 0. BACKLOG 전체 완료.

## 최근 회차 요약 (최대 5회 유지)

- 2026-06-04 03:00 (#86·#87) [CATCHUP EP:4] 경쟁제품 510(k) Summary 분석 DB + EUDAMED 모듈별 등록 실무 가이드 — 파일 2개 신규(01_규제지식베이스). FDA OpenFDA API MQB/IZL/LLZ 2024~2026 경쟁사 분석(자사 K251223 포함)·3지역 비교·Special vs Traditional 전략; EUDAMED Commission Decision (EU) 2025/2371 기반 6모듈 구조·4모듈 의무화(2026-05-28)·ACT/UDI-DEV/NB-CERT/MSU 절차·Module5(~Q2 2027)·3지역 비교·3제품 체크리스트. EP 4 소비. missed_ep 18→14. commit af31d918·5916a47b. **BACKLOG 전체 완료 (ep_completed 165/165, 100%)**.
- 2026-06-03 19:30 (#85) [정상 EP:2] 규제 변경 모니터링 자동화 (법령·가이던스 RSS) — 1파일 신규(01_규제지식베이스). MFDS RSS 공식 채널·law.go.kr·FDA CDRH 이메일 구독·Federal Register API·EUR-Lex 맞춤 RSS·3제품별 모니터링 우선순위·Python 스크립트·2025~2026 규제 변경 트래커. EP 2 소비. missed_ep 20→18. commit 1a761cab.
- 2026-06-03 03:00 (#84) [CATCHUP EP:3] 예상 Q&A DB (3개 지역·제품별) — 1파일 신규(01_규제지식베이스). 3지역×3제품 심사 Q&A DB: MFDS Q-MFDS-01~S02, FDA Q-FDA-01~L01, MDR Q-MDR-01~08, 공통 Q-CMN-01~03, 제품별 Q-DET-01~02/Q-HH-01~02/Q-GUI-01~02. EP 3 소비. missed_ep 23→20.
- 2026-06-02 19:30 (#83) [CATCHUP EP:3] 원가·일정 예측 모델 (지역·등급·시험비) — 1파일 신규(01_규제지식베이스). EP 3 소비. missed_ep 26→23.
- 2026-06-02 03:00 (#81·#82) [CATCHUP EP:4] Gate Review 체크리스트 5Gate + 글로벌 동시제출 전략 MDSAP — 파일 2개 신규. EP 4 소비(#81 EP:2 + #82 EP:2). commit d61e7e8. missed_ep 30→26.
