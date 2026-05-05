> 최종 갱신: 2026-05-05 (자동보강 #18)
> 근거: https://www.iso.org/standard/72704.html | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017R0745 | https://www.mfds.go.kr/brd/m_1060/view.do?seq=12640 | https://www.fda.gov/media/163915/download

# Risk Management File — ISO 14971:2019 공통 템플릿

> 적용 제품: X-ray Detector / Handheld X-ray Source / 촬영실 GUI SW  
> 기준 표준: ISO 14971:2019 (Ed.3) / EN ISO 14971:2019+A11:2021  
> MFDS 위험관리 가이드라인 2026-02 개정 반영

---

## 목차

1. [Risk Management Plan (위험관리 계획서)](#1-risk-management-plan)
2. [Hazard Identification (위험요소 식별)](#2-hazard-identification)
3. [Risk Estimation & Evaluation (위험 추정·평가)](#3-risk-estimation--evaluation)
4. [Risk Control (위험 통제)](#4-risk-control)
5. [Residual Risk Evaluation (잔여위험 평가)](#5-residual-risk-evaluation)
6. [Overall Residual Risk Evaluation (전체 잔여위험 평가)](#6-overall-residual-risk-evaluation)
7. [Risk Management Report (위험관리 보고서)](#7-risk-management-report)
8. [Post-Production Information (생산 후 정보)](#8-post-production-information)
9. [3개 지역 요구사항 비교 매트릭스](#9-3개-지역-요구사항-비교-매트릭스)
10. [3개 제품 위험요소 맵핑](#10-3개-제품-위험요소-맵핑)

---

## 1. Risk Management Plan

**문서 ID**: RMP-[제품코드]-[버전]  
**작성자**: [이름/직책]  
**검토자**: [이름/직책]  
**승인자**: [이름/직책]  
**버전**: [X.X]  **발행일**: [YYYY-MM-DD]

### 1.1 적용 범위

| 항목 | 내용 |
|---|---|
| 제품명 | [제품 정식 명칭] |
| 모델/버전 | [모델명·SW 버전] |
| 적용 기간 | 개념설계 ~ 폐기 (전 수명주기) |
| 참조 표준 | ISO 14971:2019, IEC 62366-1 (사용성), IEC 62304 (SW) |
| 관련 규제 | MFDS 위험관리 가이드라인 (2026-02) / FDA AAMI/ANSI/ISO 14971:2019 / EN ISO 14971:2019+A11:2021 |

### 1.2 Risk Management Team

| 역할 | 담당자 | 전문 분야 |
|---|---|---|
| Risk Management Representative | [이름] | 규제·RA |
| Mechanical/Hardware Engineer | [이름] | 하드웨어·방사선 |
| Software Engineer | [이름] | SW·Cybersecurity |
| Clinical/Usability Expert | [이름] | 임상·사용성 |
| QA/Regulatory | [이름] | QMS·인허가 |

### 1.3 위험 허용 기준 (Risk Acceptability Criteria)

#### 심각도 (Severity) 등급

| 등급 | 정의 | 예시 |
|---|---|---|
| S1 — Negligible | 불편·일시적 경미 증상 | 피부 자극 |
| S2 — Minor | 가역적 경미 부상 | 경미한 화상 |
| S3 — Serious | 비가역적 부상 또는 심각한 건강 손상 | 영구적 조직 손상 |
| S4 — Critical | 생명을 위협하는 부상 | 방사선 과다 피폭 |
| S5 — Catastrophic | 환자/사용자 사망 | 치명적 전기 쇼크 |

#### 발생가능성 (Probability) 등급

| 등급 | 발생 확률 | 기준 |
|---|---|---|
| P1 — Improbable | < 10⁻⁶ | 이론적으로만 가능 |
| P2 — Remote | 10⁻⁶ ~ 10⁻⁵ | 드물게 발생 가능 |
| P3 — Occasional | 10⁻⁵ ~ 10⁻⁴ | 가끔 발생 |
| P4 — Probable | 10⁻⁴ ~ 10⁻³ | 발생 예상 가능 |
| P5 — Frequent | > 10⁻³ | 반복 발생 예상 |

#### Risk Matrix (위험도 행렬)

|  | S1 | S2 | S3 | S4 | S5 |
|---|---|---|---|---|---|
| **P5** | 🟡 허용가능 | 🔴 허용불가 | 🔴 허용불가 | 🔴 허용불가 | 🔴 허용불가 |
| **P4** | 🟢 허용 | 🟡 허용가능 | 🔴 허용불가 | 🔴 허용불가 | 🔴 허용불가 |
| **P3** | 🟢 허용 | 🟡 허용가능 | 🟡 허용가능 | 🔴 허용불가 | 🔴 허용불가 |
| **P2** | 🟢 허용 | 🟢 허용 | 🟡 허용가능 | 🟡 허용가능 | 🔴 허용불가 |
| **P1** | 🟢 허용 | 🟢 허용 | 🟢 허용 | 🟡 허용가능 | 🟡 허용가능 |

> **MDR 특이사항**: EN ISO 14971:2019+A11:2021 적용 시 "AFAP(As Far As Possible)" 원칙 준수 의무. 위험이 수용 가능 영역에 있어도 추가 위험 통제 수단이 존재하면 반드시 적용해야 함 (국제 표준 ALARP와 다름).  
> **FDA 주석**: 510(k) 제출 시 SW 포함 기기의 경우 Risk Analysis 제출 필수 (21 CFR 820.30 / QMSR 820.30(g)).

### 1.4 Risk Management Activities 계획

| 수명주기 단계 | 수행 활동 | 산출물 |
|---|---|---|
| 개념설계 | 의도된 사용·사용 오류 시나리오 수집 | 사용 시나리오 목록 |
| 요구사항 | 위험요소 식별 (Hazard ID) | Hazard Log |
| 설계 | 위험 추정·평가·통제 | Risk Register |
| V&V | 위험통제 유효성 검증 | 시험 성적서·검증 기록 |
| 생산 | 생산 프로세스 위험 평가 | FMEA (생산) |
| 출시 전 | 전체 잔여위험 수용 가능성 확인 | Risk Management Report |
| 출시 후 | PMS/PMCF/MDR/Vigilance 데이터 모니터링 | PMSR/PSUR 갱신 |

---

## 2. Hazard Identification

**문서 ID**: HAZ-[제품코드]-[버전]

### 2.1 Intended Use & Intended Users (의도된 사용)

```
[제품명]는 [의도된 사용 환경]에서 [의도된 사용자 (예: 방사선사, 임상의)]가
[의도된 목적]을 수행하기 위해 사용됨.
환자 접촉 여부: [직접/간접/없음]
사용 횟수 예상: [1회용/다중 사용]
```

### 2.2 Foreseeable Misuse (합리적으로 예견 가능한 오용)

| # | 오용 시나리오 | 관련 Hazard |
|---|---|---|
| MU-01 | 비자격 인원에 의한 조작 | 방사선 과다 피폭 |
| MU-02 | 불적절한 청소·소독제 사용 | 전기 누전 |
| MU-03 | 권장 범위 외 환경 사용 (온·습도) | 기기 오작동 |
| MU-04 | SW 업데이트 미실시 | 사이버보안 취약점 |
| MU-05 | 배터리 무단 교체 (Handheld) | 폭발·과열 |

### 2.3 Hazard Identification Table

| Hazard ID | Hazard 유형 | Hazard | Hazardous Situation | Harm |
|---|---|---|---|---|
| HAZ-001 | 방사선 | 의도치 않은 방사선 방출 | 환자/사용자 방사선 피폭 | 방사선 손상 (S3~S5) |
| HAZ-002 | 전기 | 누전·전기 충격 | 사용자 접촉 시 쇼크 | 화상·심정지 (S3~S5) |
| HAZ-003 | 소프트웨어 | SW 오류·비정상 출력 | 잘못된 영상 진단 | 진단 오류 (S3~S4) |
| HAZ-004 | 기계 | 낙하·충격 | 기기 파손 → 날카로운 부품 노출 | 열상 (S2~S3) |
| HAZ-005 | 생물학적 | 교차 오염 | 불충분한 소독 → 감염 전파 | 감염 (S3~S4) |
| HAZ-006 | 사용성 | 사용자 인터페이스 오류 | 사용자 오조작 | 방사선 과다 노출 (S3~S5) |
| HAZ-007 | 에너지 (배터리) | 배터리 과충전·손상 | 열폭주 | 화재·화상 (S3~S5) |
| HAZ-008 | 사이버보안 | 무단 접근·조작 | 진단 SW 무결성 훼손 | 진단 오류 (S3~S4) |
| HAZ-009 | 데이터 | 환자 데이터 손실·오류 | 잘못된 환자 데이터 출력 | 진단 오류 (S3) |
| HAZ-010 | EMC | 전자기 간섭 | SW/HW 오동작 | 진단 오류 (S3) |

> 제품별 추가 Hazard는 [§10 제품별 위험요소 맵핑](#10-3개-제품-위험요소-맵핑) 참조.

---

## 3. Risk Estimation & Evaluation

**문서 ID**: RR-[제품코드]-[버전]  (Risk Register)

### 3.1 Risk Register 양식

| Risk ID | Hazard ID | 위험 시나리오 | 심각도 (S) | 발생가능성 (P) | 초기 위험도 | 수용 여부 | 통제 조치 ID |
|---|---|---|---|---|---|---|---|
| RSK-001 | HAZ-001 | 조사 시간 초과로 환자 과다 피폭 | S4 | P3 | 🔴 | 불가 → 통제 필요 | CTR-001, CTR-002 |
| RSK-002 | HAZ-002 | 케이블 손상 → 사용자 감전 | S4 | P2 | 🟡 | AFAP 적용 | CTR-003 |
| RSK-003 | HAZ-003 | SW 버그로 영상 왜곡·오판독 | S4 | P3 | 🔴 | 불가 → 통제 필요 | CTR-004, CTR-005 |
| RSK-004 | HAZ-007 | Handheld 배터리 열폭주 | S5 | P1 | 🟡 | AFAP 적용 | CTR-007 |
| RSK-005 | HAZ-008 | 사이버 공격 → SW 조작 | S4 | P2 | 🟡 | AFAP 적용 | CTR-008 |
| RSK-006 | HAZ-006 | GUI 오류 메시지 미인식 → 반복 조사 | S3 | P3 | 🟡 | AFAP 적용 | CTR-006 |
| RSK-007 | HAZ-010 | EMI로 인한 촬영 중 SW 재시작 | S3 | P2 | 🟡 | AFAP 적용 | CTR-009 |

---

## 4. Risk Control

**문서 ID**: RCM-[제품코드]-[버전]  (Risk Control Measures)

### 4.1 위험 통제 3계층 원칙 (ISO 14971:2019 §6.2)

1. **1순위: Inherent Safety by Design** — 설계 자체로 위험 제거·감소
2. **2순위: Protective Measures** — 안전장치·경보 장치 적용
3. **3순위: Information for Safety** — IFU, 경고 라벨, 교육

> 1순위를 최대한 적용한 후 잔여 위험에 대해 2·3순위 순서로 보완. 3순위만으로 위험을 수용 가능하게 할 수 없는 경우 통제 실패로 판단.

### 4.2 Risk Control Measures 목록

| CTR ID | 대상 Risk ID | 통제 계층 | 통제 조치 내용 | 검증 방법 | 검증 문서 |
|---|---|---|---|---|---|
| CTR-001 | RSK-001 | 1순위 | AEC(자동노출제어) 타이머 회로 설계, 최대 조사시간 하드웨어 제한 | 기능 시험 | TEST-RSK001-A |
| CTR-002 | RSK-001 | 2순위 | 시간 초과 경보음·표시등, DAP(Dose-Area Product) 실시간 표시 | 시험 | TEST-RSK001-B |
| CTR-003 | RSK-002 | 1순위 | IEC 60601-1 기본 절연·이중 절연 설계, 보호 접지 | IEC 60601-1 시험 | TEST-RSK002 |
| CTR-004 | RSK-003 | 1순위 | IEC 62304 SW 개발 프로세스 (Safety Class B/C 적용), 소프트웨어 V&V | SVP/SVR 문서 | SVP-001 |
| CTR-005 | RSK-003 | 2순위 | 영상 무결성 체크섬 검증, 이상 감지 시 경고 표시 | SW 시험 | TEST-RSK003 |
| CTR-006 | RSK-006 | 1순위 | IEC 62366-1 사용성 엔지니어링: 오류 방지 GUI 설계, 사용자 확인 단계 | 사용성 시험 | USE-001 |
| CTR-007 | RSK-004 | 1순위 | IEC 62133-2 / UL 2054 배터리 보호회로, 과충전·과방전 차단 IC | 배터리 안전 시험 | TEST-BAT-001 |
| CTR-008 | RSK-005 | 1순위 | AAMI TIR 57 / IEC 81001-5-1 보안 설계: 인증·암호화·SBOM | 사이버보안 평가 | CYBER-001 |
| CTR-009 | RSK-007 | 1순위 | IEC 60601-1-2 (EMC) 설계 기준 준수, 격리 설계 | IEC 60601-1-2 시험 | TEST-EMC-001 |

### 4.3 위험 통제 유효성 검증 요약

| CTR ID | 검증 결과 | 잔여위험도 (S×P) | 신규 위험 도입 여부 |
|---|---|---|---|
| CTR-001+002 | 통과 | S4·P1 = 🟡 | 없음 |
| CTR-003 | 통과 | S4·P1 = 🟡 | 없음 |
| CTR-004+005 | 통과 | S4·P2 = 🟡 | 없음 |
| CTR-006 | 통과 | S3·P2 = 🟢 | 없음 |
| CTR-007 | 통과 | S5·P1 = 🟡 | 없음 |
| CTR-008 | 통과 | S4·P1 = 🟡 | 없음 |
| CTR-009 | 통과 | S3·P1 = 🟢 | 없음 |

---

## 5. Residual Risk Evaluation

**문서 ID**: RRE-[제품코드]-[버전]

### 5.1 잔여위험 수용 기준

위험 통제 후 잔여위험이 🟡(허용가능) 수준에 있을 경우:
1. 추가적인 통제 수단이 **존재하지 않는다**는 것을 문서로 입증해야 함 (특히 **MDR AFAP 원칙**)
2. 잔여위험의 임상 이익이 잔여위험을 **상회**한다는 근거 제시 필요

### 5.2 Benefit-Risk Analysis 양식

| Risk ID | 통제 후 잔여위험 | 잔여위험 기술 | 임상 이익 | 비율 판단 | 근거 문서 |
|---|---|---|---|---|---|
| RSK-001 | S4·P1 | 통제 후 극히 낮은 확률의 과다 피폭 가능성 | 진단 정확성 향상, 재촬영 감소로 총 피폭량 감소 | 이익 > 위험 | CLIN-001 |
| RSK-002 | S4·P1 | 절연 손상 시 극히 낮은 확률의 감전 위험 | 진단 영상 획득 → 조기 질환 발견 | 이익 > 위험 | CLIN-001 |
| RSK-004 | S5·P1 | 배터리 보호 후 극히 낮은 열폭주 확률 | 이동 진단 가능성 (Handheld) | 이익 > 위험 | CLIN-002 |

---

## 6. Overall Residual Risk Evaluation

**문서 ID**: ORRE-[제품코드]-[버전]

### 6.1 전체 잔여위험 평가 절차

1. 모든 개별 잔여위험을 종합 검토
2. 시스템 레벨 위험 (복합 위험, FMEA 최고위험도) 확인
3. 정량적 위험 합산 (가능한 경우) 또는 정성적 판단
4. 의도된 사용의 임상 이익과 전체 잔여위험 비교

### 6.2 전체 잔여위험 수용 선언문 (양식)

```
본 Risk Management Team은 [제품명], 버전 [X.X]에 대해
ISO 14971:2019에 따른 위험관리 프로세스를 완료하였으며,
모든 통제 후 잔여위험은 수용 가능한 수준임을 확인합니다.

전체 잔여위험의 임상 이익은 잔여위험을 상회합니다.

확인일: [YYYY-MM-DD]
서명: [Risk Management Representative]
```

---

## 7. Risk Management Report

**문서 ID**: RMR-[제품코드]-[버전]

### 7.1 RMR 필수 포함 항목 (ISO 14971:2019 §9)

| 항목 | 내용 | 참조 문서 |
|---|---|---|
| Risk Management Plan 완수 여부 | 계획 대비 실제 수행 활동 요약 | RMP 비교 |
| 위험 허용 기준 충족 여부 | 모든 Risk에 대한 결과 요약 | Risk Register |
| 전체 잔여위험 평가 결론 | 수용 가능 또는 추가 조치 필요 | ORRE 문서 |
| 생산 후 활동 계획 | PMS·Vigilance 연계 | PMS Plan |

### 7.2 RMR 요약 테이블

| 구분 | 수 | 비고 |
|---|---|---|
| 식별된 Hazard 수 | [N] | Hazard Log 기준 |
| 초기 허용불가(🔴) Risk 수 | [N] | 통제 필요 |
| 초기 허용가능(🟡) Risk 수 | [N] | AFAP 적용 |
| 통제 후 허용불가 잔여위험 수 | [0] | 0이어야 출시 가능 |
| 신규 도입 위험 수 | [0] | 통제 조치에 의한 신규 위험 |
| 전체 잔여위험 수용 가능 | Yes/No | 서명 포함 |

---

## 8. Post-Production Information

**문서 ID**: PPI-[제품코드]-[버전]

### 8.1 수집 대상 정보

| 정보 유형 | 수집 방법 | 주기 | 담당 |
|---|---|---|---|
| 이상사례·부작용 | MDR/FDA MDR/MFDS 보고 채널 | 이벤트 기반 | Vigilance 담당자 |
| 불만·고객 피드백 | CRM·CS 시스템 | 상시 | QA |
| 시판 후 임상 데이터 | PMCF Survey / Registry | 연간 | 임상팀 |
| 새로운 위험 정보 | 문헌 검색·경쟁사 리콜 분석 | 분기 | RA |
| 규제 변경 | MFDS·FDA·EUDAMED 모니터링 | 월간 | RA |

### 8.2 위험관리 파일 갱신 트리거

- 이상사례 Trend 발생 (동일 유형 3건 이상)
- 새로운 Hazard 확인
- 위험 통제 무효화 확인
- 제품 변경 (설계·소프트웨어·재료)
- 규제 요건 변경

---

## 9. 3개 지역 요구사항 비교 매트릭스

| 항목 | MFDS (한국) | FDA (미국) | MDR (EU) |
|---|---|---|---|
| **기준 표준** | ISO 14971:2019 (KGMP 반영) | AAMI/ANSI/ISO 14971:2019 (인정 표준) | EN ISO 14971:2019+A11:2021 (조화 표준) |
| **가이드라인** | MFDS 위험관리 가이드라인 (2026-02 개정) | FDA 2024 Software Premarket Guidance | MDCG 2019-3 (ClinEval), EU MDR Annex I |
| **위험 수용 원칙** | ALARP 원칙 + 가이드라인 준수 | ALARP (합리적으로 실행 가능한 한 낮게) | **AFAP** (가능한 한 낮게) — 더 엄격 |
| **제출 요건** | 기술문서 내 위험관리 요약 제출 | SW 포함 기기: Risk Analysis 필수 / 비SW: Risk 언급 권장 | Technical Documentation Annex II §4.2 전체 제출 |
| **기술문서 섹션** | 제품기술서 > 안전성·성능 > 위험관리 | 510(k) eSTAR Section 7.5 (Risk Management) | MDR Annex II §4 (Risk Management Information) |
| **NB/심사 기관 검토** | 해당 없음 (심사원 서면 검토) | FDA 심사관 검토 | **Notified Body 직접 심사** (Class IIa~III) |
| **잔여위험 입증** | 임상 이익 > 위험 진술 요구 | Clinical Benefits vs Risks 섹션 포함 | **MDR Annex I §1 — 모든 잔여위험 이익으로 상쇄 증명 의무** |
| **생산 후 활동 연계** | KGMP 불만처리·이상사례 보고 연계 | MDR 21 CFR 803 / Vigilance 프로그램 | MDR Annex III PMS TD / PSUR·PMCF 연계 |
| **RMF 언어** | 한국어 (또는 한·영 병기) | 영어 | 영어 또는 NB 요청 언어 |
| **ISO 14971 Annex 활용** | ISO 14971 Annex A (hazard table) 활용 권장 | AAMI TIR45 (SW RM), AAMI TIR57 (사이버) 병행 | ISO/TR 24971:2020 (Implementation Guide) 권장 |

### 9.1 AFAP vs ALARP 핵심 차이

```
ALARP (FDA·MFDS): 합리적으로 실행 가능한 한 낮게 → 비용·편익 고려 가능
AFAP (MDR):       가능한 한 낮게 → 비용에 무관하게 추가 통제 수단 탐색 의무
                  추가 통제가 없다는 것을 입증해야만 잔여위험 수용 가능
```

---

## 10. 3개 제품 위험요소 맵핑

### 10.1 X-ray Detector 특화 Hazard

| Hazard ID | Hazard | 특화 원인 | 관련 표준 |
|---|---|---|---|
| HAZ-DET-01 | 고압 전원 공급 오류 | 검출기 내 HV 모듈 고장 | IEC 60601-1 |
| HAZ-DET-02 | 방사선 감도 초과 노출 | AEC 신호 오류 → 과다 피폭 | IEC 62220-1-1 |
| HAZ-DET-03 | 영상 아티팩트 → 진단 오류 | ASIC 결함·픽셀 불량 | IEC 62220-1-1 DQE |
| HAZ-DET-04 | 충격 낙하 → 섬광체 파손 | Cesium Iodide 독성 분진 | 제조사 SDS |
| HAZ-DET-05 | 무선 통신 보안 (Wireless DR) | Wi-Fi 무단 접근 | IEC 81001-5-1 |

**X-ray Detector 위험관리 중점 사항:**
- DQE 열화는 성능 저하이지만 진단 오류(S4)로 연결 가능 → 주기적 QC 절차 RMF 포함
- IEC 62220-1-1 성능기준 미달 시 위험 통제 실패로 분류

### 10.2 Handheld X-ray Source 특화 Hazard

| Hazard ID | Hazard | 특화 원인 | 관련 표준 |
|---|---|---|---|
| HAZ-HH-01 | 방향 통제 불가 → 산란선 피폭 | 핸드헬드 특성상 방향 고정 불가 | 21 CFR 1020.30, IEC 60601-2-28 |
| HAZ-HH-02 | 배터리 열폭주 | Li-ion 배터리 손상·과충전 | IEC 62133-2, UN 38.3 |
| HAZ-HH-03 | 누설 방사선 초과 | 차폐 불충분 | 21 CFR 1020.30(d) |
| HAZ-HH-04 | Ergonomic — 사용자 피로·오조작 | 지속 파지 → 근피로 → 조작 오류 | IEC 62366-1 |
| HAZ-HH-05 | 낙하 충격 → 방사선 오방출 | 트리거 오작동 | IEC 60601-1 §15 |

**Handheld X-ray Source 위험관리 중점 사항:**
- **21 CFR 1020.30 적합성 체크리스트**와 RMF 교차 참조 필수 (참조: `Handheld_Xray_Source_21CFR1020_30_적합성_체크리스트.md`)
- 배터리 교체 오용(비정품) 시나리오를 Foreseeable Misuse에 반드시 포함
- HAZ-HH-01: 통제 방법 = 조준기(Collimator) 설계 + 방사선 방호 교육 (IFU 경고)

### 10.3 촬영실 GUI SW 특화 Hazard

| Hazard ID | Hazard | 특화 원인 | 관련 표준 |
|---|---|---|---|
| HAZ-SW-01 | 환자 ID 오매칭 | 워크리스트 동기화 오류 | IEC 62304 Safety Class C |
| HAZ-SW-02 | 노출 파라미터 오설정 | GUI 화면 전환 오류 | IEC 62366-1 |
| HAZ-SW-03 | DICOM 전송 실패 → 영상 손실 | 네트워크 오류 처리 미흡 | IEC 62304 |
| HAZ-SW-04 | 무단 SW 조작 → 파라미터 변경 | 사이버보안 취약점 | IEC 81001-5-1, FDA Cyber Guidance 2025 |
| HAZ-SW-05 | AI 판독 보조 오류 (AI 기능 포함 시) | 모델 성능 한계 | FDA PCCP Guidance 2024-12-03 |

**촬영실 GUI SW 위험관리 중점 사항:**
- IEC 62304 Safety Class 판단이 Risk Level과 직결. HAZ-SW-01·02는 Class C 지정 트리거
- IEC 62304 문서세트와 RMF 양방향 추적성(Traceability) 연결 필수
  (참조: `촬영실_GUI_SW_IEC62304_문서세트.md`)
- AI 기능 포함 시 PCCP(Predetermined Change Control Plan) 별도 작성

### 10.4 3개 제품 공통 우선 통제 조치 요약

| 통제 항목 | Detector | Handheld | GUI SW | 관련 표준 |
|---|---|---|---|---|
| IEC 60601-1 전기 안전 | ✅ 필수 | ✅ 필수 | ✅ (시스템 레벨) | IEC 60601-1:2005+A2:2020 |
| IEC 60601-1-2 EMC | ✅ 필수 | ✅ 필수 | ✅ (시스템) | IEC 60601-1-2:2014+A1:2020 |
| IEC 62366-1 사용성 | ✅ 필수 | ✅ 필수 | ✅ 필수 | IEC 62366-1:2015+AMD1:2020 |
| IEC 62304 SW RM | 해당 시 | 해당 시 | ✅ 필수 (Class B/C) | IEC 62304:2006+A1:2015 |
| IEC 81001-5-1 사이버보안 | ✅ (Wireless) | 해당 시 | ✅ 필수 | IEC 81001-5-1:2021 |
| AAMI TIR57 사이버 RM | ✅ | 해당 시 | ✅ | AAMI TIR57:2016 |
| ISO 10993-1 생물학적 | ✅ (환자 접촉부) | ✅ (환자 접촉부) | 해당 없음 | ISO 10993-1:2018 |

---

## 부록 A — Hazard 분류 참조표 (ISO 14971:2019 Annex A 기반)

| 에너지 종류 | Hazard 예시 |
|---|---|
| 전기 에너지 | 과전압, 누설 전류, 정전기 |
| 방사선 에너지 | 이온화 방사선(X-ray), 적외선 |
| 기계 에너지 | 날카로운 표면, 낙하, 진동 |
| 열 에너지 | 과열, 저온 화상 |
| 화학 에너지 | 독성 물질, 인화성 |
| 생물학적 | 세균 오염, 열원성 물질 |
| 소프트웨어 관련 | 알고리즘 오류, 통신 오류, 사이버보안 |
| 기능 관련 | 부정확한 측정값, 지연 출력 |

---

## 부록 B — Risk Management File 문서 목록

| 문서 ID | 제목 | 현황 |
|---|---|---|
| RMP-[제품]-v1.0 | Risk Management Plan | 📋 작성 필요 |
| HAZ-[제품]-v1.0 | Hazard Identification & Log | 📋 작성 필요 |
| RR-[제품]-v1.0 | Risk Register | 📋 작성 필요 |
| RCM-[제품]-v1.0 | Risk Control Measures | 📋 작성 필요 |
| RRE-[제품]-v1.0 | Residual Risk Evaluation | 📋 작성 필요 |
| ORRE-[제품]-v1.0 | Overall Residual Risk Evaluation | 📋 작성 필요 |
| RMR-[제품]-v1.0 | Risk Management Report | 📋 작성 필요 |
| PPI-[제품]-v1.0 | Post-Production Information Plan | 📋 작성 필요 |

---

*참고 표준 및 규정*:  
ISO 14971:2019 | ISO/TR 24971:2020 | EN ISO 14971:2019+A11:2021 | AAMI/ANSI/ISO 14971:2019  
MFDS 위험관리 가이드라인 (2026-02) | FDA QMSR (2024) | EU MDR 2017/745 Annex I  
IEC 62304:2006+A1:2015 | IEC 62366-1:2015+AMD1:2020 | IEC 81001-5-1:2021  
