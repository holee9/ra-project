> 최종 갱신: 2026-05-19 (자동보강 #53)
> 근거: https://www.fda.gov/medical-devices/premarket-submissions-selecting-and-preparing-correct-submission/premarket-notification-510k | https://www.fda.gov/medical-devices/premarket-submissions-selecting-and-preparing-correct-submission/de-novo-classification-request | https://www.fda.gov/medical-devices/premarket-approval-pma/pma-clinical-studies | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices | https://www.fda.gov/media/171837/download

# FDA 임상데이터 필요 판단 기준: 510(k) vs De Novo vs PMA

## 1. 경로 선택 Decision Tree

```
신규 제품 FDA 시장 진입
│
├─ 법적 동등 predicate 존재?
│   ├─ YES → 510(k) 경로
│   │          └─ SE 입증 → 임상데이터 필요 여부 판단 (§3 참조)
│   └─ NO  → De Novo 또는 PMA
│
└─ De Novo vs PMA 판단
    ├─ Class I/II 적합(일반통제·특별통제로 안전성·유효성 보증 가능)?
    │   └─ YES → De Novo (임상데이터 "if applicable")
    └─ Class III (일반통제·특별통제 불충분)?
        └─ PMA (임상데이터 필수)
```

> 자사 3개 X-ray 제품: X-ray Detector(21 CFR 892.1750 Class II) · Handheld X-ray Source(21 CFR 892.1680 Class II) · GUI SW(21 CFR 892.2050 Class II) → 모두 510(k) 경로. PMA·De Novo는 예외적 상황에서만 해당.

---

## 2. 경로별 규제 근거 요약

| 항목 | 510(k) | De Novo | PMA |
|---|---|---|---|
| 법적 근거 | FD&C Act §510(k), 21 CFR 807 | FD&C Act §513(f)(2), 21 CFR 860 | FD&C Act §515, 21 CFR 814 |
| 대상 등급 | Class I·II (원칙), 일부 III | Class I·II (신규 기기) | Class III |
| Predicate 필요 | 필수 | 불필요 | 불필요 |
| 임상데이터 | 조건부 (§3 참조) | "if applicable" | 필수 |
| FDA 심사 기간 | 90일 (목표) | 150 review days | 180일 (목표) |
| 결과 | "Cleared" (SE 결정) | Grant (신규 분류 수립) | "Approved" |
| eSTAR 의무 | 2023-10-01~  | 2025-10-01~ | 해당 없음 |
| User Fee (FY2025) | 약 $22,171 | 약 $46,875 | 약 $438,330 |

---

## 3. 510(k) — 임상데이터 필요 판단 기준

### 3-A. 원칙: 임상데이터 불필요가 기본

510(k)의 SE 입증은 **비임상 데이터(벤치, 성능시험, 소프트웨어 검증 등)만으로 가능**한 경우가 대부분. 이를 "Performance Data"라 하며 다음을 포함:

- Engineering / bench testing (재료, 전기적 특성, EMC)
- Design verification & validation
- Human factors / usability testing
- Animal studies (필요 시)
- Software validation (IEC 62304)

### 3-B. 임상데이터가 필요한 4가지 조건

FDA 가이던스(Draft: "Recommendations for the Use of Clinical Data in 510(k) Submissions")에 따라 다음 4개 조건 중 하나 이상 해당 시 임상데이터 요구:

| # | 조건 | 설명 | X-ray 제품 적용 예시 |
|---|---|---|---|
| ① | **사용목적(Indications for Use) 차이** | Predicate와 다른 환자군·적응증·사용 환경 | Detector: 소아 전용 또는 fluoroscopy 추가 indication |
| ② | **기술적 특성 차이 → 새로운 S&E 문제** | 다른 기술로 새로운 안전성·유효성 질문 제기 | Handheld Source: 새로운 방사선 발생 메커니즘, 신소재 사용 |
| ③ | **비임상 시험으로 SE 판단 불가** | 벤치 데이터만으로는 SE 입증 불충분 | GUI SW: AI-assisted 진단 기능 추가 시 |
| ④ | **Predicate의 새로운·증가된 위험** | Predicate 사용 이후 새로운 안전 우려 확인 | 예: Predicate에 방사선 과다노출 사고 이력 |

### 3-C. X-ray 제품별 510(k) 임상데이터 필요 여부

#### X-ray Detector (Flat Panel)
- **규제 분류**: 21 CFR 892.1750 (Preamplified detector for medical use), Class II
- **FDA 전용 가이던스**: "Guidance for the Submission of 510(k)s for Solid State X-ray Imaging Devices"
- **임상데이터 통상 불필요**: DQE, MTF, NPS, patient entrance dose, lag·ghost 등 성능 파라미터를 **벤치 시험**(IEC 62220-1-1)으로 입증
- **임상데이터 필요 조건**: 신규 indication(예: 유방촬영 추가), AI 진단 보조 기능 탑재, 기존 predicate 대비 방사선량 유의미한 증가 등

#### Handheld X-ray Source (소형 X-ray Source)
- **규제 분류**: 21 CFR 892.1680 (X-ray system, diagnostic), Class II
- **방사선 성능 기준**: 21 CFR 1020.30 적합성이 선행 조건 (Form FDA 2579 등록)
- **임상데이터 통상 불필요**: 누설방사선·HVL·콜리메이션·선량 측정 데이터를 **벤치 시험**(IEC 60601-1-3, IEC 60601-2-28)으로 입증
- **임상데이터 필요 조건**: 기존 wall-mounted 방식 대비 Handheld 특유의 조작 오류 가능성 → Human Factors 데이터(UEF) + 임상 관찰 연구가 요청될 수 있음

#### 촬영실 GUI SW (Medical Imaging Software / SaMD)
- **규제 분류**: 21 CFR 892.2050 (Picture archiving and communications system), Class II; SaMD인 경우 별도 분류 확인 필요
- **임상데이터 필요 가능성 높음**: 다음 기능 탑재 시 임상 성능 데이터 요구
  - AI/ML 기반 진단 보조 (병변 검출, 분류)
  - 방사선사·의사의 임상 결정에 영향을 주는 기능
  - CAD(Computer-Aided Detection/Diagnosis) 기능
- **비임상 데이터로 충분한 경우**: 단순 PACS/DICOM 뷰어, 이미지 처리(윈도잉·회전·확대), 측정 도구

### 3-D. 임상데이터 형태 (510(k) 제출 시)

1. **Clinical literature** (문헌 검색): 공표된 임상연구 데이터 활용 (가장 흔한 방법)
2. **Retrospective study**: 기존 환자 데이터 분석
3. **Prospective non-significant risk study**: IRB 승인 후 수행, IDE 불필요 (NSR 판단 필요)
4. **Significant Risk IDE study**: 별도 IDE 신청(21 CFR 812) 후 임상시험 수행

> **GCP 준수**: 미국 외 임상 데이터 제출 시 ICH E6 GCP + 독립 윤리위원회 심의 + 피험자 동의서 필수 (21 CFR 807 개정 2019-02-21 이후 첫 피험자 등록 건부터 적용)

---

## 4. De Novo — 임상데이터 필요 판단 기준

### 4-A. 개요

De Novo는 **predicate 없는 신규 기기**가 Class I/II로 분류될 수 있을 때 사용. 임상데이터는 **"if applicable"** — 즉 기기 특성 및 주장하는 안전성·유효성에 따라 결정.

### 4-B. 임상데이터 판단 요소 (21 CFR 860.220)

```
임상데이터 필요 판단:
├─ 일반통제·특별통제만으로 S&E 보증 가능?
│   └─ YES + 비임상 데이터로 충분 → 임상데이터 불필요
├─ 신규 기술로 인체 반응 예측 불가?
│   └─ 임상데이터 또는 human factors 연구 필요
└─ Benefit-Risk 입증에 임상 근거 필요?
    └─ 임상 성능 연구 제출 (규모는 기기 위험에 비례)
```

### 4-C. 임상데이터 형태

- 소규모 feasibility study (feasibility IDE)
- 문헌 기반 임상 근거 (systematic review)
- 전향적 임상 성능 연구 (피험자 수십~수백명 수준)
- PMA 수준의 대규모 RCT는 원칙적으로 불필요

### 4-D. X-ray 제품과의 관련성

자사 3개 X-ray 제품은 모두 predicate 존재 → **De Novo 해당 가능성 낮음**. 단, 다음 시나리오에서는 고려:
- AI 기반 자동 노출 제어 + 진단 보조 기능을 통합한 새로운 GUI SW 플랫폼
- 510(k)에서 "No SE" (NSE) 결정 후 Class II 분류 희망 시

---

## 5. PMA — 임상데이터 필수 요건

### 5-A. 원칙

Class III 기기는 **임상데이터 제출이 법적 의무** (21 CFR 814.20(b)(6)).  
안전성·유효성의 "reasonable assurance" 입증을 위한 **valid scientific evidence** 기준(§860.7) 충족 필요.

### 5-B. 임상시험 설계 요건 (§860.7 — Well-Controlled Investigation)

| 요소 | 내용 |
|---|---|
| 목적 명확화 | 연구 목적·Endpoint 명시 |
| 피험자 선정 | 진단 기준·포함·제외 기준·비교군 균형 |
| Blinding | 적절한 경우 피험자·관찰자 맹검 |
| 대조군 유형 | 무치료 대조 / Placebo / 적극적 대조 / 역사적 대조 |
| 통계 분석 | 적절한 통계 방법, 결측치 처리 방법 명시 |
| 결론 | 사용목적(IFU) 기반 S&E 결론 |

### 5-C. IDE 요건 (21 CFR 812)

- **Significant Risk (SR) 기기**: FDA IDE 승인 필수 (임상시험 시작 전 30일 전 제출)
- **Non-Significant Risk (NSR) 기기**: IRB 승인 + IDE 요약 기록 유지 (FDA IDE 불필요)
- X-ray 방사선 기기는 통상 SR 기기로 분류 → FDA IDE 신청 필요

### 5-D. PMA 임상데이터 내용 요건 (§814.20(b)(6))

| 항목 | 세부 내용 |
|---|---|
| 시험 설계 | Protocol (목적·방법·통계) |
| 피험자 현황 | 연구자 수·피험자 수·탈락자 포함 전체 accounting |
| 안전성 데이터 | 이상반응·합병증·기기 고장·피험자 중도 포기 |
| 유효성 데이터 | 성공/실패 기준 대비 결과 통계 |
| 외국 데이터 활용 | GCP 준수 + IEC 심의 + 미국 인구·의료행태 적용 가능성 명시 |

### 5-E. ClinicalTrials.gov 등록 (FDAAA 2007)

PMA 제출 시 Form FDA-3674 + ClinicalTrials.gov 등록 증빙 필수 (2007-12-26 이후).

### 5-F. X-ray 제품과의 관련성

자사 3개 제품은 **Class II → PMA 대상 아님**. 단, 다음 시나리오에서는 PMA 전환 가능:
- Handheld Source의 사용 적응증이 interventional / fluoroscopy 로 확장 시
- X-ray Detector가 mammography 전용으로 사용 시 (21 CFR 892.1750 → 특정 분류 검토)
- GUI SW에 Class III 진단 기능(예: AI 기반 cancer screening 판독) 추가 시

---

## 6. 3개 지역 비교 매트릭스 — 임상데이터 필요 판단

| 항목 | FDA | MFDS | MDR |
|---|---|---|---|
| 핵심 원칙 | SE 입증 기반 (비임상 우선) | 동등성 입증 기반 (기술·생물·임상) | 임상 평가 의무 (Art. 61) |
| Class/등급 체계 | Class I → III | 1→4등급 | Class I → III |
| 임상데이터 불필요 조건 | Class II + 비임상 SE 입증 | 3등급 + 동등성 입증 + 문헌 | Annex XIV 동등성 3기준 충족 |
| 임상데이터 필수 조건 | Class III (PMA) | 4등급, 신개발의료기기 | Class III + implantable (Art.61.4) |
| 임상 면제 근거 인정 | N/A (SE 자체가 면제 메커니즘) | 해외 인허가 자료(FDA/CE) 인정 | MDCG 2020-5 동등성 경로 |
| 임상시험 설계 기준 | §860.7 Well-Controlled | 의료기기 임상시험 관리기준 (KGCP) | ISO 14155:2020 |
| 임상시험 사전 승인 | IDE (21 CFR 812, SR 기기) | 임상시험계획승인신청 (CTIAP) | CIV 승인 (MDR Art. 62) |
| 해외 임상 인정 | GCP + IEC 심의 | GCP 준수 조건부 인정 | ISO 14155 + ICH E6 준수 |
| X-ray Detector 임상 | 불필요 (벤치 시험으로 충분) | 불필요 (동등성 + IEC 성능시험) | 불필요 (동등성 + PMCF) |
| Handheld Source 임상 | 불필요 (벤치 + 방사선 기준) | 불필요 (동등성 입증) | 불필요 (동등성 + PMCF) |
| GUI SW 임상 | AI 진단 기능 시 필요 | AI/진단 기능 시 필요 | PMCF 또는 임상 평가 필요 |

---

## 7. 자사 3개 제품 임상데이터 필요 수준 맵핑

### 7-A. X-ray Detector (Flat Panel)

| 지역 | 경로 | 임상데이터 요구 수준 | 비고 |
|---|---|---|---|
| FDA | 510(k) Class II | **불필요** (벤치 시험) | DQE·MTF·NPS 성능 데이터로 SE 입증 |
| MFDS | 3등급 (기술문서) | **불필요** (동등성 + 성능시험) | IEC 62220-1-1 데이터 활용 |
| MDR | Class IIb | **불필요** (동등성 기반 CE) | Annex XIV 기술·생물·임상 3기준 충족 + PMCF |

### 7-B. Handheld X-ray Source

| 지역 | 경로 | 임상데이터 요구 수준 | 비고 |
|---|---|---|---|
| FDA | 510(k) Class II | **불필요** (벤치 + 방사선 기준) | 21 CFR 1020.30 + IEC 60601-2-28 + 사용성 연구 권고 |
| MFDS | 3등급 (기술문서) | **불필요** (동등성 + 성능시험) | 방사선 관련 추가 안전성 시험 |
| MDR | Class IIb | **불필요** (동등성 기반 CE) | 방사선 방호 GSPR §11.7 + IFU + PMCF |

> **주의**: Handheld 폼팩터 특성상 조작 오류 가능성 → Human Factors (IEC 62366-1) 임상 유사성 연구 권고. MFDS: 방사선 방호 관련 국내 임상 적용성 검토 요청 가능.

### 7-C. 촬영실 GUI SW (Medical Imaging Software)

| 지역 | 기능 유형 | 임상데이터 요구 수준 | 비고 |
|---|---|---|---|
| FDA | 단순 PACS/뷰어 | **불필요** | 소프트웨어 검증(IEC 62304) + 사용성 |
| FDA | AI 진단 보조 (CADe/CADx) | **필요** | Clinical performance study: sensitivity/specificity |
| MFDS | 단순 뷰어/처리 | **불필요** | SW 검증 문서 위주 |
| MFDS | AI 진단 기능 포함 | **필요** | 임상 성능 시험 (디지털치료기기 가이드라인 준용) |
| MDR | 모든 유형 | **임상 평가 필요** | Art. 61 의무 → 문헌 + PMCF (동등성 기반으로 임상조사 면제 가능) |

---

## 8. 임상데이터 제출 체크리스트

### 510(k) 임상데이터 판단 플로우

```
□ Predicate 존재 확인
□ 사용목적(IFU) 동일 여부 확인
□ 기술적 특성 차이 목록 작성
□ 각 차이에 대해 비임상 시험으로 SE 입증 가능 여부 판단
   ├─ 가능 → 비임상 데이터 제출 (임상 불필요)
   └─ 불가 → 임상데이터 설계
       ├─ 문헌 검색으로 충분한가?
       ├─ 소급 데이터(Retrospective)로 충분한가?
       └─ 전향 임상시험 필요 → NSR/SR 판단 → (SR이면) IDE 신청
```

### De Novo 임상데이터 판단 플로우

```
□ 비임상 데이터만으로 Benefit-Risk 입증 가능 여부 평가
□ 특별통제 수립 시 임상 지표 포함 여부 결정
□ 필요 시 Pre-Sub (Q-Sub)으로 FDA 피드백 선취
□ 임상 필요 시: Feasibility IDE 또는 literature 기반
```

### PMA 임상데이터 체크리스트

```
□ IDE 신청 (SR 기기) — 제출 30일 후 착수
□ IRB/IEC 심의 + 피험자 동의
□ GCP(21 CFR 50, 56, 812) 준수
□ ClinicalTrials.gov 등록 (Form FDA-3674)
□ 통계 계획 (Sample size, Primary/Secondary endpoint)
□ 외국 데이터 사용 시 GCP + IEC 심의 증빙
□ 데이터 분석 + 통계 결과 (§814.20(b)(6))
□ Benefit-Risk 결론 (§860.7)
```

---

## 9. 핵심 참고 가이던스 목록

| 문서 | 발행처 | 비고 |
|---|---|---|
| Recommendations for the Use of Clinical Data in 510(k) Submissions (Draft) | FDA CDRH | 510(k) 임상 기준 |
| Guidance for the Submission of 510(k)s for Solid State X-ray Imaging Devices | FDA CDRH | X-ray Detector 전용 |
| De Novo Classification Process (Evaluation of Automatic Class III Designation) | FDA CDRH | De Novo 전체 프로세스 |
| PMA Clinical Studies (21 CFR 814, §860.7) | FDA CDRH | PMA 임상 요건 |
| Acceptance of Clinical Data to Support Medical Device Applications — FAQ | FDA CDRH | 외국 임상 데이터 인정 |
| MDCG 2020-5 Equivalence (MDR) | MDCG | EU 동등성·충분성 기준 |
| 의료기기 임상시험 관리기준 (KGCP) | MFDS | 국내 임상 기준 |
