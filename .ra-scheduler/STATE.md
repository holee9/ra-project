# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-04T03:00+09:00
last_issue: 15
current_status: done
next_candidate: Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트
run_count: 16
carryover_issue: (없음)

## CATCHUP 상태

missed_run: false
missed_since: (해소)
missed_run_count_approx: 0
missed_ep_total: 0
catchup_note: 2026-05-04 03:00 회차 EP:4 소비 (잔여 3 - 4 = -1 ≤ 0) → CATCHUP 완료. 정상 스케줄 재개.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 3

### 누적 EP 실적
ep_total: 138
ep_completed: 40
ep_remaining: 98
ep_completion_pct: 29.0

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 10
runs_catchup: 10

### 완료 예측
estimated_done_optimistic: 2026-05-20
estimated_done_conservative: 2026-06-03
estimated_done_basis: 잔여 EP 98 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-04 03:00 (#14·#15) [CATCHUP 완료] X-ray Detector 성능시험 매트릭스(EP:2) + Handheld X-ray Source DHF 목차 템플릿(EP:2). EP:4 소비. CATCHUP 해소. Issue #14·#15 close.
- 2026-05-03 19:30 (#13) [CATCHUP] MDR DoC 양식·PRRC 자격요건·X-ray Detector DHF 목차(EP:4). Issue #13 close.
- 2026-05-03 03:00 (#12) [CATCHUP] MDR Annex III PMS TD 템플릿 + Annex I GSPR 체크리스트(EP:4). Issue #12 close.
- 2026-05-02 19:30 (#11) [CATCHUP] MDR Annex II Technical Documentation 섹션별 템플릿(EP:3). commit 0bbe952. Issue #11 close.
- 2026-05-02 03:00 (#10) [정상] MFDS 디지털의료기기 6종 가이드라인 요약(EP:2). commit 0ed75ee. Issue #10 close.
- 2026-05-01 19:30 (#8·#9) [CATCHUP] MFDS 기술문서 섹션별 작성가이드(EP:3) + 디지털의료제품법 하위고시