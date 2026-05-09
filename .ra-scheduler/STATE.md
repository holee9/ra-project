# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-10T03:00+09:00
last_issue: 29
current_status: done
next_candidate: IEC 62304:2006+A1:2015 SW 수명주기 산출물 매핑 [EP:3]
run_count: 28
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
run_ep_budget_today_remaining: 1  # 03:00 회차 EP:3 예산 → EP:2(#29) = 2 EP 소비, 잔여 1 (다음 항목 EP:3으로 처리 불가 → 19:30 carryover)

### 누적 EP 실적
ep_total: 138
ep_completed: 67
ep_remaining: 71
ep_completion_pct: 48.6

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 15
runs_catchup: 10

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 75 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-10 03:00 (#29) [EP:2] IEC 62220-1-1:2015 DQE 측정절차 가이드 (EP:2). 예산 3 EP 중 2 EP 소비, 잔여 1 EP. commit 02abfec. Issue #29 close.
- 2026-05-09 19:30 (#28) [EP:2] IEC 60601-2-54:2022 촬영·투시 X선 장비 시험항목 매트릭스 (EP:2). 예산 3 EP 중 2 EP 소비, 잔여 1 EP carryover. Issue #28 close.
- 2026-05-09 03:00 (#26,#27) [EP:3] IEC 60601-2-28:2017 X-ray Tube Assembly 시험항목 매트릭스 (EP:2) + IEC 62133-2 배터리안전 체크리스트 (EP:1). 예산 3 EP 전액 소비. commit d728cdf. Issue #26·#27 close.
- 2026-05-08 19:30 (#25) [EP:2] IEC 60601-1-3:2008+AMD1+AMD2:2021 방사선방호 시험항목 매트릭스 (DSA 누설방사선·HVL·콜리메이터·Focal Spot·3지역·3제품). EP:2 소비. 잔여 예산 1 EP. commit 8c264e7c. Issue #25 close.
- 2026-05-08 03:00 (#24) [EP:2] IEC 60601-1-2:2014+A1:2020 EMC 시험항목 매트릭스 (Emission+Immunity 전항목·A1:2020 신규·3지역·3제품). EP:2 소비. 잔여 예산 1 EP (다음 항목 EP:2로 처리 불가). commit 8023fbf4. Issue #24 close.
