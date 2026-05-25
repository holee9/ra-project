> 최종 갱신: 2026-05-26 (자동보강 #74)
> 근거: https://www.federalregister.gov/documents/2025/06/27/2025-11669/cybersecurity-in-medical-devices-quality-system-considerations-and-content-of-premarket-submissions | https://www.fda.gov/files/guidance%20documents/published/GUI00001825-final-PremarketCybersecurity-2025.pdf | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-artificial-intelligence | https://health.ec.europa.eu/system/files/2022-01/md_cybersecurity_en.pdf | https://www.mfds.go.kr/brd/m_218/view.do?seq=33652

# Week 8: 사이버보안·AI — SBOM·Threat Model·PCCP

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 8/12)
> **소요 시간**: 이론 2시간 + 실습 2시간 + 평가 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. FD&C Act Section 524B "Cyber Device" 정의를 적용하여 자사 3개 제품의 해당 여부를 판단한다.
2. FDA 2025-06-27 최신 사이버보안 가이던스의 핵심 변경 사항(Section VII)을 설명한다.
3. STRIDE 기반 Threat Model을 자사 제품 시스템 아키텍처에 적용하여 위협 목록을 도출한다.
4. SBOM(SPDX / CycloneDX)을 FDA·MFDS 제출용으로 구성하는 방법을 실습한다.
5. PCCP(Predetermined Change Control Plan) 구성 요소를 나열하고, AI 기반 촬영실 GUI SW에 적용한 초안을 작성한다.
6. IEC 81001-5-1:2021 보안 수명주기 활동을 IEC 62304 소프트웨어 수명주기에 매핑한다.
7. 3개 지역(MFDS·FDA·MDR) 사이버보안 요건 비교 매트릭스를 완성한다.

---

## 2. 사이버보안 규제 체계 (3개 지역)

### 2.1 FDA (미국) — 가장 강력한 법적 의무

#### 법적 근거 및 주요 가이던스

| 문서 | 발행일 | 비고 |
|---|---|---|
| FD&C Act **Section 524B** | 2022-12-29 (Omnibus 법 포함) | Cyber Device 사이버보안 제출 의무 법제화 |
| Final Guidance: "Cybersecurity in Medical Devices: Quality System Considerations and Content of Premarket Submissions" | **2025-06-27** | 2023-09-27판 대체; **Section VII 신설** (524B 상세 이행 지침) |
| Refuse to Accept (RTA) 사이버보안 정책 | 2023-03-30 | Cyber Device 미충족 시 즉시 RTA |
| PCCP Final Guidance (AI-enabled device) | 2024-12-04 | AI 기반 DSF 대상 |

> **📌 2025 개정 핵심**: Section VII는 Cyber Device에 대한 510(k)/PMA/De Novo 변경 허가 시에도 사이버보안 재검토를 요구. 기존 허가 제품(predicate) 포함.

#### "Cyber Device" 해당 기준 (3가지 요건 동시 충족)

1. **SW 포함** 또는 SW가 기기 기능에 validated된 경우
2. 인터넷·내부 네트워크·무선 연결 가능
3. 사이버보안 위협에 노출 가능

#### FDA 제출 의무 문서 (법적, Section 524B)

| 문서 | 내용 |
|---|---|
| **Threat Model** | 전체 threat modeling exercise 수행 증빙 (STRIDE 권장) |
| **SBOM** | 자체·3자·오픈소스 모든 SW 컴포넌트 목록 |
| Cybersecurity Risk Assessment | 위협별 가능성·심각도·완화조치 |
| Cybersecurity Management Plan | 생애주기 보안 유지 계획 (패치·모니터링 포함) |
| Vulnerability Management Plan | 취약점 식별·평가·대응 절차 |
| Interoperability Considerations | 네트워크 인터페이스 목록 및 제어 |

#### Section 524B 적용 여부 판단 흐름

```
SW 포함? → 인터넷/네트워크 연결? → 사이버위협 가능? → Cyber Device ✓
                                                         → 아니오 → 일반 기기 (임의 적용 권고)
```

---

### 2.2 EU MDR — GSPR 기반 요건

#### 법적 근거

| 조항 | 내용 |
|---|---|
| MDR Annex I §14 | 전기·전자·IT 기기 안전 요건 (네트워크 포함) |
| MDR Annex I **§17** | IT 보안·사이버보안 핵심 요건 (네트워크 연결 기기 대상) |
| MDR Annex I §18 | 활성 이식형 기기 특화 (해당 시) |

