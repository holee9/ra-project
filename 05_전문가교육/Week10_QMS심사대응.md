> 최종 갱신: 2026-06-01 (자동보강 #76)
> 근거: https://www.fda.gov/medical-devices/postmarket-requirements-devices/quality-management-system-regulation-qmsr | https://www.fda.gov/media/191960/download | https://www.fda.gov/media/191961/download | https://emedi.mfds.go.kr/msismext/emd/bif/gmpProcessGuideView.do | https://www.mfds.go.kr/brd/m_1060/down.do?brd_id=data0011&seq=15382&data_tp=A&file_seq=1

# Week 10: QMS 심사 대응

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 10/12)
> **소요 시간**: 이론 2시간 + 실습 2시간 + 평가 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. 3개 지역 QMS 심사 체계 (MFDS GMP / FDA QMSR / MDR NB)의 구조와 차이를 설명한다.
2. FDA QMSR (CP 7382.850, 2026-02-02 발효) 기반 Risk-Based Inspection 절차를 파악한다.
3. MFDS KGMP 현장심사 준비 체크리스트를 적용한다.
4. MDR NB 심사 (Annex IX/X/XI) 단계별 대응 전략을 수립한다.
5. 지적 사항 (Deficiency / OAI) 유형별 대응 방법을 선택한다.
6. 자사 3개 제품 QMS 심사 일정과 위험 요인을 맵핑한다.

---

## 2. QMS 심사 체계 개요 — 3개 지역 비교

### 2.1 3개 지역 QMS 심사 구조 매트릭스

| 비교 항목 | MFDS (KGMP) | FDA (QMSR) | EU MDR (NB) |
|---|---|---|---|
| **근거 규정** | 의료기기법 §28, 고시 제2024-88호 (KGMP 기준) | 21 CFR Part 820 (QMSR, 2026-02-02 발효) | MDR 2017/745 Annex IX/X/XI |
| **기반 표준** | ISO 13485:2016 + 국내 추가 요건 | ISO 13485:2016 (IbR, 2026-02-02~) | ISO 13485:2016 |
| **심사 기관** | 식약처 또는 지방식약청 | FDA 조사관 (ORA/CDRH) | NB (Notified Body) — TÜV, BSI 등 |
| **심사 유형** | 정기심사 (3년), 변경심사, 최초심사 | 정기 검사 (Surveillance), 허가 전 검사 (Pre-approval) | 최초 심사 + 연간 감시 (Surveillance) + 갱신 심사 (Renewal) |
| **핵심 검사 항목** | QMS 문서 + 제조 공정 + GMP 기록 현장 확인 | Risk-based — 제품 위험군·과거 성적·불만 이력 기반 선정 | 기술문서 적합성 + QMS 전반 |
| **결과 등급** | 적합 / 부적합 / 조건부 적합 | VAI (Voluntary Action Indicated) / OAI (Official Action Indicated) / NAI (No Action Indicated) | Certificate 발행 / Suspend / Withdraw |
| **후속 조치** | 보완 요구 (15~30일), 청문, 취소 | Warning Letter → Recall → Import Alert | Corrective Action + Re-audit |

### 2.2 QMS 심사 공통 점검 영역 (ISO 13485 기반)

```
ISO 13485 심사 핵심 조항 (3개 지역 공통)
─────────────────────────────────────────────
§4 QMS 일반 요건
  └ 4.2.3 의료기기 파일(DHF)
  └ 4.2.4 문서 관리
  └ 4.2.5 기록 관리
§5 경영책임
  └ 5.6 경영 검토 (Management Review)
§6 자원 관리
  └ 6.2 인적 자원 (훈련 기록)
  └ 6.3 인프라 (장비 관리·교정)
§7 제품 실현
  └ 7.3 설계 및 개발 (Design Control)
  └ 7.4 구매 (Supplier Control)
  └ 7.5 생산 및 서비스 제공 (제조 기록·멸균·청정도)
  └ 7.6 모니터링·측정 장비 관리 (교정 기록)
§8 측정·분석·개선
  └ 8.2.1 피드백 (Feedback System)
  └ 8.2.4 내부 심사 (Internal Audit)
  └ 8.3 부적합 제품 관리
  └ 8.5.2 CAPA
─────────────────────────────────────────────
```

