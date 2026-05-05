# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-05T19:30+09:00
last_issue: 18
current_status: done
next_candidate: 3개 제품 공통 Usability Engineering File (IEC 62366-1:2015+AMD1:2020) 템플릿
run_count: 19
carryover_issue: (없음)

## CATCHUP 상태

missed_run: false
missed_since: (해소)
missed_run_count_approx: 0
missed_ep_total: 0
catchup_note: 2026-05-04 03:00 회차 CATCHUP 완료. 정상 스케줄 재개.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 0  # 19:30 회차 EP:3 소비 완료

### 누적 EP 실적
ep_total: 138
ep_completed: 47
ep_remaining: 91
ep_completion_pct: 34.1

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 12
runs_catchup: 10

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 94 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-05 19:30 (#18) [EP:3] 3개 제품 공통 Risk Management File ISO 14971:2019 템플릿. EP:3 소비. 잔여 예산 0 EP. Issue #18 close.
- 2026-05-05 03:00 (#17) [EP:3] 촬영실 GUI SW IEC 62304 문서 세트 (SDP·SRS·SAD·SDS·SVP/SVR·SCMP·SPRP). EP:3 소비. 잔여 예산 0 EP. commit f65b240. Issue #17 close.
- 2026-05-04 19:30 (#16) [EP:1] Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트. EP:1 소비. 잔여 예산 2 EP → 次 회차 이월. commit 37526e16. Issue #16 close.
- 2026-05-04 03:00 (#14·#15) [CATCHUP 완료] X-ray Detector 성능시험 매트릭스(EP:2) + Handheld X-ray Source DHF 목차 템플릿(EP:2). EP:4 소비. Issue #14·#15 close.
- 2026-05-03 19:30 (#13) [CATCHUP] MDR DoC 양식·P