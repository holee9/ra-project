> 최종 갱신: 2026-04-30 (자동보강 #6)
> 근거: https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-801 · https://www.fda.gov/media/86323/download · https://www.fda.gov/media/134018/download · https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices · https://www.fda.gov/media/172450/download · https://medicaldeviceacademy.com/510k-labeling/

# FDA eSTAR 섹션별 작성 가이드 (6) Labeling — IFU · Form 3881 · 21 CFR 801

자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW)의 510(k) 제출 시 eSTAR `Labeling` 섹션 작성 실무 가이드. 21 CFR 801, eSTAR v6.x 기준. MFDS·MDR 대응 관점 포함.

---

## 1. 규제적 배경 (Fact)

### 1.1 근거 법령·가이던스

| 문서 | 발행·개정일 | 역할 |
|---|---|---|
| 21 CFR Part 801 | 현행 (2024-12-24 최신 CFR) | 라벨링 일반 요건 |
| 21 CFR 807.87(e) | 현행 | 510(k) 제출 필수 포함 사항 — 제안 라벨링 |
| FDA Form 3881 | 현행 | Indications for Use 공식 양식 |
| FDA Guidance: Instructions for Use — Content and Format (Draft, 2019-06-26) | Draft (현행 참조) | IFU 콘텐츠·포맷 권고 |
| FDA Guidance: Solid State X-ray Imaging Devices 510(k) | 현행 유효 | X-ray 제품군 특화 라벨링 요건 |
| eSTAR v6.1 (2026-02-02 QMSR 정합화) | 2026-02-02 | eSTAR 내 라벨링 섹션 최신 구조 |

### 1.2 "Labeling" 정의 (21 CFR 801.1)

FDA 규정상 "labeling"은 기기 및 기기에 **동봉**되는 모든 written·printed·graphic matter를 포함한다 (물리적 부착 불요). 따라서 다음 전체가 labeling에 해당한다:
- 기기 본체·포장 부착 Label (Tag)
- IFU (Instructions for Use) / 사용설명서
- 판촉 브로슈어, 웹사이트 표현 (Rx 기기는 일반 대중 대상 광고 제한 — 21 CFR 801.109(d))
- 퀵 스타트 가이드, 스크린 표시 문구

### 1.3 eSTAR 내 Form 3881 처리

eSTAR는 Form 3881(Indications for Use 공식 양식)을 **별도 첨부 없이** 인라인으로 통합한다. eSTAR `Indications for Use` 필드에 입력한 문구가 자동으로 510(k) Summary(21 CFR 807.92) 해당 항목에 반영된다. → Form 3881 별첨 불필요(eSTAR 제출 시).

---

## 2. eSTAR Labeling 섹션 구성 (v6.x)

eSTAR Labeling 섹션은 크게 3개 하위 파트로 구분된다.

### 2.1 파트 A — 기기 라벨 (Device Label)

제출 시점 기준 **draft** 라벨(최종 사용 라벨과 실질적으로 동일해야 함).

**필수 기재 항목 (21 CFR 801 기반):**

| 항목 | 근거 조항 | 비고 |
|---|---|---|
| 제조사명·주소 (상호, 도시, 주, ZIP) | 21 CFR 801.1 | 유통사 기재 시 "Distributed by" 추가 |
| 기기 명칭 (일반명 포함) | 21 CFR 801.61 | generic name 반드시 포함 |
| 모델 번호 / 카탈로그 번호 | 관행 (FDA 권고) | |
| Lot/Batch 번호 또는 Serial 번호 | 21 CFR 801.18 | |
| 제조일 / 유효기간 (해당 시) | 21 CFR 801.18 | |
| Rx Only 문구 | 21 CFR 801.109(b)(1) | X-ray 기기는 처방용으로 해당 |
| UDI (Unique Device Identifier) | 21 CFR Part 830 | UDI-DI + UDI-PI 구성 |
| 전기적 사양 (전압·주파수·소비전력) | IEC 60601-1 관행 | X-ray 기기 해당 |
| 멸균/비멸균 표시 (해당 시) | 21 CFR 801.150 | |
| 경고·주의 문구 (방사선, 고전압 등) | 21 CFR 801 / 21 CFR 1020.30 | X-ray 특화 |
| ISO 15223-1 심볼 (해당 시) | ISO 15223-1:2021 | FDA는 ISO 심볼 허용 (사용 시 참조표 IFU에 포함) |

