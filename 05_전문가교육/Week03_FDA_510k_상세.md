> 최종 갱신: 2026-05-23 (자동보강 #69)
> 근거: https://www.fda.gov/medical-devices/premarket-submissions-selecting-and-preparing-correct-submission/premarket-notification-510k | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E | https://www.fda.gov/media/82395/download | https://www.fda.gov/medical-devices/device-advice-comprehensive-regulatory-assistance/how-study-and-market-your-device | https://www.fda.gov/medical-devices/premarket-notification-510k/how-find-and-effectively-use-predicate-devices

# Week 3: FDA 510(k) 상세

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 3/12)
> **소요 시간**: 이론 3시간 + 실습 1.5시간 + 평가 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. FDA 510(k)의 법적 근거와 3가지 제출 유형(Traditional/Abbreviated/Special)을 구분한다.
2. Substantial Equivalence(SE) 5단계 판정 흐름도를 적용하여 자사 제품의 SE 성립 여부를 판단한다.
3. eSTAR 기반 제출 절차와 심사 타임라인(RTA→Substantive Review→AI→Decision)을 설명한다.
4. 자사 3개 제품의 Product Code, 제출 경로, 핵심 시험 요건을 도출한다.
5. FDA 510(k)·MFDS 허가·MDR CE marking 3지역 비교 관점에서 동시 제출 전략을 수립한다.

---

## 2. FDA 510(k) 제도 개요

### 2.1 법적 근거

```
[법령] FD&C Act (Federal Food, Drug, and Cosmetic Act)
  └─ Section 510(k): 신규 기기 시판 전 MDUFA 수수료 납부 후 신고 의무
  └─ Section 513(i): Substantial Equivalence 판정 기준

[규정] 21 CFR Chapter I, Subchapter H
  ├─ Part 807 Subpart E (§807.81~807.100): 510(k) 제출 요건·내용·면제
  ├─ Part 892: Radiology Devices — 자사 X-ray 제품 분류 조항
  └─ Part 1020 (§1020.30~1020.33): 진단용 X-ray Radiation Performance Standards

[주요 Guidance] (모두 현행 유효)
  - "The 510(k) Program: Evaluating Substantial Equivalence" (2014-07-28 Final)
  - "Deciding When to Submit a 510(k) for a Change to an Existing Device" (2017-10-25)
  - "Use of International Standard ISO 10993-1" (2020-09 Final)
  - "Cybersecurity in Medical Devices" (2023-09-27 Final)
  - "Predetermined Change Control Plan (PCCP)" (2024-12-03 Final, AI/ML)
```

### 2.2 적용 대상

| 항목 | 내용 |
|------|------|
| 적용 | Class I (일부), **Class II 대부분** |
| 목적 | 기존에 합법적으로 시판된 Predicate Device와 Substantially Equivalent함을 입증 |
| 면제 | §807.85 및 21 CFR xxx.9 조건 충족 시 (Class I/II 일부 품목) |
| 비적용 | Class III → PMA; 신규 저/중위험 신기술 → De Novo |

---

## 3. 510(k) 제출 유형 3가지

| 유형 | 대상 조건 | 특징 | 처리 기간 |
|------|-----------|------|-----------|
| **Traditional 510(k)** | 일반 사례 (Predicate 존재, guidance 없거나 한 개) | 섹션 전체 완성 제출 | 90일 Review Clock |
| **Abbreviated 510(k)** | 관련 Special Controls Guidance (FDA recognized standard) 존재 시 | FDA 인정 표준·guidance 준수 선언 + Summary Report 대체; 단, X-ray는 대부분 Traditional | 90일 (단축 가능) |
| **Special 510(k)** | 기존 510(k) Cleared 자사 제품의 **설계 변경** | Device Modification Summary + 위험 분석만 제출 (전체 섹션 불필요); Applicant-directed review | 30일 목표 |

> **실무 포인트**: X-ray Detector·Handheld Source 신규 제품은 **Traditional**이 표준. 이미 K번호 보유 중 SW 업데이트는 **Special** 가능성 검토.

---

## 4. Substantial Equivalence (SE) 판정

### 4.1 SE 5단계 Decision Point (FDA 2014 Guidance Appendix A)

