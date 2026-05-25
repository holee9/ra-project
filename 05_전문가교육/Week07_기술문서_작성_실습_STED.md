> 최종 갱신: 2026-05-25 (자동보강 #73)
> 근거: https://www.imdrf.org/sites/default/files/docs/ghtf/archived/sg1/technical-docs/ghtf-sg1-n011r20-essential-principles-safety-performance-medical-devices-sted.pdf | https://www.fda.gov/medical-devices/premarket-notification-510k/content-510k | https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program | https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng | https://www.mfds.go.kr/brd/m_1060/view.do?seq=14698

# Week 7: 기술문서 작성 실습 (STED)

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 7/12)
> **소요 시간**: 이론 2시간 + 실습 2시간 + 평가 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. STED(Summary Technical Documentation) 개념과 GHTF/SG1/N011:2008 기원을 설명한다.
2. FDA eSTAR 기술문서, EU MDR Annex II 기술문서, MFDS 기술문서 3개 지역의 구조 차이를 비교한다.
3. 각 섹션(Device Description, Substantial Equivalence/GSPR, Performance Testing, Risk Management, Software, Labeling, Clinical Data)의 작성 요령을 적용한다.
4. 자사 3개 제품(X-ray Detector / Handheld X-ray Source / 촬영실 GUI SW)별 기술문서 구성 계획을 수립한다.
5. 3개 지역 동시 제출을 위한 "공통 코어(Common Core) 전략"을 설계한다.

---

## 2. STED 개념과 기원

### 2.1 GHTF STED 문서

| 항목 | 내용 |
|---|---|
| 발행 기관 | Global Harmonization Task Force (GHTF), Study Group 1 (SG1) |
| 문서 번호 | GHTF/SG1/N011:2008 (Final, 2008-02-21) |
| 후속 관리 | IMDRF (GHTF 해산 2012년 이후 아카이브 유지) |
| 목적 | 지역 간 기술문서 차이를 줄여 규제 비용 절감 및 환자 조기 접근 지원 |

**STED 핵심 원칙**

- Essential Principles of Safety and Performance(GHTF/SG1/N41:2005) 기반 적합성 입증
- 3계층 구조: (1) 사실(Facts) — 원문·데이터, (2) 해석(Interpretation) — 규격 대비 분석, (3) 결론(Conclusion) — 적합성 선언
- 지역 고유 추가 요건은 국가별 부록(Country-Specific Annex)으로 분리

**STED 채택 현황**

| 지역 | 채택 형태 | 의무화 시점 |
|---|---|---|
| FDA | eSTAR 템플릿에 STED 구조 통합 | 2023-10-01 (모든 510(k) eSTAR 의무화) |
| EU MDR | Annex II (Technical Documentation) 구조로 법제화 | MDR 발효 2021-05-26 |
| MFDS | 의료기기법 시행규칙 별표 3 "기술문서" 구조 — STED 원칙 반영 | 법 제정 이후 지속 |

---

## 3. 3개 지역 기술문서 구조 비교 매트릭스

| 섹션 | FDA eSTAR | EU MDR Annex II | MFDS 기술문서 |
|---|---|---|---|
| **1. 제품 식별** | Device Identification (FDA Product Code, 21 CFR Classification) | §1.1 Device description & specifications (intended purpose, UDI, variants) | 품목 기본 정보 (명칭, 모델, 등급, 제조원) |
| **2. 사용목적** | Indications for Use (Form 3881) + Device Description | §1.1 Intended purpose | 사용목적 (의도된 사용 + 사용자 + 환경) |
| **3. 작용원리** | Device Description (working principle) | §1.1 Working principle | 작용원리 (물리적·기능적 원리) |
| **4. 동등성/적합성** | Substantial Equivalence (predicate comparison, tech char + performance) | §4 GSPR compliance (Annex I — General Safety & Performance Requirements) | 기 허가 제품 비교표 (동등 허가 시) 또는 적합성 입증 |
| **5. 설계·제조** | Device Description (materials, components) | §2 Design & manufacturing info | 구성부품, 원자재, 제조공정 |
| **6. 위험관리** | Risk Management (FDA: ISO 14971 기반) | §5 Benefit-risk analysis & risk management (ISO 14971) | 안전성 자료 (전기·기계·방사선·생물학적) |
| **7. 성능시험** | Performance Testing (bench test, non-clinical) | §6.1 Verification & validation (non-clinical) | 성능시험 자료 (시험규격·방법·결과) |
| **8. 소프트웨어** | Software (IEC 62304 — Basic/Enhanced) | §6.1 Software (IEC 62304, IEC 62366, cybersecurity) | 소프트웨어 안전등급, 개발이력 |
| **9. 라벨링** | Labeling (21 CFR 801, IFU, Form 3881) | §1.3 Labeling (MDR Annex I §23) | 표시기재 (고시 제2024-77호) |
| **10. 임상자료** | Clinical/Performance Data (if required) | §6.2 Clinical Evaluation (MDR Art. 61, Annex XIV) | 임상시험자료 (필요 시) |
| **11. PMS** | (별도 제출, FDA MDR 21 CFR 803) | §7 Post-Market Surveillance (Annex III 연계) | 해당 없음 (허가 후 관리) |

