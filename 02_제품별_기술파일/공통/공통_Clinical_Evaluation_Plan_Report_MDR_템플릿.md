> 최종 갱신: 2026-05-06 (자동보강 #20)
> 근거: https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:02017R0745-20250110 | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_1_guidance_clinic_eva_md_software_en_0.pdf | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_6_guidance_sufficient_clinical_evidence_en_0.pdf | https://health.ec.europa.eu/document/download/1b5f9cc0-cea0-4459-921f-eaf4b4f80983_en?filename=mdcg_2023-7_en.pdf

# 3개 제품 공통 Clinical Evaluation Plan / Clinical Evaluation Report (MDR) 템플릿

## 1. 규제 근거 및 적용 범위

### 1.1 규제 근거

| 문서 | 조항 | 내용 |
|---|---|---|
| MDR EU 2017/745 (2025-01-10 통합본) | Article 61(1) | 임상평가 계획·수행·평가·갱신 의무 |
| MDR | Article 61(3) | Class IIa·IIb·III: 전 수명주기 임상평가 문서 갱신 |
| MDR | Article 61(4) | Class III·이식형: 임상시험 원칙; 동등성 입증 시 면제 가능 |
| MDR | Article 61(5) | CER: 임상증거 종합 문서, Annex II § 6.1에 포함 |
| MDR | Article 61(6)(b) | 임상시험 불필요 예외: 충분한 임상데이터 존재 시 |
| MDR | Annex XIV Part A | CEP 필수 요소 + 임상증거 평가 방법론 |
| MDR | Annex XIV Part B | PMCF Plan / PMCF Evaluation Report |
| MDCG 2020-1 | Rev. 1 | SaMD 임상평가 가이던스 |
| MDCG 2020-5 | Rev. 1 | 동등성(Equivalence) 기준 및 입증 방법 |
| MDCG 2020-6 | — | 충분한 임상증거(Sufficient Clinical Evidence) 기준 |
| MDCG 2023-7 | — | Article 61(4) 실무 적용 가이던스 |
| MEDDEV 2.7/1 | Rev. 4 | 임상평가 방법론 (MDR 하에서도 참조 문서) |

### 1.2 자사 제품별 MDR 등급 및 임상평가 경로

| 제품 | MDR 분류 규칙 | 등급 | 임상시험 필요 여부 | 권장 경로 |
|---|---|---|---|---|
| X-ray Detector | Rule 10 (진단 방사선) | Class IIa | Art.61(6)(b) 적용 가능 | 동등성 + 문헌 임상데이터 |
| Handheld X-ray Source | Rule 10 + Rule 9 (방사선 발생기) | Class IIb | Art.61(6)(b) 적용 가능 | 동등성 + 문헌 임상데이터 |
| 촬영실 GUI SW (standalone) | Rule 11 (SaMD) | Class IIa (진단보조) | Art.61(6)(b) 적용 가능 | MDCG 2020-1 기반 문헌 + 성능 데이터 |

> **주의**: Class III 또는 이식형이면 Art.61(4) 임상시험 원칙 적용. 자사 3개 제품은 모두 IIa/IIb이므로 동등성 경로 활용 가능하나, NB와 Pre-submission 협의 권장.

---

## Part A: Clinical Evaluation Plan (CEP) 템플릿

### 문서 표지

| 항목 | 내용 |
|---|---|
| 문서 번호 | CEP-[제품코드]-[버전] |
| 제품명 | [제품 정식 명칭] |
| 모델 번호 | [모델 번호] |
| MDR 분류 | [Class IIa / IIb] |
| 문서 버전 | [버전] |
| 작성일 | [YYYY-MM-DD] |
| 작성자 | [이름, 직책] |
| 검토자 | [이름, 직책] |
| 승인자 | [이름, 직책] (PRRC 또는 책임자) |
| 다음 갱신 예정일 | [YYYY-MM-DD] |

---

### CEP Section 1: 임상평가 목적 및 범위

#### 1.1 목적

본 Clinical Evaluation Plan은 MDR Article 61 및 Annex XIV Part A에 따라 [제품명]의 안전성·성능·임상 혜택을 입증하기 위한 임상평가 방법론, 데이터 수집 계획, 평가 기준을 정의한다.

#### 1.2 제품 범위

```
제품명: [제품 정식 명칭]
의도된 목적(Intended Purpose): [MDR Article 2(12) 기준 기재]
  예시)
  - X-ray Detector: 의료용 방사선 디지털 영상 획득 장치로,
    진단 방사선 촬영 시 X-ray를 디지털 신호로 변환하여
    진단 영상을 생성하는 데 사용됨.
  - Handheld X-ray Source: 구강외 방사선 촬영에 사용되는
    휴대형 X-ray 발생기로, 치과·정형외과 이동 촬영 목적.
  - 촬영실 GUI SW: 방사선 촬영 워크플로우 관리 및
    영상 획득 파라미터 설정을 위한 Standalone SaMD.
목표 사용자: [방사선사, 임상의 등]
목표 환자군: [성인/소아, 해당 시]
사용 환경: [병원 촬영실, 이동 촬영 등]
금기: [해당 시 기재]
```

#### 1.3 임상평가 단계

```
□ 초기 CE (Pre-market): 시판 전 임상평가 → CER 작성
□ 갱신 CE (Post-market): PMCF 데이터 반영 → CER 갱신 (최소 1회/년 또는 중대 변경 시)
□ 현재 단계: [초기 / 갱신 회차: N]
```

---

### CEP Section 2: 임상평가 팀 및 평가자 자격

#### 2.1 평가자 자격 요건 (MDR Annex XIV Part A §1)

| 역할 | 최소 자격 요건 | 담당자 |
|---|---|---|
| Lead Clinical Evaluator | 해당 의료 전문성 10년 이상 또는 관련 학위 + 5년 경험; 관련 GCP 교육 수료 | [이름] |
| Co-evaluator (방사선 의학) | 방사선의학 전공의 또는 동등 경력 | [이름] |
| Statistics / Literature Reviewer | 임상연구 또는 Systematic Review 경험 | [이름] |

> 평가자 CV를 기술문서에 첨부 필수 (Annex XIV §1 명시 요건).

#### 2.2 독립성 선언

모든 평가자는 이해충돌 없음을 서면 선언함. 선언서 참조: [문서 번호].

---

### CEP Section 3: 현재 기술 수준 (State of the Art)

MDR Annex XIV Part A §1에 따라 다음 항목을 정의한다:

#### 3.1 의료적 조건 및 대안 치료법

```
대상 조건: [X-ray 진단 적응증]
현재 표준 치료/진단: [예: 디지털 방사선 촬영(DR), CR, 초음파 등]
대안 기술: [CT, MRI, 초음파 등 — 해당 시]
```

#### 3.2 기존 동등 제품의 임상 증거 요약

| 동등 제품 | 제조사 | CE 등급 | 주요 임상 데이터 출처 |
|---|---|---|---|
| [제품명] | [제조사] | [등급] | [510(k)/CE 번호, 논문 등] |
| [제품명] | [제조사] | [등급] | |

#### 3.3 조화 표준 및 가이던스

| 표준/가이던스 | 버전 | 적용 항목 |
|---|---|---|
| IEC 60601-1 | Ed 3.2 (2005+A1+A2) | 전기·기계 안전 |
| IEC 60601-1-3 | 2008+A1+A2 | 방사선 방호 |
| IEC 60601-2-28 | 2017 | X-ray Source 특이사항 |
| IEC 60601-2-54 | 2022 | 촬영·투시 특이사항 |
| IEC 62220-1-1 | 2015 | Detector DQE 성능 |
| ISO 14971 | 2019 | 위험관리 |
| IEC 62366-1 | 2015+AMD1:2020 | 사용성 |
| MEDDEV 2.7/1 | Rev. 4 | 임상평가 방법론 |
| MDCG 2020-1 | — | SaMD 임상평가 (GUI SW) |

---

### CEP Section 4: 임상데이터 수집 범위 및 방법

#### 4.1 임상데이터 유형 (Annex XIV Part A §3)

| 데이터 유형 | 수집 대상 | 수집 방법 | 해당 여부 |
|---|---|---|---|
| **4.1.1 문헌 데이터** (자사 제품 관련) | 자사 제품의 시판 후 문헌 | PubMed, Embase, CENTRAL 체계적 검색 | □ 해당 □ 해당 없음 |
| **4.1.2 문헌 데이터** (동등 제품 관련) | 동등 제품 임상 연구 | 동일 검색 전략 적용 | □ |
| **4.1.3 임상경험 데이터** | 시판 후 PMS, PMCF, 고객 불만, Vigilance | PMS 데이터베이스 | □ |
| **4.1.4 임상시험 데이터** | 제조사 의뢰 임상시험 (해당 시) | CIP/CSP/CSR | □ |

#### 4.2 문헌 검색 전략

```
검색 DB: PubMed, Embase, Cochrane CENTRAL, KOREAMED (MFDS용)
검색 기간: [YYYY-MM-DD] ~ [YYYY-MM-DD]
검색 언어: 영어, 한국어 (필요 시 기타)
주요 검색어 예시:
  - X-ray Detector: "digital radiography detector" OR "flat panel detector" AND "clinical performance" OR "image quality"
  - Handheld X-ray Source: "handheld X-ray" OR "portable X-ray generator" AND "radiation dose" OR "image quality"
  - GUI SW: "radiography software" OR "acquisition software" AND "usability" OR "clinical workflow"
포함 기준 (Inclusion): 동등 제품 또는 자사 제품 관련 임상 연구, RCT/코호트/케이스시리즈, 출판 후 동료심사 완료
제외 기준 (Exclusion): 전임상(in vitro/in vivo 동물), 초록만 존재, 중복 데이터
PRISMA 플로우차트: [첨부 문서 번호]
```

#### 4.3 문헌 평가 체계

```
Level 1: QUADAS-2 (진단 정확도 연구) 또는 GRADE
Level 2: 개별 연구 비뚤림위험(Risk of Bias) 평가
Level 3: 전체 증거 합성 → 안전성·성능·임상혜택 결론
```

---

### CEP Section 5: 동등성 평가 계획 (MDCG 2020-5 기반)

#### 5.1 동등성 주장 여부

```
동등성 주장: □ 예  □ 아니오
동등 제품: [제품명, 제조사, CE 번호 또는 510(k) 번호]
```

#### 5.2 동등성 3대 기준 (Annex XIV Part A §3(a))

| 기준 | 요건 | 자사 제품 | 동등 제품 | 동등 여부 |
|---|---|---|---|---|
| **임상적 (Clinical)** | 동일 질환·조건, 동일 신체부위, 유사 환자군, 유사 중증도 | [기재] | [기재] | □ 동등 □ 차이 존재 |
| **기술적 (Technical)** | 동일 설계 원리, 동일 사용 조건, 유사 사양, 동일 배치 방법 | [기재] | [기재] | □ |
| **생물학적 (Biological)** | 동일 소재, 동일 접촉 조직, 동일 접촉 기간 | [기재] | [기재] | □ |

> 차이 존재 시: 임상적으로 유의한 영향이 없음을 정당화하는 과학적 근거 필수 (MDCG 2020-5 §7).

#### 5.3 동등성 데이터 접근 권한

```
동등 제품 제조사와의 관계: □ 동일 법인 □ 계약 접근 □ 공개 데이터만 사용
계약/접근 문서: [문서 번호]
```

> MDR Annex XIV §3(a) 명시: 동일 법인 제품이 아니면 기술데이터 접근 계약 필수.

---

### CEP Section 6: 임상평가 평가 기준 (Acceptance Criteria)

#### 6.1 안전성 기준

| 항목 | 기준 |
|---|---|
| 중대 이상 발생률 (SAE) | [예: < 1% 또는 동등 제품 대비 비열등] |
| Serious Incident (MDR Art.87) | 0건 (조사 후 제품 원인으로 귀속 시) |
| 방사선 피폭 선량 | IEC 60601-1-3 허용 한도 내 |
| 배터리 안전 (Handheld) | IEC 62133-2 적합 |

#### 6.2 성능 기준

| 항목 | 기준 |
|---|---|
| X-ray Detector DQE | IEC 62220-1-1: DQE(0) ≥ [XX]%, DQE(f_N/2) ≥ [XX]% |
| 영상 품질 (MTF, NPS) | IEC 62220-1-1 기반 합격 기준 |
| Handheld 출력 정확도 | ±[X]% 이내 (IEC 60601-2-28) |
| GUI SW 사용성 | IEC 62366-1 최종 사용성 평가 합격 |
| 진단 정확도 (해당 시) | AUC ≥ [XX] 또는 Sensitivity/Specificity 기준 |

#### 6.3 임상 혜택 기준

```
주요 임상 혜택: [예: 진단 정확도 개선, 방사선 피폭 저감, 워크플로우 효율화]
측정 지표: [예: 진단 일치율, 재촬영률, 검사 소요 시간]
목표값: [기재]
```

---

### CEP Section 7: 임상평가 일정

| 단계 | 활동 | 목표 완료일 |
|---|---|---|
| 문헌 검색 | DB 검색·스크리닝 | [YYYY-MM-DD] |
| 데이터 추출 | 선정 문헌 데이터 추출·품질 평가 | [YYYY-MM-DD] |
| 동등성 평가 | 동등 제품 비교 분석 | [YYYY-MM-DD] |
| CER 초안 작성 | 결론 종합 | [YYYY-MM-DD] |
| 내부 검토 | Lead Evaluator + PRRC 승인 | [YYYY-MM-DD] |
| CER 최종본 | Annex II §6.1에 통합 | [YYYY-MM-DD] |
| PMCF Plan 작성 | Annex XIV Part B 기반 | [YYYY-MM-DD] |

---

## Part B: Clinical Evaluation Report (CER) 템플릿

### 문서 표지 (CEP와 동일 양식)

---

### CER Section 1: 요약 (Executive Summary)

```
[제품명]에 대한 임상평가 결과:

안전성: [결론 1~2줄]
성능: [결론 1~2줄]
임상 혜택: [결론 1~2줄]
CE 마킹 적합성 판단: □ 적합  □ 조건부 적합 (조건: )  □ 불적합
작성자 결론: [Lead Clinical Evaluator 서명]
```

---

### CER Section 2: 제품 및 의도된 목적 기술

CEP Section 1.2 내용을 CER에 전재하되, 최신 버전 기준으로 업데이트.

---

### CER Section 3: 임상 배경 및 현재 기술 수준

CEP Section 3 내용 기반으로 완성. 다음 추가:

```
3.1 해당 의료 조건의 역학 (Epidemiology): [데이터]
3.2 현재 진단 표준 치료: [기재]
3.3 미충족 의료 수요 (Unmet Need): [기재]
3.4 기술 수준 결론: [현 기술 수준 대비 자사 제품 위치]
```

---

### CER Section 4: 임상데이터 수집 및 분석 결과

#### 4.1 문헌 검색 결과 요약

| 구분 | 건수 |
|---|---|
| 초기 검색 결과 | [N] |
| 중복 제거 후 | [N] |
| 제목·초록 스크리닝 후 | [N] |
| 전문 검토 후 최종 선정 | [N] |

#### 4.2 안전성 데이터 분석

| 데이터 소스 | 연구 수 | 환자 수 | 주요 이상사례 | 결론 |
|---|---|---|---|---|
| 자사 제품 시판 후 PMS | — | [N] | [기재] | [기재] |
| 동등 제품 문헌 | [N] | [N] | [기재] | [기재] |
| 자사 임상시험 (해당 시) | — | [N] | [기재] | [기재] |

#### 4.3 성능 데이터 분석

| 성능 지표 | 측정값 | 합격 기준 | 합격 여부 | 데이터 출처 |
|---|---|---|---|---|
| DQE(0) [Detector] | [XX]% | ≥ [XX]% | □ 합격 | [문서 번호/논문] |
| MTF [Detector] | [XX] | ≥ [XX] | □ | |
| 출력 정확도 [Handheld] | ±[X]% | ±[X]% | □ | |
| 사용성 평가 합격 [GUI SW] | [결과] | IEC 62366-1 | □ | |

#### 4.4 임상 혜택 분석

```
주요 혜택 1: [예: 재촬영률 감소] — 데이터: [N 연구, 평균 X% 감소]
주요 혜택 2: [예: 진단 일치율] — 데이터: [N 연구, AUC X.XX]
혜택-위험 균형 결론: [기재]
```

---

### CER Section 5: 동등성 평가 결과

CEP Section 5 기반으로 평가 완료 시 결론 기재:

```
동등성 결론: □ 동등성 입증됨  □ 입증 불충분
근거: [핵심 근거 요약]
차이 및 정당화: [차이 항목 및 임상적 비유의성 근거]
```

---

### CER Section 6: 결론

#### 6.1 안전성 결론

```
임상평가 결과 [제품명]은 의도된 목적 하에서 허용 가능한 수준의
안전성을 나타내는 충분한 임상증거가 있음.
주요 근거: [2~3줄 요약]
잔여 위험 및 수용 근거: [기재]
```

#### 6.2 성능 결론

```
[제품명]은 의도된 목적에 부합하는 임상 성능을 나타냄.
합격 기준 대비 결과: [요약]
```

#### 6.3 혜택-위험 결론

```
혜택이 위험을 상회하며, CE 마킹 유지에 충분한 임상증거가 존재함.
```

#### 6.4 PMCF 필요성 판단

```
PMCF 실시 여부: □ 필요  □ 불필요 (사유 필수 기재)
사유: [기재]
PMCF Plan 문서: [문서 번호] (필요 시)
```

---

### CER Section 7: 임상평가 갱신 계획

| 갱신 트리거 | 조건 |
|---|---|
| 정기 갱신 | 최소 1회/년 (Class IIb), 또는 PMCF 데이터 수령 시 |
| 비정기 갱신 | 중대 변경(Art.83), Serious Incident, FSCA, NB 요청 |
| 다음 예정 갱신일 | [YYYY-MM-DD] |

---

## 3. 자사 3개 제품별 주요 고려사항

### 3.1 X-ray Detector (Class IIa)

| 항목 | 고려사항 |
|---|---|
| 임상평가 경로 | Art.61(6)(b): 충분한 동등 제품 문헌 + 자사 성능 데이터 |
| 핵심 임상 지표 | DQE, MTF, NPS, 영상 진단 정확도 |
| 동등성 | FPD(Flat Panel Detector) 기존 제품 대비 물리적·임상적 동등성 |
| 안전성 이슈 | 방사선 피폭 선량, 전기 안전 (IEC 60601-1) |
| PMCF | 레지스트리 데이터, 주기적 문헌 검색 |

### 3.2 Handheld X-ray Source (Class IIb)

| 항목 | 고려사항 |
|---|---|
| 임상평가 경로 | Art.61(6)(b): Class IIb이나 비이식형, 충분한 동등 제품 문헌 가능 |
| 핵심 임상 지표 | 방사선 출력 정확도, 산란방사선, 영상 품질, 핸들링 안전 |
| 동등성 | 기존 휴대형 X-ray 발생기 (예: MinXray 등) 대비 비교 |
| 안전성 이슈 | 방사선 방호(IEC 60601-1-3), 배터리 안전(IEC 62133-2), 인체공학 |
| PMCF | 필드 사용 실적 조사, 사용자 설문, PMS 데이터 |
| NB 협의 | Class IIb → 심사 전 Pre-submission Meeting 권장 |

### 3.3 촬영실 GUI SW (Class IIa, SaMD)

| 항목 | 고려사항 |
|---|---|
| 임상평가 경로 | MDCG 2020-1 기반: 성능 데이터 + 사용성 + 워크플로우 개선 문헌 |
| 핵심 임상 지표 | 워크플로우 효율성, 사용자 오류율, 재촬영률, 진단 지원 정확도 |
| 동등성 | 유사 기능 촬영 SW 대비 비교 (동일 알고리즘·출력 기준) |
| 안전성 이슈 | 소프트웨어 결함으로 인한 오진 방지 (IEC 62304 위험관리 연계) |
| PMCF | 사용성 실세계 데이터 수집, 오류 이벤트 추적 |
| 특이사항 | AI/알고리즘 포함 시 PCCP(Predetermined Change Control Plan) 연계 |

---

## 4. 지역별 임상평가 비교 요약

| 항목 | MDR (EU) | FDA (미국) | MFDS (한국) |
|---|---|---|---|
| 근거 법령 | MDR Art.61 + Annex XIV | 21 CFR Part 820.30(g) Design Validation; CDRH Guidance | 의료기기법 시행규칙 별표 3 기술문서 |
| 공식 문서명 | CEP + CER | Clinical/Performance Testing Summary (510(k)) | 임상시험 자료 또는 문헌 자료 |
| 임상시험 요건 | Class III·이식형 원칙; Art.61(6) 예외 | 510(k): 동등성 입증 시 임상시험 불필요; De Novo/PMA: 요구 | 2등급 이하: 임상시험 대부분 불필요; 3등급: 임상시험 자료 요구 |
| 동등성 요건 | MDCG 2020-5 (3대 기준: Clinical/Technical/Biological) | Predicate Device (K번호 공개 510(k) 활용) | 동등 제품 임상 문헌 활용 |
| NB/심사기관 검토 | NB: CEP·CER·PMCF Plan 전체 심사 | FDA: 제출 자료 내 성능 요약 검토 | 식약처: 기술문서 심사 시 임상자료 섹션 검토 |
| 갱신 주기 | Class IIb 이상: 최소 1회/년 | 변경사항 발생 시 | 허가 후 변경 사항 기반 |
| 자사 제품 핵심 전략 | CEP 수립 → 문헌 검색 → CER 작성 → PMCF Plan | 510(k) eSTAR 내 성능 요약 작성 | 기술문서 임상 섹션 작성 |

---

## 5. 문서 이력

| 버전 | 날짜 | 변경 내용 | 작성자 |
|---|---|---|---|
| 1.0 | 2026-05-06 | 최초 작성 (자동보강 #20) | RA KB Auto |
| | | | |