```
DP1. Predicate이 Legally Marketed Device인가?
     │ No → NSE (De Novo 또는 PMA)
     │ Yes ↓
DP2. 동일한 Intended Use인가?
     │ No → NSE
     │ Yes ↓
DP3. 동일한 Technological Characteristics인가?
     │ Yes → DP5
     │ No ↓
DP4. 다른 기술특성이 Different Questions of Safety & Effectiveness를 제기하는가?
     │ Yes → NSE
     │ No ↓
DP5. 성능 데이터가 새 장치 ≥ Predicate 수준임을 입증하는가?
     │ Yes → SE (Clearance 가능)
     │ No → NSE
```

### 4.2 Predicate Device 선정 원칙

| 규칙 | 내용 |
|------|------|
| Primary Predicate | 반드시 1개. Intended use + 기술특성 가장 유사한 기clearance 510(k) |
| Additional Predicate | 보조 기술특성 매칭용 (복수 허용) |
| Reference Device | SE 판정 직접 근거 아님; "not a predicate, used for scientific support" 명시 |
| **Split Predicate 금지** | Intended use는 A에서, 기술특성은 B에서 차용 불가 (2014 Guidance 명시) |
| 검색 경로 | accessdata.fda.gov → 510(k) Database → Product Code 필터 |

### 4.3 SE 비교표 필수 행(rows)

```
규제 정보: Device Name / Product Code / Regulation Number / Class
의도된 사용: Intended Use / Indications for Use
기술특성: Principle of Operation / Design / Energy Source / Key Specs
안전: IEC 60601-1 / EMC / 방사선 방호 / 생체적합성
소프트웨어: Level of Concern / IEC 62304 class
사이버보안: 조치 현황 / SBOM 여부
```

---

## 5. eSTAR 제출 절차 (2023-10-01~ 의무)

### 5.1 eSTAR 개요

- eSTAR (Electronic Submission Template And Resource): PDF 기반 구조화 양식
- **2023-10-01~**: 모든 510(k) eSTAR 의무 (면제: 특정 소규모·해외 예외 상황)
- 제출 경로: CDRH Customer Collaboration Portal (온라인 업로드)
- RTA 자동화: eSTAR 정상 완성 시 Acceptance Review 간소화

### 5.2 eSTAR 주요 섹션

| 섹션 번호 | 내용 | X-ray 특이사항 |
|-----------|------|----------------|
| 1 | Device Description / Intended Use / IFU | 21 CFR 1020.30 적합 대상 명시 |
| 2 | Classification | Part 892 + Product Code |
| 3 | Substantial Equivalence | SE 비교표 필수 첨부 |
| 4 | Performance Testing | DQE, MTF, kVp 정확도, 누설선량 |
| 5 | Biocompatibility | 환자 접촉 부품 → ISO 10993-1 |
| 6 | Software | IEC 62304 Level of Concern |
| 7 | Cybersecurity | 2023-09 Final Guidance 준수 |
| 8 | Electrical Safety / EMC | IEC 60601-1 / 60601-1-2 |
| 9 | **Radiation Safety** | IEC 60601-1-3 / 21 CFR 1020.30~33 |
| 10 | Labeling | IFU + Form 3881 |
| 11 | Risk Analysis | ISO 14971:2019 |
| 12 | Quality System | QMSR (21 CFR 820, 2026-02-02~) |

### 5.3 심사 타임라인

```
Day 0      → 제출 (CDRH Portal)
Day 1~15   → Acceptance Review (RTA 체크; eSTAR 정상 시 자동)
Day 15     → Accepted → Review Clock 시작
Day 60     → Substantive Interactive Review (SIR) 가능 구간
Day 100    → Additional Information (AI) 요청 가능 상한
AI 수신 후  → Applicant 180일 이내 응답 의무 (미준수 → Withdrawal)
Day 90     → 목표 Decision (이론치); 실제 평균 130~160일 (AI 포함)
```

> **사실**: FDA CDRH FY2024 기준 510(k) 평균 Total Time to Decision은 약 144일 (AI 포함). RTA 비율은 약 33%.

---

## 6. 3개 지역 비교 매트릭스