---

## 4. 딥싱크: 섹션별 작성 요령

### 4.1 Device Description / 사용목적·작용원리

**공통 원칙**

- "What it is" + "What it does" + "How it works" 3가지를 명확히 분리
- 의도된 사용자(Intended User), 의도된 환경(Intended Environment), 의도된 사용 조건(Conditions of Use) 명시
- 금기사항(Contraindications) 별도 열거

**X-ray 제품 특화 포인트**

| 제품 | FDA | MDR | MFDS |
|---|---|---|---|
| X-ray Detector | Digital radiographic receptor 유형 명시 (DR/CR/CR cassette), DQE/MTF 성능 요약 | Intended purpose에 anatomical region + patient population 명기 | 촬영 대상 부위·조사 선량 범위 명기 |
| Handheld X-ray Source | Radiation-emitting product (21 CFR 1020.30) 이중 신고 체계 명시 | Intended environment (mobile/dental/veterinary 구분) | 이동형·휴대형 구분, 방사선발생장치 해당 여부 |
| GUI SW | Software as a component (SaMD vs. Software in a Device 판별) | Software system architecture overview | 독립형/내장형 SW 구분 (디지털의료제품법 §2) |

---

### 4.2 Substantial Equivalence / GSPR 적합성 / MFDS 동등비교

#### FDA: Substantial Equivalence (SE) 비교표

```
비교 항목 (Technical Characteristics):
┌──────────────────┬───────────────┬───────────────┬──────────────────┐
│ 항목              │ 신청 기기      │ 예측 기기 (K#) │ Same / Different │
├──────────────────┼───────────────┼───────────────┼──────────────────┤
│ Intended Use      │ ...           │ ...           │ Same             │
│ Tech Char A       │ ...           │ ...           │ Same             │
│ Tech Char B       │ ...           │ ...           │ Different → 데이터│
└──────────────────┴───────────────┴───────────────┴──────────────────┘
```

- **Different**한 기술 특성이 있을 경우 → 성능 동등성 데이터 반드시 첨부
- Predicate Device 선정: FDA 510(k) database 검색 (www.accessdata.fda.gov), 5년 이내 권장
- Split-predicate 허용 (서로 다른 예측 기기에서 intended use + tech char 조합) — 단, 동일 intended use 전제

#### EU MDR: GSPR 적합성 매트릭스

| GSPR 조항 | 요건 요약 | 입증 방법 | 인용 표준/가이던스 |
|---|---|---|---|
| §1 | 안전·성능 우선 원칙 | 위험관리 파일 | ISO 14971:2019 |
| §10.4 | 전리방사선 방호 | 방사선 시험보고서 | IEC 60601-1-3, IEC 60601-2-54 |
| §14 | EMC | EMC 시험보고서 | IEC 60601-1-2:2014+A1:2020 |
| §17 | IT/사이버보안 | 보안 파일 | IEC 81001-5-1, MDCG 2019-16 Rev.1 |
| §23 | 라벨·IFU | 라벨링 파일 | ISO 15223-1:2021 |

- **조화표준(Harmonised Standard)** 적용 시 → 해당 GSPR에 대한 적합성 추정(Presumption of Conformity)
- 조화표준 미적용 또는 부분 적용 시 → Common Specifications(CS) 또는 독자 입증 자료 첨부

#### MFDS: 동등 비교

- 기 허가 동등 제품 존재 시: 사용목적·작용원리·성능·안전성·원자재(소모품) 동등성 비교표 작성
- 동등 제품 없는 신개발 의료기기: 임상시험자료 또는 임상문헌 자료 제출
- X-ray 제품: 방사선발생장치 신고(원자력안전위원회) 병행 확인 필수

