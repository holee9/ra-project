> 최종 갱신: 2026-04-30 (자동보강 #5)
> 근거: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/content-premarket-submissions-device-software-functions | https://www.iso.org/standard/38421.html | https://health.ec.europa.eu/latest-updates/update-mdcg-2019-11-rev1-qualification-and-classification-software-regulation-eu-2017745-and-2025-06-17_en | https://www.mfds.go.kr/brd/m_1060/view.do?seq=15655

# eSTAR 작성 가이드 (5) — Software Section (IEC 62304 기반)

## 0. 적용 근거 (법령·가이던스)

| 문서 | 발효일 | 비고 |
|---|---|---|
| FDA Final Guidance: *Content of Premarket Submissions for Device Software Functions* | 2023-06-14 | 현행 기준 가이던스. 구 "Level of Concern" 체계 폐지 |
| IEC 62304:2006+A1:2015 *Medical device software — Software life cycle processes* | 2015-06 (A1 개정) | FDA 인정 Consensus Standard. MFDS KS P IEC 62304으로 채택 |
| FDA *General Principles of Software Validation* | 2002-01-11 | 여전히 유효 (V&V 원칙) |
| MDCG 2019-11 Rev.1 *Qualification and Classification of Software* | 2025-06-17 | 최신. MDR 2017/745·IVDR 2017/746 동시 적용 |
| MFDS 의료기기 소프트웨어 허가·심사 가이드라인 | 2025-05-07 개정 | 담당: 디지털헬스규제지원과 |

> **RTA 주의**: eSTAR Software Section 미작성·문서 누락 시 Technical Screening Hold 또는 RTA 사유.

---

## 1. "Device Software Function" 해당 여부 판단

FDA 2023 가이던스 적용 범위:

| 범주 | 해당 여부 | 비고 |
|---|---|---|
| Software in a Medical Device (SiMD) — 기기 펌웨어·제어 SW | **해당** | X-ray Detector 펌웨어, Handheld Source 제어 SW |
| Software as a Medical Device (SaMD) — 독립 실행 SW | **해당** | 촬영실 GUI SW (진단 지원 기능 포함 시) |
| SW that merely assists in device manufacturing or design | 비해당 | 개발툴, ERP 등 |

> X-ray Detector 펌웨어 / Handheld Source 제어 SW / 촬영실 GUI SW 모두 Device Software Function 해당.

---

## 2. Documentation Level 결정 (Basic vs Enhanced)

### 2.1 결정 기준

FDA 2023 가이던스 핵심 질문:

> **"Could a failure or flaw of the device software function present a probable risk of death or serious injury to a patient, user, or others in the environment of use?"**
>
> 평가 시점: **위험 통제 조치 적용 이전(사전 위험)** 기준.

| Documentation Level | 조건 | 제출 문서 수 |
|---|---|---|
| **Basic** | 소프트웨어 실패 시 사망·중상 가능성 없음 | 9개 |
| **Enhanced** | 소프트웨어 실패 시 사망·중상 가능성 있음 | 10개 |

FDA는 Class III 기기·약물-기기 복합체에 Enhanced 권고 (명확한 반박 근거 없는 한).

### 2.2 자사 3개 제품 Documentation Level 판정 매트릭스

| 제품 | 소프트웨어 오작동 최악 시나리오 | 권장 Level |
|---|---|---|
| **X-ray Detector** | 노출 파라미터 오독 → 과선량 촬영 → 방사선 피해 | **Enhanced** |
| **Handheld X-ray Source** | 선량 제어 SW 오류 → 과다 방사선 조사 → 방사선 피해 | **Enhanced** |
| **촬영실 GUI SW** | 노출 파라미터 설정 오류·오표시 → 진단 오류 또는 과선량 | **Enhanced** |

> 세 제품 모두 **Enhanced Level** 해당. IEC 62304 소프트웨어 안전 등급은 Class B 이상 적용 필요.

---

## 3. IEC 62304 소프트웨어 안전 등급 (Safety Classification)

| 등급 | 기준 | 요구 활동 |
|---|---|---|
| **Class A** | 소프트웨어 실패가 위험 상황(Hazardous Situation) 초래 불가 | 기본 SDLC |
| **Class B** | 실패 시 위험 상황 가능하나 심각한 상해(Serious Injury) 불가 | Class A + 상세 설계·통합시험 |
| **Class C** | 실패 시 사망 또는 심각한 상해 가능 | Class B + 단위 시험 필수·완전 추적성 |

자사 3개 제품: Detector 펌웨어 **Class C**, Handheld Source 제어 SW **Class C**, 촬영실 GUI SW **Class B~C** (구체적 기능 위험분석 후 확정).

---

## 4. eSTAR Software Section — 10개 필수 문서 (Enhanced Level 기준)

### 문서 목록 및 IEC 62304 매핑

| # | 문서명 | IEC 62304 출처 조항 | Basic | Enhanced |
|---|---|---|---|---|
| 1 | Documentation Level Evaluation | §4.3, §7.1 + ISO 14971 | ✅ | ✅ |
| 2 | Software Description | §5.1, §5.3 | ✅ | ✅ |
| 3 | Risk Management File | §7 전체 + ISO 14971:2019 | ✅ | ✅ |
| 4 | Software Requirements Specification (SRS) | §5.2 | ✅ | ✅ |
| 5 | System & Software Architecture Design Chart | §5.3 | ✅ | ✅ |
| 6 | Software Design Specification (SDS) | §5.4 | ❌ | ✅ |
| 7 | Development & Configuration Management | §5.1, §6, §8 | ✅ (요약) | ✅ (전체) |
| 8 | Software Testing Documentation | §5.5, §5.6, §5.7 | ✅ (시스템만) | ✅ (단위+통합+시스템) |
| 9 | Software Version / Revision Level History | §5.8, §8 | ✅ | ✅ |
| 10 | Unresolved Software Anomalies | §9 | ✅ | ✅ |

---

## 5. 문서별 작성 지침

### 5.1 Document 1: Documentation Level Evaluation

**목적**: Basic/Enhanced 수준 근거 명시.

**필수 포함**:
- 결정된 Documentation Level 선언
- 위험 기반 근거 (무통제 위험 기준)
- 지지 문서 참조 (Risk Management File, Software Description)
- IEC 62304 소프트웨어 안전 등급과의 연계 설명

**작성 팁**: 제출 전 이 문서를 가장 먼저 완성. FDA 검토자가 첫 번째로 읽음. Basic으로 판정 시 상세 근거 필수 — 중도에 Enhanced로 전환 요구 방지.

---

### 5.2 Document 2: Software Description

**목적**: FDA 검토자가 소프트웨어를 맥락적으로 이해할 수 있게 하는 개요.

**필수 포함**:
- 주요 기능·특징 목록 (핵심 기능별 1~2줄 설명)
- 운용 환경 (OS, HW 플랫폼, 네트워크)
- 소프트웨어 입출력 (소스·목적지 포함)
- 사용자 인터랙션 및 임상 워크플로우
- 블록 다이어그램·플로우차트·상태도

**자사 제품별 핵심 기재 사항**:

| 제품 | 특기 사항 |
|---|---|
| X-ray Detector | 펌웨어 버전·플랫폼·DICOM 인터페이스·보정 알고리즘 |
| Handheld X-ray Source | 제어 SW 버전·선량 계산 알고리즘·인터락 로직 설명 |
| 촬영실 GUI SW | OS (Windows/Linux)·PACS/RIS 연동·노출 파라미터 설정 워크플로우·사용자 역할 |

---

### 5.3 Document 3: Risk Management File

**목적**: ISO 14971:2019 준거 소프트웨어 위험 관리 근거.

**필수 포함**:
- Risk Management Plan (허용 기준 포함)
- 위험 분석·평가·통제·잔여 위험 허용성 판단
- Risk Management Report
- 위험 → 통제 조치 → 검증 추적성 매트릭스

**IEC 62304 § 7 연계**: 위험 상황에 기여하는 소프트웨어 항목 분석 결과를 아키텍처 설계(§5.3)와 연결. 이 분석이 Document 1·2·3을 동시에 채우는 핵심 교차점.

---

### 5.4 Document 4: Software Requirements Specification (SRS)

**목적**: 소프트웨어가 수행해야 하는 것을 완전·검증 가능하게 정의.

**필수 포함**:
- 기능 요구사항 (shall 문 형식)
- 성능 요구사항 (구체적 수치)
- 인터페이스 요구사항 (HW·SW·사용자)
- 위험 관리에서 파생된 안전 요구사항
- 사이버보안 요구사항
- 모든 범위·한계·기본값·특정 수치

**형식 권장**:
- 요구사항 고유 ID (예: REQ-GUI-001)
- 각 요구사항별 검증 방법 명시 (Test/Inspection/Analysis)
- 위험 ID와의 연결 (예: RISK-001 → REQ-GUI-023)

---

### 5.5 Document 5: System & Software Architecture Design Chart

**목적**: 컴포넌트·인터페이스·데이터 플로우 구조적 표현.

**필수 포함**:
- 아키텍처 다이어그램 (모듈·레이어·인터페이스)
- 모듈 간 관계·의존성
- 데이터 입출력 및 모듈 간 흐름
- IT 인프라·배포 아키텍처
- 사이버보안 아키텍처 (Trust Boundary 포함)

**권장 표기법**: UML/SysML. 단일 복잡 다이어그램보다 다수 보완적 뷰(컨텍스트 뷰·컴포넌트 뷰·배포 뷰) 권장.

---

### 5.6 Document 6: Software Design Specification (SDS) — Enhanced Level 전용

**목적**: 요구사항이 어떻게 구현되는지 상세 기술 설계 제시.

**필수 포함**:
- SW 단위/모듈별 기술 설계 세부 사항
- 알고리즘·데이터 구조
- 구현 사양
- SDS가 SRS를 완전·정확하게 구현함을 보이는 추적성

**중요**: SDS는 코딩 **전에** 선행 작성해야 함. 사후 문서화 시 DHF 신뢰성 문제 발생.

---

### 5.7 Document 7: Development & Configuration Management

**목적**: 통제된 개발 환경·체계적 프로세스 입증.

**Basic Level**:
- 수명주기 프로세스·코딩 표준·방법론·도구 요약
- 개발 활동 주요 산출물
- 요구사항 → 설계 → 시험 → 위험통제 추적성 프로세스
- 형상관리·변경관리 요약
- 유지보수 프로세스 및 회귀 분석

**Enhanced Level** (추가):
- 완전한 형상관리 계획 문서
- 완전한 유지보수 계획 문서
- 상세 절차·도구 문서

**대안 (IEC 62304 준수 선언)**:
- Basic: §5.1.1–5.1.3, §5.1.6–5.1.9, Clause 6, Clause 8 준수 선언으로 대체 가능
- Enhanced: 완전한 Clause 5.1, Clause 6, Clause 8 준수 선언으로 대체 가능
- QMS 기존 절차 참조 방식 허용 (중복 작성 불필요)

---

### 5.8 Document 8: Software Testing Documentation

**목적**: 요구사항 충족 입증을 위한 V&V 근거.

**Basic Level**:
- 단위·통합·시스템 시험 요약
- 시스템 수준 시험 프로토콜 (예상·실제 결과·합불 판정)
- 시스템 수준 시험 보고서
- 회귀 분석·시험 결과

**Enhanced Level** (추가):
- 단위 수준 시험 프로토콜·보고서 (예상 vs 실제, 합불)
- 통합 수준 시험 프로토콜·보고서 (예상 vs 실제, 합불)

**핵심**: 요구사항 커버리지 100% 입증. REQ → Test Case → Result 추적성 매트릭스 필수.

**자사 3개 제품 시험 포인트**:

| 제품 | 핵심 시험 항목 |
|---|---|
| X-ray Detector | 보정 알고리즘 검증, DICOM 출력 정확성, 노출 파라미터 수신 정확성 |
| Handheld Source | 선량 제어 로직 검증, 인터락 기능 시험, 배터리 저하 시 제어 동작 |
| 촬영실 GUI SW | 노출 파라미터 전달 정확성, 사용자 인증·권한, PACS/HL7 통신, 오류 처리 |

---

### 5.9 Document 9: Software Version / Revision Level History

**목적**: 시험·출시된 버전 완전 이력.

**필수 포함**:
- Design Control 적용 시점부터 전체 버전 이력
- 버전별 날짜·버전 번호·변경 설명
- 최종 출시 버전과 시험 버전 간 차이 및 안전성·유효성 영향 평가
- 이전 510(k) 승인 번호 참조 (수정 기기인 경우)

**형식**: 표 형식(일자 | 버전 | 변경 내용 | 검증 상태) 권장. 최상위 행 = 최종 출시 버전.

---

### 5.10 Document 10: Unresolved Software Anomalies

**목적**: 알려진 버그의 안전성·유효성 영향 분석.

**필수 포함**:
- 미해결 이상현상 설명
- 발견 경위 및 근본 원인
- 안전성·유효성 영향 평가
- 수정하지 않는 위험 기반 근거
- 사용자에 대한 완화/우회 방법 전달 방법

**참고**: 미해결 이상현상이 없을 경우 "None" 기재 허용. ANSI/AAMI SW91 결함 분류 체계 활용 권장.

---

## 6. IEC 62304 Clause 5 → eSTAR 문서 매핑 요약

| IEC 62304 프로세스 단계 | 생성 eSTAR 문서 |
|---|---|
| 5.1 Software Development Planning | Dev & Config Management, Software Description |
| 5.2 Requirements Analysis | SRS |
| 5.3 Architectural Design | Software Description, Architecture Chart, Risk Management File |
| 5.4 Detailed Design | SDS (Enhanced only) |
| 5.5 Unit Implementation & Verification | Dev & Config Management, Testing Doc (Unit) |
| 5.6 Integration Testing | Testing Doc (Integration) |
| 5.7 System Testing | Testing Doc (System) |
| 5.8 Software Release | Version History, Unresolved Anomalies |
| 6 Maintenance Process | Dev & Config Management |
| 7 Risk Management | Risk Management File, Doc Level Evaluation |
| 8 Configuration Management | Dev & Config Management, Version History |
| 9 Problem Resolution | Unresolved Software Anomalies |

> **핵심 인사이트**: IEC 62304를 체계적으로 수행하면 eSTAR 제출 문서가 자연스럽게 생성됨. 별도 "FDA 버전" 문서 재작성 불필요. 초기 문서 구조 설계가 관건.

---

## 7. SOUP (Software of Unknown Provenance) 처리

IEC 62304 §8.1.2, §5.3.3 요건:

| 항목 | 요구 사항 |
|---|---|
| SOUP 식별 | 상업용·오픈소스·기성품 SW 컴포넌트 전부 목록화 |
| SOUP 버전 고정 | 사용 버전 문서화 및 형상관리 |
| SOUP 기능 요구사항 | SOUP에 기대하는 기능·성능 문서화 |
| SOUP 알려진 이상현상 | 공개 이상현상 목록 검토·문서화 |
| SOUP 위험 기여 분석 | SOUP 실패가 기기 위험에 기여하는지 분석 |

> SOUP 목록은 eSTAR Cybersecurity Section의 SBOM (§524B)과 연동. 두 문서 간 버전·컴포넌트 일치 필요.

---

## 8. 3개 지역 비교 — 소프트웨어 기술문서 요건

| 항목 | FDA (미국) | MFDS (국내) | MDR (EU) |
|---|---|---|---|
| 주요 가이던스 | *Content of Premarket Submissions for Device SW Functions* (2023) | 의료기기 SW 허가심사 가이드라인 (2025-05-07) | MDR Annex II §6.1 + MDCG 2019-11 Rev.1 (2025-06) |
| 기반 표준 | IEC 62304:2006+A1:2015 (인정 표준) | KS P IEC 62304 (동등 채택) | IEC 62304 (EU 조화 표준, CS 목록 수록) |
| 분류 체계 | Documentation Level: Basic / Enhanced | 안전 등급: A / B / C (IEC 62304 준거) | IEC 62304 Class A/B/C + MDR Annex VIII 규칙 |
| 기술문서 제출 방식 | eSTAR 10개 섹션 | 기술문서 (사용목적·원리·성능·안전성) 내 SW 섹션 | Technical Documentation (Annex II) §6.1 |
| 추적성 요건 | 요구사항 → 설계 → 시험 추적성 매트릭스 | 동일 (IEC 62304 요건 준수) | 동일 + GSPR (Annex I) 적합성 증거 연결 |
| 유지보수/PMS | Unresolved Anomalies + MDR/21 CFR 803 | 이상사례 보고 + 시판 후 안전관리 | PMS Plan/Report (Annex III) + PSUR |
| SOUP/SBOM | SBOM (Section 524B 법적 의무) + SOUP (IEC 62304) | SOUP 목록 (IEC 62304 준수) | SOUP 목록 (IEC 62304) + SBOM [검증 필요: MDR 명시 요건 확인] |
| AI/ML 소프트웨어 | PCCP (Predetermined Change Control Plan, 2024 Final) | AI 의료기기 가이드라인 (MFDS 2025) | MDCG 2021-6 AI 가이던스 |

---

## 9. 자사 3개 제품 — 소프트웨어 기술문서 핵심 Action Items

### 9.1 X-ray Detector 펌웨어

- [ ] IEC 62304 Class C 기준 SDLC 수립
- [ ] 펌웨어 SRS 작성 (선량 제어·보정·DICOM 출력 요구사항 포함)
- [ ] 단위·통합·시스템 시험 프로토콜 및 보고서 작성
- [ ] SOUP 목록: DICOM 스택, 이미지 처리 라이브러리 등
- [ ] 소프트웨어 아키텍처 다이어그램 (펌웨어 레이어 구조)

### 9.2 Handheld X-ray Source 제어 SW

- [ ] IEC 62304 Class C 기준 SDLC 수립
- [ ] SRS: 선량 계산 알고리즘·인터락·배터리 관리 요구사항
- [ ] 인터락 기능 독립 시험 (fail-safe 동작 검증)
- [ ] 임베디드 RTOS 또는 bare-metal SW 아키텍처 문서화
- [ ] 배터리 저하 상태 소프트웨어 동작 안전성 분석

### 9.3 촬영실 GUI SW

- [ ] IEC 62304 Class B~C 안전 등급 확정 (기능별 위험 분석 후)
- [ ] SRS: 노출 파라미터 설정·PACS/HL7 연동·사용자 인증·감사 로그
- [ ] 시스템 검증 시험 (Validation) — 실제 임상 사용 시나리오 기반
- [ ] PACS/RIS 연동 인터페이스 시험 (HL7 v2, DICOM Worklist)
- [ ] Cybersecurity 요구사항을 SRS에 포함 (eSTAR_04 연동)

---

## 10. 공통 Pitfall 및 대응

| Pitfall | 증상 | 대응 |
|---|---|---|
| 개발 완료 후 사후 문서화 | DHF 타임라인 불일치, FDA Additional Information | 설계 전 SRS·SDS 선작성 원칙 |
| 추적성 미비 | 요구사항 커버리지 질문, AI 요청 | 초기부터 REQ-DESIGN-TEST-RISK 매트릭스 유지 |
| Documentation Level Basic 오판 | 중도 Enhanced 전환 요구 → 일정 지연 | 무통제 위험 기준으로 보수적 판정 |
| SOUP 미식별 | 오픈소스 라이센스 문제, SBOM 불일치 | 개발 초기 SOUP 레지스트리 구축 |
| SDS 사후 작성 | "설계 후 코딩" 의심 → FDA 심층 심사 | SDS는 반드시 코딩 전 작성 |
| IEC 62304 / FDA 문서 이중화 | 유지보수 부담, 버전 불일치 | 단일 문서 세트로 양쪽 요건 동시 충족 설계 |

---

## 참고 문헌

1. FDA, "Content of Premarket Submissions for Device Software Functions," Final Guidance, June 2023. https://www.fda.gov/regulatory-information/search-fda-guidance-documents/content-premarket-submissions-device-software-functions
2. IEC 62304:2006+A1:2015, Medical device software — Software life cycle processes. https://www.iso.org/standard/38421.html
3. ISO 14971:2019, Medical devices — Application of risk management to medical devices.
4. FDA, "General Principles of Software Validation," January 2002. https://www.fda.gov/regulatory-information/search-fda-guidance-documents/general-principles-software-validation
5. MDCG 2019-11 Rev.1, "Qualification and Classification of Software under Regulation (EU) 2017/745 and Regulation (EU) 2017/746," June 2025. https://health.ec.europa.eu/latest-updates/update-mdcg-2019-11-rev1-qualification-and-classification-software-regulation-eu-2017745-and-2025-06-17_en
6. MFDS 의료기기 소프트웨어 허가·심사 가이드라인(민원인 안내서), 2025-05-07. https://www.mfds.go.kr/brd/m_1060/view.do?seq=15655
7. CyberMed, "IEC 62304 to FDA eSTAR: A Software Documentation Guide," October 2025. https://cybermed.ai/blog/iec-62304-fda-estar-mapping