#### MDCG 2019-16 Rev.1 (2022-01 최신)

- 발행: Medical Device Coordination Group, 2019년 제정, 2022-01 Rev.1
- 적용 대상: MDR/IVDR 대상 기기 중 IT 네트워크 연결 기기
- 핵심 구조:
  - **Security by Design** 원칙
  - Security Lifecycle (계획 → 구현 → V&V → 출시 후 유지)
  - Minimum Security Baseline 요건
  - Technical Documentation 사이버보안 섹션 체크리스트
- Rev.2 현황: 2026-05 기준 미발행 (Rev.1 유효)

#### EU 사이버보안 관련 추가 규범

| 규범 | 적용 범위 |
|---|---|
| NIS 2 Directive (2022/2555) | 의료기기 제조사 일부 포함 가능 (국가별 전치 입법 진행) |
| ETSI EN 303 645 | IoT 기기 기준선 (MDR 기기에 직접 요구 아님, 참고) |
| IEC 81001-5-1:2021 | 보건의료 소프트웨어 보안 수명주기 (EU 조화표준 진행 중) |

---

### 2.3 MFDS (국내) — 2025년 대폭 강화

#### 주요 가이드라인

| 문서 | 발행일 | 비고 |
|---|---|---|
| 의료기기 사이버보안 허가·심사 가이드라인 (개정) | 2025-01 | 기존 2021년판 대체 |
| **의료기기 사이버보안 원칙 및 실무 (N60)** | 2025-04-07 | IMDRF N60 국내 도입 |
| **레거시 의료기기 사이버보안 원칙 및 실무 (N70)** | 2025-04-07 | 기존 허가 제품 대상 |
| **SBOM 원칙 및 실무 (N73)** | 2025-04-07 | SBOM 작성·제출 실무 |
| 허가·신고·심사 규정 개정 예고 | 2025-04-30 | 사이버보안 심사자료 제출 명확화, 정의 신설 |

> **📌 핵심 변화**: IMDRF N60(2022)/N70(2023)/N73(2023) 3종 가이드라인을 국내 공식 도입. 허가 심사 단계에서 사이버보안 자료 제출이 사실상 의무화.

#### MFDS 제출 요구 자료 (2025.01 기준)

1. Threat Model 문서
2. SBOM (SW 구성 목록)
3. 사이버보안 위험관리 보고서
4. 운영 환경 보안 요건 명세
5. 생애주기 패치·업데이트 계획

---

## 3. Threat Modeling — STRIDE 기반

### 3.1 STRIDE 위협 분류

| 위협 유형 | 영문 | 보안 속성 침해 | 의료기기 사례 |
|---|---|---|---|
| **S**poofing | 신분 위장 | 인증(Authentication) | 위조 DICOM 워크스테이션으로 가장 |
| **T**ampering | 데이터 변조 | 무결성(Integrity) | 영상 데이터·선량 파라미터 변조 |
| **R**epudiation | 부인 | 부인 방지(Non-repudiation) | 촬영 이력 삭제·조작 |
| **I**nformation Disclosure | 정보 노출 | 기밀성(Confidentiality) | 환자 영상·PHI 유출 |
| **D**enial of Service | 서비스 거부 | 가용성(Availability) | 촬영실 SW 다운 → 진료 불가 |
| **E**levation of Privilege | 권한 상승 | 권한 부여(Authorization) | 관리자 권한 탈취 → 설정 변경 |

### 3.2 Threat Model 작성 절차

```
Step 1. 시스템 범위 정의
        → 데이터 흐름 다이어그램(DFD) Level 0/1 작성
        → Trust Boundary 식별 (외부 네트워크 / PACS / DICOM 인터페이스)

Step 2. 자산 식별
        → 소프트웨어 컴포넌트, 네트워크 인터페이스, 환자 데이터, 인증정보

Step 3. STRIDE 위협 도출
        → DFD의 각 요소(프로세스/데이터저장소/데이터흐름/외부엔티티)에 STRIDE 적용

Step 4. 위협 우선순위 산정
        → DREAD 또는 CVSS v3.1 기반 점수화

Step 5. 완화 조치 정의
        → 각 위협별 보안 통제(Technical / Administrative / Physical)

Step 6. 잔류 위험 평가
        → ISO 14971 Risk Management와 연계
```

