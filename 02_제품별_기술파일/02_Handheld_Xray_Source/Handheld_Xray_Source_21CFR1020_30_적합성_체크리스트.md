> 최종 갱신: 2026-05-04 (자동보강 #16)
> 근거: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.30 | https://www.law.cornell.edu/cfr/text/21/1020.30 | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/performance-standard-diagnostic-x-ray-systems-and-their-major-components-21cfr-102030-102031-102032

# Handheld X-ray Source — 21 CFR 1020.30 적합성 체크리스트

## 개요

| 항목 | 내용 |
|---|---|
| 적용 법규 | 21 CFR Part 1020 — Performance Standards for Ionizing Radiation Emitting Products |
| 적용 조항 | §1020.30 Diagnostic X-ray Systems and Their Major Components |
| 관련 조항 | §1020.31 Radiographic Equipment (촬영 시스템으로 사용 시) |
| 최신 개정 | 2023-01-20 (88 FR 3638) — Report of Assembly 일부 요건 삭제 적용 |
| 자사 제품 | Handheld X-ray Source (소형 휴대형) |
| 분류 | Diagnostic Source Assembly = Tube Housing Assembly + Beam-Limiting Device |
| 제품 발효 기준일 | 2006-06-10 이후 제조 → Table 1 "II—Other X-Ray Systems" 적용 |

---

## 적합성 체계도

```
21 CFR 1020.30 적용 대상 확인
│
├─ Tube Housing Assembly (§1020.30(a)(1)(i)(A)) → 자사 제품: 해당
├─ Beam-Limiting Device (§1020.30(a)(1)(i)(A)) → 자사 제품: 해당
└─ Diagnostic Source Assembly = 위 두 조합 → 자사 제품: 해당
       │
       ├─ 제조자 인증 의무 (§1020.30(c)) → FDA 21 CFR §1010.2 형식
       ├─ 누설 방사선 기준 (§1020.30(k)) → ≤ 0.88 mGy/h @1m
       ├─ Beam Quality / HVL (§1020.30(m)) → Table 1 Category II 기준
       ├─ 경고 표지 (§1020.30(j)) → 경고문 표시
       ├─ 제품 식별 표시 (§1020.30(e)) → Model/S/N 명각
       └─ 배터리 표시 (§1020.30(o)) → 충전 상태 표시기
```

---

## 체크리스트

### A. 적용 가능성 확인 (§1020.30(a))

| # | 확인 항목 | 기준 | 적용 여부 | 비고 |
|---|---|---|---|---|
| A-1 | Tube Housing Assembly 해당 여부 | 1974-08-01 이후 제조 | ✅ 해당 | 자사 제품 해당 |
| A-2 | Beam-Limiting Device 해당 여부 | 1974-08-01 이후 제조 | ✅ 해당 | 일체형 콜리메이터 포함 |
| A-3 | CT 제외 확인 | CT 시스템은 별도 §1020.33 적용 | ✅ 비해당 | 자사 제품 CT 아님 |
| A-4 | 적용 Table 확인 | 2006-06-10 이후 제조 시 Category II 적용 | ✅ Category II | Table 1 두 번째 열 이후 |

---

### B. 제조자 인증 (§1020.30(c) — Certification)

| # | 확인 항목 | 요건 원문 요지 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| B-1 | 제품별 인증 의무 | 제조자는 각 제품이 설치 시 §1020.30~1020.33 요건을 충족함을 인증해야 함 | FDA 21 CFR §1010.2 형식 인증서 발행 | ☐ |
| B-2 | 인증 형식 준수 | §1010.2 형식: 제품명, 모델번호, 준거 규격, 제조자 서명 포함 | Accession Number 취득·기재 | ☐ |
| B-3 | 조립 지침서 제공 | 타인이 설치하더라도 컴플라이언스 보장 가능한 조립 지침서 필수 | Installation / Assembly Manual 작성 | ☐ |
| B-4 | 복수 컴포넌트 통합 인증 시 FDA 사전 서면 승인 취득 | Tube Housing + BLD 일체 인증 원하면 CDRH 사전 허가 필요 | 해당 시 요청 공문 발송 | ☐ |

---

### C. Assembler 보고 (§1020.30(d))

> **Note:** 2023-01-20 개정(88 FR 3638)으로 Certified Accessory Component에 대한 Form FDA 2579 CDRH 제출 의무 삭제.

| # | 확인 항목 | 요건 원문 요지 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| C-1 | 설치 완료 후 Report of Assembly 제출 | Form FDA 2579 작성 → 구매자 및 해당 주(State) 방사선 관할 기관에 설치 완료 후 15일 이내 제출 | Form FDA 2579 작성 절차 수립 | ☐ |
| C-2 | 제출 기한 준수 | 설치 완료 후 15일 이내 | 절차서에 기한 명시 | ☐ |
| C-3 | 보고 면제 항목 확인 | ① 재장착 Tube Housing, ② Certified Accessory, ③ 수리 후 재설치(최초 보고 완료 분), ④ 임시 설치 컴포넌트 | 면제 해당 시 기록 보관 | ☐ |
| C-4 | 레코드 보관 | Form FDA 2579 사본 5년 보관 | 문서관리 절차에 포함 | ☐ |

---

### D. 제품 식별 표시 (§1020.30(e))

| # | 확인 항목 | 요건 원문 요지 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| D-1 | 모델번호 영구 명각 | 제품에 Model 번호 영구 각인 또는 부착 (읽기 쉽고 접근 가능) | 명각 또는 스테인리스 라벨 | ☐ |
| D-2 | 일련번호(S/N) 명각 | 제품에 Serial Number 영구 부착 (읽기 쉽고 접근 가능) | 동상 | ☐ |
| D-3 | "Model" 또는 "Type" 문구 포함 | 인증 제품 식별 시 "model" 또는 "type" 단어 필수 기재 | 라벨 디자인에 반영 | ☐ |
| D-4 | Tube Housing 내장 X선관 식별 | 제조자명, Tube Housing Model/S/N, 내장 X선관 Model/S/N 별도 표시 | 라벨 설계 시 X선관 정보 추가 | ☐ |
| D-5 | X선관 교체 시 재인증 처리 | X선관 교체 = 신규 Tube Housing 제조로 간주 → 기존 라벨 제거·갱신 | 교체 절차서 수립 | ☐ |

---

### E. 경고 표지 (§1020.30(j))

| # | 확인 항목 | 요건 원문 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| E-1 | 경고문 부착 위치 | 주 전원 스위치가 있는 제어 패널 | Handheld 제품: 그립/컨트롤 패널 영역에 부착 | ☐ |
| E-2 | 경고문 내용 (원문 그대로) | **"Warning: This x-ray unit may be dangerous to patient and operator unless safe exposure factors, operating instructions and maintenance schedules are observed."** | 라벨 문구 원문 그대로 사용 | ☐ |
| E-3 | 가독성 | 읽기 쉽고(legible) 접근 가능(accessible to view) | 최소 글자 크기·대비 확보 | ☐ |

---

### F. 누설 방사선 (§1020.30(k) — Leakage Radiation)

| # | 확인 항목 | 한계치 | 측정 방법 | Pass/Fail |
|---|---|---|---|---|
| F-1 | 누설 방사선량 | X선관이 **Leakage Technique Factors**로 작동 시, 선원 중심에서 **1m 임의 방향**으로 **1시간당 ≤ 0.88 mGy** air kerma | 100 cm² 평균 (직선 치수 ≤ 20 cm) | ☐ |
| F-2 | 최대 관전압 제한 | Tube Housing Assembly 최대 정격 kVp > Diagnostic Source Assembly 최대 kVp 인 경우, 양자 제한 수단 필수 | 인터록 또는 하드웨어 제한 회로 | ☐ |
| F-3 | Leakage Technique Factors 정의 | 최대 정격 kVp + 최대 연속 정격 mA (또는 정격 부하 조건) | 시험 조건 사양서에 명시 | ☐ |

---

### G. 기타 컴포넌트 방사선 (§1020.30(l))

| # | 확인 항목 | 한계치 | 측정 방법 | Pass/Fail |
|---|---|---|---|---|
| G-1 | Diagnostic Source Assembly 이외 부품 방사선 | 조립된 시스템에서 임의 조건 작동 시, 접근 가능 표면에서 **5 cm** 거리에서 **1시간당 ≤ 18 μGy** air kerma | 100 cm² 평균 (직선 치수 ≤ 20 cm) | ☐ |

---

### H. 빔 품질 — Half-Value Layer (§1020.30(m))

> **적용 기준:** 2006-06-10 이후 제조 X선 시스템 → Table 1 **"II—Other X-Ray Systems"** 적용

| kVp | 최소 HVL (mm Al) — Category II | 비고 |
|---|---|---|
| 30 | 0.3 | |
| 40 | 0.4 | |
| 50 | 0.5 | |
| 51 | 1.3 | |
| 60 | 1.5 | |
| 70 | 1.8 | |
| 71 | 2.5 | |
| 80 | 2.9 | Handheld 일반 동작 범위 |
| 90 | 3.2 | |
| 100 | 3.6 | |
| 110 | 3.9 | |
| 120 | 4.3 | |

| # | 확인 항목 | 요건 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| H-1 | HVL 측정 값 ≥ Table 1 II 기준 | 각 동작 kVp에서 HVL 측정값이 위 표 이상 | 인증 시험소 측정 성적서 확보 | ☐ |
| H-2 | 최소 여과(filtration) 보장 수단 | 노출 시 항상 최소 HVL 충족 여과재가 빔 내에 있도록 양자(positive means) 제공 | 고정 필터 또는 인터록 설계 | ☐ |
| H-3 | 중간 kVp 보간 | 표에 없는 kVp는 선형 보간 또는 외삽 적용 가능 | 시험 보고서에 보간 방법 명시 | ☐ |

---

### I. 배터리 전원 표시 (§1020.30(o))

| # | 확인 항목 | 요건 | 충족 방법 | Pass/Fail |
|---|---|---|---|---|
| I-1 | 배터리 충전 상태 시각 표시 | 배터리 전원 Generator인 경우 제어 패널에 충전 상태 시각적 표시기 필수 | 배터리 잔량 표시 LED 또는 디스플레이 | ☐ |

---

### J. §1020.31 추가 요건 (방사선 촬영 장비 — 해당 시)

> Handheld X-ray Source가 방사선 촬영 시스템의 일부로 사용되는 경우 §1020.31 추가 적용.

| # | 확인 항목 | 요건 개요 | Pass/Fail |
|---|---|---|---|
| J-1 | 빔 제한 (Collimation) | 조사야(X선 조사 영역)가 image receptor 크기 이하로 제한 가능해야 함 | ☐ |
| J-2 | 조사야 표시 일치 | Light field와 X선 조사야 불일치 ≤ SID의 2% (각 방향 합산) | ☐ |
| J-3 | SID 표시 | 권장 SID (Skin-to-Image Receptor Distance) 명시 또는 표시 | ☐ |
| J-4 | 노출 재현성 | 동일 설정 5회 반복 노출 시 mGy 변동계수(CV) ≤ 0.05 | ☐ |
| J-5 | 노출 선형성 | mAs 가변 시 Air kerma/mAs 최대비 ≤ 0.10 (±10%) | ☐ |

---

## 3개 지역 교차 비교

| 요건 | FDA (21 CFR 1020.30) | MFDS (국내) | MDR (EU) |
|---|---|---|---|
| **누설 방사선** | ≤ 0.88 mGy/h @1m | 진단용방사선발생장치 안전관리규칙 §10: 동등 기준 적용 [검증 필요] | MDR Annex I GSPR §10.4: 방사선량 최소화 설계 의무; IEC 60601-1-3 조화표준 준용 |
| **빔 품질 (HVL)** | Table 1 II: kVp별 최소 mm Al | KCSC 시험기준(의료기기 기준규격) 적용; IEC 60601-1-3 준용 | IEC 60601-1-3:2008+A1+A2 조화표준 적용 |
| **경고 표지** | 21 CFR 1020.30(j) 영문 고정 문구 | 의료기기법 §20 표시기재 기준; 한글 경고문 포함 | MDR Annex I §23: 언어 요건 (현지어 필수) |
| **인증/적합성 선언** | 21 CFR §1010.2 Certification | MFDS 제조허가 + 기술문서 심사 | MDR Article 52 적합성 평가; DoC (Annex IV) |
| **이온화 방사선 특수 요건** | 21 CFR Part 1020 전체 | 진단용 방사선 발생장치 안전관리에 관한 규칙 (보건복지부 고시) | MDR Annex I GSPR §10 (§10.1~§10.6) |
| **조립 보고** | Form FDA 2579 (주 방사선 기관 제출) | MFDS 제조 신고·변경 신고 | CE 인증 범위 내 → NB 통지 불필요 (단 QMS 관리) |

---

## 자사 제품 Handheld X-ray Source 영향 맵핑

| 요건 그룹 | 설계 영향 | 문서 영향 | 시험 영향 |
|---|---|---|---|
| **누설 방사선 (F)** | Tube Housing 차폐 설계 (Pb 두께·구조) | Design Specification에 누설 한계치 명시 | 인증 시험소 누설 방사선 시험 성적서 필수 |
| **HVL/필터링 (H)** | 고정 Al 필터 두께 설계; kVp 범위 확정 | DHF SDS에 필터 설계 근거 기재 | kVp별 HVL 측정 (최소 3 kVp 이상) |
| **경고 표지 (E)** | 그립/패널 영역에 라벨 부착 공간 확보 | Labeling Spec + IFU에 경고문 포함 | 라벨 내구성 시험 (IEC 60601-1 §7.1) |
| **배터리 표시 (I)** | UI에 배터리 잔량 표시 기능 구현 | SRS에 기능 명세; Labeling에 표시 방법 | 기능 검증 테스트 |
| **빔 제한 (J-1)** | 콜리메이터 설계 (조사야 ≤ 수용체 크기) | Design Justification 문서화 | 빔 일치도 측정 시험 |
| **Form FDA 2579 (C)** | 해당 없음 (설계 영향 없음) | 조립 지침서(Installation Manual) 작성 | 해당 없음 |

---

## 핵심 시험 항목 요약

| 시험 항목 | 한계치 | 시험 조건 | 성적서 요구처 |
|---|---|---|---|
| 누설 방사선 | ≤ 0.88 mGy/h @1m | Leakage Tech. Factors (Max kVp + Max cont. mA) | FDA 510(k) + MFDS 기술문서 + MDR TD |
| HVL | Table 1 II (kVp별) | 해당 kVp에서 알루미늄 감약 측정 | 동상 |
| 기타 컴포넌트 방사선 | ≤ 18 μGy/h @5cm | 모든 작동 조건 | 동상 |
| 경고 라벨 내구성 | IEC 60601-1 §7.1 기준 | 세척·마모·습도 시험 | 선택적 (NB 요청 시) |
| 빔 일치도 | SID의 2% 이내 (각 방향 합산) | 최대 SID 조건 | FDA/MFDS |

---

## 참조 문서

- 21 CFR §1020.30 원문: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.30
- 21 CFR §1020.31 원문: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-J/part-1020/section-1020.31
- FDA Small Entity Compliance Guide (1020.30~1020.33): https://www.fda.gov/regulatory-information/search-fda-guidance-documents/performance-standard-diagnostic-x-ray-systems-and-their-major-components-21cfr-102030-102031-102032
- Federal Register 2023-01-20 개정 (88 FR 3638): https://www.federalregister.gov/documents/2023/01/20/2023-00922
- Form FDA 2579: https://www.fda.gov/about-fda/reports-manuals-forms/forms
- MDR Annex I GSPR §10: EU 2017/745
- IEC 60601-1-3:2008+A1+A2 — Radiation Protection (조화표준)
- IEC 60601-2-28:2017 — X-ray tube assemblies (특수 요건)
- [Handheld_Xray_Source_DHF_목차_템플릿.md](Handheld_Xray_Source_DHF_목차_템플릿.md) — 연계 DHF 문서
