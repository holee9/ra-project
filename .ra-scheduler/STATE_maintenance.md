# RA KB 유지관리 STATE

> 유지관리 스케줄러가 시작 시 읽고 종료 시 갱신. 간단 key: value.
> 제정: 2026-06-05 (빌드 EP 168/168 완료 후 전환)

## 회차 상태
last_weekly_run: 2026-06-15 (주간 모니터 #3 — 신규 규제변경 없음)
last_quarterly_run: 2026-06-05 (분기 심층패치 #1 — P5 Q3패치+FDA AI/ML PCCP, EP 5, IEC62304 Ed.2 추적개시)
phase: maintenance
ep_total: 168
ep_completed: 168
ep_completion_pct: 100.0

## 소스별 last_seen (주간 모니터 신규성 판정 기준)
openfda_recall_since: 2026-06-15
federal_register_since: 2026-06-15
eurlex_since: 2026-06-15
eurlex_method: Cellar SPARQL (amends 32017R0745, 무등록)
eurlex_known_amendments: 32025R2457,32025R1920,32024R1860,32024R0568,32023R2197,32023R0607,32023R0502,32020R0561
law_admrul_since: 2026-06-15
law_law_since: 2026-06-15
datagokr_trace_since: 2026-06-15
datagokr_trace_count: 640

## 후속 추적
open_followups: ① MDR 간소화 COM(2025)1023 입법진행 추적(주간) ② EUDAMED legacy 등록 2026-11-28 마감 ③ FDA AI 수명주기 가이던스 확정 추적 ④ IEC 62304 Ed.2 발행 추적 ⑤ P5 잔여: MFDS 하위 신규고시 보완[EP:2]
commit_failed: false
dashboard_update_failed: false
cutover_done: 2026-06-05 18:xx — 자격증명 4종 검증통과, 신규 주간/분기 스케줄러 가동, 구 빌드 