> 최종 갱신: 2026-06-02 (자동보강 #82)
> 근거: https://www.fda.gov/medical-devices/cdrh-international-affairs/medical-device-single-audit-program-mdsap | https://www.mdsap.global/ | https://www.imdrf.org/working-groups/medical-device-single-audit-program-mdsap | https://meddeviceguide.com/blog/mdsap-audit-preparation-guide

# 글로벌 동시 제출 전략 — MDSAP 활용 및 Common Core 접근법

> 자사 3개 제품(X-ray Detector·Handheld X-ray Source·촬영실 GUI SW)의 MFDS·FDA·MDR 3개 지역 동시 인허가를 위한 전략 문서

---

## 1. MDSAP 개요

### 1.1 프로그램 정의

MDSAP(Medical Device Single Audit Program)은 1회의 QMS 심사로 복수 규제 당국의 인정을 받는 IMDRF 주도 프로그램이다.

| 항목 | 내용 |
|---|---|
| 운영 기관 | IMDRF → MDSAP Regulatory Authority Council (RAC) |
| 2026 RAC 의장 | FDA (2026-2027 임기) |
| 심사 기준 | ISO 13485:2016 + 각 회원국 법규 요건 |
| 최신 심사 접근법 | AU P0002.010 (2026-02 개정, QMSR 정렬) |

### 1.2 참여 규제 당국 현황 (2026-06 기준)

| 지위 | 국가/기관 | 비고 |
|---|---|---|
| **정회원 (Full Member)** | 🇺🇸 FDA (미국) | QSR → QMSR (2026-02-02 시행) |
| **정회원** | 🇨🇦 Health Canada (캐나다) | MDSAP 의무 인증 |
| **정회원** | 🇧🇷 ANVISA (브라질) | |
| **정회원** | 🇯🇵 PMDA/MHLW (일본) | |
| **정회원** | 🇦🇺 TGA (호주) | |
| **준회원 (Affiliate)** | 🇲🇾 NPRA 말레이시아 | 2025-09 합류 |
| **준회원** | 🇿🇦 SAHPRA 남아공 | 2025-04 합류 |
| **신청 예정** | 🇸🇬 HSA 싱가포르 | 2026 하반기 정회원 신청 예정 |
| **미참여** | 🇰🇷 MFDS (한국) | 미참여 — ISO 13485 별도 제출 |
| **미참여** | 🇪🇺 EU (MDR) | NB 심사 체계 별도 — ISO 13485 조화표준 활용 |

### 1.3 MDSAP의 자사 적용 가능 범위

```
MDSAP 심사 1회
    ├─ FDA (미국) QMS 인정 ✅ → 510(k) 제출 시 QMS 별도 증빙 불요
    ├─ Health Canada ✅
    ├─ ANVISA (브라질) ✅
    ├─ PMDA (일본) ✅
    ├─ TGA (호주) ✅
    ├─ MFDS (한국) ❌ → KGMP 별도 심사 필요
    └─ EU MDR NB ❌ → NB의 Annex IX/X/XI 심사 필요
                       (ISO 13485 조화표준 → 간접 활용)
```

**핵심**: MDSAP는 MFDS·MDR을 직접 대체하지 않으나, ISO 13485:2016 기반 단일 QMS 체계를 구축하면 3개 지역 모두 실질적 중복 부담 감소 효과.

---

## 2. Common Core Technical Documentation 전략

### 2.1 전략 개념

"Common Core" = 3개 지역에 공통으로 사용 가능한 기술문서 핵심 섹션을 먼저 완성하고, 지역별 추가 요소를 레이어로 추가하는 방식.

```
[Common Core]  →  +[MFDS 레이어]  →  MFDS 기술문서
              →  +[FDA 레이어]   →  eSTAR
              →  +[MDR 레이어]   →  Annex II TD
```

### 2.2 Common Core 구성 요소

| 섹션 | Common Core 내용 | MFDS 추가 | FDA 추가 | MDR 추가 |
|---|---|---|---|---|
| Device Description | 제품 설명, 구성, 재질 | 한국어 번역, 사용목적 고시 형식 | Indications for Use (Form 3881) | §1 상세 기술 |
| Performance | 핵심 시험 결과 (IEC 기반) | 국내 인정 기관 시험성적서 | FDA recognized standard 인용 | Annex II §6 형식 |
| Risk Management | ISO 14971 Risk Report | — | Residual Risk 요약 | GSPR 맵핑 |
| Software | IEC 62304 산출물 | 디지털의료기기 심사 서류 | SW Guidance (SOUP·SOD) | SW 상세 정보 |
| Cybersecurity | 공통 Threat Model·SBOM | MFDS 가이드라인 RA-01~35 | 524B SPDF | MDCG 2019-16 체크리스트 |
| Labeling | IFU 공통 내용 | 한국어 표시기재 고시 | 21 CFR 801 형식 | MDR §23.4 형식 |
| Clinical | 문헌 검색·임상 데이터 | 국내 임상시험 성적서 조건 | 510(k) SE 비교 데이터 | MDR Art.61 CEP/CER |

### 2.3 문서 재사용 효율 (예시)

```
Gates 완성 후 예상 문서 재사용률:
- Device Description: 80% 공통 (20% 지역 형식)
- Performance Testing: 90% 공통
- Risk Management: 85% 공통
- Software: 75% 공통 (지역별 추가 산출물 25%)
- Clinical: 50% 공통 (각 지역 임상 요건 차이 큼)
```

---

## 3. 제출 순서 전략

### 3.1 권장 순서 비교

| 전략 | 순서 | 장점 | 단점 |
|---|---|---|---|
| **전략 A (FDA 우선)** | FDA 510(k) → MFDS → MDR | 글로벌 시장 가장 큰 미국 선진입. FDA clearance → MFDS·MDR SE 근거로 활용 가능 | FDA 심사 기간 불확실 (평균 180일 이상) |
| **전략 B (MFDS 우선)** | MFDS 허가 → FDA → MDR | 국내 진출 우선. MFDS 허가 → MDR 임상 근거 일부 활용 | FDA SE 비교에서 MFDS 허가만으로는 predicate 인정 어려움 |
| **전략 C (병렬 동시)** | MFDS + FDA 동시 → MDR | 최단 글로벌 진출 | 자원 투입 집중 (RA 인력·비용 2배) |
| **전략 D (MDR 선행)** | MDR CE → MFDS → FDA | CE Marking → 타 지역 임상 근거 활용. 단, NB 심사 기간 1.5~2년 | 가장 긴 첫 시장 진출 지연 |

### 3.2 자사 제품별 권장 전략

| 제품 | 권장 전략 | 근거 |
|---|---|---|
| **X-ray Detector** | 전략 A (FDA 우선) | Predicate 다수, 510(k) 경로 명확. DQE IEC 62220-1-1 글로벌 공통 시험 기준 활용 가능 |
| **Handheld X-ray Source** | 전략 C (병렬) 또는 A | 21 CFR 1020.30 방사선 기준 우선 충족 필수. FDA clearance 후 MFDS 허가에 국외 인허가 증명 활용 |
| **촬영실 GUI SW** | 전략 A or C | PCCP/AI Act 사이버보안 요건 복잡. FDA SW 가이던스 먼저 통과 → MDR AI Act 대응에 활용 |

---

## 4. MDSAP 취득 로드맵

### 4.1 취득 절차

```
Phase 1 (D-6~12개월): QMS 갭 분석
  - ISO 13485 + 5개 회원국 법규 Gap Analysis
  - KGMP 통합 전략 수립 (한국 MFDS 별도 대응)
  - MDSAP Auditing Organization(AO) 선정 (15개 인정 AO 중 선택)

Phase 2 (D-3~6개월): QMS 구축 완료
  - 37개 절차서 정비
  - Design Controls·CAPA·Complaint File·Internal Audit 완비
  - QMSR (21 CFR 820, 2026-02-02) 요건 반영

Phase 3 (D 0~3개월): MDSAP 심사
  - AO 주관 MDSAP 심사 (통상 3~5일)
  - 회원국 규제 당국 감시 (옵저버 참여)
  - 심사 결과: Grading 1(우수)~5(부적합)
  - Grade 1~3: 인증서 발급
  - Grade 4~5: 시정조치 후 재심사

Phase 4: 연간 유지
  - Annual Surveillance 심사
  - 3년마다 Re-certification
```

### 4.2 MDSAP 심사 범위 (AU P0002.010, 2026-02 기준)

| Task Group | 내용 |
|---|---|
| Task 1 | QMS 문서화·경영 책임 |
| Task 2 | 제품 실현 (설계·개발·생산) |
| Task 3 | 측정·분석·개선 |
| Task 4 | 지역별 추가 요건 (법규 요건, FDA QMSR 등) |

---

## 5. 3지역 동시 인허가 타임라인 예시

```
Month  1  2  3  4  5  6  7  8  9  10 11 12 13 14 15 16 17 18
MDSAP  [──────────────────────────────┤인증]
       QMS 구축 + 갭분석               심사

FDA    [────────────────────┤제출]──────────────────┤CL]
       STED/eSTAR 작성       510(k)    심사 ~180일

MFDS                        [────────┤제출]──────┤허가]
                             기술문서  허가 신청   심사 ~90일

MDR                                   [────────────────────┤CE]
                                      NB 계약       NB 심사 1.5~2년

(CL=Clearance, CE=CE Marking 발급)
```

---

## 6. 3개 지역 동시 인허가 비용 예측 (개략)

| 항목 | MFDS | FDA | MDR |
|---|---|---|---|
| 신청 수수료 | ~50~200만 원 (등급별) | $18,070 (510(k), 2026 SMF) | NB 계약 €30,000~100,000+ |
| 시험 비용 (외부) | 3,000~5,000만 원 | (MFDS와 공용 가능) | (MFDS/FDA 보고서 일부 재사용) |
| MDSAP 인증 | — | AO 심사비 약 $10,000~30,000 | — |
| NB 심사비 | — | — | 연간 €15,000~50,000 |
| 총 예상 | 5,000만 원 내외 | $50,000~100,000 내외 | €100,000~200,000 내외 |

> [검증 필요] 실제 비용은 제품 복잡도·시험 소요·NB 선정에 따라 크게 변동. 세부 견적은 AO·NB·시험기관 개별 문의 필요.

---

## 7. 핵심 리스크 및 대응

| 리스크 | 확률 | 영향 | 대응 |
|---|---|---|---|
| FDA 심사 기간 초과 (>180일) | 중 | 상 | Pre-Sub 미팅 활용, RTA 방지 체크리스트 자가 점검 |
| MDR NB 심사 지연 (심사 대기 적체) | 고 | 상 | NB 조기 선정 (제출 6~12개월 전), Preliminary Review 활용 |
| MFDS 보완 반복 | 중 | 중 | 사전 식약처 상담 활용, 기술문서 사전 점검 |
| MDSAP Grade 4~5 | 저 | 상 | 사전 Mock Audit 실시 |
| 환율·수수료 변동 | 저 | 저 | 예산 15% 여유 반영 |

---

## 8. 체크리스트 — 동시 제출 준비 사전 점검

- [ ] MDSAP Auditing Organization 선정 완료
- [ ] ISO 13485 QMS 기반 구축 + KGMP·QMSR·MDR 통합 갭 분석 완료
- [ ] Common Core 기술문서(Device Description·Performance·Risk·SW·Labeling) 완성
- [ ] 제출 순서 전략 경영진 승인 (전략 A/B/C/D 확정)
- [ ] FDA User Fee 납부 계획 수립 (SMF 자격 여부 확인)
- [ ] EU 대리인(EU-REP) 지정 완료
- [ ] 각 지역 제출 담당 RA 인력 배정 확정
- [ ] 통합 RA Project Plan (간트차트) 작성 및 관리

---

*참조 문서*
- [KGMP_QMSR_ISO13485_비교_통합전략](국제표준_IEC_ISO/KGMP_QMSR_ISO13485_비교_통합전략.md)
- [ISO13485_2016_절차서_목록_뼈대](국제표준_IEC_ISO/ISO13485_2016_절차서_목록_뼈대.md)
- [Week12_종합실습_평가](../05_전문가교육/Week12_종합실습_평가.md) — 글로벌 제출 로드맵 참조
- [3지역_공통_빈번지적사항_Top20](3지역_공통_빈번지적사항_Top20.md)
