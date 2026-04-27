> 최종 갱신: 2026-04-24 (자동보강 #3)
> 근거: https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program · https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-892/subpart-B/section-892.1680 · https://www.fda.gov/regulatory-information/search-fda-guidance-documents/performance-standard-diagnostic-x-ray-systems-and-their-major-components-21cfr-102030-102031-102032 · https://pmc.ncbi.nlm.nih.gov/articles/PMC2464291/ · https://webstore.iec.ch/en/publication/69988 · https://www.fda.gov/medical-devices/premarket-notification-510k/how-find-and-effectively-use-predicate-devices

# FDA eSTAR 섹션별 작성 가이드 (3) Performance Testing / Bench Test

자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW)의 510(k) 제출 시 eSTAR 템플릿 내 `Performance Testing` 섹션을 작성하는 실무 가이드. MFDS·MDR 대응 관점 병기.

---

## 1. 규제적 배경 (Fact)

### 1.1 eSTAR Performance Testing 섹션 위치·성격
- eSTAR 내 Section G (또는 Section 12, 템플릿 버전에 따라 다름): "Performance Testing" 또는 "Non-Clinical Testing"
- **Conditional Required**: 새 기기가 predicate와 기술적 특성 차이가 있는 경우 반드시 제출; 차이 없어도 특정 제품 분류(예: 방사선 방출 기기)는 무조건 요구됨
- "Performance data"는 임상 데이터(clinical data)와 비임상 벤치 성능 데이터(bench test, engineering test, biocompatibility 등) 모두 포함
- 출처: 21 CFR 807.87(k) "Performance standards" / FDA eSTAR help text

### 1.2 X-ray 장치 적용 법령·규정 (Fact)

| 규정 | 내용 | 적용 제품 |
|------|------|-----------|
| 21 CFR 1020.30 | 진단 X-ray 시스템 성능 기준 (2005-06-10 Final) — Air kerma 재현성, mAs 정확도, Beam 제한장치 등 | Detector, Handheld Source |
| 21 CFR 1020.31 | Fluoroscopic Equipment 성능 기준 | (해당 없음) |
| 21 CFR 1020.32 | Computed Tomography Equipment | (해당 없음) |
| 21 CFR 1020.40 | Cabinet X-ray System — 방출 한도 0.5 mR/hr | Handheld Source (cabinet형 해당 시) |
| 21 CFR 892.1680 | Stationary X-ray System — Class II, Special Controls | Detector, GUI SW |
| 21 CFR 892.1650 | Mobile X-ray System | Handheld Source (portable 해당 시) |

### 1.3 X-ray 검출기 관련 핵심 표준 (Fact)

| 표준 | 내용 | 의무 여부 |
|------|------|-----------|
| IEC 62220-1-1:2015 | 디지털 방사선 검출기 DQE 측정 (정지형 디지털 검출기) | FDA recognized; 510(k) 권장 |
| IEC 60601-2-54:2022 | 방사선 촬영·간접 형광 투시용 의료 전기 장비 안전 및 필수 성능 | FDA recognized |
| IEC 60601-1:2005+A1+A2 | 의료 전기 장비 기본 안전 및 필수 성능 | 전 제품 공통 |
| IEC 60601-2-28:2017 | X-ray Tube Assembly 성능 | Handheld Source |
| NEMA XR 29-2013 | Smart Dose 기능 (AEC/dose alert) — FDA special control에 포함 가능 | 권장 |

### 1.4 eSTAR Submission 주의 (Fact)
- 2023-10-01부터 510(k) 전 제출물에 eSTAR 의무화
- eSTAR는 파일명을 템플릿에 지정된 정확한 명칭으로 첨부해야 함 ("See attached" 방식 불가)
- 2026-02: QMSR(21 CFR 820 개정) 정합화 반영 — 성능 시험 결과 문서에 Design Controls 참조 포함 권고

---

## 2. 해석 (Interpretation) — 실무 관점

### 2.1 성능 시험의 핵심 목적
510(k) Performance Testing의 목적은 단 하나: **자사 제품이 predicate device와 동등한 안전성·유효성을 갖는다는 것을 데이터로 입증하는 것**

