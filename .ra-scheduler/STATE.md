# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-06-01T19:30+09:00
last_issue: 79
current_status: done
next_candidate: Week 12: 종합 실습·평가 [EP:3]
run_count: 62
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-05-26T03:00+09:00
missed_run_count_approx: 13
missed_ep_total: 33
catchup_note: 2026-06-01 CATCHUP 진행 중. 03:00회차(#75·#76) Week9+10 [EP:4], 19:30회차(#79) Week11 [EP:2] 처리. 잔여 missed_ep: 33. 다음 회차 CATCHUP 계속.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 2  # 19:30 회차: Week11(EP:2) 소비. 잔여 2 EP. 다음 Week12(EP:3) > 2 → carryover.

### 누적 EP 실적
ep_total: 165
ep_completed: 146
ep_remaining: 19
ep_completion_pct: 88.5

### 속도 추적
velocity_7day_ep: 5.3
velocity_30day_ep: (미집계)
runs_normal: 29
runs_catchup: 12

### 완료 예측
estimated_done_optimistic: 2026-06-05
estimated_done_conservative: 2026-06-07
estimated_done_basis: 잔여 EP 19 기준 (P3 Week12=3, P4 16 EP). optimistic=6 EP/일, conservative=5.3 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-06-01 19:30 (#79) [CATCHUP EP:2] Week 11: 심사 Q&A 시뮬레이션 — 3지역 심사 Q&A 유형·금기 패턴·3제품 특화 Q&A·시뮬레이션 3세트(FDA AI/MDR NB/MFDS 보완). 예산 2 EP 소비, 잔여 2 EP. Issue #79 close. missed_ep 35→33.
- 2026-06-01 03:00 (#75·#76) [CATCHUP EP:4] Week 9 임상평가 + Week 10 QMS 심사 대응 — 2파일 신규. MFDS 2025-07 임상평가 신제도·FDA Solid State X-ray 임상이미지 평가·MDR Art.61 동등성 3기준·PMCF; FDA QMSR 7382.850 6대 QMS Areas·NB MDR 심사·3제품 고위험 영역. commit e0164ac3. missed_ep 39→35.
- 2026-05-26 03:00 (#74) [EP:2] Week 8: 사이버보안·AI 교육(SBOM·Threat Model·PCCP): FDA 2025-06-27 최신 가이던스(Section VII·524B) 반영. 예산 2 EP 소비, 잔여 1 EP.
- 2026-05-25 19:30 (#73) [EP:3] Week 7: 기술문서 작성 실습(STED): GHTF/SG1/N011:2008·3지역 구조·9섹션 작성 요령. 예산 3 EP 완전 소비. commit c47b3923fe68.
- 2026-05-25 03:00 (#72) [EP:2] Week 6: X-ray 특화 표준 (IEC 60601 시리즈·62220). 예산 2 EP 소비, 잔여 1 EP carryover.
