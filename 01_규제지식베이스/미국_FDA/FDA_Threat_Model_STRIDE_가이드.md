> 최종 갱신: 2026-05-13 (자동보강 #42)
> 근거: https://www.fda.gov/media/173984/download | https://health.ec.europa.eu/system/files/2022-01/md_cybersecurity_en.pdf | https://www.mfds.go.kr/brd/m_218/view.do?seq=33652

# FDA Threat Model 작성 가이드 — STRIDE 기반 샘플 포함

---

## 1. 규제 근거

### 1.1 FDA — Section 524B (FD&C Act)

| 항목 | 내용 |
|---|---|
| 법령 | 21st Century Cures Act 개정, 2022 Consolidated Appropriations Act 삽입 |
| 발효 | 2023-03-29 |
| 적용 대상 | "Cyber Device" — ① SW 포함 또는 SW가 기기 기능에 validated, ② 인터넷·네트워크 연결 가능, ③ 사이버 위협 노출 가능 |
| 근거 가이던스 | "Cybersecurity in Medical Devices: Quality System Considerations and Content of Premarket Submissions" (Final, **2023-09-27**) |
| Threat Model 의무 | Premarket 제출 시 Threat Model 수행 증빙 필수. 특정 프레임워크 강요 없음 — **선택한 방법론을 문서로 정당화**해야 함 |

**핵심 원칙 (FDA 2023 Final Guidance):**
- Threat modeling은 설계 전 과정(concept ~ 양산)에 걸쳐 수행
- 단순 SW가 아닌 "전체 시스템"(HW + SW + 통신 인터페이스 + 사용 환경) 대상
- Threat Model 결과 → Cybersecurity Risk Assessment → 설계 완화 조치 → 잔여 위험 수용/거부

### 1.2 EU MDR — MDCG 2019-16 Rev.1

| 항목 | 내용 |
|---|---|
| 문서 | MDCG 2019-16 Rev.1 (2022-01 발행) |
| 연계 GSPR | Annex I §14 (IT 보안), §17 (전자 프로그래밍 시스템), §18 (능동 의료기기) |
| 요구 방식 | Security Risk Management File (ISO 14971 체계 통합), Threat Model 통합 증빙 |
| 권장 표준 | IEC 81001-5-1:2021 (Health SW 보안 수명주기) |

### 1.3 MFDS — 2025.01 개정 가이드라인

| 문서 | 내용 |
|---|---|
| 의료기기 사이버보안 원칙 및 실무 (N60) | Threat Model 포함 사전검토 요구 |
| 레거시 의료기기 사이버보안 (N70) | 출시 후 레거시 제품 대응 |
| SBOM 원칙 및 실무 (N73) | SW 구성요소 목록 관리 |
| 허가·심사 가이드라인 (2025.01 개정) | 제출 자료: Threat Model, Risk Analysis, SBOM, 검증결과, 업데이트 정책 |

---

## 2. Threat Modeling 방법론 비교

| 방법론 | 특성 | FDA 적합성 |
|---|---|---|
| **STRIDE** | 자산별 6가지 위협 범주 체계적 식별, DFD 기반 | ★★★ — FDA·MITRE·MDIC 권장 기준선 |
| **DREAD** | 위협 심각도 점수화 (5개 차원). STRIDE 보완 우선순위 도구 | ★★ — 단독 사용 부적합, STRIDE 보완용 |
| **PASTA** | 공격 시뮬레이션 중심, 비즈니스 임팩트 통합 | ★★ — 고위험 복잡 제품에 적용, 단독 가능하나 문서화 복잡 |

**권장 전략:** STRIDE 기준선 수행 → DREAD로 우선순위 점수화 → 고위험 시나리오는 PASTA 공격 시뮬레이션 보강

---

## 3. STRIDE 개요

| 위협 범주 | 영문 | 정의 | 위반 보안 속성 |
|---|---|---|---|
| **S** — Spoofing | Spoofing Identity | 합법적 사용자·기기·서버를 사칭 | Authentication |
| **T** — Tampering | Tampering with Data | 데이터·펌웨어·설정값 무단 변조 | Integrity |
| **R** — Repudiation | Repudiation | 행위 부인 — 로그 없거나 조작 가능 | Non-repudiation |
| **I** — Information Disclosure | Information Disclosure | 민감 데이터(PHI·자격증명·SW) 유출 | Confidentiality |
| **D** — Denial of Service | Denial of Service | 서비스·기기 기능 가용성 저해 | Availability |
| **E** — Elevation of Privilege | Elevation of Privilege | 권한 없는 접근 권한 획득 | Authorization |

---

## 4. Threat Model 수행 절차 (FDA 권장)

### 4.1 Step 1 — 시스템 정의 (System Characterization)

**산출물: System Description 문서**

1. **범위 정의**  
   - 포함: 기기 HW, 내장 SW/펌웨어, 모바일 앱, Cloud backend, 네트워크 인터페이스  
   - 제외: 병원 IT 인프라 (단, 인터페이스 경계는 포함)

2. **Data Flow Diagram (DFD) 작성**  
   - Level 0: 시스템 전체 black-box  
   - Level 1: 주요 컴포넌트 간 데이터 흐름  
   - 신뢰 경계(Trust Boundary) 명시 필수

3. **자산 목록 (Asset Inventory)**

   | 자산 유형 | 예시 |
   |---|---|
   | PHI / 환자 데이터 | DICOM 영상, 환자 ID, 진단 결과 |
   | 임상 기능 데이터 | 방사선 노출 설정값, 촬영 파라미터 |
   | SW / 펌웨어 | 실행 코드, 업데이트 패키지 |
   | 자격증명 | 사용자 계정, 인증서, API 키 |
   | 감사 로그 | 접근 이력, 오류 로그 |
   | 네트워크 통신 | DICOM, HL7, REST API, Bluetooth |

4. **진입점 (Entry Points) 목록**  
   - 물리적: USB 포트, SD 카드 슬롯, 서비스 포트  
   - 네트워크: DICOM network, Wi-Fi, Ethernet, Bluetooth, 원격 업데이트 채널

### 4.2 Step 2 — 위협 식별 (STRIDE 적용)

각 자산 × DFD 요소에 STRIDE 6범주 체계적 적용. MITRE ATT&CK for Medical Devices 참조 권장.

### 4.3 Step 3 — 위협 평가 (DREAD 점수화)

| 차원 | D — Damage | R — Reproducibility | E — Exploitability | A — Affected Users | D — Discoverability |
|---|---|---|---|---|---|
| 점수 | 0~10 | 0~10 | 0~10 | 0~10 | 0~10 |

- DREAD 합산 / 5 = 위협 점수 (0~10)
- ≥ 7: High — 즉시 설계 완화 필요  
- 4~6: Medium — 완화 또는 수용 근거 문서화  
- < 4: Low — 모니터링

**의료기기 추가 차원 (권장):**  
- **Patient Safety Impact**: 위협 실현 시 환자 위해 가능성 (0~10)  
- ISO 14971 잔여 위험 평가와 연계

### 4.4 Step 4 — 완화 조치 (Mitigation)

| 위협 범주 | 대표 완화 조치 |
|---|---|
| Spoofing | MFA, 인증서 기반 상호인증 (TLS Mutual Auth), 기기 ID 검증 |
| Tampering | 코드 서명(Code Signing), 무결성 검증(Hash), 보안 부팅(Secure Boot) |
| Repudiation | 변조 방지 감사 로그, 타임스탬프 서명 |
| Info. Disclosure | 저장 암호화(AES-256), 전송 암호화(TLS 1.2+), PHI 최소화 |
| DoS | Rate limiting, Watchdog, 네트워크 트래픽 필터링, Fail-safe 동작 |
| Elevation of Privilege | RBAC(역할 기반 접근), 최소 권한 원칙, 권한 검증 로직 |

### 4.5 Step 5 — 잔여 위험 문서화

완화 후 잔여 위험 → ISO 14971 §8 "잔여 위험 평가" 연계  
→ 허용 불가 잔여 위험: 추가 설계 변경 또는 사용 제한(IFU 경고) 처리

---

## 5. 자사 3개 제품 Cyber Device 판정 및 STRIDE 적용 우선순위

### 5.1 Cyber Device 해당 여부

| 제품 | SW 포함 | 네트워크 연결 | Cyber Device 판정 | 비고 |
|---|---|---|---|---|
| **X-ray Detector** | 펌웨어 포함 가능성 | DICOM 네트워크 연결 시 ○ | **조건부 ○** | 독립 동작 시 판정 재검토 필요 |
| **Handheld X-ray Source** | 제어 SW / 무선 통신 모듈 | Bluetooth / Wi-Fi 탑재 시 ○ | **조건부 ○** | 무선 기능 유무 확인 필수 |
| **촬영실 GUI SW** | SW 자체가 제품 | PACS/RIS/HIS 네트워크 필수 | **명확 ○** | 최우선 Threat Model 대상 |

> **판정 원칙**: Section 524B (c) — SW를 "validate, install, or authorize" + 인터넷/네트워크 연결 능력. 두 조건 모두 해당 시 cyber device.

### 5.2 제품별 핵심 자산 및 위협 우선순위

#### 촬영실 GUI SW (최우선)

| 자산 | 위협 (STRIDE) | DREAD 예상 | 완화 방향 |
|---|---|---|---|
| 환자 DICOM 영상 | I (Info. Disclosure), T (Tampering) | 8, 9 | 저장/전송 암호화, 무결성 해시 |
| 방사선 노출 파라미터 | T (Tampering) | 9 | 쓰기 권한 분리, 변경 감사 로그 |
| 사용자 인증 세션 | S (Spoofing), E (Elevation) | 8, 8 | MFA, 세션 타임아웃, RBAC |
| PACS/RIS 연결 | S (Spoofing), D (DoS) | 7, 7 | TLS Mutual Auth, 연결 제한 |
| 소프트웨어 업데이트 | T (Tampering) | 9 | 코드 서명, 무결성 검증 |
| 감사 로그 | R (Repudiation) | 6 | 변조 방지 로그(Append-only) |

#### X-ray Detector (Cyber Device 판정 시)

| 자산 | 위협 (STRIDE) | DREAD 예상 | 완화 방향 |
|---|---|---|---|
| Detector 보정 데이터 | T (Tampering) | 8 | 보정값 서명, 변경 이력 |
| 펌웨어 | T (Tampering) | 9 | Secure Boot, 코드 서명 |
| DICOM 전송 | I (Info. Disclosure) | 7 | TLS 1.2+ |
| 원격 진단 포트 | E (Elevation), S (Spoofing) | 7, 7 | 서비스 모드 인증 강화 |

#### Handheld X-ray Source (무선 탑재 시)

| 자산 | 위협 (STRIDE) | DREAD 예상 | 완화 방향 |
|---|---|---|---|
| 방사선 조사 트리거 | T (Tampering), S (Spoofing) | 10, 10 | 상호인증 필수, 물리 인터락 유지 |
| kVp / mAs 설정값 | T (Tampering) | 10 | 범위 검증, 서명된 설정 |
| Bluetooth 통신 | S (Spoofing), D (DoS) | 8, 7 | BLE 페어링 인증, Secure Simple Pairing |
| 배터리/전원 상태 | D (DoS) | 6 | Fail-safe: 통신 두절 시 안전 상태 유지 |

> **Patient Safety 최우선**: Handheld Source의 조사 트리거·선량 파라미터 위협은 직접 환자 위해로 이어짐 → DREAD 점수와 무관하게 무조건 설계 완화 필수.

---

## 6. FDA eSTAR 제출 시 Threat Model 섹션 구성

FDA 510(k) eSTAR Cybersecurity Section에 포함해야 할 Threat Model 산출물:

```
[Threat Model 제출 패키지]
1. Threat Model Report
   - 1.1 System Description (DFD Level 0/1)
   - 1.2 Asset Inventory
   - 1.3 Entry Point List
   - 1.4 STRIDE Analysis Table (자산 × 위협)
   - 1.5 DREAD/위협 점수 매트릭스
   - 1.6 Mitigation Mapping Table
   - 1.7 Residual Risk Summary
   - 1.8 Methodology Justification (STRIDE 선택 근거)

2. Cybersecurity Risk Assessment (ISO 14971 / AAMI TIR57 연계)
3. SBOM (SPDX or CycloneDX 형식)
4. Vulnerability Management Plan
5. Cybersecurity Management Plan (업데이트·패치 정책)
```

---

## 7. STRIDE 분석 테이블 샘플 (촬영실 GUI SW)

아래는 실제 eSTAR 제출에 활용 가능한 최소 샘플.

| ID | 자산/데이터 흐름 | 위협 범주 (STRIDE) | 위협 시나리오 | 심각도 | 완화 조치 | 완화 후 잔여 위험 | 상태 |
|---|---|---|---|---|---|---|---|
| TM-001 | 환자 DICOM 영상 (GUI→PACS) | I — Information Disclosure | PACS 전송 중 네트워크 스니핑으로 PHI 유출 | High (8) | TLS 1.2+ 적용, DICOM TLS 활성화 | Low (2) | 완화 완료 |
| TM-002 | 방사선 노출 파라미터 | T — Tampering | 권한 없는 사용자가 kVp/mAs 설정 변조 | Critical (9) | RBAC — 방사선사 권한만 변경 가능, 감사 로그, 범위 검증 | Low (2) | 완화 완료 |
| TM-003 | 사용자 로그인 세션 | S — Spoofing | 세션 토큰 탈취 후 타인 계정 사칭 | High (8) | 세션 타임아웃 15분, HTTPS-only, Secure/HttpOnly 쿠키 | Low (2) | 완화 완료 |
| TM-004 | SW 업데이트 채널 | T — Tampering | 악성 업데이트 패키지 삽입 | Critical (9) | 코드 서명(RSA-2048+), 업데이트 서버 TLS Pinning, 무결성 해시 검증 | Low (2) | 완화 완료 |
| TM-005 | PACS 연결 인터페이스 | D — Denial of Service | 과도한 DICOM 요청으로 GUI SW 응답 불능 | High (7) | 연결당 Rate Limit, 연결 풀 상한, Watchdog 자동 재시작 | Medium (4) | 수용 — IFU 경고 기재 |
| TM-006 | 관리자 기능 | E — Elevation of Privilege | 일반 사용자 계정으로 관리자 메뉴 접근 | High (8) | 서버 측 RBAC 검증, Client-side 검증 미신뢰 | Low (2) | 완화 완료 |
| TM-007 | 감사 로그 | R — Repudiation | 사용자가 촬영 기록 삭제·조작하여 행위 부인 | Medium (6) | Append-only 로그, 로그 서버 분리 저장, 무결성 해시 | Low (2) | 완화 완료 |

---

## 8. 3개 지역 요구사항 비교 매트릭스

| 요구 사항 | FDA (2023 Final) | EU MDR (MDCG 2019-16 Rev.1) | MFDS (2025.01) |
|---|---|---|---|
| Threat Model 의무 | ○ (법적 의무, 524B) | ○ (GSPR §14/17/18 간접 요구) | ○ (가이드라인 요구) |
| 방법론 지정 | 없음 (STRIDE 권장) | 없음 (STRIDE/PASTA 예시) | 없음 (국제 표준 준용) |
| DFD 요구 | ○ 명시 | ○ 권장 | ○ 권장 |
| 자산 목록 | ○ 필수 | ○ 필수 | ○ 필수 |
| 완화 조치 문서 | ○ 필수 | ○ 필수 | ○ 필수 |
| SBOM 연계 | ○ 별도 필수 | △ 권장 | ○ N73 별도 필수 |
| 잔여 위험 ISO 14971 연계 | ○ (AAMI TIR57) | ○ (ISO 14971 직접) | ○ (ISO 14971 준용) |
| Post-market 갱신 의무 | ○ (Postmarket Cyber Guidance 2016) | ○ (PMS Plan 통합) | ○ (업데이트 정책 제출) |

---

## 9. 참조 표준 및 도구

| 표준/도구 | 용도 |
|---|---|
| **AAMI TIR57:2016** | 의료기기 사이버보안 위험관리 (ISO 14971 정합) |
| **IEC 81001-5-1:2021** | Health SW 보안 수명주기 (IEC 62443-4-1 기반) |
| **MITRE ATT&CK for Medical Devices** | 실제 공격 기법 참조 (위협 시나리오 현실성 강화) |
| **NIST SP 800-30 Rev.1** | 위협 소스·이벤트 분류 참조 |
| **OWASP Threat Dragon** | STRIDE DFD 자동화 도구 (무료, 오픈소스) |
| **Microsoft Threat Modeling Tool** | STRIDE 기반 DFD 작성 자동화 |
| **IEC TR 60601-4-5:2021** | 의료기기 보안 기술 요구사항 |

---

## 10. 관련 KB 문서

- [사이버보안_통합가이드](../사이버보안_통합가이드.md) — 3대 지역 사이버보안 개요
- [eSTAR_04_Cybersecurity_Section](510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md) — eSTAR 사이버보안 섹션 작성 가이드
- [IEC62304_SW_수명주기_산출물_매핑](../../국제표준_IEC_ISO/IEC62304_SW_수명주기_산출물_매핑.md) — SW 수명주기 연계
