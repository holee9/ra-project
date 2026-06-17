> 최종 갱신: 2026-05-22 (자동보강 #64)
> 근거: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-803 (21 CFR Part 803) | https://www.fda.gov/medical-devices/postmarket-requirements-devices/mandatory-reporting-requirements-manufacturers-importers-and-device-user-facilities (FDA 가이드) | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/medical-device-reporting-manufacturers (FDA MDR Guidance)

# FDA Medical Device Reporting (MDR) — 21 CFR Part 803 절차 가이드

## 1. 개요

| 항목 | 내용 |
|---|---|
| **법적 근거** | 21 CFR Part 803 (Medical Device Reporting) |
| **상위법** | FD&C Act §519 |
| **적용 대상** | 제조업체(Manufacturers), 수입업체(Importers), 기기 사용시설(Device User Facilities) |
| **보고 시스템** | FDA eMDR (전자보고), MedWatch Form 3500A |
| **최신 개정** | 2023-09-22 (eCFR 기준) |

> **MDR vs. EU Vigilance 용어 주의:**
> FDA의 "MDR (Medical Device Reporting)"은 이상사례 보고 시스템 이름. EU MDR(Medical Device Regulation)과 약어가 같지만 전혀 다른 개념.

---

## 2. 3개 지역 이상사례 보고 비교 매트릭스

| 비교 항목 | FDA (21 CFR 803) | EU MDR (Art.87) | MFDS (의료기기법 §32) |
|---|---|---|---|
| **보고 주체** | 제조사·수입사·사용시설 | 제조사 | 제조사·수입사 |
| **보고 트리거** | 사망·중대 부상·기능 불량 | Serious Incident | 이상사례·부작용 |
| **긴급 보고 기한** | **5 근무일** (공중 보건 위협 시) | **2일** (즉각적 위협) | **15일** (즉각적) |
| **일반 보고 기한** | **30 역일** | **15일** (사망/중대 악화) / **30일** (기타) | **30일** (비중대) |
| **보고 시스템** | eMDR (MedWatch 3500A) | EUDAMED Vigilance Module | 이상사례 보고시스템 |
| **연간 요약 보고** | Baseline Report (§803.55, 제조사) | PSUR (Art.86) | 재심사 보고 |
| **용어** | MDR report | Serious Incident report | 이상사례 보고 |

### 2.1 자사 3제품 보고 의무

| 제품 | FDA MDR 보고 트리거 | 판단 기준 |
|---|---|---|
| **X-ray Detector** | 이미지 불량→오진 → 중대 부상, 과선량 노출 | 의료 개입 필요 여부 |
| **Handheld X-ray Source** | 방사선 누설 → 공중 보건 위협 (5일 보고 가능) | 즉각적 공중 보건 위험 |
| **촬영실 GUI SW** | SW 오류→진단 오류→중대 부상 | 기기 인과 관계 평가 필요 |

---

## 3. 제조업체 보고 의무 상세 (21 CFR Part 803 Subpart E)

### 3.1 보고 의무 발생 조건 (§803.50)

제조업체는 다음 조건 **모두 충족** 시 보고 의무 발생:

**조건 A — 인식 (Awareness):**
> 자체 연구·테스트·서비스, 고객 불만, 사용시설 보고, 분배업체 정보 등 **어떤 소스에서든** 정보를 인식한 날부터 카운트.

**조건 B — 사건 유형:**
| 사건 | 보고 의무 |
|---|---|
| 사망 (Death) | 기기가 사망에 기여했거나 기여했을 가능성이 있는 경우 |
| 중대 부상 (Serious Injury) | 기기가 중대한 건강 악화에 기여했거나 기여했을 가능성이 있는 경우 |
| 기능 불량 (Malfunction) | 재발 시 사망·중대 부상을 초래할 가능성이 있는 경우 |

**"중대 부상(Serious Injury)" 정의 (§803.3):**
- 생명을 위협하는 상해 또는 질병
- 영구적 손상 또는 신체 기능의 영구적 장애
- 의료적·외과적 개입이 필요한 상해 또는 질병

**"기능 불량(Malfunction)" 판단:**
- 기기가 의도된 성능을 내지 못함
- 재발 시 사망·중대 부상 초래 가능성이 있을 것 (과거 동종 기기 사례, 문헌, 전문가 의견 기반)

---

### 3.2 보고 타임라인 (§803.50, §803.53)

```
이벤트 발생 또는 인식
       │
       ├─── 즉각적 공중보건 위협? ──→ YES → 5 근무일 이내 (§803.53(a)(1))
       │                                     ↓
       │                              FDA 서면 요청? ──→ YES → 5 근무일 이내 (§803.53(a)(2))
       │
       └─── 일반 사망·중대부상·기능불량 ──→ 30 역일 이내 (§803.50(a))
```

| 상황 | 기한 | 조항 |
|---|---|---|
| **일반** 사망·중대부상·기능불량 보고 | 인식일로부터 **30 역일** | §803.50(a) |
| **즉각적** 공중보건 위협 또는 FDA 서면 요청 | 인식일로부터 **5 근무일** | §803.53 |

> **역일(Calendar day) vs. 근무일(Work day):**
> - 30일 보고: 역일 기준 (주말·공휴일 포함)
> - 5일 보고: 근무일 기준 (주말·공휴일 제외)

---

### 3.3 보고 방법 (§803.12)

**전자 제출 (eMDR) — 의무:**
- 2015년부터 모든 제조업체는 eMDR 시스템을 통해 전자 제출 의무화
- URL: https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfeMDR/main.cfm
- 양식: MedWatch Form 3500A (기기 관련 이상사례 전용)

**보고서 필수 기재 항목 (§803.52):**

| 섹션 | 항목 |
|---|---|
| A. 환자 정보 | 나이, 성별, 체중, 진단명 |
| B. 이상사례 정보 | 발생일, 사건 설명, 결과(사망/입원/중대부상 등) |
| C. 제품 | 기기명, 제조사, 모델번호, 카탈로그번호, UDI, 만료일, 배치번호 |
| D. 제조업체 정보 | 제조사명, 연락처, MDR 보고 번호, 이벤트 유형 |
| E. 시정 조치 | FSCA 시행 여부, 내용 |
| F. 기기 반환 여부 | 반환/분석 여부 |

---

### 3.4 Baseline Report (연간 요약, §803.55)

> 제조업체가 특정 기기에 대해 **최초 MDR 보고** 후 다음 요건에 해당 시 Baseline Report 제출.

| 요건 | 내용 |
|---|---|
| 제출 시점 | 최초 MDR 보고와 동시에 (또는 직후), 이후 매년 1월 1일 갱신 |
| 핵심 내용 | 기기 설명, 사용 기간, 배포 수량, 해당 연도 MDR 보고 건수 |
| 주의 | 2014 eMDR 전환 이후 사실상 개별 eMDR 보고로 통합 운영 (eMDR 전자보고 2014~ 의무) |

---

## 4. 내부 MDR 결정 프로세스 (절차 SOP 뼈대)

```
Step 1: 이벤트 접수
  (불만, 서비스 보고, 문헌, 사용시설 통보 등)
       ↓
Step 2: 초기 평가 (인식일 결정)
  → 언제 "aware"가 되었는가? (정보 입수일 = Day 0)
       ↓
Step 3: MDR 보고 가능성 평가 (30일 이내)
  Q1. 기기가 관련되어 있는가?
  Q2. 사망·중대부상이 발생했는가? OR 기능불량이 재발 시 위험한가?
  → 모두 YES → 보고 의무 발생
       ↓
Step 4: 즉각적 위협 평가 (Day 0~3)
  Q3. 즉각적 공중보건 위협인가?
  → YES → 5 근무일 이내 보고 (§803.53)
  → NO → 30 역일 이내 보고 (§803.50)
       ↓
Step 5: eMDR 작성 및 제출
  MedWatch 3500A 작성
  → QA/RA 검토 → 경영진 승인
  → FDA eMDR 시스템 제출
       ↓
Step 6: 사후 관리
  추가 정보 입수 시 Supplemental Report 제출 (§803.56)
  내부 기록 유지 (2년, MDR Event Files, §803.18)
```

---

## 5. Supplemental Report 및 기록 유지

### 5.1 Supplemental Report (§803.56)
- **언제:** 최초 보고 후 신규 정보 확보 시
- **기한:** 신규 정보 인식일로부터 30 역일 이내
- **방법:** eMDR 동일, 원본 MDR 참조번호 기재

### 5.2 MDR Event Files 유지 (§803.18)
- **유지 기간:** 최초 MDR 제출일로부터 **2년** (또는 기기 수명 기간 중 더 긴 기간)
- **포함 내용:** 불만 접수 원본, 조사 기록, 보고 결정 근거, 제출 사본
- **FDA 검사 시:** 즉시 제공 가능해야 함

---

## 6. 면제 및 예외 (§803.19)

| 면제 조건 | 내용 |
|---|---|
| 이미 보고된 이벤트 | 동일 사건을 다른 제조사가 이미 FDA에 보고한 경우 (중복 방지) |
| 분배업체 수령 정보 | 제조사에서 이미 인지하고 보고 중인 경우 |
| 해외 사건 | 미국 외에서 발생 + 기기가 미국 내 미배포된 경우 → 보고 불필요 |

---

## 7. 자사 3제품 MDR 대응 전략

### 7.1 X-ray Detector

| MDR 시나리오 | 판단 | 조치 |
|---|---|---|
| 이미지 아티팩트로 진단 오류 → 재수술 | 중대부상 해당 → 보고 의무 | 30일 이내 eMDR |
| 불량 픽셀 클러스터 발견 (환자 영향 없음) | 기능불량 → 재발 시 오진 가능성 평가 | 위험 평가 후 결정 |
| 선량 오버 노출 → 응급 치료 | 중대부상 → 공중보건 위협 가능 | 5 근무일 이내 |

### 7.2 Handheld X-ray Source

| MDR 시나리오 | 판단 | 조치 |
|---|---|---|
| 방사선 누설 측정치 기준 초과 발견 | 즉각적 공중보건 위협 → **5 근무일** | 즉각 FDA 보고 + FSCA |
| 배터리 과열 → 화재 (사용자 화상) | 중대부상 → 30일 이내 | eMDR 제출 |
| 기기 낙하 후 기계적 손상 (환자 영향 없음) | 기능불량 평가 → 재발 위험 낮음 | 보고 불요 (근거 문서화) |

### 7.3 촬영실 GUI SW

| MDR 시나리오 | 판단 | 조치 |
|---|---|---|
| SW 버그 → 선량 표시 오류 → 과노출 | 중대부상 가능성 → 보고 의무 | 즉각 패치 + 30일 eMDR |
| 화면 잠금 → 진단 지연 (응급 처치 지연) | 중대부상 평가 필요 | QA/RA 긴급 검토 |
| 언어 설정 버그 (환자 영향 없음) | 기능불량 → 재발 시 위험 낮음 | 보고 불요 (문서화) |

---

## 8. 작성 체크리스트

- [ ] MDR 결정 SOP 문서화 (인식 기준, 결정 기준, 승인 절차)
- [ ] eMDR 계정 등록 완료 (FDA CDRH)
- [ ] MedWatch 3500A 작성 훈련 완료 (QA/RA팀)
- [ ] MDR Event Files 관리 시스템 구축 (2년 보존)
- [ ] 30일/5일 트리거 판단 매트릭스 내부 공유
- [ ] 해외 이벤트 필터링 기준 수립
- [ ] FSCA 판단과 MDR 보고 연계 절차 확인
- [ ] 분기별 MDR 보고 건수 집계 및 trend 분석 체계화

---

## 9. 참고 문서

| 문서 | 링크 |
|---|---|
| 21 CFR Part 803 (eCFR) | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-803 |
| FDA MDR 의무 보고 가이드 | https://www.fda.gov/medical-devices/postmarket-requirements-devices/mandatory-reporting-requirements-manufacturers-importers-and-device-user-facilities |
| MedWatch 3500A 양식 | https://www.fda.gov/safety/medwatch-fda-safety-information-and-adverse-event-reporting-program |
| 연관 KB 문서 | [PMS_Plan_MDR_Article84_템플릿](../../../04_기술문서_템플릿/PMS_Plan_MDR_Article84_템플릿.md) (#62) |
