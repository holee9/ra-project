> 최종 갱신: 2026-05-03 (자동보강 #12)
> 근거: https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (EU MDR 2017/745, Annex I, OJ L 117, 5.5.2017) | https://health.ec.europa.eu/medical-devices-sector/new-regulations/guidance-mdcg-endorsed-documents-and-other-guidance_en (MDCG 가이던스 목록) | https://health.ec.europa.eu/document/download/daa1fc59-9d2c-4e82-878e-d6fdf12ecd1a_en?filename=mdcg_2024-10_en.pdf (MDCG 2024-10 — Clinical Evidence & GSPR)

# MDR Annex I — General Safety and Performance Requirements (GSPR) 전항 맵핑 체크리스트

## 개요

| 항목 | 내용 |
|---|---|
| 법적 근거 | EU MDR 2017/745, **Annex I** (General Safety and Performance Requirements) |
| 구성 | Chapter I (일반 요건, §1~9) + Chapter II (설계·제조, §10~23) + Chapter III (정보 제공, §23) |
| 적용 목적 | 적합성 선언 (DoC) 및 Technical Documentation의 GSPR 섹션 작성 기준 |
| 연계 문서 | Annex II §4 (GSPR checklist 참조 섹션), IEC/ISO 조화표준, Risk Management File |
| 주요 가이던스 | MDCG 2024-10 (Clinical evidence in relation to GSPR conformity) |

> **사용 방법**: 각 GSPR 항에 대해 ① 적용 여부, ② 적합성 입증 방법, ③ 근거 문서를 기재.
> 자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW) 각각 적용.

---

## 적합성 입증 방법 범례

| 코드 | 의미 |
|---|---|
| HS | 조화표준(Harmonized Standard) 완전 준수 → presumption of conformity |
| HS-P | 조화표준 부분 준수 + 보완 자료 |
| CS | Common Specification 준수 |
| TEST | 자체 시험 보고서 |
| RMF | Risk Management File (ISO 14971:2019) |
| CER | Clinical Evaluation Report |
| SPEC | 설계 사양서·검증 기록 |
| N/A | 해당 없음 (근거 명시 필요) |

---

## CHAPTER I — GENERAL REQUIREMENTS

### §1 — 전반적 안전성·성능 요건

> *Devices shall achieve the performance intended by their manufacturer and shall be designed and manufactured in such a way that, during normal conditions of use, they are suitable for their intended purpose... risks... constitute acceptable risks when weighed against the benefits to the patient.*

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 1.1 | 의도된 성능 달성 | ● | ● | ● | HS + TEST | IEC 62220-1-1 DQE 시험, IEC 60601-2-54, 기능 검증 |
| 1.2 | 정상 사용 조건에서 의도된 목적에 적합 | ● | ● | ● | SPEC + TEST | 사용조건 검증, 성능 시험 보고서 |
| 1.3 | Benefit이 Risk를 상회 | ● | ● | ● | RMF + CER | ISO 14971:2019 RMF, CER |
| 1.4 | 임상적 상태·환자 안전 위협하지 않음 | ● | ● | ● | RMF + CER | 잔여위험 평가 |

### §2 — 위험 최소화 원칙

> *The requirement to minimise risks shall be understood as the requirement to reduce risks as far as possible without adversely affecting the benefit-risk ratio.*

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 2.1 | ALARP(As Low As Reasonably Practicable) 원칙 적용 | ● | ● | ● | RMF | ISO 14971:2019 §5~6 |
| 2.2 | 위험 저감이 편익을 악화시키지 않음 입증 | ● | ● | ● | RMF | Risk-benefit 분석 문서 |

### §3 — Risk Management 시스템

> *Manufacturers shall establish, implement, document and maintain a risk management system...*

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 3.1 | Risk management 전 생애주기 연속 반복 프로세스 | ● | ● | ● | RMF | ISO 14971:2019 §4 |
| 3.2 | 위험 추정·평가 프로세스 | ● | ● | ● | RMF | ISO 14971:2019 §5 |
| 3.3 | 위험 통제 조치 실시 | ● | ● | ● | RMF | ISO 14971:2019 §6 |
| 3.4 | 적용된 통제 조치 효과 모니터링 | ● | ● | ● | RMF + PMS | ISO 14971:2019 §9 + Annex III PMS |

