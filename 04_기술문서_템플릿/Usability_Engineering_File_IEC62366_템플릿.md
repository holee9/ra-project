> 최종 갱신: 2026-05-06 (자동보강 #19)
> 근거: https://webstore.iec.ch/en/publication/67220 | https://www.fda.gov/media/80481/download | https://www.fda.gov/media/163694/download | https://health.ec.europa.eu/document/download/ee7ee8eb-841a-4085-a8dc-af6d55ebf1bd_en | https://udiportal.mfds.go.kr/brd/view/P04_03_02?ntceSn=265

# Usability Engineering File (UEF) 템플릿
## IEC 62366-1:2015+AMD1:2020 기반 · 3개 제품 공통

---

## 0. 규제 근거 및 지역별 요구사항

### 표준 위상

| 지역 | 요구 근거 | 적용 기준 |
|---|---|---|
| **MFDS (국내)** | 의료기기 제조 및 품질관리기준(KGMP) 설계개발 절차; 사용적합성 단계적 의무화 (2등급 2022-01, 3등급 2021-07, 4등급 2021-01) | IEC 62366-1:2015+AMD1:2020 준용 |
| **FDA (미국)** | 21 CFR 820 (QMSR) Design Controls; FDA HFE Guidance 2016; FDA HF Submission Guidance 2022 (final) | IEC 62366-1:2015+AMD1:2020 (FDA Recognized Consensus Standard) + FDA HFE Guidance 병행 적용 |
| **MDR (유럽)** | MDR 2017/745 Annex I GSPR §5 (ergonomics/usability), §23.4 (labeling); Annex II §6.1 (설계개발); MDCG 2021-5 (state-of-art) | IEC 62366-1:2015+AMD1:2020 (조화표준 미등재, state-of-art 표준으로 적용 권고) |

### AMD1:2020 주요 변경사항

| 변경 항목 | 2015 → 2020 |
|---|---|
| Risk Management 참조 | ISO 14971:2007 → **ISO 14971:2019** |
| Primary Operating Functions | 신규: 제품별 의료기기 안전 표준에서 정의 후 UE 프로세스 입력값으로 사용 |
| 사용오류 용어 | "Action error" → **"Physical mismatch"** (신체적 한계 유발 오류) |
| 핵심 과업 (Critical Task) | 신규 도입: 사용오류 시 중대 위해 가능성 있는 과업 명시적 정의 |
| Summative Evaluation §5.9 | 참가자 대표성, 시험 환경 대표성 요건 강화 |
| 훈련(Training) | 위험통제 3순위 수단으로 공식 추가 (기존: 안전 정보까지 2단계) |

---

## 1. UEF 구성 및 산출물 목록

IEC 62366-1은 다음 산출물들의 총체를 **Usability Engineering File (UEF)** 로 정의한다.

| # | 산출물 | IEC 62366-1 절 | FDA HFE 해당 섹션 | 필수 여부 |
|---|---|---|---|---|
| UEF-01 | Intended Use / Intended User / Use Environment 명세 | §4.1 | HFE Report §2 | 필수 |
| UEF-02 | User Profile (사용자 프로파일) | §4.1.1 | HFE Report §3 | 필수 |
| UEF-03 | Use Scenario 목록 | §4.1.2 | HFE Report §4 | 필수 |
| UEF-04 | User Interface Specification (UIS) | §4.3 | HFE Report §5 | 필수 |
| UEF-05 | Use-Related Risk Analysis (URRA) / Use FMEA | §4.2 + §5.4 | HFE Report §6 | 필수 |
| UEF-06 | Critical Task 목록 | §5.4 (AMD1) | HFE Report §6 | 필수 |
| UEF-07 | Formative Evaluation 계획 및 기록 | §5.7, §5.8 | HFE Report §7 | 권고 |
| UEF-08 | Summative Evaluation Plan (SEP) | §5.9 | HFE Report §8 | 필수 |
| UEF-09 | Summative Evaluation Report (SER) / HFE Validation Report | §5.9 | HFE Report §9 | 필수 |
| UEF-10 | Summary of UE Activities | §5.10 | HFE Report §10 | 필수 (510(k) 제출) |
| UEF-11 | UE Plan (UEP) — 전체 계획서 | §4 서문 | — | 권고 |

---

## 2. 3개 제품 영향 맵핑

### 2.1 자사 3개 제품 Overview

| 제품 | 대표 사용자 | 사용 환경 | 규제 클래스 (MFDS/FDA/MDR) | 핵심 위험 시나리오 |
|---|---|---|---|---|
| **X-ray Detector** | 방사선사, 의사 | 촬영실, 응급실, OR | 2등급 / Class II / IIa | 잘못된 검출기 선택 → 과피폭; 검출기 위치 오류 → 진단 실패 |
| **Handheld X-ray Source** | 방사선사, 치과의사, 이동 검진 인력 | 외래, 현장(응급), 구강진료실 | 3등급 / Class II / IIb | 방사선 방향 오조준 → 환자/술자 피폭; 배터리 잔량 오해 → 촬영 중단 |
| **촬영실 GUI SW** | 방사선사, 방사선과 기사 | 촬영실 조종 콘솔, 판독실 | 2등급 SW / Class II / IIa | 잘못된 프로토콜 선택 → 과피폭; 환자 ID 혼동 → 오진 |

### 2.2 Primary Operating Functions (AMD1:2020 §5.4 기반)

| 제품 | Primary Operating Function |
|---|---|
| X-ray Detector | (1) 촬영 프리셋 선택 및 확인 (2) 검출기 패널 배치 확인 (3) 촬영 트리거 |
| Handheld X-ray Source | (1) 노출 파라미터(kVp/mAs) 설정 (2) 방사선 방향 확인 (3) 촬영 트리거 (4) 배터리 상태 확인 |
| 촬영실 GUI SW | (1) 환자/검사 선택 (2) 촬영 프로토콜 선택 (3) 노출 파라미터 확인 및 전송 (4) 획득 이미지 QC |

---

## 3. UEF-01: Intended Use / Intended User / Use Environment

```
문서 ID: [제품코드]-UEF-01
버전:    1.0
작성일:  YYYY-MM-DD
```

### 3.1 Intended Use (사용목적)

**[X-ray Detector 작성 예시]**
```
본 제품은 병원 또는 의원 환경에서 방사선사 및 의사가 진단 목적의 디지털 X선 영상을 
취득하기 위해 사용되는 [Flat-Panel / CsI-TFT 기반] X-ray Detector입니다.
성인 및 소아 환자를 대상으로 흉부, 사지, 척추 등 일반 방사선 촬영에 적용됩니다.
```

**[Handheld X-ray Source 작성 예시]**
```
본 제품은 병원 또는 이동 검진 환경에서 방사선사 또는 치과의사가 사용하는 휴대형 
X선 발생장치입니다. 성인 및 소아 환자의 구강 내 촬영 및 소형 골격 촬영에 적용됩니다.
```

**[촬영실 GUI SW 작성 예시]**
```
본 소프트웨어는 X-ray 촬영실 조종 콘솔에서 방사선사가 촬영 프로토콜 선택, 
노출 파라미터 관리, 이미지 획득 및 PACS 전송을 수행하기 위한 GUI 기반 소프트웨어입니다.
```

### 3.2 User Profile (사용자 프로파일)

| 항목 | 방사선사 / 방사선 기사 | 의사 (응급·외상) | [Handheld] 치과의사 |
|---|---|---|---|
| 최소 교육 수준 | 방사선사 면허 (3년제 이상) | 의과대학 6년 | 치과대학 6년 |
| 기기 사용 경험 | 방사선 기기 2년 이상 | 낮음~보통 | 치과용 기기 보통 |
| 피로·스트레스 수준 | 높음 (교대근무) | 매우 높음 (응급) | 보통 |
| 언어 능력 | 한국어 기본; 영어 제한적 | 한국어 기본 | 한국어 기본 |
| 장갑 착용 여부 | 일부 (납 장갑) | 라텍스 장갑 | 라텍스 장갑 |

### 3.3 Use Environment (사용 환경)

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| 장소 | 촬영실, 응급실, OR | 외래, 현장, 구강진료실 | 촬영실 조종 콘솔 |
| 조명 | 어두움~보통 | 다양 | 어두움 (조종실) |
| 소음 수준 | 보통 | 보통~높음 | 보통 |
| 시간 압박 | 높음 | 높음 (응급 포함) | 높음 |
| 전원 환경 | 유선/무선 | 배터리 전용 | 유선 |
| 위생/오염 위험 | 높음 | 높음 | 보통 |

---

## 4. UEF-03: Use Scenario 목록 (예시)

| ID | 시나리오 명 | 관련 제품 | Critical? | 근거 |
|---|---|---|---|---|
| SC-001 | 흉부 PA 촬영 — 서있는 성인 | Detector, GUI SW | Yes | 프로토콜 오선택 시 과피폭 |
| SC-002 | 응급 환자 이동식 촬영 | Detector, Handheld | Yes | 방사선 방향 오조준 위험 |
| SC-003 | 소아 환자 손 촬영 | Detector, GUI SW | Yes | 노출 파라미터 오설정 위험 |
| SC-004 | 배터리 잔량 부족 상태에서 촬영 | Handheld | Yes | 촬영 중단 → 재노출 위험 |
| SC-005 | 환자 ID 선택 후 촬영 | GUI SW | Yes | 환자 혼동 → 오진 |
| SC-006 | 검출기 패널 교체 후 첫 촬영 | Detector | Yes | 보정(Calibration) 미완료 촬영 위험 |
| SC-007 | 일상적 PACS 전송 확인 | GUI SW | No | 전송 실패는 비상 경보로 보완 가능 |
| SC-008 | 촬영 프로토콜 신규 등록 | GUI SW | No | 관리자 전용 기능; 일반 촬영에 영향 최소 |

---

## 5. UEF-05: Use-Related Risk Analysis (URRA) / Use FMEA

```
문서 ID: [제품코드]-UEF-05
연계: ISO 14971 Risk Management File → [제품코드]-RMF-01
```

### 5.1 URRA 매트릭스 템플릿

| ID | Critical Task | 사용 오류 유형 | 원인 | 위해 시나리오 | 심각도 (S) | 발생 가능성 (P) | 위험 수준 | 위험통제 수단 | 잔류 위험 |
|---|---|---|---|---|---|---|---|---|---|
| URRA-001 | 프로토콜 선택 | 오선택 (유사 이름 혼동) | UI 텍스트 유사; 확인 부재 | 과다 노출 → 피부 손상 | 4 | 3 | 높음 | UI 명칭 차별화 + 확인 대화상자 | 낮음 |
| URRA-002 | 방사선 방향 조준 | Physical mismatch (손 떨림, 무게) | 기기 중량 1.5 kg; 단손 조작 | 비대상 부위 피폭 | 4 | 2 | 중간 | 양손 그립 설계 + 타이머 인터락 | 낮음 |
| URRA-003 | 환자 ID 선택 | 오선택 (검색 결과 오독) | 화면 폰트 소; 유사 이름 | 오진 | 5 | 2 | 높음 | 생년월일 2차 확인 팝업 | 낮음 |
| URRA-004 | 배터리 상태 확인 | 정보 간과 | 배터리 아이콘 비가시 | 촬영 중 전원 차단 → 재노출 | 3 | 3 | 중간 | 잔량 20% 음성·진동 알림 | 낮음 |
| URRA-005 | 보정 완료 확인 | 확인 미수행 (습관화) | 보정 완료 메시지 비가시 | 화질 저하 → 재촬영/진단오류 | 3 | 3 | 중간 | 촬영 전 보정 상태 강제 표시 | 낮음 |

> **심각도 기준 (1~5):** 1=무시 가능 / 3=보통 위해 / 5=사망 또는 중증 불가역적 위해  
> **발생 가능성 (1~5):** 1=거의 불가 / 3=가끔 발생 / 5=빈번  
> **위험 수준:** S×P ≥ 12 = 높음, 6~11 = 중간, <6 = 낮음 (내부 기준 조정 가능)

---

## 6. UEF-08: Summative Evaluation Plan (SEP)

```
문서 ID: [제품코드]-UEF-08
```

### 6.1 시험 개요

| 항목 | 내용 |
|---|---|
| 시험 목적 | Critical Task 수행 시 사용오류 없이 안전·효과적 사용 가능함을 확인 |
| 대상 사용자 수 | 최소 15명 (실제 사용자 대표, 사내 직원 제외) |
| 사용자 그룹 | 방사선사 (10명), 의사 (3명), [Handheld: 치과의사 2명] |
| 시험 환경 | 실제 촬영실 또는 동등 시뮬레이션 환경 (조명·소음 조건 재현) |
| 기기 버전 | 최종 설계 기반 (출시 버전 동일) |
| 라벨·IFU | 최종 승인 버전 사용 |

### 6.2 Critical Task 시험 항목

| # | Critical Task | Pass Criteria | 평가 방법 |
|---|---|---|---|
| T-01 | 촬영 프로토콜 선택 | 오선택률 ≤ 5%; 오선택 시 확인 단계에서 자기수정 | 관찰 + Think-aloud |
| T-02 | 노출 파라미터 확인 및 승인 | 오입력 없이 완료; 오입력 시 경고 인지 및 수정 | 관찰 |
| T-03 | 환자 ID 선택 | 오선택률 0% (2차 확인 후 포함) | 관찰 |
| T-04 | 방사선 방향 조준 (Handheld) | 조준 이탈 사건 없음 | 관찰 + 위치 기록 |
| T-05 | 배터리 상태 확인 (Handheld) | 잔량 경고 인지율 ≥ 95% | 설문 + 관찰 |
| T-06 | 보정 완료 확인 | 미보정 상태 인지 후 보정 완료 전 촬영 시도 없음 | 관찰 |

### 6.3 Pass/Fail 기준

- **Pass:** 모든 Critical Task에서 사용오류로 인한 잔류 위험이 허용 범위 내
- **Fail:** Critical Task 중 1개 이상에서 위해 발생 또는 허용 기준 미달 → 재설계·재시험
- **근접오류(Close Call):** 자기수정 없이 오류 직전까지 간 경우 기록 및 분석

---

## 7. UEF-09: Summative Evaluation Report (SER) — 양식

```
문서 ID: [제품코드]-UEF-09
시험 수행일: YYYY-MM-DD ~ YYYY-MM-DD
```

| 항목 | 내용 |
|---|---|
| 시험 기관 | (내부 / 외부 CRO 명) |
| 참가자 수 | N명 (방사선사 n1명, 의사 n2명, …) |
| 탈락 기준 | (사용 경험 기준 미충족 시 제외) |
| 시험 환경 | (장소, 기기 버전, 라벨 버전 기재) |

### 7.1 Critical Task 결과 요약

| Critical Task | 수행 횟수 | 성공 | 오류 (수정 성공) | 오류 (수정 실패) | Pass/Fail |
|---|---|---|---|---|---|
| T-01 | — | — | — | — | — |
| T-02 | — | — | — | — | — |
| T-03 | — | — | — | — | — |
| T-04 | — | — | — | — | — |
| T-05 | — | — | — | — | — |
| T-06 | — | — | — | — | — |

### 7.2 Residual Risk 결론

```
[결론 작성 예시]
모든 Critical Task에서 허용 기준을 충족하였으며, 잔류 위험은 ISO 14971:2019 기준
허용 가능(acceptable) 수준으로 판단된다. 
Fail 항목: 없음.
```

---

## 8. UEF-10: Summary of UE Activities (510(k) 제출용)

> FDA 제출 시 본 섹션을 HFE Report §10으로 제출함.

```
1. 제품 개요 및 사용목적
2. 사용자 그룹 및 환경
3. UE 프로세스 요약 (IEC 62366-1:2015+AMD1:2020 준수 선언)
4. 사용 관련 위험 분석 요약 (Critical Task N개)
5. Formative Evaluation 요약 (회차, 식별된 이슈, 개선 사항)
6. Summative Evaluation 요약 (참가자 N명, 결과: Pass/Fail)
7. 잔류 위험 수용 가능 결론
8. 표준 준수 선언: IEC 62366-1:2015+AMD1:2020 (FDA 인정 합의 표준)
```

---

## 9. 3개 지역 제출 비교 매트릭스

| 요소 | MFDS (국내) | FDA (미국) | MDR (유럽) |
|---|---|---|---|
| **요구 문서 명칭** | 사용적합성 평가 보고서 (KGMP 설계개발) | HFE/UE Report (HFE Submission Guidance 2022) | Usability Engineering File (Annex II 기술문서 일부) |
| **적용 의무 기준** | 2등급 이상 (2022-01 전면 적용) | 위험 기기 전반 (FDA HFE Guidance 2016, risk-based) | Annex I GSPR §5 (모든 CE 기기) |
| **표준 참조** | IEC 62366-1:2015+AMD1:2020 (KGMP 준용) | IEC 62366-1:2015+AMD1:2020 (Recognized Consensus Standard No. 41235) | IEC 62366-1 (state-of-art; MDCG 2021-5) |
| **Summative 참가자 수** | 명시 기준 없음 (실질적 대표성 요구) | 최소 15명/그룹 권고 (HFE Guidance) | 명시 없음 (GSPR §5 대표성 요건) |
| **제출 시점** | 기술문서 내 포함 | 510(k) 또는 PMA에 HFE Report 제출 | NB 심사 시 Technical Documentation에 포함 |
| **외부 시험 기관 필요** | 필수 아님 (내부 수행 가능) | 필수 아님 (단, 독립성 권고) | 필수 아님 (단, 절차·독립성 입증) |
| **훈련 허용 여부** | 허용 (3순위 위험통제) | 허용 (단, 보조 수단; 설계·라벨 우선) | 허용 (AMD1:2020 반영, 보조 수단) |

---

## 10. 위험통제 우선순위 (IEC 62366-1 §5.6, AMD1:2020 반영)

```
1순위: 고유 안전 설계 (Inherently safe design)
         예) 방사선 방향 물리적 잠금, 조준 인터락
2순위: 안전 관련 정보 (Information for safety, labeling, IFU)
         예) 경고음·LED 표시, 화면 경고 메시지
3순위: 훈련 (Training) ← AMD1:2020 신규 추가
         예) 출시 전 사용자 교육, e-Learning
```

---

## 11. 문서 관리 및 버전 이력

| 버전 | 날짜 | 변경 내용 | 작성자 |
|---|---|---|---|
| 1.0 | 2026-05-06 | 최초 작성 (자동보강 #19) | RA Auto Runner |

---

## 12. 참조 문서

| 문서 | 연계 |
|---|---|
| ISO 14971:2019 Risk Management File | [Risk_Management_File_ISO14971_2019_템플릿.md](Risk_Management_File_ISO14971_2019_템플릿.md) |
| IEC 62304 SW 문서세트 | [촬영실_GUI_SW_IEC62304_문서세트.md](../02_제품별_기술파일/03_촬영실_GUI_SW/촬영실_GUI_SW_IEC62304_문서세트.md) |
| MDR Annex I GSPR 체크리스트 | [MDR_AnnexI_GSPR_Checklist.md](../01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexI_GSPR_Checklist.md) |
| MDR Annex II Technical Documentation | [MDR_AnnexII_Technical_Documentation_Template.md](../01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexII_Technical_Documentation_Template.md) |
