# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-03T19:30+09:00
last_issue: 13
current_status: done
next_candidate: X-ray Detector 성능 시험 항목 매트릭스 (IEC 62220-1-1 DQE 등)
run_count: 15
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-04-24T00:00+09:00
missed_run_count_approx: 1
missed_ep_total: 3
catchup_note: 2026-04-24 ~ 2026-04-29 사이 미실행 누적. CATCHUP 모드 진행 중 (잔여 3 EP). 이번 회차 EP:4 소비. 다음 회차 CATCHUP 4 EP 예산으로 잔여 3 EP 해소 예정.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 0

### 누적 EP 실적
ep_total: 138
ep_completed: 36
ep_remaining: 102
ep_completion_pct: 26.1

### 속도 추적
velocity_7day_ep: 4.6
velocity_30day_ep: (미집계)
runs_normal: 10
runs_catchup: 9

### 완료 예측
estimated_done_optimistic: 2026-05-20
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 102 기준. optimistic=6 EP/일(정상 2회 가동), conservative=4.6 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-03 19:30 (#13) [CATCHUP] MDR DoC 양식·PRRC 자격요건·X-ray Detector DHF 목차(EP:4). Issue #13 close.
- 2026-05-03 03:00 (#12) [CATCHUP] MDR Annex III PMS TD 템플릿 + Annex I GSPR 체크리스트(EP:4). Issue #12 close.
- 2026-05-02 19:30 (#11) [CATCHUP] MDR Annex II Technical Documentation 섹션별 템플릿(EP:3). commit 0bbe952. Issue #11 close.
- 2026-05-02 03:00 (#10) [정상] MFDS 디지털의료기기 6종 가이드라인 요약(EP:2). commit 0ed75ee. Issue #10 close.
- 2026-05-01 19:30 (#8·#9) [CATCHUP] MFDS 기술문서 섹션별 작성가이드(EP:3) + 디지털의료제품법 하위고시 추적(EP:1). EP:4 소비. Issue #8·#9 close.
- 2026-05-01 03:08 (#7) [정상] FDA Pre-Submiss