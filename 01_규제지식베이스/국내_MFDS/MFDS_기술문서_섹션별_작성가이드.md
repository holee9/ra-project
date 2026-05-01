> 최종 갱신: 2026-05-01 (자동보강 #8)
> 근거: https://www.mfds.go.kr/brd/m_1060/view.do?seq=14698 | https://mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=14505&data_tp=A&file_seq=1 | https://www.law.go.kr/flDownload.do?gubun=&flSeq=137009209&bylClsCd=110202

# MFDS 기술문서 섹션별 작성 가이드 (사용목적·작용원리·성능·안전성)

## 0. 법적 근거 및 문서 체계

| 항목 | 내용 |
|---|---|
| 근거 법령 | 의료기기법 제6조(허가·인증·신고), 시행규칙 별표 3(기술문서 구성) |
| 심사 근거 | 「의료기기 허가·신고·심사 등에 관한 규정」 (MFDS 고시) |
| 국제 정합 | IMDRF STED (Summarized Technical Documentation) — MFDS는 STED 형식 수용 |
| 가이드라인 | 「의료기기 기술문서 심사 이해하기 가이드라인」 (민원인 안내서, mfds.go.kr) |
| STED 해설서 | 「의료기기 국제표준화기술문서(STED) 작성 해설서」 (민원인 안내서) |

> **STED = Summarized Technical Documentation**: IMDRF가 제정한 국제 표준 기술문서 요약 포맷. MFDS는 수용, FDA는 510(k) 제출에 활용, MDR Annex II·III와 구조 유사.

---

## 1. 기술문서 전체 구성 (시행규칙 별표 3 기준)

```
기술문서 (MFDS 제출용)
├── 1. 개요 (제품명, 품목명, 분류번호, 모델명, 제조원)
├── 2. 사용목적 (Intended Use / Indications for Use)
├── 3. 작용원리 (Operating Principle / Mechanism of Action)
├── 4. 원재료·구성품·구조 (Materials & Structure)
├── 5. 제조방법 (Manufacturing Process)
├── 6. 성능·시험규격 (Performance & Test Specifications)
│   ├── 6-1. 시험규격 및 설정근거
│   └── 6-2. 실측값 (성적서)
├── 7. 안전성 자료 (Safety Data)
│   ├── 7-1. 전기·기계적 안전
│   ├── 7-2. 생물학적 안전
│   ├── 7-3. 방사선 (해당 시)
│   ├── 7-4. 전자파(EMC)
│   └── 7-5. SW 안전성 (해당 시)
├── 8. 임상자료 (해당 시)
└── 9. 기재사항 (라벨, 사용설명서)
```

---

## 2. 섹션 2 — 사용목적 (Intended Use)

### 2.1 정의 및 요건

**사용목적(Intended Use)**: 제조자가 의도한 의료기기의 목적·용도로, 허가사항의 핵심. 허가받은 사용목적을 벗어난 사용은 모두 Off-label이 되므로 정확한 범위 설정이 중요.

| 기재 항목 | 설명 | 작성 예시 |
|---|---|---|
| 사용목적 (대표) | 의료 행위 목적 명시 | "인체의 특정 부위를 X선으로 촬영하여 진단에 이용" |
| 목표 환자군 | 나이, 성별, 증상 등 | "성인 및 소아 환자" |
| 적응증 | 질병·상태 (해당 시) | "골절, 폐렴 등 진단 보조" |
| 금기 | Contraindication | "임산부 불필요 촬영 금기" |
| 사용 환경 | 병원, 클리닉, 이동식 등 | "의료기관 내 촬영실 또는 이동 운용 환경" |
| 사용자 | 의사·방사선사 등 | "방사선사 또는 교육받은 의료종사자" |

### 2.2 3개 지역 비교 (사용목적 섹션)

| 항목 | MFDS (한국) | FDA (미국) | MDR (유럽) |
|---|---|---|---|
| 용어 | 사용목적 | Intended Use / Indications for Use | Intended Purpose |
| 근거 | 의료기기법 시행규칙 별표 3 | 21 CFR 801.4 / eSTAR Section 2 | MDR Art. 2(12), Annex II §1.1 |
| 핵심 차이 | 품목분류·등급과 직결 | IFU와 별도(Form 3881) | 성능·안전 요건(GSPR) 기초 |
| 변경 영향 | 재허가·변경허가 트리거 | 510(k) 재제출 판단 기준 | NB 검토 범위 결정 |

### 2.3 자사 제품 적용 맵핑

| 제품 | 사용목적 핵심 문구 (예시) | 주의 사항 |
|---|---|---|
| **X-ray Detector** | "X선 조사(照射)를 받아 디지털 영상신호로 변환, 진단용 의료영상 획득에 사용" | 수동형/능동형 구분, 간접/직접 변환 명시 |
| **Handheld X-ray Source** | "이동식 X선 발생장치로, 의료기관 내외에서 X선 촬영 시 방사선 조사에 사용" | 이동식 특성, 방사선 피폭 위험 금기 기재 필수 |
| **촬영실 GUI SW** | "X선 영상 수집·저장·전송·표시를 제어하는 소프트웨어로, 방사선 촬영 워크플로 관리에 사용" | 독립형 SaMD vs. 부속품 SW 판단 (디지털의료제품법 적용 여부 확인) |

---

## 3. 섹션 3 — 작용원리 (Operating Principle)

### 3.1 정의 및 기재 요건

작용원리는 제품이 의료적 효과를 발휘하는 물리적·화학적·생물학적·전기적 메커니즘 설명. 동등제품(유사품) 비교 시 "작용원리 동일 여부"가 판단 기준 중 하나이므로 정밀 기술 필수.

**기재 필요 내용:**
- 주요 동작 원리 (핵심 물리 현상 또는 알고리즘)
- 에너지·신호 변환 흐름
- 구성 요소별 역할
- SW인 경우: 알고리즘 개요, 처리 흐름, AI/ML 적용 시 모델 유형

### 3.2 자사 3개 제품 작용원리 상세

#### 3.2.1 X-ray Detector

| 항목 | 내용 |
|---|---|
| 변환 방식 | **간접 변환(Indirect Conversion)** 또는 **직접 변환(Direct Conversion)** |
| 간접 변환 원리 | X선 → 신틸레이터(CsI:Tl 등) → 가시광 → 포토다이오드(a-Si TFT) → 전기신호 → 디지털 영상 |
| 직접 변환 원리 | X선 → 광도전체(a-Se 등) → 전하 발생 → TFT 어레이 수집 → 디지털 영상 |
| 핵심 성능 지수 | DQE(Detective Quantum Efficiency), MTF(Modulation Transfer Function), NPS(Noise Power Spectrum) |
| 참조 표준 | IEC 62220-1-1:2015 (X-ray image receptors — Determination of DQE) |

**작용원리 기재 예시 (간접 변환형):**
> "본 제품은 신틸레이터 기반 간접 변환 방식의 Flat Panel Detector이다. X선 조사 시 CsI(Tl) 신틸레이터에서 가시광으로 1차 변환되고, 하층의 a-Si 포토다이오드 어레이가 광신호를 전하로 변환한다. TFT 스위치를 통해 전하를 픽셀별로 판독하고, ADC(Analog-to-Digital Converter)에서 디지털 신호로 출력한다."

#### 3.2.2 Handheld X-ray Source

| 항목 | 내용 |
|---|---|
| 발생 원리 | **Bremsstrahlung(제동복사)**: 열전자를 고전압으로 가속 → 텅스텐 타겟 충돌 → X선 발생 |
| 구성 요소 | X선관(Tube), 고전압발생부(HVG), 필터, 콜리메이터, 배터리 팩 |
| 제어 파라미터 | kVp(관전압), mA(관전류), exposure time(ms) |
| 방사선 제어 | 인터락(Interlock), 콜리메이터, 납 차폐, 백산란 최소화 구조 |
| 참조 표준 | IEC 60601-2-28:2017 (X-ray tube assembly) |

**작용원리 기재 예시:**
> "텅스텐 필라멘트를 가열하여 열전자를 생성하고, 수십∼수백 kVp의 고전압으로 가속하여 텅스텐 타겟에 충돌시킨다. 이 과정에서 제동복사(Bremsstrahlung) 및 특성 X선이 발생한다. 콜리메이터로 조사야를 제한하고, 부가 필터(Al 등)로 저에너지 X선을 제거하여 환자 피폭을 최소화한다."

#### 3.2.3 촬영실 GUI SW

| 항목 | 내용 |
|---|---|
| 소프트웨어 유형 | 의료기기 부속 SW (Software as Part of a Medical Device, SiMD) |
| 주요 기능 | X선 장치 제어, 영상 획득, DICOM 처리, PACS 전송, QC 기능 |
| 알고리즘 핵심 | 영상 노이즈 저감(NR), 에지 강화(Edge Enhancement), 자동 노출 보정(AEC) |
| 통신 프로토콜 | DICOM 3.0 (SCP/SCU), HL7 (RIS/HIS 연동) |
| AI 적용 여부 | 해당 시 기재: 모델 유형(CNN, U-Net 등), 학습 데이터셋, 출력 신뢰도 |
| 참조 표준 | IEC 62304:2006+A1:2015, IEC 62366-1:2015 |

---

## 4. 섹션 6 — 성능 (Performance)

### 4.1 기재 구조

```
6-1. 시험규격 목록
  ├── 규격명 (KS·IEC·ISO·자사규격)
  ├── 설정 근거 (해당 규격 적용 이유)
  └── 시험 방법 개요

6-2. 실측값 (성적서 참조 또는 요약)
  ├── 시험기관명
  ├── 시험 일자
  ├── 측정값 vs. 기준값
  └── 판정 (적합/부적합)
```

### 4.2 자사 3개 제품 성능 시험 항목 매트릭스

| 시험 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW | 참조 표준 |
|---|---|---|---|---|
| DQE (Detective Quantum Efficiency) | ✅ 필수 | — | — | IEC 62220-1-1:2015 |
| MTF (Modulation Transfer Function) | ✅ 필수 | — | — | IEC 62220-1-1 |
| NPS (Noise Power Spectrum) | ✅ 필수 | — | — | IEC 62220-1-1 |
| 공간분해능 (Spatial Resolution) | ✅ | — | — | IEC 60627:2013 |
| 대조도 (Contrast) | ✅ | — | — | KS P ISO 자사규격 |
| 잔상 (Image Lag) | ✅ | — | — | IEC 62220-1-1 |
| 선질 (Beam Quality, HVL) | — | ✅ 필수 | — | IEC 60601-2-28 |
| 관전압 정확도 (kVp accuracy) | — | ✅ | — | IEC 60601-2-28 §203.7 |
| 방사선 출력 재현성 | — | ✅ | — | IEC 60601-2-28 |
| 조사야-조사면 일치도 | — | ✅ | — | IEC 60601-2-28 |
| 배터리 용량·수명 | — | ✅ | — | IEC 62133-2 |
| 영상 처리 정확도 | — | — | ✅ | 자사 성능시험 규격 |
| DICOM 적합성 | — | — | ✅ | DICOM Conformance Statement |
| 응답시간 (Response Time) | — | — | ✅ | 자사 규격 |
| SW 기능 시험 | — | — | ✅ | IEC 62304 + 자사 SVP |

### 4.3 시험규격 설정 근거 작성 요령

- 국제 표준 근거: "IEC 60601-2-28:2017을 적용하였으며, 동 규격이 X선관 조립품(X-ray tube assembly)의 성능 시험 방법을 규정하는 국제 표준으로 MFDS 인정 기준과 일치함."
- 자사 규격 근거: "국제 표준에서 정하지 않은 항목(예: 영상 처리 알고리즘 성능)은 의도된 사용목적 및 위험 분석 결과에 따라 자사 시험 규격 OQP-XXXX를 제정하여 적용함."
- KS 표준 근거: "KS A ISO 9283 대응 자사 규격 적용."

---

## 5. 섹션 7 — 안전성 (Safety)

### 5.1 안전성 자료 분류 체계

| 분류 | 해당 제품 | 주요 시험 표준 | 비고 |
|---|---|---|---|
| 전기·기계적 안전 | 전 제품 | IEC 60601-1:2005+A1+A2 (Ed 3.2) | 3개 제품 모두 필수 |
| EMC (전자파) | 전 제품 | IEC 60601-1-2:2014+A1:2020 (Ed 4.1) | 병원 환경 기준 |
| 방사선 방호 | Detector, Source | IEC 60601-1-3:2008+A1+A2, IEC 60601-2-28:2017, IEC 60601-2-54:2022 | |
| 생물학적 안전 | 환자 접촉 부품 | ISO 10993-1:2018 생물학적 평가 | 접촉 여부 판단 필요 |
| SW 안전 | GUI SW + AI 탑재 | IEC 62304:2006+A1:2015 | Safety Class 결정 |
| 사이버보안 | GUI SW | MFDS 사이버보안 가이드라인 (2025.01.10) | |
| Usability | 전 제품 | IEC 62366-1:2015+AMD1:2020 | 사용적합성 |
| 배터리 | Handheld Source | IEC 62133-2 | 리튬이온 해당 시 |

### 5.2 전기·기계적 안전 (IEC 60601-1)

**핵심 분류 및 적용:**
- **기기 유형**: Type B / BF / CF (환자 접촉 전극 유형)
  - X-ray Detector: BF 또는 B (직접 접촉 없으나 환자 근접)
  - Handheld X-ray Source: B (간접 접촉)
  - GUI SW: 소프트웨어 전용 → 하드웨어 호스트 유형 따름
- **보호 등급**: IPxx (분진·액체 침투 보호)
- **절연 수준**: Basic / Supplementary / Reinforced

**주요 시험 항목 (IEC 60601-1):**
- 누설전류 (Leakage Current): Earth, Enclosure, Patient
- 접지 임피던스 (Protective Earth Resistance)
- 전기적 강도 (Dielectric Strength)
- 기계적 강도 (Push·Pull 시험)
- 넘어짐·낙하 저항성

### 5.3 방사선 방호 (X-ray 특화)

| 시험 항목 | Handheld Source | Detector (수동) | 참조 |
|---|---|---|---|
| 누설 방사선 (Leakage Radiation) | ✅ | — | IEC 60601-2-28 §203.6 |
| 반가층 (HVL, Half Value Layer) | ✅ | — | IEC 60601-2-28 §203.7 |
| 초점 크기 (Focal Spot) | ✅ | — | IEC 60336:2005 |
| 방사선 출력 (Air Kerma) | ✅ | — | IEC 60601-2-28 |
| 방사선 감수성 (Dose sensitivity) | — | ✅ | IEC 62220-1-1 |
| 환자 선량 지시 (DAP 등) | ✅ (해당 시) | — | IEC 60601-2-54 |

**방사선 방호 설계 요건 (MFDS 심사 포인트):**
- 1차 차폐 설계 (Primary barrier shielding)
- 조사야 제한 장치 (Collimator)
- 인터락 (Interlock): 문·창 인터락 연동
- 선량 경보 (Dose Alert) 기능
- 사용자 피폭 방지 구조 (핸들 위치, 백산란 차폐)

### 5.4 생물학적 안전 (ISO 10993)

MFDS는 ISO 10993-1:2018 기반 생물학적 평가 수행을 요구.

| 접촉 유형 | 해당 제품 | 평가 항목 |
|---|---|---|
| 단기 표면 접촉 (< 24h) | Handheld Source 그립부 | 세포독성, 감작성 |
| 단기 외부 접촉 | Detector 커버 (환자 피부 접촉 시) | 세포독성, 감작성, 피부 자극 |
| 비접촉 | SW | ISO 10993 대상 아님 |

**비접촉 판정 근거 기재 예시:**
> "본 제품의 모든 재질은 환자 피부에 직접 접촉하지 않으므로 ISO 10993-1:2018 기준 평가 제외 대상임. 단, 세척·소독 과정에서의 화학적 호환성은 제조사 권장 소독제 목록으로 관리함."

### 5.5 SW 안전성 및 사이버보안

#### IEC 62304 Safety Class 결정 (GUI SW)

| Safety Class | 기준 | GUI SW 판단 |
|---|---|---|
| A | SW 고장이 상해 유발 불가 | 해당 불가 (영상 오표시 → 오진 위험) |
| B | SW 고장이 심각하지 않은 상해 유발 가능 | 가능 (영상 화질 저하 등) |
| C | SW 고장이 사망·심각한 상해 유발 가능 | 방사선 제어 연동 기능 해당 |

> **결론**: GUI SW는 Class B 이상, 방사선 조사 제어 기능 포함 시 Class C 일부 적용.

#### MFDS 사이버보안 요건 (2025.01.10 가이드라인)

- 위협 모델링 (Threat Modeling): STRIDE 방법론
- Security Risk Assessment
- SBOM (Software Bill of Materials) 제출
- 보안 업데이트 계획 (Patch Management)
- 취약점 대응 절차 (Vulnerability Disclosure Process)

---

## 6. 3개 지역 비교 매트릭스 (기술문서 섹션별)

| 기술문서 섹션 | MFDS | FDA (eSTAR) | MDR (Annex II) |
|---|---|---|---|
| 사용목적 | §2: 사용목적, 사용방법 | eSTAR §2 Indications for Use (Form 3881 별도) | Annex II §1.1 Intended Purpose |
| 작용원리 | §3: 작용원리 | eSTAR §2 Device Description (작동 원리 포함) | Annex II §2 General Description (작동원리 포함) |
| 성능 | §6: 시험규격·실측값 | eSTAR §3 Performance Testing | Annex II §6 GSPR Testing Evidence |
| 안전성 | §7: 전기·방사선·생물·SW | eSTAR §4~§6 (Cybersecurity·SW·Labeling) | Annex II §4 GSPR + MDCG 가이던스 |
| 임상 | §8: 임상자료 | eSTAR §7 Clinical Data | Annex XIV Clinical Evaluation |
| GMP/QMS | KGMP 적합인정서 별도 | QMSR(21 CFR 820) 별도 | ISO 13485 기반 QMS 증거 |

---

## 7. 작성 체크리스트 (MFDS 제출 전)

### 사용목적 체크리스트
- [ ] 품목분류번호와 사용목적의 일치성 확인
- [ ] 목표 환자군 명시
- [ ] 금기사항 기재
- [ ] 사용 환경(병원/이동식) 명시
- [ ] 사용자 자격 기재
- [ ] SW 포함 시: 독립형 SaMD vs. SiMD 판단 기재

### 작용원리 체크리스트
- [ ] 핵심 물리·전기·화학적 메커니즘 기술
- [ ] 에너지/신호 변환 흐름도 첨부
- [ ] 구성 요소별 역할 기재
- [ ] AI/ML 포함 시: 모델 유형, 입출력 명시
- [ ] 동등제품 비교 시 작용원리 동일성 주장 근거 기재

### 성능 체크리스트
- [ ] 적용 표준 목록 확정
- [ ] 각 표준 선택 근거(설정 근거) 기재
- [ ] 공인 시험기관 성적서 확보 (KTL·KTC·KTR 등)
- [ ] 실측값 ≥ 기준값 확인
- [ ] 자사 규격 제정 및 검증

### 안전성 체크리스트
- [ ] IEC 60601-1 시험 완료
- [ ] IEC 60601-1-2 EMC 시험 완료
- [ ] 방사선 관련 (Source/Detector): IEC 60601-2-28, 60601-2-54 시험
- [ ] ISO 10993-1 생물학적 평가 (접촉 판단 후)
- [ ] IEC 62304 Safety Class 결정·기재
- [ ] 사이버보안 자료 준비 (MFDS 2025 가이드라인)
- [ ] IEC 62366-1 사용적합성 자료

---

## 8. 빈번한 심사 지적사항 (MFDS 기술문서)

| 지적 유형 | 상세 내용 | 대응 방법 |
|---|---|---|
| 사용목적 불명확 | 대상 환자·임상적 용도 모호 | 구체적 적응증·금기 기재 |
| 작용원리 생략 | "X선으로 영상 촬영"만 기재 | 변환 메커니즘·물리 원리 상세 기술 |
| 시험규격 설정근거 미기재 | 성적서만 첨부, 근거 없음 | 각 규격 선택 이유 1~2문장 기재 |
| 실측값 단위 오류 | kVp/mA/ms 단위 혼동 | SI 단위 일관 적용 |
| SW 안전 등급 미기재 | IEC 62304 Safety Class 누락 | SW 위험 분석 결과 기반 Class 명시 |
| 생물학적 평가 미수행 | 접촉 부품 평가 누락 | 접촉 유형별 ISO 10993-1 평가 |
| 사이버보안 자료 부재 | 2025년 이후 필수화 | SBOM + 위협 모델 제출 |