### §4 — 잔여위험 수용성

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 4.1 | 모든 통제 조치 적용 후 잔여위험 수용 가능 | ● | ● | ● | RMF | ISO 14971:2019 §6.7, Risk Acceptability Matrix |
| 4.2 | 잔여위험 공개 (라벨/IFU) | ● | ● | ● | SPEC | IFU 문서 |

### §5~9 — 기타 일반 요건

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 5 | 조합 기기 위험 포함 (combinations) | ● | ● | ● | RMF | 조합 위험 평가 |
| 6 | 위험 정보 사용자에게 전달 | ● | ● | ● | SPEC | 라벨, IFU, 교육자료 |
| 7 | 의도되지 않은 기능·작동 방지 | ● | ● | ● | TEST + SPEC | 오류 모드 분석, 기능 검증 |
| 8 | 저장·운반 중 특성 유지 | ● | ● | ● | TEST | 포장 검증, 환경 시험 |
| 9 | 수명 종료까지 안전성·성능 유지 | ● | ● | ● | SPEC + TEST | 내구성 시험, 수명 검증 |

---

## CHAPTER II — REQUIREMENTS REGARDING DESIGN AND MANUFACTURE

### §10 — 화학적·물리적·생물학적 특성

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 10.1 | 사용 재료의 독성 없음 확인 | ● | ● | N/A | TEST | ISO 10993-1 생물학적 평가 (환자 접촉 부위) |
| 10.2 | 재료와 조직·세포·체액 적합성 | ● (접촉 시) | N/A | N/A | TEST | ISO 10993 시리즈 |
| 10.3 | 오염물질·잔류물 허용 한도 이내 | ● | ● | N/A | TEST | 해당 표준 |
| 10.4 | 의도하지 않은 물질 침투 방지 | ● | ● | N/A | SPEC | 인클로저 설계 검증 |
| 10.5 | 나노소재 — 추가 위험 평가 | [검증 필요] | [검증 필요] | N/A | RMF | 나노소재 사용 여부 확인 필요 |

### §11 — 감염·미생물 오염

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 11.1 | 미생물 오염 위험 최소화 | ● (접촉 시) | ● | N/A | SPEC | 세척·소독 지침 (IFU) |
| 11.2 | 동물 또는 인체 기원 조직 없음 | ● | ● | N/A | SPEC | 재료 선언서 |
| 11.3 | 멸균 기기: 멸균 상태 유지 패키지 | N/A (비멸균) | N/A | N/A | — | 비멸균 제품 → N/A 근거 기술 |

### §12 — 생물학적 기원 재료 (해당 없음)

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 |
|---|---|---|---|---|---|
| 12 | 동물·인체 기원 재료 사용 시 추가 요건 | N/A | N/A | N/A | 재료 선언서로 해당 없음 입증 |

### §13 — 의약 물질 포함 기기 (해당 없음)

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 |
|---|---|---|---|---|---|
| 13 | 의약 물질 포함 시 추가 요건 | N/A | N/A | N/A | 재료 선언서로 해당 없음 입증 |

### §14 — 나노소재 (확인 필요)

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 |
|---|---|---|---|---|---|
| 14 | 나노소재 포함 시 위험 특성화 | [검증 필요] | [검증 필요] | N/A | 재료 목록 검토 필요 |

### §15 — 멸균 제품 (해당 없음)

| # | GSPR 요건 | 비고 |
|---|---|---|
| 15 | 공급 시 멸균 기기 요건 | 자사 3개 제품 모두 비멸균 → N/A; IFU에 세척·소독 방법 기재로 대응 |

### §16 — 계측 기능이 있는 기기

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 16.1 | 측정 정확도 설계·제조 | ● (선량 표시) | ● (kV, mAs 표시) | ● (영상 픽셀 값) | TEST | IEC 60601-2-54, IEC 62220-1-1 |
| 16.2 | 측정 불확도 한계 내 | ● | ● | ● | TEST | 보정 절차서 |
| 16.3 | 측정값 단위 SI 단위 사용 | ● | ● | ● | SPEC | IFU, UI 확인 |