---

## 3. FDA QMSR 검사 심화 (2026-02-02 발효)

### 3.1 QMSR 전환 배경

| 항목 | 기존 (QSR, 21 CFR 820) | 신규 (QMSR, 21 CFR 820) |
|---|---|---|
| 발효일 | 1996년 시행 | **2026-02-02** |
| ISO 13485 통합 | 미통합 (별도 요건) | **ISO 13485:2016 IbR (Incorporation by Reference)** |
| 핵심 변경사항 | QSIT 4 Subsystem 구조 | **Risk-based inspection** 전환 |
| 검사 지침서 | CP 7382.845 (구) | **CP 7382.850 (신)** |
| 추가 요건 | 21 CFR 820 고유 조항 | ARR (Additional Requirements for Regulators) — QMSR 고유 추가 요건 3개 |

### 3.2 QMSR 추가 요건 3개 (ARR — 기존 QSR 계승)

| 요건 | 내용 | 비고 |
|---|---|---|
| **21 CFR 820.30(j): Design History File** | DHF 유지·관리 의무 | ISO 13485 §4.2.3 의료기기 파일과 연계 |
| **21 CFR 820.198: Complaint Files** | 불만 기록 시스템 의무 | ISO 13485 §8.2.1 피드백보다 강화 |
| **21 CFR 820.250: Statistical Techniques** | 통계적 방법 절차 문서화 | 검사·샘플링 근거 기록 |

### 3.3 Risk-Based Inspection (CP 7382.850)

**검사 우선순위 결정 인자**:

```
위험 기반 검사 선정 기준
─────────────────────────────────
(High Risk → 검사 빈도 증가)
1. Product Risk Class: Class III > Class II > Class I
2. 과거 OAI/Warning Letter 이력
3. MDR (Medical Device Report) 보고 건수 급증
4. Recall 이력 (Class I/II)
5. Consumer Complaint 증가 추세
6. 오랜 기간 미검사 (Time Since Last Inspection)
─────────────────────────────────
```

**검사 유형 및 점검 범위**:

| 검사 유형 | 점검 범위 | X-ray 적용 |
|---|---|---|
| Surveillance Inspection | 전체 QMS 대표 샘플 — Risk-based 선택 | 3~5년 주기 일반 검사 |
| Pre-approval Inspection (PAI) | 510(k)/PMA 제출 후 — 특정 DHF·프로세스 집중 | 미국 신규 제품 허가 신청 시 |
| For-cause Inspection | 불만·MDR 급증·Recall 후 — 해당 공정 집중 | 이상사례 발생 후 즉각 검사 |
| Follow-up Inspection | 이전 OAI 조치 이행 확인 | Warning Letter 후 6~12개월 |

### 3.4 FDA 검사 결과 등급 및 대응

| 등급 | 의미 | 대응 전략 |
|---|---|---|
| **NAI** (No Action Indicated) | 적합 — 조치 불필요 | 검사 보고서 보관 |
| **VAI** (Voluntary Action Indicated) | 경미한 지적 — 자발적 시정 | 시정 계획(CAPA) 자발적 제출 권장 |
| **OAI** (Official Action Indicated) | 중대 위반 — 공식 조치 예정 | 483 Observations 수령 → 15영업일 내 서면 응답 → Warning Letter 예방 |

**FDA-483 대응 템플릿**:

```
FDA Form 483 Observation 응답 구조
────────────────────────────────────────────
[Observation 번호 및 원문 인용]

1. Correction (즉각 조치)
   - 언제, 무엇을, 어떻게 수정했는가
   - 완료일: YYYY-MM-DD

2. Root Cause Analysis
   - 왜 이 문제가 발생했는가
   - 5 Whys / Fishbone 분석 결과

3. Corrective Action (시스템 개선)
   - 재발 방지를 위한 절차 변경
   - 담당자 교육 계획
   - 완료 예정일: YYYY-MM-DD

4. Effectiveness Check
   - 조치 효과 확인 방법 및 일정
   - KPI / 내부심사 일정

5. Evidence Attachments
   - 교정된 SOP, 훈련 기록, 사진 등
────────────────────────────────────────────
응답 제출 기한: 483 수령 후 15 영업일 이내
```

