# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-13T19:30+09:00
last_issue: 42
current_status: done
next_candidate: SBOM 생성 실무 (SPDX vs CycloneDX 비교·도구) [EP:2]
run_count: 34
carryover_issue: (없음)

## CATCHUP 상태

missed_run: false
missed_since: (해소)
missed_run_count_approx: 0
missed_ep_total: 0
catchup_note: 2026-05-13 19:30 CATCHUP 완료. QMS 4개 절차서(CAPA/Internal Audit/Management Review/Supplier Control) 처리. 정상 스케줄 재개.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 1  # 19:30 회차 EP:2 소비, 잔여 1 EP (예산 3 - EP:2 = 1)

### 누적 EP 실적
ep_total: 138
ep_completed: 84
ep_remaining: 54
ep_completion_pct: 60.9

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 17
runs_catchup: 11

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 54 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-13 19:30 (#42) [EP:2] FDA Threat Model 작성 가이드·STRIDE 기반 샘플. Section 524B 법적 근거·STRIDE 6범주·DREAD 우선순위화·3제품 Cyber Device 판정·eSTAR 제출 패키지·샘플 분석표 7항목·3지역 비교. 예산 3 EP 중 2 EP 소비, 잔여 1 EP. commit 4df5e923. Issue #42 close.
- 2026-05-13 19:30 (#35/#39/#40/#41) [CATCHUP EP:4] CAPA·Internal Audit·Management Review·Supplier Control 절차서 템플릿 4개 신규. ISO 13485 §8.5.2/§8.2.4/§5.6/§7.4 기준. 예산 4 EP 전액 소비, 잔여 0 EP. commit 91a1502. Issue #35·#39·#40·#41 close.
- 2026-05-12 03:00 (#33,#34) [EP:3] Design Controls 절차서 템플릿 §7.3 (EP:2) + Document/Record Control 절차서 템플릿 §4.2.4/4.2.5 (EP:1). 예산 3 EP 전액 소비, 잔여 0 EP. 파일 2개 신규. commit 225f8a2. Issue #33·#34 close.
- 2026-05-11 19:30 (#32) [EP:3] KGMP vs QMSR vs ISO 13485 차이·통합 전략 (EP:3). 예산 3 EP 전액 소비, 잔여 0 EP. 파일 1개 신규. commit bfc0aaca. Issue #32 close.
- 2