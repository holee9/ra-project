# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-16T03:00+09:00
last_issue: 47
current_status: done
next_candidate: MFDS 사이버보안 가이드라인 (2025.01 개정) 대응 [EP:2]
run_count: 39
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
run_ep_budget_today_remaining: 1  # 03:00 회차 EP:2 소비 완료 (잔여 3 → 1 EP)

### 누적 EP 실적
ep_total: 138
ep_completed: 92
ep_remaining: 46
ep_completion_pct: 66.7

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

- 2026-05-16 03:00 (#47) [EP:2] IEC 81001-5-1:2021 수명주기 보안 활동 매핑: IEC 62304 단계별 통합 매핑·5대 Clause·64개 보안 요건·3지역 비교(MFDS N60/FDA SPDF/MDR EN IEC 81001-5-1:2022)·3제품 영향 맵핑·문서 산출물 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit eb7847b. 파일 1개 신규. Issue #47 close.
- 2026-05-15 19:30 (#46) [EP:1] ISO 15223-1:2021 심볼 적용 가이드: 2021 개정(MD 심볼 신규)·Amd 1:2025 EU-REP 전환·3지역 비교(MFDS/FDA Symbols Glossary/MDR 조화표준)·주요 심볼 목록·3제품 매트릭스·라벨 체크리스트. 예산 1 EP 소비, 잔여 0 EP. 파일 1개 신규. Issue #46.
- 2026-05-15 03:00 (#45) [EP:2] PCCP 작성 가이드 (FDA 2024-12-04 Final): 3대 구성요소·변경 유형·경로별 고려(Special 510k 불가)·라벨링·3지역 비교(MFDS 사전변경관리계획/EU AI Act)·3제품 영향 맵핑·제출 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit 7bd0f4b. 파일 1개 신규. Issue #45 close.
- 2026-05-14 19:30 (#44) [EP:1] MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트: 8대 보안 개발 실무(P1~P8)·Pre/Post-market 체크리스트·MDR Annex I §17.2/§17.4/§18.8 매핑·IFU 사이버보안 체크리스트·3제품 보안 역량 매트릭스·3지역 비교. 예산 1 EP 