---

### 4.3 Performance Testing / 성능시험

**계층 구조 원칙**

```
Level 1: 규격 요구사항 (Standard Requirement)
  ↓ 근거
Level 2: 시험 방법 (Test Method) — 인하우스 or 공인시험기관
  ↓ 결과
Level 3: 합부 판정 (Pass/Fail Criteria)
  ↓ 증거
Level 4: 시험보고서 요약 (Test Report Summary)
```

**3개 지역 제출 형식**

| 지역 | 요구 형식 | 비고 |
|---|---|---|
| FDA | Non-clinical Bench Performance Testing Summary (eSTAR 섹션) + 원본 보고서 참조 | FDA Guidance: "Recommended Content and Format of Non-Clinical Bench Performance Testing" (2023) |
| MDR | §6.1 Verification & Validation — Annex II에 summary, NB 요청 시 원본 제출 | ISO 14155 (임상), IEC 60601 시리즈 (비임상) |
| MFDS | 성능 시험 자료: 규격번호·시험항목·시험결과·합부 판정 표 형식 | KOLAS 인증 기관 보고서 우선, 자사 시험 시 별도 승인 필요 |

**X-ray 제품 핵심 시험 항목**

| 시험 항목 | 해당 제품 | 적용 규격 |
|---|---|---|
| DQE (Detective Quantum Efficiency) | X-ray Detector | IEC 62220-1-1:2015 |
| 누설 방사선 (Leakage Radiation) | Handheld X-ray Source | IEC 60601-1-3:2008+A1+A2, 21 CFR 1020.30 |
| MTF (Modulation Transfer Function) | X-ray Detector | IEC 62220-1-1:2015 §7 |
| HVL (Half Value Layer) | Handheld X-ray Source | IEC 60601-1-3 §29.201 |
| 관전압·관전류 정확도 | Handheld X-ray Source | IEC 60601-2-28:2017 |
| EMC (전자파) | 3개 제품 전체 | IEC 60601-1-2:2014+A1:2020 |
| 전기안전 | 3개 제품 전체 | IEC 60601-1 Ed. 3.2 |
| 소프트웨어 기능 시험 | GUI SW | IEC 62304 + IEC 62366 (사용적합성) |

---

### 4.4 Risk Management / 위험관리

**기술문서 내 위험관리 연계**

- ISO 14971:2019 기반 Risk Management File(RMF)은 기술문서의 핵심 구성요소
- 3개 지역 모두 ISO 14971:2019 인정 (MDR: 조화표준 EN ISO 14971:2019, FDA: recognized standard, MFDS: KS X ISO 14971 등가)

**기술문서에 포함해야 할 위험관리 요약**

```
1. 위험관리 계획 요약 (Risk Management Plan Summary)
   - 적용 범위, 팀 구성, 허용 가능 기준
2. 위험 식별 요약 (Hazard Identification Summary)
   - 해저드 목록, 예상 상황, 발생 확률/중증도 추정
3. 잔류위험 현황 (Residual Risk Summary)
   - 개별 잔류위험 허용 가능 여부
   - 전체 잔류위험 편익-위험 분석 결론
4. Risk Management Report 서명·일자
```

**X-ray 특화 위험 (Hazard)**

| 해저드 | 예상 해롭거나 위험한 상황 | 위험 제어 수단 |
|---|---|---|
| 전리방사선 과다 노출 | 설정 오류로 환자·운영자 피폭 | 선량 표시, 안전 인터록, IEC 60601-1-3 준수 |
| 고전압 감전 | 케이블 파손, 접지 불량 | IEC 60601-1 §8 절연·접지 요건 |
| 기계적 낙하 | Handheld 기기 낙하 시 방사선 유출 | IEC 60601-1 §11 기계적 강도 시험 |
| SW 오작동 | GUI 설정 오류 → 과다 노출 | Safety Class C (IEC 62304), FMEA |
| 배터리 과열 (Handheld) | 리튬이온 배터리 열폭주 | IEC 62133-2, 충전 제어 회로 |

---

### 4.5 Software / 소프트웨어 섹션

**3개 지역 소프트웨어 제출 비교**

