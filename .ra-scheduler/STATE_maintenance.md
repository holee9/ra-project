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

## KPI (마스터 헌장 §4, #100)
kpi_감지_적시성: 목표 ≤7일 / 최근 OK
kpi_근거_정확도: 목표 100% / 현 100%
kpi_완전성_3x3매트릭스: 목표 ≥95% / 현 ~95%
kpi_검증폐쇄율: 목표 분기 +20%p / 기준 47건(2026-06-09)
kpi_공백해소: 협력기관 실데이터화(#103) / 진행현안 사용자입력 대기

## 거버넌스 문서 (회차 로드 대상)
governance_docs: MASTER_CHARTER.md, QA_GATE.md, VERIFI