---

## 4. MFDS KGMP 심사 대응

### 4.1 KGMP 심사 유형 및 일정

| 심사 유형 | 주기 | 준비 기간 | 주요 서류 |
|---|---|---|---|
| **최초 심사** | 허가 전 1회 | 6~12개월 준비 | QMS 전체 문서, 공장 설비 |
| **정기 심사** | 3년마다 | 3~6개월 준비 | 갱신 QMS 문서, 변경 이력 |
| **변경 심사** | 생산 공정·조직 변경 시 | 변경 발생 즉시 | 변경 내역·영향 평가 |
| **해외 제조소 심사** | 최초 등록 + 3년 | 현장 일정 조율 필요 | 현장 방문 or 서류 심사 |

### 4.2 KGMP 현장심사 준비 체크리스트

**서류 준비 (심사 4주 전)**

```
□ QM (Quality Manual) 최신본 확인
□ 모든 SOP 최종 개정본 + 승인 서명 완비
□ 제품별 DHF 파일 정리 (ISO 13485 §4.2.3)
□ 불만 처리 기록 최근 3년치
□ CAPA 기록 (개시~종결 전 이력)
□ 내부 심사 보고서 (최근 1회 이상)
□ 경영 검토 회의록 (최근 1회 이상)
□ 교정/검교정 기록 (모든 계측 장비)
□ 공급업체 평가 기록 (Approved Vendor List)
□ 훈련 기록 (직책별 교육 이수)
□ 제조 배치 기록 (최소 3 Lot 이상)
```

**현장 준비 (심사 1주 전)**

```
□ 시험 장비 정상 가동 확인
□ 청정도 구역 기록 현행 유지
□ 라벨 부착 상태 확인 (모든 장비·원자재)
□ 시험 성적서 원본 비치
□ 입고 검사 기록 정비
□ 부적합 제품 격리 공간 준비
```

### 4.3 MFDS 보완 요구 대응 전략

```
보완 요구 수령 후 처리 흐름
─────────────────────────────
1. 보완 요구서 내용 분류
   - 서류 미비 vs 기준 미충족 vs 설명 부족
2. 보완 기간 내 준비 (일반: 15일, 연장 신청 가능: +15일)
3. 보완 서류 작성
   - 미비 사항별 1:1 매핑 응답
   - 근거 서류 첨부 (시험성적서, 사진, 절차서)
4. 최고 의사결정자 확인·서명
5. 식약처 민원24 또는 e심사시스템 제출
─────────────────────────────
주요 보완 사유 Top 5 (식약처 심사 통계 기반):
  1위: 성능시험 자료 누락 또는 시험 규격 불일치
  2위: DHF 설계 변경 이력 미비
  3위: 위험관리보고서 ISO 14971 미충족
  4위: 사이버보안 요건 대응 미비 (소프트웨어 제품)
  5위: 표시기재(IFU) 규정 불일치
```

---

## 5. MDR NB 심사 대응

### 5.1 적합성 평가 경로별 심사 구조

| 경로 | 적용 기기 | NB 심사 내용 |
|---|---|---|
| **Annex IX** (QMS + TD) | Class IIa/IIb/III (일반) | QMS 심사 + 기술문서 적합성 심사 |
| **Annex X** (Type Examination) | Class III / 이식형 | 대표 기기 기술문서 상세 심사 + 샘플 시험 |
| **Annex XI** (Product Conformity) | Class IIa/IIb (선택 가능) | 최종 QA 검토 또는 Product Verification |

**X-ray 제품 경로 매핑**:

| 제품 | 등급 | 적합성 평가 경로 | NB 심사 중점 |
|---|---|---|---|
| **X-ray Detector** | Class IIa | Annex IX | QMS + 기술문서 §4.1-§6 |
| **Handheld X-ray Source** | Class IIb | Annex IX + 기술문서 심화 | 방사선 안전 성능 데이터 중점 |
| **촬영실 GUI SW (MDSW)** | Class IIa | Annex IX | IEC 62304·IEC 62366·사이버보안 집중 |

