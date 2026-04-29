> 최종 갱신: 2026-04-29 (자동보강 #4)
> 근거: https://www.fda.gov/media/173984/download | https://www.fda.gov/files/guidance%20documents/published/GUI00001825-final-PremarketCybersecurity-2025.pdf | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/select-updates-premarket-cybersecurity-guidance-section-524b-fdc-act

# eSTAR 작성 가이드 (4) — Cybersecurity Section (Section 524B 기반)

## 0. 적용 근거 (법령·가이던스)

| 문서 | 발효일 | 비고 |
|---|---|---|
| FD&C Act **Section 524B** "Ensuring Cybersecurity of Devices" | 2023-03-29 | 2022 Omnibus Act 제정, 법적 의무 |
| FDA Final Guidance: *Cybersecurity in Medical Devices: QS Considerations and Content of Premarket Submissions* (2023) | 2023-09-27 | 기준 가이던스 |
| FDA Final Guidance: *Cybersecurity in Medical Devices* (2025 업데이트 — GUI00001825) | 2025-06-27 | 현행 최신, 2023 가이던스 대체 |
| FDA *Select Updates for the Premarket Cybersecurity Guidance* (Draft→Final) | 2024-04-30 웨비나 → 2025 Final 흡수 | 524B §VII 추가 반영 |

> **RTA 주의**: 2023-10-01부터 eSTAR Cybersecurity 섹션 미완성·관련 첨부 누락 시 Technical Screening Hold 또는 RTA 처리.

---

## 1. "Cyber Device" 해당 여부 판단 (3-요소 테스트)

Section 524B(c) 정의:

| 요소 | 판단 질문 | 자사 제품 적용 |
|---|---|---|
| ① SW 포함 | 기기 내 SW가 validated·installed·authorized되어 있는가 | Detector(펌웨어 있으면 해당), Handheld Source(SW 제어 있으면 해당), **GUI SW**(해당) |
| ② 인터넷 연결 가능성 | 네트워크·인터넷에 연결 가능한 기술 특성 보유하는가 | GUI SW(PACS/HL7/DICOM 연결 → **해당**); Detector/Handheld는 무선 기능 여부로 판단 |
| ③ 사이버보안 취약 | 보안 위협에 노출될 수 있는 기술 특성 있는가 | ①②가 해당되면 사실상 자동 해당 |

> 3요소 모두 해당 시 → **Cyber Device** → Section 524B 법적 의무 전부 적용.  
> 해당 안 되면 → 가이던스 권고만 적용(선택적), eSTAR Cybersecurity 섹션은 N/A 기재 가능.

---

## 2. Section 524B 법적 제출 의무 3가지

```
524B(b)(1) — Cybersecurity Management Plan
           : 포스트마켓 취약점 모니터링·식별·대응 계획 (CVD 절차 포함)

524B(b)(2) — Design & Maintenance Processes
           : 기기·관련 시스템이 사이버보안 상태를 유지하도록 설계·개발·유지
             → 포스트마켓 업데이트·패치 제공 능력 포함

524B(b)(3) — SBOM (Software Bill of Materials)
           : 상업용·오픈소스·기성품 SW 컴포넌트 전부 기재 (법적 의무)
```

---

## 3. eSTAR Cybersecurity 섹션 — 항목별 작성 지침

### 3.1 Cybersecurity Management Plan (CMP)

**목적**: 제품 전 수명주기에 걸친 사이버보안 관리 방법론 제시.

**필수 포함 내용**:
- 포스트마켓 취약점 모니터링 프로세스 (CVE/NVD/ICS-CERT 추적)
- Coordinated Vulnerability Disclosure (CVD) 절차 및 연락처
- 보안 업데이트·패치 개발→배포 일정 (Critical: 60일 이내 패치 목표 등)
- 보안 사고(Incident) 대응 절차
- H-ISAC 등 정보공유 기구 참여 여부

**작성 팁**:
- 단순 서술 말고 체크리스트/프로세스 플로우 포함 권장
- 패치 타임라인 구체적으로 명시 (FDA 검토자 선호)

---

### 3.2 Security Architecture Views (보안 아키텍처 다이어그램)

FDA 2025 가이던스 권장 4가지 뷰:

| 뷰 | 설명 | 작성 요소 |
|---|---|---|
| **Global System View** | 기기 전체 구성요소·외부 연결 | HW·SW 컴포넌트, 인터페이스, Trust Boundary |
| **Multi-Patient Harm View** | 다수 환자 영향 가능 경로 | 네트워크 연결을 통한 대규모 피해 시나리오 |
| **Updateability/Patchability View** | 업데이트 경로 보안 | OTA/로컬 업데이트 메커니즘, 서명 검증 |
| **Security Use Case Views** | 주요 보안 시나리오별 플로우 | 인증·암호화·감사 로그 적용 시나리오 |

**자사 GUI SW 적용 시 필수 포함**:
- DICOM/HL7/PACS 연결 Trust Boundary 표시
- 사용자 인증 레이어 (Role-Based Access Control)
- 감사 로그 수집·저장 경로
- 외부 네트워크 격리 정책

---

### 3.3 Threat Model

**방법론**: STRIDE 권장 (FDA Playbook for Threat Modeling Medical Devices 참조)

| 위협 카테고리 | 설명 | 예시 (GUI SW) |
|---|---|---|
| **S**poofing | 위장·신원 사칭 | 의사 계정 탈취 후 조사 파라미터 변조 |
| **T**ampering | 데이터 무결성 침해 | DICOM 이미지 변조, 선량 기록 위조 |
| **R**epudiation | 부인 가능성 | 감사 로그 삭제·위조 |
| **I**nformation Disclosure | 정보 유출 | 환자 데이터 암호화 없는 전송 |
| **D**enial of Service | 가용성 침해 | 네트워크 플러드로 촬영실 SW 중단 |
| **E**levation of Privilege | 권한 상승 | 일반 사용자→Admin 권한 탈취 |

**필수 산출물**:
1. System Context Diagram (DFD Level 0/1)
2. Asset & Data Identification (PHI 포함 자산 목록)
3. Trust Boundary 정의
4. Threat 식별·STRIDE 분류 표
5. Mitigation 매핑 (각 위협 ↔ 보안 대책)
6. Residual Risk 평가 (ISO 14971 정합)

---

### 3.4 SBOM (Software Bill of Materials)

**법적 의무** (Section 524B(b)(3)).

**NTIA Minimum Elements** (FDA 준용):

| 필드 | 설명 | 예시 |
|---|---|---|
| Supplier Name | SW 공급자 | OpenJDK Foundation |
| Component Name | 컴포넌트 명칭 | OpenJDK |
| Version | 버전 문자열 | 17.0.9 |
| Unique Identifier | CPE 또는 PURL | `pkg:maven/org.openjdk/jdk@17.0.9` |
| Dependency Relationship | 의존성 관계 | DependsOn: spring-boot@3.2.0 |
| Author of SBOM | SBOM 작성자 | [제조사명] |
| Timestamp | 생성일시 ISO 8601 | 2026-04-29T00:00:00Z |

**형식**: SPDX 2.3+ 또는 CycloneDX 1.5+ (machine-readable JSON/XML 권장)

**포함 범위**:
- Manufacturer-developed SW (자체 개발)
- Third-party commercial/licensed SW
- Open-source SW
- Custom/modified SW
- 직접 의존성 + 전이적(transitive) 의존성 전부

**취약점 연계**: SBOM 내 각 컴포넌트를 CVE/NVD, CISA Known Exploited Vulnerabilities Catalog와 대조하여 알려진 취약점 식별·기재.

---

### 3.5 Vulnerability Management Plan (VMP) & Cybersecurity Testing

**VMP 핵심 요소**:
- CVE 모니터링 주기 (최소 월 1회 권장)
- 취약점 심각도 분류 기준 (CVSS 점수 활용)
- 대응 SLA 예시:
  - Critical (CVSS ≥9.0): 30일 이내 패치
  - High (CVSS 7.0–8.9): 60일 이내
  - Medium (CVSS 4.0–6.9): 90일 이내
- 취약점 공개 정책 (CVD 포함)

**Cybersecurity Testing Documentation**:

| 테스트 종류 | 목적 | 권장 도구/기준 |
|---|---|---|
| SAST (Static) | 소스코드 보안 취약점 | SonarQube, Coverity, CodeQL |
| DAST (Dynamic) | 런타임 취약점 | OWASP ZAP, Burp Suite |
| Fuzz Testing | 비정상 입력 처리 | AFL, libFuzzer |
| Penetration Test | 침투 시험 | 독립 전문 기관 수행 권장 |
| Code Review | 보안 코딩 규칙 검토 | CWE Top 25, OWASP Top 10 |
| SBOM 취약점 스캔 | 알려진 CVE 점검 | Grype, Trivy |

---

### 3.6 Labeling 사이버보안 정보

IFU 및 라벨에 포함할 사이버보안 사용자 안내 사항:

- 지원 운영체제/플랫폼 및 지원 종료일
- 네트워크 연결 요구사항 및 방화벽 포트 목록
- 업데이트·패치 적용 방법 및 주기
- 보안 사고 보고 방법 (연락처)
- 사용자 책임 범위 (비인가 SW 설치 금지 등)
- 기본 보안 설정 및 권장 구성

---

## 4. 자사 3개 제품 적용 매트릭스

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| **Cyber Device 해당** | 무선 기능 있으면 해당 | SW 제어·BT/무선 있으면 해당 | **해당 (확실)** |
| **CMP 필요** | 조건부 | 조건부 | **필수** |
| **Threat Model** | 조건부 | 조건부 | **필수** |
| **SBOM** | 조건부 | 조건부 | **필수 (법적)** |
| **보안 아키텍처 뷰** | 조건부 | 조건부 | **필수 (4가지 뷰)** |
| **주요 위협** | 펌웨어 변조, 무선 페어링 탈취 | 조사 파라미터 변조, 원격 제어 탈취 | 환자 데이터 유출, DICOM 변조, 인증 우회, DoS |
| **핵심 보안 대책** | 코드 서명, 보안 부팅, WPA3 | CRC 무결성, 인증된 연결만 허용 | RBAC, TLS 1.3, 감사로그, 암호화 저장 |
| **SOUP 관리** | 해당 시 SBOM 포함 | 해당 시 SBOM 포함 | **필수 (IEC 62304 §8 + SBOM)** |

---

## 5. 3개 지역 비교 (FDA vs MDR vs MFDS)

| 요구사항 | FDA (524B + 2025 Guidance) | EU MDR (MDCG 2019-16) | MFDS (2025.01 가이드라인) |
|---|---|---|---|
| **법적 근거** | Section 524B, FD&C Act | GSPR Annex I §14·17·18 | 디지털의료제품법·사이버보안 가이드라인 |
| **SBOM** | 법적 의무 (524B(b)(3)) | 강력 권고 | 권고 (제출 자료 포함) |
| **Threat Model** | 필수 (STRIDE 권장) | 필수 (MDCG 2019-16) | 필수 |
| **CMP/VMP** | 필수 | PMS 계획에 포함 | 업데이트 정책으로 요구 |
| **Pen Test** | 권고 | 권고 | 권고 |
| **표준 참조** | IEC 81001-5-1, NIST CSF | IEC 81001-5-1 (조화표준 진행) | IEC 81001-5-1, MFDS 자체 가이드 |
| **포스트마켓** | 법적 의무 (패치, CVD, 모니터링) | PMS + Vigilance 연계 | 이상사례 보고 + 업데이트 절차 |

> MDR/MFDS 영향: GUI SW의 경우 FDA 요건 충족 수준으로 작성하면 MDR·MFDS 요건도 대부분 커버됨. SBOM은 FDA 외 지역에서도 실질적으로 요구되는 추세.

---

## 6. eSTAR 제출 체크리스트 (Cybersecurity 섹션)

```
□ Cyber Device 해당 여부 근거 기재 (N/A 처리 시 그 근거 명시)
□ Cybersecurity Management Plan (CMP) — 포스트마켓 의무 포함
□ Security Architecture Diagram — 4가지 뷰 (Global / Multi-patient / Update / Use Case)
□ Threat Model Report — STRIDE 기반, DFD 포함
□ Security Risk Management Report — 보안 위험관리 결과 요약, 잔여 위험 정당화
□ SBOM — SPDX/CycloneDX, NTIA minimum elements, CVE 대조 결과
□ Vulnerability Management Plan (VMP) — 모니터링 주기·대응 SLA
□ Cybersecurity Testing Evidence — SAST/DAST/Fuzz/Pen Test 결과
□ Coordinated Vulnerability Disclosure (CVD) Policy
□ Security Requirements Specification — Threat Model에서 도출
□ Labeling — 사용자 보안 책임·환경 요구사항 기재
□ 기존 Known Vulnerabilities 목록 — CISA KEV 대조 결과
```

> **RTA 방지 핵심**: SBOM, CMP, Threat Model 3개 문서가 가장 빈번한 Technical Hold 원인. 이 3개를 먼저 완성할 것.

---

## 7. 참조 문서 및 소스

| 소스 | URL | 발행일 |
|---|---|---|
| FDA Final Guidance (2023-09) | https://www.fda.gov/media/173984/download | 2023-09-27 |
| FDA Final Guidance (2025-06, 현행) | https://www.fda.gov/files/guidance%20documents/published/GUI00001825-final-PremarketCybersecurity-2025.pdf | 2025-06-27 |
| Section 524B Select Updates (Draft) | https://www.fda.gov/media/178547/download | 2024-04-30 웨비나 발표 |
| FDA Cybersecurity 포털 | https://www.fda.gov/medical-devices/digital-health-center-excellence/cybersecurity | 상시 갱신 |
| FDA eSTAR 프로그램 | https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program | 상시 갱신 |
| MDCG 2019-16 Rev.1 | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2019_16_guidance_cybersecurity_en_0.pdf | 2020-07 |
| IEC 81001-5-1:2021 abstract | https://www.iec.ch/homepage | 2021 |

---

## 관련 문서

- [사이버보안_통합가이드](../../사이버보안_통합가이드.md) — 3개 지역 통합 개요
- [eSTAR_03_Performance_Testing_Bench_Test](eSTAR_03_Performance_Testing_Bench_Test.md) — 성능 시험 섹션
- [FDA_인허가_상세가이드](../FDA_인허가_상세가이드.md) — FDA 전체 프레임워크
