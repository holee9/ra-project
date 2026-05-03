> 최종 갱신: 2026-05-04 (자동보강 #14)
> 근거: https://webstore.iec.ch/en/publication/21937 (IEC 62220-1-1:2015) | https://webstore.iec.ch/en/publication/6598 (IEC 62220-1-2:2007) | https://webstore.iec.ch/en/publication/6599 (IEC 62220-1-3:2008) | https://webstore.iec.ch/en/publication/69988 (IEC 60601-2-54:2022) | https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfStandards/detail.cfm?standard__identification_no=44832 (FDA 인정 표준) | https://www.fda.gov/media/99466/download (FDA IEC 가이던스) | https://federalregister.gov/documents/2023/01/20/2023-00922 (FDA 방사선 성능기준 개정)

# X-ray Detector — 성능 시험 항목 매트릭스

## 1. 적용 범위 및 제품 분류

**대상 제품**: Digital X-ray Detector (Flat Panel Detector, CCD, CMOS 등)

| 지역 | 분류 | 주요 근거 |
|---|---|---|
| **FDA** | Class II | 21 CFR 892.1680 (영상진단 X선 검출기), Product Code **MQB** |
| **MDR** | Class IIa | Annex VIII Rule 10 (능동 진단기기, 전리방사선 미방출 수신 장치) |
| **MFDS** | 2등급 | 의료기기 품목 및 등급 분류에 관한 규정 (식약처 고시) |

---

## 2. 핵심 표준 (Standard Matrix)

| 표준 번호 | 제목 | 판본·연도 | 적용 지역 | 비고 |
|---|---|---|---|---|
| **IEC 62220-1-1** | DQE — Radiographic Detectors | 2015 (현행) | FDA·MDR·MFDS | IEC 62220-1:2003 대체. 정사각 검출기·디지털 라디오그래피 |
| **IEC 62220-1-2** | DQE — Mammographic Detectors | 2007 (현행) | FDA·MDR·MFDS | 유방촬영 전용. NPS 기반 측정법 |
| **IEC 62220-1-3** | DQE — Dynamic Detectors (Fluoroscopy) | 2008 (현행) | FDA·MDR·MFDS | 투시(영상증배관·FPD 동적 모드) |
| **IEC 60601-2-54** | X-ray Equipment for Radiography & Radioscopy | Ed.2:2022 | FDA·MDR·MFDS | IEC 60601-1 Ed.3.2 상부 구조. 2009+A1:2015+A2:2018 대체 |
| **IEC 61223-3-8** | Acceptance & Constancy Tests for Radiography/Radioscopy | 2024 | MDR·MFDS 권고 | IEC 60601-2-54:2022 연동 품질보증 시험 |
| **IEC 60601-1-3** | Radiation Protection | Ed.2:2008+A1:2013+A2:2020 | FDA·MDR·MFDS | 방사선 방호 콜래터럴 표준 |
| **IEC 60601-1** | General Safety (모체 표준) | Ed.3.2 (2005+A1+A2) | FDA·MDR·MFDS | |

---

## 3. 성능 시험 항목 매트릭스

### 3-1. DQE (Detective Quantum Efficiency) — IEC 62220-1-1:2015

DQE는 X선 검출기의 신호 대 잡음 변환 효율을 정량화하는 핵심 지표.

**DQE 계산식**:
```
DQE(f) = [MTF_presampled(f)]² / [NPS_norm(f) × q̄]
```
- `MTF_presampled(f)`: 사전 샘플링 변조전달함수
- `NPS_norm(f)`: 정규화된 잡음 전력 스펙트럼 (픽셀값²·mm²)
- `q̄`: 입사 광자 플루언스 (광자/mm²) — IEC 61267:2005 빔 품질 기준

| 시험 항목 | 측정 방법 | 측정 조건 | Pass Criteria | 비고 |
|---|---|---|---|---|
| **MTF (Modulation Transfer Function)** | Edge method (금속 엣지 기울기 ~2~3°) | RQA5 (70 kV, 21 mmAl 총 필터) | 제조자 사양 이상 | Presampled MTF 필요 |
| **NPS (Noise Power Spectrum)** | Flat-field 영상 분석 (ROI 2D FFT) | XN/2, XN, 2XN 세 조건 | 제조자 사양 이상 | Quantum noise 지배 영역 확인 |
| **DQE(0) — Zero-frequency DQE** | DQE 계산 (f=0) | XN (표준 선량) | ≥ 0.6 (일반 FPD 권고값) | 검출기 형광체·센서 효율 지표 |
| **DQE(f) — Spatial frequency DQE** | DQE 계산 (Nyquist까지) | XN/2, XN, 2XN | 제조자 사양 준수 | 고주파 저하 패턴 파악 |
| **입사 광자 플루언스 (q̄)** | Air Kerma 측정 → 변환 계수 적용 | IEC 61267:2005 RQA5 조건 | 계산값 ±5% 이내 | 이온전리함 교정 필요 |

> **[검증 필요]** 2025년 이후 IEC 62220-1-1 개정 여부 확인. 현재 최신판 2015.

---

### 3-2. MTF (Modulation Transfer Function) 독립 측정

| 시험 항목 | 측정 방법 | 측정 조건 | Pass Criteria | 비고 |
|---|---|---|---|---|
| **Presampled MTF (전체 공간 주파수)** | 경사 엣지법 (Slanted Edge Method) | RQA5, 중앙·4개 코너 | 제조자 사양 이상 | MTF@Nyquist ≥ 0.1 일반 기준 |
| **MTF@0.5 lp/mm, 1.0 lp/mm, 2.0 lp/mm** | 상동 | 상동 | 제조자 사양 준수 | eSTAR Performance Testing 섹션 포함 |
| **Nyquist 주파수 확인** | 픽셀 피치로 계산: f_Nyquist = 1/(2×픽셀피치 mm) | — | 설계 일치 | 예: 140 μm 픽셀 → 3.57 lp/mm |

---

### 3-3. 기본 영상 품질 시험

| 시험 항목 | 근거 표준 | 측정 방법 | Pass Criteria | 비고 |
|---|---|---|---|---|
| **신호 선형성 (Signal Linearity)** | IEC 62220-1-1, IEC 60601-2-54 | 여러 Air Kerma 조건 → 평균 픽셀값 회귀 | R² ≥ 0.999 | 동적 범위 내 선형 |
| **평탄성 (Flat-field Uniformity)** | IEC 60601-2-54 | 균일 조사 영상 → ROI 간 신호 편차 | ±5% 이내 (제조자 사양) | Bad column 검출 겸용 |
| **잔상 (Ghosting / Lag)** | IEC 62220-1-1 Annex A 참조 | 고선량 노출 후 연속 저선량 프레임 측정 | < 0.1% (동적 모드) / 제조자 사양 | 고속 연속 촬영 시 중요 |
| **Bad Pixel / Dead Pixel 맵** | IEC 62220-1-1 | 다크 이미지·플랫 이미지 분석 | < 0.1% (총 픽셀 대비) 권고 | 클러스터 배제 요건 |
| **동적 범위 (Dynamic Range)** | IEC 60601-2-54 | 최소~최대 감지 선량 비 | ≥ 1:10,000 일반 FPD 권고 | ADC 비트 깊이 의존 |
| **양자 잡음 지배 영역 (Quantum Limited Regime)** | IEC 62220-1-1 | NPS vs Air Kerma 관계 | 정상 선량 범위서 양자잡음 지배 | 전자잡음 증가 = 설계 문제 |

---

### 3-4. 방사선 방호 시험 (IEC 60601-1-3 기반)

| 시험 항목 | 측정 방법 | Pass Criteria | 비고 |
|---|---|---|---|
| **산란 방사선 차폐** | IEC 60601-1-3 §29 | 제조자 사양 + IEC 기준값 | X선원 없는 검출기 단독 시험 대상 제한적 |
| **전원 차단 시 잔류 방사선 없음** | 기능 확인 | 방출 없음 | 검출기는 방출 없으나 시스템 레벨 시험 필요 |

---

### 3-5. 전기·기계 안전 시험

| 시험 항목 | 근거 표준 | Pass Criteria | 비고 |
|---|---|---|---|
| **전기안전 (감전 보호·누설전류 등)** | IEC 60601-1 Ed.3.2 | 표준 한계값 | Type B / BF / CF 분류 확인 |
| **EMC (방사·전도 방출 / 내성)** | IEC 60601-1-2:2014+A1:2020 | 표준 한계값 | 무선 기능 포함 시 추가 |
| **기계적 강도 (낙하·충격·진동)** | IEC 60601-1 + 제조자 사양 | 기능 유지 | Portable FPD 필수 |
| **IP 등급 (방수·방진)** | IEC 60529 | 제품 등급 준수 | 세정 시나리오 포함 |
| **생체적합성** | ISO 10993-1 | 표준 기준 | 환자 접촉 부위 해당 시 |

---

## 4. 3개 지역 제출 요건 비교

| 항목 | FDA (US) | MDR (EU) | MFDS (KR) |
|---|---|---|---|
| **IEC 62220-1-1 적용 방식** | Declaration of Conformity 허용 (IEC 표준 인정 목록) | GSPR §14 입증 근거 (MDR Annex II §6) | 의료기기 기준규격 적용 (인정된 IEC 표준) |
| **제출 형식** | eSTAR Performance Testing 섹션 (요약표 + 시험보고서 링크) | Technical Documentation — V&V 섹션 전체 보고서 | 기술문서 성능·안전성 시험 자료 |
| **제3기관 시험 의무** | NVLAP·ISO/IEC 17025 인정 시험소 권장 | ISO 17025 인정 시험소 (NB 요구 시 필수) | KOLAS 인정 시험소 필요 |
| **DQE 보고 필수성** | 성능 시험 핵심 항목 (eSTAR §3 Performance) | 선택적 (단, MTF·NPS 포함 권장) | 성능·안전성 자료에 포함 |
| **MTF 보고 필수성** | 필수 (eSTAR) | 필수 (GSPR §14) | 필수 |
| **최신 가이던스** | FDA 2024-09-30 "Clarification of Radiation Control Regulations" | MDCG 2020-6 및 MDR Annex II | 식약처 기술문서 심사 가이드라인 |

---

## 5. 자사 X-ray Detector 시험 체크리스트

### Pre-Submission (FDA Q-Sub / MFDS 사전검토 / NB Early Dialogue 권장 전)
- [ ] 제품 최종 픽셀 피치·검출기 크기·형광체 재질 확정
- [ ] 빔 품질 교정 (IEC 61267 RQA5) 확인 → 시험소와 사전 협의
- [ ] MTF 측정용 경사 엣지 팬텀 준비
- [ ] NPS 측정용 균일 플라스틱 팬텀 준비

### V&V 시험
- [ ] **DQE(f)** — IEC 62220-1-1:2015 (XN/2·XN·2XN, 3 조건 이상)
- [ ] **MTF (Presampled)** — 경사 엣지법, 5개 지점 이상
- [ ] **NPS** — 2D Radial NPS, XN/2·XN·2XN
- [ ] **신호 선형성** — 8 노출 단계 이상
- [ ] **Flat-field Uniformity** — 캘리브레이션 전·후 비교
- [ ] **Ghosting/Lag** — 고선량 후 잔상 비율
- [ ] **Bad Pixel Map** — 총 픽셀 대비 불량률
- [ ] **동적 범위** — 최소~최대 감지 Air Kerma
- [ ] **전기안전** — IEC 60601-1 Ed.3.2
- [ ] **EMC** — IEC 60601-1-2:2014+A1:2020
- [ ] **기계적 강도** — 낙하·충격·진동 (Portable 해당 시)
- [ ] **IP 등급** — IEC 60529 (해당 시)
- [ ] **생체적합성** — ISO 10993-1 (환자 접촉 면 해당 시)

### 제출 패키지
- [ ] 시험 보고서 원본 (ISO 17025 인정 시험소 발행)
- [ ] DQE·MTF·NPS 결과 그래프 (각 공간주파수별)
- [ ] 선량 조건별 DQE 비교표 (XN/2·XN·2XN)
- [ ] Bad Pixel Map 이미지
- [ ] eSTAR §3 Performance Testing 요약표 (FDA용)
- [ ] MDR Annex II §6 V&V 요약 (EU용)

---

## 6. 3개 제품 영향 맵핑

| 시험 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| DQE / MTF / NPS | **직접 적용 (핵심 시험)** | 해당 없음 | 해당 없음 (SW는 영상처리 영향 검증 시 간접 연관) |
| 신호 선형성 | **필수** | 해당 없음 | 해당 없음 |
| Ghosting / Lag | **필수** | 해당 없음 | 해당 없음 |
| Bad Pixel Map | **필수** | 해당 없음 | 해당 없음 |
| IEC 60601-1 전기안전 | 필수 | 필수 | 해당 없음 (SW 단독 시) |
| IEC 60601-1-2 EMC | 필수 | 필수 | GUI SW 포함 시스템 레벨 시험 |
| 기계적 강도 (낙하 등) | **Portable FPD 필수** | **Handheld 핵심** | 해당 없음 |
| 생체적합성 | 환자 접촉 시 | 해당 없음 | 해당 없음 |