| 항목 | FDA (eSTAR) | MDR (Annex II §6.1) | MFDS |
|---|---|---|---|
| 분류 기준 | Basic vs. Enhanced (FDA Guidance 2023) | Safety Class (IEC 62304 §4) | 독립형/내장형 (디지털의료제품법) |
| Level of Concern | Not Required in eSTAR (사용적합성·위험관리로 대체) | Safety Class로 대체 | - |
| 주요 제출 문서 | Software Description, Architecture, Risk Mgmt, V&V Summary, Cybersecurity | SW 개발계획, 아키텍처, 테스트결과, 사이버보안 파일 | SW 개발이력, 시험결과, 사이버보안 (2025.01 가이드) |
| 사이버보안 | SBOM, Threat Model, Cybersecurity Management Plan (524B 적용 시) | IEC 81001-5-1, MDCG 2019-16 Rev.1 | MFDS 사이버보안 가이드라인 2025.01, RA-01~35 요건 |

**자사 3개 제품 Safety Class 판정**

| 제품 | Safety Class | 판정 근거 |
|---|---|---|
| X-ray Detector | Class B | SW 오류 시 부상 가능 (영상 왜곡 → 오진), 사망 간접 가능성 |
| Handheld X-ray Source | Class C | SW 오류 시 과다 피폭 → 사망 직접 가능성 |
| 촬영실 GUI SW | Class C | 선량 설정·방사선 제어 → 과다 피폭 → 사망 직접 가능성 |

---

### 4.6 Labeling / 라벨링

**기술문서 내 라벨링 섹션 구성**

```
├── 제품 라벨 (Device Label) — 포장 외면
├── IFU (Instructions for Use) — 사용설명서
├── 라벨 심볼 목록 (ISO 15223-1:2021 적용)
└── 번역 확인서 (다국어 출시 시)
```

**3개 지역 라벨링 핵심 차이**

| 항목 | FDA | MDR | MFDS |
|---|---|---|---|
| 언어 | 영어 (미국) | 출시 국가 공식어 전부 | 한국어 (병기 허용) |
| UDI | GUDID에 등록 (GS1/HIBCC/ICCBBA) | EUDAMED에 등록 (2026-05-28 의무화) | UDI 포털 등록 (K-UDI) |
| 심볼 | FDA Symbols Glossary (21 CFR 801.15) | ISO 15223-1:2021 조화 (EU-REP 심볼 Amd 1:2025) | 고시 제2024-77호 |
| 방사선 경고 | "CAUTION: X-rays" + 방사선 기호 | 방사선 방출 경고 (MDR Annex I §23.4(r)) | 방사선 발생 표시 (원자력안전법 연계) |

---

### 4.7 Clinical Data / 임상자료

**3개 지역 임상자료 필요 판단**

| 판단 기준 | FDA | MDR | MFDS |
|---|---|---|---|
| 동등 제품 존재 | 510(k) Substantial Equivalence — 임상 불필요 (통상) | CE 동등성 3요건 충족 → Art. 61(10) 임상조사 면제 가능 | 기허가 동등 제품 있으면 임상 불필요 |
| 임상 필요 기준 | 벤치 데이터로 SE 입증 불가 시 (De Novo / PMA 수준) | 동등성 미충족, 새로운 안전·성능 우려 | 신개발 의료기기 또는 임상적 판단 필요 시 |
| X-ray Detector 판단 | Class II (Product Code: IYO/IYN) — 510(k), 임상 통상 불필요 | IIa 등급 — 문헌 고찰(Clinical Evaluation Report) + PMCF | 3등급 — 기술문서, 임상 필요 여부 심사관 판단 |
| Handheld X-ray Source 판단 | Class II (Product Code: IZL) — 510(k) | IIb 등급 — CER 필수 + Annex X or Annex XI 적합성평가 | 3등급 — 방사선 안전 임상자료 필요 가능성 |

---

## 5. 3개 제품별 기술문서 구성 계획

### 5.1 X-ray Detector

| 기술문서 섹션 | 주요 내용 | 담당 | 참조 문서 |
|---|---|---|---|
| Device Description | DR flat-panel detector, 14×17 inch, 작동원리(TFT), 의도된 사용 | RA | Detector_DHF_목차_템플릿 |
| SE 비교 | FDA: 유사 K-number 비교; MDR: GSPR §10.4 방사선 방호 | RA | eSTAR_02_SE |
| Performance Testing | DQE (IEC 62220-1-1), MTF, NPS, CNR, 전기안전, EMC | RA/테스트 | Detector_성능시험_매트릭스 |
| Risk Management | ISO 14971: 방사선·전기·기계·SW 해저드 | QA | Risk_Management_File |
| Software | Class B, IEC 62304, 사이버보안 SBOM | SW팀 | GUI_SW_IEC62304_문서세트 |
| Labeling | DI (GS1), IFU (영어·한국어), ISO 15223-1 심볼 | RA | IFU_필수요소_3지역_비교 |