- 기술적 차이(Different Technology Characteristics)가 있는 경우 → "차이가 안전성·유효성 문제를 야기하지 않음"을 bench test로 증명해야 함
- 기술적 차이가 없더라도 21 CFR 1020.30 등 성능 기준이 존재하면 compliance test 결과 제출 필요

### 2.2 흔한 RTA(Refuse to Accept) 원인
- Performance testing data 누락 (predicate와 기술적 차이가 있으나 데이터 없음)
- Standards 인용 없음 (21 CFR 1020.30, IEC 62220-1 등 명시하지 않음)
- Bench test report에 test condition(kVp, mAs, distance, phantom) 미기재
- Predicate comparison table 부재 또는 불완전
- SW device의 경우 V&V 문서 누락 (SRS, RTM, validation report)

### 2.3 타 지역 연계
- **MFDS**: 기술문서(Technical Document) 내 "성능 시험 자료" — 동일 IEC 표준 시험 결과 상당 부분 공용 가능. 단, MFDS 가이드라인 별도 확인 필요 (식의약품안전처 기술문서 가이드라인)
- **MDR**: Annex I GSPR §10 (성능 및 안전), Annex II §6.1 (성능 및 안전 정보) — IEC 62220-1, IEC 60601-2-54 시험 결과 공용 가능; CE/MDR은 IEC 표준 적용 더 엄격함

---

## 3. 제품별 Performance Testing 실행 가이드 (Action)

---

### 3.1 제품 1: X-ray Detector (디지털 X-ray 검출기)

#### 3.1.1 적용 규정·분류
- 21 CFR 892.1680 (Class II, Special Controls) — "Radiographic X-ray system"의 구성품
- 21 CFR 1020.30 — Dose linearity, reproducibility
- Product Code: IYO (Digital X-ray System) 또는 JOC (DR Detector) — 제품 분류 확인 필수

#### 3.1.2 Predicate Device 선택 원칙
- FDA 510(k) 클리어된 동급 flat-panel detector (Predicate 510(k) 번호 명시)
- 비교 항목: Detector type (amorphous Si vs CMOS), pixel size (pitch), scintillator material, imaging area, intended use (radiography vs fluoroscopy)
- 기술적 차이 있으면 해당 항목에 대한 bench test 필수

#### 3.1.3 핵심 Bench Test 항목

**① DQE 측정 (IEC 62220-1-1:2015)**

| 항목 | 내용 |
|------|------|
| 목적 | Detective Quantum Efficiency — 검출기의 양자 이용 효율 측정 |
| Beam quality | RQA5 (70 kV, 21 mmAl filtration) — IEC 62220-1-1 §6.2 기준 |
| 측정 항목 | MTF(Modulation Transfer Function), NPS(Noise Power Spectrum), DQE(f) |
| 공간 주파수 | 0~최대 Nyquist 주파수 (최소 10개 point) |
| 판정 기준 | Predicate 대비 DQE(0) ±20% 이내 또는 동등 이상 |
| 결과 보고 | DQE curve plot + 수치 테이블 |

> **팩트**: DQE는 출력 SNR²를 입력 SNR²로 나눈 값 (0~1). X-ray 검출기 이미지 품질의 핵심 지표. FDA 심사관이 predicate 비교 시 DQE(0)과 공간 주파수별 DQE 요구.

**② MTF 독립 측정**

| 항목 | 내용 |
|------|------|
| 목적 | Spatial resolution 정량 평가 |
| 방법 | Slanted-edge method (IEC 62220-1-1 Annex A) 또는 Line pair phantom |
| 측정값 | MTF@2, 4, 6 lp/mm |
| 판정 기준 | MTF@3.5 lp/mm > 0.1 (통상 요건) 또는 predicate 동등 이상 |

**③ Noise / NPS 측정**

| 항목 | 내용 |
|------|------|
| 목적 | Image noise 정량 평가 |
| 방법 | 균일 조사 (flat field) 10회 이상 반복, 2D NPS 계산 |
| 선량 레벨 | 임상 사용 범위 내 최소 3개 선량 레벨 |
| 결과 보고 | NPS(f) curve + 각 선량에서의 mean noise value |

**④ Dose Linearity & Reproducibility (21 CFR 1020.30)**

