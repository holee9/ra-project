# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-19T03:00+09:00
last_issue: 53
current_status: done
next_candidate: MFDS 임상시험 계획 승인 절차 [EP:2]
run_count: 44
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
run_ep_budget_today_remaining: 1  # 03:00 회차: FDA 임상데이터 필요 판단 기준 [EP:2] 처리. 잔여 1 EP (다음 항목 MFDS 임상시험 [EP:2] > 1 EP → 중단)

### 누적 EP 실적
ep_total: 138
ep_completed: 103
ep_remaining: 35
ep_completion_pct: 74.6

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 19
runs_catchup: 11

### 완료 예측
estimated_done_optimistic: 2026-05-21
estimated_done_conservative: 2026-06-04
estimated_done_basis: 잔여 EP 52 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-16 03:00 (#47) [EP:2] IEC 81001-5-1:2021 수명주기 보안 활동 매핑: IEC 62304 단계별 통합 매핑·5대 Clause·64개 보안 요건·3지역 비교(MFDS N60/FDA SPDF/MDR EN IEC 81001-5-1:2022)·3제품 영향 맵핑·문서 산출물 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit eb7847b. 파일 1개 신규. Issue #47 close.
- 2026-05-16 19:30 (#48) [EP:1] UDI 구조 3개 지역 비교 (GUDID/EUDAMED/UDI포털): DI·PI 구조·GS1/HIBCC/ICCBBA 발급기관·3지역 비교 매트릭스·EUDAMED Basic UDI-DI 2계층 개념·2026-05-28 EUDAMED 의무화·3제품 적용 매트릭스·라벨 체크리스트. 예산 1 EP 소비, 잔여 0 EP. commit 66ea10b2. 파일 1개 신규. Issue #48 close.
- 2026-05-17 19:30 (#49) [EP:2] MFDS 사이버보안 가이드라인 2025.01 개정 대응: 요구사항 15→35개(RA-01~35) 확장·IMDRF N60/N70/N73 한글화·5종 제출 서류·위험관리보고서 구조·3지역 비교(MFDS/FDA/MDR)·3제품 영향 맵핑·제출 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit 8e6f97b0. 파일 1개 신규. Issue #49 close.
- 2026-05-18 03:00 (#50) [EP:2] IFU 필수요소 3지역 비교표: MFDS/FDA/MDR 36개 IFU 항목 비교 매트릭스·방사선 §(r) 전용 요건·3제품