# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-04-30T03:00+09:00
last_issue: 5
current_status: done
next_candidate: FDA eSTAR 섹션별 작성 가이드 — Labeling (IFU, Form 3881)
run_count: 7
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-04-24T00:00+09:00
missed_run_count_approx: 8
missed_ep_total: 24
catchup_note: 2026-04-24 ~ 2026-04-29 사이 10회차 미실행. CATCHUP 모드 진행 중 (잔여 8회 / 24 EP).

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 3

### 누적 EP 실적
ep_total: 138
ep_completed: 15
ep_remaining: 123
ep_completion_pct: 10.9

### 속도 추적
velocity_7day_ep: 2.1
velocity_30day_ep: (미집계)
runs_normal: 7
runs_catchup: 5

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-17
estimated_done_basis: 잔여 EP 123 기준. optimistic=6 EP/일(정상 2회 가동), conservative=2 EP/일(현재 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-04-30 03:00 (#5) [CATCHUP] FDA eSTAR Software Section(eSTAR_05). EP:3 소비. commit e6db6dc. Issue #5 close.
- 2026-04-29 19:30 (#4) [CATCHUP] FDA eSTAR Cybersecurity Section(eSTAR_04). EP:3 소비. commit 29469e6e. Issue #4 close.
- 2026-04-24 (#3) FDA eSTAR Performance Testing / Bench Test(eSTAR_03). EP:3 소비. commit 9cb86d7d. Issue #3 close.
- 2026-04-22 11:40 (#2) FDA eSTAR Device Description + Substantial Equival