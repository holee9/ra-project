> 최종 갱신: 2026-06-01 (자동보강 #79)
> 근거: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices | https://www.fda.gov/media/80195/download | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_5_guidance_clinical_evaluation_equivalence_en_0.pdf | https://www.mfds.go.kr/brd/m_74/view.do?seq=44957

# Week 11: 심사 Q&A 시뮬레이션 — 3지역 실전 대응 트레이닝

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 11/12)
> **소요 시간**: 이론 1시간 + 롤플레이 시뮬레이션 3시간 + 피드백 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. MFDS 기술문서 심사 및 GMP 심사에서 빈번히 등장하는 질문 유형 10가지와 모범 답변 구조를 설명한다.
2. FDA CDRH 510(k) 심사관이 Additional Information(AI) 요청 시 사용하는 전형적인 질문 패턴에 대해 간결·팩트 기반 응답을 작성한다.
3. MDR Notified Body Deficiency Letter의 3대 유형(문서 부재·데이터 불충분·해석 차이)을 구분하고, 각 유형에 맞는 응답 구조로 회신서를 작성한다.
4. X-ray 3개 제품(Detector·Handheld Source·GUI SW) 특화 심사 질문에 대해 기술적 근거와 함께 답변한다.
5. "심사 함정 질문(Trick Question)"을 식별하고, 과잉 공개·추측 답변·방어적 태도 등 금기 답변 패턴을 회피한다.

---

## 2. 심사 Q&A 기본 원칙 (모든 지역 공통)

| 원칙 | 설명 | 위반 예시 |
|---|---|---|
| **팩트 기반** | 데이터·문서·표준 인용 | "저희 제품은 안전합니다" (근거 없는 주장) |
| **간결성** | 질문에 직접 답변, 불필요한 배경 설명 금지 | 2페이지 답변으로 핵심 묻힘 |
| **범위 제한** | 질문 범위 내에서만 답변, 불필요한 추가 정보 금지 | 묻지 않은 결함을 자진 공개 |
| **불확실성 처리** | 모르면 "확인 후 답변" 명시, 추측 금지 | "아마도 ~일 것 같습니다" |
| **일관성** | 제출 문서와 구두 답변 일치 | 문서와 다른 구두 설명 |
| **시간 관리** | 답변 기한(FDA 90일/NB 응답 기한) 엄수 | 기한 초과 후 답변 |

---

## 3. MFDS 심사 Q&A 유형

### 3.1 기술문서(사전심사) 빈번 질문

#### Q1. 사용목적(Intended Purpose)이 모호함

> "제출하신 기술문서에 기재된 사용목적이 구체적이지 않습니다. 특히 진단 대상 해부학적 부위와 사용 환경(의료기관 등급 등)을 명확히 기재하여 주시기 바랍니다."

**모범 답변 구조:**
```
1. 기재 근거: ISO 15223-1 §3.7 및 의료기기법 시행규칙 별표2 §1 준수
2. 수정 내용: "성인 및 소아 환자의 흉부·사지 골격 진단용 디지털 X선 영상 획득
   (의원·병원·종합병원 방사선실 사용, 전문의 처방 하에 방사선사 운용)"
3. 근거 문서: DHF §1.2 Intended Use Statement (Rev.C, YYYY-MM-DD)
```

#### Q2. 성능 시험 성적서 시험 기관 인정 여부

> "제출된 성능 시험 성적서의 시험기관이 KOLAS 인정 기관인지 확인이 필요합니다."

**모범 답변 구조:**
```
- 시험기관: [기관명], KOLAS 인정번호: [번호], 인정 범위: IEC 60601-1 등
- 시험 항목 중 KOLAS 비인정 항목(예: 특수 X선 측정): 사내 시험 + 데이터 검증
  방법 별도 기재
- CoC (Certificate of Conformity) 및 KOLAS 인정서 사본 첨부
```

#### Q3. 소프트웨어 밸리데이션 범위

> "촬영실 GUI SW의 소프트웨어 검증·유효성확인(V&V) 범위가 불명확합니다. IEC 62304 기준으로 소프트웨어 안전성 분류 및 이에 따른 V&V 활동 목록을 제출하여 주시기 바랍니다."

**모범 답변 구조:**
```
1. Safety Class: Class C (진단 영상 처리 기능 포함, 오동작 시 중증 손상 가능)
2. V&V 산출물 목록 (IEC 62304 §5.6~5.9):
   - Software Verification Plan (SVP): [문서번호]
   - Test Protocol (Unit/Integration/System): [문서번호]
   - Test Report: [문서번호]
   - Known Anomaly List (KAL): [문서번호]
3. 변경 이력 및 re-validation 기록: [문서번호]
```

