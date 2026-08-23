# RA KB 유지관리 STATE

> 유지관리 스케줄러가 시작 시 읽고 종료 시 갱신. 간단 key: value.
> 제정: 2026-06-05 (빌드 EP 168/168 완료 후 전환)

## 회차 상태
last_weekly_run: 2026-08-24 (주간 모니터 #14 — 7소스 전부 정상[law.go.kr 2소스 3주 연속 IP검증 장애 해소, https 경로로 성공]. openFDA recall/enforcement 0건(404 무매치, 08-17~08-24)·Federal Register FDA 23건 중 신규 고영향 1건[08-24 FDAMA 인정표준 Recognition List 066, 91 FR 54715, FR 2026-17229, 2026-08-24 적용 — ISO 20417:2021 인정철회→ISO 20417:2026 Ed.2 대체(5-135→5-149), Radiology·ES/EMC 카테고리 자사관련 변경 없음, CVSS v3.1 전환기간 연장 → 고영향 이슈 #118·KB 2문서 갱신]·EUR-Lex known대비 신규 CELEX 0건(MDR 10건·IVDR 4건 모두 기존)·law.go.kr 행정규칙 신규 2건[고시 2026-54 디지털의료제품 허가·인증·신고·심사 및 평가 규정 일부개정 07-27 시행 → 고영향 이슈 #119·KB 1문서 갱신 / 고시 2026-58 체외진단의료기기 허가·신고·심사 규정 08-10 시행 → IVD로 자사무관 저영향 로그]·현행법령 신규 없음·data.go.kr 정상 642건(+1, 신규는 안경렌즈로 자사무관) / 고영향 2·중영향 0·저영향 3 / KB갱신 3문서·이슈 #118·#119·#120·커밋 있음)
last_weekly_run_prev: 2026-08-17 (주간 모니터 #13 — 7소스 중 5소스 정상, law.go.kr 2소스 IP검증 오류 지속[3주 연속, 서버IP 등록 필요 소지]. openFDA recall/enforcement 0건(404 무매치, 08-10~08-17)·Federal Register FDA 23건 중 신규 X-ray 관련성 후보 1건[08-17 FDARA 부속품 Class I 분류 제안목록 FR 2026-16729, comment 마감 2026-10-16 → 중영향 이슈 #117 for-quarterly. 08-17 방광경시스템 재분류·ISH 재분류는 자사무관 저영향 로그]·EUR-Lex known대비 신규 CELEX 0건(MDR 10건·IVDR 4건 모두 기존)·data.go.kr 정상 641건(+0, 신규 없음) / 고영향 0·중영향 1(#117)·KB갱신·커밋 없음)
last_weekly_run_prev2: 2026-08-10 (주간 모니터 #12 — 7소스 중 5소스 정상, law.go.kr 2소스 간헐 장애[회차 초기 1회 성공 후 IP검증 오류 반복]. openFDA recall/enforcement 0건(404 무매치, 08-03~08-10)·Federal Register FDA 17건 중 X-ray 관련 1건[08-10 DBT 시스템 Class III→II 재분류 제안규칙, comment 마감 2026-10-09 → 중영향 이슈 #116 for-quarterly. 08-06 FDG유도 방사선치료시스템 분류규칙은 치료기기로 자사무관 저영향 로그]·EUR-Lex known대비 신규 CELEX 0건(MDR 10건·IVDR 4건 모두 기존)·law.go.kr 초기 성공 응답에서 admrul 상위=고시 2026-53(#115 기처리)·law 상위=시행규칙 총리령 2127(#114 기처리)로 신규 징후 없음, 전체 목록 재확인은 차주·data.go.kr 정상 641건(-1, 신규 없음) / 고영향 0·중영향 1(#116)·KB갱신·커밋 없음)
last_weekly_run_prev3: 2026-08-03 (주간 모니터 #11 — 7소스 중 5소스 폴링 정상, 2소스 장애. openFDA recall/enforcement 0건(404 무매치, 07-27~08-03)·Federal Register FDA 30건 전부 비X-ray[07-29 방사선치료용 상변화 피두셜마커 분류규칙·MDUFA FY2027 수수료 고시는 자사 무관 저영향 로그, 나머지 약품·식품·종양임상 가이던스]·EUR-Lex known대비 신규 CELEX 0건(MDR/IVDR) / law.go.kr 행정규칙·현행법령 인증오류(IP검증 실패, http·https 동일)·data.go.kr 추적관리 timeout·400 — 양 소스 last_seen 07-27 유지, 차주 재시도 / 고영향 0·중영향 0·KB갱신·이슈·커밋 없음)
last_quarterly_run: 2026-06-17 (분기 심층패치 #2 — EUDAMED legacy D-164 사전점검 + MFDS 디지털의료제품법 2026-01-24 시행조항·임상가이드 9종 개정 반영, 2건, P5 잔여 close, commit 559ccdf)
phase: maintenance
ep_total: 168
ep_completed: 168
ep_completion_pct: 100.0

## 소스별 last_seen (주간 모니터 신규성 판정 기준)
openfda_recall_since: 2026-08-24 (recall·enforcement 모두 report_date 20260817~20260824 검색 404 무매치 = 0건)
federal_register_since: 2026-08-24 (FDA 23건[08-17~08-24] 중 인정표준 Recognition List 066 1건 고영향 → #118. 나머지는 의약품·식품첨가물·색소·자문위 갱신으로 비관련)
eurlex_since: 2026-08-24 (known 목록 대비 신규 CELEX 0건 — MDR 10건·IVDR 4건 모두 기존)
eurlex_method: Cellar SPARQL (amends 32017R0745 + 32017R0746, 무등록)
eurlex_known_amendments: 32026R1451,32026R1359,32025R2457,32025R1920,32024R1860,32024R0568,32023R2197,32023R0607,32023R0503,32023R0502,32022R0112,32020R0561
law_admrul_since: 2026-08-24 [3주 연속 IP검증 장애 해소(https 경로 정상). 신규 2건: 고시 2026-54(07-27, 디지털의료제품 허가·심사 규정 → #119 고영향) / 고시 2026-58(08-10, 체외진단의료기기 → 저영향)]
law_law_since: 2026-08-24 [정상 조회. 상위 = 의료기기법 시행규칙 총리령 2127·시행령 36445(2026-07-01, #114 기처리) — 신규 없음]
datagokr_trace_since: 2026-08-24 (정상 조회, X-ray 신규 매치 0건)
datagokr_trace_count: 642 (08-24 기준, 전주 641 대비 +1 — 신규는 안경렌즈로 자사무관)

## KPI (마스터 헌장 §4, #100)
kpi_감지_적시성: 목표 ≤7일 / #14 실측 — FDA RL066 게재당일(0일) 감지 ✅ / MFDS 고시 2026-54는 소스 장애로 28일 지연(07-27→08-24) ❌ → 소스 가용성이 적시성의 지배 요인
kpi_근거_정확도: 목표 100% / 미측정 — 샘플 감사로 측정 예정
kpi_완전성_3x3매트릭스: 목표 ≥95% / 미측정
kpi_검증폐쇄율: 목표 분기 +20%p / 기준 47건(2026-06-09), 현재 폐쇄 0
kpi_공백해소: 협력기관 실데이터화 완료(#103, 연락처 미입력) / 진행현안 사용자입력 대기

## 거버넌스 문서 (회차 로드 대상)
governance_docs: MASTER_CHARTER.md, QA_GATE.md, VERIFICATION_REGISTER.md, DOSSIER_MAP.md, GROUNDING_REGISTRY.md

## 후속 추적
open_followups: ① MDR 간소화 COM(2025)1023 입법진행 추적(주간) ② EUDAMED legacy 등록 2026-11-28 마감 D-164(분기#2 사전점검 완료, 분기#3에서 재점검) ③ FDA AI 수명주기 가이던스 확정 추적 ④ IEC 62304 Ed.2 발행 추적 ⑤ MFDS 디지털 GMP 고시 시행 추적 ⑥ [검증]47건 분기 폐쇄(#99, 진행중) ⑦ EU MDR 32026R1359/1451 분기처리(#112) ⑨ [신규 #115] MFDS 기술문서심사기관 지정·운영 규정 일부개정(고시 2026-53, 2026-07-21 시행) — 개정 전문·심사기관 목록 확인을 분기 심층패치에서 수행(#114와 병합 검토) ⑪ [신규 #117] FDA FDARA 부속품 Class I 분류 제안목록(FR 2026-16729, comment 마감 2026-10-16 D-60) — radiology/X-ray 부속품 포함 여부 확인을 분기 심층패치에서 수행 ⑩ [#116] FDA DBT 시스템 Class III→II 재분류 제안규칙(2026-08-10, comment 마감 2026-10-09 D-60) — 특별통제 중 검출기 성능요건 확인·최종규칙 추적을 분기 심층패치에서 수행 ⑧ [#114] KGMP 적합성인정 제도개편(시행령·시행규칙·고시2종, 2026-07-01) — 신설 고시(제2026-47호) 지정 심사기관 목록 확인 및 시행규칙 §48~48-4 전문 반영을 분기 심층패치에서 수행 ⑫ [신규 #118] FDA 인정표준 Recognition List 066 — ISO 20417 Ed.2 전환(2026-08-24 적용): 원문 입수 후 신설요건(정보 계층·applicable policy) Gap 분석 + EN ISO 20417:2026의 EU OJ 조화표준 등재 여부 확인을 분기 심층패치에서 수행 ⑬ [신규 #119] MFDS 고시 제2026-54호(2026-07-27 시행) — 개정 제25조 전문 및 시행규칙(2026-01-23) 상향 조문 확인, GUI SW 디지털의료기기 해당 여부 판정 선행 ⑭ [신규 #120] 저장소 문서 truncation — RUN_SOP §4에 커밋 후 무결성 검증(blob 크기·UTF-8 디코딩) 스텝 추가 및 전 문서 정기 점검 편입
