> 최종 갱신: 2026-05-16 (자동보강 #48)
> 근거: https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics | https://health.ec.europa.eu/medical-devices-eudamed/udidevice-registration_en | https://udiportal.mfds.go.kr | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02017R0745-20250110

# UDI 구조 3개 지역 비교 (GUDID / EUDAMED / UDI포털)

---

## 1. UDI 개요

UDI(Unique Device Identification)는 의료기기를 제조→유통→사용 전 주기에 걸쳐 유일하게 식별하는 코드 체계다.
3개 지역(MFDS·FDA·MDR) 모두 동일한 국제 표준 구조를 채택하되, 데이터베이스 등록 요건·적용 범위·시행 시기에서 차이가 있다.

### UDI 구성 요소 (공통)

| 구성 | 설명 | 특성 |
|---|---|---|
| **UDI-DI** (Device Identifier) | 제품 모델/버전을 식별하는 고정 부분 | 필수, 변경 시 신규 DI 발급 |
| **UDI-PI** (Production Identifier) | 개별 생산 단위를 식별하는 가변 부분 | 조건부 (해당 시 표시) |

**UDI-PI 포함 가능 항목:**
- Lot/Batch 번호
- Serial 번호
- 유효기한 (Expiration Date)
- 제조일 (Manufacturing Date)
- HCT/P 별도 식별 코드 (FDA 한정)

**표기 방법 (공통):**
- **HRI** (Human Readable Interpretation): 육안 판독 텍스트
- **AIDC** (Automatic Identification and Data Capture): 바코드 / RFID (라벨·포장 모두 필수)
- 날짜 형식: `YYYY-MM-DD` (ISO 8601)

---

## 2. 발급 기관 (Issuing Agency)

3개 지역 모두 동일한 국제 발급 기관 활용:

| 기관 | 코드 체계 | 비고 |
|---|---|---|
| **GS1** | GS1-128 바코드 / DataMatrix | 가장 범용. GTIN 기반 |
| **HIBCC** | HIC 코드 | 의료기기 전용 |
| **ICCBBA** | ISBT 128 | 혈액·조직 분야 주용 |

> MFDS 국내 발급은 **GS1 Korea** 통해 진행. FDA·EU도 동일 기관 인정.

---

## 3. 지역별 비교 매트릭스

| 항목 | MFDS (국내) | FDA (미국) | MDR (EU) |
|---|---|---|---|
| **근거 법령** | 의료기기법 §18의2, 시행규칙 별표 9 | 21 CFR Part 830, Part 801 (UDI Rule, 2013-09-24) | MDR 2017/745 Art.27 (개정: Reg 2024/1860) |
| **데이터베이스** | **UDI포털** (udiportal.mfds.go.kr) | **GUDID** (accessgudid.nlm.nih.gov 공개 검색) | **EUDAMED** (UDI/Device 모듈) |
| **UDI 구조 특이사항** | UDI-DI 중심. 의료기기통합정보시스템 연동 | DI + PI 분리. GUDID는 DI만 저장 | Basic UDI-DI → UDI-DI 2계층 구조 |
| **EU 추가 개념** | — | — | Basic UDI-DI: 동일 임상 목적·설계 군(群) 대표. UDI-DI: 특정 버전/모델 |
| **직접 마킹** | 재사용·이식형 기기에 적용 | 재사용+재처리 기기에 DI 직접 마킹 | Art.27(4): 이식형 기기 직접 마킹 의무 |
| **시행 완료 시점** | 등급·제품군별 단계 시행 (2022년 이후 대부분 적용) | 2022년 모든 등급 시행 완료 | EUDAMED 모듈 의무화: **2026-05-28** |
| **등록 방법** | UDI포털 웹 입력 / API 연동 | GUDID 웹 입력 또는 HL7 SPL (FDA ESG) | EUDAMED 웹 입력 / B2G XML |
| **공급내역 보고** | 2024-07-08 개정: 인체이식형(3·4등급) + 요양급여 치료재료만 보고 의무 | 별도 MDR(803) 보고 체계 | Serious Incident → Vigilance 체계 |
| **라벨 예외·대안** | MFDS 승인 시 예외 가능 | 21 CFR 801.30/801.40(d)/801.45(d), 801.55 신청 | MDR Art.27(5): 기술적 이유 예외 NCA 협의 |
| **명명법** | — | — | **EMDN** (European Medical Devices Nomenclature) 코드 필수 등록 |

---

## 4. EUDAMED 의무화 주요 일정 (EU 최신 현황)

| 날짜 | 내용 |
|---|---|
| 2021-10 | EUDAMED UDI/Device 모듈 자발적 사용 개시 |
| 2024-06-13 | Regulation (EU) 2024/1860 발효: MDR 단계적 적용 근거 |
| 2025-11-27 | Commission Decision (EU) 2025/2371: 4개 모듈 기능 확인 선언 |
| **2026-05-28** | **UDI/Device 모듈 포함 4개 모듈 의무 사용 개시** |

> 의무화 4개 모듈: Actor Registration / UDI·Device Registration / NB & Certificates / Market Surveillance

---

## 5. 자사 3개 제품 UDI 적용 매트릭스

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| **MFDS 등급** | 2등급 | 3등급 | 2등급 (SaMD) |
| **FDA 등급** | Class II | Class II | Class II |
| **MDR 등급** | Class IIa | Class IIb | Class IIa |
| **UDI-DI 등록 필요** | ✅ 필수 | ✅ 필수 | ✅ 필수 |
| **직접 마킹 (DI)** | 재사용 시 적용 | 기기 본체 마킹 필요 | 해당 없음 (SW) |
| **Basic UDI-DI (EU)** | 필요 | 필요 | 필요 |
| **EUDAMED 등록** | 2026-05-28 의무화 | 2026-05-28 의무화 | 2026-05-28 의무화 |
| **GUDID 등록** | 510(k) 제출 전 완료 | 510(k) 제출 전 완료 | 510(k) 제출 전 완료 |
| **UDI포털 등록** | 허가 전 등록 | 허가 전 등록 | 허가 전 등록 |
| **PI 표시 요소** | Lot + 유효기한 | Serial + 제조일 | 버전/릴리스 날짜 |

---

## 6. GUDID 데이터 구조 (FDA)

GUDID에는 **DI 레벨 정보만** 저장 (PI는 저장하지 않음):

- 제조사명 / 브랜드명
- 기기명 / 버전·모델명
- 기기 분류 (Product Code)
- 멸균 여부 / 재사용 여부 / 이식형 여부 / MRI 안전성
- 라텍스 함유 여부
- 규격 (크기·무게)
- 포장 단위 (Unit of Use DI / Package DI)

**제출 방법:**
- 웹 입력: accessgudid.nlm.nih.gov
- HL7 SPL (Structured Product Labeling) XML → FDA ESG(Electronic Submissions Gateway)

---

## 7. EUDAMED Basic UDI-DI 개념 (EU 특유)

EU는 FDA보다 한 단계 상위 개념인 **Basic UDI-DI**를 별도 운영:

```
Basic UDI-DI
 └─ UDI-DI (모델 A, 버전 1.0)
 └─ UDI-DI (모델 A, 버전 2.0)
 └─ UDI-DI (모델 B)
```

- **Basic UDI-DI**: 동일한 의도된 목적·위험 등급·설계 원리를 공유하는 기기 군의 대표 식별자
- **용도**: 기술문서(TD), DoC, 임상평가에서 Basic UDI-DI를 참조 기준으로 사용
- **주의**: Basic UDI-DI 변경 시 NB에 재고 필요 (인증서 갱신 트리거)

---

## 8. 실무 행동 지시

### 등록 순서 (글로벌 동시 제출 시)

1. **GS1 Korea** 가입 → GTIN(UDI-DI) 발급
2. **GUDID** 계정 신청 → DI 데이터 입력 (510(k) 제출 전)
3. **EUDAMED** Actor 등록 → UDI/Device 모듈 등록 (2026-05-28 의무화)
4. **UDI포털** (udiportal.mfds.go.kr) 의료기기통합정보시스템 등록

### 라벨 설계 체크리스트

- [ ] UDI-DI: 라벨·포장에 HRI + AIDC(바코드/DataMatrix) 양식 병기
- [ ] UDI-PI: Lot/Serial/유효기한 해당 시 표시
- [ ] 날짜 형식: `YYYY-MM-DD`
- [ ] 재사용 제품: 기기 본체에 DI 직접 마킹
- [ ] 이식형 제품 (Handheld 일부): 직접 마킹 + 소독·멸균 내구성 확인
- [ ] EMDN 코드 (EU): EUDAMED 등록 시 입력 필수
- [ ] Legacy ID(NDC/NHRIC): FDA 라벨에 사용 금지 (2022년 이후)

### 변경 시 DI 재발급 필요 조건

| 변경 사항 | DI 재발급 |
|---|---|
| 제품명·모델명 변경 | ✅ 필요 |
| 소프트웨어 주요 버전 변경 (기능 추가·제거) | ✅ 필요 |
| 생산지 변경 (GSPR/안전성 영향 시) | 조건부 |
| 포장 단위만 변경 | Package DI만 재발급 |
| 디자인 변경 (기능 동일) | ❌ 불필요 |

---

## 9. 주요 참조 링크

| 지역 | 자료 | URL |
|---|---|---|
| FDA | UDI Basics | https://www.fda.gov/medical-devices/unique-device-identification-system-udi-system/udi-basics |
| FDA | AccessGUDID | https://accessgudid.nlm.nih.gov |
| FDA | 21 CFR Part 830 | https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfcfr/CFRSearch.cfm?CFRPart=830 |
| EU | EUDAMED UDI 모듈 | https://health.ec.europa.eu/medical-devices-eudamed/udidevice-registration_en |
| EU | MDR 2017/745 (2025-01-10 개정) | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:02017R0745-20250110 |
| EU | Reg (EU) 2024/1860 | https://eur-lex.europa.eu/legal-content/EN/ALL/?uri=OJ:L_202401860 |
| MFDS | UDI 포털 | https://udiportal.mfds.go.kr |
| MFDS | UDI 추적관리시스템 | https://emedi.mfds.go.kr |