#### Q4. 위험관리파일 잔여위험 수용 근거

> "ISO 14971 기준 잔여위험 수용 기준이 기재되어 있으나, 수용 근거(Benefit-Risk 분석)가 부족합니다."

**모범 답변 구조:**
```
1. 잔여위험 판단 기준: ISO 14971:2019 §9 Annex C 기반 ALARP 원칙 적용
2. Benefit-Risk 분석: 진단적 이득(조기 발견율 향상, WHO DRL 이하 선량)
   vs. 잔여위험(방사선 노출 최소화 조치 후 ALARP 수준)
3. 비교 데이터: ICRP Publication 103 대비 자사 선량 측정값 [표 첨부]
4. 수용 결론: 의료 편익이 잔여위험을 명백히 상회함 → 수용
```

---

### 3.2 GMP 심사 빈번 질문

#### Q5. 설계 변경 관리 이력

> "2024년 하드웨어 설계 변경이 이루어졌는데, 해당 변경에 대한 설계 검토 및 검증 기록을 제시하여 주시기 바랍니다."

**모범 답변:**
- DCN(Design Change Notice) [번호] 제시
- 변경 영향 평가(Change Impact Assessment): 안전성·성능·규제 영향 항목별 평가
- 설계 검토 회의록([날짜]) + 서명 목록
- 변경 후 성능 시험 결과([성적서 번호])

---

## 4. FDA CDRH 심사 Q&A 유형

### 4.1 510(k) AI(Additional Information) 전형 패턴

#### Q6. Substantial Equivalence — 기술적 차이 안전성 문제

> "Your device uses a CMOS-based flat panel detector while the predicate uses an a-Si TFT flat panel detector. Please provide a detailed comparison demonstrating that this technological difference does not raise different questions of safety and effectiveness."

**모범 답변 구조 (SE 5단계):**
```
1. Technological difference confirmed: CMOS vs. a-Si TFT
2. Performance comparison (non-clinical data):
   - DQE (IEC 62220-1-1): 자사 55% @ 1 lp/mm vs. predicate 50% @ 1 lp/mm
   - MTF50: 자사 2.8 lp/mm vs. predicate 2.5 lp/mm
   - NPS (noise): 동등 또는 우수
3. Safety data: Dose (DAP) = predicate ±10% 이내 (IEC 62220-1-3 측정)
4. Conclusion: Technological difference does not raise different questions
   of safety and effectiveness; performance equivalent or superior
5. References: [Test report numbers], [IEC standards], [Published literature]
```

#### Q7. 소프트웨어 문서 추가 요청 (Basic vs. Enhanced Level)

> "Please provide the Software Description Document and all supporting IEC 62304 lifecycle documentation to determine whether the Basic or Enhanced documentation level applies."

**모범 답변 체계:**
```
Level 판정 근거:
- Minor: 기기에 심각한 손상 위험 없음 → Basic (Class A/B)
- Major: 진단 오류로 부적절한 치료 가능 → Enhanced (Class B/C 해당)

촬영실 GUI SW → Major Concern 수준 → Enhanced Documentation 제출:
1. Software Description Document (SDD)
2. Risk Management File (RM-SW)
3. Software Development Plan (SDP)
4. Software V&V Plan + Report
5. Cybersecurity documentation (Section 524B 해당 시)
6. Known Anomaly List
```

#### Q8. 방사선 선량 클레임

> "Your submission claims that the device achieves 30% dose reduction compared to the predicate. Please provide a study design and supporting data for this claim."

**모범 답변 원칙:**
```
⚠️ 함정 질문 유형: 정량적 선량 클레임은 FDA가 강하게 요구하는 임상 증명 항목

올바른 대응:
1. 클레임 범위 축소: "30% 감소" → "동등 이미지 품질에서 선량 최적화 가능"
2. 근거 방식: Likert 스케일이 아닌 predefined endpoint + 통계 분석
3. 연구 설계: FDA Digital Imaging Guidance 준수 (2연구 이상, 독립 방사선의 blinded review)
또는 클레임 삭제 후 IFU 수정
```

---

### 4.2 FDA 483 대응 Q&A

#### Q9. CAPA 효과성 검증 미흡 (전형적 483 Observation)

> Observation: "Procedures for corrective and preventive action do not ensure that corrective and preventive actions are verified or validated to ensure that such actions are effective."

