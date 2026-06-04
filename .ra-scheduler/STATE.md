# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-06-05T03:00+09:00
last_issue: 89
current_status: done
next_candidate: 2026 Q3 규제 업데이트 패치 (MDR 간소화 채택 여부 반영) [EP:3]
run_count: 70
carryover_issue: (없음)

## CATCHUP 상태

missed_run: true
missed_since: 2026-05-26T03:00+09:00
missed_run_count_approx: 13
missed_ep_total: 9
catchup_note: 2026-06-05 03:00 CATCHUP 회차 (#89 EP:2) = 2 EP 소비. 잔여 missed_ep: 9. 다음 회차 CATCHUP 계속.

## EP 기반 진척 추적 (2026-04-30 도입)

### EP 예산 정책
run_ep_budget_normal: 3
run_ep_budget_catchup: 4
run_ep_budget_today_remaining: 2  # 03:00 회차: #89(EP:2) = 2 EP 소비. 잔여 2 EP (다음 항목 EP:3 초과, 미사용)

### 누적 EP 실적
ep_total: 168
ep_completed: 168
ep_remaining: 0
ep_completion_pct: 100.0

### 속도 추적
velocity_7day_ep: 5.8
velocity_30day_ep: (미집계)
runs_normal: 31
runs_catchup: 18

### 완료 예측
estimated_done_optimistic: 2026-06-04 (완료)
estimated_done_conservative: 2026-06-04 (완료)
estimated_done_basis: ep_remaining = 0. P1~P5 전체 완료. Phase 5 유지관리 진행 중.

## 최근 회차 요약 (최대 5회 유지)

- 2026-06-05 03:00 (#89) [CATCHUP EP:2] QMSR 발효·HF 가이던스 반영 — 파일 2개 갱신(01_규제지식베이스+04_템플릿). QMSR 2026-02-02 발효 확정·QSIT 폐지·CP 7382.850·내부감사 FDA 열람; FDA HF Final Guidance 2026-05-29(91 FR 32061)·HF Submission Category 1/2/3 Risk-Based Framework·자사 3제품 Category 맵핑. EP 2 소비. missed_ep 11→9. commit e291db1.
- 2026-06-04 19:30 (#88) [정상 EP:3] 2026 Q2 규제 업데이트 종합 패치 (MFDS/FDA/MDR) — Phase 5 유지관리 #1. 파일 1개 신규(01_규제지식베이스). FDA QMSR 발효(2026-02-02)·CP 7382.850·HF 최종 가이던스(2026-05-29)·EU COM(2025)1023 간소화 제안·Implementing Reg. 2026/977·EUDAMED 4모듈 의무화·MFDS RWE 확대/음성 변경허가/AI 공통부품 선평가·3지역 매트릭스·3제품 영향 맵핑. EP 3 소비. missed_ep 14→11. BACKLOG에 P5 섹션 신설.
- 2026-06-04 03:00 (#86·#87) [CATCHUP EP:4] 경쟁제품 510(k) Summary 분석 DB + EUDAMED 모듈별 등록 실무 가이드 — 파일 2개 신규(01_규제지식베이스). FDA OpenFDA API MQB/IZL/LLZ 2024~2026 경쟁사 분석(자사 K251223 포함)·3지역 비교·Special vs Traditional 전략; EUDAMED Commission Decision (EU) 2025/2371 기반 6모듈 구조·4모듈 의무화(2026-05-28)·ACT/UDI-DEV/NB-CERT/MSU 절차·Module5(~Q2 2027)·3지역 비교·3제품 체크리스트. EP 4 소비. missed_ep 18→14. commit af31d918·5916a47b. **BACKLOG 전체 완료 (ep_completed 165/165, 100%)**.
- 2026-06-03 19:30 (#85) [정상 EP:2] 규제 변경 모니터링 자동화 (법령·가이던스 RSS) — 1파일 신규(01_규