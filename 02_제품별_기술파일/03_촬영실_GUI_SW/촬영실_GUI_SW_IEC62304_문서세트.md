> 최종 갱신: 2026-05-05 (자동보강 #17)
> 근거: https://webstore.iec.ch/en/publication/22794 | https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program | https://health.ec.europa.eu/latest-updates/update-mdcg-2019-11-rev1-qualification-and-classification-software-regulation-eu-2017745-and-2025-06-17_en | https://www.mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=14154&data_tp=A&file_seq=1

# 촬영실 GUI SW — IEC 62304 기반 소프트웨어 수명주기 문서 세트

## 개요

본 문서는 촬영실 GUI 소프트웨어의 IEC 62304:2006/AMD1:2015 준수를 위한 수명주기 산출물 템플릿 및 작성 지침을 제공한다. MFDS·FDA·MDR 3개 지역의 SW 제출 요건과 교차 매핑되어 있다.

---

## 0. IEC 62304 Safety Class 결정

### Safety Class 정의

| Class | 위해 정의 | 예시 |
|---|---|---|
| **A** | 부상 또는 손해 없음 | 순수 영상 아카이브·뷰어 (진단 의사결정 없음) |
| **B** | 심각하지 않은 부상 가능 | 촬영 제어, 기본 영상 처리 |
| **C** | 사망 또는 심각한 부상 가능 | AI 기반 진단 보조(CADe/CADx), 자동 노출 최적화 |

### 자사 GUI SW 적용

> **결정 전 확인 항목**: 소프트웨어 실패 시 환자에게 직접 물리적 위해가 발생하는가? → 발생하면 Class B 이상. 의사 진단 판단에 영향을 주는가? → 영향을 주면 Class C 검토.

- 기본 촬영제어·영상관리 기능: **Class B** (최소)
- AI·CAD 기능 포함 시: **Class C** (권고)
- Safety Class에 따라 요구 산출물이 증가함 (본 문서는 Class C 기준 작성)

---

## 1. 산출물 목록 (IEC 62304 조항 ↔ 문서 매핑)

| IEC 62304 절 | 산출물 문서 | Class A | Class B | Class C | 본 문서 섹션 |
|---|---|---|---|---|---|
| 5.1 | Software Development Plan (SDP) | ○ | ○ | ○ | §2 |
| 5.2 | Software Requirements Specification (SRS) | - | ○ | ○ | §3 |
| 5.3 | Software Architecture Document (SAD) | - | ○ | ○ | §4 |
| 5.4 | Software Design Specification (SDS) | - | - | ○ | §5 |
| 5.5 | Software Unit Verification Records | - | - | ○ | §6 |
| 5.6 | Software Integration Test Plan/Report | - | ○ | ○ | §7 |
| 5.7 | Software System Test Plan/Report (SVP/SVR) | - | ○ | ○ | §8 |
| 5.8 | Software Release Records | - | ○ | ○ | §9 |
| 6 | Software Maintenance Plan | - | ○ | ○ | §10 |
| 7 | Software Risk Management (→ ISO 14971) | - | ○ | ○ | §11 |
| 8 | Software Configuration Management Plan (SCMP) | - | ○ | ○ | §12 |
| 9 | Software Problem Resolution Process (SPRP) | - | ○ | ○ | §13 |

---

## 2. Software Development Plan (SDP)

**IEC 62304 §5.1** | **FDA Level of Concern**: Moderate/Major 필수 | **MDR Annex II §6.1** | **MFDS 소프트웨어 허가·심사 가이드라인**

### 2.1 SDP 필수 포함 항목

```
문서 제목: Software Development Plan
문서 번호: [회사코드]-SDP-[프로젝트코드]-[버전]
작성일:
개정 이력:

1. 목적 및 범위
   1.1 목적: 본 SDP는 [제품명] v[X.Y]의 소프트웨어 개발 전반의 계획을 기술한다.
   1.2 범위: [모듈 A, 모듈 B, ...] 포함. [제외 범위] 제외.
   1.3 참조 표준: IEC 62304:2006/AMD1:2015, ISO 14971:2019, IEC 62366-1:2015

2. Safety Class 결정
   2.1 Safety Class: [A / B / C]
   2.2 근거: [위험분석 결과 요약, 위해 시나리오]
   2.3 결정 일자: YYYY-MM-DD

3. 개발 수명주기 모델
   3.1 모델: [폭포수 / V-Model / 애자일(부분 적용)]
   3.2 주요 마일스톤:
       - SRS 완료: YYYY-MM-DD
       - SDS 완료: YYYY-MM-DD
       - 코드 동결: YYYY-MM-DD
       - 시스템 시험 완료: YYYY-MM-DD
       - 릴리즈: YYYY-MM-DD

4. 소프트웨어 항목(Software Items) 정의
   4.1 최상위 SW Item 목록: [목록 또는 참조: SAD §2]
   4.2 분해 수준: [Level 1 / 2 / 3]

5. 산출물 및 책임자
   | 산출물 | 담당자 | 검토자 | 승인자 | 목표일 |
   |---|---|---|---|---|
   | SRS | SW Lead | QA | PM | |
   | SAD | SW Architect | SW Lead | PM | |
   | SDS | 각 모듈 담당 | SW Lead | QA | |
   | Test Plan | QA Lead | SW Lead | PM | |

6. 형상관리 도구 및 전략
   6.1 도구: [Git + [호스팅 플랫폼]]
   6.2 브랜치 전략: [예: main / release / feature branches]
   6.3 태그 정책: v[Major.Minor.Patch] 릴리즈 태그 필수

7. 문제해결 절차
   7.1 버그 트래킹 도구: [Jira / GitHub Issues 등]
   7.2 우선순위 분류: [Critical / High / Medium / Low]
   7.3 Critical 결함 대응 시간: 24시간 이내 분석 착수

8. 위험관리 연계
   8.1 위험관리 계획 문서: [RMF-XXX]
   8.2 SW 위험항목 식별 방법: FMEA / FTA
   8.3 잔존 위험 재평가 시점: 릴리즈 전 최종 검토

9. SOUP(Software of Unknown Provenance) 관리
   9.1 SOUP 목록 문서: [SOUP-LIST-XXX]
   9.2 SOUP 평가 기준: 기능적 특성, 제조자 신뢰도, 유지보수 상태

10. 사이버보안 계획
    10.1 사이버보안 문서: [CSEC-PLAN-XXX]
    10.2 SBOM 도구: [SPDX / CycloneDX 도구명]
    10.3 취약점 모니터링 주기: [월 1회 이상]
```

### 2.2 3개 지역 SDP 요건 비교

| 항목 | MFDS | FDA | MDR |
|---|---|---|---|
| SDP 제출 여부 | 기술문서 내 포함 | eSTAR SW Section 필수 | Annex II §6.1 포함 |
| Safety Class 명시 | ○ (가이드라인 권고) | ○ (Level of Concern 연계) | ○ (62304 클래스) |
| SOUP 목록 | ○ | ○ | ○ |
| 사이버보안 계획 | ○ (2025.01 가이드라인) | ○ (Section 524B) | ○ (MDCG 2019-16) |

---

## 3. Software Requirements Specification (SRS)

**IEC 62304 §5.2** | FDA: Basic Documentation 이상 모든 등급 필수

### 3.1 SRS 필수 포함 항목

```
문서 제목: Software Requirements Specification
문서 번호: [회사코드]-SRS-[프로젝트코드]-[버전]
작성일:
개정 이력:

1. 목적 및 범위
   1.1 제품명: [촬영실 GUI SW 공식 제품명]
   1.2 SW 버전: [X.Y.Z]
   1.3 의도된 사용(Intended Use): [MFDS 사용목적 기재 방식 준용]
   1.4 사용자 프로파일: [방사선사 / 의사 / 의료기사 등, 교육 수준, IT 능숙도]
   1.5 사용 환경: [촬영실, 조도, 네트워크 환경, 운영체제]

2. 기능 요구사항 (Functional Requirements)
   2.1 촬영 제어
       FR-001: 시스템은 X-ray 조사 파라미터(kVp, mAs)를 사용자 입력에 따라 설정해야 한다.
       FR-002: 시스템은 촬영 완료 후 2초 이내에 영상을 디스플레이해야 한다.
       FR-003: [추가 요구사항...]
   2.2 영상 관리
       FR-010: 시스템은 DICOM 3.0 표준에 따라 영상을 저장·전송해야 한다.
       FR-011: [...]
   2.3 사용자 인터페이스
       FR-020: [...]
   2.4 AI/CAD 기능 (해당 시)
       FR-030: [...]

3. 성능 요구사항 (Performance Requirements)
   PR-001: 영상 처리 응답시간 ≤ 2초 (95th percentile, 해상도 4096×4096 기준)
   PR-002: 시스템 가용성(Availability) ≥ 99.5% (계획된 유지보수 제외)
   PR-003: 동시 접속 사용자: [N]명 이상 지원

4. 안전 요구사항 (Safety Requirements)
   SR-001: X-ray 조사 명령 실행 전 준비 확인 신호 없이 조사 불가 (하드웨어 인터락 연동)
   SR-002: 시스템 오류 발생 시 안전 상태로 자동 전환 (Fail-safe)
   SR-003: [위험분석(RMF)에서 도출된 SW 위험 제어 요구사항 목록]

5. 사이버보안 요구사항
   CSEC-001: 사용자 인증 - 최소 [8자리] 이상 패스워드 정책, 계정 잠금(5회 실패)
   CSEC-002: 전송 데이터 암호화 - TLS 1.2 이상
   CSEC-003: 감사 로그(Audit Log) - 사용자 동작, 시스템 이벤트, 보안 이벤트 기록
   CSEC-004: SBOM 유지 및 취약점 대응 절차

6. 인터페이스 요구사항
   IF-001: DICOM Worklist, Storage, Query/Retrieve, Print
   IF-002: HL7 v2.x 또는 FHIR (해당 시)
   IF-003: 하드웨어 인터페이스: [X-ray 발생기 / 검출기 제어 프로토콜]

7. 규제 요구사항
   REG-001: IEC 62304:2006/AMD1:2015 Safety Class [B/C] 준수
   REG-002: IEC 62366-1:2015 사용적합성 요구사항 충족
   REG-003: MFDS 의료기기 소프트웨어 허가·심사 가이드라인 준수
   REG-004: FDA eSTAR SW Section (Level of Concern: [Moderate/Major])
   REG-005: MDR Annex I GSPR §17 (사이버보안)

8. SOUP(Software of Unknown Provenance) 목록
   | 명칭 | 버전 | 제조자 | 기능 | Safety Class 기여 |
   |---|---|---|---|---|
   | [예: Qt Framework] | [6.x] | [Qt Group] | [UI 렌더링] | [B] |
   | [예: OpenSSL] | [3.x] | [OpenSSL Project] | [TLS 암호화] | [B] |
   | [...] | | | | |

9. 요구사항 추적성
   9.1 상위 문서: 의도된 사용 명세, 위험관리 계획(RMF)
   9.2 하위 연결: SDS 설계 명세 (§5), 시험 케이스(§8)
   9.3 추적 매트릭스: [RTM-XXX 문서 참조]
```

### 3.2 SRS 기재 원칙

- 각 요구사항은 **단일 목적, 검증 가능, 명확** 하게 기술 (모호한 표현 "적절한", "충분한" 금지)
- 요구사항 ID 체계 통일: `[카테고리]-[일련번호]` (예: FR-001, SR-002)
- 위험분석(ISO 14971)에서 도출된 위험 제어 조치는 SR(Safety Requirement)로 등록 필수

---

## 4. Software Architecture Document (SAD)

**IEC 62304 §5.3** | Class B·C 필수

### 4.1 SAD 필수 포함 항목

```
문서 제목: Software Architecture Document
문서 번호: [회사코드]-SAD-[프로젝트코드]-[버전]

1. 소프트웨어 항목(Software Items) 분해
   최상위 SW Item → Sub-Items → SW Units 계층 구조 정의
   
   [예시 - 촬영실 GUI SW]
   GUI_SW (최상위)
   ├── Acquisition Control Module (ACM)      [Class B]
   │   ├── Parameter Setting Unit             [Class B]
   │   ├── Trigger Control Unit              [Class B]
   │   └── Status Monitor Unit               [Class A]
   ├── Image Processing Module (IPM)         [Class B]
   │   ├── Image Rendering Unit              [Class B]
   │   └── Image Enhancement Unit            [Class A]
   ├── DICOM Interface Module (DIM)          [Class B]
   │   ├── Storage SCU Unit                  [Class B]
   │   └── Worklist SCU Unit                 [Class A]
   ├── Security Module (SEC)                 [Class B]
   │   ├── Authentication Unit               [Class B]
   │   └── Audit Log Unit                    [Class B]
   └── AI/CAD Module (해당 시) (AIM)         [Class C]
       ├── Detection Algorithm Unit           [Class C]
       └── Result Presentation Unit          [Class C]

2. 아키텍처 다이어그램
   2.1 컨텍스트 다이어그램: SW ↔ 외부 시스템 인터페이스 (X-ray HW, PACS, RIS, HIS)
   2.2 구성요소 다이어그램: SW Items 간 의존관계, 데이터 플로우
   2.3 배포 다이어그램: 운영체제, HW 플랫폼, 네트워크 경계

3. 인터페이스 명세
   3.1 SW Items 간 인터페이스 (API, 메시지, 데이터 구조)
   3.2 외부 하드웨어 인터페이스
   3.3 외부 SW 시스템 인터페이스

4. Safety Class별 추가 요건
   4.1 Class B 항목: SW Items 간 분리(Segregation) 전략, 오류 감지 메커니즘
   4.2 Class C 항목: (Class B 포함) 추가 방어 코딩 기법, 형식 검토

5. SOUP 통합 아키텍처
   5.1 SOUP 배치 위치 (어느 SW Item에 포함되는지)
   5.2 SOUP 경계 및 인터페이스
   5.3 SOUP 실패 시 영향 분석
```

---

## 5. Software Design Specification (SDS)

**IEC 62304 §5.4** | Class C 필수 (Class B는 권고)

### 5.1 SDS 필수 포함 항목

```
문서 제목: Software Design Specification — [모듈명]
문서 번호: [회사코드]-SDS-[모듈코드]-[버전]

(SW Item별 또는 모듈별 별도 작성 권장)

1. 목적 및 범위
   1.1 대상 SW Item: [모듈명, SAD §2에서 정의된 항목]
   1.2 Safety Class: [A/B/C]

2. 상세 설계
   2.1 알고리즘 및 처리 흐름
       - 의사코드(Pseudocode) 또는 순서도로 기술
       - 조건 분기, 오류 처리 경로 포함
   2.2 데이터 구조
       - 입출력 데이터 타입, 범위, 유효성 검사 기준
   2.3 SW Units 설계
       - 각 Unit의 함수/클래스 수준 명세 (Class C 필수)
       - 함수명, 입력 파라미터, 반환값, 전제조건, 사후조건

3. 요구사항 추적성
   | SRS 요구사항 ID | 설계 항목 | 구현 파일/함수 |
   |---|---|---|
   | FR-001 | ACM::setParameters() | acm_control.cpp §3.2.1 |
   | SR-001 | ACM::checkInterlock() | acm_control.cpp §3.2.5 |

4. 오류 처리 전략
   4.1 감지 가능한 오류 목록
   4.2 각 오류에 대한 처리 방법 (로그, 알림, Fail-safe 동작)

5. 사이버보안 설계
   5.1 입력 유효성 검사 (Injection 방지)
   5.2 메모리 안전 코딩 (Buffer overflow 방지)
   5.3 암호화 구현 세부사항
```

---

## 6. Software Unit Verification Records

**IEC 62304 §5.5** | Class C 필수

### 6.1 단위 시험(Unit Test) 기록 양식

```
문서 제목: Software Unit Verification Records — [Unit명]
문서 번호: [회사코드]-SUVR-[Unit코드]-[버전]

1. 대상 Unit 정보
   1.1 Unit명: [함수/클래스명]
   1.2 Safety Class: [C]
   1.3 SDS 참조: [SDS 문서번호 §X.X]

2. 단위 시험 항목
   | TC ID | 시험 항목 | 입력 | 기대 출력 | Pass/Fail | 비고 |
   |---|---|---|---|---|---|
   | UT-001 | 정상 파라미터 설정 | kVp=80, mAs=5 | ACK 반환 | | |
   | UT-002 | 범위 초과 파라미터 | kVp=200 | Error 반환, 로그 기록 | | |
   | UT-003 | 인터락 미감지 시 조사 불가 | Interlock=OFF | 조사 명령 차단 | | |

3. 코드 커버리지
   3.1 구문 커버리지(Statement Coverage): [목표 ≥ 100% for Class C]
   3.2 분기 커버리지(Branch Coverage): [목표 ≥ 100% for Class C]
   3.3 측정 도구: [gcov / JaCoCo 등]

4. 검토 기록
   - 리뷰어:
   - 리뷰 일자:
   - 결함 발견 수:
   - 결함 해결 확인:
```

### 6.2 정적 분석(Static Analysis) 기록

```
도구: [SonarQube / Klocwork / PC-lint 등]
분석 일자:
Critical/Major 결함: [0건 목표]
허용된 예외(Suppression): [이유 문서화 필수]
```

---

## 7. Software Integration Test Plan/Report

**IEC 62304 §5.6** | Class B·C 필수

```
문서 제목: Software Integration Test Plan & Report
문서 번호: [회사코드]-SITP-[프로젝트코드]-[버전]

1. 통합 전략
   1.1 통합 방식: [하향식(Top-down) / 상향식(Bottom-up) / 점진적(Incremental)]
   1.2 통합 순서: [ACM → IPM → DIM → SEC → AIM 순]

2. 통합 시험 항목
   | TC ID | 대상 인터페이스 | 시험 설명 | 기대 결과 | 결과 |
   |---|---|---|---|---|
   | IT-001 | ACM ↔ X-ray HW | 파라미터 전송 확인 | HW 정상 수신 ACK | |
   | IT-002 | IPM ↔ DIM | 영상 DICOM 변환·전송 | PACS 수신 확인 | |
   | IT-003 | SEC ↔ ALL | 인증 실패 시 기능 차단 | 차단 + 로그 기록 | |

3. 결함 처리
   발견된 결함은 SPRP(§13) 절차에 따라 추적 관리.
```

---

## 8. Software Verification Plan (SVP) / Software Verification Report (SVR)

**IEC 62304 §5.7** | Class B·C 필수 | FDA eSTAR SW Section 핵심 제출 항목

### 8.1 Software Verification Plan (SVP) 템플릿

```
문서 제목: Software Verification Plan
문서 번호: [회사코드]-SVP-[프로젝트코드]-[버전]
버전: [X.Y]

1. 목적 및 범위
   1.1 본 SVP는 [제품명] v[X.Y] SW의 모든 SRS 요구사항 검증 계획을 기술한다.
   1.2 검증 대상: [전체 SW / 변경된 SW Items]

2. 검증 방법 정의
   | 방법 | 적용 대상 | 판정 기준 |
   |---|---|---|
   | 코드 리뷰 | 모든 SW Unit (Class C) | 결함 Zero (Critical) |
   | 단위 시험 | 모든 SW Unit (Class C) | 커버리지 ≥ 100% |
   | 통합 시험 | SW Item 간 인터페이스 | 모든 TC Pass |
   | 시스템 시험 | SRS 요구사항 전항 | Pass Rate 100% |
   | 정적 분석 | 전체 소스코드 | Critical 결함 Zero |

3. 시험 환경
   3.1 HW 환경: [테스트 장비 사양]
   3.2 SW 환경: [OS 버전, 의존 라이브러리]
   3.3 시험 데이터: [익명화된 실제 데이터 / 합성 데이터]

4. 시험 케이스 계획 (주요 SRS 요구사항 → 시험 케이스 매핑)
   | SRS ID | 시험 유형 | TC ID | 담당자 | 목표일 |
   |---|---|---|---|---|
   | FR-001 | 기능 시험 | SYS-001 | | |
   | SR-001 | 안전 시험 | SYS-010 | | |
   | CSEC-001 | 보안 시험 | SEC-001 | | |
   | PR-001 | 성능 시험 | PERF-001 | | |

5. 합격 기준
   - SRS 모든 요구사항: 1:1 시험 케이스 매핑 및 Pass
   - 미해결 Critical 결함: 0건
   - 잔존 결함: 위험 수용 가능 수준으로 분류 및 근거 문서화
```

### 8.2 Software Verification Report (SVR) 요약 양식

```
문서 제목: Software Verification Report
문서 번호: [회사코드]-SVR-[프로젝트코드]-[버전]
시험 완료일:

1. 실행 요약
   - 총 시험 케이스: [N]건
   - Pass: [N]건 / Fail: [N]건 / N/A: [N]건
   - Pass Rate: [XX]%
   - Critical 미해결 결함: [0건]

2. 결함 요약
   | 결함 ID | 심각도 | 내용 요약 | 상태 | 해결일 |
   |---|---|---|---|---|

3. 잔존 결함 수용 근거
   [없음 / 또는 위험 평가 참조: RMF §X.X]

4. 검증 완료 선언
   담당자: _______________ 서명: _______________ 일자: _______________
   QA 승인: _______________ 서명: _______________ 일자: _______________
```

### 8.3 3개 지역 시험 요건 비교

| 항목 | MFDS | FDA | MDR |
|---|---|---|---|
| SVP 제출 필요 | ○ (기술문서 내) | ○ (eSTAR SW Section) | ○ (Annex II §6) |
| 시험 케이스 목록 제출 | ○ | ○ | ○ |
| Pass Rate 기준 | 100% (Critical 요구사항) | 100% (All requirements) | 100% |
| 잔존 결함 처리 | 위험평가 근거 필요 | 위험평가 근거 필요 | 위험평가 근거 필요 |
| 독립 검토(3rd party) | 일부 등급 권고 | Level Major 이상 권고 | Class IIb·III NB 확인 |

---

## 9. Software Release Records

**IEC 62304 §5.8** | 릴리즈 시 필수

```
문서 제목: Software Release Record
문서 번호: [회사코드]-SRR-[버전]-[날짜]

1. 릴리즈 정보
   1.1 제품명: [촬영실 GUI SW]
   1.2 버전: [X.Y.Z]
   1.3 릴리즈 일자: YYYY-MM-DD
   1.4 이전 릴리즈 버전: [X.Y.Z-1]

2. 포함 변경사항
   | 변경 ID | 유형 | 내용 요약 | 관련 Issue |
   |---|---|---|---|
   | CHG-001 | 신기능 | [내용] | [#XXX] |
   | CHG-002 | 버그수정 | [내용] | [#XXX] |

3. 검증 완료 확인
   - SVR 문서번호: [SRR 참조]
   - 모든 Critical 결함 해결: ○/✗
   - 위험관리 잔존위험 재검토: ○/✗

4. 릴리즈 산출물
   - 실행 파일 체크섬(SHA-256): [hash값]
   - SBOM 파일: [파일명 및 버전]
   - 사용자 설명서(IFU) 버전: [X.Y]

5. 승인
   - SW Lead: _____________ 일자: _____
   - QA: _____________ 일자: _____
   - RA: _____________ 일자: _____
```

---

## 10. Software Maintenance Plan

**IEC 62304 §6** | Class B·C 필수

```
문서 제목: Software Maintenance Plan
문서 번호: [회사코드]-SMP-[프로젝트코드]-[버전]

1. 유지보수 유형 정의
   | 유형 | 정의 | 예시 |
   |---|---|---|
   | 수정적(Corrective) | 결함 수정 | 버그 패치 |
   | 적응적(Adaptive) | 환경 변화 대응 | OS 업그레이드 |
   | 완전적(Perfective) | 기능 개선·추가 | 신기능 추가 |
   | 예방적(Preventive) | 잠재 문제 선제 해결 | 취약점 패치 |

2. 변경 분류 기준
   2.1 경미한 변경(Minor Change): UI 문자 수정, 설정값 기본값 변경
       → 내부 검토 + 기록 보관, 재제출 불필요 (지역별 확인 필요)
   2.2 중대한 변경(Major Change): Safety-critical 기능 변경, 새 SOUP 추가
       → 변경 영향 평가 + 재검증 + 지역별 변경 보고

3. 3개 지역 변경 보고 기준
   | 구분 | MFDS | FDA | MDR |
   |---|---|---|---|
   | 경미한 변경 | 정기 보고 (변경이력 보관) | 연간 보고 (MDR: 없음) | 자체 기록 |
   | 중대한 변경 | 변경허가 신청 | 510(k) 신규 또는 LTE | NB 변경 통보 |
   | AI 모델 변경 | CMP 활용 가능 | PCCP 활용 가능 | NB 협의 |

4. 사이버보안 패치 절차
   4.1 취약점 발견 → PSIRT(내부 팀) 평가 (24h 이내)
   4.2 CVSS 점수 ≥ 7.0 (High/Critical) → 긴급 패치 릴리즈 (30일 이내)
   4.3 패치 배포 → 고객 통지 → SBOM 갱신
   4.4 FDA: Critical 취약점 → MDR 21 CFR 803 해당성 검토
   4.5 MDR: Serious Incident 해당 시 Vigilance 보고
```

---

## 11. Software Risk Management

**IEC 62304 §7** | ISO 14971:2019 연계 필수

### 11.1 SW-특화 위험 항목 예시

| SW 위험 항목 | 발생 원인 | 위해 결과 | 위험 제어 방법 | IEC 62304 연계 |
|---|---|---|---|---|
| 잘못된 촬영 파라미터 적용 | UI 입력 오류, 데이터 변환 오류 | 환자 과선량 | FR→SR 요구사항 강화, 인터락 | SR-001, UT-003 |
| 영상 손실/오염 | 스토리지 오류, 전송 오류 | 재촬영 또는 오진 | DICOM 전송 확인, 체크섬 검증 | FR-010 |
| 사이버공격으로 인한 기능 이상 | 네트워크 취약점 | 진단 오류, 서비스 중단 | SBOM, TLS, 침투시험 | CSEC-001~004 |
| AI 알고리즘 오탐 | 모델 성능 저하 | 오진 | 신뢰도 점수 표시, 의사 최종 결정 원칙 | FR-030 |
| SOUP 결함 전파 | 외부 라이브러리 버그 | 기능 이상 | SOUP 검증 + 격리 설계 | SOUP 목록 |

### 11.2 위험 수용 기준 (ISO 14971 Annex ZA 참조)

- ALARP 원칙 적용
- 잔존 위험은 SVR 최종 검토 시 재확인
- 임상 이익이 잔존 위험보다 큰 경우 수용 (근거 문서화 필수)

---

## 12. Software Configuration Management Plan (SCMP)

**IEC 62304 §8** | Class B·C 필수

```
문서 제목: Software Configuration Management Plan
문서 번호: [회사코드]-SCMP-[프로젝트코드]-[버전]

1. 형상 항목(Configuration Items) 목록
   | CI 유형 | 예시 항목 | 버전관리 도구 |
   |---|---|---|
   | SW 소스코드 | 전체 repository | Git |
   | 빌드 스크립트 | Makefile, CMakeLists.txt | Git |
   | 설계 문서 | SRS, SDS, SAD | Git + 문서관리시스템 |
   | 시험 케이스 | Test scripts | Git |
   | SBOM | spdx.json / cyclonedx.json | Git |
   | 제3자 라이브러리 | SOUP 목록 | 패키지 매니저 lock file |

2. 버전 관리 정책
   2.1 버전 체계: Semantic Versioning (MAJOR.MINOR.PATCH)
   2.2 릴리즈 태그: v[X.Y.Z] – 반드시 태그 후 릴리즈
   2.3 변경 이력: CHANGELOG.md 유지

3. 기준선(Baseline) 관리
   | Baseline | 시점 | 승인 조건 |
   |---|---|---|
   | SRS Baseline | SRS 리뷰 완료 | QA 서명 |
   | Design Baseline | SDS 완료 | SW Lead 서명 |
   | Test Baseline | SVP 완료 | QA 서명 |
   | Release Baseline | SVR 완료 | RA 서명 |
```

---

## 13. Software Problem Resolution Process (SPRP)

**IEC 62304 §9** | Class B·C 필수

```
문서 제목: Software Problem Resolution Process
문서 번호: [회사코드]-SPRP-[프로젝트코드]-[버전]

1. 문제 입력 채널
   - 내부 시험(단위/통합/시스템): 자동 Issue 등록
   - 현장 피드백: 고객 지원 → CAPA 연계
   - 사이버보안 취약점: PSIRT 채널

2. 우선순위 분류
   | 심각도 | 정의 | 대응 시한 |
   |---|---|---|
   | Critical | 환자 안전 위해 또는 서비스 중단 | 24시간 이내 착수, 30일 이내 해결 |
   | Major | 주요 기능 이상, 데이터 손실 | 5 영업일 이내 착수 |
   | Minor | 경미한 기능 오류, UI 이슈 | 다음 릴리즈 사이클 내 |
   | Enhancement | 기능 개선 요청 | 로드맵 검토 |

3. 문제 해결 흐름
   발견 → 등록 → 재현 확인 → 근본 원인 분석(RCA) → 수정 → 검증 → 종결

4. 릴리즈 이전 미해결 Critical 결함
   → 릴리즈 차단. RA 책임자 승인 없이 릴리즈 불가.
```

---

## 14. 3개 지역 × 3개 제품 영향 매트릭스

| 규제 요건 | MFDS | FDA | MDR | X-ray Detector | Handheld Source | 촬영실 GUI SW |
|---|---|---|---|---|---|---|
| IEC 62304 SW 수명주기 | ○ 적용 | ○ 적용 | ○ 적용 | **내장 SW**: Class B/C | **내장 펌웨어**: Class B | **독립 SW**: Class B~C ★주요 대상 |
| SDP 제출 | ○ | ○ | ○ | 제어 펌웨어 | 노출 제어 SW | GUI 전체 |
| SRS 제출 | ○ | ○ | ○ | 검출기 구동 요구사항 | 방사선 제어 요구사항 | UI·DICOM·AI 요구사항 |
| SAD/SDS | ○ | ○ | ○ | 신호처리 아키텍처 | 방사선 제어 아키텍처 | GUI 모듈 아키텍처 |
| SVP/SVR | ○ | ○ | ○ | DQE 시험 연계 | 방사선 출력 시험 연계 | 기능·안전·보안 시험 |
| SOUP 관리 | ○ | ○ | ○ | FPGA IP core 등 | 저수준 임베디드 라이브러리 | Qt, OpenSSL, DICOM 라이브러리 등 |
| SBOM 법적 의무 | 사이버보안 가이드라인 | Section 524B (네트워크 연결 시) ★ | MDCG 2019-16 | 해당 가능 | 해당 가능 | **가장 높은 적용 가능성** |
| AI 기능 추가 규제 | 디지털의료제품법 CMP | PCCP Final Guidance 2024-12-03 | MDCG 2019-11 Rev.1 (2025-06) | 해당 시 | 해당 시 | **AI CAD 포함 시 핵심 대상** |

> ★ FDA Cyber Device 해당 시 SBOM 의무화 (eSTAR 제출 필수). GUI SW가 네트워크에 연결되는 경우 Cyber Device 해당 가능성 높음.

---

## 15. 주요 소스 참조

| 문서 | 발행처 | 최신 버전/일자 |
|---|---|---|
| IEC 62304:2006/AMD1:2015 | IEC | 현행 (개정판 IEC 62304 Ed.2 개발 중 [검증 필요]) |
| FDA 의료기기 소프트웨어 가이던스 | FDA | eSTAR SW Section — 최신 eSTAR 지침 참조 |
| FDA 사이버보안 Final Guidance | FDA | 2025-06-27 (2023-09-27 Final 개정) |
| MDCG 2019-11 Rev.1 | EC/MDCG | 2025-06 개정 (SW 자격·분류 기준 갱신) |
| MFDS 의료기기 소프트웨어 허가·심사 가이드라인 | MFDS | 최신판 (mfds.go.kr 확인) |
| MFDS 디지털의료기기 6종 가이드라인 | MFDS | 2025-05-07 |
| ISO 14971:2019 | ISO | 2019 (현행) |
| IEC 62366-1:2015/AMD1:2020 | IEC | 현행 |
