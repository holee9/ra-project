> 최종 갱신: 2026-06-04 (자동보강 #86)
> 근거: https://api.fda.gov/device/510k.json | https://www.accessdata.fda.gov/cdrh_docs/pdf24/K241125.pdf | https://www.accessdata.fda.gov/cdrh_docs/pdf25/K251443.pdf | https://www.accessdata.fda.gov/cdrh_docs/pdf24/K242515.pdf | https://www.fda.gov/medical-devices/premarket-notification-510k/how-find-and-effectively-use-predicate-devices

# 경쟁 제품 510(k) Summary 분석 DB

## 1. 목적 및 범위

본 DB는 자사 3개 제품(X-ray Detector / Handheld X-ray Source / 촬영실 GUI SW)의 FDA 510(k) 제출 전략 수립을 위해, 동일 규제 분류(product code) 내 경쟁사 cleared 510(k) Summary를 체계적으로 정리한 레퍼런스다.

수집 기준:
- 데이터 소스: FDA OpenFDA API (`api.fda.gov/device/510k.json`) + accessdata.fda.gov 510(k) Summary 문서
- 기간: 2024-01-01 ~ 2026-06-04 (최신 cleared 기준)
- 대상 product code: MQB (Digital Flat Panel Detector) / IZL (Mobile X-ray System) / LLZ (DR Acquisition SW)

---

## 2. FDA 510(k) DB 조회 방법

### 2-A. OpenFDA API
```
GET https://api.fda.gov/device/510k.json?search=product_code:MQB&limit=20&sort=decision_date:desc
```
주요 파라미터:
- `product_code`: MQB / IZL / LLZ / MYN 등
- `decision_date:[YYYY-MM-DD TO YYYY-MM-DD]`: 기간 필터
- `decision_code`: SESE (Substantially Equivalent)만 필터 가능

### 2-B. accessdata.fda.gov 510(k) Summary PDF
- URL 패턴: `https://www.accessdata.fda.gov/cdrh_docs/pdf24/K24XXXX.pdf`
  - `pdf24` = 2024년 접수, `pdf25` = 2025년 접수
- 510(k) Summary 포함 항목: Device Description / Predicate Device / Technological Characteristics Comparison / Performance Testing / Conclusion

### 2-C. CDRH 검색 UI
- https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfpmn/pmn.cfm
- Product Code, 회사명, 기간으로 필터 가능

---

## 3. X-ray Flat Panel Detector (제품군 A)

### 3-A. 규제 분류
| 항목 | 내용 |
|---|---|
| Product Code | **MQB** |
| CFR | 21 CFR 892.1680 (Stationary X-ray system) |
| Device Class | II |
| Review Committee | RA (Radiology) |
| 주요 표준 | IEC 62220-1-1 (DQE), IEC 60601-2-54, IEC 60601-1 |

> Fact: MQB는 "Stationary X-ray system"으로 분류되나 wireless/wired 이동형 FPD도 동일 product code 적용. 소형 FPD도 892.1680 적용.

### 3-B. 2024~2026 Cleared 510(k) 목록 (최신순)

| K# | 승인일 | 회사 | 제품명 | 유형 |
|---|---|---|---|---|
| K252911 | 2025-10-09 | Iray Imaging (CN) | Lux HD 2530 | Special |
| K250211 | 2025-07-22 | Innocare Optoelectronics (TW) | Yushan X-Ray FPD | — |
| K250665 | 2025-06-17 | Konica Minolta (JP) | SKR 3000 | — |
| K243734 | 2025-04-18 | Allengers Medical (IN) | Wireless/Wired X-Ray FPDs | — |
| K242770 | 2025-03-20 | DRTECH (KR) | EXPD 114 시리즈 | **Special** |
| K243443 | 2025-03-19 | DRTECH (KR) | EXPD 4343N 시리즈 | **Special** |
| K243556 | 2025-03-18 | Iray Imaging (CN) | Lux HD 35 / Lux HD 43 | **Special** |
| K244010 | 2025-02-24 | JPI Healthcare (KR) | ExamVue Apex | — |
| K243171 | 2024-12-19 | Innocare Optoelectronics (TW) | Yushan X-Ray FPD | — |
| K241319 | 2024-11-21 | Konica Minolta (JP) | SKR 3000 | — |
| K241125 | 2024-11-15 | Vieworks (KR) | VIVIX-S 1751S | Traditional |
| K240771 | 2024-11-12 | Prognosys Medical (IN) | PRORAD X-Ray FPD | — |
| K241346 | 2024-11-07 | Aspen Imaging (US) | IODR1717 / IODR1417 | — |
| K242394 | 2024-09-09 | Rayence (KR) | 1717WCE 외 | — |
| K240371 | 2024-03-07 | Rayence (KR) | 0909FCC 외 | — |

### 3-C. 주요 경쟁사 510(k) 패턴 분석

#### Vieworks K241125 (VIVIX-S 1751S) — 한국 경쟁사 레퍼런스
- **Predicate**: K190611 (동일 회사 이전 모델)
- **SE 근거**: 동일 intended use + 동일 operating principle + MTF/DQE 성능 동등
- **분류**: 21 CFR 892.1680, Class II, MQB, Traditional 510(k)
- **주요 시험**: MTF(Modulation Transfer Function), DQE(Detective Quantum Efficiency) — IEC 62220-1-1 기준
- **전략 시사점**: 자사 이전 제품을 predicate로 사용 가능 (Special 510(k) 경로 활용 가능)

#### DRTECH K242770 (EXPD 114 시리즈) — **Special 510(k)** 사례
- **분류**: Special 510(k) — 기존 cleared 제품 대비 사소한 설계 변경
- **전략 시사점**: Special 510(k)는 일반적으로 처리기간 ~3개월로 Traditional보다 빠름. 기존 cleared FPD에 마이너 변경(사이즈/인터페이스) 시 활용.

#### 국적별 분포 (2024-2026)
- 한국(KR): DRTECH, Vieworks, Rayence, JPI Healthcare — 전체의 약 35%
- 중국(CN): Iray Imaging, Innocare, Careray, Rayence CN 계열
- 일본(JP): Konica Minolta
- 인도(IN): Allengers, Prognosys
- 미국(US): Aspen Imaging

---

## 4. Mobile X-ray System / Handheld X-ray Source (제품군 B)

### 4-A. 규제 분류
| 항목 | 내용 |
|---|---|
| Product Code | **IZL** |
| CFR | 21 CFR 892.1720 (Mobile X-ray system) |
| Device Class | II |
| Review Committee | RA (Radiology) |
| 주요 표준 | IEC 60601-1, IEC 60601-1-2 (EMC), IEC 60601-1-3 (방사선방호), 21 CFR 1020.30 |

> Fact: 892.1720 = "Mobile X-ray system." Handheld/ultraportable X-ray source는 이 분류에 해당. Dental handheld X-ray는 별도 EHD(872.1800) 적용.

### 4-B. 2024~2026 Cleared 510(k) 목록 (최신순)

| K# | 승인일 | 회사 | 제품명 | 유형 | 비고 |
|---|---|---|---|---|---|
| K260085 | 2026-05-14 | DRGEM (KR) | RAYMO | Traditional | 최신 |
| K253185 | 2026-03-11 | Carestream (US) | Lux HD + DRX-Revolution | Traditional | Detector 포함 번들 |
| K253244 | 2026-02-23 | Poskom (KR) | AirRay-mini 80A/90A | Traditional | |
| K250976 | 2025-12-19 | Poskom (KR) | Airbile-100 | Traditional | |
| K251710 | 2025-10-24 | Solutions for Tomorrow (SE) | !M1 | Traditional | |
| K243864 | 2025-09-12 | Bontech (KR) | BONX805 | Traditional | |
| K251443 | 2025-08-22 | DRGEM (KR) | PROMO | Traditional | |
| **K251223** | **2025-08-04** | **H&abyz (KR)** | **HnX-P1, HnX-PB** | **Traditional** | **자사** |
| K250597 | 2025-07-31 | Remedi (KR) | REMEX Xcam6 | Traditional | |
| K243473 | 2025-07-29 | Prognosys (IN) | PRORAD ATLAS ULTRAPORTABLE | Traditional | |
| K250750 | 2025-07-18 | DK Medical (KR) | INNOVISION-P5 | Traditional | |
| K244049 | 2025-05-28 | Livermoretech (US) | Europa / AiRTouch | Traditional | |
| K241996 | 2025-04-18 | Ecoray (KR) | ULTRA 1040 | Traditional | |
| K242015 | 2024-12-16 | DRGEM (KR) | TOPAZ-32D 시리즈 | Traditional | |
| K241505 | 2024-12-10 | Carestream (US) | DRX-Revolution | Traditional | |
| K240841 | 2024-12-09 | Browiner Tech (CN) | ManntiX B 시리즈 | Traditional | |
| K242515 | 2024-10-10 | United Imaging (CN) | uDR 380i Pro | Traditional | |
| K242651 | 2024-10-01 | Samsung (KR) | GM85 | Traditional | |
| K234108 | 2024-09-20 | Energy Resources Intl (KR) | CVX-air 시리즈 | Traditional | |

### 4-C. 주요 경쟁사 510(k) 패턴 분석

#### DRGEM PROMO (K251443) / RAYMO (K260085) — 한국 경쟁사 리더
- **DRGEM**: 2024~2026년 IZL 3건 취득. 전략: 동일 플랫폼 기반 모델 라인업 확장, Traditional 510(k) 반복 사용.
- **Predicate 패턴**: 이전 cleared DRGEM 모델 사용.
- **시험 항목**: IEC 60601-1 전기 안전 + IEC 60601-1-2 EMC + 방사선 출력 특성 (21 CFR 1020.30 기준).

#### Carestream K253185 — 번들 제출 전략
- Detector(FPD) + Mobile X-ray System을 단일 510(k)로 번들 제출.
- **의미**: 시스템 통합 제품(source + detector)은 가능하면 단일 신청으로 처리. 심사 효율성 향상.

#### 한국 경쟁사 분포 (IZL, 2024-2026)
DRGEM, Poskom, Bontech, H&abyz, Remedi, DK Medical, Ecoray, Energy Resources Intl — 한국 기업이 IZL 시장 제출의 약 **50% 이상**을 차지.

#### 자사 K251223 포지셔닝
- HnX-P1, HnX-PB — Traditional 510(k), 892.1720, Class II, 2025-08-04 취득
- Predicate: 조사 필요 (accessdata K251223 Summary 문서에서 확인)
- 향후 신규 모델 또는 변경 시 K251223를 predicate로 활용 가능 → Special 510(k) 경로 검토.

---

## 5. DR Acquisition Software / 촬영실 GUI SW (제품군 C)

### 5-A. 규제 분류
| 항목 | 내용 |
|---|---|
| Product Code | **LLZ** |
| CFR | 21 CFR 892.2050 (Image Processing, Radiological) |
| Device Class | II |
| Review Committee | RA (Radiology) |
| 주요 표준 | IEC 62304 (SW 수명주기), IEC 62366 (Usability), IEC 60601-1-6 |

> Fact: 892.2050 = "System, Image Processing, Radiological." DR Acquisition SW(이미지 획득·처리·표시)는 독립형 SW 기기로 이 분류 적용. AI 진단 보조 기능 추가 시 MYN(892.2060) 또는 QIH로 별도 분류 가능.

### 5-B. 주요 Cleared 510(k) 사례

| K# | 승인일 | 회사 | 제품명 | 비고 |
|---|---|---|---|---|
| K251038 | 2025-08-06 | Shen Zhen Cambridge-Hit (CN) | RiasDR (Digital Radiographic Imaging Acquisition SW) | LLZ, Traditional |
| K241556 | 2024-12-17 | Philips Medizin (DE) | Cardiac Workstation | DPS code |
| K251038 | 2025-08-06 | Cambridge-Hit | RiasDR | 892.2050 |

**K251038 RiasDR 세부사항**:
- 제출일: 2025-04-03 → 승인: 2025-08-06 (처리기간 ~4개월)
- 회사: Shen Zhen Cambridge-Hit Co., Ltd. (중국)
- 분류: Traditional 510(k), SESE, RA 심사
- 특징: 순수 SW 제품 (X-ray Generator 연동 DR 이미지 획득·처리 SW)

### 5-C. GUI SW 510(k) 전략 시사점

| 구분 | 내용 |
|---|---|
| SW 단독 제출 | 892.2050(LLZ) — image acquisition/processing만 있는 경우 |
| System 번들 제출 | FPD + SW를 번들로 MQB 또는 IZL로 제출 가능 (Carestream 사례) |
| AI 기능 포함 시 | MYN(892.2060) 별도 분류 검토 또는 LLZ + MYN 복합 |
| SaMD 판단 | IEC 62304 Safety Class 적용 필수 (Class B: minor injury / Class C: serious injury) |

---

## 6. 3개 지역 비교 매트릭스

### 6-A. 규제 경로 비교

| 항목 | FDA (미국) | MFDS (한국) | MDR (EU) |
|---|---|---|---|
| X-ray Detector | 510(k) — Class II, MQB/892.1680 | 기술문서 심사 — 2등급 | CE — Class IIa, NB 심사 |
| Mobile X-ray Source | 510(k) — Class II, IZL/892.1720 | 기술문서 심사 — 2등급 | CE — Class IIa, NB 심사 |
| GUI SW | 510(k) — Class II, LLZ/892.2050 | SW 별도 기술문서 — 2~3등급 | CE — Class IIa (의료목적 SW), NB 심사 |

### 6-B. 제출 패키지 핵심 차이

| 항목 | FDA 510(k) | MFDS 기술문서 | MDR Technical Doc |
|---|---|---|---|
| Predicate Device | 필수 (SE 입증) | 유사 제품 비교 (선택) | 동등 기기 비교 (Clinical Eval) |
| 시험 보고서 | 공인 시험기관 필수 (NRTL/accredited) | KFDA 고시 기준 공인기관 | NB 수락 기관 (ISO 17025) |
| SW 문서 | IEC 62304 기반 + Basic Safety | IEC 62304 | IEC 62304 |
| 사이버보안 | Section 524B 필수 (2023 이후) | MFDS 2025.01 가이드라인 | MDCG 2019-16 |
| 검토 기간 | Traditional ~90일, Special ~30일 | 기술문서 ~60일 (소요 시 연장) | NB에 따라 6~12개월 |

### 6-C. 자사 3개 제품별 경로

| 제품 | FDA | MFDS | MDR |
|---|---|---|---|
| X-ray Detector | **MQB Traditional 510(k)** (K251223 predicate 가능 시 Special 검토) | 2등급 기술문서 심사 | Class IIa NB 심사 |
| Handheld X-ray Source | **IZL Traditional 510(k)** K251223 already cleared → 변경 시 Special | 2등급 기술문서 심사 | Class IIa NB 심사 |
| 촬영실 GUI SW | **LLZ Traditional 510(k)** 또는 IZL 번들 제출 | SW 기술문서 (디지털의료기기 분류 확인 필수) | Class IIa NB 심사 (SaMD) |

---

## 7. 자사 3개 제품 영향 맵핑

### 7-A. X-ray Detector — 전략 행동 지시

| 구분 | 내용 |
|---|---|
| Predicate 후보 | DRTECH EXPD 시리즈(K243443), Vieworks VIVIX-S(K241125), Rayence(K242394) 중 유사 spec 선택 |
| 성능 시험 필수 | MTF, DQE (IEC 62220-1-1), NPS (Noise Power Spectrum) |
| SE 입증 포인트 | 동일 intended use + 동일 or 유사 scintillator/amorphous silicon TFT 구조 |
| Special 510(k) 조건 | 이미 cleared FPD 보유 시 SW/firmware 변경은 Special로 처리 가능 |
| 주의사항 | 신규 scintillator 재료 변경 시 Traditional 510(k) 필요 |

### 7-B. Handheld X-ray Source — 전략 행동 지시

| 구분 | 내용 |
|---|---|
| 자사 현황 | K251223 (HnX-P1, HnX-PB) 기 cleared (2025-08-04) |
| 신규 모델 | K251223 predicate → Special 510(k) 경로 가능 |
| Predicate 외부 후보 | DRGEM PROMO(K251443), Poskom AirRay-mini(K253244), Samsung GM85(K242651) |
| 성능 시험 | IEC 60601-1 (기본 안전), IEC 60601-1-2 (EMC), IEC 60601-1-3 (방사선방호), 21 CFR 1020.30 적합성 |
| 번들 제출 검토 | Detector + Source 시스템 번들 → 1건 510(k)으로 통합 가능 (Carestream K253185 패턴) |
| MDR 대응 | Class IIa, EC-REP 필수, EUDAMED UDI 등록 |

### 7-C. 촬영실 GUI SW — 전략 행동 지시

| 구분 | 내용 |
|---|---|
| Product Code | LLZ (892.2050) — 독립 SW 제출 시 |
| Predicate 후보 | K251038 RiasDR (Cambridge-Hit, 2025-08-06) — 유사 DR Acquisition SW |
| 번들 옵션 | Handheld Source + FPD + SW 시스템으로 단일 IZL 또는 MQB 제출 |
| IEC 62304 준수 | Safety Class B (minor injury 가능) 또는 C (serious injury) 판단 → Class C 적용 권장 (방사선 촬영 제어 SW) |
| PCCP 해당 여부 | AI 진단 보조 기능 포함 시 PCCP 제출 고려 |
| MFDS 대응 | 디지털의료기기 분류 확인 (2025 가이드라인 6종 체크) — SW 단독 3등급 가능성 있음 |

---

## 8. 510(k) Summary 핵심 작성 패턴

실제 경쟁사 Summary 문서에서 공통적으로 확인된 구조:

```
1. Submitter Information
2. Device Name & Product Code (MQB / IZL / LLZ)
3. Indications for Use
   - "Intended for use in general radiographic applications..."
   - "For use with X-ray generators in clinical settings..."
4. Device Description
   - 핵심 구성 (예: amorphous silicon TFT array + CsI:Tl scintillator + ASIC)
   - 통신 방식 (wireless 802.11 / wired GigE)
   - 운용 파라미터 (kVp range, DR/fluoroscopy capability)
5. Predicate Comparison Table
   - Intended Use: Same / Different
   - Technological Characteristics: Same / Different + 설명
   - Does the difference raise new Q of S&E? → No
6. Performance Testing Summary
   - 시험 기관 (NRTL / accredited lab)
   - 시험 결과 Pass/Fail 목록
   - IEC/ANSI 기준 적합 선언
7. Conclusion: SE determination
```

---

## 9. 전략적 시사점 요약

| 구분 | 사실 (Fact) | 해석 (Interpretation) | 행동 지시 (Action) |
|---|---|---|---|
| 경쟁 강도 | 한국 기업이 IZL(Mobile X-ray) 시장 제출의 ~50% 차지, MQB(Detector)도 약 35% | 한국 기업들은 FDA 510(k) 취득 역량이 높음. 자사도 신속 대응 필요 | K251223(IZL) 기 cleared 활용, 신규 Detector 510(k) 우선 착수 |
| Clearance 유형 | DRTECH·Iray 등은 Special 510(k) 활용 빈번 (연간 2~3건) | 제품 마이너 변경 시 Special로 ~3개월 처리. 전통적 510(k) 대비 비용·시간 절감 | 기 cleared 제품(K251223) 기반 마이너 변경은 Special 510(k) 검토 |
| 번들 제출 | Carestream K253185: FPD + Mobile X-ray System 번들 | 시스템 통합 제품의 경우 단일 510(k)이 심사 일관성 유리 | Source + Detector + SW 시스템 제품화 시 번들 전략 검토 |
| SW 단독 경로 | K251038(LLZ): 순수 DR Acquisition SW도 Class II 510(k) 취득 가능 (처리 ~4개월) | GUI SW 단독 제출 가능 → 하드웨어와 별도 규제 대응 가능 | 촬영실 GUI SW 조기 510(k) 착수 (하드웨어와 병행) |
| Predicate 전략 | 경쟁사들은 자사 이전 제품을 predicate로 사용하는 경향 | 내부 predicate chain이 심사 속도·신뢰성 향상에 유리 | K251223를 자사 IZL 계열 predicate chain의 기점으로 관리 |

---

## 10. 부록: OpenFDA API 빠른 조회 스크립트

```python
import requests, json

PAT = None  # FDA API는 인증 불필요 (rate limit: 240 req/min)

def search_510k(product_code, limit=20):
    url = "https://api.fda.gov/device/510k.json"
    params = {
        "search": f"product_code:{product_code}",
        "limit": limit,
        "sort": "decision_date:desc"
    }
    r = requests.get(url, params=params)
    return r.json().get("results", [])

# 사용 예
for item in search_510k("MQB"):
    print(item["k_number"], item["decision_date"], item["device_name"][:40], item["applicant"][:30])
```

### 주요 Product Code 참조표

| Product Code | CFR | 설명 | 자사 해당 |
|---|---|---|---|
| MQB | 892.1680 | Digital Radiographic Flat Panel Detector | X-ray Detector |
| IZL | 892.1720 | Mobile X-ray System | Handheld X-ray Source |
| LLZ | 892.2050 | Image Processing Software, Radiological | 촬영실 GUI SW |
| MYN | 892.2060 | AI-assisted Diagnosis (Dental/Radiology) | GUI SW (AI 기능 추가 시) |
| EHD | 872.1800 | Intraoral Dental X-ray (Handheld) | 참고 (치과용) |
| JAK | CT 관련 | Computed Tomography | 해당 없음 |
