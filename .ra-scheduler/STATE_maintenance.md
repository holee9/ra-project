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
kpi_감지_적시성: 목표 ≤7일 / 측정 전(기준선 미설정)
kpi_근거_정확도: 목표 100% / 미측정 — 샘플 감사로 측정 예정
kpi_완전성_3x3매트릭스: 목표 ≥95% / 미측정
kpi_검증폐쇄율: 목표 분기 +20%p / 기준 47건(2026-06-09), 현재 폐쇄 0
kpi_공백해소: 협력기관 실데이터화 완료(#103, 연락처 미입력) / 진행현안 사용자입력 대�

## 검증 베이스라인 (2026-06-17, 재플래그 금지)
verification_register_p1p2: 전건 폐쇄 (검증①~⑬)
spot_check_high_impact: 통과 (IEC 62304 표기 3건 정정)
goal_scorecard_종합: 73% (검증 55·거버 85·완전성 85·위생 85·실행준비 90·고도화 45)
고도화_상태: citation 그라운딩·dossier 매핑 in-repo 완료 / 벡터 RAG=인프라 향후(비블로커)
잔여_저위험: 무태그 문서 전수 재검증(이슈 #110, 분기 위임) · firm 데이터 #104~108(실행단계)
governance_docs: MASTER_CHARTER · QA_GATE · VERIFICATION_REGISTER · DOSSIER_MAP · GROUNDING_REGISTRY · GOAL_SCORECARD
착수준비_docs: 착수준비_마스터_로드맵 · 착수준비_제품별_산출물체크리스트 · 착수준비_진척_트래커
last_review: 2026-06-17 (최종 교차리뷰·해소 + 스케줄러 보완 주입, 이슈 #110)