| 항목 | 내용 |
|------|------|
| 목적 | Detector output이 선량에 선형 비례하는지 확인 |
| 변수 | mAs: 1~500 (5 point 이상), kVp: 60~120 (3 point) |
| 측정 | Detector signal output (ADU 또는 pixel value) |
| 판정 | R² > 0.99 (선형 fitting), CV < 5% (재현성) |

**⑤ Artifact Evaluation**

| 항목 | 내용 |
|------|------|
| 목적 | 이미지에 구조적 artifact 없는지 확인 |
| 방법 | 균일 조사 후 flat-field image 육안 및 수치 분석 |
| 판정 | Bright/dark pixel < 0.01%, streak artifact 없음 |

#### 3.1.4 eSTAR 제출 패키지 구성
```
eSTAR Section G (Performance Testing):
├── Executive_Summary_Detector_Performance.pdf  (2p)
│   └ "IEC 62220-1-1 DQE, MTF, NPS로 predicate와 동등 입증"
├── DQE_MTF_NPS_Test_Report.pdf                 (40~80p)
│   └ IEC 62220-1-1 Full compliance report
├── Dose_Linearity_Reproducibility_Report.pdf   (10~20p)
│   └ 21 CFR 1020.30 compliance
├── Artifact_Evaluation_Report.pdf              (5~10p)
└── Predicate_Performance_Comparison_Table.xlsx
    └ 자사 vs Predicate 항목별 수치 비교
```

---

### 3.2 제품 2: Handheld X-ray Source (휴대용 X-ray 발생장치)

#### 3.2.1 적용 규정·분류 확인 [검증 필요]
- **Mobile/Portable Radiographic System**: 21 CFR 892.1650 (Class II) + 21 CFR 1020.30
- **Cabinet X-ray 해당 여부**: 장치가 "enclosed cabinet" 형태이면 21 CFR 1020.40 추가 적용
- Handheld 휴대형 X-ray의 경우 21 CFR 1020.30 "portable X-ray" 적용이 일반적
- Product Code: IZL (Mobile X-ray System) — 사전 Pre-Sub으로 분류 확인 권장

#### 3.2.2 Predicate Device 선택 원칙
- 유사 휴대형 X-ray source (예: Aribex NOMAD, Accupixel) 중 510(k) 클리어 제품
- 비교 항목: Tube current range, kVp range, housing/shielding design, exposure time, duty cycle, safety features

#### 3.2.3 핵심 Bench Test 항목

**① Radiation Emission Test (21 CFR 1020.30)**

| 항목 | 내용 |
|------|------|
| 목적 | 방사선 방출량 측정 및 안전 기준 준수 확인 |
| 측정 장비 | Ionization chamber (traceable calibration 필수) |
| 측정 거리 | 1 m (standard reference distance) |
| 측정 항목 | Air kerma (mGy/mAs) at reference distance |
| 판정 기준 | 21 CFR 1020.30 기준값 이하; Cabinet형이면 0.5 mR/hr 이하 |
| 반복 횟수 | 동일 조건 10회 이상 측정 (재현성 확인) |

**② Half-Value Layer (HVL) 측정**

| 항목 | 내용 |
|------|------|
| 목적 | Beam quality (선속 에너지) 확인 |
| 방법 | 순도 Al 흡수체 이용, ionization chamber |
| 측정 kVp | 60, 70, 80 kVp (최소 3개) |
| 판정 기준 | 21 CFR 1020.30 Table I의 kVp별 최소 HVL 기준 충족 |

**③ Dose Reproducibility (21 CFR 1020.30(j))**

| 항목 | 내용 |
|------|------|
| 목적 | 연속 촬영 시 선량 안정성 확인 |
| 방법 | 동일 설정(kVp, mAs) 10회 반복 촬영 |
| 판정 기준 | CV(Coefficient of Variation) < 5% |

**④ Thermal Performance Test**

| 항목 | 내용 |
|------|------|
| 목적 | 연속 사용 시 온도 안전성 확인 |
| 방법 | 일반적 임상 사용 패턴 (예: 100 exposures/day) 모사 |
| 측정 항목 | 외함 표면 온도 (IEC 60601-1 기준: 환자 접촉 가능 부위 ≤43°C) |
| 판정 기준 | 규정 한계값 이하 유지 |

