> 최종 갱신: 2026-05-14 (자동보강 #43)
> 근거: https://www.fda.gov/media/173984/download | https://www.fda.gov/files/guidance%20documents/published/GUI00001825-final-PremarketCybersecurity-2025.pdf | https://health.ec.europa.eu/document/download/b23b362f-8a56-434c-922a-5b3ca4d0a7a1_en | https://www.mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=15625&data_tp=A&file_seq=1 | https://koreascience.kr/article/JAKO202509954008256.pub | https://sbomify.com/2026/01/15/sbom-formats-cyclonedx-vs-spdx/ | https://innolitics.com/articles/sbom-best-practices-faqs-examples/

# SBOM 생성 실무 — SPDX vs CycloneDX 비교 및 도구

## 1. SBOM 개요

**SBOM(Software Bill of Materials)**: 소프트웨어 제품을 구성하는 모든 컴포넌트·의존성·라이선스·버전 정보를 기계 판독 가능한 형식으로 기술한 목록.  
의료기기 사이버보안 규제에서 공급망 투명성 확보 수단으로 요구됨.

### SBOM의 핵심 기능
| 기능 | 설명 |
|---|---|
| 구성요소 식별 | 사용된 라이브러리·프레임워크·OS 패키지·펌웨어 전수 목록 |
| 취약점 추적 | CVE 발생 시 영향 컴포넌트 신속 식별 (VEX 연동) |
| 라이선스 컴플라이언스 | GPL/LGPL 등 의무 조항 위반 사전 감지 |
| EOL 관리 | 지원 종료(End-of-Life) 컴포넌트 조기 대응 |
| 규제 제출 | FDA 510(k)/PMA, MFDS 허가, MDR CE 심사 증빙 |

---

## 2. 3개 지역 규제 요구사항

### 2-A. FDA (미국)

**법적 근거**: FD&C Act Section 524B (Omnibus Consolidated Appropriations Act 2023, 발효 2023-10-01)  
**주요 Guidance**: "Cybersecurity in Medical Devices: Quality System Considerations and Content of Premarket Submissions" (Final, 2023-09-27)  
**2025 업데이트**: GUI00001825 Final PremarketCybersecurity (2025년 버전, 2023 guidance 계승·확장)

**SBOM 요구사항 (Fact)**:
- Cyber Device 제출 시 SBOM 필수 제출 (Section 524B 법적 의무)
- 형식: **기계 판독 가능(machine-readable)**, NTIA October 2021 최소 요소 준수
- NTIA 최소 7개 요소: Supplier Name, Component Name, Version, Other Unique Identifiers, Dependency Relationships, Author of SBOM Data, Timestamp

**NTIA 최소 요소 7개**:
| 요소 | 설명 |
|---|---|
| Supplier Name | 컴포넌트 공급자 명 |
| Component Name | 컴포넌트 명칭 |
| Version | 버전 정보 (정확한 버전 권장) |
| Other Unique Identifiers | CPE / PURL |
| Dependency Relationships | 컴포넌트 간 의존 관계 |
| Author of SBOM Data | SBOM 작성 주체 |
| Timestamp | SBOM 생성 일시 (ISO 8601) |

**적용 판단 — Cyber Device 정의**:
- 인터넷 연결 기능 보유
- 다른 의료기기·비의료기기와 연결 기능
- SW 업데이트·패치 기능 포함

**해석**: FDA는 특정 포맷(SPDX/CycloneDX)을 지정하지 않으나, 업계 표준 포맷 권장. eSTAR CYBER Section 내 SBOM 파일 첨부 또는 링크 제출.

---

### 2-B. EU MDR (유럽)

**법적 근거**: EU MDR 2017/745, Annex I §17.2 (IT 보안 "state of the art" 준수 의무)  
**참조 Guidance**: MDCG 2019-16 Rev.1 "Guidance on Cybersecurity for medical devices"  
**신규 규정**: EU Cyber Resilience Act (CRA) Regulation 2024/2847 (발효 2024-12-10, SBOM 의무 발효 2027-12-11)

**SBOM 요구사항 (Fact)**:
- MDR Annex I §17.2: IT 보안 요구사항을 "최신 기술 수준(state of the art)"에 따라 충족
- EU CRA는 의료기기를 **직접 적용 대상에서 제외**하나, CRA의 SBOM 요건이 "state of the art" 기준선을 형성
- MDCG 2019-16: 제조자는 사용된 SOUP/OTS 소프트웨어 컴포넌트 목록 유지 의무
- EUDAMED: PMS 활동 내 소프트웨어 구성 정보 등록 요구 (단계적 시행)

**기술문서 위치**: Technical Documentation (Annex II) §6.1 (GSPR 근거), Annex II §3.3 SW 수명주기 문서에 포함.

**해석**: 명시적 SBOM 의무는 CRA 적용(2027) 이후이나, Notified Body 심사에서 SBOM 부재 시 §17.2 미충족으로 결함 지적 증가 추세(2024~현재). 현시점 제출 권장.

---

### 2-C. MFDS (한국)

**법적 근거**:
- 「의료기기 사이버보안 허가·심사 가이드라인」(2025-01-10 개정)
- 「디지털의료제품법」(2025-01-24 시행)
- 「디지털의료기기 전자적 침해행위 보안 지침(안)」 제16조 — SBOM 관리 활동 명시

**SBOM 요구사항 (Fact)**:
- 사이버보안 허가·심사 시 **소프트웨어 자재명세서(SBOM)** 제출 항목 포함
- 제출 구성: 위협 모델 + 사이버보안 위험평가 + SBOM + 취약점 평가 + 미해결 이상 평가 + 추적성
- NTIA 최소 요소 적용 권장 (FDA guidance 참조 체계)
- SOUP(Software of Unknown Provenance) 목록 = SBOM의 핵심

**해석**: FDA 기준을 준용하는 구조. SBOM 포맷 미지정이나 기계 판독 가능 형식 권장. 「디지털의료기기 전자적 침해행위 보안 지침」에서 SBOM 관리를 명시적 의무로 전환(2025 이후).

---

## 3. 3개 지역 비교 매트릭스

| 항목 | FDA (US) | EU MDR | MFDS (KR) |
|---|---|---|---|
| 법적 의무 여부 | **법적 의무** (Section 524B) | 사실상 의무 (§17.2 state of art) | **가이드라인 의무** (2025.01 개정) |
| 근거 문서 | FD&C §524B + 2023/2025 Guidance | MDR Annex I §17.2 + MDCG 2019-16 | 사이버보안 허가심사 가이드라인 + 디지털의료제품법 |
| 최소 요소 기준 | NTIA 7개 요소 | MDCG: SOUP 목록 (NTIA 준용 권장) | NTIA 7개 요소 준용 |
| 포맷 지정 | 미지정 (기계판독 가능) | 미지정 | 미지정 (기계판독 가능) |
| 제출 시점 | 허가 신청 시 (eSTAR) | CE 심사 기술문서 내 | 허가 신청 시 |
| PMS 연동 | 업데이트 시 SBOM 갱신 의무 | PMS Plan 내 포함 | 변경 시 갱신 |
| 적용 대상 | Cyber Device (인터넷 연결 등) | 연결 기능 포함 SW 의료기기 | 디지털의료기기 |

---

## 4. SPDX vs CycloneDX 포맷 비교

### 4-A. 개요

| 항목 | SPDX | CycloneDX |
|---|---|---|
| 관리 주체 | Linux Foundation | OWASP |
| 최신 버전 | SPDX 3.0 (2024) | CycloneDX 1.6 (2024) / 1.7 (2025) |
| ISO 표준 | ISO/IEC 5962:2021 | 미인증 |
| 설계 초점 | 라이선스 컴플라이언스 (보안은 후추가) | **보안·취약점 추적** (보안 우선 설계) |
| 지원 포맷 | Tag-Value, JSON, RDF, YAML, XML | JSON, XML |
| VEX 지원 | 외부 문서 연동 (3.0에서 Security Profile 추가) | **네이티브 지원** (vulnerabilities 배열) |
| 복잡도 | 높음 (풍부한 라이선스 필드) | 낮음 (간결한 스펙) |
| 의료기기 권장 | 라이선스 컴플라이언스 보조 | **Primary (FDA VEX 연동)** |

### 4-B. VEX (Vulnerability Exploitability eXchange)

**VEX**: CVE 발생 시 해당 취약점이 자사 제품에 실제로 영향을 미치는지 여부를 기술하는 문서.
- **CycloneDX**: SBOM 내 `vulnerabilities` 배열에 VEX 정보 직접 포함 가능
- **SPDX 3.0**: Security Profile 도입으로 VEX 지원 개선 (3.0 이전: 외부 문서 연동 필요)

FDA는 postmarket vulnerability management 시 VEX 제출 권장 → CycloneDX 전략적으로 유리.

### 4-C. SPDX 3.0 주요 변경 (2024)

- 프로파일 기반 아키텍처: Core + Security / Licensing / Build / AI / Dataset 프로파일
- 3지역 SBOM 요건 단일 문서 커버 가능
- AI 모델·데이터셋 구성요소 기술 지원 (AI-enabled device 대응 유리)

### 4-D. CycloneDX 1.6/1.7 주요 변경

- 1.6 (2024): Attestation 지원, CBOM (Cryptography Bill of Materials)
- 1.7 (2025): 특허·IP 메타데이터, 데이터 출처 인용, 확장된 암호화 투명성

### 4-E. 의료기기 권장 전략

> **Primary: CycloneDX JSON** — FDA VEX 네이티브 지원, 보안 초점, 간결한 스펙  
> **Secondary: SPDX JSON** — 라이선스 컴플라이언스 기록, ISO 표준 요건 대응 시

---

## 5. SBOM 생성 도구

### 5-A. 주요 오픈소스 도구

| 도구 | 개발사 | 출력 포맷 | 강점 | 비고 |
|---|---|---|---|---|
| **Syft** | Anchore | SPDX (JSON·TV), CycloneDX (JSON·XML) | 언어 에코시스템 최광범위, 정확도 최고 | ✅ 권장 |
| **cdxgen** | OWASP CycloneDX | CycloneDX JSON/XML | CycloneDX 레퍼런스 구현, 다언어 지원 | ✅ 권장 |
| **trivy** | Aqua Security | SPDX, CycloneDX | 취약점 스캔 + SBOM 병행 | ⚠️ 2026-03 공급망 공격 이력 |
| **FOSSA** | FOSSA Inc. | SPDX, CycloneDX | 라이선스+SBOM 통합 SaaS | 상용 |
| **SPDX Tools** | Linux Foundation | SPDX 전 포맷 | 공식 검증·변환 도구 | SPDX 전용 |

> ⚠️ **Trivy 주의**: 2026-03 연속 2회 공급망 공격 피해 보고. CI/CD 직접 사용 재검토 권장.

### 5-B. Syft 지원 언어·에코시스템

Go, Java (Maven/Gradle), JavaScript/Node (npm/yarn), Python (pip/poetry/conda), Ruby (gem), Rust (cargo), PHP (composer), .NET (NuGet), C/C++ (conan), Swift, Dart, Haskell.  
컨테이너 이미지(로컬·레지스트리), 소스 디렉토리, 아카이브 파일 스캔 지원.

### 5-C. 도구 선택 가이드

| 시나리오 | 권장 도구 |
|---|---|
| FDA 제출용 CycloneDX 생성 | **cdxgen** 또는 Syft |
| 다포맷 동시 생성 (SPDX + CycloneDX) | **Syft** |
| 컨테이너 이미지 기반 제품 | **Syft** (정확도 우수) |
| 라이선스 컴플라이언스 우선 | **FOSSA** (상용) 또는 Syft + SPDX |
| SPDX 포맷 검증·변환 | **SPDX Tools** (공식) |

---

## 6. 자사 3개 제품 영향 맵핑

### 6-A. X-ray Detector

| 항목 | 내용 |
|---|---|
| Cyber Device 해당 여부 | Wi-Fi/네트워크 연결형이면 해당 (FDA §524B) |
| SW 구성요소 유형 | 임베디드 펌웨어, 이미지 처리 라이브러리, 통신 스택 |
| SBOM 필수 포함 항목 | 펌웨어 RTOS, Linux 커널(임베디드 시), OpenSSL, DICOM 통신 라이브러리 |
| 권장 도구 | Syft (컨테이너/펌웨어 이미지 스캔) |
| 제출 위치 | FDA eSTAR Cyber Section / MFDS 사이버보안 문서 / MDR Annex II §6.1 |

### 6-B. Handheld X-ray Source

| 항목 | 내용 |
|---|---|
| Cyber Device 해당 여부 | Bluetooth/Wi-Fi 연동 앱 연결 시 해당 |
| SW 구성요소 유형 | 제어 펌웨어, 모바일 앱(iOS/Android), BLE 스택 |
| SBOM 필수 포함 항목 | MCU 제어 펌웨어, 모바일 OS SDK, 암호화 라이브러리, 배터리 관리 SW |
| 권장 도구 | cdxgen (모바일 앱 의존성) + Syft (펌웨어) |
| 특이사항 | 연결 기능 없는 단독 사용 모드 → Cyber Device 비해당 검토 가능 |

### 6-C. 촬영실 GUI SW

| 항목 | 내용 |
|---|---|
| Cyber Device 해당 여부 | PACS/RIS 연동, DICOM 네트워크 → **해당** |
| SW 구성요소 유형 | GUI 프레임워크, DICOM 라이브러리, DB 엔진, 웹 서버(원격 접속), OS |
| SBOM 필수 포함 항목 | Qt/Electron 등 UI 프레임워크, fo-dicom/dcm4che 등 DICOM 라이브러리, SQLite/PostgreSQL, OpenSSL/TLS |
| 권장 도구 | Syft (다언어 혼합 환경) |
| IEC 62304 연동 | SOUP List = SBOM의 부분집합. 동일 데이터 소스 유지 권장 |

---

## 7. SBOM 유지·관리 사이클

```
개발 초기
  └─ 컴포넌트 선정 시 SBOM 초안 작성 (cdxgen/Syft)
빌드 파이프라인 (CI/CD)
  └─ 매 빌드 시 SBOM 자동 생성
  └─ 취약점 스캔 연동 → VEX 업데이트
허가 신청
  └─ SBOM 최종본 + VEX 문서 제출 (FDA/MFDS/MDR)
Post-Market
  └─ CVE 발생 → 영향 컴포넌트 확인 → VEX 업데이트
  └─ 컴포넌트 EOL → 교체 계획 수립 → PMS Plan 반영
  └─ SW 업데이트 시 SBOM 재생성·재제출 (FDA 의무)
```

---

## 8. 실무 체크리스트

### 허가 제출 전

- [ ] NTIA 7개 최소 요소 전부 포함 확인
- [ ] 기계 판독 가능 포맷 (JSON/XML) 사용
- [ ] 모든 SOUP 컴포넌트 버전 정확히 기재
- [ ] 제3자 라이브러리 라이선스 정보 포함
- [ ] VEX 문서 연동 (알려진 CVE 처리 현황 기술)
- [ ] SBOM 생성 도구·버전 기재 (Author of SBOM Data)
- [ ] Timestamp ISO 8601 형식 기재

### 포맷 선택

- [ ] FDA 제출: CycloneDX JSON (VEX 네이티브 지원)
- [ ] EU MDR/MFDS: CycloneDX JSON 또는 SPDX JSON
- [ ] 라이선스 심사 대비: SPDX 추가 생성

### Post-Market

- [ ] 분기별 또는 업데이트 배포 시 SBOM 갱신
- [ ] CVE 발생 → 72시간 내 영향 분석 → VEX 업데이트
- [ ] EOL 컴포넌트 → 교체 일정 PMS Plan 반영

---

## 9. 참고 자료

| 출처 | 내용 | URL |
|---|---|---|
| FDA Final Guidance 2023-09-27 | Cybersecurity Premarket Submissions | https://www.fda.gov/media/173984/download |
| FDA GUI00001825 (2025) | 최신 PremarketCybersecurity guidance | https://www.fda.gov/files/guidance%20documents/published/GUI00001825-final-PremarketCybersecurity-2025.pdf |
| NTIA Minimum Elements (2021-10) | SBOM 최소 7개 요소 | https://www.ntia.gov/report/2021/minimum-elements-software-bill-materials-sbom |
| MDCG 2019-16 Rev.1 | EU 의료기기 사이버보안 | https://health.ec.europa.eu/document/download/b23b362f-8a56-434c-922a-5b3ca4d0a7a1_en |
| EU CRA 2024/2847 | Cyber Resilience Act | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32024R2847 |
| MFDS 사이버보안 허가심사 가이드라인 | 국내 SBOM 제출 근거 | https://www.mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=15625&data_tp=A&file_seq=1 |
| KIISC 논문 (2025) | 국내외 SBOM 규제 동향 | https://koreascience.kr/article/JAKO202509954008256.pub |
| Syft (Anchore) | SBOM 생성 도구 | https://github.com/anchore/syft |
| cdxgen (OWASP) | CycloneDX 레퍼런스 생성 도구 | https://github.com/CycloneDX/cdxgen |
