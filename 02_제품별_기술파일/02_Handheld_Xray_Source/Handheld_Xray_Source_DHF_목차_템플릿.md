> 최종 갱신: 2026-05-04 (자동보강 #15)
> 근거: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-820/subpart-C (21 CFR 820.30) | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.30 (21 CFR 1020.30) | https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (MDR Annex II/III) | https://webstore.iec.ch/en/publication/2681 (IEC 60601-2-65:2012) | https://federalregister.gov/documents/2023/01/20/2023-00922 (FDA 방사선 보고 개정) | https://federalregister.gov/documents/2024/09/30/2024-22332 (FDA Radiation Control 가이던스)

# Handheld X-ray Source — DHF (Design History File) 목차·각 문서 템플릿

## 1. DHF 개요 및 지역별 근거

| 지역 | 요구사항 | 근거 |
|---|---|---|
| **FDA (US)** | DHF 수립·유지 의무 + 방사선 성능기준 보고 | 21 CFR 820.30(j) → QMSR (2024-02-02 발효) + **21 CFR Part 1020 (방사선 성능기준)** |
| **MDR (EU)** | Technical Documentation (Annex II) + PMS TD (Annex III) | MDR 2017/745 Article 10(4), **Class IIb → NB 전수 심사** |
| **MFDS (KR)** | 기술문서 작성·보관 + 방사선 발생장치 안전관리 | 의료기기법 제26조, **진단용 방사선 발생장치의 안전관리에 관한 규칙** (의료법 시행규칙 부속, 2025-07-18 개정) |

**제품 분류 요약**:

| 지역 | 등급 | 주요 근거 |
|---|---|---|
| FDA | Class II | 21 CFR 892.1720, Product Code **IZL** (Mobile) / **EAF** (Stationary) |
| MDR | **Class IIb** | Annex VIII Rule 10: 전리방사선 방출 능동 진단기기 |
| MFDS | 2등급 (출력·용도에 따라 3등급 가능) | 의료기기 품목 및 등급 분류에 관한 규정 |

> **주의**: MDR Class IIb는 NB(Notified Body) **전수 심사** 의무. Class IIa 대비 심사 부담 대폭 증가.

---

## 2. DHF 문서 목차 (완전 목록)

### Section 1 — 제품 기술 설명 (Device Description)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-DD-001 | Device Description (한영) — X-ray Generator 상세 | MDR Annex II §1.1, eSTAR §1 | [ ] |
| HHS-DD-002 | Intended Use / Indications for Use / 적용 부위 제한 | 21 CFR 807.87(e), MDR Annex II §1.1 | [ ] |
| HHS-DD-003 | Principle of Operation (X선 발생 원리·관전압·관전류) | MFDS 기술문서 §2 | [ ] |
| HHS-DD-004 | Block Diagram / System Architecture (전원·고압·X선관·제어회로) | MDR Annex II §1.1(a) | [ ] |
| HHS-DD-005 | BOM (Bill of Materials) — X선관·고압발생부·배터리·하우징 | ISO 13485:2016 §7.3.7 | [ ] |
| HHS-DD-006 | X-ray Tube Assembly 사양서 (kVp·mA·초점크기·튜브 특성) | IEC 60601-2-28:2017 §201.7 | [ ] |
| HHS-DD-007 | 누설선량·조사야 설계 사양 | 21 CFR 1020.30(l) | [ ] |
| HHS-DD-008 | 배터리 사양서 (유형·용량·충방전 횟수·BMS) | IEC 62133-2 (해당 시) | [ ] |
| HHS-DD-009 | Variants / Configurations 목록 | MDR Annex II §1.1(b) | [ ] |
| HHS-DD-010 | Accessories 목록 (홀더·스트랩·충전기 등) | MDR Annex II §1.1(b) | [ ] |

---

### Section 2 — 설계 개발 관리 (Design & Development Controls)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-DC-001 | Design & Development Plan | 21 CFR 820.30(b), ISO 13485 §7.3.2 | [ ] |
| HHS-DC-002 | Design Inputs (요구사항 목록) — 방사선 안전 요건 포함 | 21 CFR 820.30(c), ISO 13485 §7.3.3 | [ ] |
| HHS-DC-003 | Design Outputs (산출물 목록) | 21 CFR 820.30(d), ISO 13485 §7.3.4 | [ ] |
| HHS-DC-004 | Design Review Records (단계별 검토 의사록) | 21 CFR 820.30(e), ISO 13485 §7.3.5 | [ ] |
| HHS-DC-005 | Design Transfer Record | 21 CFR 820.30(h), ISO 13485 §7.3.8 | [ ] |
| HHS-DC-006 | Design Changes Log | 21 CFR 820.30(i), ISO 13485 §7.3.9 | [ ] |
| HHS-DC-007 | System-level Requirements Specification (SRS — 방사선·전기·기계 요건 통합) | IEC 60601-2-28, 21 CFR 1020.30 | [ ] |

---

### Section 3 — 방사선 안전 성능 (Radiation Safety Performance)

> **FDA 고유 요건**: Handheld X-ray Source는 의료기기 인허가 외에 **21 CFR Part 1020** 방사선 성능기준 준수 + **Form FDA 2579** (Report of Assembly) 제출 의무.

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-RS-001 | 누설선량 시험 보고서 | 21 CFR 1020.30(l): 50 mR/h @ 1m 초과 불가 | [ ] |
| HHS-RS-002 | 조사야 (Beam Limitation) 정확도 시험 | 21 CFR 1020.31(a) | [ ] |
| HHS-RS-003 | 관전압 정확도 시험 (kVp 오차) | 21 CFR 1020.31 | [ ] |
| HHS-RS-004 | 관전류·mAs 정확도 및 재현성 시험 | 21 CFR 1020.31 | [ ] |
| HHS-RS-005 | Air Kerma 선량 재현성 (CV ≤ 0.05 권고) | IEC 60601-2-28 §201.12.4 | [ ] |
| HHS-RS-006 | 초점-피부 최소 거리 (Focal Spot to Skin Distance) | 21 CFR 1020.31(g): 최소 18 cm (진단 일반) | [ ] |
| HHS-RS-007 | 방사선 방호 시험 보고서 (IEC 60601-1-3 기반) | IEC 60601-1-3:2008+A2:2020 | [ ] |
| HHS-RS-008 | Form FDA 2579 — Report of Assembly 제출 기록 | 21 CFR 1020.30(d) | [ ] |
| HHS-RS-009 | Annual Report 계획 (1020.30(d) 연차 보고) | 21 CFR 1020.30(d) | [ ] |
| HHS-RS-010 | MFDS 방사선 발생장치 신고·검사 대응 기록 | 의료기관 설치 3일 전 신고, 3년 주기 검사 근거 자료 | [ ] |

---

### Section 4 — V&V (Verification & Validation)

| 문서 번호 | 문서명 | 근거 표준 | 상태 |
|---|---|---|---|
| HHS-VV-001 | 전기안전 시험 보고서 | IEC 60601-1 Ed.3.2 | [ ] |
| HHS-VV-002 | EMC 시험 보고서 | IEC 60601-1-2:2014+A1:2020 | [ ] |
| HHS-VV-003 | X-ray Tube Assembly 시험 보고서 | IEC 60601-2-28:2017 | [ ] |
| HHS-VV-004 | 방사선 방호 시험 보고서 | IEC 60601-1-3:2008+A2:2020 | [ ] |
| HHS-VV-005 | 배터리 안전 시험 보고서 | IEC 62133-2 (배터리형) | [ ] |
| HHS-VV-006 | 기계적 강도 시험 (낙하·진동·충격) | IEC 60601-1 §15 + 제조자 사양 | [ ] |
| HHS-VV-007 | IP 등급 시험 보고서 | IEC 60529 (해당 시) | [ ] |
| HHS-VV-008 | 사용적합성 평가 보고서 (촬영자 피폭 최소화·오사용 시나리오) | IEC 62366-1:2015+A1:2020 | [ ] |
| HHS-VV-009 | 소프트웨어 V&V (내장 SW 해당 시) | IEC 62304:2006+A1:2015 | [ ] |
| HHS-VV-010 | 사이버보안 V&V (무선 기능 포함 시 필수) | FDA Cybersecurity Guidance 2023 | [ ] |
| HHS-VV-011 | 생체적합성 평가 (환자 접촉부 해당 시) | ISO 10993-1 | [ ] |

---

### Section 5 — 위험관리 (Risk Management)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-RM-001 | Risk Management Plan | ISO 14971:2019 §4 | [ ] |
| HHS-RM-002 | Risk Analysis — FMEA (방사선 위해·배터리 위해·기계적 위해 포함) | ISO 14971:2019 §5 | [ ] |
| HHS-RM-003 | Risk Evaluation & Control | ISO 14971:2019 §6·§7 | [ ] |
| HHS-RM-004 | Residual Risk Acceptability 평가 | ISO 14971:2019 §8 | [ ] |
| HHS-RM-005 | Risk Management Report | ISO 14971:2019 §9 | [ ] |

**Handheld X-ray Source 고유 Risk 항목**:
- 방사선 과다 피폭 (촬영자 / 환자 / 제3자)
- 배터리 과열·폭발 (낙하·충격 시)
- 고전압부 감전
- 기계적 낙하로 인한 X선관 파손 → 방사선 누출
- 비의도적 X선 방출 (인터록 실패)

---

### Section 6 — 라벨링 (Labeling & IFU)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-LB-001 | 제품 라벨 (방사선 경고·UDI·전원 정보) | 21 CFR 801, MDR Annex I §23, 의료기기법 시행규칙 | [ ] |
| HHS-LB-002 | IFU (사용설명서) — 촬영자 피폭 최소화·PPE 착용 필수 포함 | 21 CFR 801.109, IEC 60601-2-28 §201.7.9 | [ ] |
| HHS-LB-003 | Quick Reference Guide (촬영 절차·안전 주의사항) | — | [ ] |
| HHS-LB-004 | UDI 등록 기록 (GUDID / EUDAMED / UDI 포털) | 21 CFR Part 830, MDR Article 27, 의료기기법 §22 | [ ] |
| HHS-LB-005 | 방사선 경고 심볼 적용 기록 | ISO 15223-1:2021 (심볼 0014) | [ ] |

---

### Section 7 — 임상 평가 (Clinical Evaluation)

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-CE-001 | Clinical Evaluation Plan (CEP) | MDR Article 61, MEDDEV 2.7.1 Rev.4 | [ ] |
| HHS-CE-002 | Literature Review (동등 제품 임상 데이터) | MEDDEV 2.7.1 Rev.4 §9 | [ ] |
| HHS-CE-003 | Clinical Evaluation Report (CER) | MDR Annex XIV Part A | [ ] |
| HHS-CE-004 | PMCF Plan (Class IIb 필수) | MDR Annex XIV Part B | [ ] |
| HHS-CE-005 | 510(k) Clinical Section (FDA, 임상 데이터 필요 시) | FDA eSTAR Clinical Section | [ ] |

---

### Section 8 — 품질·제조·PMS

| 문서 번호 | 문서명 | 근거 | 상태 |
|---|---|---|---|
| HHS-QM-001 | Manufacturing Specification & Process Validation | ISO 13485 §7.5, 21 CFR 820.75 | [ ] |
| HHS-QM-002 | Inspection & Test Records (출하 검사) | ISO 13485 §8.2.4 | [ ] |
| HHS-QM-003 | PMS Plan | MDR Annex III §1.1, 21 CFR 803 | [ ] |
| HHS-QM-004 | PSUR (Class IIb, MDR 발효 후 연 1회 이상) | MDR Article 86 | [ ] |
| HHS-QM-005 | Vigilance / MDR Reporting 절차 | MDR Article 87, 21 CFR Part 803 | [ ] |

---

## 3. 3개 지역 제출 패키지 비교

| 제출 항목 | FDA (US) | MDR (EU) | MFDS (KR) |
|---|---|---|---|
| **DHF 포함 여부** | eSTAR 각 섹션에 요약 + 참조 | Annex II Technical Documentation 전체 | 기술문서 (요약 + 참조 허용) |
| **방사선 성능기준 보고** | **Form FDA 2579** 필수 + Annual Report | 없음 (CE 인증으로 대체) | 식약처 제조허가 신청 + 방사선 발생장치 신고 |
| **NB 심사** | 해당 없음 (510(k) 자체 심사) | **Class IIb → NB 전수 심사 의무** | 해당 없음 (식약처 자체) |
| **임상 데이터** | 동등성 입증으로 대체 가능 | CER 필수 (PMCF 포함) | 국내 임상 또는 해외 임상 인정 |
| **UDI 등록** | GUDID (2024 이후 Class II 의무) | EUDAMED (단계적 시행) | 의료기기통합정보시스템 (UDI 포털) |
| **방사선 안전 추가 규제** | 21 CFR Part 1020 (방사선 성능기준) | Euratom 2013/59 각국 구현 | 진단용 방사선 발생장치 안전관리 규칙 |

---

## 4. 핵심 인허가 전략 포인트

### 시스템 vs 구성품 허가 결정
- **통합 시스템 허가**: Handheld Source + Detector + GUI SW → MDR Class IIb 상향 가능성. 일체 전략으로 CE Mark 획득.
- **개별 허가**: 각각의 등급·경로로 진행. FDA 510(k) 별도 제출, 일정·비용 증가.
- **권장**: Pre-Submission (FDA Q-Sub) 또는 NB Early Dialogue에서 분류 전략 사전 합의.

### 방사선 문서화 이중 체계
- **인허가용**: 의료기기 기술문서 내 V&V + 위험관리 + 방사선 성능기준 준수 기록
- **의료기관용**: IFU + 안전관리 매뉴얼 + PPE 착용 가이드 (한국어 필수)

### FDA 방사선 보고 일정 관리
- **Form FDA 2579**: 제품 출하 전 제출 (혹은 수입 신고 시 Form FDA 2877)
- **Annual Report**: 매년 1회, 직전 연도 판매·수입 수량 + 변경사항 보고
- **2024-09-30 FDA 가이던스 갱신**: "Clarification of Radiation Control Regulations" 최신본 확인 필수

### MFDS 국내 방사선 안전관리
- 의료기관 설치 3일 전 시·군·구 보건소 신고 (의료기관 책임)
- 3년 주기 검사: 제조자는 검사 기준 적합 데이터 의료기관에 제공해야 함
- 진단용 방사선 발생장치 검사 기준 (2025-07-18 개정): 누설선량·조사야·kVp·mAs 정확도

---

## 5. 자사 Handheld X-ray Source 시험 체크리스트

- [ ] 전기안전 (IEC 60601-1 Ed.3.2)
- [ ] EMC (IEC 60601-1-2:2014+A1:2020)
- [ ] X-ray Tube Assembly (IEC 60601-2-28:2017) — 관전압·누설선량·초점크기
- [ ] 방사선 방호 (IEC 60601-1-3:2008+A2:2020)
- [ ] 누설선량 ≤ 50 mR/h @ 1m (21 CFR 1020.30(l))
- [ ] 조사야 정확도 (21 CFR 1020.31(a))
- [ ] kVp 정확도 (21 CFR 1020.31)
- [ ] mA·mAs 정확도 및 재현성 (21 CFR 1020.31)
- [ ] Air Kerma 선량 재현성 (CV ≤ 0.05, IEC 60601-2-28)
- [ ] 기계적 강도 (낙하·진동·충격 — Handheld 핵심)
- [ ] IP 등급 (IEC 60529, 해당 시)
- [ ] 배터리 안전 (IEC 62133-2, 배터리형)
- [ ] 사용적합성 (IEC 62366-1) — 촬영자 피폭·오사용 시나리오 포함
- [ ] 사이버보안 (무선 포함 시 FDA Cyber Device 해당, SBOM 필수)
- [ ] 생체적합성 (환자 접촉 면 해당 시, ISO 10993-1)
- [ ] Form FDA 2579 제출 준비 (출하 전)
