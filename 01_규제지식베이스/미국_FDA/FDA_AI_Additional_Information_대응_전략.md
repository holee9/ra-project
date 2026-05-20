> 최종 갱신: 2026-05-20 (자동보강 #57)
> 근거: https://www.fda.gov/media/73507/download (FDA Guidance: FDA and Industry Actions on 510(k) Submissions, Oct 2022) | https://medicaldeviceacademy.com/additional-information-request/ | https://www.fda.gov/medical-devices/premarket-notification-510k/510k-submission-process | MDUFA V Commitment Letter https://www.fda.gov/media/158308/download

# FDA Additional Information (AI) 대응 전략 및 샘플 답변 체계

## 1. AI Request 개요

### 1.1 정의 및 법적 근거

**Additional Information (AI) Request**는 FDA가 510(k) 심사 과정 중 제출 서류가 실질적 동등성(Substantial Equivalence) 결정을 내리기에 불충분하다고 판단할 때 발행하는 공식 요청서이다.

- **법적 근거**: 21 CFR 807.87(m), 21 CFR 807.100(a)
- **발행 방식**: 이메일 + 첨부 결함 목록(deficiency list)
- **효과**: 510(k) 심사 Clock 정지(Hold). Hold 시작일 = AI Request 발행일

### 1.2 AI Request ≠ RTA Hold ≠ Interactive Review

| 구분 | RTA Hold | AI Request | Interactive Review |
|---|---|---|---|
| 발생 시점 | 수령 후 15일 이내 | 심사 ~60일 |심사 ~60일|
| 의미 | 형식적 수락 거부 | 실질 심사 중 추가 정보 요청 | 소량 미비점 이메일 해결 |
| Clock | Hold 후 리셋 | Hold (정지) | 계속 진행 |
| 재응답 기회 | 복수 가능 | **사실상 1회** | 이메일 왕복 |
| 180일 규정 | 적용 | **적용** | 해당 없음 |
| 결과 미흡 시 | RTA2 발행 → 재시작 | **NSE 발행 가능** | NSE 위험 낮음 |

> **핵심**: AI Request에 대한 응답이 불완전하면 두 번째 기회 없이 NSE(Not Substantially Equivalent) 결정으로 이어질 수 있다.

---

## 2. FDA 심사 타임라인 (MDUFA V 기준, FY2023-2027)

```
Day 0      : 510(k) 접수
Day 0~15   : Acceptance Review (RTA 검토)
Day 15     : 심사 시작 (90 FDA Days Clock 개시)
Day ~60    : Substantive Interaction 마감 (MDUFA V 목표: 95% 준수)
             ┌── 옵션 A: AI Request 발행 → Clock 정지
             └── 옵션 B: Interactive Review 진입 통보
Day 60+    : [Hold 상태 — 응답 대기]
             ├── Day 60+10 : 명확화 회의(Clarification Teleconference) 요청 기한
             ├── Day 60+60 : SIR Meeting 요청 권고 기한
             └── Day 60+180: 응답 미제출 시 자동 Withdrawal (21 CFR 807.87(m))
응답 제출 시: Clock 재개 → 잔여 ~30 FDA Days 내 SE/NSE 결정
총 목표    : 90 FDA Days (SE/NSE, MDUFA V 95% 목표)
Total Time : FY2026 목표 평균 112 calendar days (Hold 기간 포함)
```

---

## 3. AI Request 수령 후 즉각 조치 (Day 0~10)

### 3.1 Day 0~2: 분해·분류

1. **AI Letter 전문 정독** — 각 결함 항목을 개별 번호로 분해
2. **결함 분류표 작성** (아래 양식 참조)
3. **책임자 배정** — 항목별 Owner 지정 (RA, Engineer, Clinical, QA)
4. **복잡도 평가**: 단순 명확화 / 기존 데이터 재분석 / **신규 시험 필요** 3등급 분류

| 결함 번호 | FDA 원문 (요약) | 분류 | 우려 핵심 | 필요 증거 | Owner | 예상 기간 |
|---|---|---|---|---|---|---|
| AI-1 | … | 단순/재분석/신규시험 | … | … | … | … |

### 3.2 Day 10 이내: 명확화 회의 요청

**FDA AI Letter 원문 규정**: "FDA is offering a teleconference within 10 calendar days from the date on this letter."

- 요청 방법: Lead Reviewer 이메일 → (1) 희망 날짜 3개, (2) 명확화 질문 목록 (최소 48시간 전 제출)
- **목적**: 결함의 범위·필요 자료 형식·수락 기준 확인
- **주의**: 새 데이터 제출·검토가 아니라 범위 명확화(scope clarification)만 가능

> Day 10 이후 요청 시: SIR Meeting 형식으로 전환 → 3주 일정 소요 → 응답 여유 시간 감소

---

## 4. 대응 준비 프로세스 (Day 10~180)

### 4.1 SIR Meeting (Submission in Review Meeting) 활용

**SIR Meeting**: AI Request 수령 후 60일 이내 요청 시 FDA가 **3주 이내** 일정 배정.

- **60일 이후 요청**: 정규 Pre-Sub(Q-Sub) 일정 적용 → 60~75일 추가 대기 가능
- SIR Meeting에서 제출 가능한 자료:
  - 예비 시험 결과 (preliminary data)
  - 제안 시험 프로토콜 초안
  - 통계 분석 방법 제안서
  - 예시 계산(sample calculations)
- **불가**: SE/NSE 사전 판정 요청

**권고 일정 예시** (AI Request Day 0 기준):

| 기간 | 활동 |
|---|---|
| Day 0~2 | 결함 분해·분류 |
| Day 3~10 | 명확화 회의 요청 및 개최 |
| Day 10~21 | SIR Meeting 요청서 제출 (초안 프로토콜 첨부) |
| Day ~42 | SIR Meeting 개최 |
| Day 42~140 | 신규 시험 수행 (필요 시) |
| Day 140~170 | 최종 응답서 작성·검토 |
| Day ≤180 | FDA DCC에 eCopy 제출 |

### 4.2 응답서 구성 원칙

**FDA Guidance 권고 (Section V of FDA Guidance on deficiency responses)**:

각 결함에 대해 다음 3가지 중 하나로 응답:
1. 요청된 정보 또는 데이터 제공
2. 해당 사항이 없는 이유 설명
3. 대체 정보 제공 + 왜 그 정보가 문제를 해결하는지 설명

**형식 원칙**:
- 결함 번호를 **원문 그대로** 복사·유지 (순서 변경 금지)
- 표(Table) 형식 + 행 색상 교차 (FDA 원문 vs 회사 응답 구분)
- 단일 부록 번호 체계 유지 (AI Response App. 001, 002, …)
- 각 부록 표지: "What this is / What it proves / Where it's referenced"

---

## 5. 샘플 응답서 구조 (AI Response Template)

### 커버 레터

```
[회사 레터헤드]
Date: YYYY-MM-DD
FDA Contact: [Lead Reviewer 이름]
510(k) Number: KXXXXXX
Device: [Device Name]
Subject: Response to Additional Information Request dated YYYY-MM-DD

Dear [Reviewer Name],

[회사명] hereby submits this response to the Additional Information Request 
(AI Request) issued for the above-referenced 510(k) submission.

This response addresses all [N] deficiencies identified in the AI Request.
A complete response is provided for each deficiency as required under 21 CFR 807.87.

All appendices referenced herein are included in this submission.

Respectfully submitted,
[서명]
[이름·직책·연락처]
```

### 응답 본문 (표 형식)

| 항목 | 내용 |
|---|---|
| **AI Request 항목 번호** | AI-1 |
| **FDA 원문** | (원문 그대로 인용) |
| **FDA 우려 핵심** | [해석: 왜 이 결함인가] |
| **회사 응답** | [응답 내용 서술] |
| **첨부 근거** | Appendix AI-001 — [제목] |

---

## 6. 빈번한 결함 유형별 대응 전략

| 결함 유형 | 빈번 이유 | 대응 핵심 |
|---|---|---|
| **Substantial Equivalence 갭** | 기술적 특성 차이 정당화 부족 | 기술 특성 차이 → 안전성·유효성 영향 없음 논증 + 추가 시험 데이터 |
| **성능 시험 불충분** | 통계적 근거·합격 기준(Pass Criteria) 미명시 | 통계 분석 방법·신뢰구간·합격 기준 재제출 |
| **Device Description 불명확** | 컴포넌트·작동 원리 기술 부족 | 상세 BOM·기능 블록다이어그램 추가 |
| **Software 문서 미비** | IEC 62304 레벨 판정 근거 부족 | Software Level of Concern 판정 근거 + 62304 산출물 목록 |
| **Biocompatibility 갭** | ISO 10993-1 생물학적 평가 미완 | 접촉 시간·유형 재확인 + 시험 매트릭스 제출 (시험 결과 미완 시 프로토콜) |
| **라벨링 문제** | 21 CFR 801 / IFU 필수항목 누락 | 개정 라벨 초안 + 변경 사유 설명 |
| **위험관리 불일치** | ISO 14971 잔여위험 허용 기준 불명확 | Risk Benefit Analysis 보강·위험 수락 기준 명문화 |

---

## 7. 3개 지역 비교 매트릭스: 심사 중 추가 요청 절차

| 비교 항목 | FDA (510(k) AI Request) | MFDS (보완 요청) | EU MDR (NB Deficiency Letter) |
|---|---|---|---|
| **명칭** | Additional Information (AI) Request | 보완 자료 요청 | Deficiency Letter / Non-Conformity List |
| **법적 근거** | 21 CFR 807.87(m) | 의료기기법 제12조, 시행규칙 | MDR Art. 52·Annex IX~XI |
| **발행 시점** | 심사 ~60 FDA Days | 심사 중 (주로 1~2차 심사 사이클) | 기술문서 심사 중 (NB 자체 일정) |
| **응답 기한** | **180 calendar days** (자동 부여) | 보완 요청서 수령 후 통상 **60일** (연장 가능) | NB 규정에 따라 상이 (통상 30~90일) |
| **응답 미제출 시** | 자동 Withdrawal (21 CFR 807.87(m)) | 허가 신청 취하 또는 반려 | 인증 거부 (Certificate 미발행) |
| **Clock 효과** | **정지** (Hold) | **정지** (처리 기한 중단) | NB 심사 일정 중단 |
| **재보완 가능 여부** | 사실상 **1회** (미완 시 NSE) | **2회 이내** 보완 사이클 일반적 | NB마다 상이 (통상 2~3회) |
| **명확화 회의** | 10일 이내 Clarification Teleconference | 사전 상담(민원 상담 채널) 가능 | NB와 별도 미팅 협의 |
| **제출 방법** | FDA DCC eCopy 필수 | MFDS 의료기기 전자민원 시스템 (emedi.mfds.go.kr) | NB 지정 포털 또는 이메일 |
| **수수료** | 추가 수수료 없음 | 추가 수수료 없음 | NB 계약 조건에 따라 상이 |

---

## 8. 자사 3개 제품 영향 맵핑

### 8.1 X-ray Detector (FPD)

| 예상 AI Request 주제 | 위험도 | 대응 준비 사항 |
|---|---|---|
| IEC 62220-1-1 DQE/MTF 시험 방법·합격 기준 | **HIGH** | 시험 보고서에 통계 방법·신뢰구간·합격 기준 사전 명시 |
| Substantial Equivalence — 픽셀 크기·검출 원리 차이 | HIGH | 기술적 특성 차이 → 성능 영향 없음 근거 문서 준비 |
| IEC 60601-2-54 성능 시험 데이터 | MEDIUM | 동적 범위·이미지 품질 시험 결과 완비 |
| Software (GUI 연동) IEC 62304 문서 | MEDIUM | SW Level of Concern 판정 + 62304 산출물 제출 |
| Biocompatibility (환자 접촉 분류) | LOW | 접촉 시간·유형 명확화 (간접/비접촉 근거) |

### 8.2 Handheld X-ray Source

| 예상 AI Request 주제 | 위험도 | 대응 준비 사항 |
|---|---|---|
| 21 CFR 1020.30 방사선 성능 기준 적합성 | **HIGH** | 누설방사선·HVL 측정 보고서 상세 제출 |
| Battery Safety (IEC 62133-2) 시험 결과 | HIGH | Handheld 특성상 배터리 시험 필수 — 완비 필요 |
| Indications for Use — 해부학적 부위·선량 제한 | HIGH | 허가된 사용 부위 명확 기재 + 선량 최적화 데이터 |
| Substantial Equivalence — 신규 휴대형 설계 특성 | MEDIUM | X-ray tube 특성·collimator 설계 동등성 근거 |
| EMC (IEC 60601-1-2) — 휴대형 특성 | MEDIUM | IEC 60601-1-2:2014+A1:2020 시험 결과 (Class B) |

### 8.3 촬영실 GUI Software (SaMD)

| 예상 AI Request 주제 | 위험도 | 대응 준비 사항 |
|---|---|---|
| Software Level of Concern 판정 근거 | **HIGH** | Class C 판정 근거 문서·62304 전체 산출물 |
| Cybersecurity Section (Section 524B) | HIGH | Threat Model·SBOM·SPDF 문서 완비 |
| Intended Use — 진단 목적·자동화 기능 범위 | HIGH | IFU 내 의도된 사용·금기사항 명확 기재 |
| Usability Testing (IEC 62366-1) | MEDIUM | Summative Testing 보고서 (Critical Task 기반) |
| Algorithm (AI/ML) 사용 시 PCCP | MEDIUM | PCCP 포함 여부 명확화 또는 PCCP 섹션 준비 |

---

## 9. 대응 타임라인 플로우

```
AI Request 수령 (Day 0)
        │
        ▼
[Day 0~2] 결함 분해·분류표 작성 / 심각도 평가
        │
        ▼
[Day ≤10] Clarification Teleconference 요청
        │  → 48시간 전 질문 목록 Lead Reviewer 이메일 발송
        │
        ▼
[Day 10~21] SIR Meeting 요청서 작성·제출
        │   (초안 프로토콜·예비 데이터 첨부)
        │
        ▼
[Day ~42] SIR Meeting 개최 → FDA Feedback 수렴
        │
        ├─ [단순 명확화] → 즉시 응답서 작성 → Day ≤90 제출
        │
        └─ [신규 시험 필요] → 시험 의뢰·수행 (Day 42~140)
                │
                ▼
           [Day 140~170] 응답서 작성·내부 검토·eCopy 준비
                │
                ▼
           [Day ≤180] FDA DCC eCopy 제출 (기한 절대 준수)
                │
                ▼
           [제출 후 ~3주] FDA 검토 → 완전성 확인
                │
                ├─ 완전: Clock 재개 → 잔여 ~30 FDA Days → SE/NSE
                └─ 불완전: 미해결 항목 이메일 통보 → Day 0 기준 180일 유지
```

---

## 10. 핵심 실수 방지 목록 (Anti-Patterns)

| 흔한 실수 | 결과 | 올바른 접근 |
|---|---|---|
| 일부 결함만 응답 (부분 응답) | Clock 미재개 → NSE 위험 | 모든 결함 번호 1:1 응답 필수 |
| "이 정보면 승인받을 수 있나요?" FDA에 질문 | FDA 답변 불가 | 명확화는 범위·형식에만 한정 |
| 10일 이내 명확화 회의 요청 누락 | SIR 일정 지연 → 응답 여유 감소 | Day 1~2에 즉시 요청 |
| 응답서에 새 Indication for Use 추가 | **신규 510(k) 제출 요구** | 원래 IFU 범위 내에서만 응답 |
| 신규 기술·설계 변경 정보 무단 제출 | 심사 재시작 요구 | Q-Sub 먼저, 또는 응답 범위 내 제한 |
| 응답 기간 무시 → 180일 초과 | **자동 Withdrawal** | 캘린더 알림·마일스톤 관리 필수 |

---

## 11. 제출 전 최종 체크리스트

- [ ] AI Letter의 모든 결함 항목 번호 누락 없이 응답
- [ ] 각 응답에 명확한 근거 자료(부록 참조) 연결
- [ ] 부록 번호 체계 일관성 확인
- [ ] 부록 각 표지: "What this is / What it proves / Where it's referenced" 포함
- [ ] 응답서 커버 레터: 510(k) 번호·AI Request 날짜·결함 수 명시
- [ ] 새로운 Indication for Use 또는 신기술 추가 없음 확인
- [ ] eCopy 형식 준수 (21 CFR 807.87 규정, eSTAR 권장)
- [ ] Day 180 이전 FDA DCC 제출 완료 (배송 시간 감안, Day 175 이내 권고)
- [ ] MDUFA V 제출 요건 (User Fee 납부 확인, eCopy/eSTAR 첨부)
- [ ] 제출 후 3주 이내 FDA 완전성 확인 이메일 모니터링

---

## 12. MFDS·EU MDR 동등 절차 핵심 요약

### MFDS 보완 요청 (참고)
- 의료기기법 시행규칙 기반, MFDS 의료기기 전자민원 시스템(emedi.mfds.go.kr) 통보
- 처리 기한 정지 (보완 기간 제외)
- 보완 사이클: 통상 1~2회 허용 (주요 보완 미해결 시 반려)
- 응답 기한: 보완 요청 수령 후 60일 이내 (연장 신청 가능)
- **공통 보완 사유**: 임상 근거 부족, 전기안전 시험 미비, 성능 기준 미명시, 기술문서 항목 누락

### EU MDR NB Deficiency Letter (참고)
- MDR Annex IX § 4.4 기반 (Class IIb/III 기술문서 심사)
- NB별 내부 절차·기한 상이 (BSI/TÜV SÜD/SGS 등 각 NB SOP 확인 필수)
- 통상 30~90일 응답 기한 (NB 계약서 규정 우선)
- MDCG 2020-1 및 NB OPAM(Operation Procedure) 준수
- **공통 Deficiency**: GSPR 입증 근거 부족, Clinical Evaluation 동등성 불충분, PMCF 계획 미비, 위험관리파일 ISO 14971 부적합
