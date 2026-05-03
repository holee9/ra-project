> 최종 갱신: 2026-05-03 (자동보강 #13)
> 근거: https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfcfr/cfrsearch.cfm?fr=820.30 | https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (Annex II) | https://webstore.iec.ch/en/publication/21937 (IEC 62220-1-1:2015)

# X-ray Detector — DHF (Design History File) 목차·각 문서 템플릿

## 1. DHF 개요 및 지역별 근거

| 지역 | 요구사항 | 근거 |
|---|---|---|
| **FDA (US)** | DHF 수립·유지 의무 (Class II/III) | 21 CFR 820.30(j) → QMSR 21 CFR Part 820 (2024-02-02 발효) |
| **MDR (EU)** | Technical Documentation (Annex II) + PMS TD (Annex III) | MDR 2017/745 Article 10(4) |
| **MFDS (KR)** | 기술문서 작성·보관 | 의료기기법 제26조, 기술문서 심사 가이드라인 |

**제품 분류**: X-ray Detector  
- FDA: Class II (21 CFR 892.1680 / 892.1720, Product Code **MQB**)  
- MDR: Class IIa (Annex VIII Rule 10)  
- MFDS: 2등급 (의료기기 품목 및 등급 분류에 관한 규정)

---

## 2. DHF 문서 목차 (완전 목록)

### Section 1 — 제품 기술 설명 (Device Description)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-DD-001 | Device Description (한영) | MDR Annex II §1.1, eSTAR §1 | [ ] |
| DET-DD-002 | Intended Use / Indications for Use | 21 CFR 807.87(e), MDR Annex II §1.1 | [ ] |
| DET-DD-003 | Principle of Operation (작동 원리) | MFDS 기술문서 §2 | [ ] |
| DET-DD-004 | Block Diagram / System Architecture | MDR Annex II §1.1(a) | [ ] |
| DET-DD-005 | BOM (Bill of Materials) | ISO 13485:2016 §7.3.7 | [ ] |
| DET-DD-006 | Variants / Configurations 목록 | MDR Annex II §1.1(b) | [ ] |
| DET-DD-007 | Accessories / Companion Devices 목록 | MDR Annex II §1.1(b) | [ ] |

---

### Section 2 — 설계 개발 관리 (Design & Development Controls)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-DC-001 | Design & Development Plan | 21 CFR 820.30(b), ISO 13485 §7.3.2 | [ ] |
| DET-DC-002 | Design Inputs (요구 사항 목록) | 21 CFR 820.30(c), ISO 13485 §7.3.3 | [ ] |
| DET-DC-003 | Design Outputs (산출물 목록) | 21 CFR 820.30(d), ISO 13485 §7.3.4 | [ ] |
| DET-DC-004 | Design Review Records (단계별 검토 의사록) | 21 CFR 820.30(e), ISO 13485 §7.3.5 | [ ] |
| DET-DC-005 | Design Transfer Record | 21 CFR 820.30(h), ISO 13485 §7.3.8 | [ ] |
| DET-DC-006 | Design Changes Log | 21 CFR 820.30(i), ISO 13485 §7.3.9 | [ ] |

---

### Section 3 — 성능·검증·유효성 확인 (V&V)

| 문서 번호 | 문서명 | 표준 근거 | 상태 |
|---|---|---|---|
| DET-VV-001 | Verification & Validation Plan | ISO 13485 §7.3.6, 7.3.7 | [ ] |
| DET-VV-002 | **DQE (Detective Quantum Efficiency) 시험 보고서** | **IEC 62220-1-1:2015** | [ ] |
| DET-VV-003 | MTF (Modulation Transfer Function) 시험 보고서 | IEC 62220-1-1:2015 §6 | [ ] |
| DET-VV-004 | NNPS (Normalized Noise Power Spectrum) 시험 보고서 | IEC 62220-1-1:2015 §7 | [ ] |
| DET-VV-005 | 전기안전 시험 보고서 | **IEC 60601-1 Ed.3.2** | [ ] |
| DET-VV-006 | EMC 시험 보고서 | **IEC 60601-1-2:2014+AMD1:2020** | [ ] |
| DET-VV-007 | 방사선 방호 시험 보고서 | IEC 60601-1-3:2008+A1+A2 | [ ] |
| DET-VV-008 | SW 검증 보고서 (내장 펌웨어) | IEC 62304:2006+A1:2015 | [ ] |
| DET-VV-009 | 사용적합성 평가 보고서 | IEC 62366-1:2015+AMD1:2020 | [ ] |
| DET-VV-010 | 생체적합성 평가 보고서 (환자 접촉부 해당 시) | ISO 10993-1:2018 | [ ] |
| DET-VV-011 | 내환경성 시험 보고서 (수송·보관) | IEC 60068 시리즈 | [ ] |
| DET-VV-012 | 배터리 안전 시험 보고서 (무선 detector 해당 시) | IEC 62133-2 | [ ] |
| DET-VV-013 | 사이버보안 평가 보고서 (무선·네트워크 연결 시) | IEC 81001-5-1:2021 | [ ] |

---

### Section 4 — 위험 관리 (Risk Management)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-RM-001 | Risk Management Plan | ISO 14971:2019 §4 | [ ] |
| DET-RM-002 | Hazard Identification & Risk Estimation | ISO 14971:2019 §5 | [ ] |
| DET-RM-003 | Risk Control Measures | ISO 14971:2019 §6 | [ ] |
| DET-RM-004 | Residual Risk Evaluation & Benefit-Risk | ISO 14971:2019 §7, §8 | [ ] |
| DET-RM-005 | Risk Management Report | ISO 14971:2019 §9 | [ ] |
| DET-RM-006 | FMEA (Failure Mode and Effects Analysis) | IEC 60812 | [ ] |

---

### Section 5 — 라벨링·IFU (Labeling)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-LB-001 | 제품 라벨 (한/영/EU) | MDR Annex I §23, 21 CFR 801, 의료기기법 §19 | [ ] |
| DET-LB-002 | Instructions for Use (IFU) | MDR Annex I §23, 21 CFR 801.109 | [ ] |
| DET-LB-003 | 심볼 목록 (Symbol Glossary) | ISO 15223-1:2021 | [ ] |
| DET-LB-004 | UDI 라벨 설계서 | MDR Article 27, FDA UDI Rule (21 CFR 830) | [ ] |

---

### Section 6 — 임상 평가 (Clinical Evaluation)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-CE-001 | Clinical Evaluation Plan (CEP) | MDR Annex XIV Part A | [ ] |
| DET-CE-002 | Clinical Evaluation Report (CER) | MDR Annex XIV Part A, MDCG 2020-13 | [ ] |
| DET-CE-003 | Literature Search Protocol & Report | MEDDEV 2.7/1 Rev.4 | [ ] |
| DET-CE-004 | Equivalence Assessment (동등성 평가) | MDCG 2020-5 | [ ] |
| DET-CE-005 | PMCF Plan | MDR Annex XIV Part B, MDCG 2020-7 | [ ] |
| DET-CE-006 | FDA Clinical Data Justification (510(k) 해당 시) | FDA Guidance | [ ] |

---

### Section 7 — 품질경영 연계 문서 (QMS)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-QM-001 | Supplier Qualification Record (주요 부품사) | ISO 13485 §7.4 | [ ] |
| DET-QM-002 | Non-Conformance Report (NCR) 이력 | ISO 13485 §8.3 | [ ] |
| DET-QM-003 | CAPA 기록 | ISO 13485 §8.5.2 | [ ] |

---

### Section 8 — 인허가 및 규정 적합성

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| DET-RA-001 | Regulatory Strategy Summary (3개 지역) | 내부 정책 | [ ] |
| DET-RA-002 | Classification Justification | Annex VIII Rule 10, 21 CFR 892.1680 | [ ] |
| DET-RA-003 | GSPR Checklist (MDR Annex I) | MDR Annex II §4 | [ ] |
| DET-RA-004 | EU Declaration of Conformity (DoC) | MDR Article 19, Annex IV | [ ] |
| DET-RA-005 | FDA 510(k) Submission Package | 21 CFR 807 Subpart E | [ ] |
| DET-RA-006 | MFDS 기술문서 심사 신청서 | 의료기기법 시행규칙 [별지 제4호] | [ ] |
| DET-RA-007 | EUDAMED 등록 기록 | MDR Article 29, 31 | [ ] |

---

## 3. 문서 간 관계 다이어그램

```
Design Plan (DET-DC-001)
  ├── Design Inputs (DET-DC-002)
  │     └── Design Outputs (DET-DC-003)
  │           ├── V&V 시험 보고서 (DET-VV-002~013)
  │           └── Risk Management (DET-RM-001~006)
  ├── Design Review (DET-DC-004)
  └── Design Transfer (DET-DC-005)
        └── Device Master Record (DMR) [DHF와 분리]

DHF 완결 체크:
  DoC (DET-RA-004) ← 기술문서 + GSPR + V&V + RM + CE 근거
```

---

## 4. DQE 시험 (IEC 62220-1-1:2015) 핵심 요건

DQE는 X-ray Detector의 핵심 성능 지표이며 FDA 510(k) eSTAR Performance Testing에 필수 항목.

| 항목 | 기준 | 비고 |
|---|---|---|
| **표준 버전** | IEC 62220-1-1:2015 (정지영상) | IEC 62220-1-3:2008은 동적 영상 전용 |
| **측정 조건** | RQA5 (70kV, 21mm Al 필터) 방사선 품질 | X-ray 빔 품질 표준화 |
| **출력 지표** | DQE(f): 공간 주파수의 함수 | DQE(0), DQE(1 lp/mm), DQE(Nyquist/2) 보고 |
| **보조 지표** | MTF(f), NNPS(f) | DQE 산출 시 함께 측정 |
| **Air Kerma 범위** | 1 µGy ~ 10 µGy (일반 촬영) | 제조사 지정 동작 범위 내 다점 측정 |
| **인증 시험기관** | ISO/IEC 17025 인정 시험기관 권장 | FDA 심사 시 시험기관 자격 검토 |

---

## 5. 3개 지역 기술문서 제출 패키지 비교

| 구분 | FDA 510(k) | MDR (NB 심사) | MFDS 기술문서 |
|---|---|---|---|
| DHF 제출 여부 | **요약본** 제출 (상세 DHF는 QSR Inspection 시 열람) | Annex II 전체 제출 | 지정 양식 기술문서 제출 |
| 기술문서 보관 기간 | 제품 폐기 후 2년 | 마지막 기기 공급 후 **10년** (이식형 15년) | 폐기 후 **5년** |
| 언어 | 영어 | 해당 회원국 공식 언어 또는 영어 (NB 합의) | **한국어** (일부 영문 병기 허용) |
| 핵심 차이 | eSTAR 전자 제출 의무 | CE Technical File / Annex II 전체 구조 준수 | 사용목적·작용원리·성능·안전성 4개 섹션 |