### 5.2 Handheld X-ray Source

| 기술문서 섹션 | 주요 내용 | 담당 | 참조 문서 |
|---|---|---|---|
| Device Description | 휴대형 DC 구동, 최대 70 kVp/2 mA, 방사선발생장치 해당 | RA | Handheld_DHF_목차_템플릿 |
| SE 비교 | FDA: 21 CFR 1020.30 적합성 체크 + SE; MDR: GSPR §10.4 | RA | 21CFR1020_30_체크리스트 |
| Performance Testing | HVL, 누설방사선, 선량율, IEC 60601-2-28, 배터리(IEC 62133-2) | RA/테스트 | IEC60601-1-3_방사선방호 |
| Risk Management | 방사선 과다피폭, 감전, 낙하, 배터리 열폭주 | QA | Risk_Management_File |
| Software | Class C, IEC 62304, PCCP (AI 미적용 시 N/A) | SW팀 | |
| Labeling | "CAUTION X-rays", 방사선 경고, 배터리 처리 정보 | RA | IFU_필수요소_3지역_비교 |

### 5.3 촬영실 GUI SW

| 기술문서 섹션 | 주요 내용 | 담당 | 참조 문서 |
|---|---|---|---|
| Device Description | SaMD (IEC 62304 Class C), 선량 설정·영상 획득·표시 | RA/SW | GUI_SW_IEC62304_문서세트 |
| SE / GSPR | FDA: predicate SW K-number; MDR: GSPR §17 IT/보안 | RA | eSTAR_05_Software_Section |
| Performance Testing | 기능 시험(SRS 기반), 사용적합성(IEC 62366) 요약 시험 | SW/UX | Usability_Engineering_File |
| Risk Management | SW 오작동→과다피폭, 오표시, 사이버 침해 | QA | Risk_Management_File |
| Software | Class C, SBOM, Threat Model (STRIDE), IEC 81001-5-1 | SW팀 | Threat_Model_STRIDE_가이드 |
| Labeling | SW 버전·릴리즈노트, e-IFU, UDI(PI=SW 버전) | RA | MFDS_디지털의료기기_표시기재 |

---

## 6. Common Core 전략 (3지역 동시 제출)

```
┌─────────────────────────────────────────────────────┐
│              Common Core 기술문서                     │
│  - Device Description (작용원리·설계·제조)           │
│  - Risk Management File (ISO 14971:2019)             │
│  - Performance Testing Reports (IEC 표준 기반)        │
│  - Software File (IEC 62304 + IEC 81001-5-1)         │
│  - Usability File (IEC 62366-1)                      │
│  - Biological Evaluation (ISO 10993-1)               │
└───────────────────┬─────────────────────────────────┘
                    │
        ┌───────────┼───────────┐
        ▼           ▼           ▼
┌─────────────┐ ┌─────────────┐ ┌─────────────┐
│  FDA Annex  │ │  MDR Annex  │ │ MFDS Annex  │
│ - eSTAR 섹션│ │ - Annex II  │ │ - 별표 3    │
│ - SE 비교표 │ │ - GSPR 매트릭│ │ - 동등비교표│
│ - Form 3881 │ │   스 (Annex I)│ │ - 방사선안전│
│ - 21 CFR    │ │ - CER       │ │   시험자료  │
│   1020.30   │ │ - PMS Plan  │ │             │
└─────────────┘ └─────────────┘ └─────────────┘
```

**핵심 원칙**
- Common Core 문서는 영어로 작성 → FDA/MDR 동시 활용
- MFDS: 한국어 번역 + MFDS 고유 서식(신청서·비교표) 추가
- 성능시험보고서: IEC 표준 기반이면 3지역 동시 제출 가능 (MFDS는 한국어 요약 추가)
- UDI: 3지역 별도 등록이지만 제품 식별 정보는 공통 (GS1 Company Prefix 권장)

---

## 7. 실습 과제

