> 최종 갱신: 2026-05-12 (자동보강 #33)
> 근거: https://www.iso.org/standard/59752.html | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-820 | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017R0745 | https://www.mfds.go.kr/brd/m_207/down.do?brd_id=data0008&seq=15062&data_tp=A&file_seq=2

# SOP: Design and Development Controls (설계 및 개발 관리)

**문서번호**: SOP-DEV-001  
**버전**: 1.0  
**적용 표준**: ISO 13485:2016 §7.3 / QMSR 21 CFR §820.30 / MDR 2017/745 Annex II / KGMP (MFDS 고시 제2025-22호)  
**적용 제품**: X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW

---

## 1. 목적 (Purpose)

본 절차서는 자사 의료기기의 설계 및 개발 활동 전 단계에 걸쳐 체계적인 계획, 실행, 검토, 검증, 유효성 확인을 수행하고 관련 기록을 유지함으로써 규제 요건(MFDS·FDA·MDR)을 충족시키는 것을 목적으로 한다.

---

## 2. 범위 (Scope)

자사에서 개발하는 모든 의료기기 신규 개발 및 중요 설계 변경에 적용한다.  
단, 다음은 제외한다:
- 외관·색상 변경 등 안전성·성능에 영향 없는 경미한 변경 (단, 변경 영향 평가서 필요)
- 생산 공정 개선 (별도 SOP-MFG 적용)

---

## 3. 참조 문서 (References)

| 문서 | 출처 | 비고 |
|---|---|---|
| ISO 13485:2016 §7.3 | ISO | Design and Development |
| 21 CFR Part 820 (QMSR) §820.30 | FDA, 2026-02-02 발효 | ISO 13485 §7.3 인용 통합 |
| MDR 2017/745 Annex II §6 | EU Official Journal | Design and manufacturing information |
| MFDS 고시 제2025-22호 §7.3 | MFDS, 2025-04-07 | KGMP 설계관리 |
| ISO 14971:2019 | ISO | 위험 관리 (본 SOP와 연계) |
| IEC 62304:2006+A1:2015 | IEC | SW 수명주기 (GUI SW에 적용) |
| SOP-QMS-001 | 내부 | Document Control |
| SOP-QMS-002 | 내부 | Record Control |
| SOP-RMF-001 | 내부 | Risk Management (ISO 14971) |

---

## 4. 용어 정의 (Definitions)

| 용어 | 정의 |
|---|---|
| **Design Input** | 설계 요구사항. 사용자 요구, 규제 요건, 성능 기준, 안전 요건 포함 |
| **Design Output** | 설계 결과물. 도면, 사양서, SW 코드, 부품 목록(BOM) 등 |
| **Design Review** | 설계 단계별 공식 검토 회의. 다기능 팀 참여 필수 |
| **Verification** | 설계 출력이 설계 입력을 충족하는지 객관적 증거 확인 (Does it meet specs?) |
| **Validation** | 의도한 사용 환경에서 사용자 요구를 충족하는지 확인 (Does it work for users?) |
| **Design Transfer** | 설계에서 제조로 이전 — 제조 가능성 확인 및 양산 절차 수립 |
| **DHF / DDF** | Design History File (FDA) / Design and Development File (ISO 13485 §7.3.10) |
| **MFDS 설계이력파일** | KGMP상 명칭. DHF와 동일 개념 |

---

## 5. 책임과 권한 (Responsibilities)

| 역할 | 책임 |
|---|---|
| **Project Manager (PM)** | 설계 계획 수립, 일정 관리, 단계 Gate 승인 |
| **Design Engineer** | Design Input 작성, 설계 출력 생성, V&V 수행 |
| **RA Manager** | 규제 요건 확인, 3개 지역 요건 설계 반영 감독 |
| **QA Manager** | 설계 검토 주관, DHF 적합성 확인, 내부 감사 |
| **SW Engineer** | IEC 62304 기반 SW 수명주기 산출물 관리 (GUI SW·임베디드 SW) |
| **Clinical/User** | 사용자 요구사항 제공, Validation 참여 |

---

## 6. 설계 단계 개요 (Design Phase Overview)

```
[Phase 0] Feasibility / Concept
     ↓
[Phase 1] Design Planning (7.3.2)
     ↓
[Phase 2] Design Input (7.3.3)
     ↓
[Phase 3] Design Output (7.3.4)
     ↓
[Phase 4] Design Review (7.3.5)         ← 각 Phase 전환 시 실시
     ↓
[Phase 5] Design Verification (7.3.6)
     ↓
[Phase 6] Design Validation (7.3.7)
     ↓
[Phase 7] Design Transfer (7.3.8)
     ↓
[Phase 8] Production Release
     ↓
[변경 발생 시] Design Change (7.3.9)
```

전 단계에 걸쳐 **위험 관리(ISO 14971)** 및 **소프트웨어 수명주기(IEC 62304)** 활동을 병행 수행한다.

---

## 7. 절차 (Procedure)

### 7.1 설계 계획 (Design and Development Planning) — ISO 13485 §7.3.2

**목적**: 설계 활동의 단계, 책임, 검토 시점, 자원을 문서화하고 개발 진행에 따라 갱신.

**수행 절차**:
1. PM은 **설계 및 개발 계획서 (DDP: Design and Development Plan)** 를 작성한다.
2. DDP 필수 기재 항목:
   - 설계 단계 및 단계별 산출물 목록
   - 각 단계별 검토(Review), 검증(Verification), 유효성 확인(Validation) 활동
   - 단계별 책임자 및 권한
   - 인터페이스 관리 계획 (외부 협력사 포함)
   - 위험 관리 연계 일정
   - SW Safety Class 및 IEC 62304 적용 수준 (SW 포함 제품)
3. DDP는 QA Manager 검토 후 PM 최종 승인.
4. 개발 진행에 따라 DDP를 지속 갱신하고 버전 이력을 유지한다.

**산출물**: `DDP-[제품코드]-[버전].docx`

---

### 7.2 설계 입력 (Design and Development Inputs) — ISO 13485 §7.3.3

**목적**: 설계 요구사항을 완전하고 명확하게 문서화하여 모호성과 갈등을 제거.

**수행 절차**:
1. 다음 소스로부터 Design Input을 수집한다:
   - 사용자 요구사항 (User Needs) — 임상 인터뷰, VOC
   - 규제 요건 — MFDS 기술문서 기준, FDA eSTAR, MDR Annex I GSPR
   - 적용 표준 — IEC 60601-1, IEC 60601-2-28/54, IEC 62220-1-1 등
   - 안전 요건 — ISO 14971 위험 허용 기준
   - 이전 유사 설계 경험·불량 이력
2. **설계 입력 명세서 (DIS: Design Input Specification)** 에 요구사항별로 기록.
3. DIS 기재 형식:
   ```
   ID    | 요구사항 | 출처 | 우선순위 | 검증 방법 | 링크(위험 항목)
   DI-001| ...     | ISO 13485 §7.3.3 | M | 시험 | RM-001
   ```
4. 상충(conflict) 요구사항은 명시적으로 해소하고 근거 기록.
5. QA Manager 검토 및 PM 승인 후 DHF에 편입.

**산출물**: `DIS-[제품코드]-[버전].docx`

> **[FDA 추가요건]** QMSR §820.30(c): incomplete, ambiguous, or conflicting requirements를 해소하지 않은 채 승인 금지.

---

### 7.3 설계 출력 (Design and Development Outputs) — ISO 13485 §7.3.4

**목적**: 설계 입력 충족 여부를 확인할 수 있는 형태의 설계 결과물 생성.

**수행 절차**:
1. 설계 출력은 다음을 포함한다:
   - 도면, 회로 설계, 기구 사양 (하드웨어 제품)
   - SW 아키텍처 문서, 소스코드, SW 릴리스 메모 (SW 포함 제품)
   - BOM (Bill of Materials)
   - 생산 및 서비스에 필요한 사양
   - 부품 허용 기준 및 합격/불합격 기준
2. 각 설계 출력은 대응하는 Design Input ID를 추적(traceability matrix)할 수 있어야 한다.
3. 설계 출력은 승인 전까지 `DRAFT` 상태로 관리하며, 검토·서명 후 `RELEASED` 처리.

**산출물**: 도면류, SW 산출물, BOM, 추적성 매트릭스 (`TM-[제품코드].xlsx`)

---

### 7.4 설계 검토 (Design and Development Review) — ISO 13485 §7.3.5

**목적**: 각 설계 단계에서 요구사항 충족 여부를 다기능 팀이 공식 검토.

**수행 절차**:
1. Design Review는 아래 단계 전환 시점에 실시한다:

   | Gate | 시점 | 주요 검토 항목 |
   |---|---|---|
   | Gate 1 (DR1) | Input 완료 후 | DIS 완전성·정합성, 위험 식별 초안 |
   | Gate 2 (DR2) | Output 완료 후 | Input-Output 추적, BOM, SW 아키텍처 |
   | Gate 3 (DR3) | Verification 완료 후 | V&V 결과 vs. Input, 잔여 위험 |
   | Gate 4 (DR4) | Validation 완료 후 | 사용자 Validation 결과, 라벨, IFU |
   | Gate 5 (DR5) | Transfer 완료 후 | 양산 적합성, 초도 생산 품질 |

2. 검토 참석자: PM, Design Engineer, QA Manager, RA Manager, 해당 분야 전문가.
3. 검토 결과는 **Design Review Record** 에 기록 (Open Action Items 포함).
4. 모든 Action Item이 해소되지 않으면 다음 단계로 진행 불가.

**산출물**: `DRR-[제품코드]-Gate[N]-[버전].docx`

---

### 7.5 설계 검증 (Design and Development Verification) — ISO 13485 §7.3.6

**목적**: 설계 출력이 설계 입력 요구사항을 충족함을 객관적 증거로 확인.

**수행 절차**:
1. DDP에 따라 **검증 계획서 (Verification Plan)** 수립.
2. 검증 방법:
   - 시험 (Test): 전기 안전(IEC 60601-1), EMC(IEC 60601-1-2), 방사선방호(IEC 60601-1-3), 성능(IEC 62220-1-1 DQE 등)
   - 검사 (Inspection): 도면 대비 실물 확인
   - 분석 (Analysis): FMEA, FTA, 계산서
   - 시범 운용 (Demonstration): SW 기능 동작 확인
3. 각 DI 항목에 대응하는 검증 결과를 Traceability Matrix에 기록.
4. 검증 결과가 합격 기준 불충족 시 → 설계 변경 프로세스(§7.3.9) 적용.

**산출물**: `VP-[제품코드].docx`, `VR-[제품코드].docx` (Verification Report), 시험 성적서

---

### 7.6 설계 유효성 확인 (Design and Development Validation) — ISO 13485 §7.3.7

**목적**: 완성된 의료기기가 의도한 사용 환경에서 사용자 요구를 충족함을 확인.

**수행 절차**:
1. **유효성 확인 계획서 (Validation Plan)** 수립 — 사용 환경, 대표 사용자, 시나리오 포함.
2. 유효성 확인은 가능한 한 **최종 또는 그에 상응하는 의료기기** 로 실시.
3. 임상 환경 또는 시뮬레이션 환경에서 수행. 사용성 유효성 확인(IEC 62366-1)과 통합 수행 권장.
4. 위험 관리 파일(ISO 14971)의 잔여 위험 허용 여부를 Validation 전에 확인.
5. 결과를 **유효성 확인 보고서 (Validation Report)** 에 기록.

**산출물**: Validation Plan, Validation Report

> **[MFDS 추가요건]** 임상 환경에서 시제품 시험 시 임상시험계획 승인 필요 여부 사전 확인 (의료기기법 제10조).  
> **[FDA 추가요건]** 시뮬레이션·동물 실험·임상 데이터 모두 허용. 510(k)의 경우 predicate와 성능 동등성 확인이 Validation의 핵심.

---

### 7.7 설계 이전 (Design and Development Transfer) — ISO 13485 §7.3.8

**목적**: 설계 사양이 생산으로 완전히 이전되어 제조 가능하고 일관된 품질의 제품이 생산됨을 확인.

**수행 절차**:
1. 설계 출력(도면, BOM, 공정 사양, SW 빌드 절차)을 생산 부서에 이전.
2. 이전 전 **설계 이전 검토서** 작성 — 제조 가능성, 측정 가능성, 자원 가용성 확인.
3. 초도 생산 샘플(First Article)로 설계 의도 충족 여부 확인.
4. SW 제품의 경우: 빌드 절차, 릴리스 절차, 설치 검증 절차 포함.

**산출물**: Design Transfer Record, First Article Inspection Report

---

### 7.8 설계 변경 (Control of Design and Development Changes) — ISO 13485 §7.3.9

**목적**: 승인된 설계에 대한 모든 변경을 통제하고 변경이 규제 재제출 대상인지 평가.

**수행 절차**:
1. 변경 요청은 **설계 변경 요청서 (Design Change Request, DCR)** 로 시작.
2. DCR 필수 내용:
   - 변경 내용 및 사유
   - 영향 평가: 안전성, 성능, 규제 상태, 기존 V&V 충분성
   - 위험 관리 파일 갱신 필요 여부
3. QA Manager가 변경 유형 분류:

   | 유형 | 설명 | 규제 대응 |
   |---|---|---|
   | **Major** | 의도된 용도·안전성·성능에 영향 | 신규 인허가 또는 변경허가 필요 (3개 지역 각각 평가) |
   | **Minor** | 품질·문서에만 영향, 성능 미변경 | 내부 승인 후 기술문서 갱신 |
   | **Administrative** | 오탈자, 참조 번호 등 | QA 단독 승인 |

4. Major 변경 시 3개 지역 규제 재제출 평가:
   - MFDS: 변경허가/변경신고 기준 (의료기기법 시행규칙 별표 3)
   - FDA: 510(k) Special/Traditional/PMA Supplement 해당 여부
   - MDR: NB에 변경 통보 또는 새 인증 필요 여부
5. 변경 승인 후 DHF 갱신 및 해당 문서 버전 관리.

**산출물**: DCR, 영향 평가서, 갱신된 DHF 문서

---

### 7.9 설계 및 개발 파일 (Design and Development File / DHF) — ISO 13485 §7.3.10

**목적**: 설계 전 과정의 기록을 하나의 파일로 관리하여 전 생애주기 추적성 보장.

**DHF 구성 (필수 포함 항목)**:

| # | 문서 유형 | 해당 항목 |
|---|---|---|
| 1 | 설계 계획서 (DDP) | §7.3.2 |
| 2 | 설계 입력 명세서 (DIS) | §7.3.3 |
| 3 | 설계 출력 (도면, SW 문서, BOM) | §7.3.4 |
| 4 | 설계 검토 기록 (DRR, Gate 1~5) | §7.3.5 |
| 5 | 검증 계획서 및 보고서 | §7.3.6 |
| 6 | 유효성 확인 계획서 및 보고서 | §7.3.7 |
| 7 | 설계 이전 기록 | §7.3.8 |
| 8 | 설계 변경 이력 (DCR, 영향 평가서) | §7.3.9 |
| 9 | 추적성 매트릭스 (DI → DO → V&V → RM) | 전체 |
| 10 | 위험 관리 파일 포인터 (ISO 14971) | 연계 |
| 11 | SW 수명주기 파일 포인터 (IEC 62304) | 연계 (SW 포함 제품) |

**DHF 관리 원칙**:
- 의료기기 유형 또는 제품군별 1 DHF 유지.
- 전자 DHF(eQMS) 또는 규정된 폴더 구조 내 종이 DHF 모두 허용.
- 제품 폐기 후 **최소 15년** 보존 (MFDS: 제조기록서 보존 기간과 동일 적용).
- 각 문서에 작성자, 검토자, 승인자, 날짜, 버전 기재 필수.

---

## 8. 3개 지역 요건 비교 매트릭스

| 요건 항목 | ISO 13485 §7.3 | FDA QMSR §820.30 | MDR 2017/745 | KGMP (2025-22) |
|---|---|---|---|---|
| **법적 근거** | ISO 13485:2016 §7.3 | 21 CFR Part 820, 2026-02-02 발효 (ISO 13485 인용) | Annex II §6, Annex IX QMS | 고시 제2025-22호 §7.3 |
| **계획 (Planning)** | §7.3.2 — 단계, 책임, R/V/V 시점 문서화 | §820.30(b) — 동일 | Annex II §6.1 — design stages 이해 가능하게 | §7.3.2 (ISO 동일) |
| **입력 (Inputs)** | §7.3.3 — 모호성·갈등 해소 후 승인 | §820.30(c) — incomplete/ambiguous 금지 | Annex II §6.1(b) — 설계 입력 명시 | §7.3.3 (ISO 동일) |
| **출력 (Outputs)** | §7.3.4 — 측정 가능, 허용 기준 포함 | §820.30(d) — DMR 연계 | Annex II §6.1(b) — 출력 결과물 | §7.3.4 (ISO 동일) |
| **검토 (Review)** | §7.3.5 — 단계별 다기능 팀 | §820.30(e) — 동일 | Annex II §6.1 — 검토 기록 요구 | §7.3.5 (ISO 동일) |
| **검증 (Verification)** | §7.3.6 — 계획대로 수행·기록 | §820.30(f) — 동일 | Annex II §6.1(c) — V&V 데이터 | §7.3.6 (ISO 동일) |
| **유효성 확인 (Validation)** | §7.3.7 — 최종 또는 동등 제품 | §820.30(g) — 시뮬레이션·임상 허용 | Annex II §6.1(c) — V&V 데이터 | §7.3.7 + 임상 계획 승인 |
| **이전 (Transfer)** | §7.3.8 — 제조 적합성 확인 | §820.30(h) — DMR 이전 확인 | Annex II §6.1(d) — 제조 정보 | §7.3.8 (ISO 동일) |
| **변경 (Changes)** | §7.3.9 — 영향 평가·승인 | §820.30(i) — 동일 | Annex II §6.1 — 변경 이력 | §7.3.9 + 변경허가/신고 |
| **DHF/DDF** | §7.3.10 — 설계 파일 | §820.30(j) — DHF 필수 | Annex II §6 전체 — TD의 일부 | 설계이력파일 |
| **적용 범위** | 모든 클래스 | Class II, III + 일부 Class I | Class I Rule 11 이상 모두 | 2등급 이상 필수 |
| **추적성 요건** | §7.3.4 — DI↔DO 추적 명시 | §820.30 전반 — 추적성 기본 요건 | Annex II — 전체 TD 추적성 | §7.3.4 (ISO 동일) |

---

## 9. 자사 3개 제품별 적용 맵핑

### 9.1 X-ray Detector

| 항목 | 내용 |
|---|---|
| **등급** | MFDS Class III / FDA Class II (21 CFR 892.1650) / MDR Class IIa (Rule 10) |
| **Design Input 핵심** | IEC 62220-1-1 DQE ≥ 지정값, IEC 60601-1 전기 안전, MFDS 방사선 피폭 한도, MDR GSPR §10(영상 품질) |
| **Verification 핵심** | DQE·MTF·NPS 측정 (IEC 62220-1-1), IEC 60601-1 전기 안전 시험, EMC (IEC 60601-1-2) |
| **Validation 핵심** | 임상 영상 품질 평가, 방사선사 사용성 시험 (IEC 62366-1) |
| **SW 분류** | 임베디드 이미지처리 SW → IEC 62304 Class B |
| **특이 사항** | 방사선 검출 소자(Scintillator/TFT) 설계 변경 시 Major 변경 간주 → 성능 재검증 필수 |

### 9.2 Handheld X-ray Source

| 항목 | 내용 |
|---|---|
| **등급** | MFDS Class III / FDA Class II (21 CFR 892.1650) / MDR Class IIb-III (Rule 10·17) |
| **Design Input 핵심** | 21 CFR 1020.30 방사선 성능 기준, IEC 60601-2-28 X선관 시험, IEC 60601-1-3 방사선방호, 배터리 안전 (IEC 62133-2) |
| **Verification 핵심** | 누설방사선 측정, HVL 측정, 조사야 정확도, 배터리 안전 시험, 낙하·충격 시험 |
| **Validation 핵심** | 실제 임상 환경 포터블 조작 사용성, 방사선 피폭 조건 Validation, 충전 사이클 내구성 |
| **SW 분류** | 방사선 제어 임베디드 SW → IEC 62304 Class C (safety-critical) |
| **특이 사항** | FDA: Form FDA 2579 (Electronic Product Radiation) 제출 필수. MDR Class IIb → NB 설계 심사 (QMS Annex IX + Technical File Annex X) |

### 9.3 촬영실 GUI SW

| 항목 | 내용 |
|---|---|
| **등급** | MFDS Class II-III (SaMD) / FDA Class II / MDR Class IIa-IIb (Rule 11 SaMD) |
| **Design Input 핵심** | IEC 62304 SW 요구사항, DICOM 3.0 연동, HL7/FHIR 인터페이스, IEC 62366-1 사용성, 사이버보안 요건 |
| **Verification 핵심** | SW 단위/통합/시스템 시험 (IEC 62304 §5.7~5.8), DICOM Conformance Statement 검증, 사이버보안 취약점 스캔 |
| **Validation 핵심** | 방사선사·의사 사용성 시험 (형성적+총괄적), 실제 PACS 연동 임상 시험 |
| **SW 분류** | IEC 62304 Class C (진단 영상 제공, 임상 의사결정 영향) |
| **특이 사항** | MFDS 디지털의료기기 6종 가이드라인 (2025-05-07) — 독립형 SW 별도 허가 검토. AI 기능 포함 시 PCCP (FDA) 또는 MFDS AI 가이드라인 추가 적용 |

---

## 10. 설계 추적성 매트릭스 (Traceability Matrix) 템플릿

```
파일: TM-[제품코드]-[버전].xlsx

컬럼 구조:
| DI-ID | 요구사항 내용 | 출처 | DO-ID | 설계 출력 문서 | V&V-ID | 시험/검증 방법 | RM-ID | 위험 항목 연계 |
|-------|-------------|------|-------|--------------|--------|--------------|-------|----------------|
| DI-001| 누설방사선 ≤ 1mGy/h | IEC 60601-1-3 | DO-005 | 방사선 차폐 설계도 | VR-003 | 누설방사선 측정 시험 | RM-012 | H-010 위험 통제 |
```

---

## 11. 기록 보존 요건

| 기록 유형 | MFDS | FDA | MDR |
|---|---|---|---|
| DHF 전체 | 제조 중단 후 15년 | 제조 종료 후 최소 2년 (§820.180) | 제조 후 최소 15년 (§10) |
| 설계 변경 기록 | DHF와 동일 | DHF와 동일 | TD의 일부로 영구 유지 |
| V&V 보고서 | DHF와 동일 | DHF와 동일 | TD의 일부 |

> 가장 엄격한 MFDS/MDR 기준인 **15년** 을 기본 보존 기간으로 적용 권장.

---

## 12. 관련 양식 (Forms)

| 양식 번호 | 양식 명 | 용도 |
|---|---|---|
| FM-DEV-001 | Design and Development Plan (DDP) | §7.3.2 계획 |
| FM-DEV-002 | Design Input Specification (DIS) | §7.3.3 입력 |
| FM-DEV-003 | Design Review Record (DRR) | §7.3.5 검토 |
| FM-DEV-004 | Verification Plan & Report (VP/VR) | §7.3.6 검증 |
| FM-DEV-005 | Validation Plan & Report (ValP/ValR) | §7.3.7 유효성 확인 |
| FM-DEV-006 | Design Transfer Record | §7.3.8 이전 |
| FM-DEV-007 | Design Change Request (DCR) | §7.3.9 변경 |
| FM-DEV-008 | Traceability Matrix (TM) | 전체 추적성 |
| FM-DEV-009 | DHF Index | §7.3.10 파일 관리 |

---

## 개정 이력

| 버전 | 날짜 | 내용 | 작성 | 승인 |
|---|---|---|---|---|
| 1.0 | 2026-05-12 | 최초 제정 — ISO 13485 §7.3 / QMSR / MDR / KGMP 기반, 3제품 맵핑 포함 | Auto #33 | (QA Manager 날인) |