### 3.3 자사 3개 제품 Threat Model 포인트

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| **Cyber Device 해당** | 조건부 (네트워크 연결 여부) | 조건부 (무선 연결 여부) | **해당** (네트워크+SW) |
| **주요 인터페이스** | DICOM (Ethernet), USB | Bluetooth/Wi-Fi (모델 의존) | HL7/DICOM, RIS/PACS, LDAP |
| **핵심 위협** | 영상 데이터 변조(T), 무결성(T) | 노출 파라미터 변조(T), DoS(D) | PHI 유출(I), 권한 상승(E), DoS(D) |
| **최우선 완화** | TLS 1.2+, 디지털 서명 | 무선 암호화(WPA3/BLE 페어링) | 역할 기반 접근 통제(RBAC), 감사로그 |
| **FDA RTA 위험** | 낮음 (비연결 시) | 낮음 (비연결 시) | **높음** — Cyber Device 요건 전면 적용 |

---

## 4. SBOM (Software Bill of Materials)

### 4.1 SBOM 개요

SBOM은 소프트웨어 제품을 구성하는 모든 컴포넌트(자체 개발·COTS·오픈소스·SOUP)의 목록으로, 공급망 보안 투명성 확보를 위한 핵심 도구다.

#### FDA Section 524B 명시 요건

- 자체 SW, 3자 SW, 오픈소스 컴포넌트 **전부** 포함
- 컴포넌트별: 이름, 버전, 공급자, 라이선스
- 기계 판독 가능 형식 제출 권장

#### MFDS N73 (2025-04-07) 핵심

- IMDRF N73:2023 원칙 국내 도입
- 허가 심사 시 SBOM 제출 요구 (SW 포함 기기)
- SOUP(Software of Unknown Provenance) 포함 의무

### 4.2 SBOM 형식 비교: SPDX vs CycloneDX

| 항목 | SPDX | CycloneDX |
|---|---|---|
| 관리 기관 | Linux Foundation | OWASP |
| 최신 버전 | SPDX 2.3 / 3.0 (2023) | CycloneDX 1.5 (2023) / 1.6 (2024) |
| 형식 | RDF, JSON, YAML, TV | XML, JSON |
| FDA 권장 | ✓ (언급) | ✓ (언급) |
| MFDS N73 | 양쪽 모두 허용 | 양쪽 모두 허용 |
| 의료기기 채택 | 표준 기반, 도구 성숙 | 취약점 연계(VEX) 강점 |
| 취약점 연계 | VEX 지원 | **VEX 내장** (CycloneDX VEX 문서) |
| 도구 예시 | SPDX-Tools, Syft, FOSSA | CycloneDX-cli, Syft, OWASP Dependency-Track |

> **실무 권장**: 두 형식 모두 생성 가능한 **Syft** 사용. FDA·MFDS 동시 대응.

### 4.3 SBOM 생성 실무 흐름

```
1. SW 컴포넌트 목록 수집
   ├── 패키지 매니저 스캔 (pip/npm/Maven 등)
   ├── 바이너리 분석 (SOUP 포함)
   └── 내부 개발 컴포넌트 수동 등재

2. SBOM 파일 생성 (Syft 예시)
   $ syft <image/directory> -o spdx-json > sbom_v1.spdx.json
   $ syft <image/directory> -o cyclonedx-json > sbom_v1.cdx.json

3. 취약점 스캔 연계
   $ grype sbom:sbom_v1.spdx.json   # CVE 조회

4. VEX 문서 작성 (CycloneDX)
   → 각 취약점에 대한 영향 분석·완화 상태 기록

5. 버전 관리 및 갱신
   → 매 SW 릴리스마다 SBOM 갱신 (허가 변경 여부 판단 연계)
```

### 4.4 자사 제품별 SBOM 구성 포인트

| 제품 | 주요 SOUP 컴포넌트 | 권장 형식 | MFDS N73 제출 |
|---|---|---|---|
| X-ray Detector | FW 라이브러리 (embedded C/RTOS) | SPDX 2.3 JSON | 해당 (SW 포함) |
| Handheld X-ray Source | BLE stack, FW (RTOS) | SPDX 2.3 JSON | 해당 |
| **촬영실 GUI SW** | Python/Qt, DICOM toolkit (pydicom/dcm4che), HL7 라이브러리 | **CycloneDX 1.5 JSON (VEX 포함)** | **필수 (네트워크 연결 SW)** |

---

## 5. PCCP (Predetermined Change Control Plan) — AI 기반 기기

### 5.1 PCCP 개요

PCCP는 AI/ML 기반 기기의 알고리즘 개선을 규제 검토 없이 또는 간소화된 절차로 구현하기 위해, **허가 시 미리 계획한 변경 범위·방법·검증 기준**을 기술하는 문서다.