**15-working-day 회신 구조:**
```
1. Acknowledgment: We acknowledge this observation.
2. Root Cause: CAPA SOP §5.3에 효과성 검증 시점이 "완료 후 6개월"으로만 기재됨.
   정량적 기준(재발률 ≤ X%) 및 검증 방법 미명시.
3. Immediate Action: CAPA-2026-031 등 기존 열린 CAPA의 효과성 검증 계획 수립 착수
4. Corrective Action: SOP-CAPA Rev.D 개정 — §5.3에 효과성 검증 기준(정량 지표) 추가
5. Target Completion: 2026-07-15
6. Responsible Person: [이름·직책]
```

---

## 5. MDR NB 심사 Q&A 유형

### 5.1 Technical Documentation Deficiency 유형

#### Q10. CER 동등기기 접근권 (가장 빈번)

> Deficiency: "The Technical Documentation does not include evidence of access to the technical documentation of the equivalent device [Device X, Model Y]. Please provide the agreement with [Manufacturer Z] granting access to the technical documentation or update the CER with an alternative approach."

**90일 이내 회신 구조:**
```
Option A (권고): 
- [Manufacturer Z]와 Technical Data Access Agreement(TDAA) 체결
- TDAA 계약서 + 동등기기 기술문서 핵심 섹션 발췌 제출

Option B (대안):
- 동등기기를 그룹 계열사 기기로 교체 (계열사 기기 기술문서 자유 접근)
- CER §3 동등성 분석 섹션 갱신

Option C (완전 대안):
- 동등기기 없이 자사 임상 데이터 + 문헌만으로 충분성 입증
- MDCG 2020-6 §2 "Legacy Device" 경로 적용 (충분성 입증 상향 요건)
```

#### Q11. GSPR Annex I 조화표준 매핑 불완전

> Deficiency: "The General Safety and Performance Requirements (Annex I) checklist does not adequately address §17.2 (Information Security) and §18.8 (Ionizing radiation protection for X-ray equipment). Please update the GSPR checklist with applicable harmonized standards and compliance evidence."

**모범 답변:**
```
§17.2 (Information Security):
- 적용 표준: IEC 81001-5-1:2021 (조화표준 발효 확인 필요 [검증 필요])
- 준수 증빙: IEC 81001-5-1 보안 활동 매핑 보고서 [문서번호]

§18.8 (X-ray 이온화방사선 방호):
- 적용 표준: IEC 60601-1-3:2008+A1+A2, IEC 60601-2-28:2017, IEC 60601-2-54:2022
- 준수 증빙: 시험 성적서 [번호], 방사선 방호 계산서 [번호]
```

---

### 5.2 QMS Audit Deficiency 유형

#### Q12. PMCF Plan 미실행

> Non-conformity: "The Post-Market Clinical Follow-up (PMCF) Plan dated [date] has not been executed. No PMCF activity data has been collected since CE certification. This is a major non-conformity per MDR Annex XIV Part B."

**대응 전략:**
```
1. 즉각 인정: Major NC 인정, 원인 분석 착수
2. Root Cause: PMCF 담당자 공석 + 활동 일정 미수립
3. 즉각 조치:
   a) PMCF 담당자 임명 (이름·날짜)
   b) PMCF Survey 프로토콜 작성 착수
   c) 기존 PMS 데이터(불만·CS)에서 임상 관련 데이터 소급 추출
4. 수정 계획:
   - PMCF Survey 프로토콜 완성: 2026-07-31
   - Survey 실시 착수: 2026-08-31
   - 중간 결과 NB 제출: 2026-12-31
5. 예방 조치: 연간 PMCF 실행 검토를 Management Review 의제에 추가
```

---

## 6. X-ray 3제품 특화 Q&A

### 6.1 X-ray Detector 특화 질문 모음

| 질문 | 핵심 답변 포인트 |
|---|---|
| "DQE 측정값이 predicate보다 높은데, 이것이 진단 이미지 품질 향상을 임상적으로 의미하는가?" | DQE는 물리적 성능 지표. 임상적 의미는 방사선의 이미지 품질 평가(reader study)로 입증. "DQE가 높으면 동등 화질에서 선량을 낮출 수 있음" — 선량 클레임은 별도 연구 필요. |
| "Detector의 fill factor와 pixel pitch가 predicate와 다를 경우 해상도에 영향은?" | MTF(Modulation Transfer Function) 및 NPS 데이터로 실측 비교. 픽셀 피치 차이 → IEC 62220-1-1 프로토콜 준수 DQE 측정값으로 입증. |
| "Cesium Iodide(CsI) 섬광체 대신 Gadolinium Oxysulfide(GOS) 사용 시 변경 허가 필요한가?" | 재료 변경 → 기술적 특성 변화 → FDA: 새 510(k) 필요 가능성 (SE 재평가). MDR: Design Change 평가 → NB 통보 또는 재심사. MFDS: 기술문서 변경 심사. |

