# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-02T03:00+09:00
last_issue: 10
current_status: done
next_candidate: MDR Annex II Technical Documentation 섹션별 템플릿
run_count: 12
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-04-24T00:00+09:00
missed_run_count_approx: 5
missed_ep_total: 14
catchup_note: 2026-04-24 ~ 2026-04-29 사이 미실행 누적. CATCHUP 모드 진행 중 (잔여 14 EP). 이번 회차 EP:2 소비.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 3

### 누적 EP 실적
ep_total: 138
ep_completed: 25
ep_remaining: 113
ep_completion_pct: 18.1

### 속도 추적
velocity_7day_ep: 3.4
velocity_30day_ep: (미집계)
runs_normal: 10
runs_catchup: 7

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-06
estimated_done_basis: 잔여 EP 113 기준. optimistic=6 EP/일(정상 2회 가동), conservative=3.4 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-02 03:00 (#10) [정상] MFDS 디지털의료기기 관련 가이드라인 6종 요약(EP:2). commit 0ed75ee. Issue #10 close.
- 2026-05-01 19:30 (#8·#9) [CATCHUP] MFDS 기술문서 섹션별 작성가이드(EP:3) + 디지털의료제품법 하위고시 추적(EP:1). EP:4 소비. Issue #8·#9 close.
- 2026-05-01 03:08 (#7) [정상] FDA Pre-Submission Q-Sub 가이드·샘플 질문. EP:2 소비. commit 1b78c0