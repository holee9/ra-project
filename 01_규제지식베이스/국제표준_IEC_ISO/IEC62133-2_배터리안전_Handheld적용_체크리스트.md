> 최종 갱신: 2026-06-09 (검증⑧ — 적용조건·기준 정확화) / 2026-05-09 (자동보강 #27)
> 근거: https://webstore.iec.ch/en/publication/32662 | https://standards.iteh.ai/catalog/standards/clc/601f7d90-e4d2-4a28-8093-338bf87c1606/en-62133-2-2017-a1-2021 | https://www.large-battery.com/blog/medical-batteries-iec-62133-un38-3-standards-compliance/ | https://www.astute-labs.com/blog/battery-operated-medical-devices-iec-62133-iec-60601-1-safety/

# IEC 62133-2:2017 배터리 안전 — Handheld X-ray Source 적용 체크리스트

## 1. 표준 개요

| 항목 | 내용 |
|---|---|
| 표준 번호 | IEC 62133-2:2017 + AMD1:2021 (EN 62133-2:2017/A1:2021) |
| 정식 명칭 | Secondary cells and batteries — Safety requirements for portable sealed secondary lithium cells and batteries for portable applications — Part 2: Lithium systems |
| 적용 범위 | 휴대용 기기에 사용되는 리튬 이차전지 셀 및 배터리 팩 |
| 자사 적용 | **Handheld X-ray Source** (배터리 구동 시 해당) |
| 병행 표준 | UN38.3 (운송), IEC 60601-1 (완성 기기 안전), IEC 60601-1-11 (이동형 기기 환경) |
| TC/SC | IEC TC 21 / SC 21A |
| AMD1:2021 | Protection Circuit Module(PCM) 포함 시험 요건 명확화 |

> **적용 판단:** Handheld X-ray Source가 리튬 이차전지(Li-ion, Li-polymer)로 구동되는 경우 본 표준 적용.  
> 교류 전원 전용 기기는 적용 제외. 완성 기기 수준 안전은 IEC 60601-1으로 별도 처리.

---

## 2. 3개 지역 규제 연계

| 구분 | MFDS (한국) | FDA (미국) | MDR (EU) |
|---|---|---|---|
| 관련 법령 | 의료기기 기준규격 (배터리 안전) | 21 CFR Part 820 QMSR + FDA Battery Guidance | MDR 2017/745 Annex I GSPR 9·17 |
| 표준 인정 | IEC 62133-2 시험성적서 기술문서 포함 | IEC 62133-2 referenced 성능 데이터 + ISO 14971 위험 평가 | EN 62133-2:2017/A1:2021 |
| 운송 요건 | UN38.3 (IATA/IMDG 연계) | UN38.3 (DOT 49 CFR) | UN38.3 (IATA) |
| 추가 요건 | 배터리 표시 규격 (용량·전압·제조사·안전 기호) | 21 CFR 1010.2 Radiation Safety 마킹 | EC 2023/1542 배터리 규정 (Battery Regulation) — 2024~2027 단계 적용 |

---

## 3. IEC 62133-2:2017 핵심 시험 항목 체크리스트

### 3.1 전기적 시험 (Electrical Tests)

| 번호 | 시험명 | 시험 조건 | Pass 기준 |
|---|---|---|---|
| T.1 | 연속 저율 충전 (Continuous low-rate charge) | 0.1C 충전 28일 | 화재·폭발·누액 없음 |
| T.2 | 고온 충전 (Charging at elevated temperature) | 55°C에서 충전 | 화재·폭발·누액 없음 |
| T.3 | 고온 충전 (Cell, 45°C) | 45°C 환경 정격 충전기로 충전 | 화재·폭발·누액 없음 |
| T.4 | 강제 방전 (Forced discharge) | 멀티셀 팩 — 완전 방전 후 역전압 강제 인가 | 화재·폭발·누액 없음 |
| T.5 | 외부 단락 (External short circuit) | 실온·55°C — 외부 단락 (저항 < 100 mΩ) | 합격: 화재·폭발 없음 (IEC 62133-2). 세부 온도 한계 등은 표준 원문 확인 [표준원문 확인] |
| T.6 | 과충전 (Overcharge) | 셀: 10C 2V 또는 정격의 2배; 팩: 보호회로 포함 | 화재·폭발 없음 |
| T.7 | 방전·충전 역전 (Forced discharge, multi-cell) | 역극성 강제 충전 | 화재·폭발 없음 |

### 3.2 기계적 시험 (Mechanical Tests)

| 번호 | 시험명 | 시험 조건 | Pass 기준 |
|---|---|---|---|
| T.8 | 진동 (Vibration) | 10~55 Hz, 0.8 mm 진폭, 3축 각 30분 | 화재·폭발·누액 없음 |
| T.9 | 충격 (Mechanical shock) | 150 g / 6 ms, 반정현파, 6방향 | 화재·폭발·누액 없음 |
| T.10 | 낙하 (Free fall) | 1.0 m (셀) / 1.0 m (팩), 하드 표면 | 화재·폭발·누액 없음 |
| T.11 | 열적 학대 (Thermal abuse) | 130°C 오븐, 30분 | 폭발 없음 (누액·변형 허용) |
| T.12 | 압착 (Crush) — 셀 | 13 kN 힘 또는 변형 50% 중 먼저 도달 | 폭발 없음 (화재 허용 여부 제조사별) |
| T.13 | 저기압 (Altitude simulation) | 11.6 kPa (≈ 15,000 m 고도), 6시간 | 화재·폭발·누액·누전 없음 |

### 3.3 환경 시험 (Environmental Tests)

| 번호 | 시험명 | 시험 조건 | Pass 기준 |
|---|---|---|---|
| T.14 | 온도 사이클 (Temperature cycling) | -40°C ↔ +75°C, 10사이클 | 화재·폭발·누액 없음 |
| T.15 | 고온 보존 (Retention at high temp) | 70°C, 7시간 보존 후 방전 | 화재·폭발·누액 없음 |
| T.16 | 온도 충격 (Temperature shock) | 표준/국가별 추가 요건 확인 [국가요건 확인] | 화재·폭발·누액 없음 |

> **AMD1:2021 추가:** Protection Circuit Module(PCM) 포함 팩 시험 시, PCM 동작 상태에서의 과충전·단락 시험 절차 명확화.

---

## 4. 자사 적용 갭 분석 (Handheld X-ray Source)

| 항목 | 현황 | 필요 조치 |
|---|---|---|
| 배터리 팩 종류 | [설계 확정] Li-ion / Li-polymer (firm) | 셀 사양 확정 → 시험 대상 확정 |
| PCM 포함 여부 | 의료기기 특성상 PCM 필수 권장 | AMD1:2021 기준 PCM 포함 팩 시험 |
| 운송 요건 | UN38.3 시험성적서 필요 (항공 운송 시) | 배터리 제조사 UN38.3 성적서 확보 |
| IEC 60601-1 연계 | 완성 기기 수준: 배터리 포함 시스템 안전 | 60601-1 §8 전기적 안전 + 배터리 충전 회로 검토 |
| ISO 14971 위험 분석 | 열 폭주(thermal runaway), 과충전, 낙하 시나리오 | Risk Management File에 배터리 위험 항목 추가 |
| EU Battery Regulation | EC 2023/1542 단계적 적용 (2024~2027) | 라벨, QR코드, 배터리 여권(Battery Passport) 요건 추적 |
| MFDS 표시 | 배터리 용량(Wh), 전압, 제조사 필수 표기 | 한국 어 표시 포함 IFU 반영 |

---

## 5. IEC 60601-1과의 역할 분담

| 사항 | IEC 62133-2 | IEC 60601-1 |
|---|---|---|
| 대상 | **배터리 셀·팩** 단독 | **완성 기기** (배터리 포함) |
| 충전 안전 | 셀/팩 레벨 과충전·단락 | 완성 기기의 충전기 안전·배터리 적합성 |
| 고장 상태 | 배터리 내부 고장 | 완성 기기 수준 단일 고장 |
| 시험 주체 | 배터리 제조사 + 기기 제조사 | 기기 제조사 (완성 기기 기준) |
| 전략 | 배터리 제조사 IEC 62133-2 성적서 확보 → 기기 시험에 활용 | 완성 기기 시험에서 배터리 포함 통합 검증 |

---

## 6. 체크리스트 요약 (인허가 준비용)

- [ ] 배터리 셀/팩 제조사의 IEC 62133-2:2017+AMD1:2021 시험성적서 확보
- [ ] UN38.3 시험성적서 확보 (항공 운송 포함)
- [ ] 기기 Risk Management File에 배터리 위험 시나리오 추가 (ISO 14971)
- [ ] IEC 60601-1 §8 기준 완성 기기 배터리 통합 시험 계획 수립
- [ ] EU Battery Regulation (EC 2023/1542) 라벨 및 여권 요건 추적
- [ ] MFDS 기술문서에 배터리 안전 시험성적서 포함
- [ ] 배터리 팩 PCM 설계 문서화 (AMD1:2021 대응)

---

*참조:*
- *[IEC 62133-2:2017 IEC Webstore](https://webstore.iec.ch/en/publication/32662)*
- *[EN 62133-2:2017/A1:2021](https://standards.iteh.ai/catalog/standards/clc/601f7d90-e4d2-4a28-8093-338bf87c1606/en-62133-2-2017-a1-2021)*
- *[Medical Batteries IEC 62133 & UN38.3](https://www.large-battery.com/blog/medical-batteries-iec-62133-un38-3-standards-compliance/)*

---
작성: 국제표준 전문가 · 검토(QA8, 2026-06-09): IEC 62133-2 적용은 Handheld X-ray Source가 충전식 리튬 배터리 내장 시에 한함(firm 설계 확인). T.5 합격기준=화재·폭발 없음, 세부 수치·국가요건·배터리 종류는 표준원문/firm 데이터 의존으로 정확화. · 상태: 조건부(배터리 설계·표준원문 대기) · 일자: 2026-06-09
