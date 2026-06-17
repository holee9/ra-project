# 지식베이스 인덱스 (INDEX)

> 자료 추가 시 본 인덱스를 갱신하여 빠른 검색·참조가 가능하도록 유지.
> 최종 갱신: 2026-06-05 (분기 심층패치 — Q3 규제 패치 + FDA AI/ML PCCP 운영 + IEC 62304 Ed.2 동향)

## 0. 기준 문서 (Top-level)
- ⭐ [착수준비_마스터_로드맵](착수준비_마스터_로드맵.md) – **무엇을/어떤 산출물을 준비하나** (개발·제조 착수 준비 진입점)
- [README.md](README.md) – 프로젝트 개요
- [SOP_운영규칙.md](SOP_운영규칙.md) – 자료 업로드·분류·현안처리 프로세스

## 1. 규제 지식베이스

### 1.0 통합 요약
- [규제_프레임워크_요약](01_규제지식베이스/규제_프레임워크_요약.md) – MFDS/FDA/MDR 최신 비교 요약
- [사이버보안_통합가이드](01_규제지식베이스/사이버보안_통합가이드.md) – 3대 지역 사이버보안 통합
- [글로벌_동시제출_전략_MDSAP](01_규제지식베이스/글로벌_동시제출_전략_MDSAP.md) – MDSAP 5개 정회원·AU P0002.010(2026-02)·Common Core TD·제출 순서 4전략·3제품 권장 전략·비용 예측·리스크 매트릭스 (#82)
- [원가_일정_예측_모델](01_규제지식베이스/원가_일정_예측_모델.md) – 3지역 정부수수료 비교 매트릭스(MFDS 기술문서심사/FDA FY2026 MDUFA/MDR NB)·시험비 예측 모델(IEC 60601 시리즈·DQE)·3제품×3지역 총원가·일정 예측(최소~최대 시나리오)·비용 최적화 전략(IECEE CB Scheme·FDA SBD)·변동 리스크·예비비 권고 (#83)
- [UDI_구조_3지역_비교](01_규제지식베이스/UDI_구조_3지역_비교.md) – UDI DI·PI 구조·발급기관·GUDID/EUDAMED/UDI포털 비교·EUDAMED 2026-05-28 의무화·3제품 적용 매트릭스·라벨 체크리스트 (#48)
- [IFU_필수요소_3지역_비교](01_규제지식베이스/IFU_필수요소_3지역_비교.md) – MFDS(고시 제2024-77호)/FDA(21 CFR 801)/MDR(§23.4) 36개 IFU 필수 항목 비교 매트릭스·방사선 전용 §(r)·3제품 IFU 섹션·지역별 차별화 포인트 (#50)
- [3지역_공통_빈번지적사항_Top20](01_규제지식베이스/3지역_공통_빈번지적사항_Top20.md) – FDA RTA 33%·AI 67%·NSE 15% 통계 기반 Top 20 빈번 지적사항·3지역 비교 매트릭스·지적유형별 Fact/해석/Action·3제품 위험 맵핑·예방 체크리스트 (#61)
- [예상_QA_DB_3지역_제품별](01_규제지식베이스/예상_QA_DB_3지역_제품별.md) – MFDS·FDA·MDR 심사관 예상 Q&A DB: 3개 지역×3개 제품(Detector/Handheld Source/GUI SW) 심사 질문·최적 답변 패턴·근거·위험도 표기·빠른 참조 매트릭스 (#84)
- [규제변경_모니터링_자동화_RSS](01_규제지식베이스/규제변경_모니터링_자동화_RSS.md) – MFDS RSS 공식 채널·law.go.kr 법령 추적·FDA CDRH 이메일 구독 목록·Federal Register API/RSS·EUR-Lex 맞춤 RSS·EUDAMED 모니터링·3지역 비교 매트릭스·3제품별 모니터링 우선순위·Python 자동화 스크립트·2025~2026 규제 변경 트래커·점검 주기 가이드 (#85)
- [경쟁제품_510k_Summary_분석DB](01_규제지식베이스/경쟁제품_510k_Summary_분석DB.md) – FDA OpenFDA API 기반 MQB(FPD Detector)/IZL(Mobile X-ray)/LLZ(DR SW) 경쟁사 510(k) 2024~2026 분석·Special vs Traditional 전략·번들 제출 패턴·자사 K251223 포지셔닝·3지역 비교·3제품 행동 지시 (#86)
- [EUDAMED_모듈별_등록_실무가이드](01_규제지식베이스/EUDAMED_모듈별_등록_실무가이드.md) – Commission Decision (EU) 2025/2371 기반 6개 모듈 구조·4개 모듈 2026-05-28 의무화·ACT(SRN)/UDI-DEV/NB-CERT/MSU 등록 절차·Module 5(Vigilance ~Q2 2027)·3지역 비교(FDA GUDID/MFDS UDI포털/EUDAMED)·3제품 Phase별 체크리스트 (#87)
- [2026_Q2_규제_업데이트_종합패치](01_규제지식베이스/2026_Q2_규제_업데이트_종합패치.md) – Phase 5 유지관리 #1: FDA QMSR 발효(2026-02-02)·CP 7382.850·HF 최종 가이던스(2026-05-29)·EU COM(2025)1023 간소화 제안·Implementing Reg. 2026/977·EUDAMED 의무화·MFDS RWE 확대·음성 변경허가·AI 공통부품 선평가·3지역 매트릭스·3제품 영향 맵핑 (#88)
- [2026_Q3_규제_업데이트_종합패치](01_규제지식베이스/2026_Q3_규제_업데이트_종합패치.md) – 분기 심층패치: **EU MDR/IVDR 간소화 COM(2025)1023 미채택**(입법 진행, 채택 2026말~2027Q2 전망)·**EUDAMED 4모듈 2026-05-28 의무화 발효·legacy 2026-11-28 마감(D-176)**·FDA QMSR 운영·AI 수명주기 가이던스 초안 유지·MFDS 디지털의료제품법 가이드라인 정비(2025-05/10)·3지역 매트릭스·3제품 영향 맵핑·인증유지(PSUR/CER/Vigilance) 캘린더 (#quarterly)

### 1.1 국내 (MFDS / 식약처)
- [MFDS_인허가_상세가이드](01_규제지식베이스/국내_MFDS/MFDS_인허가_상세가이드.md) – 국내 전체 가이드
- [제품별_등급분류](01_규제지식베이스/국내_MFDS/등급분류_기준/제품별_등급분류.md) – 3개 제품 등급 교차검증
- [MFDS_기술문서_섹션별_작성가이드](01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md) – 사용목적·작용원리·성능·안전성 섹션 작성 가이드 (3지역 비교·3제품 맵핑, #8)
- 법령·고시·가이드라인: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/`
  - [MFDS_디지털의료제품법_하위고시_추적](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료제품법_하위고시_추적.md) – 2025-01-24 시행 디지털의료제품법 고시·가이드라인 추적 (#9)
  - [MFDS_디지털의료기기_6종_가이드라인_요약](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료기기_6종_가이드라인_요약.md) – 2025-05-07 제·개정 가이드라인 6종 요약, 내장형/독립형 SW 분류, 3제품 영향 맵핑 (#10)
  - [MFDS_사이버보안_가이드라인_2025_대응](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_사이버보안_가이드라인_2025_대응.md) – 2025.01.10 개정: 요구사항 15→35개(RA-01~35) 확장·IMDRF N60/N70/N73 도입·5종 제출 서류·위험관리보고서 구조·3지역 비교(MFDS/FDA/MDR)·3제품 영향 맵핑·제출 체크리스트 (#49)
  - [MFDS_디지털의료기기_표시기재_가이드라인_대응](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료기기_표시기재_가이드라인_대응.md) – 고시 제2024-77호(2024-12-04) 주요 개정·디지털의료기기 8종 GMP 유형군·SW/AI·사이버보안 추가 기재사항 체크리스트·3제품 적용 매트릭스·e-IFU 가이드 (#51)
  - [MFDS_임상시험_계획_승인_절차](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_임상시험_계획_승인_절차.md) – 의료기기법 §10 승인 절차·제출 서류 3종·심사기준 5항목·처리기한 30일·변경승인 유형·3지역 비교(MFDS/FDA IDE/EU MDR Art.62)·3제품 임상 요건 맵핑·신청 전 체크리스트 (#54)
- GMP 심사 자료: `01_규제지식베이스/국내_MFDS/GMP_심사자료/`

### 1.2 미국 (FDA)
- [FDA_인허가_상세가이드](01_규제지식베이스/미국_FDA/FDA_인허가_상세가이드.md) – 510(k)/QMSR/Cybersecurity/PCCP 전체
- 510(k)·PMA 가이던스: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/`
  - [eSTAR_01_Device_Description_IFU](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_01_Device_Description_IFU.md) – eSTAR 작성 가이드 (1) Device Description / IFU
  - [eSTAR_02_Substantial_Equivalence](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md) – eSTAR 작성 가이드 (2) Substantial Equivalence 비교표
  - [eSTAR_03_Performance_Testing_Bench_Test](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_03_Performance_Testing_Bench_Test.md) – eSTAR 작성 가이드 (3) Performance Testing / Bench Test (3개 제품 완전 맵핑)
  - [FDA_Threat_Model_STRIDE_가이드](01_규제지식베이스/미국_FDA/FDA_Threat_Model_STRIDE_가이드.md) – FDA Section 524B Threat Model 작성 가이드·STRIDE 6범주·DREAD 점수화·3제품 Cyber Device 판정·eSTAR 제출 패키지·샘플 분석표·3지역 비교
  - [PCCP_AI_Device_작성가이드](01_규제지식베이스/미국_FDA/PCCP_AI_Device_작성가이드.md) – FDA 2024-12-04 Final Guidance 기반 PCCP 3대 구성요소·변경 유형·경로별 고려사항·라벨링·3지역 비교(MFDS 사전변경관리계획/EU AI Act)·3제품 영향 맵핑·제출 체크리스트 (#45)
  - [FDA_AI_ML_2026_PCCP_운영_TPLC_업데이트](01_규제지식베이스/미국_FDA/FDA_AI_ML_2026_PCCP_운영_TPLC_업데이트.md) – 분기 심층패치: PCCP 최종(2024-12) 운영·3경로 적용·3대 구성요소 운영해석·AI 수명주기 가이던스 초안(2025-01-06, 미확정) 상태·TPLC(투명성·편향·HF·사이버보안)·QMSR 정합·3지역 변경관리 비교·3제품 맵핑(GUI SW 핵심) (#quarterly)
  - [eSTAR_04_Cybersecurity_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md) – eSTAR 작성 가이드 (4) Cybersecurity Section (Section 524B + 2025 Final Guidance 기반, 3개 제품 맵핑)
  - [eSTAR_05_Software_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_05_Software_Section.md) – eSTAR 작성 가이드 (5) Software Section (IEC 62304 기반, Basic/Enhanced 10문서, 3개 제품 맵핑, 3지역 비교)
  - [eSTAR_06_Labeling_IFU_Form3881](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_06_Labeling_IFU_Form3881.md) – eSTAR 작성 가이드 (6) Labeling — IFU·Form 3881·21 CFR 801 기반, 3개 제품 맵핑
  - [FDA_PreSubmission_QSub_가이드](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_PreSubmission_QSub_가이드.md) – FDA Pre-Sub(Q-Sub) 4종 유형·작성구조·MDUFA 타임라인·3개 제품 샘플 질문·3지역 비교
  - [FDA_임상데이터_필요판단_기준](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_임상데이터_필요판단_기준.md) – 510(k)/De Novo/PMA 경로별 임상데이터 필요 판단 기준·4대 필요 조건·3지역 비교 매트릭스·3제품 임상데이터 요구 수준 맵핑·제출 체크리스트 3종 (#53)
- 심사 대응: `01_규제지식베이스/미국_FDA/`
  - [FDA_RTA_Refuse_to_Accept_회피_체크리스트](01_규제지식베이스/미국_FDA/FDA_RTA_Refuse_to_Accept_회피_체크리스트.md) – Traditional 510(k) A~K 섹션 전항목·자사 3제품 적용 매핑·빈번한 반려사유 Top10·De Novo RTA 특이사항 (#56)
  - [FDA_AI_Additional_Information_대응_전략](01_규제지식베이스/미국_FDA/FDA_AI_Additional_Information_대응_전략.md)
  - [FDA_MDR_21CFR803_보고절차](01_규제지식베이스/미국_FDA/FDA_MDR_21CFR803_보고절차.md) – 21 CFR Part 803 MDR 보고절차·30일/5근무일 타임라인·Serious Injury 정의·기능불량 판단기준·eMDR 3500A·내부 SOP 뼈대·3지역 비교·3제품 시나리오 판단 매트릭스 (#64) – AI Request vs RTA vs Interactive Review 비교·180일 타임라인·명확화 회의·SIR Meeting 활용법·샘플 응답 템플릿·결함 유형별 대응·3지역 비교(FDA/MFDS/EU NB)·3제품 AI Request 위험 맵핑·Anti-Patterns·제출 체크리스트 (#57)
- 21 CFR Part 820 → QMSR: `01_규제지식베이스/미국_FDA/QSR_21CFR820/`
- 제품군별 Guidance: `01_규제지식베이스/미국_FDA/제품군별_가이던스/`

### 1.3 유럽 (CE / MDR)
- [MDR_인허가_상세가이드](01_규제지식베이스/유럽_CE_MDR/MDR_인허가_상세가이드.md) – MDR·전환기간·NB·MDCG 전체
- MDR 2017/745 원문·해설: `01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/`
  - [MDR_AnnexII_Technical_Documentation_Template](01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexII_Technical_Documentation_Template.md) – MDR Annex II 6개 섹션 작성 템플릿: 제품설명·라벨·설계·GSPR체크리스트·위험관리·검증, 3제품 맵핑, 3지역 비교 (#11)
  - [MDR_AnnexIII_PMS_TD_Template](01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexIII_PMS_TD_Template.md) – MDR Annex III PMS TD 섹션별 작성 템플릿: PMS Plan·PMSR(Class I)·PSUR(IIa~III), 3지역 비교, 3제품 영향 맵핑 (#12)
  - [MDR_AnnexI_GSPR_Checklist](01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexI_GSPR_Checklist.md) – MDR Annex I GSPR 전항(§1~§23) 맵핑 체크리스트: 3제품 적용 여부·입증 방법·조화표준 매핑, 3지역 비교 (#12)
  - [MDR_DoC_양식_작성지침](01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_DoC_양식_작성지침.md) – MDR Annex IV DoC 8개 필수 항목, 3제품 기재 요령, 빈 양식 템플릿, 3지역 비교 (#13)
  - [MDR_Article15_PRRC_자격요건](01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_Article15_PRRC_자격요건.md) – PRRC 자격 2경로, 고용 형태, 5대 책임, 3지역 유사 역할 비교 (#13)
- MDCG 가이던스: `01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/`
  - [MDCG_2019-16_Rev1_Cybersecurity_대응_체크리스트](01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/MDCG_2019-16_Rev1_Cybersecurity_대응_체크리스트.md) — MDCG 2019-16 Rev.1(2020-07) 기반 8대 보안 개발 실무·Pre/Post-market 체크리스트·MDR Annex I §17.2/§17.4/§18.8 조항 매핑·IFU 사이버보안 체크리스트·3제품 보안 역량 매트릭스 (#44)
  - [Clinical_Evaluation_MDR_동등성_충분성_기준](01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/Clinical_Evaluation_MDR_동등성_충분성_기준.md)
  - [MDR_Vigilance_Serious_Incident_판정기준](01_규제지식베이스/유럽_CE_MDR/MDR_Vigilance_Serious_Incident_판정기준.md) – Art.2(65) 정의·6대 판정기준·2일/10일/15일 타임라인·EUDAMED Vigilance·FSCA 유형·3지역 타임라인 비교·3제품 시나리오 판정표 (#65) — MDR Art. 61 구조·Annex XIV 동등성 3대 기준(기술/생물/임상)·MDCG 2020-5/6/2023-7 충분성 판단·임상조사 면제 4 Case·FDA SE 비교·MFDS 비교·3지역 매트릭스·3제품 영향 맵핑·실무 체크리스트 (#52)
- NB 심사자료: `01_규제지식베이스/유럽_CE_MDR/NB_심사자료/`

### 1.4 국제표준 (IEC / ISO)
- [핵심표준_목록](01_규제지식베이스/국제표준_IEC_ISO/핵심표준_목록.md) – 2026-06 기준 최신 판본 매트릭스 (+ §7 IEC 62304 Ed.2 개발중 동향 추적: health software 확대·81001-5-1/QMSR/AI 정합)
- [IEC60601-1_Ed3.2_시험항목_매트릭스](01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1_Ed3.2_시험항목_매트릭스.md) – Cl.4~17 전항목 시험표, 3지역 버전·인정현황 비교, 3제품 Gap분석, IECEE CB Scheme 전략 (#23)
  - [IEC60601-1-3_방사선방호_시험항목_매트릭스](01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1-3_방사선방호_시험항목_매트릭스.md) – DSA 누설방사선·HVL·콜리메이터·Focal Spot 시험항목, 3지역 인정현황(MFDS/FDA 0.88mGy/h 차이), 3제품 영향 맵핑, 시험 체크리스트 (#25)
- [IEC62304_SW수명주기_산출물_매핑](01_규제지식베이스/국제표준_IEC_ISO/IEC62304_SW수명주기_산출물_매핑.md) – IEC 62304:2006+A1:2015 Cl.5~9 전 조항 산출물, Safety Class A/B/C 판정·면제 조항, 3개 제품(Detector Class B·Handheld Class C·GUI SW Class C) 적용 계획, 3지역(MFDS/FDA/MDR) 요건 비교, FDA Basic/Enhanced 수준 판단 (#30)
- [ISO13485_2016_절차서_목록_뼈대](01_규제지식베이스/국제표준_IEC_ISO/ISO13485_2016_절차서_목록_뼈대.md) – 섹션 4~8 필수(M:22)·권고(R:12)·조건부(C:3) 총 37개 절차서 목록, 표준 SOP 뼈대 템플릿, 3지역 비교(KGMP 2025-22·QMSR 2026-02-02·MDR Annex IX), 3제품 영향 맵핑, Phase-in 구현 우선순위 (#31)
- [KGMP_QMSR_ISO13485_비교_통합전략](01_규제지식베이스/국제표준_IEC_ISO/KGMP_QMSR_ISO13485_비교_통합전략.md) – KGMP(고시 제2024-88호)·QMSR(21 CFR 820, 2026-02-02 시행)·ISO 13485 기반 MDR 3지역 QMS 요건 차이 매트릭스, QMSR ARR·불만파일·내부감사 추가 요건, KGMP 한국어 문서·전산화시스템 밸리데이션, MDR PMS/Vigilance/PRRC, 통합 전략 로드맵, MDSAP 활용, 3제품 영향 맵핑·갭 분석 체크리스트 (#32)
- [ISO15223-1_2021_심볼_적용가이드](01_규제지식베이스/국제표준_IEC_ISO/ISO15223-1_2021_심볼_적용가이드.md) – ISO 15223-1:2021 의료기기 라벨 심볼 가이드: 2021 개정 주요 변경(MD 심볼 신규)·Amd 1:2025 EU-REP 전환·3지역 적용 요건(MFDS 한국어 병기/FDA Symbols Glossary 의무/MDR 조화표준)·주요 심볼 목록·3제품 심볼 적용 매트릭스·라벨 설계 체크리스트 (#46)
- [IEC81001-5-1_수명주기_보안활동_매핑](01_규제지식베이스/국제표준_IEC_ISO/IEC81001-5-1_수명주기_보안활동_매핑.md) – IEC 81001-5-1:2021/ISH1:2025 전 수명주기 사이버보안 프로세스: 64개 보안 요건·5대 Clause·IEC 62304 단계별 통합 매핑·3지역 비교(MFDS N60/FDA SPDF/MDR §17.2)·3제품 영향 맵핑·문서 산출물 체크리스트 (#47)

## 2. 제품별 기술파일

### 2.1 X-ray Detector
- [Xray_Detector_DHF_목차_템플릿](02_제품별_기술파일/01_Xray_Detector/Xray_Detector_DHF_목차_템플릿.md) – DHF 전체 문서 목차 (8개 섹션·36개 항목), DQE/IEC 62220-1-1 핵심 요건, 3지역 기술문서 비교 (#13)
- [Xray_Detector_성능시험_매트릭스](02_제품별_기술파일/01_Xray_Detector/Xray_Detector_성능시험_매트릭스.md) – X-ray Detector 성능 시험 항목 매트릭스, IEC 62220-1 기반 (#14)
- [IEC62220-1-1_DQE_측정절차_가이드](02_제품별_기술파일/01_Xray_Detector/IEC62220-1-1_DQE_측정절차_가이드.md) – IEC 62220-1-1:2015 DQE 측정 절차 상세 가이드 (#29)

### 2.2 Handheld X-ray Source
- [Handheld_Xray_Source_DHF_목차_템플릿](02_제품별_기술파일/02_Handheld_Xray_Source/Handheld_Xray_Source_DHF_목차_템플릿.md) – DHF 전체 문서 목차, 방사선 안전 특화 요건, 3지역 비교 (#15)
- [Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트](02_제품별_기술파일/02_Handheld_Xray_Source/Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트.md) – 21 CFR 1020.30 적합성 체크리스트 (#16)

### 2.3 촬영실 GUI SW
- [촬영실_GUI_SW_IEC62304_문서세트](02_제품별_기술파일/03_촬영실_GUI_SW/촬영실_GUI_SW_IEC62304_문서세트.md) – IEC 62304 기반 SW 수명주기 문서 세트 (#17)

### 2.4 공통
- [공통_Clinical_Evaluation_Plan_Report_MDR_템플릿](02_제품별_기술파일/공통/공통_Clinical_Evaluation_Plan_Report_MDR_템플릿.md) – 3개 제품 공통 CEP/CER MDR 템플릿 (#20)
- [ISO10993-1_생물학적평가_적용판단](02_제품별_기술파일/공통/ISO10993-1_생물학적평가_적용판단.md) – ISO 10993-1 생물학적 안전성 평가 적용 판단 가이드 (#21)

## 3. 기술문서 템플릿

- [Gate_Review_체크리스트_5Gate](04_기술문서_템플릿/Gate_Review_체크리스트_5Gate.md) – DHF→STED→제출→AI대응→승인 5Gate 체계·Gate 0~4 전체 체크리스트·3지역 추가 항목·MFDS/FDA/MDR 지역별 기준·3제품 위험포인트·Go/No-Go 기록서식·지적유형별 대응전략 (#81)
- [Risk_Management_File_ISO14971_2019_템플릿](04_기술문서_템플릿/Risk_Management_File_ISO14971_2019_템플릿.md) – ISO 14971:2019 위험관리 파일 공통 템플릿 (#18)
- [Usability_Engineering_File_IEC62366_템플릿](04_기술문서_템플릿/Usability_Engineering_File_IEC62366_템플릿.md) – IEC 62366 사용적합성 엔지니어링 파일 템플릿 (#19)
- [SOP_Design_Controls_ISO13485_7.3_템플릿](04_기술문서_템플릿/SOP_Design_Controls_ISO13485_7.3_템플릿.md) – SOP: 설계 및 개발 관리 (ISO 13485 §7.3) (#33)
- [SOP_Document_Record_Control_ISO13485_4.2.4-5_템플릿](04_기술문서_템플릿/SOP_Document_Record_Control_ISO13485_4.2.4-5_템플릿.md) – SOP: 문서·기록 관리 (ISO 13485 §4.2.4-5) (#34)
- [SOP_CAPA_ISO13485_8.5.2_템플릿](04_기술문서_템플릿/SOP_CAPA_ISO13485_8.5.2_템플릿.md) – SOP: CAPA 절차서 (ISO 13485 §8.5.2) (#35)
- [SOP_Internal_Audit_ISO13485_8.2.4_템플릿](04_기술문서_템플릿/SOP_Internal_Audit_ISO13485_8.2.4_템플릿.md) – SOP: 내부감사 절차서 (ISO 13485 §8.2.4) (#39)
- [SOP_Management_Review_ISO13485_5.6_템플릿](04_기술문서_템플릿/SOP_Management_Review_ISO13485_5.6_템플릿.md) – SOP: 경영검토 절차서 (ISO 13485 §5.6) (#40)
- [SOP_Supplier_Control_ISO13485_7.4_템플릿](04_기술문서_템플릿/SOP_Supplier_Control_ISO13485_7.4_템플릿.md) – SOP: 공급업체 관리 절차서 (ISO 13485 §7.4) (#41)
- [PMS_Plan_MDR_Article84_템플릿](04_기술문서_템플릿/PMS_Plan_MDR_Article84_템플릿.md)
- [PSUR_템플릿_MDR_Article86](04_기술문서_템플릿/PSUR_템플릿_MDR_Article86.md) – MDR Article 86 PSUR 실용 템플릿·데이터수집기간·판매량·주요발견·benefit-risk·PMCF 연계·EUDAMED 제출·3지역 비교(MDR/FDA PMA/MFDS)·3제품 갱신주기 맵핑 (#63) – MDR Article 84 / Annex III §1.1 PMS Plan 실용 템플릿·3지역 비교(MDR/FDA 21 CFR 822/MFDS)·3제품 특화 고려사항·MDCG 2025-10 기반 (#62)

## 5. 전문가 교육 (12주 커리큘럼)

- [커리큘럼](05_전문가교육/커리큘럼.md) – 12주 전체 구성·학습자료 링크
- [Week01_규제_개론](05_전문가교육/Week01_규제_개론.md) – 의료기기 정의·등급·3대 지역 규제 프레임워크 개요
- [Week02_MFDS_체계_상세](05_전문가교육/Week02_MFDS_체계_상세.md) – MFDS 법령 계층·4등급 분류·허가/인증/신고 프로세스·GMP 체계·3지역 비교·3제품 경로 맵핑·실습 과제·평가 기준 (#68)
- [Week03_FDA_510k_상세](05_전문가교육/Week03_FDA_510k_상세.md) – 510(k) 3종 유형·SE 5단계·eSTAR 절차·심사 타임라인·21 CFR 1020 방사선기준·3지역 비교·3제품 맵핑·실습·평가기준 (#69)
- [Week04_MDR_EU_체계_상세](05_전문가교육/Week04_MDR_EU_체계_상세.md) – MDR 2017/745 발효·전환기간(2027/2028)·Annex VIII 등급분류·적합성평가(Annex IX/X/XI)·EUDAMED 의무화·NB 선정·3지역 비교·3제품 로드맵·실습·평가기준 (#70)
- [Week05_국제표준_ISO13485_14971_62366](05_전문가교육/Week05_국제표준_ISO13485_14971_62366.md) – ISO 13485:2016(QMS)·ISO 14971:2019(위험관리)·IEC 62366-1:2015+AMD1(사용적합성) 3표준 구조·핵심요건·3지역 인정현황·3제품 맵핑·Golden Triangle 도식·실습 3종·평가기준 (#71)
- [Week06_Xray특화표준_60601시리즈_62220](05_전문가교육/Week06_Xray특화표준_60601시리즈_62220.md) – IEC 60601-1 Ed.3.2(AMD2:2020)·60601-1-2(EMC)·60601-1-3(방사선방호)·60601-2-28(X-ray 관구)·60601-2-54:2022(촬영·투시)·IEC 62220-1-1/1-3(DQE) 구조·시험항목·3지역 인정현황·3제품 적용 매트릭스·실습 3종·평가기준 (#72)
- [Week07_기술문서_작성_실습_STED](05_전문가교육/Week07_기술문서_작성_실습_STED.md) – GHTF/SG1/N011:2008 STED 기원·FDA eSTAR vs MDR Annex II vs MFDS 기술문서 3지역 구조 비교·섹션별 작성 요령(Device Description/SE/GSPR/동등비교/Performance Testing/Risk Management/Software/Labeling/Clinical Data)·3제품 기술문서 구성 계획·Common Core 전략·실습 3종·평가기준 (#73)
- [Week08_사이버보안_AI_SBOM_ThreatModel_PCCP](05_전문가교육/Week08_사이버보안_AI_SBOM_ThreatModel_PCCP.md) – FD&C Act §524B Cyber Device·FDA 2025-06-27 Final Guidance Section VII·STRIDE Threat Model 6범주·SBOM SPDX/CycloneDX·PCCP 3대 구성요소·IEC 81001-5-1 vs 62304 매핑·3지역 비교 매트릭스·3제품 영향 맵핑·실습 4종·평가기준 (#74)
- [Week09_임상평가](05_전문가교육/Week09_임상평가.md) – MFDS 2025-07 임상평가 신제도·FDA Solid State X-ray Imaging Device Guidance 임상이미지 평가 방법론·MDR Art.61+MDCG 2020-1/5/6/2023-7 동등성 3기준·CEP/CER 구조·PRISMA 문헌평가 방법론·PMCF 판단 기준·3제품 임상증거 전략 매트릭스·지적사항 대응·실습 3종·평가기준 (#77)
- [Week10_QMS심사대응](05_전문가교육/Week10_QMS심사대응.md) – MFDS KGMP 현장심사 준비 체크리스트·FDA QMSR CP 7382.850(2026-02-02) Risk-Based Inspection·ARR 3개·FDA-483 응답 구조·MDR NB Annex IX/X/XI 심사 단계·NB Deficiency 유형 3가지·3지역 심사 비교 매트릭스·3제품 위험 요인 맵핑·연간 심사 대응 달력·실습 3종·평가기준 (#76)
- [Week11_심사_QA_시뮬레이션](05_전문가교육/Week11_심사_QA_시뮬레이션.md) – MFDS 기술문서 심사 Q10 유형·FDA CDRH AI Request 패턴(SE 5단계·SW문서·선량클레임·483 CAPA 응답)·MDR NB Deficiency 3유형(문서부재·데이터불충분·해석차이)·X-ray 3제품 특화 Q&A·금기 답변 패턴 6종·시뮬레이션 3세트(FDA AI/MDR NB/MFDS 보완) (#79)
- [Week12_종합실습_평가](05_전문가교육/Week12_종합실습_평가.md) – 3시나리오 종합 실습(Handheld MFDS 허가·Detector FDA 510(k)·GUI SW MDR CE Marking)·SE 비교 매트릭스·Common Core TD 글로벌 전략·3지역 허가 일정 로드맵·이론(30점)+실기(40점)+구술(30점) 최종 평가·20개 역량 자기점검 체크리스트·수료 후 3Phase 실무 로드맵·3제품×3지역 종합 매트릭스 (#80)
