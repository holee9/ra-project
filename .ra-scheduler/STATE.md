# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-15T03:00+09:00
last_issue: 45
current_status: done
next_candidate: IEC 81001-5-1:2021 수명주기 활동 매핑 [EP:2]
run_count: 37
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
run_ep_budget_today_remaining: 1  # 03:00 회차 EP:2 소비 완료 (예산 3 → 잔여 1 EP)

### 누적 EP 실적
ep_total: 138
ep_completed: 89
ep_remaining: 49
ep_completion_pct: 64.5

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 18
runs_catchup: 11

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 52 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-15 03:00 (#45) [EP:2] PCCP 작성 가이드 (FDA 2024-12-04 Final): 3대 구성요소·변경 유형·경로별 고려(Special 510k 불가)·라벨링·3지역 비교(MFDS 사전변경관리계획/EU AI Act)·3제품 영향 맵핑·제출 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit 7bd0f4b. 파일 1개 신규. Issue #45 close.
- 2026-05-14 19:30 (#44) [EP:1] MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트: 8대 보안 개발 실무(P1~P8)·Pre/Post-market 체크리스트·MDR Annex I §17.2/§17.4/§18.8 매핑·IFU 사이버보안 체크리스트·3제품 보안 역량 매트릭스·3지역 비교. 예산 1 EP 소비, 잔여 0 EP. commit 91babcb6. 파일 1개 신규. Issue #44 close.
- 2026-05-14 03:00 (#43) [EP:2] SBOM 생성 실무: SPDX vs CycloneDX 비교·도구·NTIA 7개 요소·3지역 요구사항(FDA §524B/MDR §17.2/MFDS 2025.01)·3제품 영향 맵핑·실무 체크리스트. 예산 3 EP 중 2 EP 소비, 잔여 1 EP. 파일 1개 신규. Issue #43 close.
- 2026-05-13 19:30 (#42) [EP:2] FDA Threat Model 작성 가이드·STRIDE 기반 샘플. Section 524B 법적 근거·STRIDE 6범주·DREAD 우선순위화·3제품 Cyber Device 판정·eSTAR 제출 패키지·샘플 분석표 7항목·3지역 비교. 예산 3 EP 중 2 EP 소비, 잔여 1 EP. commit 4df5e923. Issue #42 close.
