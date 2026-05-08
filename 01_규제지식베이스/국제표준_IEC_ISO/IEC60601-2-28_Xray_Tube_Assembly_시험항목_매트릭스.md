> 최종 갱신: 2026-05-09 (자동보강 #26)
> 근거: https://webstore.iec.ch/en/publication/32908 | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/medical-x-ray-imaging-devices-conformance-iec-standards | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.30 | https://standards.iteh.ai/catalog/standards/iec/fbb30abd-932d-44dd-8b90-f5eda99f63aa/iec-60336-2020

# IEC 60601-2-28:2017 X-ray Tube Assembly 시험항목 매트릭스

## 1. 표준 개요

| 항목 | 내용 |
|---|---|
| 표준 번호 | IEC 60601-2-28:2017 (Edition 3.0, 2017-06) |
| 정식 명칭 | Medical electrical equipment – Part 2-28: Particular requirements for the basic safety and essential performance of X-ray tube assemblies for medical diagnosis |
| 적용 범위 | 의료진단용 X선관 조립체 (X-ray tube assembly), 최대 관전압 150 kV 이하 |
| 대상 구성 | 회전양극형(rotating anode) 및 고정양극형(stationary anode) X선관 포함 |
| 상위 표준 | IEC 60601-1:2005+AMD1:2012 (General Standard) |
| 병행 Collateral | IEC 60601-1-2 (EMC), IEC 60601-1-3 (방사선방호) |
| 연관 표준 | IEC 60336:2020 (Focal Spot), IEC 60601-2-54:2022 (X-ray 촬영·투시 시스템) |
| TC/SC | IEC TC 62 / SC 62B (Diagnostic imaging) |
| 표준 유형 | Particular Standard (PS) |
| 이전 판 | Ed. 1.0:1993, Ed. 2.0:2010 |

### 1.1 Edition 3 주요 변경 사항 (vs Ed. 2.0:2010)

| 변경 구분 | 내용 |
|---|---|
| 구조 정렬 | IEC 60601-1 Ed.3.2 clause 번호 체계(201.x)로 완전 재정렬 |
| 기술 개정 | 아노드 열적 특성 요건 명확화 (anode heat storage test conditions) |
| 압력 시험 | Annex AA (압력 관련 위험 시험) 정보규범(informative)으로 추가 |
| PEMS | 201.14 Programmable Electrical Medical Systems 요건 신설 |
| EMC | 201.17 — IEC 60601-1-2:2014 기준 참조로 갱신 |
| 재료 | 절연유(insulating oil) 요건 IEC 60296 등 최신 표준 인용 |

---

## 2. 3개 지역 규제 적용 현황

| 구분 | MFDS (한국) | FDA (미국) | MDR (EU) |
|---|---|---|---|
| 채택 표준 | KS C IEC 60601-2-28 (동등 채택) | IEC 60601-2-28:2017 FDA Recognized Consensus Standard | EN IEC 60601-2-28:2019 (MDR 2017/745 harmonized) |
| 추가 법령 | 의료기기 기준규격 (MFDS 고시) — 전기기계적 안전 공통기준 | 21 CFR Part 1020 (EPRC) 특히 § 1020.30 | MDR Annex I GSPR |
| 누설방사선 기준 | ≤ 1 mGy/h (IEC 동일) | **≤ 0.876 mGy/h** (≈ 100 mR/h, CFR 기준 더 엄격) | ≤ 1 mGy/h (IEC 동일) |
| 제출 서류 | 기술문서 내 시험성적서 (국내 공인시험기관) | eSTAR 섹션 내 Performance Testing 데이터 + Declaration of Conformity | Technical Documentation Annex II + NB 심사 |
| FDA 인정 여부 | N/A | Standard Identification No. 44832 (CDRH 인정) | N/A |
| 동등성 처리 | IEC 60601-2-28 적합 → MFDS 기준 충족 간주 | FDA 2023-02 Guidance: IEC 60601-2-28 적합 → EPRC 동등 처리 | EN IEC 60601-2-28 적합 → GSPR 11·14·15 추정 충족 |

> **핵심 차이:** 누설방사선 한계값이 FDA 기준(0.876 mGy/h)이 IEC/MFDS/MDR(1 mGy/h)보다 약 12% 엄격함.  
> 글로벌 출시를 위해서는 **FDA 기준(≤ 0.876 mGy/h)으로 설계 및 시험** 후 IEC/MDR 자동 충족하는 전략 권장.

---

## 3. Clause 구조 및 시험항목 전체 매트릭스

> IEC 60601-2-28 "particular standard"는 상위 IEC 60601-1의 조항을 201.x 번호로 수정·추가.  
> 아래는 본 표준에서 **실제 시험이 요구되는 핵심 조항** 위주로 정리.

### 3.1 핵심 시험 조항 요약

| Clause | 제목 | 시험 유형 | Pass Criteria 요약 |
|---|---|---|---|
| **201.7** | 식별·표시·문서 | 시각 검사 | 정격값·초점크기 등 필수 표시 확인 |
| **201.8** | 전기적 위험 방호 | 절연 내압 시험 | HV 절연 성능 (기기 정격에 따른 내압) |
| **201.9** | 기계적 위험 방호 | 구조 검사 + Annex AA | 하우징 기계 강도, 압력 내성 |
| **201.10.3** | 누설방사선 | ★ 방사선 측정 | **≤ 1 mGy/h** @ 1 m (FDA는 ≤ 0.876 mGy/h) |
| **201.11** | 과온도 방호 — 아노드 열특성 | 열 시험 | 아노드 열저장 용량, 냉각률, 과부하 보호 |
| **201.12** | 제어 정확도 | 측정 | kVp·mA·시간 출력 정밀도 |
| **201.13** | 고장 상태 | 고장 조건 시뮬레이션 | 단일 고장 시 안전 기능 유지 |
| **201.14** | PEMS | 소프트웨어 검증 | IEC 62304 연계, 소프트웨어 위험 통제 |
| **201.15** | 구조 요건 | 구조 검사 | 하우징 절연유, 팽창 장치, 창(window) 구조 |
| **201.17** | EMC | IEC 60601-1-2 시험 | 방사·전도 방출, 면역성 (별도 문서 참조) |
| **203** | 방사선 방호 추가 요건 | IEC 60601-1-3 연계 | HVL, 고유 필터, Focal Spot |
| **Annex AA** | 압력 위험 시험 | (정보규범) | 하우징 내압·파열 안전성 |

---

### 3.2 Clause 201.10.3 — 누설방사선 (Leakage Radiation) ★ 최중요

**정의:** 유용빔(useful beam) 이외 방향으로 X선관 하우징에서 방출되는 방사선.

| 항목 | 요건 |
|---|---|
| **한도값 (IEC / MFDS / MDR)** | ≤ **1 mGy/h** (공기커마, 초점에서 1 m 전방향) |
| **한도값 (FDA, 21 CFR 1020.30)** | ≤ **0.876 mGy/h** (≈ 100 mR/h) |
| 시험 조건 | 최대 정격 연속 부하 (Leakage Technique Factors: max kVp + max continuous mA) |
| 측정 거리 | 초점(focal spot)에서 1 m |
| 측정 방향 | 전 방향 (특히 하우징 이음부·창·접속부 집중 측정) |
| 측정 평균 면적 | **100 cm²** (최대 한 변 ≤ 20 cm) |
| 빔 처리 | 콜리메이터 완전 폐쇄 + 납 차폐판으로 유용빔 차단 후 측정 |
| 측정기 | 이온전리조(ionization chamber) 또는 GM 계수기 (교정된 방사선 측정기) |

> **설계 전략 (자사 Handheld X-ray Source):**  
> 휴대형이므로 하우징 외부에서 초점까지 거리 = 1 m 확보가 어려울 수 있음.  
> 시험은 기준점(focus)에서 1 m 측정이므로 실제 측정 셋업에서 기하학적 배치 계획 필요.  
> 납 차폐 두께 설계 시 **0.876 mGy/h** (FDA 기준) 목표로 마진 확보.

---

### 3.3 Clause 201.11 — 과온도 방호 (Thermal Protection)

아노드(anode) 및 하우징(housing)의 열적 특성 관련 시험.

#### 3.3.1 아노드 열저장 용량 (Anode Heat Storage Capacity)

| 항목 | 요건 |
|---|---|
| **정의** | 아노드가 손상 없이 저장 가능한 최대 열 에너지 (단위: HU 또는 J) |
| **표기 의무** | 정격 아노드 열저장 용량 및 냉각 곡선(cooling curve)을 IFU/기술사양서에 기재 |
| 시험 방법 | 정격 최대 부하 반복 입력 → 아노드 표면 온도 또는 열 측정으로 한계 도달 확인 |
| 안전 장치 | 아노드 과열 시 자동 차단(overload protection): 인터록 또는 소프트웨어 제어 |
| 오버로드 보호 | 허용 부하 초과 조사 방지 (anode overload indicator 또는 interlocking required) |

#### 3.3.2 하우징 열저장 용량 (Housing Heat Storage Capacity)

| 항목 | 요건 |
|---|---|
| **정의** | 절연유 포함 X선관 하우징 전체의 열 저장 능력 |
| 냉각률 | 제조사 지정 냉각 곡선 기재 (자연 냉각 vs 강제 냉각 구분) |
| 온도 한계 | 하우징 외부 표면 온도 ≤ 기준값 (접촉 가능 부위) |
| 절연유 팽창 | 과온 시 절연유 팽창 대응 — 팽창 탱크(expansion chamber) 요건 |

#### 3.3.3 과부하 보호 장치 (Overload Protection)

| 항목 | 요건 |
|---|---|
| 기능 | 아노드 또는 하우징이 정격 한계 초과 전 조사 자동 차단 또는 경보 |
| 소프트웨어 구현 | GUI SW 연동 시 → 201.14 PEMS + IEC 62304 위험 통제 기능으로 문서화 |
| 시험 방법 | 정격 초과 부하 입력 시 차단 동작 확인 (고장 조건 시험과 연계) |

---

### 3.4 Clause 201.7 — 식별·표시·문서

| 표시 항목 | 요건 |
|---|---|
| **정격 관전압** | kVp (최대값) 표시 |
| **정격 관전류** | mA (연속·단순·복합 정격 구분) |
| **정격 입력전력** | kW (anode input power rating) |
| **초점 크기** | **IEC 60336 공칭 초점값(Nominal Focal Spot Value)** 기재 (예: 0.4, 0.8, 1.0 등) |
| **아노드 열저장 용량** | HU(Heat Unit) 또는 J 표시 |
| **하우징 열저장 용량** | HU 또는 J 표시 |
| 제조자·모델·S/N | 표준 IEC 60601-1 §7 요건 준수 |
| IFU 내용 | 조작 절차, 냉각 방법, 유지보수, 부품 수명, 처분 방법 포함 |

---

### 3.5 Clause 201.8 — 전기적 위험 방호 (고전압 절연)

| 시험 항목 | 요건 |
|---|---|
| HV 케이블 절연 내압 | 고전압 케이블 연결부 포함 절연 내압 시험 |
| 크리피지(Creepage) | HV 회로 공기 간격(clearance) 및 연면거리 — 정격 전압에 따른 IEC 60601-1 Table |
| 전위 평형 단자 | 하우징 금속 외함의 Protective Earth 연속성 |
| 절연유 내압 | 절연유 절연 파괴 전압 ≥ 30 kV (IEC 60296 기준) |

---

### 3.6 Clause 203 — 방사선 방호 추가 요건 (IEC 60601-1-3 연계)

IEC 60601-2-28:2017의 Clause 203은 IEC 60601-1-3(방사선방호 collateral standard)의 요건을 X선관 조립체에 특화 적용.

| 항목 | 요건 | 관련 조항 |
|---|---|---|
| **고유 필터 (Inherent Filtration)** | 관전압 70 kVp 기준 최소 Al 등가 두께 명세 및 기재 | IEC 60601-1-3 §13 |
| **HVL (Half-Value Layer)** | kVp별 최소 HVL (mm Al) — IEC 60601-1-3 Table (前 매트릭스 문서 참조) | IEC 60601-1-3 §13.2.101 |
| **Focal Spot 측정** | IEC 60336:2020 방법으로 측정, 공칭값 허용 오차 이내 | IEC 60336:2020 |
| **Focal Spot 표시** | 공칭 초점값(NFV) 또는 실측값 IFU·하우징에 기재 | 201.7 |

#### IEC 60336:2020 Focal Spot 공칭값 및 허용 오차

| 공칭 초점값 (NFV) | 초점 크기 측정 허용 오차 |
|---|---|
| 0.1 | 0.15 mm 이하 |
| 0.2 | 0.30 mm 이하 |
| 0.3 | 0.45 mm 이하 |
| 0.4 | 0.60 mm 이하 |
| 0.6 | 0.90 mm 이하 |
| 0.8 | 1.20 mm 이하 |
| 1.0 | 1.40 mm 이하 |
| 1.2 | 1.70 mm 이하 |
| 1.4 | 1.90 mm 이하 |
| 2.0 | 2.60 mm 이하 |

> Focal Spot 측정 방법: 핀홀 카메라(pinhole), 슬릿 카메라(slit), 스타 패턴, 디지털 방법 (IEC 60336:2020 §5~7 참조).

---

### 3.7 Clause 201.14 — PEMS (Programmable Electrical Medical Systems)

GUI SW 또는 임베디드 컨트롤러가 X선관 조사 파라미터를 제어하는 경우 적용.

| 항목 | 요건 |
|---|---|
| 소프트웨어 위험 관리 | IEC 62304 + ISO 14971 연계 — SW 제어 오류가 과조사·과열로 이어지는 시나리오 분석 |
| 아노드 과부하 소프트웨어 제어 | 노출 인터록(exposure interlock) SW 신뢰성 요건 |
| 보안 | 무단 파라미터 변경 방지 (사이버보안 요건 연계) |
| 문서 | SRS·SDS·SVP 내 PEMS 위험 통제 기능 명세 |

---

## 4. 자사 3개 제품 영향 맵핑

| Clause | 적용 항목 | Handheld X-ray Source | X-ray Detector | 촬영실 GUI SW |
|---|---|---|---|---|
| 201.7 | 표시 (정격·초점·열용량) | ★ 직접 적용 (전항 필수) | △ 시스템 내 X-ray 소스 참조 | — |
| 201.8 | HV 절연 내압 | ★ 직접 적용 | — | — |
| 201.9 + Annex AA | 기계 강도·압력 시험 | ★ 직접 적용 | — | — |
| **201.10.3** | **누설방사선 ≤ 0.876 mGy/h** | ★★ 최중요 (FDA 기준 목표) | — | — |
| 201.11 | 아노드·하우징 열특성 | ★ 직접 적용 | — | △ 과부하 보호 SW 연동 |
| 201.12 | 제어 정확도 | ★ 직접 적용 | — | ★ SW 파라미터 설정 정밀도 |
| 201.13 | 고장 상태 | ★ 직접 적용 | — | ★ SW 고장 시 안전 동작 |
| **201.14** | **PEMS** | ★ (임베디드 제어) | — | ★★ 핵심 — IEC 62304 연계 |
| 201.15 | 하우징 구조 | ★ 직접 적용 | — | — |
| 201.17 | EMC | ★ 별도 60601-1-2 시험 | ★ 별도 시험 | ★ 별도 시험 |
| 203 + 60336 | Focal Spot·HVL·필터 | ★ 직접 적용 | — | — |

> ★★ = 주요 인허가 요건 / ★ = 직접 적용 / △ = 간접 적용 / — = 해당 없음

### 4.1 Handheld X-ray Source 특수 고려사항

| 이슈 | 내용 | 대응 |
|---|---|---|
| 배터리 구동 | Class II 또는 내부전원 기기 → 분류(201.6) 및 절연 요건 영향 | 배터리 설계 시 IEC 62133-2 병행 검토 |
| 소형 하우징 | 누설방사선 차폐 두께 최적화 어려움 | 납 복합 차폐재 적용, 방사선 시뮬레이션(Monte Carlo) 선행 |
| 열 관리 | 소형 폼팩터 → 아노드·하우징 냉각 제한 | 정격 부하 제한 + 냉각 인터록 강화 |
| 초점 크기 | 진단 화질 vs 열 부하 트레이드오프 | NFV 0.4~0.8 범위 설계 권장 (IEC 60336 허용 오차 확인) |
| 누설방사선 측정 셋업 | 소형 기기 특성상 조작자 피폭 우려 | 시험 시 1 m 거리 확보, 방향별 전수 측정 |

### 4.2 GUI SW 연동 요건

| 기능 | IEC 60601-2-28 요건 | IEC 62304 연계 |
|---|---|---|
| kVp 설정·제어 | 201.12 정확도 요건 | SW Class B 이상 — 오류 시 과조사 위험 |
| 노출 인터록 | 201.11/201.13 과열/고장 보호 | Class B/C — 안전 기능 요건 |
| 아노드 부하 모니터링 | 201.11 과부하 방지 | Class B — 실시간 열 계산 알고리즘 검증 |
| 조사 파라미터 로그 | 201.14 PEMS 이력 관리 | Class A/B — 기록 무결성 |

---

## 5. 시험 절차 개요 (시험 계획 수립 용)

### 5.1 시험 순서 권장

```
1. 설계 검토 (201.7 표시, 201.15 구조 문서 적합성)
2. 전기 안전 시험 (201.8 HV 절연, 접지 연속성)
3. 기계 강도 시험 (201.9, Annex AA 압력 시험)
4. 열 특성 시험 (201.11 아노드·하우징 열용량, 냉각 곡선)
5. 누설방사선 시험 (201.10.3) ← 가장 중요, 선행 차폐 설계 필수
6. Focal Spot 측정 (IEC 60336 방법)
7. HVL 측정 (IEC 60601-1-3 §13.2.101)
8. 제어 정확도 (201.12 kVp·mA 측정)
9. 고장 조건 시험 (201.13)
10. EMC 시험 (IEC 60601-1-2 별도)
```

### 5.2 시험기관 요건

| 지역 | 요건 |
|---|---|
| 한국 (MFDS) | 식약처 지정 시험기관 (한국산업기술시험원 KTL, KOTITI 등) |
| 미국 (FDA) | NRTL(Nationally Recognized Testing Laboratory): UL, Intertek, TÜV SÜD America 등 |
| EU (MDR) | Notified Body 지정 또는 ISO 17025 인정 시험기관 |

---

## 6. 3개 지역 Gap 분석 요약

| 요건 | MFDS | FDA | MDR |
|---|---|---|---|
| 누설방사선 | 1 mGy/h | **0.876 mGy/h** (엄격) | 1 mGy/h |
| 표준 인정 방식 | 고시 인용 (KS 동등 채택) | Recognized Consensus Standard + Declaration of Conformity | Harmonized Standard (추정 충족) |
| 시험 성적서 | 국내 공인기관 필수 | NRTL 또는 ISO 17025 기관 | ISO 17025 기관 |
| Focal Spot 표시 | IEC 60336 공칭값 | IEC 60336 공칭값 | IEC 60336:2020 공칭값 |
| HVL 요건 | IEC 60601-1-3 동일 | 21 CFR 1020.30(m) 기준 (유사) | IEC 60601-1-3 동일 |
| PEMS (SW 제어) | IEC 62304 연계 | IEC 62304 + FDA SW Guidance | IEC 62304 + MDCG 2019-16 |

**결론:** FDA 누설방사선 기준(0.876 mGy/h)으로 설계·시험하면 MFDS·MDR 자동 충족. 단일 시험 전략 가능.

---

## 7. 참조 문서

| 문서 | 용도 |
|---|---|
| IEC 60601-2-28:2017 | 본 표준 원문 |
| IEC 60601-1-3:2008+AMD1+AMD2:2021 | 방사선방호 Collateral Standard |
| IEC 60336:2020 | Focal Spot 측정 |
| IEC 60601-1:2005+AMD1:2012 | 일반 안전 요건 |
| IEC 60601-1-2:2014+A1:2020 | EMC |
| IEC 62304:2006+A1:2015 | 의료기기 SW 수명주기 |
| 21 CFR § 1020.30 | FDA EPRC 진단 X선 시스템 요건 |
| FDA Guidance (2023-02) | IEC 표준과 EPRC 동등성 처리 |
| EN IEC 60601-2-28:2019 | EU 조화표준 (MDR) |
| MDR 2017/745 Annex I GSPR 11 | 방사선 방호 일반 안전·성능 요건 |

---

*참조 문서:*
- *[IEC 60601-2-28:2017 Webstore](https://webstore.iec.ch/en/publication/32908)*
- *[FDA 2023-02 Guidance — Medical X-Ray IEC Conformance](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/medical-x-ray-imaging-devices-conformance-iec-standards)*
- *[21 CFR § 1020.30 (eCFR)](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.30)*
- *[IEC 60336:2020 (Focal Spot)](https://webstore.iec.ch/en/publication/62504)*
