> 최종 갱신: 2026-05-02 (자동보강 #11)
> 근거: https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017R0745 (EU MDR 2017/745, Annex II, OJ L 117, 5.5.2017, p.1) | https://health.ec.europa.eu/medical-devices-sector/new-regulations/guidance-mdcg-endorsed-documents-and-other-guidance_en (MDCG endorsed documents index) | ISO 14971:2019 (Risk management) | MDCG 2020-16 (SSCP guidance)

# MDR Annex II — Technical Documentation 섹션별 작성 템플릿

## 개요

| 항목 | 내용 |
|---|---|
| 법적 근거 | EU MDR 2017/745, **Annex II** (Technical Documentation) |
| 적용 대상 | MDR 적용 의료기기 전 Class (I · IIa · IIb · III) |
| 발효일 | 2021-05-26 (Class IIb/III full enforcement) |
| 관련 Annex | Annex I (GSPR), Annex XIV (Clinical Evaluation), Annex XV (Clinical Investigation), Annex III (PMS TD) |
| 언어 | 최소 영어 필수; NB 요구 언어 추가 |

---

## Annex II 전체 섹션 구조

```
Annex II — Technical Documentation
├── Section 1. Device Description and Specification
├── Section 2. Information to be Supplied by the Manufacturer
├── Section 3. Design and Manufacturing Information
├── Section 4. General Safety and Performance Requirements (GSPR)
├── Section 5. Benefit-Risk Analysis and Risk Management
└── Section 6. Product Verification and Validation
```

---

## Section 1 — Device Description and Specification

### 1.1 Device Description & Intended Purpose

| 항목 | 작성 내용 | X-ray Detector | Handheld X-ray Source | GUI SW |
|---|---|---|---|---|
| Device name | 제품 상용명 + 모델명 | [Model Name] X-ray Detector | [Model Name] Handheld X-ray Source | [Model Name] Acquisition SW |
| Intended purpose | 의도된 사용목적 (Article 2(12)) | 의료용 진단 X선 영상 획득을 위한 디지털 X선 검출기 | 의료용 진단 목적 X선 조사 장치 | 의료용 X선 영상 취득·표시·처리 소프트웨어 |
| Intended users | 사용자 (전문가·일반인·자가) | 방사선사, 의사 | 방사선사, 의사 | 방사선사 |
| Patient population | 적용 환자군 | 성인·소아 (촬영 부위별 명시) | 성인·소아 | 해당 없음 (간접 사용자) |
| Indications for use | 적응증 | 흉부·사지·복부 등 디지털 X선 촬영 | 진단용 X선 촬영 | 영상 취득·처리·표시 |
| Contraindications | 금기 | 해당 제품 특성에 따라 기술 | (예) 임신부에 대한 불필요한 조사 금지 | — |
| Use environment | 사용환경 | 병원 방사선실, 이동형 촬영 가능 여부 명시 | 병원 외 이동 촬영 가능 (handheld) | 촬영실 워크스테이션 |
| Body contact | 환자 접촉 여부 | 직접 접촉 또는 비접촉 (유형 명시) | 비접촉 (방사선 조사) | 비접촉 |

**규정 원문 (Annex II, §1.1):**
> "A description and specification of the device, including its variants and accessories, which may include, for example, drawings, photographs or diagrams, to understand the device."

### 1.2 Risk Classification

| 제품 | 분류 근거 규칙 | 예상 Class | 비고 |
|---|---|---|---|
| X-ray Detector | MDR Annex VIII, Rule 10 (active diagnostic devices) | Class IIa | 영상 획득 전용 → Class IIa |
| Handheld X-ray Source | MDR Annex VIII, Rule 9 (ionizing radiation) | Class IIb | 이온화 방사선 방출 → Class IIb |
| GUI SW | MDR Annex VIII, Rule 11 (SaMD) | Class IIa (진단 보조 시) | 순수 취득·표시 시 Class I 가능; 임상결정 지원 시 IIa/IIb |

> **주의**: Rule 11 (SaMD) Class 결정은 MDCG 2019-11 "Classification of Medical Devices — Software" 및 2021-24 Rev.2 가이드라인과 함께 판단.

### 1.3 Accessories and Combinations

```
[템플릿]
| Accessory/Combination | 모델 번호 | CE 여부 | 조합 사용 사유 |
|---|---|---|---|
| (예) 디텍터 카세트 홀더 | ACxxx | 자사 CE | 디텍터 고정 |
| (예) 선량 측정기 | 외부제조사 | CE/UKCA | 방사선 품질 모니터링 |
```

### 1.4 Variants and Configurations

- 모든 크기(Size), 색상(Color), 구성(Configuration) 나열
- (예) 디텍터 패널 14×17", 10×12", 무선/유선 두 유형

### 1.5 Description of Functional Elements

- Block diagram 또는 functional flow diagram 첨부
- Key sub-systems 기술 (예: Scintillator layer, TFT array, signal processing PCB, wireless transmitter)
- Operation principle: 원문 기술 (예: "The detector converts X-ray photons to light via a CsI(Tl) scintillator, then to electrical signals via an amorphous silicon TFT flat panel, and transmits digital images via Wi-Fi/wired connection to the acquisition workstation.")

### 1.6 Software Components

> IEC 62304 기반 SW life cycle 적용 시 필수

| SW Item | 버전 | SaMD 여부 | Safety Class (IEC 62304) | 비고 |
|---|---|---|---|---|
| Firmware (Detector) | vX.X | No | Class B | 영상신호 처리 |
| Acquisition SW (GUI) | vX.X | Yes/No | Class B or C | 표시·처리 |
| HIS/RIS 연동 모듈 | vX.X | No | Class A/B | DICOM HL7 |

### 1.7 Raw Materials and Substances

| 구분 | 물질명 | 환자 접촉 여부 | ISO 10993-1 적용 | CMR/Endocrine Disruptor 여부 |
|---|---|---|---|---|
| Detector 하우징 | ABS/PC 플라스틱 | 간접 접촉 | 해당 | 없음 |
| 패드/표면 소재 | [소재명] | 직접 접촉 | 해당 | 확인 필요 |
| 전자부품 납땜 | RoHS 준수 | 비접촉 | 해당 없음 | RoHS 확인 |

### 1.8 Previous and Similar Generations

- 이전 세대 제품 또는 유사 제품(reference device) 대비 차이점 기술
- 변경 이력(Design Change History) 요약

---

## Section 2 — Information to be Supplied by the Manufacturer

> **Annex II §2 원문**: "A complete set of the labels to be affixed to the device and to its packaging, and the instructions for use, in the language(s) accepted in the Member States where the device is intended to be sold."

### 2.1 Label (표시기재)

> EU MDR Article 10(11) + Annex I §23.2 요구사항

| 필수 항목 | 내용 예시 | 비고 |
|---|---|---|
| 제조업체 명·주소 | [Company Name, Address] | 규정 §23.2(a) |
| 제품명 / 모델명 | [Device Name, Model No.] | §23.2(b) |
| LOT / S/N | LOT: YYYYMMDD-NNNN | §23.2(c),(d) |
| UDI-DI / UDI-PI | (00)XXXXXXXXXXXXXXXXX | §23.2(c); Annex VI |
| 제조연월 | YYYY-MM | §23.2(c) |
| 멸균 표시 | ISO 15223-1 심볼 적용 | §23.2(e) — 해당 시 |
| 의료기기 심볼 | Rx-only, Single use 등 | ISO 15223-1:2021 |
| 경고·주의 표시 | 방사선 위험 심볼 (ISO 7000-2401) | 해당 시 |
| CE 마킹 + NB 번호 | CE XXXX | MDR Art.20 |
| 제조국 | Made in Korea / [국가] | 해당 시 |

**언어 요건**: 판매 국가(Member State) 공식 언어로 작성. 영어 + 현지어 이중 표기 권장.

### 2.2 Instructions for Use (IFU)

> MDR Annex I §23.4 전항 체크리스트 준수

```
IFU 필수 섹션 구조 (권장 목차):
1. 의도된 용도 및 적응증
2. 금기 사항
3. 경고 및 주의사항
4. 설치 / 설정 지침
5. 작동 방법 (단계별)
6. 유지보수 및 청소 지침
7. 처분/폐기 방법
8. 기술 사양 (요약)
9. 심볼 목록 (ISO 15223-1 심볼 설명)
10. 제조업체 연락처
11. Date of issue / Revision history
```

> **X선 기기 특화**: 방사선 안전 경고, 최대 선량값(kVp/mAs), 방호 구역 요건 명시 (IEC 60601-1-3 기반).

---

## Section 3 — Design and Manufacturing Information

### 3.1 Design Information

> MDR Annex II §3.1 요구: "A complete description of the design and development process for the device."

| 설계 단계 | 산출물 | 비고 |
|---|---|---|
| Design Input | 사용자 요구사항 명세서 (URS), 설계 요구사항 명세서 (DRS) | ISO 13485 §7.3.3 |
| Design Review | Design Review 회의록 (최소 2회: 개념·최종) | ISO 13485 §7.3.5 |
| Design Verification | Test reports (시험 성적서), 계산서 | ISO 13485 §7.3.6 |
| Design Validation | 사용자 환경 시험, 임상 데이터 | ISO 13485 §7.3.7 |
| Design Transfer | 양산이관 보고서 (DTP: Design Transfer Package) | ISO 13485 §7.3.8 |
| Design History File | DHF 목차 + 문서 이력 | MDR Annex II §3 |

**첨부 도면 목록 (예시)**:
- System Architecture Diagram
- PCB/Electronic Schematic
- Mechanical Drawing (외형 치수도)
- Software Architecture Document (SAD)
- Bill of Materials (BoM)

### 3.2 Manufacturing Information

| 항목 | 작성 내용 |
|---|---|
| 제조 사이트 | 주소, ISO 13485 인증서 번호, 유효기간 |
| 제조 공정 흐름도 | Process Flow Chart (수령 → 가공 → 조립 → 시험 → 포장 → 출하) |
| 핵심 공정 관리 항목 | In-process QC 기준 (예: PCB 솔더링 검사, 전기 특성 측정) |
| 멸균 정보 | 해당 없음 (X선 기기) 또는 멸균 방법·EO/Gamma 등 |
| 포장 | 포장 유형, 보호 수준, 시험 방법 (ASTM D4169 등) |
| 출하 전 검사 | Acceptance Testing Procedure (ATP) 항목 |

### 3.3 Subcontractors and Critical Suppliers

| 공급업체 | 공급 품목 | 평가 기준 | 승인 일자 |
|---|---|---|---|
| [업체명] | Scintillator 패널 | ISO 13485, 샘플 검수 | YYYY-MM-DD |
| [업체명] | TFT Array | 성능 규격 합격 | YYYY-MM-DD |
| [업체명] | PCBA | IPC-A-610 class 2/3 | YYYY-MM-DD |

---

## Section 4 — GSPR Checklist (General Safety and Performance Requirements)

> **MDR Annex II §4**: "A list of the general safety and performance requirements that apply to the device and an explanation of the solutions adopted to fulfil them, including a reference to any relevant harmonised standards or CS."

### 작성 방법

각 GSPR 항목에 대해:
- **적용 여부** (Applicable / Not Applicable + 근거)
- **준수 수단** (Harmonised Standard / CS / Other technical solution)
- **증거 문서 참조** (Report No. / Document ID)

### GSPR 체크리스트 템플릿

#### Chapter I — General Requirements

| GSPR | 제목 | X-ray Detector 적용 | Handheld Source 적용 | GUI SW 적용 | 준수 수단 |
|---|---|---|---|---|---|
| §1 | Safety and performance | ✅ | ✅ | ✅ | IEC 60601-1 Ed.3.2 |
| §2 | Risk management | ✅ | ✅ | ✅ | ISO 14971:2019 |
| §3 | Inherently safe design | ✅ | ✅ | ✅ | Design Review 기록 |
| §4 | Protection limits (exposure) | N/A | ✅ | N/A | IEC 60601-1-3, IEC 60601-2-28 |
| §5 | Risk control (residual risk) | ✅ | ✅ | ✅ | ISO 14971:2019 §8 |
| §6 | Combination / interface risks | ✅ | ✅ | ✅ | System risk analysis |
| §7 | Maintenance, adjustment | ✅ | ✅ | ✅ | Maintenance manual |
| §8 | Shelf life / transport | ✅ | ✅ | ✅ | ASTM D4169 포장 시험 |
| §9 | User interface (ergonomics) | ✅ | ✅ | ✅ | IEC 62366-1:2015+A1:2020 |

#### Chapter II — Requirements for Design and Manufacture

| GSPR | 제목 | 적용 | 준수 수단 |
|---|---|---|---|
| §10 | Chemical, physical and biological properties | 부분 적용 | ISO 10993-1 생체적합성 (접촉 부위만) |
| §11 | Infection and microbial contamination | 부분 적용 | 청소·소독 지침 (IFU) |
| §12 | Devices incorporating a substance | 해당 없음 | — |
| §13 | Devices with materials of biological origin | 해당 없음 | — |
| §14 | Devices incorporating electronic programmable systems | ✅ (GUI SW·Firmware) | IEC 62304, IEC 62366-1 |
| §15 | Actively implantable devices | 해당 없음 | — |
| §16 | Protection against radiation | ✅ (X-ray Source) | IEC 60601-1-3:2008+A1+A2, IEC 60601-2-28:2017 |
| §17 | Active devices (power supply) | ✅ | IEC 60601-1 Ed.3.2 |
| §18 | Protection against mechanical/thermal risks | ✅ | IEC 60601-1 §8 (기계적 강도) |
| §19 | Devices in particular risk | 해당 여부 판단 | — |
| §20 | Measuring function | 부분 적용 (dose display) | IEC 60601-2-28 §50 |
| §21 | Protection against ionizing radiation (diagnostic) | ✅ | IEC 60601-1-3, IAEA Safety Reports |
| §22 | Software requirements | ✅ (GUI SW) | IEC 62304:2006+A1:2015 |
| §23 | Active implantable devices | 해당 없음 | — |

#### Chapter III — Information Supplied with the Device

| GSPR | 제목 | 적용 | 준수 수단 |
|---|---|---|---|
| §23.1 | General labeling requirements | ✅ | MDR Annex I §23.2 전항 체크 |
| §23.2 | Label content | ✅ | MDR Annex I §23.2(a)~(u) |
| §23.3 | IFU content | ✅ | MDR Annex I §23.4(a)~(u) |
| §23.4 | Implantable devices | 해당 없음 | — |

---

## Section 5 — Benefit-Risk Analysis and Risk Management

> **MDR Annex II §5**: "Information allowing an assessment of the benefit-risk ratio referred to in Sections 1 and 8 of Annex I."

### 5.1 Risk Management Summary

**적용 표준**: ISO 14971:2019 (Risk management for medical devices)

| 항목 | 내용 |
|---|---|
| Risk Management Plan | RM-PL-001 Rev.X (YYYY-MM-DD) |
| Risk Acceptance Criteria | ALARP 원칙; 개별 위험 × 발생률 기반 허용 매트릭스 |
| Hazard Identification Method | FMEA (Failure Mode and Effects Analysis) + FTA |
| Risk Control Options | Inherent safety > Protective measures > Information for safety |
| Residual Risk Evaluation | 모든 잔여 위험 허용 기준 이내 확인 |
| Overall Residual Risk | 전체 잔여 위험 수용 가능 결론 |
| Risk Management Report | RM-RPT-001 Rev.X |

### 5.2 Benefit-Risk Analysis

```
[작성 구조]

1. 임상적 편익 (Clinical Benefit)
   - Primary benefit: 고해상도 X선 영상으로 정확한 진단 지원
   - 대안 대비 우월성 또는 동등성 근거 (임상 데이터 요약)

2. 위험 요약 (Risk Summary)
   - 주요 잔여 위험 목록 (Top 5~10)
   - 각 위험의 ISO 14971 허용 여부

3. 편익-위험 결론
   - "The benefits of [Device Name] outweigh the residual risks when used as intended."
   - 결론 지지 근거 (임상 데이터, 시판 후 데이터, 유사 제품 데이터)
```

---

## Section 6 — Product Verification and Validation

### 6.1 Pre-clinical Evaluation

#### 6.1.1 Applicable Harmonised Standards

| 표준 | 버전 | 적용 제품 | 시험 범위 |
|---|---|---|---|
| IEC 60601-1 | Ed.3.2 (2020) | 전 제품 | 기본 안전·필수 성능 |
| IEC 60601-1-2 | 4th Ed. + A1:2020 | 전 제품 | EMC (방출·내성) |
| IEC 60601-1-3 | 2nd Ed. + A1+A2 | X-ray Source, Detector | 방사선 방호 |
| IEC 60601-2-28 | 2017 | X-ray Source | X선 관 조립체 특수 요구사항 |
| IEC 60601-2-54 | 2022 | Detector + Source | 촬영·투시 특수 요구사항 |
| IEC 62220-1-1 | 2015 | X-ray Detector | DQE 측정 |
| IEC 62304 | 2006+A1:2015 | GUI SW | SW 수명주기 |
| IEC 62366-1 | 2015+A1:2020 | 전 제품 | 사용성 공학 |
| ISO 14971 | 2019 | 전 제품 | 위험관리 |
| ISO 10993-1 | 2018 | 접촉 부위 소재 | 생체적합성 |
| ISO 15223-1 | 2021 | 라벨 | 심볼 |

#### 6.1.2 Biocompatibility (ISO 10993-1:2018)

| 시험 항목 | 적용 대상 | 표준 | 결과 |
|---|---|---|---|
| Cytotoxicity | 환자접촉 소재 | ISO 10993-5 | [Pass/N/A] |
| Sensitization | 환자접촉 소재 | ISO 10993-10 | [Pass/N/A] |
| Irritation | 환자접촉 소재 | ISO 10993-23 | [Pass/N/A] |

> **Handheld Source, GUI SW**: 환자 직접 접촉 없음 → ISO 10993 시험 불필요. 근거 기술 필수.

#### 6.1.3 Electrical Safety and EMC

| 시험 | 표준 | 합격 기준 | 시험기관 |
|---|---|---|---|
| 전기 안전 | IEC 60601-1 Ed.3.2 | CF/BF 적용형 Type 명시 | [기관명, 인가번호] |
| EMC 방출 | IEC 60601-1-2 §5 | CISPR 11 Group 1/2 Class A/B | [기관명] |
| EMC 내성 | IEC 60601-1-2 §6 | 필수 성능 유지 | [기관명] |

#### 6.1.4 Radiation Safety (X-ray Source 특화)

| 시험 항목 | 표준 | 요구사항 |
|---|---|---|
| 누설 방사선 | IEC 60601-1-3 §4.5 | 1m 거리에서 1mGy/h 이하 |
| Focal spot | IEC 60336:2005 | 규격 내 |
| kVp 정확도 | IEC 60601-2-28 §50 | ±10% 이내 |
| mAs 정확도 | IEC 60601-2-28 §50 | ±10% 이내 |
| Beam quality (HVL) | IEC 60601-1-3 §4.6 | 규정 HVL 이상 |

#### 6.1.5 X-ray Detector Performance (DQE)

| 시험 항목 | 표준 | 측정 조건 | 합격 기준 |
|---|---|---|---|
| DQE(0) | IEC 62220-1-1 §6.2 | RQA5/RQA9 빔 | [사양 값] |
| MTF | IEC 62220-1-1 §6.3 | — | [사양 값] |
| Dark noise | IEC 62220-1-1 §6.4 | — | [사양 값] |
| Lag | IEC 62220-1-1 §6.7 | — | [사양 값] |

#### 6.1.6 Software Verification and Validation

> IEC 62304:2006+A1:2015 준거, Safety Class B 이상 적용

| 산출물 | 문서 ID | 비고 |
|---|---|---|
| Software Requirements Specification (SRS) | SW-REQ-001 | — |
| Software Architecture Document (SAD) | SW-ARCH-001 | — |
| Unit Test Report | SW-TEST-UT-001 | Class B: 필수 |
| Integration Test Report | SW-TEST-IT-001 | — |
| System Test Report | SW-TEST-SYS-001 | — |
| Anomaly List (known defects) | SW-DEFECT-001 | 잔여 버그 목록 |
| SOUP List | SW-SOUP-001 | Third-party SW 목록 |
| Software Release Note | SW-REL-001 | 출하 버전 확정 |

#### 6.1.7 Usability Engineering

> IEC 62366-1:2015+A1:2020 준거

| 산출물 | 내용 |
|---|---|
| Intended User Profile | 사용자 특성 분석 |
| Use Scenarios | 사용 시나리오 목록 |
| Usability Specification | 사용성 요구사항 |
| Summative Evaluation Report | 최종 사용성 시험 결과 |

### 6.2 Clinical Evaluation

> **MDR Annex XIV (Part A)** 준거 + **MDCG 2020-1** (Clinical Evaluation guidance)

| 항목 | 내용 |
|---|---|
| Clinical Evaluation Plan (CEP) | CLEV-PLAN-001 (사전 작성 필수) |
| Clinical Evaluation Report (CER) | CLEV-RPT-001 (제출 시 포함) |
| Clinical data sources | 동등성 데이터 / PMS 데이터 / 임상시험 데이터 |
| Equivalence | MDR Annex XIV §3 동등성 3개 기준 (clinical · technical · biological) 입증 |
| PMCF plan | Post-Market Clinical Follow-up Plan (Annex XIV Part B) |
| SSCP | Summary of Safety and Clinical Performance — Class IIb/III 의무 (MDR Art. 32) |

**3개 제품 임상평가 전략:**

| 제품 | 경로 | 동등 기기 |
|---|---|---|
| X-ray Detector | 유사 기기 동등성 기반 CER | 동등 기기 목록 (자사/타사 CE 제품) |
| Handheld X-ray Source | 유사 기기 동등성 기반 CER | 동등 기기 목록 |
| GUI SW | 문헌 + 성능 데이터 기반 CER | SaMD 임상 데이터 전략 |

---

## 3개 지역 Technical Documentation 비교 매트릭스

| 섹션 | MDR Annex II | FDA Design History File (21 CFR 820 / QMSR 2024) | MFDS 기술문서 (의료기기법 시행규칙 별표 3) |
|---|---|---|---|
| 제품 설명 | §1 Device Description | Design Output, Device Description (DHF) | 제1장 사용목적·작용원리 |
| 라벨·IFU | §2 Labeling | Device Labeling (21 CFR 801; eSTAR §6) | 제3장 표시기재 |
| 설계·제조 | §3 Design & Manufacturing | Design History File (§7.3 QMSR) | 제2장 구조·원재료·제조방법 |
| 안전성 요구사항 | §4 GSPR Checklist | 510(k) SE comparison + Performance testing | 제4장 성능 / 제5장 안전성 |
| 위험관리 | §5 Risk Management | Risk Management File (ISO 14971; not explicitly DHF) | 안전성 평가 (Risk 포함) |
| 검증·유효성 확인 | §6 Verification & Validation | V&V Reports (DHF), Biocompatibility, EMC/Safety tests | 시험 성적서 (공인기관) |
| 임상 데이터 | §6.2 CER | Clinical Data (510(k) §K) | 임상시험 자료 또는 동등제품 비교 |
| 사후 모니터링 | Annex III (PMS TD) | Post-market Surveillance (21 CFR 803/806) | 안전성 정보 보고 |

**핵심 차이점:**
1. **MDR vs FDA**: MDR은 GSPR 전항 체크리스트 의무 → FDA는 SE (Substantial Equivalence) 입증 중심
2. **MDR vs MFDS**: MFDS는 별표 3 고정 양식; MDR은 NB 재량에 따라 유연성 허용
3. **MDR 임상**: CER + PMCF Plan 의무 → FDA 510(k)는 임상 데이터 선택적 (성능 데이터 우선)

---

## 실무 작성 체크리스트

### 제출 전 최종 점검

```
□ Section 1: 의도된 사용목적이 라벨·IFU와 일치하는가?
□ Section 1: 소프트웨어 버전 목록이 최신 출시 버전과 일치하는가?
□ Section 2: 모든 판매 국가 언어 라벨 포함되었는가?
□ Section 2: IFU Annex I §23.4 전항 체크되었는가?
□ Section 3: 모든 제조사이트 ISO 13485 인증서 유효기간 확인되었는가?
□ Section 4: GSPR 체크리스트에 "Not Applicable" 근거 모두 기재되었는가?
□ Section 4: 적용 조화표준이 최신 판본인가? (공고된 harmonised standards list 확인)
□ Section 5: ISO 14971:2019 기반 Risk Management File 최신 버전 연계되었는가?
□ Section 6: 모든 시험 성적서가 인가된 시험기관(공인기관) 발행인가?
□ Section 6.2: CER이 사전에 작성된 CEP와 일치하는가?
□ UDI: EUDAMED 등록 완료 여부 확인
□ QMS: ISO 13485 인증서 유효기간 내인가?
```

### 주요 NB 지적 사항 (Common NB Deficiencies)

| 지적 유형 | 빈도 | 대응 방법 |
|---|---|---|
| IFU 언어 버전 누락 | 매우 높음 | 판매 예정 국가 전 언어 사전 번역 |
| GSPR N/A 근거 부재 | 높음 | 모든 N/A 항목에 1~2문장 근거 기재 |
| 동등 기기 Technical/Biological 동등성 미입증 | 높음 | 동등 기기 3기준 문서화 (MDCG 2020-5) |
| SW 버전 불일치 | 높음 | TD 제출 시 SW 버전 freeze 후 제출 |
| Risk Management Report 미서명 | 중간 | Top management 서명 필수 |
| PMCF Plan 부재 (IIb 이상) | 중간 | 최소 PMCF Plan 포함 |
| 조화표준 구판 적용 | 중간 | EU Official Journal 최신 조화표준 목록 확인 |

---

## 관련 MDCG 가이던스 목록

| 문서 | 제목 | 발행 | 관련 섹션 |
|---|---|---|---|
| MDCG 2020-1 | Clinical Evaluation | 2020-03 | §6.2 |
| MDCG 2020-5 | Clinical Evaluation — Equivalence | 2020-04 | §6.2 |
| MDCG 2020-6 | Sufficient Clinical Evidence for Legacy | 2020-04 | §6.2 |
| MDCG 2020-16 | SSCP | 2020-09 | §6.2 Class IIb/III |
| MDCG 2019-11 | SaMD Classification | 2019-10 | §1.2 (GUI SW) |
| MDCG 2019-16 Rev.2 | Cybersecurity | 2023-12 | §6.1 (SW 보안) |
| MDCG 2021-24 Rev.2 | Software Classification | 2023-11 | §1.2 (SaMD) |
| MDCG 2022-2 Rev.1 | EUDAMED guidance | 2022-01 | UDI 등록 |
| MDCG 2023-1 | Guidance on SSCP | 2023-07 | §6.2 |

---

## 파일 관리 규칙

| 항목 | 내용 |
|---|---|
| 파일명 규칙 | `TD_[ProductCode]_AnnexII_v[X.X]_[YYYYMMDD].pdf` |
| 버전 관리 | Major.Minor (Major = NB 제출 버전, Minor = 내부 개정) |
| 서명 | QA Manager + Project RA Manager 서명 |
| 보관 기간 | 최종 판매 후 15년 (MDR Article 10(8)) |
| 언어 | 영어 (마스터) + 현지어 번역 |