| 항목 | FDA 510(k) | MFDS 허가/인증 | MDR CE Marking |
|------|-----------|----------------|----------------|
| 법적 근거 | FD&C Act §510(k) / 21 CFR 807 | 의료기기법 §6/§11 | MDR 2017/745 Article 52 |
| 핵심 개념 | Substantial Equivalence (SE) | 동등성 비교 (유사 허가 제품 기반) | Clinical Evaluation + GSPR 적합 |
| 판정 기관 | FDA CDRH | MFDS (NIDS 심사 위탁) | Notified Body (NB) |
| 표준 기간 | 90일 Review Clock (실제 ~144일) | 3등급 60일, 4등급 90일 | NB별 상이 (6~18개월) |
| 수수료 | 표준 약 $22K / 중소기업 감면 | 없음 (정부 심사) | NB 계약 (제품·서비스별) |
| Predicate 개념 | 필수 (1개 이상) | 유사제품 비교 (필수) | 없음 (Clinical Evaluation로 대체) |
| 갱신 주기 | 설계 변경 시 Special/새 510(k) | 중요 변경 시 변경허가 | PMS/PSUR 기반 연속 감시 |
| 방사선 특별 요건 | 21 CFR 1020 (별도 의무) | 방사선안전법·의료법 병행 | IEC 60601-1-3 (GSPR) |

---

## 7. 자사 3개 제품 적용 맵핑

### 7.1 X-ray Detector (CMOS/a-Si DR Panel)

| 항목 | 내용 |
|------|------|
| Product Code | **MQB** (Digital Radiography System) |
| 21 CFR | Part 892.1680 |
| Class | II |
| Predicate 검색 키워드 | "digital radiography detector" / "flat panel detector" |
| SE 핵심 비교 항목 | Detector type (CMOS vs a-Si), pixel pitch, DQE, scintillator material |
| 특이 시험 | IEC 62220-1-1 DQE, MTF, NPS; IEC 60601-2-54 |
| Radiation Safety | 21 CFR 1020.30 (Source Assembly 포함 시스템 레벨) |
| SW 해당 여부 | Image processing SW → IEC 62304 Level of Concern 판정 필요 |
| 전략 포인트 | scintillator CsI vs GOS 차이를 DP4에서 "No different questions" 논증 |

### 7.2 Handheld X-ray Source

| 항목 | 내용 |
|------|------|
| Product Code | **IZL** (Mobile X-ray, 참고) / **EAF** 검토 | 
| 21 CFR | Part 892.1750 (Mobile X-ray) |
| Class | II |
| Predicate | 기존 Handheld dental/medical X-ray (K번호 조회 필수) |
| SE 핵심 비교 항목 | kVp range, mA, focal spot, filtration, leakage radiation |
| 특이 시험 | IEC 60601-2-28 (X-ray tube/source); 21 CFR 1020.30~31 |
| 방사선 | 누설선량 ≤ 1 mGy/h at 5 cm (1020.30(k)); 조사야 정확도 |
| 배터리 | 리튬이온 → IEC 62133-2 (Handheld 휴대형) |
| 전략 포인트 | "Handheld" 형태 자체가 차별점 → DP4 논증 사전 준비 (안전성 자료 충분히 확보) |

### 7.3 촬영실 GUI SW (SaMD)

| 항목 | 내용 |
|------|------|
| Product Code | **LLZ** / **QIH** (PACS/Image Management) 또는 **QDQ** (Image Processing) |
| Class | I (일부) / II |
| 510(k) 필요 여부 | Intended Use에 따라 결정: 진단 보조 기능 포함 시 Class II → 510(k) 필요 |
| SE 핵심 비교 항목 | Intended Use (뷰어 vs 진단 지원), processing algorithms |
| SW 특이사항 | IEC 62304 Lifecycle Documentation 필수; Level of Concern (Moderate/Major) |
| Cybersecurity | 2023-09 Final Guidance 전면 적용; SBOM (SPDX/CycloneDX) 제출 |
| AI/ML 포함 시 | PCCP (2024-12-03 Final) → IAPD (Iterative Algorithm Performance Demonstration) |
| 전략 포인트 | 뷰어 기능과 분석 기능을 별도 Intended Use로 명확히 분리 → Product Code별 분리 제출 검토 |

---

## 8. 21 CFR 1020 방사선 성능기준 (X-ray 특화)

### 8.1 적용 범위

| 조항 | 적용 대상 |
|------|-----------|
| 21 CFR 1020.30 | 진단용 X-ray 시스템 전반 (Detector 포함 시스템 레벨) |
| 21 CFR 1020.31 | 조사야(Beam Limitation), 선질 필터 |
| 21 CFR 1020.32 | 투시(Fluoroscopy) 특이 요건 |
| 21 CFR 1020.33 | 자동노출제어(AEC) |

### 8.2 1020.30 핵심 요건 요약