#### 근거 가이던스

| 문서 | 발행일 | 적용 |
|---|---|---|
| FDA Final Guidance: "Marketing Submission Recommendations for a Predetermined Change Control Plan for Artificial Intelligence-Enabled Device Software Functions" | **2024-12-04** | AI-enabled DSF 대상 |
| FDA Draft Guidance: "Predetermined Change Control Plans for Medical Devices" | 2024-08 | 비AI 기기 포함 일반 PCCP (초안) |
| IMDRF AI Principles | 2023-10 | 국제 조화 원칙 |

> **"AI-enabled Device Software Functions (AI-DSF)"**: AI/ML 알고리즘을 포함하는 SW 기능으로 기기의 intended use에 관여하는 것.

### 5.2 PCCP 구성 요소 (FDA 2024-12-04 기준)

| 섹션 | 내용 |
|---|---|
| **1. SCP (Scope of Change Protocol)** | 허용되는 변경 유형, 범위, 임계값 명시 |
| **2. MDP (Modification Development Protocol)** | 변경 개발 방법론 (데이터 수집, 학습, 검증 절차) |
| **3. MVP (Modification Verification & Validation Protocol)** | V&V 방법·성능 지표·합격 기준 |
| **4. Impact Assessment Plan** | 변경이 안전성·효과·라벨링에 미치는 영향 평가 방법 |
| **5. Performance Monitoring Plan** | 출시 후 성능 추적 지표·임계값·대응 절차 |
| **6. Labeling Update Plan** | 변경 시 라벨·IFU 갱신 방법 |

### 5.3 PCCP 적용 판단

```
AI/ML 알고리즘 포함?
  └→ 허가 후 알고리즘 업데이트 예정?
       └→ 변경이 intended use·성능에 영향?
            └→ PCCP 포함 허가 권장 ✓
```

**PCCP 적용 시 이점**
- 허가된 PCCP 내 변경: 새로운 510(k)/PMA 불필요 (Internal process로 처리)
- 허가된 PCCP 외 변경: 일반 허가 변경 절차 적용

### 5.4 자사 촬영실 GUI SW PCCP 적용 사례

| 항목 | 내용 |
|---|---|
| AI-DSF 예시 | 자동 노출 제어(AEC) 알고리즘, 영상 화질 최적화 AI, 환자 포지셔닝 가이드 AI |
| 변경 범위 | 모델 재학습 (동일 아키텍처·데이터 도메인 내), 성능 임계값 ±5% 이내 |
| 개발 방법 | 신규 데이터셋 추가 학습, k-fold CV, hold-out test set 고정 |
| V&V 기준 | AUC ≥ 0.95, Sensitivity ≥ 90%, 방사선 전문의 독립 검증 |
| 모니터링 | 분기별 실세계 성능(RWEPA) 분석, 드리프트 감지 알고리즘 |

---

## 6. IEC 81001-5-1:2021 — 보건의료 SW 보안 수명주기

### 6.1 표준 개요

| 항목 | 내용 |
|---|---|
| 표준 번호 | IEC 81001-5-1:2021 |
| 제목 | Health software and health IT systems safety, effectiveness and security — Part 5-1: Security — Activities in the product lifecycle |
| IEC 62304 관계 | IEC 62304 SW 수명주기와 병행 적용; 각 Phase에 보안 활동 추가 |
| FDA 입장 | 2023 가이던스에서 채택 권장 (NIST CSF와 상보적) |
| EU 입장 | MDCG 2019-16 Rev.1과 정합; EU 조화표준 진행 중 |
| MFDS 입장 | N60 채택으로 간접 적용 |

### 6.2 IEC 62304 Phase와 81001-5-1 보안 활동 매핑

| IEC 62304 Phase | 62304 주요 활동 | 81001-5-1 보안 활동 추가 |
|---|---|---|
| 1. 계획 (Planning) | SW 개발 계획 수립 | 보안 계획 (Security Plan) 수립 |
| 2. 요구사항 (Requirements) | SRS 작성 | 보안 요구사항(Security Requirements) 도출 |
| 3. 아키텍처 설계 | SDS 작성 | Threat Modeling, Trust Boundary 정의 |
| 4. 상세 설계 | 컴포넌트 설계 | 보안 통제 설계 (암호화·인증·감사로그) |
| 5. 구현 (Implementation) | 코딩 | Secure Coding Standard 준수 |
| 6. 통합·통합 시험 | SOUP 통합, 시험 | SBOM 생성, 취약점 스캔 (Grype/OWASP DC) |
| 7. SW 시험 | V&V | 침투 시험(Pentest), Fuzz Testing |
| 8. 구성 관리 | 버전 관리 | 보안 패치 관리 절차 포함 |
| 9. 문제 해결 | 버그 수정 | 취약점 공개(CVE) 대응 절차 |

