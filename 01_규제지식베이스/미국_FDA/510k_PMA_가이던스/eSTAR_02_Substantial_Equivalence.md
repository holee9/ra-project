> 최종 갱신: 2026-04-22 (자동보강 #2)
> 근거: https://www.fda.gov/medical-devices/premarket-submissions-selecting-and-preparing-correct-submission/premarket-notification-510k · https://www.fda.gov/regulatory-information/search-fda-guidance-documents/510k-program-evaluating-substantial-equivalence-premarket-notifications-510k · https://www.fda.gov/media/82395/download · https://www.fda.gov/medical-devices/premarket-notification-510k/how-find-and-effectively-use-predicate-devices · https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E/section-807.92

# FDA eSTAR 섹션별 작성 가이드 (2) Substantial Equivalence 비교표 작성법

FDA 510(k) 제출의 핵심 논증 섹션. 자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW)에 대한 Substantial Equivalence(SE) 비교표 작성 실무 기준. MFDS·MDR 동일 개념(동등성) 대응 관점 포함.

## 1. 규제적 배경 (Fact)

### 1.1 SE 판정 법적 구조
- 21 U.S.C. §360c(i)(1)(A) / 21 CFR 807.92(a)(3) — Substantial Equivalence의 법적 정의
- 핵심 2요건:
  1. Same intended use as the predicate (동일 의도된 사용)
  2. 동일한 기술특성 **또는** 서로 다른 기술특성이라도 **different questions of safety and effectiveness를 제기하지 않음**
- FDA의 SE 판정 흐름도: "The 510(k) Program: Evaluating Substantial Equivalence in Premarket Notifications" (2014-07-28 Final, 현행 유효) Appendix A Flowchart의 Decision Points 1~5

### 1.2 SE 판정 흐름도 (5개 Decision Point 요약)
1. **DP1** — Predicate이 legally marketed device인가? (PMA, Class III, 1976 preamendment 제외 확인)
2. **DP2** — 동일한 Intended Use인가? (다르면 NSE)
3. **DP3** — 동일한 Technological Characteristics인가?
   - Yes → 성능 시험으로 SE 확정 가능 여부 판단 (DP5)
   - No → DP4 진행
4. **DP4** — 다른 기술특성이 **different questions of safety and effectiveness**를 제기하는가?
   - Yes → NSE (De Novo / PMA 경로)
   - No → DP5
5. **DP5** — 제출된 성능자료가 새 장치가 predicate만큼 **안전·유효**함을 입증하는가? Yes → SE

### 1.3 Predicate / Reference Device 용어
- **Primary Predicate**: 반드시 1개. Intended use·기술특성 측면에서 가장 유사한 clearance 510(k) 장치.
- **Additional Predicate(s)**: 추가로 1개 이상 가능. 보조 기술특성 매칭용.
- **Reference Device(s)**: SE 판정 직접 근거는 아니나 과학적·성능 근거를 보강하는 기clearance 장치. 사용 시 "not a predicate, used only for scientific support" 명시.
- **Split Predicate (분리 predicate)는 금지**: Intended use를 A predicate에서, 기술특성을 B predicate에서 차용하는 구성 금지 (FDA 2014 guidance).

## 2. eSTAR 내 Substantial Equivalence 섹션 구조

eSTAR(v5.x 기준) "Substantial Equivalence" 섹션 구성:
1. Primary Predicate 510(k) 번호·제조사·제품명 입력
2. Additional Predicate / Reference device 입력 (선택)
3. SE 판정 근거 서술(free text)
4. **SE 비교표(attachment)** — 표 형식 PDF/DOCX 첨부 필수
5. 기술특성 차이가 different questions of S&E를 **제기하지 않음을 설명**하는 Rationale Attachment
6. Intended use 비교 진술 (Device Description / Indications for Use 섹션과 동일 문구)

## 3. SE 비교표 — 필수 비교 항목

FDA 2014 guidance 및 eSTAR 기대에 따른 **표준 비교 행(rows)**:

| 카테고리 | 세부 비교 항목 |
|---|---|
| 규제 정보 | Device Name / Product Code / Regulation Number / Class |
| 의도된 사용 | Intended Use / Indications for Use |
| 처방 구분 | Rx / OTC |
| 사용자·환경 | User / Use Environment |
| 환자군 | Patient Population (성인·소아·중환자·임산부 등) |
| 해부학적 부위 | Anatomy / Site |
| 원리 | Principle of Operation |
| 설계 | Design / Form Factor |
| 재질 | Materials (환자 접촉 부품) |
| 에너지원 | Energy Source (전원·배터리·X선 등) |
| 주요 스펙 | Key Specifications (제품별 — 아래 4장 참조) |
| 성능 | Performance Claims (DQE, MTF, spatial resolution, kVp range 등) |
| 안전 | Safety Standards (IEC 60601-1 등 적합성) |
| EMC | IEC 60601-1-2 적합성 |
| 방사선 방호 | IEC 60601-1-3 / 21 CFR 1020.30~31 적합성 |
| 생체적합성 | ISO 10993-1 적용 부품·판정 |
| 소프트웨어 | Level of Concern / Documentation Level, IEC 62304 class |
| 사이버보안 | Cybersecurity 조치, SBOM 제공 여부 |
| 상호운용성 | DICOM 지원, HL7, 네트워크 인터페이스 |
| 라벨링 | Label / IFU 주요 표시 항목 |
| 멸균 | 적용 여부 (대부분 X-ray 제품은 N/A) |
| 수명 | Service life / Reprocessing |