### 과제 7-1: SE 비교표 작성 (X-ray Detector 기준)

**목표**: 자사 X-ray Detector와 FDA 510(k) database에서 선택한 predicate device 간 Substantial Equivalence 비교표 초안 작성.

**요구 사항**
1. accessdata.fda.gov/scripts/cdrh/cfdocs/cfPMN/pmn.cfm 에서 X-ray Detector (Product Code: IYO 또는 IYN) predicate 1건 선정.
2. 아래 항목을 포함한 SE 비교표 작성:
   - Intended Use (Same/Different)
   - Technology (Active pixel sensor vs CCD 등)
   - Image receptor size
   - DQE at W(0)/W(1 cy/mm) 성능 비교
   - Software functionality
3. "Different" 항목에 대한 성능 동등성 입증 계획 제시 (시험 항목·규격명·예상 결과).

**제출 형식**: 표 형식 (A4 1~2페이지), 영어 또는 한국어 혼용 가능.

---

### 과제 7-2: GSPR 매트릭스 작성 (Handheld X-ray Source 기준)

**목표**: MDR Annex I 전체 조항(§1~§23) 중 Handheld X-ray Source 해당 조항을 식별하고, 각 조항별 적합성 입증 방법을 매트릭스 형태로 작성.

**요구 사항**
1. GSPR 23개 조항 중 "해당(Applicable) / 해당 없음(N/A) + 근거" 판별.
2. 해당 조항에 대해: 적용 조화표준, 주요 시험 방법, 문서 위치 기재.
3. 특히 §10.4 (방사선 방호), §14 (EMC), §17 (IT/사이버보안), §23 (라벨) 상세 작성 필수.

**제출 형식**: 스프레드시트 또는 표, §1~§23 전항 포함.

---

### 과제 7-3: 공통 기술문서 목차 설계 (3지역 공통 코어 기준)

**목표**: 자사 제품 1개를 선택하여, 3지역 동시 제출에 활용 가능한 Common Core 기술문서 목차 초안 설계.

**요구 사항**
1. Common Core 섹션 (지역 무관 공통 내용) 목록 작성.
2. 지역 고유 섹션 (FDA-only / MDR-only / MFDS-only) 구분.
3. 각 섹션의 담당 부서(RA/QA/SW팀/테스트팀) 및 예상 페이지 수 추정.
4. Common Core 전략 채택 시 예상 절감 효과(시간·비용) 간략 추정.

**제출 형식**: 목차형 또는 표 형식 (A4 2~3페이지).

---

## 8. 평가 기준

| 평가 항목 | 배점 | 세부 기준 |
|---|---|---|
| 3지역 구조 이해 | 20점 | FDA eSTAR·MDR Annex II·MFDS 기술문서 구조 정확 구분 |
| SE/GSPR/동등비교 작성 | 25점 | 비교 항목 누락 없음, Different 항목 입증 계획 구체성 |
| 성능시험 연계 | 20점 | 적용 표준 정확, 시험 항목·합부 기준 일치 |
| 위험관리 연계 | 15점 | ISO 14971 3계층 구조, X-ray 해저드 식별 완결성 |
| Common Core 전략 | 20점 | 공통/고유 섹션 구분 명확, 절감 효과 논리적 |

**합격 기준**: 70점 이상

---

## 9. 참고 자료

| 문서 | 출처 | 비고 |
|---|---|---|
| GHTF/SG1/N011:2008 STED | IMDRF (www.imdrf.org) | STED 원본 |
| FDA eSTAR 템플릿 | www.fda.gov/media/152429/download | 2023-10-01 의무화 |
| FDA 510(k) Content Guidance | www.fda.gov/medical-devices/premarket-notification-510k/content-510k | 현행 |
| MDR 2017/745 Annex II | eur-lex.europa.eu | 기술문서 법적 요건 |
| MDCG 2019-16 Rev.1 | health.ec.europa.eu | 사이버보안 |
| MFDS 기술문서 심사 이해하기 | www.mfds.go.kr (seq=14698) | 심사관 가이드라인 |
| KB 내부 참조 | [MFDS_기술문서_섹션별_작성가이드](../01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md) | #8 |
| KB 내부 참조 | [MDR_AnnexII_Technical_Documentation_Template](../01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexII_Technical_Documentation_Template.md) | #11 |
| KB 내부 참조 | [eSTAR_02_Substantial_Equivalence](../01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md) | #2 |
