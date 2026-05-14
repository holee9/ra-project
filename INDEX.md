# 지식베이스 인덱스 (INDEX)

> 자료 추가 시 본 인덱스를 갱신하여 빠른 검색·참조가 가능하도록 유지.
> 최종 갱신: 2026-05-14 (자동보강 #44 — MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트)

## 0. 기준 문서 (Top-level)
- [README.md](README.md) – 프로젝트 개요
- [SOP_운영규칙.md](SOP_운영규칙.md) – 자료 업로드·분류·현안처리 프로세스

## 1. 규제 지식베이스

### 1.0 통합 요약
- [규제_프레임워크_요약](01_규제지식베이스/규제_프레임워크_요약.md) – MFDS/FDA/MDR 최신 비교 요약
- [사이버보안_통합가이드](01_규제지식베이스/사이버보안_통합가이드.md) – 3대 지역 사이버보안 통합

### 1.1 국내 (MFDS / 식약처)
- [MFDS_인허가_상세가이드](01_규제지식베이스/국내_MFDS/MFDS_인허가_상세가이드.md) – 국내 전체 가이드
- [제품별_등급분류](01_규제지식베이스/국내_MFDS/등급분류_기준/제품별_등급분류.md) – 3개 제품 등급 교차검증
- [MFDS_기술문서_섹션별_작성가이드](01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md) – 사용목적·작용원리·성능·안전성 섹션 작성 가이드 (3지역 비교·3제품 맵핑, #8)
- 법령·고시·가이드라인: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/`
  - [MFDS_디지털의료제품법_하위고시_추적](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료제품법_하위고시_추적.md) – 2025-01-24 시행 디지털의료제품법 고시·가이드라인 추적 (#9)
  - [MFDS_디지털의료기기_6종_가이드라인_요약](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료기기_6종_가이드라인_요약.md) – 2025-05-07 제·개정 가이드라인 6종 요약, 내장형/독립형 SW 분류, 3제품 영향 맵핑 (#10)
- GMP 심사 자료: `01_규제지식베이스/국내_MFDS/GMP_심사자료/`

### 1.2 미국 (FDA)
- [FDA_인허가_상세가이드](01_규제지식베이스/미국_FDA/FDA_인허가_상세가이드.md) – 510(k)/QMSR/Cybersecurity/PCCP 전체
- 510(k)·PMA 가이던스: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/`
  - [eSTAR_01_Device_Description_IFU](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_01_Device_Description_IFU.md) – eSTAR 작성 가이드 (1) Device Description / IFU
  - [eSTAR_02_Substantial_Equivalence](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md) – eSTAR 작성 가이드 (2) Substantial Equivalence 비교표
  - [eSTAR_03_Performance_Testing_Bench_Test](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_03_Performance_Testing_Bench_Test.md) – eSTAR 작성 가이드 (3) Performance Testing / Bench Test (3개 제품 완전 맵핑)
  - [FDA_Threat_Model_STRIDE_가이드](01_규제지식베이스/미국_FDA/FDA_Threat_Model_STRIDE_가이드.md) – FDA Section 524B Threat Model 작성 가이드·STRIDE 6범주·DREAD 점수화·3제품 Cyber Device 판정·eSTAR 제출 패키지·샘플 분석표·3지역 비교
  - [PCCP_AI_Device_작성가이드](01_규제지식베이스/미국_FDA/PCCP_AI_Device_작성가이드.md) – FDA 2024-12-04 Final Guidance 기반 PCCP 3대 구성요소·변경 유형·경로별 고려사항·라벨링·3지역 비교(MFDS 사전변경관리계획/EU AI Act)·3제품 영향 맵핑·제출 체크리스트 (#45)
  - [eSTAR_04_Cybersecurity_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md) – eSTAR 작성 가이드 (4) Cybersecurity Section (Section 524B + 2025 Final Guidance 기반, 3개 제품 맵핑)
  - [eSTAR_05_Software_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_05_Software_Section.md) – eSTAR 작성 가이드 (5) Software Section (IEC 62304 기반, Basic/Enhanced 10문서, 3개 제품 맵핑, 3지역 비교)
  - [eSTAR_06_Labeling_IFU_Form3881](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_06_Labeling_IFU_Form3881.md) – eSTAR 작성 가이드 (6) Labeling — IFU·Form 3881·21 CFR 801 기반, 3개 제품 맵핑
  - [FDA_PreSubmission_QSub_가이드](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_PreSubmission_QSub_가이드.md) – FDA Pre-Sub(Q-Sub) 4종 유형·작성구조·MDUFA 타임라인·3개 제품 샘플 질문·3지역 비교
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
- NB 심사자료: `01_규제지식베이스/유럽_CE_MDR/NB_심사자료/`

### 1.4 국제표준 (IEC / ISO)
- [핵심표준_목록](01_규제지식베이스/국제표준_IEC_ISO/핵심표준_목록.md) – 2026-04 기준 최신 판본 매트릭스
- [IEC60601-1_Ed3.2_시험항목_매트릭스](01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1_Ed3.2_시험항목_매트릭스.md) – Cl.4~17 전항목 시험표, 3지역 버전·인정현황 비교, 3제품 Gap분석, IECEE CB Scheme 전략 (#23)
  - [IEC60601-1-3_방사선방호_시험항목_매트릭스](01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1-3_방사선방호_시험항목_매트릭스.md) – DSA 누설방사선·HVL·콜리메이터·Focal Spot 시험항목, 3지역 인정현황(MFDS/FDA 0.88mGy/h 차이), 3제품 영향 맵핑, 시험 체크리스트 (#25)
- [IEC62304_SW수명주기_산출물_매핑](01_규제지식베이스/국제표준_IEC_ISO/IEC62304_SW수명주기_산출물_매핑.md) – IEC 62304:2006+A1:2015 Cl.5~9 전 조항 산출물, Safety Class A/B/C 판정·면제 조항, 3개 제품(Detector Class B·Handheld Class C·GUI SW Class C) 적용 계획, 3지역(MFDS/FDA/MDR) 요건 비교, FDA Basic/Enhanced 수준 판단 (#30)
- [ISO13485_2016_절차서_목록_뼈대](01_규제지식베이스/국제표준_IEC_ISO/ISO13485_2016_절차서_목록_뼈대.md) – 섹션 4~8 필수(M:22)·권고(R:12)·조건부(C:3) 총 37개 절차서 목록, 표준 SOP 뼈대 템플릿, 3지역 비교(KGMP 2025-22·QMSR 2026-02-02·MDR Annex IX), 3제품 영향 맵핑, Phase-in 구현 우선순위 (#31)
- [KGMP_QMSR_ISO13485_비교_통합전략](01_규제지식베이스/국제표준_IEC_ISO/KGMP_QMSR_ISO13485_비교_통합전략.md) – KGMP(고시 제2024-88호)·QMSR(21 CFR 820, 2026-02-02 시행)·ISO 13485 기반 MDR 3지역 QMS 요건 차이 매트릭스, QMSR ARR·불만파일·내부감사 추가 요건, KGMP 한국어 문서·전산화시스템 밸리데이션, MDR PMS/Vigilance/PRRC, 통합 전략 로드맵, MDSAP 활용, 3제품 영향 맵핑·갭 분석 체크리스트 (#32)

## 2. 제품별 기술파일
- [X-ray Detector](02_제품별_기술파일/01_Xray_Detector/README.md)
  - [Xray_Detector_DHF_목차_템플릿](02_제품별_기술파일/01_Xray_Detector/Xray_Detector_DHF_목차_템플릿.md) – DHF 전체 문서 목차 (8개 섹션·36개 항목), DQE/IEC 62220-1-1 핵심 요건, 3지역 기술문서 비교 (#13)
  - [Xray_Detector_성능시험_매트릭스](02_제품별_기술파일/01_Xray_Detector/Xray_Detector_성능시험_매트릭스.md) – IEC 62220-1-1 DQE·MTF·NPS 시험 방법, 3개 지역 제출 요건 비교, V&V 체크리스트 (#14)
- [Handheld X-ray Source](02_제품별_기술파일/02_Handheld_Xray_Source/README.md)
  - [Handheld_Xray_Source_DHF_목차_템플릿](02_제품별_기술파일/02_Handheld_Xray_Source/Handheld_Xray_Source_DHF_목차_템플릿.md) – DHF 8개 섹션·35개 문서 목차, 21 CFR 1020.30 방사선 성능기준, Form FDA 2579, MDR Class IIb NB 심사, 3지역 비교 (#15)
  - [Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트](02_제품별_기술파일/02_Handheld_Xray_Source/Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트.md) – 21 CFR 1020.30 전 조항 적합성 체크리스트: 누설방사선/HVL/경고라벨/인증/Form FDA 2579/배터리 표시, 3지역 비교, 시험항목 요약 (#16)
- [촬영실 GUI SW](02_제품별_기술파일/03_촬영실_GUI_SW/README.md)
  - [촬영실_GUI_SW_IEC62304_문서세트](02_제품별_기술파일/03_촬영실_GUI_SW/촬영실_GUI_SW_IEC62304_문서세트.md) – IEC 62304 기반 SW 수명주기 산출물 전체 세트(SDP·SRS·SAD·SDS·SVP·SVR·SCMP·SPRP), Safety Class 판단, 3지역 비교, 3제품 매핑 (#17)

## 3. 진행 현안
- [과제_관리대장](03_진행현안/과제_관리대장.md) – 전체 과제 단일 소스
- 진행 중 과제: `03_진행현안/01_진행중/`
- 완료 과제: `03_진행현안/02_완료/`
- [전체_일정표](03_진행현안/03_일정_마일스톤/전체_일정표.md) – 마스터 타임라인

## 4. 기술문서 템플릿
- 수록 폴더: `04_기술문서_템플릿/`
  - [Risk_Management_File_ISO14971_2019_템플릿](04_기술문서_템플릿/Risk_Management_File_ISO14971_2019_템플릿.md) – ISO 14971:2019 RMF 완전 템플릿: RMP·Hazard ID·Risk Register·Control·RMR, 3지역 AFAP/ALARP 비교, 3제품 Hazard 맵핑 (#18)
  - [Usability_Engineering_File_IEC62366_템플릿](04_기술문서_템플릿/Usability_Engineering_File_IEC62366_템플릿.md) – IEC 62366-1:2015+AMD1:2020 UEF 완전 템플릿: UEF-01~11 산출물, URRA/Use FMEA, SEP/SER, 3지역 제출 비교, 3제품 영향 맵핑 (#19)
  - [SOP_Design_Controls_ISO13485_7.3_템플릿](04_기술문서_템플릿/SOP_Design_Controls_ISO13485_7.3_템플릿.md) – ISO 13485 §7.3 설계관리 절차서 템플릿: 계획·입력·출력·검토·검증·유효성확인·이전·변경·DHF 전 단계, 3지역 비교 매트릭스(QMSR/MDR/KGMP), 3제품 적용 맵핑, 추적성 매트릭스 양식 (#33)
  - [SOP_Document_Record_Control_ISO13485_4.2.4-5_템플릿](04_기술문서_템플릿/SOP_Document_Record_Control_ISO13485_4.2.4-5_템플릿.md) – ISO 13485 §4.2.4/4.2.5 문서·기록 관리 절차서 템플릿: 문서 계층·번호체계·수명주기(작성/검토/배포/폐기), 기록 식별·가독성·검색·보호·15년 보존 기준, 3지역 비교(QMSR §820.40/180·MDR Annex IX·KGMP), 3제품 맵핑 (#34)
  - [SOP_CAPA_ISO13485_8.5.2_템플릿](04_기술문서_템플릿/SOP_CAPA_ISO13485_8.5.2_템플릿.md) – ISO 13485 §8.5.2/§8.5.3 CAPA 절차서: CA/PA Flow, 5-Why/Fishbone/FTA RCA 기법, 심각도 3등급(Critical/Major/Minor)·처리 기한, 효과성 검증, CAPA 레코드 양식(FM-CAP-001), 3지역 비교(QMSR §820.100·MDR·KGMP), 3제품 맵핑 (#36)
  - [SOP_Internal_Audit_ISO13485_8.2.4_템플릿](04_기술문서_템플릿/SOP_Internal_Audit_ISO13485_8.2.4_템플릿.md) – ISO 13485 §8.2.4 내부심사 절차서: 연간 계획, 심사원 자격, 착수·수행·종결 회의, NC 분류(Major/Minor/OBS), CAPA 연계, 심사 보고서·체크리스트 양식(FM-AUD-001~005), 3지역 비교(QMSR §820.22·MDR·KGMP), 3제품 핵심 심사 영역 (#37)
  - [SOP_Management_Review_ISO13485_5.6_템플릿](04_기술문서_템플릿/SOP_Management_Review_ISO13485_5.6_템플릿.md) – ISO 13485 §5.6 경영검토 절차서: 12개 입력 항목(내부심사·CAPA·고객불만·규제변경·PMS 등), 출력(Actio