```
- 관전압 정확도: 지시값의 ±10% 이내
- 관전류·mAs 정확도: 연속값 ±10%, 단발 ±15%
- 누설선량: Source Assembly 기준 ≤ 1 mGy/h at 5 cm
- 재현성: mAs ≤ 10% CV (5회 반복)
- 조사야 크기: 검출기면과 ±2% (SID 기준)
- 경고 표시: "X-ray" 조사 중 표시 의무 (lamp or audio)
- Form FDA 2579: 조립자 Report of Assembly (2023-01-20 개정)
```

---

## 9. Q-Submission (Pre-Sub) 전략 연계

510(k) 제출 전 Q-Sub(사전협의)을 활용하면 FDA로부터 비공식 의견을 무료로 받을 수 있다 (70~75일 내 회신 목표).

| Q-Sub 활용 시점 | 목적 |
|-----------------|------|
| Predicate 선정 불확실 | FDA의 비공식 Predicate 동의 확보 |
| 새로운 기술특성 (DP4 위험) | "different questions of S&E" 해당 여부 사전 확인 |
| 성능 시험 프로토콜 | 시험 방법·합격 기준 사전 합의 |
| 방사선 성능기준 적용 범위 | 1020.30 적용 여부·범위 명확화 |
| AI/ML 포함 SW | PCCP 범위·IAPD 적정성 사전 확인 |

> 참조: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_PreSubmission_QSub_가이드.md`

---

## 10. 실습 과제

### 과제 3-1: Product Code 조회 (30분)

1. FDA Product Classification Database (accessdata.fda.gov/scripts/cdrh/cfdocs/cfrl/rl.cfm) 접속
2. 자사 3개 제품 각각 Product Code 확인·기록
3. 해당 Product Code 21 CFR 조항 및 Class II 여부 확인
4. 제출 경로 판단: 510(k) 필요 / 면제 / PMA

**제출물**: A4 1장 요약표 (제품명 / Product Code / CFR / Class / 경로 / 근거)

### 과제 3-2: Predicate 검색 (45분)

1. 510(k) Database에서 자사 X-ray Detector Product Code(MQB)로 최근 5년 Clearance 조회
2. Intended Use가 가장 유사한 Primary Predicate 1개 선정
3. SE 비교표 초안 작성 (최소 10행 이상)
4. DP4 위험 항목 식별 및 "No different questions" 논증 초안 작성

**제출물**: SE 비교표 DOCX + DP4 논증 1페이지

### 과제 3-3: eSTAR 시뮬레이션 (30분)

1. FDA eSTAR 샘플 PDF 다운로드 (fda.gov/estar)
2. Section 1(Device Description), Section 3(SE), Section 9(Radiation Safety) 작성 연습
3. 미기재·오류 항목 표시

---

## 11. 평가 기준

| 평가 항목 | 배점 | 기준 |
|-----------|------|------|
| 510(k) 유형 3가지 구분 | 20점 | Traditional/Abbreviated/Special 조건·차이 정확 설명 |
| SE 5단계 적용 | 30점 | 가상 제품 시나리오에서 NSE/SE 판정 근거 도출 |
| eSTAR 핵심 섹션 식별 | 20점 | 자사 X-ray 제품에 필요한 섹션 완성 나열 |
| 3지역 비교 | 15점 | FDA/MFDS/MDR 핵심 차이 3가지 이상 기술 |
| 21 CFR 1020 요건 | 15점 | 적용 조항 및 핵심 수치 요건 정확 기술 |

**합격 기준**: 70점 이상 / 과제 3-2 SE 비교표 제출 필수

---

## 12. 연계 KB 참조

| 주제 | 경로 |
|------|------|
| SE 비교표 작성 상세 | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md` |
| 성능 시험 | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_03_Performance_Testing_Bench_Test.md` |
| Cybersecurity | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md` |
| Software | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_05_Software_Section.md` |
| Labeling | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_06_Labeling_IFU_Form3881.md` |
| Q-Sub 가이드 | `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_PreSubmission_QSub_가이드.md` |
| RTA 회피 체크리스트 | `01_규제지식베이스/미국_FDA/FDA_RTA_Refuse_to_Accept_회피_체크리스트.md` |
| AI 대응 전략 | `01_규제지식베이스/미국_FDA/FDA_AI_Additional_Information_대응_전략.md` |
| 21 CFR 1020 (방사선) | `01_규제지식베이스/미국_FDA/FDA_인허가_상세가이드.md §4` |