**⑤ Safety Interlocks Verification**

| 항목 | 내용 |
|------|------|
| 목적 | 안전장치 기능 확인 |
| 검증 항목 | Dead-man switch (누르는 동안만 조사), 조사 시간 타이머, 과부하 차단 |
| 방법 | 각 인터록 고의적 트리거 후 조사 중단 확인 |
| 결과 | Pass/Fail 기록 |

**⑥ Scatter Radiation Test (Handheld 특이 항목)**

| 항목 | 내용 |
|------|------|
| 목적 | 조작자 방향 산란선 안전 확인 |
| 방법 | 인체 팬텀 사용, 조작자 위치에서 산란선량 측정 |
| 판정 기준 | 조작자 방향 scatter dose < 권고 한도 (NCRP 권고 기준 참조) |

#### 3.2.4 eSTAR 제출 패키지 구성
```
eSTAR Section G (Performance Testing):
├── Executive_Summary_Handheld_Source_Performance.pdf
│   └ "21 CFR 1020.30 compliance + predicate equivalence"
├── Radiation_Emission_and_HVL_Report.pdf
│   └ Ionization chamber test results
├── Dose_Reproducibility_Report.pdf
├── Thermal_Performance_Report.pdf
├── Safety_Interlocks_Verification_Report.pdf
├── Scatter_Radiation_Assessment.pdf
└── Regulatory_Classification_Analysis.pdf     [검증 필요]
    └ 21 CFR 1020.30 vs 1020.40 적용 판단
```

---

### 3.3 제품 3: 촬영실 GUI Software (영상 처리·표시 소프트웨어)

#### 3.3.1 적용 규정·분류
- **Software as Medical Device (SaMD)** 해당 여부 먼저 확인
- 21 CFR 892.2050 (Class II) — Image Processing Software
- FDA Guidance, "Guidance for the Content of Premarket Submissions for Device Software Functions" (2023-06-14 Final)
- FDA Guidance, "Cybersecurity in Medical Devices" (2023-09-27 Final)
- IEC 62304:2006+A1:2015 — Software lifecycle processes

#### 3.3.2 SW Risk Class 결정 (IEC 62304)
| Class | 기준 | 해당 SW 예시 |
|-------|------|-------------|
| A | SW 오동작 → 위해 없음 | 단순 뷰어 (진단 목적 아닌 경우) |
| B | SW 오동작 → 경미한 위해 | 일반 DICOM viewer + basic processing |
| C | SW 오동작 → 심각한 위해 또는 사망 | AI 진단 보조, 자동 노출 제어 관련 SW |

> 촬영실 GUI SW가 AEC(Auto Exposure Control) 또는 임상 판독 지원 기능을 포함하면 Class C 가능성 있음. **Pre-Sub으로 확인 권장.**

#### 3.3.3 Performance Testing = V&V (Verification & Validation)

**① Software Requirements Specification (SRS)**
- 기능 요구사항 (예: "System shall display DICOM images from any CR/DR modality")
- 성능 요구사항 (예: "Image load time ≤ 2 sec for 10MB file")
- 안전 요구사항 (예: "System shall not alter original image pixel data without user confirmation")
- Usability 요구사항 (IEC 62366-1 기반)

**② Requirements Traceability Matrix (RTM)**
```
REQ-ID | Requirement | Design Module | Test Case ID | Test Result
REQ-001 | Display DICOM image | DicomRenderer.java | TC-001 | PASS
REQ-045 | Brightness adjustment | ImageFilter.java | TC-045-01..03 | PASS
```

**③ Test 항목 및 판정 기준**

| Test 유형 | 내용 | 판정 기준 |
|-----------|------|-----------|
| Unit Test | 개별 함수/모듈 단위 | Code coverage ≥ 80% (Class C는 ≥ 100%) |
| Integration Test | 모듈 간 인터페이스 | 정의된 interface spec 전항 Pass |
| System Test | End-to-end workflow | 정의된 use case 전항 Pass |
| Performance Test | 응답시간, 동시 접속 | 요구사항 대비 ≤ 110% |
| Regression Test | 코드 변경 후 기존 기능 유지 | 이전 버전 test suite 전항 Pass |

