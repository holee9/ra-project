# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-06T19:30+09:00
last_issue: 20
current_status: done
next_candidate: 3개 제품 공통 Biological Evaluation (ISO 10993-1) 적용 판단 [EP:2]
run_count: 21
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
run_ep_budget_today_remaining: 1  # 19:30 회차 EP:3 예산, EP:2 소비 후 1 EP 잔여 (다음 항목 EP:2로 처리 불가, 소진)

### 누적 EP 실적
ep_total: 138
ep_completed: 51
ep_remaining: 87
ep_completion_pct: 37.0

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

- 2026-05-06 19:30 (#20) [EP:2] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿. EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:2로 처리 불가). commit b6b4c081. Issue #20 close.
- 2026-05-06 03:00 (#19) [EP:2] 3개 제품 공통 Usability Engineering File IEC 62366-1:2015+AMD1:2020 템플릿. EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:2로 처리 불가). Issue #19 close.
- 2026-05-05 19:30 (#18) [EP:3] 3개 제품 공통 Risk Management File ISO 14971:2019 템플릿. EP:3 소비. 잔여 예산 0 EP. Issue #18 close.
- 2026-05-05 03:00 (#17) [EP:3] 촬영실 GUI SW IEC 62304 문서 세트 (SDP·SRS·SAD·SDS·SVP/SVR·SCMP·SPRP). EP:3 소비. 잔