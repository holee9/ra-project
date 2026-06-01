> 최종 갱신: 2026-06-01 (자동보강 #77)
> 근거: https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_1_guidance_clinic_eva_md_software_en_0.pdf | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_5_guidance_clinical_evaluation_equivalence_en_0.pdf | https://health.ec.europa.eu/system/files/2020-09/md_mdcg_2020_6_guidance_sufficient_clinical_evidence_en_0.pdf | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices | https://www.mfds.go.kr/brd/m_74/view.do?seq=44957

# Week 9: 임상평가 — 3지역 체계·방법론·X-ray 적용 전략

> **대상**: X-ray 인허가 담당자 (RA 전문가 교육 Week 9/12)
> **소요 시간**: 이론 2시간 + 실습 2시간 + 평가 30분

---

## 1. 학습 목표

이 모듈을 마치면 다음을 할 수 있어야 한다.

1. MFDS·FDA·MDR 각 지역의 임상평가 법적 요건과 제출 자료를 나열한다.
2. Clinical Evaluation Plan(CEP)과 Clinical Evaluation Report(CER)의 필수 구성 요소를 설명한다.
3. MDR MDCG 2020-5 동등성 3대 기준(기술·생물·임상)을 자사 X-ray 제품에 적용하여 동등 기기 선정 근거를 작성한다.
4. FDA Solid State X-ray Imaging Device 510(k)에서 임상 이미지 평가(방사선의 검토) 방법론을 이해하고 프로토콜 개요를 작성한다.
5. MFDS 2025-07 임상평가 제도(도입 예정)의 적용 대상·제출 자료를 파악한다.
6. PMCF(Post-Market Clinical Follow-up) 계획 수립 기준을 설명한다.
7. 3개 제품별 임상증거 전략(Literature Review vs. 임상시험 vs. PMCF)을 수립한다.

---

## 2. 임상평가 규제 체계 (3개 지역)

### 2.1 MFDS (국내)

#### 법적 근거

| 문서 | 발행·시행 | 비고 |
|---|---|---|
| 의료기기법 제10조 | 현행 | 임상시험 계획 승인 의무 |
| 의료기기법 시행규칙 별표 2 | 2024-08-07 개정 | 기술문서 임상자료 요건 |
| **임상평가 제도 도입 예고** | **2025-07 시행 예정** | 디지털의료기기 140+ 품목 우선 적용 |

#### 2025-07 임상평가 제도 핵심 내용

- **임상평가자료**를 임상시험자료의 별도 유형으로 신설
- 문헌 평가(Literature Review) + 임상경험 데이터 + 임상시험자료를 통합한 **종합 임상증거 패키지** 허용
- 적용 범위: 신기술 의료기기, 디지털의료기기 우선 → 단계적으로 전 의료기기 확대
- 제출 자료: 임상평가계획서 + 임상평가보고서(국제 수준 CER 체계와 유사)

> **📌 X-ray 제품 영향**: Detector·Handheld Source는 방사선 의료기기로 추후 적용 대상 포함 가능. 촬영실 GUI SW는 디지털의료기기로 2025-07 적용 대상.

#### MFDS 임상자료 4가지 유형 (현행 + 신설)

1. **임상시험자료** — 승인된 계획서에 따라 실시한 임상시험 결과
2. **임상경험자료** — 동등품 시판 후 수집된 국내외 PMS 데이터
3. **문헌자료** — PubMed 등 공인 DB 문헌 검색 결과
4. **임상평가자료** (2025-07 신설) — CEP+CER 방식 통합 패키지

---

### 2.2 FDA (미국)

#### 법적 근거 및 주요 가이던스

| 문서 | 발행일 | 비고 |
|---|---|---|
| 21 CFR Part 860 | 현행 | 임상데이터 요건 기반 |
| "Guidance for Solid State X-ray Imaging Devices" | 2006-10 | X-ray Detector 특화 임상 이미지 평가 |
| "Factors to Consider When Making Benefit-Risk Determinations in Medical Device Premarket Approval" | 2019-08 | PMA 경로 Benefit-Risk |
| IMDRF N41 SaMD Clinical Evaluation Framework | 2016-09 | 촬영실 SW 관련 |

#### FDA 510(k) 임상데이터 필요 판단

**임상데이터 불필요** 케이스:
- 예측기기와 기술 특성이 동일하고 성능 시험(벤치)으로 동등성 입증 가능
- Solid State X-ray Detector: IEC 62220-1-1 DQE·MTF·NPS 벤치 데이터로 대체 가능

**임상데이터 필요** 케이스:
- 적응증(IFU)이 예측기기와 다름
- 신기술 특성(예: AI 기반 자동 노출 제어)으로 안전성·유효성 불확실
- 방사선 선량이 예측기기보다 높음

#### X-ray Imaging Device 임상 이미지 평가 방법론

FDA는 Solid State X-ray Detector에 대해 **임상 이미지 비교 평가(Comparative Clinical Image Evaluation)**를 허용:

1. **수집**: 동일 환자/팬텀에서 자사 Detector와 predicate 동시 촬영
2. **평가자**: 미국 면허 방사선의(Licensed US Radiologist) 2명 이상 (blinded)
3. **평가 기준**: 임상 정보량(Clinical Information Content) — 해부학적 구조 가시성, 노이즈, 아티팩트
4. **통계 처리**: Cohen's Kappa(평가자 간 일치도) ≥ 0.6 권장
5. **결론**: `≥ predicate` 또는 `Non-inferior` 입증

---

### 2.3 MDR (유럽)

#### 법적 근거

| 문서 | 조항/발행 | 비고 |
|---|---|---|
| MDR 2017/745 Article 61 | Art. 61 | 임상평가 일반 의무 |
| MDR Annex XIV Part A | — | 임상평가 방법론 |
| MDR Annex XIV Part B | — | PMCF 활동 |
| MDCG 2020-1 | 2020-04 | SW 임상평가 (MDSW) |
| MDCG 2020-5 | 2020-04 | 동등성 판단 기준 |
| MDCG 2020-6 | 2020-04 | 충분한 임상증거 기준 |
| MDCG 2020-13 | 2020-07 | NB CER 심사 템플릿 |
| MDCG 2022-2 | 2022-03 | 임상조사 설계 |
| MDCG 2023-7 | 2023-11 | Art. 61(5) 임상조사 면제 조건 갱신 |

#### MDR Art. 61 임상평가 구조

```
Art. 61(1) 일반 의무: 모든 기기는 임상평가 수행 의무
Art. 61(3) Class I/IIa (비침습·일반): 충분한 임상데이터 (Literature Review 허용)
Art. 61(4) Class IIb/III (이식·고위험): 임상조사 원칙
Art. 61(5) 임상조사 면제 조건: 동등기기 + 충분한 임상증거 입증 시
Art. 61(6) 동등성: MDCG 2020-5 기준 준수
```

#### 동등성 3대 기준 (MDCG 2020-5)

| 기준 | X-ray Detector 예시 | Handheld Source 예시 |
|---|---|---|
| **기술적 동등성** | 동일 검출기 유형(a-Si FPD), 동일 해상도·픽셀 크기 범위 | 동일 관전압 범위(40~70kVp), 동일 포커스·빔각도 |
| **생물학적 동등성** | 동일 환자 접촉 부위·재료(없음 또는 동일 housing) | 동일 방사선 출력 범위(선량 제한 내) |
| **임상적 동등성** | 동일 적응증·사용환경·사용자 집단 | 동일 촬영 부위·진단 목적 |

> **📌 MDR 강조점**: 동등 기기의 기술문서(Technical Documentation)에 접근 가능해야 함. 자사 그룹 내 기기 또는 계약 체결 기기 권장.

---

## 3. 임상평가 방법론

### 3.1 임상평가 방법 선택 트리

```
                   임상평가 시작
                       │
          ┌────────────┴────────────┐
     동등기기 존재?               없음
          │                         │
    동등성 3기준 충족?         임상시험 필요
          │ Yes         │ No        (Art. 62 MDR)
    문헌 평가 + PMCF     동등기기 변경
    (충분성 입증)         또는 임상시험
```

### 3.2 Literature Review 방법론 (PRISMA 기반)

**Step 1 — PICO 설정**
- P(Patient): 진단용 X-ray 촬영이 필요한 환자
- I(Intervention): 자사 X-ray [제품명/모델]
- C(Comparator): 기존 필름/CR/DR 시스템
- O(Outcome): 진단 이미지 품질, 선량, 안전성

**Step 2 — 검색 전략**
- DB: PubMed/MEDLINE, Embase, Cochrane
- 키워드: "digital radiography", "flat panel detector", "DQE", "image quality", "dose"
- 연도: 최근 5~10년 (2015~ 권장)

**Step 3 — 근거 등급 (Level of Evidence)**

| 등급 | 유형 | 예시 |
|---|---|---|
| 1A | 메타분석/SR | 복수 RCT 통합 분석 |
| 1B | RCT | 무작위 대조 임상시험 |
| 2A | 코호트 연구 | 전향적 코호트 |
| 2B | 단면·케이스 시리즈 | 후향적 이미지 비교 |
| 3 | 전문가 의견 | 교과서·가이드라인 |

**Step 4 — 임상적 관련성 평가**
- GRADE 체계 적용 (Cochrane 권장)
- 안전성(Safety): AE/SAE 발생률
- 성능(Performance): 진단 정확도·이미지 품질 지표

---

### 3.3 CEP (Clinical Evaluation Plan) 필수 구성 요소

```
## CEP 목차
1. 임상평가 범위 (제품 설명, 적응증, 사용 환경)
2. 임상평가 방법 (문헌 평가 / 임상시험 / PMCF 선택 근거)
3. 동등기기 목록 (MDCG 2020-5 기준)
4. 임상 매개변수 (Primary/Secondary endpoint)
5. 문헌 검색 전략 (PICO, DB, 검색식, 날짜)
6. 포함·제외 기준
7. 데이터 평가 방법 (근거 등급, Appraisal 도구)
8. 갱신 주기 (Class IIa: 연 1회 / Class IIb~III: 연 1회 + 이상사례 발생 시)
```

---

### 3.4 CER (Clinical Evaluation Report) 필수 구성 요소

```
## CER 목차
1. 제품 개요 (의도된 사용 목적, 원리)
2. 임상평가 범위 및 방법
3. 문헌 검색 결과 (선정/제외 PRISMA 다이어그램)
4. 개별 문헌 평가표 (Study Appraisal Table)
5. 동등성 분석 (3대 기준 매트릭스)
6. 임상 데이터 통합 분석
7. 안전성 분석 (AE/SAE 목록, 잔여 위험)
8. Benefit-Risk 분석
9. 결론: 충분한 임상증거 충족 여부
10. PMCF 필요성 판단
11. 서명·날짜 (작성자 자격: ≥5년 임상·규제 경험)
```

---

## 4. PMCF (Post-Market Clinical Follow-up)

### 4.1 PMCF 필요성 판단 기준 (MDR Annex XIV Part B)

**PMCF 필수 케이스:**
- Class IIb/III 기기 (원칙)
- 임상조사 면제 케이스에서 충분성 부족한 경우
- 새로운 임상적 주장(claim)을 추가하는 경우
- 시판 후 새로운 안전 신호 발생

**PMCF 면제 케이스:**
- 이미 충분한 임상 데이터 존재 + 장기 성능·안전성 우려 없음
- Class IIa이고 동등기기 임상 데이터가 충분한 경우

### 4.2 PMCF 활동 유형

| 유형 | 설명 | X-ray 제품 적용 |
|---|---|---|
| **PMCF Study** | 시판 후 임상조사 | 필요 시 (신적응증 추가 등) |
| **PMCF Survey** | 사용자·의사 설문 | Handheld Source 사용환경 모니터링 |
| **Registry** | 기기 등록(국내외) | Detector — 방사선 선량 레지스트리 |
| **PMS 연계** | PMS Plan과 연계 | 불량보고·CS 데이터 수집 |

---

## 5. 3지역 비교 매트릭스

| 항목 | MFDS (국내) | FDA (미국) | MDR (유럽) |
|---|---|---|---|
| **법적 근거** | 의료기기법 §10, 시행규칙 별표2 | 21 CFR Part 860, Guidance | MDR Art. 61, Annex XIV |
| **임상평가 의무** | 2025-07~ 신규 제도 시행 | 510(k) 임상데이터 조건부 필요 | 전 기기 의무 (방법 선택) |
| **동등기기 활용** | 동등품 문헌 허용 | 예측기기(predicate) SE 입증 | MDCG 2020-5 동등성 3기준 |
| **문헌 평가** | 허용 (국내외 공인 DB) | 허용 (보완 데이터) | 허용 (PRISMA 권장) |
| **임상 이미지 평가** | 요구 시 가능 | X-ray: 방사선의 blinded review | NB 요청 시 가능 |
| **NB/심사기관 심사** | 식약처 심사관 | CDRH 심사관 | Notified Body (MDCG 2020-13) |
| **CER 갱신 주기** | 미규정 (변경 시) | 변경 시 | IIa: 연 1회 이상; IIb/III: 연 1회 + 이상사례 |
| **PMCF** | 시판후 조사(PMS) 개념 | 21 CFR 522 PMS Order(일부) | MDR Annex XIV Part B PMCF |
| **X-ray 특화 지침** | 방사선 발생기기 심사 기준 | Solid State X-ray Imaging Device Guidance (2006) | MDR Annex VIII + MDCG 가이던스 |

---

## 6. 3개 제품 임상증거 전략 맵핑

### 6.1 X-ray Detector (Class IIa MFDS/MDR, Class II FDA)

| 지역 | 전략 | 핵심 근거 |
|---|---|---|
| **MFDS** | 동등품 문헌 + 벤치 데이터(IEC 62220-1-1 DQE). 2025-07 이후 CEP+CER 체계 준비 | 방사선 발생기기 허가 심사 기준 |
| **FDA** | 510(k) SE: predicate 선정 + DQE/MTF 벤치. 필요 시 임상 이미지 비교(방사선의 blinded review) | FDA Solid State X-ray Imaging Device Guidance (2006) |
| **MDR** | 동등기기 선정(MDCG 2020-5) + CER: 문헌 평가 + PMCF Survey. Class IIa → 충분성 입증 시 임상조사 면제 | MDCG 2023-7 Art. 61(5) 면제 조건 |

### 6.2 Handheld X-ray Source (Class IIb MDR, Class II FDA, Class 2 MFDS)

| 지역 | 전략 | 핵심 근거 |
|---|---|---|
| **MFDS** | 방사선 출력 안전성 벤치 데이터 + 동등품 문헌 | IEC 60601-2-28, 21 CFR 1020.30 |
| **FDA** | 510(k) SE: predicate 선정 + 방사선 출력·선량 측정 벤치. 새 휴대형 폼팩터 → Pre-Sub 우선 권장 | Handheld 방사선 안전성 신증거 필요 |
| **MDR** | Class IIb: 동등기기 + CER 심화. MDCG 2020-5 기술적 동등성(kVp·mA 범위) 필수. 임상조사 원칙이나 동등기기 입증 시 면제 가능 | MDR Art. 61(4)·(5), MDCG 2023-7 |

### 6.3 촬영실 GUI SW (Class IIa MDR, Class II FDA SaMD, 디지털의료기기 MFDS)

| 지역 | 전략 | 핵심 근거 |
|---|---|---|
| **MFDS** | **2025-07 임상평가 우선 적용 대상** — CEP+CER 제출 준비. 알고리즘 성능 검증 + 사용자 연구 포함 | 디지털의료기기법 2025-07 |
| **FDA** | SaMD 분류 → IMDRF 위험 매트릭스 적용. 워크플로우 SW는 CDS 여부 판단 → 독립형 CDS 비해당 시 일반 SW 경로 | IMDRF N41, FDA CDS Guidance (2022) |
| **MDR** | MDSW: MDCG 2020-1 임상평가 특화. "Significant Performance" 입증(진단 정확도 향상 등) 필요. Art. 61 준수 | MDCG 2020-1 §3 MDSW 임상평가 방법론 |

---

## 7. 임상평가 주요 지적사항 및 대응

| 지적사항 | 원인 | 대응 |
|---|---|---|
| 동등기기 접근권 없음 | MDR: 동등 제조사와 계약 없이 공개 문헌만 사용 | 그룹사 기기 우선 선정, 또는 계약 체결 |
| CER이 마케팅 문서화됨 | 제품 강점만 기술, 약점·한계 미기술 | 균형 잡힌 임상 근거 + 잔여 위험 명시 |
| 문헌 검색 재현 불가 | 검색 날짜·필터 미기재 | 검색 프로토콜(PICO+검색식+날짜) 별도 보관 |
| PMCF 계획 없음 | CER 결론에서 PMCF 불필요로 단정 | CER 결론 → PMCF Plan 연결 의무 명시 |
| 안전성 데이터 부재 | 성능 데이터만 제출, AE/SAE 데이터 없음 | PMS 데이터(CS·불만 보고)를 CER에 통합 |
| X-ray 선량 비교 미포함 | 방사선 기기 특수 요건 간과 | DRL(Diagnostic Reference Level) 비교 포함 |

---

## 8. 실습 과제

### 실습 1: CEP 초안 작성 (40분)
자사 **X-ray Detector** 에 대한 CEP 초안을 작성하라.
- 동등기기 후보 3개 이상 선정 (모델명·제조사·등급 기재)
- PICO 설정 및 문헌 검색 전략 수립
- 방법론 선택 근거 서술 (문헌 평가 vs. 임상시험)
- **제출 형식**: A4 5페이지 이내

### 실습 2: 동등성 분석 매트릭스 완성 (30분)
MDCG 2020-5 기준으로 **Handheld X-ray Source** 의 동등 기기 1개를 선정하고, 기술적·생물학적·임상적 동등성 비교 표를 완성하라.
- 차이점(differences) 3가지 이상 식별
- 각 차이점이 안전성·성능에 미치는 영향 평가

### 실습 3: CER 결론 작성 (30분)
아래 조건에서 **촬영실 GUI SW** 의 CER 결론 섹션(1페이지)을 작성하라.
- 조건: 문헌 10건 검토, Level 2B 근거 주체, AE 0건, 진단 정확도 Predicate 대비 +3%

---

## 9. 평가 기준

| 평가 항목 | 배점 | 세부 기준 |
|---|---|---|
| 3지역 임상평가 체계 이해 | 25점 | MFDS·FDA·MDR 각 법적 근거 및 절차 서술 정확도 |
| CEP 필수 구성 요소 | 20점 | 8개 CEP 구성 요소 완성도 |
| 동등성 분석 | 25점 | MDCG 2020-5 3대 기준 적용 정확도 |
| 임상증거 전략 수립 | 20점 | 3제품 지역별 전략의 논리성·실현 가능성 |
| PMCF 계획 | 10점 | PMCF 필요성 판단 근거 및 활동 계획 |

> **합격 기준**: 70점 이상. 동등성 분석 항목 최소 15점 이상.

---

## 10. 참고 문서 (KB 내)

- [공통_Clinical_Evaluation_Plan_Report_MDR_템플릿](../02_제품별_기술파일/공통/공통_Clinical_Evaluation_Plan_Report_MDR_템플릿.md)
- [Clinical_Evaluation_MDR_동등성_충분성_기준](../01_규제지식베이스/유럽_CE_MDR/MDCG_가이던스/Clinical_Evaluation_MDR_동등성_충분성_기준.md)
- [FDA_임상데이터_필요판단_기준](../01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_임상데이터_필요판단_기준.md)
- [MFDS_임상시험_계획_승인_절차](../01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_임상시험_계획_승인_절차.md)