---

## 7. 3개 지역 사이버보안 요건 비교 매트릭스

| 항목 | FDA (미국) | EU MDR | MFDS (국내) |
|---|---|---|---|
| **법적 근거** | FD&C Act §524B (2022-) | MDR Annex I §17 | 의료기기법 + 디지털의료제품법 (2025-) |
| **적용 기준** | "Cyber Device" (SW+네트워크+위협) | 네트워크 연결 기기 | SW 포함 기기 전반 |
| **핵심 가이던스** | Cybersecurity Guidance 2025-06-27 | MDCG 2019-16 Rev.1 (2022-01) | 허가·심사 가이드라인 2025.01 + N60/N70/N73 |
| **Threat Model** | **법적 의무** (§524B) | 권고 (MDCG 기준) | 요구 (가이드라인) |
| **SBOM** | **법적 의무** (§524B) | 권고 | 요구 (N73) |
| **사이버보안 위험관리** | ISO 14971 연계 필수 | ISO 14971 연계 필수 | ISO 14971 연계 |
| **참조 표준** | NIST CSF, IEC 81001-5-1 | IEC 81001-5-1, ETSI EN 303 645 | IEC 81001-5-1, NIST CSF |
| **PCCP (AI)** | FDA 2024-12-04 Final Guidance | MDCG 2021-6 AI (일반 원칙) | 디지털의료제품법 하위 고시 (예정) |
| **허가 후 패치** | Cybersecurity Management Plan 필수 | PMS 연계 (MDR Art.83) | 생애주기 계획 포함 |
| **레거시 기기** | 기존 허가 제품도 §524B 변경 시 적용 | 2027/2028 재적합 의무 | N70 레거시 가이드라인 |
| **위반 시 제재** | RTA, 허가 불수리, Warning Letter | NB 심사 거절, CE 취소 | 허가 보완 요구, 불허 |

---

## 8. 자사 3개 제품 사이버보안 영향 맵핑

### 8.1 X-ray Detector

| 구분 | 내용 |
|---|---|
| **Cyber Device 여부** | 조건부 — 네트워크(DICOM/Ethernet) 연결 모델: **해당** / 독립형: **비해당** |
| **적용 요건** | 연결 모델: 전체 §524B 적용. 독립형: 임의 적용 권고 |
| **핵심 위협** | DICOM 데이터 변조(T), 무단 접근(E) |
| **완화 조치** | TLS 1.2+ (DICOM TLS), 서명된 FW 업데이트, 최소 권한 원칙 |
| **SBOM 범위** | FW 컴포넌트 + 디바이스 드라이버 + 네트워크 스택 |
| **추가 고려** | IEC 62304 Safety Class 확인 (A/B/C) |

### 8.2 Handheld X-ray Source

| 구분 | 내용 |
|---|---|
| **Cyber Device 여부** | 무선(BLE/Wi-Fi) 모델: **해당** / 유선 단독: **비해당** |
| **핵심 위협** | 노출 파라미터 변조(T) → 환자 과피폭 직결 위험(Safety Critical) |
| **완화 조치** | BLE Secure Pairing, 파라미터 무결성 검증, HW 기반 보안 부트 |
| **SBOM 범위** | RTOS 커널, BLE 스택, 제어 SW |
| **FDA 우선 주의** | Safety-critical 파라미터 변조 → 위험도 HIGH |

### 8.3 촬영실 GUI SW ← 사이버보안 최고 우선순위

| 구분 | 내용 |
|---|---|
| **Cyber Device 여부** | **해당** (네트워크 연결 + SW 중심 기기) |
| **FDA 적용** | §524B 전면 적용 — Threat Model, SBOM, 관리 계획 모두 필수 |
| **MFDS 적용** | N60·N73 적용, 허가 자료에 포함 |
| **EU MDR** | MDCG 2019-16 Rev.1 사이버보안 섹션 기술문서 포함 |
| **주요 인터페이스** | RIS 연동 (HL7), PACS 연동 (DICOM), AD/LDAP 인증, 원격 지원 포트 |
| **핵심 위협** | PHI 유출(I), DoS(D), 권한 상승(E), 의심 명령 주입(T) |
| **AI 기능 시** | PCCP 문서 추가 (FDA 2024-12-04) |
| **SBOM** | Python 패키지(pip), Qt 라이브러리, DICOM toolkit → CycloneDX VEX 권장 |