### 5.2 NB 심사 단계 및 준비

```
NB 초기 심사 (Initial Certification) 흐름
────────────────────────────────────────────────
Phase 1: 신청 (Application)
  - 기술문서 요약 제출 (Annex II 기반)
  - QMS 범위 정의
  - 제품 코드·EU MDR Article 10 선언서

Phase 2: 완전성 검토 (Completeness Check, 4~6주)
  - 필수 서류 누락 여부 확인
  - Deficiency List → 응답 기한 3~4주

Phase 3: 기술문서 심사 (Technical Documentation Review, 3~6개월)
  - 외부 전문가(Expert Review) 검토 포함
  - Q&A 라운드 1~3 (Round-based review)

Phase 4: QMS 심사 (On-site Audit, 2~3일)
  - 심사 아젠다 사전 합의
  - Major / Minor NC 분류

Phase 5: 인증서 발행 (Certificate Issuance)
  - 최대 유효기간: 5년
  - 이후 연간 감시 심사 (Surveillance)

Phase 6: 연간 감시 심사 (Annual Surveillance)
  - 1~2일 (문서 + 현장 혼합)
  - PSUR 제출 상태·변경 통보 여부 확인
────────────────────────────────────────────────
```

### 5.3 NB Deficiency 유형별 대응

| 유형 | 설명 | 대응 기한 | 대응 방법 |
|---|---|---|---|
| **Minor NC** | 요건 일부 불충족 — 시정 가능 | 30~90일 | CAPA 계획 + 증빙 제출 |
| **Major NC** | 요건 심각 불충족 — 인증 중단 위험 | 3~6개월 | 루트 코즈 + 시스템 개선 + Re-audit |
| **Critical NC** | 환자 안전 위험 — 즉각 조치 필요 | 즉시 | 제품 출하 중단 + FSCA 검토 |

**NB Deficiency Letter 응답 구조**:

```
NB Deficiency Response 구조
────────────────────────────────────────────
1. 각 Deficiency 참조 번호 매핑
2. Understanding of Finding (지적 사항 해석)
3. Response (응답)
   - 현재 증거 제시 (자료가 이미 있을 경우)
   - 또는 수정 계획 (CAPA)
4. Evidence (증빙 자료 목록)
5. Proposed Completion Date
────────────────────────────────────────────
```

---

## 6. 딥싱크: 3개 지역 QMS 심사 비교 매트릭스

### 6.1 핵심 차이점 요약

| 항목 | MFDS KGMP | FDA QMSR | MDR NB |
|---|---|---|---|
| **심사 주기** | 3년 정기 | Risk-based (2~5년, 위험군별) | 연간 Surveillance + 5년 갱신 |
| **심사 중점** | 문서 완비성 + 현장 확인 | Risk-based — 불만·MDR 이력 중심 | 기술문서 적합성 + QMS |
| **소프트웨어 특화** | 디지털의료기기 QMS 별도 (2025-01-24) | IEC 62304 + Cybersecurity (QMSR §820.30) | IEC 62304 + IEC 62366 + MDCG Cybersecurity |
| **결과 공개** | 비공개 원칙 | 483 Warning Letter 공개 (FDA database) | 비공개 원칙 (EUDAMED 일부 공개) |
| **해외 제조소** | 현장심사 또는 서류 대체 (경인청) | 해외검사 또는 Foreign Manufacturing Inspection | NB 제조소 방문 심사 의무 |

### 6.2 3개 제품 심사 위험 요인 맵핑

| 제품 | MFDS 위험 요인 | FDA 위험 요인 | MDR NB 위험 요인 |
|---|---|---|---|
| **X-ray Detector** | 성능시험 규격 IEC 62220-1-1 적용 불일치 | 방사선 안전성 기록 누락 (21 CFR 1020.30) | Class IIa TD — 임상평가 충분성 심사 |
| **Handheld X-ray Source** | 방사선 안전성 시험 기록 미비 | 21 CFR 1020.30 방사선 안전 적합성 | Class IIb — Annex IX 기술문서 심화 심사 |
| **촬영실 GUI SW** | 디지털의료기기 QMS 별도 요건 | IEC 62304 Safety Class C 산출물 완비성 | MDSW 임상평가 (MDCG 2020-1) + 사이버보안 |