### 2.2 파트 B — IFU (Instructions for Use)

X-ray 의료기기는 처방용(Rx) 기기 → 21 CFR 801.109 면제 적용. IFU는 **의료 전문가(intended user) 대상**으로 작성.

**FDA Guidance (IFU Draft, 2019) 권고 구조:**

```
1. 기기 개요 (Device Overview)
2. 적응증 (Indications for Use) — Form 3881 문구와 문자 일치
3. 금기 (Contraindications)
4. 경고 (Warnings) — 중대 위해 가능성
5. 주의 (Cautions / Precautions) — 경미 위해 또는 데이터 품질 영향
6. 부작용 / 이상반응 (Adverse Effects, 해당 시)
7. 보관·취급 (Storage and Handling)
8. 사용 준비 (Setup / Installation)
9. 조작 절차 (Operating Instructions) — 단계별, 시각 자료 권장
10. 유지보수·청소 (Maintenance and Cleaning)
11. 고장 대응 (Troubleshooting)
12. 성능 사양 (Specifications, 기술 참고용)
13. 폐기 (Disposal)
14. 심볼 설명표 (Symbol Glossary) — ISO 15223-1 심볼 사용 시
15. 기기 이력·개정 이력 (Revision History)
```

**가독성 원칙 (FDA IFU Draft Guidance):**
- 제목 전 blank line 삽입, heading 아래 충분한 여백
- 중요 경고는 박스 또는 굵은 글씨로 시각적 강조
- 사용 절차는 numbered step + 시각 자료 병행
- 언어: 영문 (미국 시장 출시 기준). 수출 대상국 언어 별첨 가능

### 2.3 파트 C — 기타 라벨링

- 포장 라벨 (Outer Carton Label)
- 소프트웨어 내 스크린 표시·경고 문구 (GUI SW 해당)
- 퀵 스타트 가이드 (별도 제작 시)
- 액세서리·소모품 라벨 (해당 시)

---

## 3. Form 3881 — Indications for Use 작성법

### 3.1 필드 구성

| 필드 | 기재 내용 |
|---|---|
| Device Name | 상용명 (제품명 / 모델명) |
| Indications for Use | 의도된 사용 목적 서술 (아래 3.2 참조) |
| Prescription Use (Rx) | 체크박스 — X-ray 기기는 Rx 체크 |
| OTC Use | 체크박스 — X-ray 기기는 해당 없음 |

### 3.2 IFU 문구 작성 원칙

**구조:** `[기기명]은 [사용 환경]에서 [사용자]가 [환자 특성]의 [해부 부위]를 [목적]으로 [사용 방식]에 사용하는 기기이다.`

**핵심 원칙:**
1. Predicate device IFU와 동일하거나 더 좁은 범위 → 확장 시 De Novo 또는 PMA 위험
2. 진단·치료 효과 주장은 임상 데이터 뒷받침 필수
3. 전체 제출물 내 IFU 문구 **문자 일치** (Device Description·SE 비교표·510(k) Summary·라벨·IFU 전부 동일)
4. 임상 전문성 요구 기기 → "for use by or under the supervision of qualified healthcare professionals" 문구 통상 포함

### 3.3 샘플 IFU 문구 — 자사 3개 제품

**X-ray Detector:**
> "The [MODEL] Digital X-ray Detector is intended for use in diagnostic radiographic imaging of human anatomy in a clinical environment. It is intended for use by or under the supervision of qualified healthcare professionals to acquire digital radiographic images for diagnostic evaluation."

**Handheld X-ray Source:**
> "The [MODEL] Portable X-ray Generator is intended for use in clinical and field settings to generate X-ray radiation for diagnostic radiographic imaging of human anatomy. It is intended for use by or under the supervision of trained radiologic technologists or qualified healthcare professionals."

