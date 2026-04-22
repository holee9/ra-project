# FDA 인허가 상세 가이드 (X-ray System 전용)

> 웹 리서치 교차검증 반영 – 2026-04-22 기준

## 1. 핵심 규제 프레임워크

### 1.1 법·규정 계층
- FD&C Act (Federal Food, Drug, and Cosmetic Act)
  - **Section 524B** (2022 Omnibus Act 추가): Cyber Device 사이버보안·SBOM 의무
- 21 CFR Parts:
  - **Part 807**: Establishment Registration / 510(k)
  - **Part 812**: IDE (Investigational Device Exemption)
  - **Part 820 → QMSR (2026-02-02 시행)**
  - **Part 830**: UDI
  - **Part 892**: Radiology Devices (X-ray 분류 조항)
  - **Part 1020 (1020.30~1020.33)**: 진단용 X-ray 성능표준 (Radiation Control)

### 1.2 심사 기관
- **CDRH** (Center for Devices and Radiological Health)
- **OHT7 (Office of In Vitro Diagnostics and Radiological Health)**: X-ray 관할

## 2. 제출 경로

| 경로 | 대상 | 목표 기간 | 수수료 (2026 예상) |
|---|---|---|---|
| 510(k) | Class II 대부분 | FDA Review Clock 90일 (+ 질의 대응) | 약 $22K 표준 / 중소기업 감면 |
| De Novo | Low/Moderate risk 신규 | 약 150일 | 약 $158K 표준 |
| PMA | Class III | 약 180일 이상 | 약 $486K 표준 |
| Q-Sub (Pre-Sub) | 사전협의 (무료) | 70~75일 | 무료 |

## 3. 510(k) 제출 절차 (자사 제품 대상)

### 3.1 사전 준비
1. **Product Classification Database 조회**
   - Detector: MQB
   - Source: IZL (Mobile) / EAF (Stationary) / 기타
   - SW: LLZ / QIH / QDQ 등
2. **Predicate Device 선정**
   - 510(k) Database (accessdata.fda.gov/scripts/cdrh/cfdocs/cfpmn/pmn.cfm)
   - 동일 Product Code 내 유사 Intended Use·기술 특성
3. **Substantial Equivalence 비교표 작성**

### 3.2 eSTAR 제출 (의무)
- 2023-10-01~ 모든 510(k) eSTAR 제출 의무
- 내장 양식: Truth & Accuracy / Form 3514 / 510(k) Summary / DoC / IFU Form 3881
- RTA (Refuse to Accept) 심사 불필요

### 3.3 주요 섹션 (eSTAR 기반)
1. Device Description / Intended Use / Indications for Use
2. Classification
3. Substantial Equivalence
4. Performance Testing (Bench, Animal, Clinical 해당 시)
5. **Biocompatibility** (환자 접촉 시)
6. **Software** (IEC 62304 기반 문서)
7. **Cybersecurity** (2023-09 Final Guidance 준수)
8. **Sterilization** (해당 시)
9. Electrical Safety / EMC (IEC 60601-1 / -1-2)
10. **Radiation Safety** (X-ray 필수: IEC 60601-1-3, 21 CFR 1020.30~33)
11. Labeling (IFU)
12. Risk Analysis (ISO 14971)
13. Quality System Information

### 3.4 심사·질의 단계
- Day 1~15: Acceptance Review (eSTAR는 자동)
- Day 60: Substantive Review (SIR)
- Day 100까지 AI (Additional Information) 가능
- AI 응답 기한: 180일 (기한 미준수 시 Withdrawal)

## 4. 21 CFR 1020 (Radiation Performance Standards)

### 4.1 적용 대상
- 진단용 X-ray 시스템 및 주요 구성품
- 자사 제품 중 Handheld X-ray Source 및 시스템 전체 해당