---

## 7. 통합 QMS 심사 대응 달력 (권장)

```
QMS 심사 대응 연간 달력 (3개 지역 동시 관리)
──────────────────────────────────────────────────
Q1 (1~3월)
  - 내부 심사 수행 (ISO 13485 §8.2.4)
  - CAPA 상태 검토 및 종결
  - 경영 검토 회의 (Management Review)

Q2 (4~6월)
  - 공급업체 재평가 (Approved Vendor List 갱신)
  - MFDS 정기심사 준비 (3년 주기 도래 시)
  - NB PSUR 제출 준비

Q3 (7~9월)
  - FDA QMSR 자체 gap 분석 (CP 7382.850 기준)
  - 기기 교정·검교정 기록 점검
  - 불만 처리 통계 분석 (Trend Analysis)

Q4 (10~12월)
  - CAPA 실효성 검증 (Effectiveness Check)
  - 연도 별 훈련 기록 완비
  - 다음 연도 내부 심사 일정 수립
──────────────────────────────────────────────────
```

---

## 8. 실습 과제

### 실습 1: FDA-483 응답 초안 작성 (40분)
다음 FDA-483 Observation에 대한 응답 초안을 작성하라.

**Observation**: "Failure to establish and maintain procedures for CAPA, as required by 21 CFR 820.100. Specifically, the CAPA procedure does not include provisions for verifying or validating the effectiveness of the corrective and preventive actions taken."

- Root Cause 분석 (5 Whys 적용)
- Correction 및 Corrective Action 계획 수립
- Evidence 목록 작성

### 실습 2: NB 심사 아젠다 작성 (30분)
X-ray Detector (Class IIa) NB Annex IX 심사에 대비한 2일 심사 아젠다를 작성하라.
- Day 1: 문서 심사 (QMS + 기술문서)
- Day 2: 현장 확인 (제조 공정 + 시험실)

### 실습 3: 3개 지역 동시 심사 갭 분석 (40분)
기존 ISO 13485 QMS에 대해 MFDS KGMP / FDA QMSR / MDR NB 심사 요건 비교 갭 분석표를 작성하라.
- 갭 항목 식별
- 보완 우선순위 설정 (High/Medium/Low)
- 개선 일정 제안

---

## 9. 평가 기준

| 평가 항목 | 만점 | 합격 기준 |
|---|---|---|
| 3개 지역 QMS 심사 구조 비교 | 20점 | 14점 이상 |
| FDA CP 7382.850 Risk-Based Inspection 설명 | 20점 | 14점 이상 |
| MFDS 현장심사 준비 체크리스트 작성 | 20점 | 14점 이상 |
| FDA-483 응답 구조 5단계 나열 | 20점 | 14점 이상 |
| NB Deficiency 유형 3가지 분류·대응 | 20점 | 14점 이상 |
| **합계** | **100점** | **70점 이상 합격** |

---

## 10. 핵심 요약

- **FDA QMSR**: 2026-02-02 발효. QSIT 폐지 → CP 7382.850 Risk-Based Inspection. ISO 13485 IbR. ARR 3개(DHF·Complaint Files·Statistical Techniques) 고유 요건.
- **MFDS KGMP**: 3년 정기심사. 최초 심사 6~12개월 준비. 디지털의료기기 SW QMS 별도 요건(2025-01-24).
- **MDR NB**: Annex IX(QMS+TD) 기본 경로. 연간 감시. Round-based Q&A 3회 이상 예상. Major NC = 인증 중단 위험.
- **X-ray 제품 공통 위험**: 성능시험 기록, 방사선 안전 기록, SW IEC 62304 산출물, 임상평가 문서 완비성.
- **공통 대응 원칙**: 내부심사(Q1) → 공급업체 평가(Q2) → Gap 분석(Q3) → CAPA 종결(Q4) 연간 사이클 유지.

---

> **다음 모듈**: Week 11 — 심사 Q&A 시뮬레이션 (실전 문답 훈련)
