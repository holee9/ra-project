# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-20T03:00+09:00
last_issue: 56
current_status: done
next_candidate: FDA Additional Information (AI) 대응 전략·샘플 답변 [EP:2]
run_count: 46
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
run_ep_budget_today_remaining: 0  # 03:00 회차: MDCG 2020-5/6/7/8 [EP:2] + FDA RTA [EP:1] 처리. 예산 3 EP 전부 소비.

### 누적 EP 실적
ep_total: 138
ep_completed: 108
ep_remaining: 30
ep_completion_pct: 78.3

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 21
runs_catchup: 11

### 완료 예측
estimated_done_optimistic: 2026-05-25
estimated_done_conservative: 2026-06-02
estimated_done_basis: 잔여 EP 30 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-18 19:30 (#51,#52) [EP:4] 디지털의료기기 표시기재 가이드라인(MFDS 2025.01) + Clinical Evaluation(MDR) 심화: 동등성 충분성 기준·MDCG 2020-5/6/2023-7 기반·3지역 비교. 예산 4 EP 소비. 파일 2개 신규. Issue #51,#52 close.
- 2026-05-19 03:00 (#53) [EP:2] FDA Clinical Data 필요 판단 기준 (510(k) vs De Novo vs PMA): Clinical Data Decision Tree·SE 임상 요건·De Novo 조건·PMA 기준·3지역 비교·3제품 전략 맵핑·체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit b46e5bdf. 파일 1개 신규. Issue #53 close.
- 2026-05-19 19:30 (#54) [EP:2] MFDS 임상시험 계획 승인 절차: 의료기기법 §10 근거·면제 대상·신청 절차·제출 서류 3종·심사기준 5항목·처리기한 30일·변경승인·3지역 비교(MFDS/FDA IDE 21 CFR 812/EU MDR Art.62 MDCG 2021-6 Rev.1)·3제품 임상 요건 맵핑·체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit c6563c72. 파일 1개 신규. Issue #54 close.
- 2026-05-20 03:00 (#55) [EP:2] MDCG 2020-5/6/7/8 임상평가 & PMCF 가이던스 요약: 동등성 3특성(기술·생물·임상)·MDR vs MEDDEV 차이·Annex I 비교표·임상근거 위계(12단계)·WET 기준·PMCF Plan/Report 섹션별 요건·3지역 비교·3제품 맵핑·제출 체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit 1e1d29f. 파일 1개 신규. Issue #55 close.
- 2026-05-20 03:00 (#56) [EP:1] FDA RTA (Refuse to Accept) 회피 체크리스트: Traditional 510(k) A~K 섹션 전항목·자사 3제품 적용 매핑·빈번한 반려사유 Top10·De Novo RTA 특이사항. 예산 1 EP 소비, 잔여 0 EP. commit f631749. 파