# RA KB 유지관리 STATE

> 유지관리 스케줄러가 시작 시 읽고 종료 시 갱신. 간단 key: value.
> 제정: 2026-06-05 (빌드 EP 168/168 완료 후 전환)

## 회차 상태
last_weekly_run: 2026-07-27 (주간 모니터 #10 — 7소스 폴링 정상. openFDA recall/enforcement 0건(404 무매치, 07-20~07-27)·Federal Register FDA 18건 전부 비X-ray[디바이스 분류규칙 5건도 소음저감·정형·당뇨디지털·IVD 등 무관]·EUR-Lex known대비 신규 CELEX 0건(MDR/IVDR)·law.go.kr 행정규칙 신규 1건[기술문서심사기관 지정·운영 규정 일부개정, 고시 2026-53, 07-21 시행 → 중영향 이슈 #115 for-quarterly]·현행법령 신규 없음(#114 기처리분 유지)·data.go.kr 642건(+0) / 고영향 0·중영향 1(#115)·KB갱신 없음)
last_weekly_run_prev2: 2026-07-20 (주간 모니터 #9 — 6소스 폴링 정상, openFDA recall 0건(무매치)·enforcement 154건 전부 비X-ray[카테터·수술기구·모니터·인퓨전펌프 등]·Federal Register FDA 31건 중 07-14~07-20 신규분 전부 비관련[식품·화장품·약품·OTC], ASCA 정보수집요청(07-17) 저영향 로그만·EUR-Lex known대비 신규 CELEX 0건(32026R1359/1451은 #112 기처리 유지)·law.go.kr 행정규칙·현행법령 상위 항목 모두 #114 기처리분과 동일(중복, 재플래그 안함)·data.go.kr 640→642건[+2, X-ray 키워드 매치 0건] / 신규 고·중영향 0건, KB갱신·이슈·커밋 없음)
last_weekly_run_prev: 2026-07-13 (주간 모니터 #8 — 6소스 폴링 정상[law.go.kr 인증오류 복구], openFDA recall 0건(무매치)·enforcement 65건 비X-ray·Federal Register FDA 19건(MDUFA 공청회 요청 1건 저영향)·EUR-Lex known대비 신규 CELEX 0건·law.go.kr KGMP 적합성인정 제도개편 4건 고영향(시행령·시행규칙·고시2종, 2026-07-01 시행)·data.go.kr 640건 비X-ray / 신규 고영향 1건→이슈#114·KB 즉시갱신(경량))
last_quarterly_run: 2026-06-17 (분기 심층패치 #2 — EUDAMED legacy D-164 사전점검 + MFDS 디지털의료제품법 2026-01-24 시행조항·임상가이드 9종 개정 반영, 2건, P5 잔여 close, commit 559ccdf)
phase: maintenance
ep_total: 168
ep_completed: 168
ep_completion_pct: 100.0

## 소스별 last_seen (주간 모니터 신규성 판정 기준)
openfda_recall_since: 2026-07-27 (recall·enforcement 모두 report_date 20260720~20260727 검색 404 무매치 = 0건)
federal_register_since: 2026-07-27 (FDA 18건[07-21~07-27] 전부 비관련 — 디바이스 분류 최종규칙 5건은 소음저감·정형외과·당뇨 디지털행동·IVD 2건으로 자사 무관, 나머지 식품·약품·자문위 공고)
eurlex_since: 2026-07-27 (known 목록 대비 신규 CELEX 0건 — MDR 상위 32026R1359/1451, IVDR 상위 32024R1860 그대로)
eurlex_method: Cellar SPARQL (amends 32017R0745 + 32017R0746, 무등록)
eurlex_known_amendments: 32026R1451,32026R1359,32025R2457,32025R1920,32024R1860,32024R0568,32023R2197,32023R0607,32023R0503,32023R0502,32022R0112,32020R0561
law_admrul_since: 2026-07-27 (신규 1건 — 「의료기기 기술문서심사기관 지정 및 운영 등에 관한 규정」 고시 제2026-53호 일부개정[발령·시행 20260721] → 중영향 이슈 #115. 국립부곡병원 심의위 예규(20260721)는 병원 내부규정으로 자사무관·저영향. 고시 2026-46/47 등은 #114 기처리분)
law_law_since: 2026-07-27 (상위 시행규칙 총리령 제2127호·시행령 대통령령 제36445호 — #114 기처리분, 신규 없음)
datagokr_trace_since: 2026-07-27
datagokr_trace_count: 642 (전주 642 → +0, 신규 없음)

## KPI (마스터 헌장 §4, #100)
kpi_감지_적시성: 목표 ≤7일 / 측정 전(기준선 미설정)
kpi_근거_정확도: 목표 100% / 미측정 — 샘플 감사로 측정 예정
kpi_완전성_3x3매트릭스: 목표 ≥95% / 미측정
kpi_검증폐쇄율: 목표 분기 +20%p / 기준 47건(2026-06-09), 현재 폐쇄 0
kpi_공백해소: 협력기관 실데이터화 완료(#103, 연락처 미입력) / 진행현안 사용자입력 대기

## 거버넌스 문서 (회차 로드 대상)
governance_docs: MASTER_CHARTER.md, QA_GATE.md, VERIFICATION_REGISTER.md, DOSSIER_MAP.md, GROUNDING_REGISTRY.md

## 후속 추적
open_followups: ① MDR 간소화 COM(2025)1023 입법진행 추적(주간) ② EUDAMED legacy 등록 2026-11-28 마감 D-164(분기#2 사전점검 완료, 분기#3에서 재점검) ③ FDA AI 수명주기 가이던스 확정 추적 ④ IEC 62304 Ed.2 발행 추적 ⑤ MFDS 디지털 GMP 고시 시행 추적 ⑥ [검증]47건 분기 폐쇄(#99, 진행중) ⑦ EU MDR 32026R1359/1451 분기처리(#112) ⑨ [신규 #115] MFDS 기술문서심사기관 지정·운영 규정 일부개정(고시 2026-53, 2026-07-21 시행) — 개정 전문·심사기관 목록 확인을 분기 심층패치에서 수행(#114와 병합 검토) ⑧ [#114] KGMP 적합성인정 제도개편(시행령·시행규칙·고시2종, 2026-07-01) — 신설 고시(제2026-47호) 지정 심사기관 목록 확인 및 시행규칙 §48~48-4 전문 반영을 분기 심층패치에서 수행
