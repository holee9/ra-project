> 최종 갱신: 2026-05-01 (자동보강 #7)
> 근거: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/requests-feedback-and-meetings-medical-device-submissions-q-submission-program | https://www.federalregister.gov/documents/2025/05/29/2025-09618/requests-for-feedback-and-meetings-for-medical-device-submissions-the-q-submission-program-guidance | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/electronic-submission-template-medical-device-q-submissions | https://medicaldeviceacademy.com/fda-pre-submission/

# FDA Pre-Submission (Q-Sub) 작성 가이드 및 샘플 질문

## 1. 개요

**Q-Submission (Q-Sub)** 프로그램은 제조사가 의료기기 마케팅 제출(510(k), PMA, De Novo, IDE 등) 이전 또는 심사 중에 FDA로부터 공식 피드백을 받기 위한 상호작용 채널이다.

| 항목 | 내용 |
|---|---|
| 근거 guidance | *Requests for Feedback and Meetings for Medical Device Submissions: The Q-Submission Program* — **Final, May 2025** (CDRH/CBER) |
| 이전 버전 | June 2, 2023 (본 2025 Final이 supersede) |
| 제출 식별자 | `Q-Sub` 번호 (예: Q200012) — FDA 접수 후 부여 |
| 제출 채널 | CDRH Portal (eSTAR PreSTAR, 권고) 또는 CD/DVD 우편 |

---

## 2. Q-Sub 유형 4종

| 유형 | 약칭 | 목적 | FDA 응답 목표 |
|---|---|---|---|
| **Pre-Submission** | Pre-Sub | 제출 전 규제 전략·시험 방법·실질 동등성 등 공식 피드백 요청 | 서면 피드백: **70 calendar days** (MDUFA V, 90% 목표) / 회의 포함: **100 calendar days** |
| **Submission Issue Request** | SIR | 510(k)/PMA 심사 중 발생한 이슈 해소 | 30일 내 회의 일정 확정 목표 |
| **Study Risk Determination** | SRD | IDE 신청 전 임상시험 SR(Significant Risk)/NSR 판정 요청 | 90일 내 회의 또는 서면 답변 |
| **Informational Meeting** | IM | 공식 피드백 없이 정보 공유 목적 (multi-topic 개발 현황 등) | 일정 협의 후 진행 (MDUFA 목표 없음) |

> **실무 포인트**: Pre-Sub은 MDUFA V에서 유일하게 공식 성과 목표(70/100일)가 설정된 유형. SIR·SRD·IM은 MDUFA 목표 없음.

---

## 3. Pre-Sub 작성 구조 및 필수 요소

### 3.1 Cover Letter (표지 서한)

| 필드 | 내용 |
|---|---|
| 제목 | "Pre-Submission for [Device Name]" |
| 회사명, 주소 | 정식 등록 정보 |
| Primary Contact | 이름, 직함, 전화, 이메일 |
| Regulatory Contact | 담당 RA 담당자 |
| 제출 목적 | 한 문단 (어떤 피드백이 필요한가) |
| 계획 중인 제출 유형 | 예: "510(k) 제출 예정" / "IDE 신청 전 SRD 요청" |
| 회의 요청 여부 | 서면 피드백만 / 회의 병행 중 선택 |

### 3.2 Device Description (기기 설명)

- 제품의 기본 작동 원리 (scientific concept)
- 물리적·기능적 특성 (주요 성능 파라미터 포함)
- 의도 사용 목적 (Intended Use) 초안
- 적용 규제 경로 (510(k) 경우 Predicate device 초안)

### 3.3 Prior FDA Interactions (기존 FDA 소통 이력)

- 관련 이전 Q-Sub 번호 및 요지
- 510(k)/PMA/IDE 번호 (존재 시)
- 기존 상호작용 핵심 요약 (1~2문장)

> 최초 Pre-Sub이면 "No prior FDA interactions for this device"로 명시.

### 3.4 Proposed Regulatory Strategy & Testing Plan

- 510(k) 경로인 경우: Predicate device, Substantial Equivalence 논거 초안
- 주요 시험 계획 목록 (표준, 방법론, 샘플 수)
- SaMD 해당 시: Software Documentation Level 판단 초안
- Cybersecurity: Cybersecurity tier (Standard / Enhanced) 초안

### 3.5 Specific Questions (핵심)

**2025 Final Guidance 권고 기준:**
- **총 7~10개 질문**, **최대 4개 실질적 주제(substantive topic)** 내로 제한
- 질문 간 상호 독립성 유지 (종속적 질문 나열 금지 — FDA의 명확한 피드백 저해)
- 각 질문에 **배경(Background)** + **Question** 형식 권장

**질문 우선순위 결정 원칙:**
1. 제출 전 확인이 필수인 것 (시험 방법, 동등성 논거 수용 여부)
2. 비용/시간 투자가 크기 전에 방향성을 얻어야 하는 것
3. 규제 경로 선택에 직접 영향을 주는 것

---

## 4. 자사 3개 제품별 적합 Q-Sub 주제 및 샘플 질문

### 4.1 X-ray Detector (X선 검출기)

**적합 Q-Sub 시점**: 510(k) 제출 전, 특히 신규 검출기 기술(CMOS flat-panel 등) 도입 시

**추천 Q-Sub 주제 및 샘플 질문**

| # | 주제 | 샘플 질문 (영문) |
|---|---|---|
| Q1 | Predicate Selection | "Is [Predicate Device K######] an appropriate predicate for our CMOS flat-panel X-ray detector intended for [use setting]? Are there specific performance characteristics FDA considers not substantially equivalent to the predicate?" |
| Q2 | DQE Testing Protocol | "We propose to measure Detective Quantum Efficiency (DQE) per IEC 62220-1-1:2015 at [specified RQA beam quality]. Is this testing approach acceptable to demonstrate performance equivalence?" |
| Q3 | IEC 60601-2-54 Testing Scope | "For our X-ray detector (detector-only, no integrated generator), which sub-clauses of IEC 60601-2-54:2022 does FDA consider applicable? Specifically, do Clauses [X, Y] apply to a passive detector assembly?" |
| Q4 | Cybersecurity Tier | "Our detector connects to a DICOM workstation via Ethernet. Does FDA consider this device 'Tier 1 — Standard' per the 2023 Cybersecurity Final Guidance?" |

---

### 4.2 Handheld X-ray Source (휴대형 X선 발생장치)

**적합 Q-Sub 시점**: 510(k) 제출 전, 특히 21 CFR 1020.30 radiation safety compliance 전략 수립 시

**추천 Q-Sub 주제 및 샘플 질문**

| # | 주제 | 샘플 질문 (영문) |
|---|---|---|
| Q1 | Predicate & Regulatory Pathway | "We are developing a handheld X-ray source with [battery power, [kVp] range, intended for dental/extremity use]. Is a 510(k) the appropriate pathway? Is [K######] an appropriate predicate?" |
| Q2 | 21 CFR 1020.30 Compliance | "Our device is designed to meet 21 CFR 1020.30 (Diagnostic X-ray systems). Do we need to submit a Radiation Safety report per 21 CFR 1020.30(d) as part of the 510(k)?" |
| Q3 | Battery Safety Testing | "We plan to use IEC 62133-2:2017 for battery safety testing. Is this acceptable, or does FDA require additional tests for a handheld radiation-emitting product?" |
| Q4 | Scatter Radiation & Shielding | "We propose to characterize scatter radiation at [distance, angle] per [test protocol]. Is this approach sufficient to address the radiation safety considerations for a handheld device without a fixed room?" |

---

### 4.3 촬영실 GUI Software (Radiography Room Acquisition Software)

**적합 Q-Sub 시점**: 510(k) 제출 전, SaMD 분류·Software Documentation Level·사이버보안 Tier 확인 시

**추천 Q-Sub 주제 및 샘플 질문**

| # | 주제 | 샘플 질문 (영문) |
|---|---|---|
| Q1 | SaMD Standalone Classification | "Our software controls image acquisition parameters (kVp, mAs) and displays DICOM images for physician review. Does FDA classify this as a SaMD requiring a separate 510(k), or is it a software accessory to the hardware?" |
| Q2 | Software Documentation Level | "Based on our proposed Intended Use and SOUP list, we assess the device as IEC 62304 Class B (Enhanced Safety Class). Does FDA agree, or does the image display function for diagnostic use elevate this to Class C?" |
| Q3 | OTS Software Policy | "Our software incorporates [off-the-shelf component]. We plan to document it per FDA's 2019 OTS Software Guidance. Is a full validation of the OTS component required, or is vendor documentation with our integration testing sufficient?" |
| Q4 | Cybersecurity Tier | "The software connects to PACS via HL7/DICOM and has no direct patient contact. We assess it as 'Tier 1 — Standard' per the 2023 Cybersecurity Guidance. Does FDA agree?" |

---

## 5. MDUFA V 타임라인 및 절차 흐름

```
제출 (CDRH Portal / CD)
        │
        ▼ [Day 0]
FDA 접수 확인 (15일 내 접수 번호 Q###### 부여)
        │
        ▼ [Day ~15]
FDA 리뷰 착수 → 내용 충분성 검토
        │
  ┌─────┴─────┐
서면 피드백만    회의 병행 요청
  │              │
  ▼ [Day 70]   ▼ [Day 100]
서면 피드백 발송  회의 개최 (agenda·분钟 작성은 제출자 책임)
```

**제출자 의무 사항 (2025 Guidance)**:
- 회의 일정 확정 후 **최소 5 business days 전** agenda 전달
- 회의 후 **30일 내** Meeting Minutes(초안) 제출 → FDA 3주 내 검토·확정
- Pre-Sub 피드백은 **법적 구속력 없음** (Non-binding recommendation)

---

## 6. 전자 제출 — PreSTAR (eSTAR for Q-Sub)

| 항목 | 내용 |
|---|---|
| 상태 | **Draft Guidance** issued 2025-05-29 (아직 Final 아님) |
| 도구 | PreSTAR — eSTAR 기반 PDF 인터랙티브 폼 |
| 현재 | 자발적(voluntary) 제출 허용; 향후 의무화 계획 (확정 시점 미정) |
| 접근 | CDRH Portal → Pre-Submission eSTAR |
| 장점 | 구조화된 서식 → 누락 방지, FDA 처리 효율 향상 |

> **자사 행동 지시**: PreSTAR는 현재 의무 아님. 단, CDRH Portal 계정을 미리 확보하고 PreSTAR 양식에 익숙해질 것을 권장. Final Guidance 발효 즉시 의무 전환 예정이므로 모니터링 필요.

---

## 7. 3개 지역 Pre-Sub 동등 제도 비교

| 항목 | FDA (미국) | MFDS (한국) | MDR/NB (유럽) |
|---|---|---|---|
| 제도명 | Pre-Submission (Q-Sub) | 사전상담 (제조·수입업 허가 전 상담) | NB Early Dialogue / Scientific Advice |
| 법적 구속력 | 없음 (non-binding) | 없음 (참고 의견) | 없음 (NB opinion) |
| 응답 목표 | 70일 (서면) / 100일 (회의) | 명시 없음 (통상 수 주) | NB별 상이 (30~90일) |
| 비용 | 무료 (PDUFA/MDUFA 포함) | 무료 | NB 과금 (별도 견적) |
| 온라인 제출 | CDRH Portal (PreSTAR) | 민원24 / 온라인 신청 [검증 필요] | NB 시스템별 상이 |
| 제출 빈도 제한 | 없음 (단, 과도한 중복 질문 지양 권고) | 없음 | NB별 상이 |
| X-ray 특이사항 | CDRH 방사선 부서(OSB) 담당 | 의료기기안전국 체외진단기기과 [검증 필요] | NB 방사선 전문 심사관 배정 |

**자사 행동 지시 (3개 지역)**:
- **FDA**: 510(k) 제출 6~12개월 전 Pre-Sub 1회 필수 고려 (시험 전략 확정 목적)
- **MFDS**: 기술문서 작성 착수 전 사전상담 신청 → 등급분류·성능시험 기준 확인
- **MDR/NB**: NB 선정 직후 Early Dialogue 요청 → GSPR 맵핑·CE plan 방향 확인

---

## 8. Pre-Sub 제출 전 체크리스트

- [ ] 제품의 Intended Use 초안 완성
- [ ] Predicate device 1~2개 식별 (510(k) 경로의 경우)
- [ ] 핵심 미결 이슈 정리 → 질문 7~10개, 4개 주제 이내 압축
- [ ] 기존 FDA 소통 이력 정리 (없으면 명시)
- [ ] 회의 요청 여부 결정 (서면만 vs. 회의 병행)
- [ ] CDRH Portal 계정 확보 및 PreSTAR 양식 검토
- [ ] Cover Letter + Device Description + Questions 초안 작성
- [ ] 내부 검토 (RA + R&D + QA) → 최종 확정
- [ ] 제출 후 Q# 번호 수령 및 캘린더에 70일/100일 마감 등록

---

## 9. 참고 자료

| 자료 | URL | 발행·개정일 |
|---|---|---|
| Q-Sub Program Final Guidance (2025) | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/requests-feedback-and-meetings-medical-device-submissions-q-submission-program | 2025-05-29 |
| Federal Register Notice (2025) | https://www.federalregister.gov/documents/2025/05/29/2025-09618/requests-for-feedback-and-meetings-for-medical-device-submissions-the-q-submission-program-guidance | 2025-05-29 |
| PreSTAR eSTAR for Q-Sub (Draft) | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/electronic-submission-template-medical-device-q-submissions | 2025-05-29 |
| MDUFA V Performance Goals (FY2023–2027) | https://www.fda.gov/media/158308/download | 2022 |
| Medical Device Academy: Pre-Sub Format | https://medicaldeviceacademy.com/fda-pre-submission/ | 2025-10 갱신 |