### §17 — 방사선 방호 (**X-ray 기기 핵심**)

> MDR Annex I §17은 이온화·비이온화 방사선 방출 기기에 대한 핵심 요건. X-ray 기기 전용 강화 요건 포함.

#### §17.1 — 일반 방사선 요건

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 17.1(a) | 방사선 방출 최소화 (치료 목적 외) | ● | ● | N/A | TEST | IEC 60601-1-3, IEC 60601-2-28, IEC 60601-2-54 |
| 17.1(b) | 의도한 방사선만 방출 | N/A | ● | N/A | TEST | X-ray Source 누설 선량 시험 |
| 17.1(c) | 운용자·사용자·제3자 방사선 방호 | ● | ● | N/A | TEST | 산란선 측정, 방호 설계 |
| 17.1(d) | 방사선 방출 방지/제어 지침 IFU 수록 | ● | ● | N/A | SPEC | IFU Rev. 확인 |

#### §17.2 — 이온화 방사선 의료 기기 (진단용)

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 17.2(a) | 기하학적·에너지·분포 특성 조절 가능하도록 설계 | N/A | ● | N/A | TEST | kV, mA, 시간, 조사야 제어 검증 |
| 17.2(b) | 진단 목적 특성에 맞는 방사선 품질 보장 | ● | ● | N/A | TEST | IEC 60601-1-3, IEC 62220-1-1 |
| 17.2(c) | 의도하지 않은 산란 최소화 | N/A | ● | N/A | TEST | 누설 선량 ≤ IEC 60601-1-3 한도 |
| 17.2(d) | 선량계측 정보 제공 (환자·운용자) | ● | ● | ● | SPEC + TEST | DAP(Dose Area Product) 표시 검증, GUI 선량 표시 |
| 17.2(e) | 방사선 방출 표시 장치 | N/A | ● | ● | SPEC | 조사 중 표시등, SW 경고 표시 |

### §18 — 전자 프로그래머블 시스템 및 소프트웨어

> **GUI SW는 전용 요건. X-ray Detector와 Handheld Source의 내장 SW에도 적용.**

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 18.1 | SW가 의도된 사용 조건에서 반복 재현 가능하게 기능 | ● | ● | ● | TEST | IEC 62304, V&V 계획·보고서 |
| 18.2 | SW 수명주기 프로세스 수립 | ● | ● | ● | SPEC | IEC 62304:2006+A1:2015 |
| 18.3 | Safety class 결정 및 문서화 | ● | ● | ● | SPEC | IEC 62304 §4.3 (Class A/B/C) |
| 18.4 | 최신 상태 개발 원칙 (state of the art) | ● | ● | ● | SPEC | SW 개발 표준·프로세스 문서 |
| 18.5 | 사이버보안 — 무단 접근 방지 | ● | ● | ● | SPEC + TEST | FDA 2023 Cybersecurity Final Guidance, MDCG 2019-16 Rev.1 |
| 18.6 | AI/ML 기반 SW: PCCP 포함 | [검증 필요] | N/A | [검증 필요] | SPEC | FDA PCCP Guidance 2024-12-03 Final |

### §19 — 능동형(Active) 기기

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 19.1 | 능동 기기 일반 안전 | ● | ● | ● | HS | IEC 60601-1:2005+A1+A2 |
| 19.2 | 전자기 양립성 (EMC) | ● | ● | ● | HS | IEC 60601-1-2:2014+A1:2020 |
| 19.3 | 전기 안전 | ● | ● | N/A | HS | IEC 60601-1 |
| 19.4 | 배터리 안전 (내장 배터리) | N/A | ● | N/A | HS | IEC 62133-2 (Handheld 배터리 적용) |
| 19.5 | 연결·조합 기기와의 호환성 | ● | ● | ● | TEST | 인터페이스 호환 시험 (DICOM, HL7) |