**촬영실 GUI SW:**
> "The [SW NAME] is a software application intended to control X-ray image acquisition, processing, and display in diagnostic radiographic imaging environments. It is intended for use by qualified healthcare professionals to facilitate digital X-ray image review and diagnostic workflow."

---

## 4. 21 CFR 801 핵심 조항 매트릭스

| 조항 | 내용 | X-ray Detector | Handheld Source | GUI SW |
|---|---|:---:|:---:|:---:|
| 801.1 | 라벨 제조사 정보 | ✅ | ✅ | ✅ |
| 801.4 | "Adequate directions for use" 정의 | ✅ | ✅ | ✅ |
| 801.5 | 의약·기기용 adequate directions | ✅ | ✅ | ✅ |
| 801.15 | 라벨 가시성·판독성 | ✅ | ✅ | ✅ |
| 801.109 | Rx 기기 — adequate directions 면제 요건 | ✅ | ✅ | ✅ |
| 801.109(b) | "Rx Only" 문구 또는 "Caution: Federal law restricts..." | ✅ | ✅ | △ (SW 단독 시) |
| 21 CFR 1020.30 | X-ray 방사선 방호 라벨 요건 | ✅ | ✅ | ❌ |
| 21 CFR Part 830 | UDI 요건 | ✅ | ✅ | ✅ (SW 기기 해당 시) |

> 21 CFR 801.109(b)(1): "Rx Only" 또는 "Caution: Federal law restricts this device to sale by or on the order of a physician (or other licensed practitioner)." 문구 중 택 1.

---

## 5. X-ray 기기 특화 라벨링 요건

### 5.1 방사선 관련 경고 문구 (21 CFR 1020.30 기반)

X-ray 기기 라벨에는 다음을 포함해야 한다:
- "CAUTION: X-RAY EQUIPMENT" 또는 동등 경고
- 방사선 방호 지침 참조 문구
- 조사야 크기·최대 튜브 전압(kVp) 등 방사선 특성 사양

### 5.2 Handheld X-ray Source 추가 요건

- 배터리 경고·충전 지침 (해당 시)
- 이동 시 방사선 노출 거리·방향 경고
- 구체적인 방사선 방호 절차 (사용자·환자·주변인)
- Leakage radiation 규격 (21 CFR 1020.31(d))

### 5.3 GUI SW 라벨링 특이사항

- 스크린상 표시(on-screen display)도 labeling 적용 대상
- 오류 메시지·경고창 표현: FDA 심사 시 검토 대상
- 21 CFR 820.120(c): Software labeling은 설계 이력 파일(DHF) 내 Document Control 대상

---

## 6. 3개 지역 라벨링 비교 요약

| 항목 | FDA (21 CFR 801) | MFDS (의료기기법 §20, 표시기재 기준) | MDR (Article 10(11), Annex I §23) |
|---|---|---|---|
| 근거 | 21 CFR Part 801 | 의료기기법 제20조, 식약처 고시 | MDR 2017/745 Annex I §23 |
| 제조사 정보 | 필수 (주소 포함) | 필수 (국내 대리인 포함) | 필수 (EU 내 대리인 포함) |
| IFU 언어 | 영문 | 한국어 | 공식 EU 언어 (출시국) |
| Rx 표시 | "Rx Only" (21 CFR 801.109) | "전문의료기기" 또는 "처방용 의료기기" 표시 | "의사 처방 필요" 등가 문구 |
| UDI | 21 CFR Part 830 + GUDID 등록 | 국내 UDI 포털 등록 | EUDAMED UDI 등록 |
| 심볼 | ISO 15223-1 허용 + 참조표 첨부 | ISO 15223-1 + 식약처 별도 심볼 일부 | ISO 15223-1 권장 |
| 방사선 경고 | 21 CFR 1020.30 | 방사선 관계 법령·기준 | MDR Annex I §23.4(h) |
| IFU 구조 | FDA Draft Guidance (2019) 권고 | 식약처 IFU 가이드라인 (2025.01 개정) | MDR Annex I §23.4 항목 열거 |

