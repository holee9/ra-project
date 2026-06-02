> 최종 갱신: 2026-06-03 (자동보강 #84)
> 근거: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices | https://www.fda.gov/radiation-emitting-products/electronic-product-radiation-control-program/getting-radiation-emitting-product-market-frequently-asked-questions | https://www.mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=14834 | https://health.ec.europa.eu/medical-devices-eudamed/notified-bodies-and-certificates-module_en | https://cruxi.ai/510k-new/blog/questions/6968916cdebc57cb72b61f21/what-cybersecurity-documentation-does-fda-require-for-a-510k

# 예상 Q&A DB — 3개 지역 × 3개 제품별

## 목적 및 사용법

본 문서는 MFDS·FDA·MDR 심사관 및 NB 심사자가 실제 심사 과정에서 제기하는 예상 질문과 최적 답변 패턴을 체계적으로 정리한 참조 DB이다.

- **용도**: 기술문서 작성 전 자기점검, 보완자료 대응 준비, 제출 전 리뷰
- **참조 구분**: Week11 (시뮬레이션 교육용) ≠ 본 문서 (실무 참조 DB)
- **업데이트**: 실제 심사 Q&A 이력은 `06_심사_QA이력/`에 축적 후 본 문서에 반영

### 항목 구조

```
**Q**: [심사관 질문 — 실제 문구에 가깝게]
**A**: [최적 답변 핵심 포인트 (근거 중심)]
**근거**: [규정·가이던스 인용]
**관련KB**: [기존 문서 링크]
```

### 위험도 표기

| 기호 | 의미 |
|---|---|
| 🔴 | 답변 미흡 시 RTA/보완/NSE 직결 |
| 🟡 | 보완요청 가능성 높음 |
| 🟢 | 빈출이나 대응 난이도 낮음 |

---

## 1. MFDS (식약처) 예상 Q&A

### 1.1 공통 — 등급분류·품목코드

---

**Q-MFDS-01** 🔴  
**Q**: 해당 제품의 품목분류 코드 근거를 제시하시오. 동일 품목코드 내 다른 분류 가능성을 검토하였는가?  
**A**: 의료기기법 시행규칙 별표1 및 품목 및 품목별 허가·심사에 관한 규정(고시 제2024-14호) 기준으로, X-ray Detector는 C01090 (진단용 방사선 영상 검출기), Handheld Source는 C01070 (진단용 방사선 발생장치), GUI SW는 A28030 (의료영상 저장 전송 소프트웨어 또는 A18050 의료영상처리 소프트웨어) 중 적용. 주요 기능·사용목적 기술 후 등급분류위원회 해석례 또는 식약처 사전상담 결과를 근거로 제시.  
**근거**: 의료기기법 시행규칙 별표1; 고시 제2024-14호  
**관련KB**: `01_규제지식베이스/국내_MFDS/등급분류_기준/제품별_등급분류.md`

---

**Q-MFDS-02** 🟡  
**Q**: 3등급 의료기기로 분류한 근거가 무엇인가? 2등급 적용을 검토하였는가?  
**A**: 의료기기법 §2 및 별표1 분류기준에 따라 방사선 발생장치 중 휴대형은 방사선 직접 조사 위험으로 3등급. 2등급 적용 가능성은 사용목적(진단용 vs 치료용), 방사선량(선량 한계치 이하 여부), 조작자 근접성을 기준으로 검토하였으며 해당 없음을 확인.  
**근거**: 의료기기법 §2제2항; 별표1 방사선 발생기기  
**관련KB**: `01_규제지식베이스/국내_MFDS/등급분류_기준/제품별_등급분류.md`

---

### 1.2 공통 — 기술문서

---

**Q-MFDS-03** 🔴  
**Q**: 사용목적 기술이 불명확하다. 적용 환자군, 해부학적 부위, 임상 환경을 구체적으로 기술하시오.  
**A**: 사용목적은 4요소로 구성 — ① 대상 환자군(성인·소아, 특정 질환군 포함/제외), ② 적용 해부학적 부위(흉부·사지 등), ③ 임상 환경(병원 촬영실·응급실·이동형 등), ④ 사용 목적(진단 영상 획득). 예: "성인 및 소아 환자의 흉부, 사지 등 전신 진단 방사선 촬영 시 사용하는 [촬영실 내] [방사선 디지털 검출기]". 사용목적 변경 시 허가 변경 필요함을 인지.  
**근거**: MFDS 기술문서 작성 가이드라인(2023-06); 의료기기법 §6  
**관련KB**: `01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md`

---

**Q-MFDS-04** 🟡  
**Q**: 작용원리 기술에 핵심 기술적 메커니즘이 누락되어 있다. 에너지 변환 원리, 신호처리 알고리즘을 설명하시오.  
**A**: X-ray Detector의 경우: ① 방사선→가시광(섬광체, e.g., CsI:Tl or GOS) → ② 광→전하(Photodiode 또는 a-Si TFT) → ③ 전하→디지털 신호(ADC) → ④ 보정(Offset/Gain/Defect Correction) → ⑤ DICOM 출력의 전체 변환 경로를 기술. 독점기술(trade secret) 부분은 "상세는 별첨 기술 자료 참조"로 처리 가능.  
**근거**: MFDS 기술문서 섹션별 작성가이드  
**관련KB**: `01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md`

---

**Q-MFDS-05** 🔴  
**Q**: 성능 시험성적서의 시험항목이 관련 표준의 전 항목을 포함하지 않는다. 미적용 항목에 대한 이유를 제시하시오.  
**A**: 미적용 항목마다 "해당 없음(N/A)" 판정 근거를 기술. N/A 근거 유형: ① 제품 구조상 해당 기능 없음 (예: 배터리 없음 → IEC 62133 N/A), ② 표준 자체의 제외 조건 조항 인용 (예: IEC 60601-1 Clause X.X 제외), ③ 사용목적 한정으로 인한 비적용. 각 N/A 항목은 Risk Management File에 근거 기록 필요.  
**근거**: 의료기기 안전에 관한 공통기준 규격 (식약처 고시); IEC 60601-1  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1_Ed3.2_시험항목_매트릭스.md`

---

**Q-MFDS-06** 🟡  
**Q**: 국내 공인 시험기관에서 발행한 성적서가 아니다. 국외 시험성적서 인정 기준을 충족하는가?  
**A**: 의료기기법 §14 및 시행규칙 §25에 따라 국외 시험기관 성적서 인정 조건: ① KOLAS/IAF-MLA 가입 인정기관이 인정한 시험기관, ② ILAC-MRA 가입 인정기관, ③ 해외 규제기관(FDA/EU NB 공인) 성적서 중 식약처가 인정한 경우. 해당 시험기관의 KOLAS 상호인정 협정(MRA) 현황 확인 및 성적서에 인정 번호 기재.  
**근거**: 의료기기법 제14조; 시행규칙 제25조  
**관련KB**: -

---

### 1.3 공통 — SW·사이버보안

---

**Q-MFDS-07** 🔴  
**Q**: 소프트웨어 의료기기 해당 여부를 판단한 근거를 제시하시오. 독립형/내장형 구분 기준을 설명하시오.  
**A**: 2025-01-24 시행 디지털의료제품법 및 MFDS 디지털의료기기 가이드라인(2025-05-07 개정)에 따라: GUI SW는 독립형 SW(Standalone Software)로, 의료기기 하드웨어와 별도로 동작하며 진단 목적 영상 처리·표시 기능을 수행하므로 SW 의료기기 해당. IEC 62304 Safety Class 판정: 오진단 시 환자 위해 가능성 → Class B 이상. Detector/Handheld Source의 내장 펌웨어: 내장형 SW로 분류, IEC 62304 전 조항 적용.  
**근거**: 디지털의료제품법(2025-01-24); MFDS 디지털의료기기 6종 가이드라인(2025-05-07)  
**관련KB**: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료기기_6종_가이드라인_요약.md`

---

**Q-MFDS-08** 🔴  
**Q**: 사이버보안 위험관리보고서의 요구사항 RA-01~35 항목이 불완전하다. 특히 RA-21(SBOM)과 RA-28(패치관리) 항목을 보완하시오.  
**A**: MFDS 사이버보안 가이드라인(2025.01 개정) 기반 35개 요구사항 전체 준수. RA-21(SBOM): CycloneDX 1.6 또는 SPDX 2.3 형식, NTIA 7개 최소요소 포함, 제3자 컴포넌트 라이선스·CVE 취약점 매핑 포함. RA-28(패치관리): 취약점 모니터링 주기(최소 분기 1회), 보안패치 배포 절차, 제품 수명 동안의 패치 지원 기간 명시.  
**근거**: MFDS 의료기기 사이버보안 가이드라인(2025.01.10 개정판)  
**관련KB**: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_사이버보안_가이드라인_2025_대응.md`

---

### 1.4 X-ray Detector 특화

---

**Q-MFDS-D01** 🟡  
**Q**: DQE(Detective Quantum Efficiency) 측정 결과가 제출되었으나 측정 조건이 IEC 62220-1-1:2015 기준과 다르다. 측정 조건 차이의 영향을 설명하시오.  
**A**: IEC 62220-1-1:2015 §6.3 기준: RQA3/RQA5 방사선 품질, SID 150cm, Antiscatter grid 제거 조건. 측정 조건 편차 발생 시 — ① 편차 내용(예: SID 100cm 사용) 명시, ② 편차가 DQE 결과에 미치는 영향 정량 분석(예: Inverse Square Law 보정값), ③ 식약처 사전 협의 결과 또는 편차 허용 근거 기술. 가능한 한 표준 조건으로 재측정 권장.  
**근거**: IEC 62220-1-1:2015 §6.3 측정 조건  
**관련KB**: `02_제품별_기술파일/01_Xray_Detector/IEC62220-1-1_DQE_측정절차_가이드.md`

---

**Q-MFDS-D02** 🟡  
**Q**: Flat Panel Detector의 결함 화소(Defective Pixel) 허용 기준을 제시하시오. 보정 알고리즘의 안전성 검증 자료가 있는가?  
**A**: 결함 화소 허용 기준: IEC 62220-1-1 또는 제조사 Spec(NEMA XR 29 참조)에 따라 단일 결함 화소 ≤0.1%, 클러스터(3×3) ≤0.01% 등으로 설정. 보정 알고리즘 검증: ① Defect Pixel Map 생성 절차, ② Correction Algorithm 성능 검증 (보정 전·후 영상 SNR, Uniformity 비교), ③ 결함 화소 증가 모니터링 주기(수명 기간 내).  
**근거**: IEC 62220-1-1:2015; NEMA XR 29-2011  
**관련KB**: `02_제품별_기술파일/01_Xray_Detector/Xray_Detector_성능시험_매트릭스.md`

---

### 1.5 Handheld X-ray Source 특화

---

**Q-MFDS-H01** 🔴  
**Q**: 휴대형 X선 장치의 조작자 방사선 피폭 평가 결과가 없다. 조작자가 조사야에 가깝게 위치하는 특성상 피폭 위험이 높다. 평가를 제출하시오.  
**A**: 조작자 피폭 평가는 3단계로 구성: ① 누설방사선 측정 (IEC 60601-1-3: 관구 표면 5cm 및 100cm 거리에서 ≤1.0 mGy/air kerma per hour at 100 kVp), ② 산란선 측정 (팬텀 사용, 조작자 대리 위치에서의 H*(10) 측정), ③ 직업 피폭 선량 추정 (사용 빈도, 조작자 거리 가정 시나리오). 결과는 ICRP 103 직업 피폭 연간 한계(20 mSv/년) 대비 안전 여유율 제시.  
**근거**: IEC 60601-1-3:2008+A1+A2; ICRP Publication 103; 원자력안전법 방사선 방호 기준  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1-3_방사선방호_시험항목_매트릭스.md`

---

**Q-MFDS-H02** 🟡  
**Q**: 배터리 내장형 제품의 경우 IEC 62133-2 시험 성적서가 필요하다. 미제출 사유를 설명하시오.  
**A**: IEC 62133-2(리튬 이온 배터리 안전):2017 적용 판단 — 내장 리튬이온 배터리 포함 시 필수. 미제출 사유가 배터리 자체는 IEC 62133-2 인증 취득 셀을 구매하여 사용하는 경우: ① 셀 공급업체의 IEC 62133-2 인증서(또는 CB Report) 제출, ② 제조사의 배터리 팩 안전 평가(셀→팩 수준 위험관리), ③ IEC 60601-1 Annex F 배터리 관련 조항 준수 근거 포함.  
**근거**: IEC 62133-2:2017; IEC 60601-1:2005+A2 Annex F  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC62133-2_배터리안전_Handheld_적용.md`

---

### 1.6 촬영실 GUI SW 특화

---

**Q-MFDS-S01** 🔴  
**Q**: 소프트웨어 개발 수명주기 문서(SDP, SRS, SVP 등)의 버전이 시판 제품과 일치하지 않는다. 버전 관리 일관성을 확보하시오.  
**A**: IEC 62304 §8.1 구성관리 계획(SCMP)에 따라: ① 제품 릴리즈 버전 ↔ 기술문서 내 SW 버전 완전 일치 확인. ② SW 변경 이력(Change Log) 및 변경영향평가 결과 포함. ③ 심사 제출 시점 기준 최신 릴리즈 버전 기준으로 문서 전면 갱신. MFDS는 "제출 당시 시판 버전 = 기술문서 버전" 원칙 엄격 적용.  
**근거**: IEC 62304:2006+A1:2015 §8 Software Configuration Management  
**관련KB**: `02_제품별_기술파일/03_촬영실_GUI_SW/촬영실_GUI_SW_IEC62304_문서세트.md`

---

**Q-MFDS-S02** 🟡  
**Q**: AI/ML 알고리즘을 포함하는 경우 PCCP(사전변경관리계획) 해당 여부를 확인하시오.  
**A**: GUI SW에 AI 영상 처리(노이즈 저감, 자동 노출 조정 등) 포함 시 — MFDS 디지털의료기기 가이드라인 6종(2025-05-07) 중 'AI 의료기기 허가·심사 가이드라인' 적용. PCCP 제출 조건: ① 알고리즘 지속 학습(Continuous Learning) 또는 정기 재학습 계획이 있는 경우. ② 변경 범위가 사전에 특정되어 있는 경우. PCCP 미해당 시: 성능 변경마다 변경허가 신청.  
**근거**: MFDS AI 의료기기 허가·심사 가이드라인(2025-05-07); 디지털의료제품법 §21  
**관련KB**: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료기기_6종_가이드라인_요약.md`

---

## 2. FDA 예상 Q&A

### 2.1 공통 — Intended Use / Predicate Selection

---

**Q-FDA-01** 🔴  
**Q**: The indications for use statement does not clearly specify the patient population and anatomical region. Please revise to include specific contraindications and limitations.  
**A**: Indications for Use (Form 3881) 작성 4요소: ① Target patient population (age range, weight range if applicable), ② Anatomical site(s) (e.g., "chest, extremities, and other anatomical structures"), ③ Clinical setting (e.g., "hospital radiology departments, clinics, and mobile settings"), ④ Intended condition diagnosed (e.g., "diagnosis and monitoring of musculoskeletal disorders"). Contraindications에 임신부, 특정 체형(BMI limit) 포함 여부 검토. CDRH는 Form 3881 ≠ Device Description 혼동에 주의.  
**근거**: FDA eSTAR Section 2 (Indications for Use); 21 CFR 807.87(e)  
**관련KB**: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_01_Device_Description_IFU.md`

---

**Q-FDA-02** 🔴  
**Q**: The selected predicate device is more than 7 years old and uses different detector technology (film vs. digital). Justify why this predicate is appropriate and provides valid comparison basis.  
**A**: Predicate 선정 정당성 3가지 방어 논리: ① 사용목적(Intended Use) 동일성 증명 (동일 해부학적 부위, 동일 임상 환경). ② 기술적 차이(film→digital)가 새로운 안전성·유효성 문제를 야기하지 않음을 데이터로 증명. ③ 2014 FDA Guidance "The 510(k) Program" §V 기준: 기술 변화가 "different technological characteristics that raise different questions" 해당 여부 분석. 대안: Solid State X-ray Imaging Device Guidance(1997, 재확인 2021) 내 추천 predicate 목록 활용.  
**근거**: FDA Guidance "The 510(k) Program" (2014-07-28); FDA Guidance for Solid State X-ray Imaging Devices (2021 재확인)  
**관련KB**: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md`

---

**Q-FDA-03** 🟡  
**Q**: You have selected multiple predicates. Explain why a single predicate cannot establish substantial equivalence and how the split predicate approach is justified.  
**A**: Split predicate 전략은 허용되나 FDA scrutiny 높음. 정당화 요건: ① Predicate 1 = Intended Use 동일 근거 (동일 사용목적 디바이스), ② Predicate 2 = 기술적 특성 비교 근거 (동일 기술 구현 디바이스). 두 predicate 모두 legally marketed 510(k)-cleared 또는 Pre-Amendments device 확인. 가능하면 single predicate 사용. 3개 이상 split predicate는 De Novo 경로 재검토 권고.  
**근거**: FDA Guidance "The 510(k) Program" §V.B.2  
**관련KB**: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md`

---

### 2.2 공통 — Performance Testing

---

**Q-FDA-04** 🔴  
**Q**: The performance testing data shows variability that exceeds the acceptance criteria specified in the predicate device's labeling. Provide an explanation and additional testing data.  
**A**: 성능 변동성 대응 전략: ① Accept Criteria 재설정 근거 — 자사 기기의 의도된 사용 환경(use environment)이 predicate와 다를 수 있음. ② Lot-to-lot 변동성이 임상적으로 유의한지 통계 분석(95% CI, Equivalence Margin). ③ 추가 시험: n수 증가(최소 3개 unit 이상), 환경 조건(온도·습도) 범위 포함. ④ 성능 차이가 임상 결과에 미치는 영향 없음(Non-inferiority)을 입증.  
**근거**: FDA Guidance for Solid State X-ray Imaging Devices; FDA Statistical Guidance on Reporting Results (2016-03)  
**관련KB**: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_03_Performance_Testing_Bench_Test.md`

---

### 2.3 X-ray 특화 — 21 CFR Part 1020

---

**Q-FDA-D01** 🔴  
**Q**: The 21 CFR 1020.30 compliance has not been demonstrated for [leakage radiation / HVL / beam quality]. Provide test reports or explanation of non-applicability.  
**A**: 21 CFR 1020.30(b) Electronic Product Performance Standard 전항 준수 의무. X-ray Detector: 검출기 자체는 방사선 방출기기가 아니므로 21 CFR 1020.30 적용 면제 — 대신 관련 시스템(Source) 준수 증명 요구. Handheld Source: ① Leakage radiation ≤0.88 mGy/h at 5cm (21 CFR 1020.30(k)), ② HVL at Max kVp ≥ 2.3mm Al (21 CFR 1020.30(m)), ③ EPRC Annual Report Form FDA 2579 제출 확인.  
**근거**: 21 CFR Part 1020.30; FDA CDRH Electronic Product Radiation Control  
**관련KB**: `02_제품별_기술파일/02_Handheld_Xray_Source/Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트.md`

---

**Q-FDA-H01** 🔴  
**Q**: For a handheld X-ray device, the operator is in close proximity to the X-ray source. Provide a radiation safety analysis for the operator and evidence that ALARA principles are met.  
**A**: Operator Safety Analysis 4요소: ① Measured scatter dose at 1m from patient (ISO/ANSI phantom 사용), ② Estimated annual occupational dose based on typical exam frequency and distance (assume 30cm operator distance for handheld), ③ Comparison to NCRP Report No. 151 occupational limit (50 mSv/year), ④ ALARA measures: shielding design (backscatter shield), operator training in positioning. 측정은 실제 임상 사용 조건에서 수행 필요. NRC/FDA 동시 규제 확인.  
**근거**: 21 CFR 1020.30; NCRP Report 151 (2005); ICRP 103  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1-3_방사선방호_시험항목_매트릭스.md`

---

### 2.4 Software — IEC 62304

---

**Q-FDA-S01** 🔴  
**Q**: The software level of concern has been determined as "Minor." However, the device makes diagnostic decisions that could affect patient care. Justify the Minor classification or revise to Moderate/Major.  
**A**: FDA Level of Concern 판정 (2005 Guidance + 2019 Software Principles 기준): ① Minor = SW failure → injury 불가능. ② Moderate = SW failure → injury 가능하나 생명위협 아님. ③ Major = SW failure → 사망 또는 심각한 영상 가능. 진단용 영상 SW는 misdiagnosis 위험 → Moderate 또는 Major. 정정: Level of Concern을 Moderate로 상향하고 요구되는 문서(SRS, Hazard Analysis, V&V Plan, V&V Report) 전체 제출.  
**근거**: FDA Guidance "Guidance for the Content of Premarket Submissions for Software" (2005-05-11, 현행 적용 중); IEC 62304  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC62304_SW수명주기_산출물_매핑.md`

---

**Q-FDA-S02** 🟡  
**Q**: The SOUP (Software of Unknown Provenance) list is incomplete. Third-party libraries with known vulnerabilities (CVEs) are not addressed. Provide a complete SOUP list with CVE impact analysis.  
**A**: SOUP 리스트 완비 요소: ① 각 SOUP의 이름·버전·제조사·출처, ② 사용 목적(기능), ③ 알려진 CVE 목록 (NVD 기준 최신 조회일 명시), ④ 각 CVE의 CVSS Score 및 자사 제품 영향 평가, ⑤ 미해결 CVE의 Risk Acceptance 근거 또는 패치 일정. SBOM과 연동: CycloneDX 1.6 또는 SPDX 2.3 형식으로 제출 가능.  
**근거**: IEC 62304 §8.1.2; FDA Cybersecurity Guidance (2023-09-27); SBOM 제출 권고  
**관련KB**: `01_규제지식베이스/미국_FDA/FDA_Threat_Model_STRIDE_가이드.md`

---

### 2.5 Cybersecurity (Section 524B)

---

**Q-FDA-C01** 🔴  
**Q**: Is this device a "cyber device" under Section 524B of the FD&C Act? If so, the cybersecurity documentation requirements in the 2023 Guidance must be met. Provide: (1) SBOM, (2) Threat Model, (3) Cybersecurity Testing Evidence.  
**A**: Section 524B(c) 정의: "cyber device" = 소프트웨어를 포함하며 인터넷에 연결가능하거나 연결가능한 기기에 연결가능한 장치. GUI SW(PACS/RIS 연동, DICOM 네트워크) = Cyber Device. Handheld Source(Bluetooth/WiFi 연동 시) = Cyber Device. 3개 제출 필수: ① SBOM(CycloneDX/SPDX), ② Threat Model(STRIDE 기반, Attack Surface 포함), ③ Penetration Testing 결과 또는 SAST/DAST 결과.  
**근거**: FD&C Act §524B (추가 2022-12-29); FDA Guidance "Cybersecurity in Medical Devices" (2023-09-27 Final)  
**관련KB**: `01_규제지식베이스/미국_FDA/eSTAR_04_Cybersecurity_Section.md`

---

**Q-FDA-C02** 🟡  
**Q**: The threat model does not address the DICOM protocol vulnerabilities, which are commonly exploited in radiology systems. Provide analysis of DICOM-specific threats.  
**A**: DICOM 특화 위협 분석 (STRIDE 적용): ① Spoofing: DICOM 인증 없이 AE Title 위조 → DICOM TLS(AESGCM/RSASHA256) 적용 여부. ② Tampering: DICOM 영상 수정 가능성 → 영상 무결성 검증(Hash/Digital Signature). ③ Information Disclosure: PHI(Patient Health Information) 포함 DICOM 파일 비암호화 → DICOM PS 3.15 Security Profiles 준수. ④ DoS: 과부하 DICOM C-STORE 요청 → Rate Limiting. 각 위협에 대한 Mitigation Control과 잔여 위험 수준 제시.  
**근거**: FDA Cybersecurity Guidance §V; NEMA DICOM Security Standard PS 3.15  
**관련KB**: `01_규제지식베이스/미국_FDA/FDA_Threat_Model_STRIDE_가이드.md`

---

### 2.6 Labeling

---

**Q-FDA-L01** 🟡  
**Q**: The device labeling does not include the required radiation safety symbols and warnings under 21 CFR 801. Specifically, the prescription device statement and radiation warning are missing.  
**A**: 21 CFR 801 필수 라벨 항목 — X-ray 기기: ① Rx Only 또는 Caution statement (21 CFR 801.109), ② 방사선 경고 심볼 (황색 방사선 삼엽 심볼, 21 CFR 1020.30(j)), ③ 방사선 발생 경고문: "CAUTION: This device produces X-RAYS when energized", ④ 제조사명·모델명·Serial/Lot No., ⑤ 사용설명서(IFU) 참조 문구. 추가: UDI barcode(21 CFR Part 830) 및 eUDI 준수.  
**근거**: 21 CFR 801; 21 CFR 1020.30(j); 21 CFR Part 830  
**관련KB**: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_06_Labeling_IFU_Form3881.md`

---

## 3. MDR / EU Notified Body 예상 Q&A

### 3.1 공통 — 분류 및 GSPR

---

**Q-MDR-01** 🔴  
**Q**: The device classification under MDR Annex VIII is [Rule 10 / Rule 15]. Provide evidence that the correct rule was applied. Are there any borderline classification issues?  
**A**: 분류 근거 명시: X-ray Detector → Rule 10 (방사선 방출 기기에 사용, Class IIa 또는 IIb), Handheld Source → Rule 10 적용, 능동 의료기기로 방사선 방출 → Class IIb, GUI SW → MDR Rule 11(SaMD) 또는 Rule 10 (방사선 시스템의 일부로 사용) → Class IIa. MDCG 2021-24 분류 가이던스 참조. Borderline 여부는 MDCG 2022-5 경계선 가이던스 점검. 분류 의심 시 EU 회원국 당국에 질의서(Classification query) 제출 이력 첨부.  
**근거**: MDR 2017/745 Annex VIII; MDCG 2021-24 (Classification); MDCG 2022-5 (Borderline)  
**관련KB**: `01_규제지식베이스/유럽_CE_MDR/MDR_인허가_상세가이드.md`

---

**Q-MDR-02** 🔴  
**Q**: The GSPR checklist is incomplete. Section §10 (radiation) and §17 (electronic programmable systems) are not sufficiently addressed. Provide harmonized standard references for each GSPR item.  
**A**: GSPR 체크리스트 보완 — §10 (방사선 방호): ① IEC 60601-1-3:2008+A1+A2 인용 (누설방사선, HVL), ② EN 60601-1-3 적용 선언, ③ 선량 최소화(ALARA) 설계 근거. §17 (전자 프로그래밍 시스템, IEC 62304): ① IEC 62304:2006+A1:2015 적용, ② Safety Class A/B/C 판정 근거, ③ SW 수명주기 문서 완비 확인. 각 GSPR 항목마다 "적용 여부 + 조화 표준 번호 + 증명 방법 + 문서 위치" 4칸 형식.  
**근거**: MDR 2017/745 Annex I §10, §17; EN IEC 62304:2006+A11:2015; EN 60601-1-3:2008+A1+A2  
**관련KB**: `01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexI_GSPR_Checklist.md`

---

### 3.2 임상평가

---

**Q-MDR-03** 🔴  
**Q**: The clinical evaluation report (CER) relies on literature data from equivalent devices. However, the equivalence criteria under MDR Article 61(5) and MDCG 2020-5 have not been fully demonstrated. Specifically, the biological equivalence is not addressed.  
**A**: MDR Art.61(5) 동등성 3기준 전체 충족 필요: ① 임상적 동등성 (same intended purpose, patient population, clinical condition), ② 기술적 동등성 (same design, same materials, same technology [정성·정량 기준]), ③ **생물학적 동등성** (same materials in contact with human body, same tissue/fluid contact). X-ray 기기는 체내 접촉 없으므로 생물학적 동등성은 "non-contact device → direct biological equivalence criteria N/A" 로 처리. 단, 간접 접촉 물질(housing, grip material)은 ISO 10993-1 biocompatibility 평가 별도.  
**근거**: MDR Art.61(5); MDCG 2020-5 §3.2; ISO 10993-1  
**관련KB**: `01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/Clinical_Evaluation_MDR_동등성_충분성_기준.md`

---

**Q-MDR-04** 🟡  
**Q**: The clinical data is insufficient. The literature search strategy does not meet the requirements of MDCG 2020-1. The search results do not cover clinical performance data for the specific device or equivalent devices.  
**A**: Literature Search Strategy 보완 요건 (MDCG 2020-1 §5 기준): ① 검색 데이터베이스: PubMed, Embase, Cochrane Library 최소 3개. ② 검색식: PICO(Patient, Intervention, Comparison, Outcome) 기반 MeSH term 포함. ③ 검색 기간: 최소 10년 이내 문헌 + 최신 갱신일 명시. ④ PRISMA Flow Diagram: 검색→스크리닝→선정 단계별 수 기록. ⑤ Appraisal: Oxford Level of Evidence 기준 각 문헌 평가. X-ray 영상 시스템의 경우 IQ(Image Quality), Dose/exposure 대비 진단 정확도 데이터 필수.  
**근거**: MDCG 2020-1 "Guidance on Clinical Evaluation" §5; MDCG 2020-5  
**관련KB**: `02_제품별_기술파일/공통/공통_Clinical_Evaluation_Plan_Report_MDR_템플릿.md`

---

### 3.3 기술문서

---

**Q-MDR-05** 🔴  
**Q**: The technical documentation does not include a section on the device's design specifications (Annex II, Section 3). Provide complete design specifications including performance specifications, safety specifications, and manufacturing specifications.  
**A**: MDR Annex II §3 설계 사양 필수 요소: ① 성능 사양(Performance Spec): 해상도, 노이즈 특성(DQE), 동적 범위, 응답 특성(Lag), 수명. ② 안전 사양(Safety Spec): 방사선 누설 한계, 전기 안전 등급(Class I/II, Type BF/CF), IP 등급. ③ 제조 사양(Manufacturing Spec): 핵심 부품 BOM, 공정 파라미터, 검사 기준(AQL). 각 사양은 Design Verification 결과와 추적 가능하도록 설계 추적성 매트릭스(Design Traceability Matrix) 포함.  
**근거**: MDR 2017/745 Annex II §3; MDCG 2019-9 (Technical Documentation)  
**관련KB**: `01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexII_Technical_Documentation_Template.md`

---

**Q-MDR-06** 🟡  
**Q**: The risk management file does not demonstrate compliance with ISO 14971:2019. Specifically, the benefit-risk analysis (Section 9) and the evaluation of overall residual risk (Section 8) are not complete.  
**A**: ISO 14971:2019 §8 (전체 잔여 위험 평가) 및 §9 (Benefit-Risk Analysis) 보완: §8: ① 모든 Individual Residual Risk를 하나의 "Cumulative Residual Risk" 수준으로 통합 평가. ② "As Low As Reasonably Practicable" 판단 기준 및 근거. ③ 생산 전·후 정보(Post-Market) 피드백 연계 계획. §9: ① Medical Benefits 정량/정성 기술 (진단 정확도 향상, 방사선량 감소 등), ② Residual Risk 총계 대비 Clinical Benefit 비교, ③ "Benefits outweigh Risks" 선언 및 근거.  
**근거**: ISO 14971:2019 §8, §9; MDCG 2020-6  
**관련KB**: `04_기술문서_템플릿/Risk_Management_File_ISO14971_2019_템플릿.md`

---

### 3.4 PMS·Vigilance

---

**Q-MDR-07** 🟡  
**Q**: The Post-Market Surveillance (PMS) plan does not include specific PMCF (Post-Market Clinical Follow-up) activities. For a Class IIa/IIb device, PMCF is mandatory. Provide a PMCF plan or justify why PMCF is not required.  
**A**: MDR Art.61(11) 기준 PMCF 면제 조건: ① 충분한 임상 데이터로 "general safety and performance requirements"가 입증된 경우만 가능. 면제 근거가 충분하지 않으면 PMCF Plan 작성 필수. PMCF Plan 최소 요소 (MDCG 2020-7): ① General methods (Post-Market Registry, Survey, PMCF Study), ② Device-specific methods (IQ 측정, 임상 성능 모니터링), ③ 평가 주기(매년 or 2~3년), ④ Acceptance Criteria. 첫 CE 후 1~3년 내 PMCF Report 제출 일정 포함.  
**근거**: MDR Art.61(11); MDCG 2020-7 (PMCF Plan); MDCG 2020-8 (PMCF Report)  
**관련KB**: `04_기술문서_템플릿/PMS_Plan_MDR_Article84_템플릿.md`

---

**Q-MDR-08** 🟡  
**Q**: The vigilance system described in the PMS plan does not clearly define the criteria for "serious incident" under MDR Article 2(65). Clarify the decision process for reportable events.  
**A**: MDR Art.2(65) Serious Incident 판정 6기준 체크리스트: ① 환자·사용자·제3자에게 serious injury/illness 야기 가능성. ② 직·간접적으로 사망 야기 가능성. ③ 공중보건 위협. ④ 기기 기능 예상치 못한 결함. ⑤ 오진 가능성 (labeling·IFU 결함 포함). ⑥ 심각한 부작용이 심사 중 발생. 판정 플로우차트 및 2일/10일/15일 보고 타임라인 기준 내부 SOP 수립. EUDAMED Vigilance Module 연동 계획 포함 (2026-05-28 의무화).  
**근거**: MDR Art.2(65); MDR Art.87(1); MDCG 2023-3 (Vigilance)  
**관련KB**: `01_규제지식베이스/유럽_CE_MDR/MDR_Vigilance_Serious_Incident_판정기준.md`

---

## 4. 3지역 공통 특이 상황 Q&A

### 4.1 변경·업데이트 관련

---

**Q-CMN-01** 🔴  
**Q**: 소프트웨어 업데이트 후 새로운 허가/변경허가가 필요한지 판단 기준을 제시하시오. (3지역 공통)  
**A**: SW 변경 허가 필요 여부 — 지역별 기준:

| 변경 유형 | MFDS | FDA | MDR |
|---|---|---|---|
| 버그 수정 (성능 변화 없음) | 변경신고 | 아니오 | 중요 변경 아님 |
| 새 영상 처리 알고리즘 | 변경허가 | 새 510(k) 또는 PCCP | Significant Change → NB 재심사 |
| UI만 변경 | 변경신고 | 아니오 (기능 변화 없으면) | 보통 아님 |
| 적응증 추가 | 변경허가 | 새 510(k) | 새 CE 심사 |
| 사이버보안 패치 | 보고 또는 신고 | 아니오 (기능적 동일 시) | 경미한 경우 아님 |

판단 근거: MFDS 의료기기법 §12; FDA Software Change Policy Guidance (2017-10-25); MDCG 2020-3 (Guidance on Significant Changes).  
**근거**: MFDS 의료기기법 §12; FDA Guidance on Software Change (2017); MDCG 2020-3  
**관련KB**: `05_전문가교육/Week11_심사_QA_시뮬레이션.md`

---

**Q-CMN-02** 🟡  
**Q**: 인허가 취득 후 제조업체 변경(인수합병) 또는 제조 위탁처 변경 시 허가 변경 절차는?  
**A**: 3지역 변경 절차:
- **MFDS**: 제조사 변경 → 품목허가 이전 신청 (의료기기법 §18). 위탁 제조 추가 → 변경허가 또는 변경신고 (규모에 따라).
- **FDA**: 소유권 이전 시 510(k) holder 변경 신청 (Letter to File 또는 새 510(k) 불필요). 제조처 변경 → QSR 21 CFR 820 Site Qualification 문서 갱신, FDA Establishment Registration 신규.
- **MDR**: EU Authorised Representative 변경 → DoC 갱신, EUDAMED 갱신. NB 재심사: 변경 범위가 Type Examination에 영향 시 필요.

**근거**: 의료기기법 §18; 21 CFR 807.26; MDR Art.10(3); MDCG 2021-3  
**관련KB**: -

---

### 4.2 글로벌 동시 제출

---

**Q-CMN-03** 🟡  
**Q**: FDA 510(k) 심사 중 MFDS 기술문서에도 동일 자료를 사용하려 한다. 내용 차이에 따른 심사 불일치 위험을 어떻게 관리하는가?  
**A**: Common Core TD 전략 (글로벌 동시제출 전략 문서 참조): ① Core TD는 3지역 공통 섹션(Device Description, Performance Test, Risk Management, Software, Biocompatibility)으로 구성. ② 지역별 Add-on: MFDS → 국문 번역·한국 표준 인용. FDA → eSTAR 형식·Form 3881·Predicate 비교표. MDR → Annex II/III·GSPR 체크리스트·DoC. ③ 동일 데이터를 지역별 형식으로 재포맷 시 데이터 내용 변경 금지 — 특히 성능 수치, 시험 방법론. ④ 각 제출 패키지에 "3지역 공통 기반 버전 X.X 기반" 명기하여 버전 일관성 추적.  
**근거**: IMDRF N1(2010) STED; GHTF SG1/N011:2008  
**관련KB**: `01_규제지식베이스/글로벌_동시제출_전략_MDSAP.md`

---

## 5. 제품별 특화 심화 Q&A

### 5.1 X-ray Detector 전용

---

**Q-DET-01** 🔴  
**Q**: 동적 방사선 촬영(Fluoroscopy) 기능이 포함된 Detector의 경우, 정적 촬영(Radiography)과 다른 추가 시험 항목을 충족하였는가?  
**A**: IEC 60601-2-54:2022 (X-ray 촬영·투시) 적용 추가 항목: ① Lag Measurement (연속 조사 후 이미지 지속 효과, <3% Lag at 1sec 이후), ② Frame Rate 검증 (최소 30fps for real-time fluoroscopy), ③ Automatic Exposure Control(AEC) 성능 검증 (IEC 60601-2-54 §201.12), ④ Fluoroscopy Dose Rate 측정 (환자 입사면 선량률 ≤100mGy/min for general, FDA 21 CFR 1020.32 기준). FDA의 경우 Fluoroscopy 기능이 있으면 별도 Fluoroscopic Device Performance Standards 적용.  
**근거**: IEC 60601-2-54:2022; 21 CFR 1020.32  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1_Ed3.2_시험항목_매트릭스.md`

---

**Q-DET-02** 🟡  
**Q**: Wireless (WiFi/Bluetooth) 기능을 가진 Detector의 경우 사이버보안 및 EMC 추가 요구사항을 어떻게 충족하였는가?  
**A**: 무선 통신 추가 요구사항:
- **사이버보안**: DICOM over WiFi 암호화(TLS 1.2 이상), 인증(WPA3), Section 524B(FDA)/MDCG 2019-16 Rev.1(MDR)/MFDS 사이버보안 가이드라인(2025.01) 전 요구사항 적용.
- **EMC**: IEC 60601-1-2:2014+A1:2020 — 의도적 방사 기기(Intentional Emitter) 추가 시험 필요. FCC Part 15(미국), CE Radio Equipment Directive(RED, EU 2014/53/EU) 별도 인증 필요.
- **간섭 평가**: 다른 의료기기(심장 모니터, 인공호흡기 등) 간섭 가능성 평가 포함.

**근거**: IEC 60601-1-2:2014+A1:2020; FCC Part 15; EU RED 2014/53/EU; FDA Cybersecurity 2023  
**관련KB**: `01_규제지식베이스/국제표준_IEC_ISO/IEC60601-1_Ed3.2_시험항목_매트릭스.md`

---

### 5.2 Handheld X-ray Source 전용

---

**Q-HH-01** 🔴  
**Q**: Handheld 형태의 X-ray 발생 장치는 조작자가 기기를 직접 쥐고 조사한다. 이에 대한 Human Factors Engineering (사용적합성) 평가를 제출하시오.  
**A**: IEC 62366-1:2015+AMD1:2020 기반 사용적합성 평가 — Handheld 특화 항목: ① Use Environment Analysis: 응급실·요양원·이동 진료 등 다양한 사용 환경 정의. ② Critical Use Error Analysis: 잘못된 방향으로 조사, 안전장치 미작동, 충전 미확인 조작. ③ Summative Evaluation (최종 사용성 시험): 실제 사용자(방사선사, 의사, 응급구조사)를 대상으로 3가지 이상 Critical Task 평가. ④ 방아쇠(Trigger) 안전장치 설계 평가 (의도치 않은 X-ray 발생 방지).  
**근거**: IEC 62366-1:2015+AMD1:2020; FDA Human Factors Guidance (2016-02)  
**관련KB**: `04_기술문서_템플릿/Usability_Engineering_File_IEC62366_템플릿.md`

---

**Q-HH-02** 🟡  
**Q**: 배터리 용량 및 촬영 가능 횟수(Number of exposures per charge)에 대한 성능 검증 자료를 제출하시오.  
**A**: 배터리 성능 검증 방법: ① 완전 충전 후 연속 최대 출력(kVp×mAs) 조사 횟수 측정 (표준 임상 조건 기준). ② 배터리 잔량 표시 정확도 검증 (0%·25%·50%·75%·100% 각 ±5% 이내). ③ 저온(-10°C) 환경에서의 용량 감소율 평가. ④ 충전 사이클 수명(수명 기간 동안 용량 80% 이상 유지) 검증 계획. ⑤ 비상 시 배터리 경고 임계값 및 자동 차단 기능.  
**근거**: IEC 62133-2:2017; IEC 60601-1 Cl.3.91 (Rated Capacity)  
**관련KB**: -

---

### 5.3 촬영실 GUI SW 전용

---

**Q-GUI-01** 🔴  
**Q**: GUI SW가 PACS, RIS, EMR과 인터페이스하는 경우 상호운용성(Interoperability) 검증 자료가 없다. 인터페이스 표준 준수 및 상호운용성 시험 결과를 제출하시오.  
**A**: 상호운용성 검증 3계층: ① **표준 적합성**: DICOM Conformance Statement (PS 3.2 기준 — Supported SOP Classes, Transfer Syntaxes, Security Profiles 명세). HL7 FHIR R4 또는 HL7 v2.x (RIS 연동) 적합성 선언. ② **연동 시험**: 주요 PACS 벤더(예: 3개 이상)와의 실제 연동 시험 결과 (IHE Connectathon 참가 결과 포함 가능). ③ **데이터 무결성**: 영상 전송 전·후 비교 (픽셀 값 동일성, 메타데이터 보존 확인).  
**근거**: DICOM PS 3.2; HL7 FHIR R4; IHE Radiology Technical Framework  
**관련KB**: `02_제품별_기술파일/03_촬영실_GUI_SW/촬영실_GUI_SW_IEC62304_문서세트.md`

---

**Q-GUI-02** 🟡  
**Q**: 영상 진단 SW에서 표시되는 영상의 Calibration 및 Accuracy 검증 방법을 설명하시오. 특히 모니터 교정(Display Calibration) 기준은?  
**A**: 영상 표시 정확도 검증: ① **모니터 교정**: DICOM Part 14 (GSDF, Grayscale Standard Display Function) 준수. 교정 장비: Luminance Meter (최소 연 1회 교정 요구). AAPM Task Group 18 기준: 최소 휘도(Lmin) ≤1 cd/m², 최대(Lmax) ≥250 cd/m² (진단용). ② **픽셀 크기 교정**: 측정 도구 정확도 검증 (e.g., 거리 측정 기능 ±2mm 이내). ③ **QA 프로그램**: ACR Digital Radiography QC Manual 또는 EUREF QC Guidelines 기반 일일·주간·월간 QA 체크리스트 제공.  
**근거**: DICOM PS 3.14 (GSDF); AAPM TG-18; EUREF QC Guidelines  
**관련KB**: -

---

## 6. 빠른 참조 매트릭스 — 제품 × 지역 × 심각도

| 제품 | MFDS 고위험 질문 | FDA 고위험 질문 | MDR 고위험 질문 |
|---|---|---|---|
| **X-ray Detector** | DQE 측정 조건 일치(Q-MFDS-D01) | Predicate 비교 (Q-FDA-02), 21 CFR 1020.30 N/A 근거(Q-FDA-D01) | GSPR §10 방사선(Q-MDR-02), CER 동등성(Q-MDR-03) |
| **Handheld Source** | 조작자 피폭 평가(Q-MFDS-H01) | Operator ALARA(Q-FDA-H01), Cyber Device 판정(Q-FDA-C01) | 분류 Rule 10(Q-MDR-01), Human Factors(Q-HH-01) |
| **GUI SW** | SW 버전 일치(Q-MFDS-S01), 사이버보안 RA-21(Q-MFDS-08) | Level of Concern 판정(Q-FDA-S01), SOUP/CVE(Q-FDA-S02) | GSPR §17(Q-MDR-02), PMCF 필요성(Q-MDR-07) |

---

## 7. 관련 문서 링크 (내부 KB)

| 카테고리 | 주요 문서 |
|---|---|
| 심사 전략 | [FDA AI 대응](미국_FDA/FDA_AI_Additional_Information_대응_전략.md) · [MFDS 보완 대응](국내_MFDS/MFDS_보완자료_대응전략.md) · [NB Deficiency 대응](유럽_CE_MDR/NB_심사자료/) |
| 공통 지적사항 | [3지역 빈번 지적사항 Top20](3지역_공통_빈번지적사항_Top20.md) |
| 심사 시뮬레이션 | [Week11 Q&A 시뮬레이션](../05_전문가교육/Week11_심사_QA_시뮬레이션.md) |
| 실제 이력 | `../06_심사_QA이력/` — 실제 수신 Q&A 지속 축적 |

---

*본 문서는 자동보강 회차마다 실제 심사 Q&A 이력 반영 및 최신 가이던스 개정 시 갱신됨.*