### 3.1 표 구성 형식 (권장)
| 특성 | 본 장치 (Subject Device) | Primary Predicate K123456 | Additional Predicate K234567 (해당 시) | 차이점 | Different Questions of S&E? | 근거 자료 |
|---|---|---|---|---|---|---|
| 예: Detector Type | CMOS | a-Si TFT + CsI | — | 센서 기판 방식 차이 | No | IEC 62220-1-1 DQE 동등성 시험 [Test Report #] |

- "No"라고만 쓰지 말고 **짧은 justification 문장**을 Different Questions 열에 포함
- 근거 자료 열은 Performance Testing 섹션 Attachment 번호와 상호참조

## 4. 자사 3개 제품별 필수 스펙 행 (Action)

### 4.1 X-ray Detector (평판 검출기)
- 센서 종류 (CMOS / a-Si+CsI / a-Se)
- 영상영역(cm × cm 또는 inch)
- 픽셀 피치(μm) · 총 픽셀 수
- 공간분해능(lp/mm) · MTF at 1 lp/mm, 2 lp/mm
- DQE at 0 lp/mm, 1 lp/mm, 2 lp/mm (IEC 62220-1-1 측정조건 명기: RQA5 등)
- AED(Automatic Exposure Detection) 기능 유무
- 통신 인터페이스 (GbE / Wi-Fi 규격 / Tethered)
- 배터리 (해당 시) · 충전 방식
- 동작 온습도 범위
- 무게·낙하 내성
- 호환 Generator 목록

### 4.2 Handheld X-ray Source
- 최대 관전압 kVp · 최대 관전류 mA
- 노출 시간 범위 s
- 초점 크기 (focal spot, mm)
- 고유 여과 (inherent filtration, mm Al)
- HVL (Half-Value Layer, mm Al) at 특정 kVp
- SID (Source-to-Image Distance) 권장 범위
- 조사야(collimation) 조절 범위
- 누설 방사선 (leakage radiation, mGy/h at 1 m) ↔ 21 CFR 1020.30(k) 한도 비교
- 후방산란 방지 수단 (shield 유무·크기)
- 배터리 화학종·용량·수명 (IEC 62133-2 적합성)
- Dead-man switch, Warning light·Audible signal (21 CFR 1020.31 요구)
- 총 무게·인체공학 특성

### 4.3 촬영실 GUI SW (Imaging Workstation SW)
- Software Level of Documentation (FDA 2023 SW guidance "Basic/Enhanced")
- IEC 62304 Safety Class (A/B/C)
- 주요 기능 목록 (Acquisition / Processing / Display / Storage / Transfer / Worklist / QA Tools)
- AI/ML 모듈 포함 여부 — 포함 시 PCCP 설정
- DICOM 적합성 진술서 (Storage SCU/SCP, Worklist SCU, MPPS, Print SCU 등)
- 지원 OS 및 최소 HW 요구사항
- 보안 조치 (인증 방식, 암호화, 감사로그, 업데이트 경로)
- SBOM 제공 형식 (SPDX / CycloneDX)
- Interoperability (HL7 FHIR, IHE profiles 지원 여부)
- 지원 언어 / 현지화

## 5. Different Questions of Safety and Effectiveness 판정 기준

FDA 2014 guidance 기준 **new question**로 간주되는 대표 트리거:
- 새로운 에너지원·물리 원리 도입 (예: CMOS direct → indirect scintillator 전환은 일반적으로 non-new; 반대로 X-선을 광학·초음파로 대체는 new)
- 사용자 인터페이스 개념 변화 (예: manual → AI-assisted 자동 진단)
- 환자 접촉 재료 변경 (생체적합성 재평가 필요)
- 새로운 적응증·환자군 (pediatric 추가 등)
- 새로운 사용 환경 (병원 → 가정, 이동환경)
- 무선 통신·원격 운영 최초 도입
- 새로운 소프트웨어 알고리즘 (AI/ML, adaptive algorithm)
- 저선량·고선량 방사선 성능 확장

**서술 패턴 권장**:
> "Although the subject device uses [새 기술] while the predicate uses [기존 기술], this difference does not raise different questions of safety and effectiveness because [성능 동등성 시험 또는 위험 관리 근거]."

이 문장 패턴을 비교표 별도 열 또는 Rationale Attachment의 각 차이점 bullet로 통일 적용.

## 6. 3개 지역 비교 매트릭스

| 구분 | FDA (510(k) SE) | MFDS (동등제품 비교) | MDR (Equivalence Annex XIV / MDCG 2020-5) |
|---|---|---|---|
| 개념 명칭 | Substantial Equivalence | 동등제품 (기허가제품 비교) | Equivalence (clinical, technical, biological) |
| 의도된 사용 일치 | 필수 (상이 시 자동 NSE) | 사용목적 원칙적 동일 | Clinical equivalence에 포함 |
| 기술특성 일치 | 허용 범위 내 차이 가능 (Different Questions 판정) | 주요 제원 동등, 차이 시 성능자료 | Technical equivalence 3요건 (same design·specs·SW) |
| 재질 동등 | 필요 시 생체적합성 재평가 | 원칙적 동등 | Biological equivalence (same materials contacting same tissues) |
| Predicate 개수 | Primary 1 + Additional | 제한 없음 (참고자료) | 1개 장치 대상 (complete set of conditions) |
| 장치 간 직접 물리 접근 | 불요 (공개 데이터 기반) | 불요 | 직접 접근·test 필요 (legacy devices 특히) |
| SE 비교표 형식 | 표 첨부 (eSTAR) | 비교표 첨부 (기술문서 심사자료) | Equivalence Rationale 문서 (CER 부속) |

## 7. Predicate 선정 실무 체크리스트

- [ ] FDA 510(k) Database(accessdata.fda.gov/scripts/cdrh/cfdocs/cfPMN/pmn.cfm) 검색 — Product Code 기준
- [ ] 최근 5년 내 clearance 우선, 7년 이상 clearance는 FDA의 "use of predicates" 모던화 동향 고려하여 **추가 보강** 필요
- [ ] Predicate이 시장에서 **여전히 판매** 중인지 (retired/discontinued 확인)
- [ ] Predicate이 Recall/Safety Communication 대상인지 확인 (FDA MAUDE / Medical Device Recalls DB)
- [ ] Indications for Use 원문 문자 수준 비교, 자사 IFU가 **동일 또는 더 좁은가**
- [ ] 기술특성 차이 항목 목록화 → 각 항목별 justification 데이터 확보 가능성 확인
- [ ] Split Predicate 구성 금지 — 1개 primary에서 IFU 동등 확인 우선

## 8. 빈번 지적 사항 (RTA / AI 단계)

1. **Intended Use 불일치** — IFU 문구 diff 무시 → DP2 실패 NSE 직행
2. **Split Predicate** — IFU는 A, 기술은 B에서 차용
3. **Predicate의 clearance 문서 사본·공개 summary 미첨부**
4. **Different Questions 열을 "No"만 적고 근거 부재**
5. 성능시험 자료와 SE 비교표 간 상호참조 Attachment 번호 누락
6. **Reference device를 predicate처럼 사용** — 용어 분리 미흡
7. 비교표가 산문(prose) 형태 — 표 형식 요구
8. 비교 행 부족 — 16~20행 미만은 심사관 관점에서 피상적

## 9. 제출 전 최종 점검

- [ ] SE 비교표 1개 (본 장치 vs Primary Predicate, 추가열로 Additional Predicate 포함)
- [ ] Rationale Attachment (차이점별 "not different Q of S&E" 서술)
- [ ] Predicate 510(k) Summary 또는 Statement 첨부
- [ ] Intended Use · Indications for Use 문구 완전 일치 (eSTAR 전 섹션)
- [ ] 기술특성 각 행의 근거 시험 보고서 / 표준 시험 명시
- [ ] SE 판정 자기주장 (self-declaration) 1줄: "The [Device] is substantially equivalent to [Predicate K######]"

## 10. MFDS / MDR 재활용 가이드

- FDA SE 비교표 **그대로** MFDS "동등제품 비교표" 양식으로 국문 번역·재활용 가능 (사용목적·주요제원 항목 일치)
- MDR Equivalence Rationale는 FDA SE 비교표의 **clinical/technical/biological** 3개 축으로 재구성 — 기술특성 행을 3개 카테고리로 라벨링하면 재사용 효율 상승
- 따라서 사내 마스터 문서: **SE 비교표 마스터 Excel 1개** + 지역별 출력 템플릿 3개 구조 권장

## 11. 관련 내부 문서
- [eSTAR 섹션별 가이드 (1) Device Description / IFU](eSTAR_01_Device_Description_IFU.md)
- [FDA 인허가 상세가이드](../FDA_인허가_상세가이드.md)

## 12. 참고 공식 소스
- FDA Guidance, "The 510(k) Program: Evaluating Substantial Equivalence in Premarket Notifications [510(k)]" — https://www.fda.gov/regulatory-information/search-fda-guidance-documents/510k-program-evaluating-substantial-equivalence-premarket-notifications-510k (PDF: https://www.fda.gov/media/82395/download)
- FDA, "How to Find and Effectively Use Predicate Devices" — https://www.fda.gov/medical-devices/premarket-notification-510k/how-find-and-effectively-use-predicate-devices
- FDA, "Premarket Notification 510(k)" — https://www.fda.gov/medical-devices/premarket-submissions-selecting-and-preparing-correct-submission/premarket-notification-510k
- 21 CFR 807.92 (eCFR) — https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E/section-807.92

> 다음 회차 예정 (BACKLOG): FDA eSTAR 섹션별 작성 가이드 (3) Performance Testing / Bench Test
