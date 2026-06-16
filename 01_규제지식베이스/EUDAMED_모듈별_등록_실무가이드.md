> 최종 갱신: 2026-06-09 (검증③ — EUDAMED 명칭체계 GMDN→EMDN 정정) / 2026-06-04 (자동보강 #87)
> 근거: https://health.ec.europa.eu/medical-devices-eudamed/overview_en | https://health.ec.europa.eu/latest-updates/eudamed-four-first-modules-will-be-mandatory-use-28-may-2026-2025-11-27_en | https://health.ec.europa.eu/document/download/0e7327c7-0e06-4fbd-90d3-8ab7bb30fe9f_en?filename=eudamed-qa_en.pdf | https://webgate.ec.europa.eu/eudamed-help/en/files/UDI%20Devices%20-%20user%20guide.pdf | https://www.celegence.com/eudamed-mandatory-28-may-2026-medical-device-ivd-manufacturers/

# EUDAMED 모듈별 등록 실무 가이드

## 1. 개요

EUDAMED(European Database on Medical Devices)는 EU MDR(2017/745) 및 IVDR(2017/746) 기반으로 구축된 EU 의료기기 통합 데이터베이스다.

**법적 근거**: Commission Decision (EU) 2025/2371 (OJ L, 2025-11-27) — 첫 4개 모듈 완전 기능 선언 → **2026-05-28부터 의무 사용** 전환.

### 의무화 의미
- 2026-05-28 이후 EU 시장에 처음 출시(first placement)되는 모든 MDR/IVDR 기기 → EUDAMED 등록 없이는 시장 출시 불가.
- 비준수 시: NCA(국가 관할 기관) 시장감시 조치, CE 마킹 무효 위험.

---

## 2. EUDAMED 6개 모듈 구조

```
┌─────────────────────────────────────────────────────────────────┐
│                      EUDAMED 통합 DB                             │
├──────────────┬──────────────┬──────────────┬────────────────────┤
│ Module 1:    │ Module 2:    │ Module 3:    │ Module 4:          │
│ ACT          │ UDI/DEV      │ NB/CERT      │ MSU                │
│ Actor Reg.   │ UDI/Device   │ NB & Certs   │ Market Surveillance│
│ ★의무화 완료│ ★의무화 완료 │ ★의무화 완료 │ ★의무화 완료      │
│ 2026-05-28   │ 2026-05-28   │ 2026-05-28   │ 2026-05-28         │
├──────────────┴──────────────┴──────────────┴────────────────────┤
│ Module 5:                         │ Module 6:                   │
│ Vigilance & PMS                   │ CI/PS                       │
│ (개발 중, ~Q2 2027 의무화 예정)    │ (개발 중, 별도 일정)        │
└───────────────────────────────────┴─────────────────────────────┘
```

> Fact: Commission Decision (EU) 2025/2371 (2025-11-27 OJ 발행) 기준, 4개 모듈 의무화. Module 5·6은 의무화 전 자발적 사용 기간 없이 바로 의무화 예정.

---

## 3. 모듈별 상세

### Module 1: Actor Registration (ACT) — 경제 주체 등록

#### 3-1-A. 대상
| 역할 | MDR 조항 | EUDAMED 등록 의무 |
|---|---|---|
| Manufacturer (제조사) | Art. 10 | 필수 |
| Authorised Representative (EC-REP) | Art. 11 | 필수 |
| Importer (수입업자) | Art. 13 | 필수 |
| Distributor | Art. 14 | 의무 없음 (권고) |

#### 3-1-B. 등록 결과물: SRN (Single Registration Number)
- 형식: `SRN-XX-XXXXXXX` (XX = ISO 국가코드)
- 역할: EU-wide 유일 식별자. UDI/DEV 등록, 인증서 연계에 필수.
- 취득 전 EUDAMED 접근 불가 → **CE 마킹 로드맵의 첫 번째 필수 단계**.

#### 3-1-C. 등록 절차

```
① EC 포털 계정 생성 (EU Login)
   ↓
② EUDAMED 접속 → Actor 등록 신청
   ↓
③ 조직 정보 입력
   - 회사명 / 주소 / 국가 / 연락처
   - 역할 선택: Manufacturer / EC-REP / Importer
   ↓
④ NCA(국가 관할 기관) 검증
   - EU 내 제조사: 해당 회원국 NCA
   - 비 EU 제조사: EC-REP가 있는 회원국 NCA
   ↓
⑤ SRN 발급 (검증 완료 후)
```

> Action: 한국 제조사는 EU EC-REP 계약 체결 후 EC-REP가 있는 회원국 NCA를 통해 SRN 취득. SRN 취득 후 UDI 등록 시작 가능.

---

### Module 2: UDI/Device Registration (UDI/DEV) — UDI 및 기기 등록

#### 3-2-A. UDI 구조

```
UDI = UDI-DI (고정) + UDI-PI (가변)

Basic UDI-DI (레거시 식별자)
  └── UDI-DI (모델별)
        └── UDI-PI (생산 로트/일련번호)
```

- **Basic UDI-DI**: 동일 기기 군/버전을 식별하는 핵심 레퍼런스. EUDAMED에서 Globally Unique해야 함.
- **UDI-DI**: 특정 버전/제품 모델 식별.
- 발급 기관: GS1, HIBCC, ICCBBA 중 선택.

#### 3-2-B. 등록 데이터 항목 (주요)

| 필드 | 내용 | 필수 여부 |
|---|---|---|
| Basic UDI-DI | GS1/HIBCC 발급 코드 | 필수 |
| Device Name | 제품 브랜드명 | 필수 |
| Device Trade Name(s) | 판매명 (다국어) | 필수 |
| Risk Class | Class I / IIa / IIb / III | 필수 |
| Intended Purpose | 사용 목적 | 필수 |
| CE Certificate Number | NB 발행 인증서 번호 | Class IIa+ |
| Notified Body ID | NB EUDAMED ID | 필수 |
| UDI-DI(s) | 모델별 UDI | 필수 |
| EMDN Code | 유럽 의료기기 명칭(MDR Art.26, EUDAMED 필수) — GMDN 아님 | 필수 |
| Clinical Investigation | 해당 시 CI 모듈 연계 | 조건부 |

#### 3-2-C. 등록 시점 의무 (2026-05-28 이후)

| 시점 | 의무 |
|---|---|
| EU 첫 출시 **이전** | UDI/DEV 등록 완료 필수 |
| 인증서 변경 시 | 30일 이내 EUDAMED 업데이트 |
| 기기 단종(EOL) | Status를 'Discontinued'로 변경 |
| 라벨 변경 시 | UDI-DI 또는 Basic UDI-DI 변경 여부 판단 필요 |

> Fact: 2026-05-28 이전 voluntarily 등록된 기기는 mandatory 전환 후에도 유효하며 재등록 불필요.

---

### Module 3: NB & Certificates (NB/CERT) — NB 인증서 관리

#### 3-3-A. 역할
- NB(인증기관)가 MDR/IVDR 기반 발행한 CE 인증서 정보를 EUDAMED에 업로드.
- 제조사는 직접 입력하지 않으나, 인증서 상태(유효·정지·취소) 변동은 NB를 통해 실시간 반영.

#### 3-3-B. 기존 인증서 전환 기한
- NB는 2026-05-28 전 발행된 기존 MDR/IVDR 인증서를 **2027-05-27까지** EUDAMED에 업로드 완료 (18개월 전환 기간).
- 이 기간 동안 해당 기기의 UDI/DEV 등록도 연계 완료 필요.

#### 3-3-C. 제조사 연관 의무
- NB 선정 → NB에 인증서 EUDAMED 업로드 일정 확인.
- 인증서 번호(Certificate Number)를 UDI/DEV 등록 시 참조.
- 인증서 갱신/변경 시 NB에 즉시 통보 → EUDAMED 반영.

---

### Module 4: Market Surveillance (MSU) — 시장 감시

#### 3-4-A. 특징
- NCA 전용 모듈. **제조사 직접 입력 없음**.
- 각 EU 회원국 NCA가 시장감시 활동(조사, 제한 조치 등) 기록.
- 제조사는 NCA 조회(검색) 기능 이용 가능.

#### 3-4-B. 제조사 영향
- MSU에 자사 제품 관련 NCA 조치 기록 가능 → 모니터링 중요.
- Serious Incident(MDR Art. 87) 보고는 현재 Module 5(개발 중)에서 처리 예정.

---

### Module 5: Vigilance & PMS — 시판 후 감시 (개발 중)

| 항목 | 내용 |
|---|---|
| 현황 | 개발 중 (2026-06 기준) |
| 예상 의무화 | ~Q2 2027 (Commission 별도 결정 후) |
| 주요 기능 | Serious Incident 보고, FSCA/FSN, PSUR/PMSR 제출 |
| 전환 방식 | 자발적 사용 기간 없이 바로 의무화 |

> Action: Module 5 출시 전까지 Serious Incident는 국가별 NCA에 직접 보고 (현행 MDR Art. 87). Module 5 출시 후 EUDAMED 통합 보고로 전환.

---

### Module 6: CI/PS — 임상조사·성능평가 연구 (개발 중)

| 항목 | 내용 |
|---|---|
| 현황 | 개발 중 |
| 주요 기능 | 임상조사(MDR Art. 62~81) 신청·승인·결과 관리 |
| 의무화 시점 | 별도 Commission 결정 후 공지 |

---

## 4. EUDAMED 등록 절차 전체 흐름

```
[Pre-market 단계]

Step 1: EC-REP 계약 (비EU 제조사)
  └── EC-REP 선정 국가 기준으로 SRN 취득

Step 2: ACT 모듈 — SRN 취득
  └── EU Login → Actor 등록 → NCA 검증 → SRN 발급

Step 3: GS1/HIBCC UDI 발급기관 계약 → Basic UDI-DI 발급

Step 4: NB 심사 진행 (Class IIa+)
  └── CE Certificate 발행

Step 5: UDI/DEV 모듈 — 기기 등록
  └── Basic UDI-DI 등록
  └── UDI-DI 등록 (모델별)
  └── CE Certificate Number 연계
  └── EMDN Code 지정 (EUDAMED 필수; GMDN은 글로벌·FDA GUDID용 별개)

Step 6: EU 시장 출시 (Placing on Market)

[Post-market 단계]

Step 7: 인증서 갱신/변경 → NB → NB/CERT 업데이트
Step 8: PSUR (Module 5 출시 후) — EUDAMED 제출
Step 9: Serious Incident → Module 5 출시 전: NCA 직접 보고
                         → Module 5 출시 후: EUDAMED 통합 보고
```

---

## 5. 3개 지역 비교 매트릭스

### 5-A. 데이터베이스 등록 비교

| 항목 | FDA (미국) | MFDS (한국) | MDR (EU) |
|---|---|---|---|
| 등록 DB | GUDID (FDA UDI DB) | UDI포털 (mfds.go.kr) | EUDAMED |
| 의무화 시점 | 등급별 단계적 완료 | 2025 기준 진행 중 | 2026-05-28 (4개 모듈) |
| 경제주체 등록 | FDA Establishment Registration (21 CFR 807) | 의료기기 제조업 허가 | SRN (Actor Module) |
| 기기 등록 | 510(k)/PMA cleared → GUDID | 허가/인증/신고 후 UDI포털 | EUDAMED UDI/DEV |
| UDI 발급기관 | GS1, HIBCC, ICCBBA | GS1(의무), HIBCC(가능) | GS1, HIBCC, ICCBBA |
| Vigilance 보고 | eMDR (FDA MedWatch) | 이상사례 포털 | Module 5 (~Q2 2027) |

### 5-B. 의무화 타임라인

| 이정표 | FDA | MFDS | EU (EUDAMED) |
|---|---|---|---|
| 경제주체 등록 | 완료 | 완료 | 2026-05-28 ★ |
| UDI/기기 등록 | 완료 | 진행 중 | 2026-05-28 ★ |
| NB/CE 인증서 | 해당 없음 | 해당 없음 | 2026-05-28 (NB 업로드 ~2027-05) |
| 시판 후 감시 | eMDR 완료 | 이상사례 보고 완료 | Module 5 ~Q2 2027 |
| 임상조사 | IDE 신청 체계 완료 | 임상시험계획 승인 완료 | Module 6 미정 |

---

## 6. 자사 3개 제품 영향 맵핑

### 6-A. X-ray Flat Panel Detector

| 항목 | 내용 |
|---|---|
| MDR Risk Class | Class IIa (능동 의료기기, Annex VIII Rule 10) |
| 적합성평가 경로 | MDR Annex IX (QMS+TD) 또는 Annex XI (Type Exam) |
| EUDAMED 필수 작업 | ① SRN 취득 ② Basic UDI-DI 발급(GS1) ③ CE Certificate 취득 ④ UDI/DEV 등록 |
| 긴급도 | **★ 즉시 착수** — 신규 EU 시장 진출 계획 시 2026-05-28 이전 등록 완료 권장 |
| 명칭 코드 | **EUDAMED 등록 = EMDN 필수**(MDR Art.26): Cat. Z(전자의료기기·진단 X-ray)에서 7-레벨 코드를 공식 EMDN(EC, 무료)으로 확정 [EMDN 확정 과제]. 참고: GMDN(글로벌·FDA GUDID용) 43489 후보 — GMDN Agency 확인 필요 |

### 6-B. Handheld X-ray Source

| 항목 | 내용 |
|---|---|
| MDR Risk Class | Class IIb (능동 의료기기 + 방사선 에너지 방출, Annex VIII Rule 9) |
| 적합성평가 경로 | MDR Annex X (Type Exam) 또는 Annex IX (대규모 제조사) |
| EUDAMED 필수 작업 | ① SRN ② Basic UDI-DI ③ CE Certificate (Class IIb NB) ④ UDI/DEV |
| 특이사항 | Class IIb → NB 심사 범위 확대, 기술문서 전체 검토 |
| 명칭 코드 | **EUDAMED 등록 = EMDN 필수**: Cat. Z(진단 X-ray 장비)에서 확정 [EMDN 확정 과제]. 참고: GMDN 60784 후보 — GMDN Agency 확인 필요 |

### 6-C. 촬영실 GUI SW

| 항목 | 내용 |
|---|---|
| MDR Risk Class | Class IIa (Software, Annex VIII Rule 11 — 진단 목적 SW) |
| 적합성평가 경로 | MDR Annex IX |
| EUDAMED 특이사항 | SW는 Physical 기기와 별도로 Basic UDI-DI 필요. SW 버전 업데이트 시 UDI-DI 변경 여부 판단 필요. |
| IEC 62304 | Safety Class B 또는 C — EUDAMED 등록 전 결정 필요 |
| 명칭 코드 | **EUDAMED 등록 = EMDN 필수**: SW는 Cat. Z 소프트웨어 접미사 "82" 계열에서 확정(독립형 SaMD 별도 분류 판단) [EMDN 확정 과제]. 참고: GMDN 별도 확인 |

---

## 7. 실무 체크리스트

### Phase 1: 사전 준비 (NB 심사 착수 전)

```
□ EU EC-REP 계약 체결 (Article 11 준수)
□ EU Login 계정 생성 (ec.europa.eu/digital-single-market/en/eu-login)
□ EUDAMED Playground(테스트 환경) 접속 → 사전 실습
□ UDI 발급기관(GS1 또는 HIBCC) 계약 체결
□ GMDN 코드 확인 (gmdn.org)
□ Basic UDI-DI 신청 및 발급
□ ACT 모듈 → Actor 등록 → SRN 취득
```

### Phase 2: CE 인증 후 (Market 출시 전)

```
□ NB Certificate 번호 확인
□ UDI/DEV 모듈 → Basic UDI-DI 등록
□ UDI/DEV 모듈 → UDI-DI 등록 (모델별)
□ Certificate 번호 + NB ID EUDAMED 연계
□ 제품 상태: "On the market" 설정
□ EU 출시 날짜 기록
```

### Phase 3: 유지관리 (Post-market)

```
□ 연간 UDI/DEV 데이터 정확성 검토
□ 인증서 갱신/변경 시 NB에 EUDAMED 업데이트 요청
□ SW 버전 업데이트 → UDI-DI 변경 여부 판단
□ 단종 제품 → 'Discontinued' 상태 변경
□ Module 5 출시 후 → Vigilance 보고 채널 EUDAMED으로 전환
```

---

## 8. 3계층 분석 요약

### 사실 (Fact)
- Commission Decision (EU) 2025/2371 (2025-11-27 OJ): 4개 모듈 완전 기능 선언 → 2026-05-28 의무화 발효.
- 의무 대상: EU MDR + IVDR 기기 모두. 비EU 제조사는 EC-REP를 통해 SRN 취득.
- Module 5(Vigilance/PMS), Module 6(CI/PS): 개발 중. Module 5는 ~Q2 2027 의무화 예상.

### 해석 (Interpretation)
- EUDAMED 의무화로 EU 시장 접근의 전제조건이 추가됨. SRN 미취득 = EU 시장 출시 불가.
- NB들은 2027-05-27까지 기존 인증서를 EUDAMED에 업로드해야 하므로, 신규 NB 심사 일정과 EUD
---
작성: EU MDR 전문가(#87) · 검토(QA③, 2026-06-09): EUDAMED 명칭체계 검증 — EUDAMED UDI/Device 등록은 **EMDN 필수**(EC Public Health·MDR Art.26), GMDN은 글로벌(FDA GUDID)용 별개. 245·255·265행 GMDN→EMDN 정정(Cat. Z 전자의료기기, SW 접미사 82). 정확 EMDN leaf 코드는 공식 EMDN으로 확정할 분류 과제로 분리(#104 예정). 출처: EC EMD