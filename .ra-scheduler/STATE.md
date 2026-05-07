# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-08T03:00+09:00
last_issue: 24
current_status: done
next_candidate: IEC 60601-1-3:2008+A1+A2 방사선 방호 시험 항목 [EP:2]
run_count: 24
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
run_ep_budget_today_remaining: 1  # 03:00 회차 EP:3 예산, EP:2 소비 → 잔여 1 EP (다음 항목 EP:2로 처리 불가)

### 누적 EP 실적
ep_total: 138
ep_completed: 58
ep_remaining: 80
ep_completion_pct: 42.0

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 13
runs_catchup: 10

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-05
estimated_done_basis: 잔여 EP 85 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-08 03:00 (#24) [EP:2] IEC 60601-1-2:2014+A1:2020 EMC 시험항목 매트릭스 (Emission+Immunity 전항목·A1:2020 신규·3지역·3제품). EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:2로 처리 불가). commit 8023fbf4. Issue #24 close.
- 2026-05-07 19:30 (#23) [EP:3] IEC 60601-1 Ed 3.2 시험항목 매트릭스 (Cl.4~17 전항목·3지역 비교·3제품 Gap분석). EP:3 소비. 잔여 예산 0 EP. commit 7f31ea0f. Issue #23 close.
- 2026-05-07 03:00 (#21) [EP:2] 3개 제품 공통 ISO 10993-1 생물학적평가 적용판단. EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:3으로 처리 불가). commit a560184. Issue #21 close.
- 2026-05-06 19:30 (#20) [EP:2] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿. EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:2로 처리 불가). commit b6b4c081. Issue #20 close.
- 2026-05-06 03:00 (#19) [EP:2] 3개 제품 공통 Usabil