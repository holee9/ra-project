# RA KB 자동보강 STATE

> 스케줄 러닝 시작 시 읽고 종료 시 반드시 갱신.
> 필드는 간단 key: value 형식.

## 기본 상태

last_run: 2026-05-21T19:30+09:00
last_issue: 60
current_status: done
next_candidate: 3개 지역 공통 빈번 지적사항 Top 20 [EP:2]
run_count: 49
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
run_ep_budget_today_remaining: 1  # 19:30 회차: NB Deficiency Letter [EP:2] 처리. 예산 3 EP 중 2 EP 소비, 잔여 1 EP (다음 항목 '3개 지역 공통 빈번 지적사항 Top 20' [EP:2] 예산 부족으로 carryover).

### 누적 EP 실적
ep_total: 138
ep_completed: 114
ep_remaining: 24
ep_completion_pct: 82.6

### 속도 추적
velocity_7day_ep: 5.1
velocity_30day_ep: (미집계)
runs_normal: 23
runs_catchup: 11

### 완료 예측
estimated_done_optimistic: 2026-05-25
estimated_done_conservative: 2026-06-02
estimated_done_basis: 잔여 EP 24 기준. optimistic=6 EP/일(정상 2회 가동), conservative=5.1 EP/일(7일 실속도).

## 최근 회차 요약 (최대 5회 유지)

- 2026-05-19 19:30 (#54) [EP:2] MFDS 임상시험 계획 승인 절차: 의료기기법 §10 근거·면제 대상·신청 절차·제출 서류 3종·심사기준 5항목·처리기한 30일·변경승인·3지역 비교(MFDS/FDA IDE 21 CFR 812/EU MDR Art.62 MDCG 2021-6 Rev.1)·3제품 임상 요건 맵핑·체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit c6563c72. 파일 1개 신규. Issue #54 close.
- 2026-05-20 03:00 (#55,#56) [EP:3] MDCG 2020-5/6/7/8 임상평가 & PMCF + FDA RTA 체크리스트: PMCF Plan/Report 섹션별 요건·3지역 비교·RTA A~K 전항목·3제품 맵핑. 예산 3 EP 소비, 잔여 0 EP. commit 1e1d29f/f631749. 파일 2개 신규. Issue #55,#56 close.
- 2026-05-20 19:30 (#57) [EP:2] FDA AI (Additional Information) 대응 전략·샘플 답변: AI Request vs RTA vs Interactive Review 비교·180일 타임라인·명확화 회의·SIR Meeting·샘플 응답 템플릿·7종 결함 유형별 전략·3지역 비교(FDA/MFDS/EU NB)·3제품 위험 맵핑·Anti-Patterns·체크리스트. 예산 2 EP 소비, 잔여 1 EP (carryover). commit e2a0aebe. 파일 1개 신규. Issue #57 close.
- 2026-05-21 03:00 (#58) [EP:2] MFDS 보완자료 대응 전략·샘플: 의료기기법 §12·심사규정 근거·보완 기간(60일/IND 2차 30일)·4대 유형별 전략·샘플 답변(기술문서/임상/라벨링)·타임라인·3지역 비교(MFDS/FDA/EU NB)·3제품 맵핑·Anti-Patterns·체크리스트. 예산 2 EP 소비, 잔여 1 EP. commit 5075a05. 파일 1개 신규. Issue #58 close.
- 2026-05-21 19:30 (#60) [EP:2] NB Deficiency Letter 대응 전략·샘플: 2026/977 clock-stop(최대 4회/90일)·4대 결함 유형(CER 동등성/TD/QMS NC/Labeling)·샘플 답변(CER 동등성·CAPA Major NC)·3지역 비교(EU NB/MFDS/FDA)·3제품 위험 맵핑·Anti-Patterns·Structured Dialogue(Art.7)·체크리스트. 예산 2 EP 소비, 잔여 1 EP (carryover). commit db85403. 파일 1개 신규. Issue #60 close.