### 6.2 Handheld X-ray Source 특화 질문 모음

| 질문 | 핵심 답변 포인트 |
|---|---|
| "휴대형 특성상 방사선 산란 차폐가 충분하지 않을 수 있다. IEC 60601-1-3 §6.2 누설방사선 시험 결과를 제시하라." | 시험 성적서 번호·기관·날짜 제시. 누설방사선 < 1 mGy/h @1m (IEC 60601-1-3 §6.2.1). FDA 기준: < 0.88 mGy/h (21 CFR 1020.30 요건) — FDA·IEC 차이값 명시. |
| "배터리 구동 시 전압 변동에 따른 방사선 출력 안정성(reproducibility)은?" | IEC 60601-1 §38.4 재현성 시험: 연속 30회 노출, CV ≤ ±10% (자사 결과: CV ±X%). 방전 시 인터록 기능(배터리 잔량 ≤ Y% → 자동 출력 차단) 설명. |
| "핸드헬드 형태의 제품이 EU에서 Class IIb로 분류되는 근거는?" | MDR Annex VIII Rule 10: 방사선 발생 기기 → Class IIb. Handheld X-ray Source는 전리방사선 발생 → Rule 10 §§3.3 해당. |

### 6.3 촬영실 GUI SW 특화 질문 모음

| 질문 | 핵심 답변 포인트 |
|---|---|
| "소프트웨어가 PACS/RIS와 연동될 경우 인터페이스 검증은 어떻게 수행했는가?" | IEC 62304 §8.1 소프트웨어 통합 시험. DICOM 인터페이스: DICOM Conformance Statement 제출. HL7 연동: 인터페이스 매핑 문서 + 통합 시험 보고서. |
| "AI 기반 노출 제어 알고리즘이 포함된 경우 FDA PCCP 제출이 필요한가?" | PCCP 의무: AI/ML 기반 SaMD로서 Predetermined Change를 허가 없이 구현할 경우. 해당 여부 판단 기준: 학습 데이터·알고리즘 파라미터 자동 업데이트 여부. 해당 시: PCCP(predetermined change control plan) 포함 510(k)/De Novo 제출. |
| "사이버보안 취약점 패치 시 새 510(k)가 필요한가?" | FDA Guidance(2022): 보안 패치는 일반적으로 새 510(k) 불필요. 단, 기기 의도된 사용·성능에 영향을 미치는 변경은 510(k) 필요. 판단 기준: Change Assessment Tool(CAT) 활용. |

---

## 7. 심사 금기 답변 패턴 (Anti-Patterns)

| 금기 유형 | 예시 | 올바른 대안 |
|---|---|---|
| **과잉 공개** | "사실 이 부분은 미완성이고..." | 질문 범위만 답변, 미완성 부분은 자진 공개 금지 |
| **추측 답변** | "아마도 IEC 표준을 따른 것 같습니다" | "IEC 62220-1-1:2015 §4.2에 따라 측정했습니다" (문서 인용) |
| **방어적/공격적 태도** | "이미 제출한 자료에 다 있는데 왜 다시 묻습니까?" | "추가 명확화를 요청해 주셔서 감사합니다. 다음과 같이 보완합니다." |
| **범위 초과** | 1개 항목 지적 → 다른 3개 항목도 자발적 수정 제안 | 지적된 항목만 대응. 범위 확장은 후속 대응 시 검토. |
| **불일치 답변** | 문서에는 A라고 쓰여 있는데 구두로 B라고 설명 | 구두 설명 전 제출 문서 재확인. 불일치 발견 시 즉시 문서 수정 후 제출. |
| **과도한 약속** | "다음 주 안에 모든 시험 데이터를 제출하겠습니다" | 현실적 일정 산정 후 제시. 초과 약속 후 미이행은 신뢰도 치명적 손상. |

---

## 8. 실전 시뮬레이션 세트

### 시뮬레이션 A: FDA 510(k) Additional Information (60분)

**시나리오**: X-ray Detector 510(k) 심사 중 FDA로부터 아래 AI Request를 수령했다.