---

## 9. 실습 과제

### 실습 1: Cyber Device 판단 체크리스트 작성 (30분)

**과제**: 자사 촬영실 GUI SW에 대한 FDA Section 524B "Cyber Device" 판단 근거 문서를 작성하라.

포함 항목:
- SW 포함 여부 및 기기 기능 내 역할
- 네트워크 인터페이스 목록 (포트·프로토콜)
- 식별된 사이버보안 위협 3가지 이상
- 판단 결론 (Cyber Device 해당/비해당) + 근거

**평가 기준**: 3요건 모두 논리적으로 기술, 인터페이스 목록 완전성, 결론 명확성

---

### 실습 2: STRIDE Threat Model 미니 워크숍 (45분)

**과제**: 촬영실 GUI SW의 DFD Level 1을 그리고 STRIDE 위협 목록 10개 이상을 도출하라.

DFD 포함 요소:
- 외부 엔티티: 방사선사(사용자), RIS 서버, PACS 서버, 원격 유지보수 접속
- 프로세스: 로그인, 촬영 프로토콜 설정, 영상 전송, 로그 기록
- 데이터 저장소: 환자 DB, 설정 파일, 감사 로그
- Trust Boundary: 병원 내부 네트워크 / 외부 인터넷

**산출물**: DFD + 위협 목록 표 (위협 유형, 영향 자산, STRIDE 분류, 초기 심각도)

---

### 실습 3: SBOM 초안 작성 (30분)

**과제**: 촬영실 GUI SW의 오픈소스·SOUP 컴포넌트 10개를 식별하고, CycloneDX JSON 형식의 SBOM 헤더와 컴포넌트 3개 엔트리를 직접 작성하라.

필수 필드: `name`, `version`, `purl`, `licenses`, `supplier`

**참고**: 기존 KB 문서 → `01_규제지식베이스/미국_FDA/SBOM_생성실무_SPDX_CycloneDX.md`

---

### 실습 4: PCCP 요약 초안 (15분)

**과제**: 촬영실 GUI SW의 AI 기반 자동 노출 제어(AEC) 기능에 대한 PCCP 1페이지 요약을 작성하라.

포함: 변경 범위(SCP 요약), 검증 지표(MVP 요약), 모니터링 계획(PMP 요약)

---

## 10. 평가 기준

| 평가 항목 | 배점 | 합격 기준 |
|---|---|---|
| Cyber Device 판단 체크리스트 완성도 | 20점 | 3요건 모두 기술, 결론 명확 |
| STRIDE 위협 목록 (10개 이상) | 25점 | 위협 유형·자산·분류 정확 |
| DFD Trust Boundary 표현 | 15점 | 외부 엔티티 구분, 경계선 명확 |
| SBOM CycloneDX 3개 엔트리 작성 | 20점 | purl·라이선스 형식 정확 |
| PCCP 1페이지 요약 | 20점 | SCP·MVP·PMP 3요소 포함 |
| **합계** | **100점** | **70점 이상 합격** |

---

## 11. 참조 문서 (KB 내부 링크)

| 주제 | 경로 |
|---|---|
| FDA Threat Model 가이드 (STRIDE) | `01_규제지식베이스/미국_FDA/FDA_Threat_Model_STRIDE_가이드.md` |
| SBOM 생성 실무 | `01_규제지식베이스/미국_FDA/SBOM_생성실무_SPDX_CycloneDX.md` |
| PCCP 작성 가이드 | `01_규제지식베이스/미국_FDA/PCCP_AI_Device_작성가이드.md` |
| MDCG 2019-16 Rev.1 체크리스트 | `01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/MDCG_2019-16_Rev1_Cybersecurity_대응_체크리스트.md` |
| IEC 81001-5-1 수명주기 매핑 | `01_규제지식베이스/국제표준_IEC_ISO/IEC81001-5-1_수명주기_보안활동_매핑.md` |
| MFDS 사이버보안 가이드라인 2025 | `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_사이버보안_가이드라인_2025_대응.md` |
| 사이버보안 통합 가이드 | `01_규제지식베이스/사이버보안_통합가이드.md` |

---

> **다음 모듈**: [Week 9: 임상평가](Week09_임상평가.md) — CEP/CER 작성, 동등성 기준, PMCF 계획