### 4.2 주요 요구 (1020.30 기준)
- Diagnostic Source Assembly 인증
- Control / Timer 성능
- 조사야 크기 제한 · 정확도
- 관전압·관전류·mAs 정확도
- 누설선량 제한
- 경고 표시·인터록

### 4.3 보고 서식
| Form | 용도 | 비고 |
|---|---|---|
| **FDA 2877** | 전자제품 수입 Initial Report (수입 시) | |
| **FDA 2579** | 조립자 Report of Assembly | **2023-01-20 개정 (88 FR 3638)**으로 인증 부속품 제출 의무 **일부 완화** |
| Initial Product Report | 신규 제조업체 최초 보고 | |
| Annual Report | 연차 보고 | |

## 5. QMSR (2026-02-02 시행)

### 5.1 주요 변화
- 21 CFR 820 전면 개정 → **ISO 13485:2016 incorporation by reference**
- **QSIT 검사기법 폐기** → 새 프로그램 **7382.850** 적용
- FDA는 ISO 13485 인증서를 발급하지 않음
- ISO 13485 인증 보유해도 FDA 검사 면제 아님

### 5.2 대응 포인트
- 기존 QSR 기반 QMS 문서를 ISO 13485 구조(섹션 4~8)에 정합
- Terminology 정비 (예: "quality plan" 용어 수용)
- Design Controls는 ISO 13485 7.3 (Design and Development)로 통합
- CAPA 구조 유지되나 ISO 13485 용어와 조화

## 6. Cybersecurity (2023-09 Final Guidance)

### 6.1 법적 근거
- **FD&C Act Section 524B** (Omnibus 2022 추가)
- "Cyber Device" 정의: (1) SW 포함, (2) 네트워크 연결 가능, (3) 사이버보안 취약점 가능

### 6.2 제출 필수 섹션
1. **Threat Model** (전체 threat modeling exercise 수행 증거)
2. **Cybersecurity Risk Assessment**
3. **SBOM (Software Bill of Materials)** – **법적 의무**
   - 자체 개발 컴포넌트
   - 3자 구매·라이선스 SW
   - 오픈소스 SW
4. Component Support Information
5. Vulnerability Assessments
6. Unresolved Anomaly Assessments
7. Security Controls / Architecture View
8. Interoperability
9. Update & Patch Management
10. Cybersecurity Testing

### 6.3 참조 표준
- IEC 81001-5-1:2021
- AAMI TIR57:2016
- NIST Cybersecurity Framework

## 7. AI/ML 기기 – PCCP (2024-12-03 Final)

### 7.1 적용 대상
- 모든 **AI-enabled device** (ML 한정 아님)

### 7.2 PCCP 구성 (3요소)
1. **Description of Modifications**: 예정된 구체적 수정사항
2. **Modification Protocol**: 개발·검증·구현 방법
3. **Impact Assessment**: 안전성·유효성 영향 평가

### 7.3 추가 요구
- Bias mitigation 정보
- Reference standard 결정 방법
- Unresolvable failure 정보
- Post-market surveillance 전략
- **Labeling**: "authorized PCCP" 보유 명시

## 8. UDI (Unique Device Identifier)
- DI (Device Identifier) + PI (Production Identifier)
- GUDID 등록 필수
- Class II는 해당 마감 이미 경과, 기본 준수 체제

## 9. Post-Market 의무
- MDR (Medical Device Reporting): 21 CFR 803
  - Death/Serious Injury/Malfunction 보고
  - 30일 / 5일 보고 기한 (사안별)
- Correction & Removal (21 CFR 806)
- Annual Report (PMA·특정 기기)

## 10. 주요 공식 소스
- FDA CDRH: https://www.fda.gov/medical-devices
- 510(k) Database: https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfpmn/pmn.cfm
- Product Classification: https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfPCD/classification.cfm
- Recognized Consensus Standards: https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfStandards/search.cfm
- Guidance Portal: https://www.fda.gov/regulatory-information/search-fda-guidance-documents