### §20 — 기계적·열적 위험 방호

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 20.1 | 기계적 위험 — 낙하·충격·진동 견딤 | ● | ● | N/A | TEST | IEC 60601-1 §15, 낙하 시험 (Handheld 특히 중요) |
| 20.2 | 열적 위험 — 표면 온도 한도 | ● | ● | N/A | TEST | IEC 60601-1 §11 (Touch current, 표면 온도) |
| 20.3 | 화재 위험 방지 | ● | ● | N/A | HS | IEC 60601-1 §13 |

### §21 — 에너지원·물질로 인한 위험 방호

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 21.1 | 전류·열 등 에너지 방출 위험 방지 | ● | ● | N/A | HS | IEC 60601-1 |
| 21.2 | 의도하지 않은 물질 방출 방지 | ● | ● | N/A | SPEC | 재료 적합성 검토 |

### §22 — 자가 검사·현장 검사 기기 (해당 없음)

| # | GSPR 요건 |
|---|---|
| 22 | 자가 검사·near-patient testing 기기 전용 요건 → 자사 3개 제품 모두 전문가 사용 기기 → N/A (근거 기재 필요) |

---

## CHAPTER III — INFORMATION SUPPLIED WITH THE DEVICE

### §23 — 라벨 및 IFU (Instructions for Use)

#### §23.1 — 일반 정보 표기 요건

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 | 근거 문서 |
|---|---|---|---|---|---|---|
| 23.1(a) | 제조자 이름·주소 | ● | ● | ● | SPEC | 라벨 확인 |
| 23.1(b) | 제조 날짜 (year+month 또는 year) | ● | ● | ● | SPEC | 라벨 확인 |
| 23.1(c) | 제품명·모델·카탈로그 번호 | ● | ● | ● | SPEC | 라벨 확인 |
| 23.1(d) | Lot 번호 또는 일련번호 | ● | ● | ● | SPEC | 라벨 확인 |
| 23.1(e) | UDI-DI + UDI-PI (EUDAMED 등록) | ● | ● | ● | SPEC | UDI 라벨, EUDAMED 등록 기록 |
| 23.1(f) | "STERILE" 표기 (멸균 시만) | N/A | N/A | N/A | — | 비멸균 |
| 23.1(g) | 1회 사용 기기 표시 (해당 시) | [확인 필요] | [확인 필요] | N/A | SPEC | 사용 회수 정책 확인 |
| 23.1(h) | CE 마킹 + NB 번호 | ● | ● | ● | SPEC | CE 인증 취득 후 |
| 23.1(i) | 방사선 경고 심볼 | N/A | ● | N/A | SPEC | ISO 7000 방사선 심볼 |
| 23.1(j) | ISO 15223-1:2021 심볼 사용 | ● | ● | ● | SPEC | 심볼 적합성 검토 |

#### §23.2~23.4 — 특수 기기 정보 요건

| # | GSPR 요건 | X-ray Detector | Handheld Source | GUI SW | 입증 방법 |
|---|---|---|---|---|---|
| 23.2 | 이온화 방사선 기기 — 방사선 유형·에너지 특성 명시 | N/A | ● | N/A | IFU 기재 확인 |
| 23.3 | 에너지 방출 기기 — 출력 특성·에너지 레벨 명시 | N/A | ● | N/A | IFU 기재 확인 |
| 23.4 | SW 기기 — 최소 IT 요건 (OS, HW) 명시 | ● | ● | ● | IFU 기재 확인 |

#### §23.4 IFU 필수 포함 사항 (공통)

| IFU 항목 | X-ray Detector | Handheld Source | GUI SW |
|---|---|---|---|
| 사용목적 + 적응증 | ● | ● | ● |
| 금기 | ● | ● | ● |
| 예상 임상 편익 | ● | ● | ● |
| 잔여위험 정보 | ● | ● | ● |
| 표적 환자군 | ● | ● | ● |
| 설치·유지보수 지침 | ● | ● | ● |
| 세척·소독 지침 | ● | ● | ● |
| 소모품·부속품 | ● | ● | ● |
| 환경 조건 (보관·운반) | ● | ● | ● |
| 특수 폐기 지침 | ● | ● | ● |
| 최종 리비전 날짜 | ● | ● | ● |
| SW 버전 + 개정 이력 | N/A | ● | ● |
| 사이버보안 지침 | ● | ● | ● |

