> 최종 갱신: 2026-05-03 (자동보강 #13)
> 근거: https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng | https://de-mdr-ivdr.tuvsud.com/Annex-IV-EU-declaration-of-conformity.html | https://easymedicaldevice.com/declaration-of-conformity/ | https://openregulatory.com/or_template/mdr-declaration-of-conformity/

# MDR Declaration of Conformity (DoC) 양식·작성 지침

## 1. 법적 근거

| 항목 | 내용 |
|---|---|
| **조항** | MDR 2017/745 Article 19 + Annex IV |
| **의무 주체** | 제조사 (또는 EU Authorised Representative) |
| **발효 의무** | CE Marking 전 반드시 DoC 작성·서명 완료 |
| **유효 기간** | 기기 시장 공급 중 + 10년 보관 (이식형: 15년) |
| **언어** | EU 공식 언어 중 해당 회원국 요구 언어로 번역 |

---

## 2. Annex IV 필수 기재 사항 (8개 항목)

| # | 필드 | 설명 |
|---|---|---|
| 1 | **제조사 정보** | 상호, 등록 상표 또는 SRN (Article 31), 등록 사업장 주소 |
| 2 | **책임 선언** | "본 DoC는 제조사 단독 책임 하에 발행됨" 문구 |
| 3 | **Basic UDI-DI** | Annex VI Part C 기준 UDI-DI 기재 |
| 4 | **제품 식별** | 제품명·상품명·모델 코드·카탈로그 번호 (사진 권장), 사용목적 |
| 5 | **위험 등급** | Annex VIII 분류 규칙에 따른 Class (I / IIa / IIb / III) |
| 6 | **적합성 선언** | MDR 및 기타 관련 EU 법령 적합 선언 문구 |
| 7 | **CS·NB·인증서 정보** | 사용된 Common Specifications(CS) 참조, NB명 및 식별 번호, 적합성 평가 절차, 인증서 번호·발행일 |
| 8 | **서명 정보** | 발행 장소·날짜, 서명자 이름·직함, 서명 (제조사 대표 또는 위임자) |

> **Note**: Class I Self-certification 기기는 NB 정보 불필요. IIa, IIb, III는 NB 인증서 정보 필수.

---

## 3. 자사 3개 제품별 기재 요령

### 3-1. X-ray Detector

| 필드 | 예시 값 |
|---|---|
| 위험 등급 | **Class IIa** (Annex VIII Rule 10 — X-ray 영상 기록 전용) |
| 적합성 평가 절차 | Annex IX Chapter I (QMS 심사) + Annex XI Part A (기술문서 심사) |
| 관련 표준(CS/HS) | IEC 60601-1, IEC 60601-1-2, IEC 60601-1-3, IEC 62220-1-1:2015 |
| EUDAMED 등록 | EUDAMED Actor + Device 등록 후 Basic UDI-DI 기재 |

### 3-2. Handheld X-ray Source

| 필드 | 예시 값 |
|---|---|
| 위험 등급 | **Class IIb** (능동형 치료기기·방사선 방출 — Annex VIII Rule 9) |
| 적합성 평가 절차 | Annex IX (QMS + 기술문서) or Annex X + XI Part A |
| 관련 표준 | IEC 60601-1, IEC 60601-1-3, IEC 60601-2-28, IEC 62133-2 (배터리) |

### 3-3. 촬영실 GUI SW (단독 SW 기기)

| 필드 | 예시 값 |
|---|---|
| 위험 등급 | **Class IIa** (진단 지원 SW — Annex VIII Rule 11, MDCG 2019-11 기준) |
| 적합성 평가 절차 | Annex IX Chapter I |
| 관련 표준 | IEC 62304:2006+A1, IEC 62366-1, IEC 81001-5-1 |

---

## 4. DoC 양식 (빈 템플릿)

```
EU DECLARATION OF CONFORMITY
(Regulation (EU) 2017/745 on Medical Devices — Annex IV)

─────────────────────────────────────────────
1. MANUFACTURER
   Company name  : [회사명]
   SRN           : [EUDAMED SRN — 미취득 시 공백]
   Address       : [등록 사업장 주소]
   Authorised
   Representative: [EU 대리인명 및 주소 — 역외 제조사 해당 시]

2. SOLE RESPONSIBILITY STATEMENT
   This EU Declaration of Conformity is issued under the sole
   responsibility of the manufacturer named above.

3. BASIC UDI-DI
   [Basic UDI-DI — Annex VI Part C 기준]

4. PRODUCT IDENTIFICATION
   Product name  : [제품명]
   Trade name    : [상품명]
   Model / Cat.# : [모델 번호 / 카탈로그 번호]
   Intended use  : [의도된 사용 목적 — 간략 기재]
   Photograph    : [첨부 또는 참조]

5. RISK CLASS
   Risk class    : Class [I / IIa / IIb / III]
   Classification
   rule          : Annex VIII, Rule [번호]

6. CONFORMITY DECLARATION
   The product described above is in conformity with:
   - Regulation (EU) 2017/745 on medical devices
   - [기타 적용 EU 법령 — 예: EMC Directive 2014/30/EU, 해당 시]

7. REFERENCES TO STANDARDS / NB / CERTIFICATES
   a) Common Specifications / Harmonised Standards applied:
      - [표준 번호 및 제목]
      - [표준 번호 및 제목]
   b) Notified Body (Class IIa 이상):
      Name  : [NB명]
      NB ID : [NB 식별 번호]
      Procedure  : [적용 Annex]
      Certificate: [인증서 번호], issued [YYYY-MM-DD],
                   valid until [YYYY-MM-DD]

8. SIGNATURE
   Place, date : [도시], [YYYY-MM-DD]
   Name        : [서명자 이름]
   Function    : [직함 — 예: CEO, QA Director]
   Signature   : ___________________________
   For and on behalf of [회사명]
─────────────────────────────────────────────
```

---

## 5. 3개 지역 비교: DoC 유사 문서

| 지역 | 문서명 | 법적 근거 | 비고 |
|---|---|---|---|
| **MDR (EU)** | EU Declaration of Conformity | MDR Article 19 + Annex IV | NB 인증서 연계 필수 (Class IIa~) |
| **FDA (US)** | 510(k) Declaration / Substantial Equivalence Determination | 21 CFR 807 | 별도 "DoC" 개념 없음; 등록·목록 의무 |
| **MFDS (KR)** | 적합성 선언서 (자기선언) or 기술문서 심사 승인 | 의료기기법 제6조 | 2등급 이상: 기술문서 심사 후 제조·수입 허가 |

---

## 6. 주요 실수 및 체크리스트

- [ ] UDI-DI는 EUDAMED에 등록 후 DoC에 기재 (사전 등록 필수)
- [ ] NB 인증서 만료일 관리 — 인증서 갱신 즉시 DoC 재발행
- [ ] SW 업데이트로 Intended Use 변경 시 DoC 버전 관리
- [ ] 다중 모델 포함 시: 각 모델의 카탈로그 번호 별도 열거 또는 첨부 목록 참조
- [ ] MDR 전환: IVDR과 혼동 주의 (별도 DoC 필요)
- [ ] 위임장(Power of Attorney) — EU Authorised Representative에게 서명 위임 시 첨부
- [ ] 보관 의무: 10년 (이식형 15년) — 전자 보관 가능, 규제 기관 요청 시 즉시 제출 가능해야 함