> "1. Please provide additional data to support substantial equivalence for the technological difference between CMOS-based and a-Si TFT-based detection technologies.
> 2. Please provide full IEC 62304 software documentation including Software V&V Plan and Test Reports for the image processing software.
> 3. Your submission claims '20% faster image acquisition.' Please provide supporting data for this performance claim."

**과제**: 항목 1, 2, 3 각각에 대한 응답 초안을 작성하라 (각 1~2페이지).

**채점 기준**:
- 1번: SE 5단계 구조 준수, 성능 비교 데이터 포함 (30점)
- 2번: IEC 62304 Safety Class 판정 + 문서 목록 (30점)
- 3번: 클레임 입증 방법 OR 클레임 수정 전략 (20점)
- 전체 답변 팩트 기반·간결성 (20점)

---

### 시뮬레이션 B: MDR NB Deficiency Letter 대응 (60분)

**시나리오**: Handheld X-ray Source의 MDR CE 인증 심사에서 NB로부터 아래 Deficiency Letter를 수령했다.

> "1. (MAJOR) The Clinical Evaluation Report does not demonstrate equivalent device technical documentation access as required by MDCG 2020-5. Please provide the Technical Data Access Agreement with [Manufacturer X] or revise the clinical strategy.
> 2. (MINOR) The GSPR checklist §18.8 references IEC 60601-1-3:2008+A1:2012 but does not include A2:2021. Please confirm current standard status and update the checklist.
> 3. (OBSERVATION) The PMCF Plan (Section 4, data collection timeline) does not include specific milestones. Consider adding quarterly review milestones."

**과제**: 3개 항목 각각에 대한 NB 회신 초안 작성 (항목별 구분, 총 2페이지).

**채점 기준**:
- 1번 MAJOR: 3가지 Option 제시 + 선택 전략 (30점)
- 2번 MINOR: 표준 개정 이력 확인 + GSPR 체크리스트 수정 방향 (25점)
- 3번 OBSERVATION: 마일스톤 수정 계획 (15점)
- 전체 회신 형식·전문성 (30점)

---

### 시뮬레이션 C: MFDS 기술문서 보완 요청 대응 (30분)

**시나리오**: 촬영실 GUI SW 의료기기 허가 신청 후 MFDS로부터 보완 요청 공문을 수령했다.

> "1. 제출하신 소프트웨어 검증·유효성확인 보고서에서 안전성 분류(IEC 62304) 근거가 불명확합니다. Class B 또는 Class C 분류 기준과 적용 근거를 구체적으로 제시하여 주시기 바랍니다.
> 2. 사이버보안 위험관리보고서가 제출되지 않았습니다. MFDS 사이버보안 가이드라인(2025.01) 기준에 따른 사이버보안 위험관리보고서를 제출하여 주시기 바랍니다."

**과제**: 항목별 보완 자료 목차 + 핵심 내용 개요 작성 (1페이지).

---

## 9. 평가 기준

| 평가 항목 | 배점 | 세부 기준 |
|---|---|---|
| 시뮬레이션 A (FDA AI 대응) | 30점 | SE 입증 구조·문서 인용·클레임 전략 |
| 시뮬레이션 B (MDR NB 대응) | 30점 | MAJOR/MINOR 구분·Option 제시·회신 형식 |
| 시뮬레이션 C (MFDS 보완 대응) | 20점 | IEC 62304 분류 근거·사이버보안 보고서 목차 |
| 금기 패턴 회피 | 10점 | 추측·과잉공개·불일치 없음 |
| 전체 답변 품질 | 10점 | 간결성·팩트 기반·기한 실현 가능성 |

> **합격 기준**: 70점 이상. 시뮬레이션 B MAJOR 항목 최소 20점 이상.

---

## 10. 참고 문서 (KB 내)

- [3지역_공통_빈번지적사항_Top20](../01_규제지식베이스/3지역_공통_빈번지적사항_Top20.md)
- [FDA_AI_Additional_Information_대응_전략](../01_규제지식베이스/미국_FDA/FDA_AI_Additional_Information_대응_전략.md)
- [MFDS_보완자료_대응_전략](../01_규제지식베이스/국내_MFDS/MFDS_보완자료_대응_전략.md)
- [NB_Deficiency_Letter_대응_전략](../01_규제지식베이스/유럽_CE_MDR/NB_심사자료/) — [검증 필요: 해당 파일 경로 확인]
- [Clinical_Evaluation_MDR_동등성_충분성_기준](../01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/Clinical_Evaluation_MDR_동등성_충분성_기준.md)
- [eSTAR_02_Substantial_Equivalence](../01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md)
- [Week10_QMS_심사_대응](Week10_QMS_심사_대응.md)
