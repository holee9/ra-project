# RA KB 유지관리 STATE

> 유지관리 스케줄러가 시작 시 읽고 종료 시 갱신. 간단 key: value.
> 제정: 2026-06-05 (빌드 EP 168/168 완료 후 전환)

## 회차 상태
last_weekly_run: 2026-06-22 (주간 모니터 #5 — 6소스 폴링 정상, 신규 규제변경 없음)
last_quarterly_run: 2026-06-17 (분기 심층패치 #2 — EUDAMED legacy D-164 사전점검 + MFDS 디지털의료제품법 2026-01-24 시행조항·임상가이드 9종 개정 반영, 2건, P5 잔여 close, commit 559ccdf)
phase: maintenance
ep_total: 168
ep_completed: 168
ep_completion_pct: 100.0

## 소스별 last_seen (주간 모니터 신규성 판정 기준)
openfda_recall_since: 2026-06-22
federal_register_since: 2026-06-22
eurlex_since: 2026-06-22
eurlex_method: Cellar SPARQL (amends 32017R0745 + 32017R0746, 무등록)
eurlex_known_amendments: 32025R2457,32025R1920,32024R1860,32024R0568,32023R2197,32023R0607,32023R0503,32023R0502,32022R0112,32020R0561
law_admrul_since: 2026-06-22
law_law_since: 2026-06-22
datagokr_trace_since: 2026-06-22
datagokr_trace_count: 641

## KPI (마스터 헌장 §4, #100)
kpi_감지_적시성: 목표 ≤7일 / 측정 전(기준선 미설정)
kpi_근거_정확도: 목표 100% / 미측정 — 샘플 감사로 측정 예정
kpi_완전성_3x3매트릭스: 목표 ≥95% / 미측정
kpi_검증폐쇄율: 목표 분기 +20%p / 기준 47건(2026-06-09), 현재 폐쇄 0
kpi_공백해소: 협력기관 실데이터화 완료(#103, 연락처 미입력) / 진행현안 사용자입력 대기

## 거버넌스 문서 (회차 로드 대상)
governance_docs: MASTER_CHARTER.md, QA_GATE.md, VERIFICATION_REGISTER.md, DOSSIER_MAP.md, GROUNDING_REGISTRY.md

## 후속 추적
open_followups: ① MDR 간소화 COM(2025)1023 입법진행 추적(주간) ② EUDAMED legacy 등록 2026-11-28 마감 D-164(분기#2 사전점검 완료, 분기#3에서 재점검) ③ FDA AI 수명주기 가이던스 확정 추적 ④ IEC 62304 Ed.2 발행 추적 ⑤ MFDS 디지털 GMP 고시 시행 추적 ⑥ [검증]47건 분기 폐쇄(#