---

## 적합성 입증 조화표준 매핑 요약

| 조화표준 | X-ray Detector | Handheld Source | GUI SW | 연계 GSPR §§ |
|---|---|---|---|---|
| IEC 60601-1:2005+A1+A2 (Ed 3.2) | ● | ● | N/A | §1, §19, §20, §21 |
| IEC 60601-1-2:2014+A1:2020 (EMC) | ● | ● | ● (SW HW포함 시) | §19.2 |
| IEC 60601-1-3:2008+A1+A2 (방사선 방호) | ● | ● | N/A | §17 |
| IEC 60601-1-6:2010+A1+A2 (사용성) | ● | ● | ● | §5, §23 |
| IEC 60601-2-28:2017 (X-ray 관구) | N/A | ● | N/A | §17.2 |
| IEC 60601-2-54:2022 (촬영·투시 장비) | ● | ● | N/A | §16, §17.2 |
| IEC 62220-1-1:2015 (DQE) | ● | N/A | N/A | §1.1, §16.1 |
| IEC 62304:2006+A1:2015 (SW 수명주기) | ● (내장SW) | ● (내장SW) | ● | §18 |
| IEC 62366-1:2015+AMD1:2020 (사용성) | ● | ● | ● | §5, §23 |
| ISO 14971:2019 (위험관리) | ● | ● | ● | §2, §3, §4 |
| IEC 62133-2 (배터리) | N/A | ● | N/A | §19.4 |
| ISO 10993-1:2018 (생물학적 평가) | ● (접촉 부위) | ● (접촉 부위) | N/A | §10.1 |
| IEC 81001-5-1:2021 (Health SW 사이버보안) | ● | ● | ● | §18.5 |

---

## 3개 지역 GSPR 대응 비교

| 요건 범주 | EU (MDR Annex I) | 미국 (21 CFR) | 국내 (MFDS) |
|---|---|---|---|
| 일반 안전·성능 | Annex I §1~9 | 21 CFR 820 QMS + 제품별 특성 기준 | 의료기기법 시행규칙 별표3 (안전에 관한 공통기준규격) |
| 전기 안전 | §19 (IEC 60601-1 조화표준) | 21 CFR 1020 (X-ray), UL 60601-1 | KS C IEC 60601-1 |
| 방사선 방호 | §17 (IEC 60601-1-3 조화표준) | 21 CFR Part 1020.30~32 | 의료기기법 + 방사선 안전법 |
| 소프트웨어 | §18 (IEC 62304 조화표준) | FDA SW Guidance (2022) | MFDS 의료기기 SW 허가심사 가이드라인 (2025) |
| 사이버보안 | §18.5 (MDCG 2019-16 Rev.1) | FDA 2023 Cybersecurity Final Guidance | MFDS 의료기기 사이버보안 가이드라인 (2025.01) |
| 라벨 | §23 (ISO 15223-1 심볼) | 21 CFR Part 801 + FDA IFU Guidance | 의료기기법 제20조 + 표시·기재 가이드라인 |
| 생물학적 안전성 | §10~12 (ISO 10993 조화표준) | FDA ISO 10993-1 Use Guidance | KS P ISO 10993-1 |

---

## 참고 문서 연결

| 문서 | 링크 |
|---|---|
| MDR Annex II TD 템플릿 | `MDR_AnnexII_Technical_Documentation_Template.md` |
| MDR Annex III PMS TD 템플릿 | `MDR_AnnexIII_PMS_TD_Template.md` |
| MDR 인허가 상세가이드 | `../MDR_인허가_상세가이드.md` |
| eSTAR Cybersecurity 섹션 (FDA) | `../../미국_FDA/510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md` |
| MFDS 기술문서 섹션별 작성가이드 | `../../국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md` |