---

## 7. eSTAR Labeling 섹션 체크리스트 (제출 전 자가점검)

### 7.1 기기 라벨

- [ ] 제조사명·주소 기재
- [ ] 기기명 (일반명 포함)
- [ ] 모델/카탈로그 번호
- [ ] Lot 또는 Serial 번호 표시 방식
- [ ] "Rx Only" 문구 (또는 동등 문구)
- [ ] UDI (DI + PI 구조 확인, GUDID 등록 계획)
- [ ] X-ray 방사선 경고 문구 (21 CFR 1020.30)
- [ ] ISO 15223-1 심볼 사용 시 → IFU 심볼 참조표 연동
- [ ] 전기적 사양 (전압·주파수·소비전력)

### 7.2 IFU

- [ ] IFU 내 IFU 문구 = Form 3881 문구 = Device Description 내 문구 (3점 일치)
- [ ] Predicate IFU 범위 이하 유지 확인
- [ ] 금기·경고·주의 항목 누락 없음
- [ ] 방사선 방호 절차 기술 (X-ray 제품)
- [ ] 사용 단계별 지침 (Setup → Acquisition → Shutdown)
- [ ] 유지보수·청소 절차
- [ ] ISO 15223-1 심볼 사용 시 → 심볼 참조표 포함
- [ ] 개정 이력 (Revision History) 포함

### 7.3 eSTAR 특화

- [ ] eSTAR Indications for Use 필드 입력 완료 (Form 3881 별첨 불필요)
- [ ] Rx 체크박스 선택
- [ ] 라벨 파일 첨부 (PDF 권장)
- [ ] IFU 파일 첨부
- [ ] 기타 라벨링 파일 (포장, 퀵가이드 등) 첨부

---

## 8. 자사 3개 제품 행동 지시 (Action)

### X-ray Detector
1. IFU 문구: "diagnostic radiographic imaging" 범위 유지, anatomical site·patient population 명시.
2. 라벨: UDI 바코드(DataMatrix) 인쇄 가능 공간 확보 (라벨 설계 단계부터 반영).
3. X-ray 경고 문구·전기 사양 라벨 병행 인쇄 (21 CFR 1020.30 + IEC 60601-1).
4. 국내 출시 시: 한국어 IFU 병행 제작 (MFDS 표시기재 고시 준수).

### Handheld X-ray Source
1. IFU에 방사선 방호 절차(사용자·환자·주변인) 별도 섹션 필수.
2. 배터리 충전·보관·폐기 안내 포함 (IEC 62133-2 해당 시).
3. 이동·보관 중 안전핀·잠금장치 사용 절차 기술.
4. "Caution: produces ionizing radiation" 문구 본체 라벨에 각인 또는 부착.
5. 21 CFR 1020.30 compliance statement를 IFU 첫 페이지 또는 경고 섹션 전면에 배치.

### 촬영실 GUI SW
1. 스크린상 경고·오류 메시지 목록 작성 → SW DHF 내 labeling 제어 문서(Document Control)로 관리.
2. "Prescription Device" 라벨: SW 스플래시 화면 또는 About 화면에 "Rx Only" 또는 동등 문구 표시.
3. IFU는 PDF 전자 형식 허용 (FDA는 electronic IFU 허용 — 21 CFR 801.125 적용 요건 확인).
4. SW 버전별 IFU 개정 관리: 버전 번호·개정일·변경 요약 Revision History 유지.

---

## 9. 참조 링크

- [21 CFR Part 801 (eCFR 현행)](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-801)
- [FDA Form 3881 (Indications for Use)](https://www.fda.gov/media/86323/download)
- [FDA IFU Draft Guidance (2019)](https://www.fda.gov/media/134018/download)
- [Solid State X-ray Imaging Devices 510(k) Guidance](https://www.fda.gov/regulatory-information/search-fda-guidance-documents/guidance-submission-510ks-solid-state-x-ray-imaging-devices)
- [eSTAR Program (FDA)](https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program)
- [eSTAR 510(k) Guidance (2023 Final)](https://www.fda.gov/media/172450/download)