**④ Validation Dataset 요건**
- 정상 케이스: 전형적 임상 이미지 최소 50개 (다양한 해부 부위·모달리티)
- 경계 케이스: 극단적 파라미터(최소/최대 해상도, 파일 크기 등)
- 비정상 케이스: 손상된 파일, 잘못된 DICOM 태그 등 — 시스템이 안전하게 처리하는지 확인

**⑤ 이미지 처리 알고리즘 성능 검증 (해당 시)**

| 알고리즘 | 검증 방법 | 판정 기준 |
|---------|----------|-----------|
| Noise reduction | SNR 측정 전후 비교 | SNR 개선, 구조물 보존 확인 |
| Edge enhancement | MTF 또는 line pair phantom | 해상도 저하 없음 |
| Window/level | DICOM standard window preset 대비 | ΔE < 1 (DICOM PS 3.14 GSDF 준수) |
| Auto-windowing | 다양한 임상 이미지에서 자동 설정값 | 수동 설정값 대비 ΔWW/WL < 20% |

#### 3.3.4 eSTAR 제출 패키지 구성
```
eSTAR Section G (Performance Testing — Software):
├── Executive_Summary_GUI_SW_Validation.pdf
├── Software_Requirements_Specification.pdf
├── Software_Design_Specification.pdf
├── Requirements_Traceability_Matrix.xlsx
├── Software_Validation_Plan.pdf
├── Software_Validation_Report.pdf
│   ├── Unit_Test_Results/
│   ├── Integration_Test_Results/
│   ├── System_Test_Results/
│   └── Performance_Test_Results/
├── Validation_Dataset_Description.pdf
└── Anomaly_Log_and_Resolution.xlsx
    └ 발견된 defect 및 해결 이력
```

---

## 4. 3개 제품 Performance Testing 비교 요약

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|------|---------------|----------------------|--------------|
| 핵심 규정 | 21 CFR 892.1680 + 1020.30 | 21 CFR 892.1650 + 1020.30 | 21 CFR 892.2050 + SW guidance |
| 핵심 표준 | IEC 62220-1-1, IEC 60601-2-54 | IEC 60601-2-28, IEC 60601-1 | IEC 62304, IEC 62366-1 |
| 핵심 시험 | DQE, MTF, NPS, Dose linearity | Emission, HVL, Reproducibility, Thermal | V&V (SRS→RTM→Test report) |
| 예상 소요 | 6~8주 | 4~6주 | 8~12주 |
| 예상 비용 (외부 포함) | $15K~$40K | $20K~$35K | $25K~$50K |
| MFDS 공용 여부 | 대부분 공용 가능 | 대부분 공용 가능 | 공용 가능 (번역 필요) |
| MDR 공용 여부 | 공용 가능 (IEC 표준 동일) | 공용 가능 | 공용 가능 |

---

## 5. eSTAR Performance Testing 섹션 작성 체크리스트

- [ ] Predicate device 확정 및 510(k) 번호 확보
- [ ] 기술적 차이 분석 문서 (Technological Characteristics Comparison) 작성
- [ ] 차이 항목별 test protocol 수립
- [ ] 외부 시험기관 또는 내부 시험설비 확보 (장비 교정 이력 필수)
- [ ] 시험 결과 report에 test condition 명기 (kVp, mAs, SID, filtration, phantom 등)
- [ ] 결과에 predicate 값 대비 수치 비교표 포함
- [ ] IEC 표준 및 21 CFR 법령 인용 명시
- [ ] eSTAR 첨부 파일명 템플릿 지정명과 일치 여부 확인
- [ ] SW의 경우 RTM coverage ≥ 80% 및 validation report 포함

---

## 6. 타 지역 연계 (1줄 요약)

- **MFDS**: 동일 IEC 시험 결과 대부분 공용 가능; "기술문서 성능 시험 자료"에 영문 원본 + 한글 요약 첨부
- **MDR**: Annex I GSPR §10·§17 대응; IEC 62220-1, IEC 60601-2-54 시험 결과 직접 활용; CE 마크 전 NB에서 추가 요구사항 확인 필수
