> 최종 갱신: 2026-05-21 (자동보강 #60)
> 근거: https://eur-lex.europa.eu/eli/reg_impl/2026/977/oj | https://meddeviceguide.com/blog/eu-notified-body-conformity-assessment-implementing-regulation-2026-977-guide | https://specculo.com/implementing-regulation-2026-977-published/ | https://www.emergobyul.com/news/europe-legislates-more-formal-notified-body-processes-and-timelines-part-2-related-changes | https://www.team-nb.org/wp-content/uploads/2022/10/Team-NB-PositionPaper-BPG-TechnicalDocEU-MDR-2017-745-V1-20221005.pdf

# NB Deficiency Letter 대응 전략·샘플

## 1. 제도 개요

### 1-A. 법적 근거
- **MDR (EU) 2017/745 Annex VII**: NB의 conformity assessment 절차 및 자료 요청 권한
- **Commission Implementing Regulation (EU) 2026/977** (발효일: 2026-05-05 OJ 게재, 적용일: 2027-02-25): NB 심사 타임라인·clock-stop·구조적 대화 균일 요건 최초 법제화
- **MDR Article 54**: Clinical evaluation consultancy procedure (CEAR 제출 의무)
- **MDR Article 36(3)**: Commission의 NB 균일 요건 Implementing Regulation 위임 근거

> Implementing Reg (EU) **2026/977**(2026-05-04 채택·2026-05-05 OJ; NB 적합성평가 통일 QMS·최대기한, MDR/IVDR Annex VII 개정) 적용(공표 후 ~9개월 경과, 2027-02-25 전망 — OJ 확인 권장) 전 계약 건에는 종전 규칙 적용.
> 계약일 기준으로 구버전/신버전 여부를 반드시 확인할 것.

### 1-B. Deficiency Letter 정의
NB가 conformity assessment 과정에서 제조사 제출 서류의 결함·불명확·누락 사항을 서면으로 통지하는 문서. 국내 MFDS "보완 요청", FDA "Additional Information (AI) Request"에 해당하는 EU MDR 용어.

---

## 2. 심사 단계별 타임라인 및 Clock-Stop 규칙

### 2-A. 최대 기간 및 최대 중단 횟수 (2026/977 Article 2·3 기준)

| 심사 단계 | 최대 기간 | 최대 중단 횟수 | 비고 |
|---|---|---|---|
| Application review & contract | 30일 | **1회** | |
| QMS auditing (site당) | 120일 | **4회** (추가 현장당 +2) | Annex IX Route |
| Product/Technical documentation verification | 90일 | **4회** | Annex IX/X |
| Substantial change assessment | 30일 (NB 심사) + 90일 (추가 활동) + 20일 (보충서) | **2회** | |
| Re-certification | 90일 | **4회** | |
| Certificate re-issuance (최종 검토 후) | 20일 | N/A | |

### 2-B. Clock-Stop 작동 원칙
1. NB가 제조사에 서면 결함 통지 → **당일 clock stop**
2. 제조사가 완전한 답변 제출 → **제출 익일 clock resume** (당사자 간 달리 합의한 경우 제외)
3. NB는 서면으로 중단 사유·예상 기간을 반드시 통지해야 함
4. 최대 중단 횟수 초과 시 clock은 계속 진행되나, **타임라인 초과·중단 횟수 초과는 인증 거부 사유가 되지 않음** (2026/977 명시)

### 2-C. 절차 흐름 (Product Verification 기준)

```
NB → 기술문서 심사 착수 (Day 0, clock start)
         ↓
     결함 발견 → Deficiency Letter 발송 (clock stop)
         ↓
   제조사 답변서 제출 (clock resume next day)
         ↓
   NB 재심사 → 추가 결함? → 2차 Deficiency Letter (최대 4회까지)
         ↓
   최종 심사 결정 (인증 / 거부)
```

> **Structured Dialogue (2026/977 Article 7)**: 심사 전·후 NB와 공식 대화 요청 가능. 분류 문제, 기술문서 기대치, 심사 범위 사전 조율에 활용.

---

## 3. Deficiency Letter 주요 유형 및 대응 전략

### Type 1: Clinical Evaluation / CER 결함 (가장 빈번)

**빈번 사유**
- CER 내 동등성(Equivalence) 근거 불충분 (MDCG 2020-5 기준 미달)
- Literature search 방법론 불명확 (검색 전략, 포함/제외 기준 미문서화)
- 임상 데이터 추적성(Traceability) 결여: GSPR → CER 연계 누락
- 불리한 데이터 누락 또는 불충분한 해석
- PMCF Plan/Report 부재 또는 부실

**대응 전략**
1. MDCG 2020-5 §2.3 동등성 기준 3가지(기술적·생물학적·임상적) 각각 도표화
2. Literature search protocol (PubMed, EMBASE 등) + 검색식 전문 첨부
3. GSPR 번호 → CER 섹션 → 인용 문헌 3단계 traceability matrix 작성
4. 불리한 데이터는 삭제 금지: 해석·완화 근거를 명시하여 포함
5. PMCF Plan 신규 제출 시 MDCG 2020-7 섹션 구조 준수

**샘플 답변 (CER 동등성 결함)**
```
[Deficiency] The CER does not sufficiently demonstrate clinical equivalence 
to the predicate device as required by MDCG 2020-5 Section 2.3.

[Response]
We have revised Section 4.2 of the CER to provide a detailed equivalence 
analysis structured per MDCG 2020-5 §2.3 criteria:

1. Technical equivalence:
   - Same intended purpose: [Device A] is intended for posterior-anterior 
     chest X-ray in adults, as is the predicate [Device B] (Ref. IFU v2.1).
   - Same design: Both devices utilize the same amorphous silicon flat-panel 
     detector technology (Ref. Engineering Report ER-2024-001).
   - Same materials in contact: Not applicable (non-contact device).

2. Biological equivalence: Not applicable (no patient contact).

3. Clinical equivalence:
   - Same clinical condition: Both indicated for standard diagnostic radiology.
   - Equivalent clinical performance: DQE(0) ≥ 65% for both devices 
     (Ref. Test Report TR-2024-015, IEC 62220-1-1).

Revised CER Rev. 3 is attached as Annex A.
```

---

### Type 2: Technical Documentation / 기술문서 결함

**빈번 사유**
- GSPR (Annex I) 적합성 선언 미비 (항목별 근거 불명확)
- Risk management file (ISO 14971) — benefit/risk analysis 불충분
- Design inputs/outputs traceability 결여
- SW 문서 누락: IEC 62304 SOUP list, SRS, SVP
- IEC 60601-1 safety test report 기관 미인정 (Notified Body 인정 시험소 필요)

**대응 전략**
1. GSPR 체크리스트 → 각 항목에 적용 표준·시험 보고서·문서 번호 1:1 매핑
2. ISO 14971 risk management file: benefit > residual risk 근거를 정량적으로 제시
3. SW의 경우 IEC 62304 §5 산출물 목록을 표로 제시 + 각 파일 첨부
4. 미인정 시험소 데이터는 보완 기간 내 인정 기관 재시험이 현실적으로 불가능하므로, **사전에 IECEE CB Scheme 또는 NB 지정 시험소에서 시험** 권고

---

### Type 3: QMS Audit Nonconformity

**빈번 사유**
- CAPA 절차 미이행 또는 효과성 검증 누락
- 설계변경관리(Design Change Control) 기록 불비
- Supplier qualification 미흡
- Internal audit 계획·결과 기록 부재
- Management Review 회의록 누락

**대응 전략**
1. NC 등급 구분: Major / Minor / Observation → Major NC는 근본원인 분석 필수
2. CAPA 답변 구조: Root Cause → Corrective Action → Preventive Action → Evidence → Effectiveness Check 계획
3. 현장 재심사(Follow-up Audit) 대비: CAPA 증적 문서 체계적으로 준비
4. Repeat NC (이전 감사와 동일 결함) 절대 회피 — NB 신뢰도 영향

**샘플 답변 (Major NC: CAPA)**
```
[NC #3] Major: The CAPA procedure does not define criteria for effectiveness 
verification as required by ISO 13485:2016 §8.5.2(f).

[Root Cause Analysis]
SOP-CAPA-001 Rev.2 §6.4 lacked explicit definition of effectiveness 
verification criteria and timeframe. This was identified during an internal 
audit (IA-2026-03) conducted on 2026-03-10 but corrective action was 
not initiated within the required 30-day window.

[Corrective Action]
SOP-CAPA-001 has been revised to Rev.3 (effective 2026-04-15) to include:
- Mandatory effectiveness verification within 90 days of corrective action 
  implementation
- Quantitative acceptance criteria (e.g., zero recurrence within 
  verification period)
- QM review and sign-off requirement before closure

[Preventive Action]
Internal audit checklist (F-IA-001) updated to include CAPA effectiveness 
verification as a mandatory check point.

[Evidence] Attached: SOP-CAPA-001 Rev.3, Training Record TR-2026-042, 
F-IA-001 Rev.2

[Effectiveness Check Plan] Scheduled internal audit Q3 2026 (2026-09-15) 
to verify zero CAPA effectiveness failures.
```

---

### Type 4: Labeling / IFU 결함

**빈번 사유**
- MDR Annex I §23 필수 기재사항 누락
- ISO 15223-1 심볼 불명확 또는 미적용
- 방사선 경고 표시 미흡 (IEC 60601-1-3 요건)
- 다국어 요건 미충족 (EU 판매 국가별 언어)
- UDI 기재 위치·형식 오류

**대응 전략**
1. MDR Annex I §23 항목 전체를 체크리스트화 → IFU 페이지 번호 대응 표 첨부
2. ISO 15223-1:2021 심볼 레퍼런스 테이블 첨부
3. 다국어 번역본 공인 번역사 확인 증명서 첨부 권장

---

## 4. 3개 지역 비교 매트릭스

| 항목 | EU NB (MDR) | MFDS (국내) | FDA (미국) |
|---|---|---|---|
| 공식 용어 | Deficiency Letter | 보완 요청 | Additional Information (AI) Request |
| 근거 법령 | MDR Annex VII + 2026/977 | 의료기기법 §12 + 허가·신고·심사 규정 | 21 CFR 807 + FDA Review Policy |
| 답변 기한 | NB와 합의 (법정 상한 없음) | 1차 60일, 2차 60일 | 180일 (타임라인 기산일부터) |
| 최대 중단 횟수 | 4회 (product verification 기준) | 2차까지 (실질 2회) | 제한 없음 (Interactive Review 가능) |
| Clock-stop | 예 (NB 요청 당일 stop, 제출 익일 resume) | 예 (보완 기간 제외) | 예 (AI 발송일부터 stop) |
| 미응답 시 | 평가 종료 / 불승인 | 취하 간주 | 허가 거부 |
| 사전 대화 창구 | Structured Dialogue (Art.7, 2026/977) | 상담제도 (비공식) | Pre-Sub (Q-Sub) (공식, 문서화) |
| 주요 결함 유형 | CER, TD, QMS NC, Labeling | 기술문서, 임상, 기준규격, 라벨링 | SE, Performance Testing, Labeling, SW |
| 재심사 회의 | Follow-up Audit (QMS NC 시) | 재심사 (서면 원칙) | Interactive Review / Clarification Meeting |

---

## 5. 자사 3개 제품 결함 위험 맵핑

| 제품 | 고위험 결함 유형 | 핵심 대응 준비사항 |
|---|---|---|
| **X-ray Detector** | CER 동등성 (Type 1) + TD 시험 보고서 (Type 2) | DQE·MTF·NPS 시험 (IEC 62220-1-1) 인정 시험소 사전 수행; CER에 X-ray detector 특화 임상 데이터 포함 |
| **Handheld X-ray Source** | TD 방사선 방호 데이터 (Type 2) + Labeling 방사선 경고 (Type 4) | IEC 60601-1-3 kV·mA 측정 데이터 체계화; 국가별 언어 방사선 경고 문구 준비 |
| **촬영실 GUI SW** | SW 문서 누락 (Type 2: IEC 62304) + Cybersecurity (Type 2) | SW 수명주기 산출물 전체 (SRS/SDS/SVP/SOUP) 사전 완비; EU 2026/977 Cybersecurity 요건 적합성 매핑 |

---

## 6. 답변서 작성 원칙 (Anti-Patterns 포함)

### 6-A. 필수 구조
```
1. 커버 레터 (요약)
   - 이슈 번호 참조, 제출일, 첨부 문서 목록
   
2. 결함 항목별 대응 (Item-by-Item)
   [Deficiency #N]
   [Response]
   [Supporting Documents]
   
3. 변경 문서 목록 (Revision Summary)
   - 문서번호, 개정 전 버전, 개정 후 버전, 변경 내용 요약
   
4. 첨부 문서 (Annexes)
   - 번호순 정렬
```

### 6-B. Anti-Patterns (절대 회피)
| 잘못된 대응 | 문제점 | 올바른 대응 |
|---|---|---|
| "해당 없음" 한 줄로 결함 종료 | NB 재결함 유발, 신뢰도 하락 | 이유 + 근거 문서 번호 명시 |
| 불리한 데이터 삭제 | MDR §61 위반, 인증 거부 사유 | 해석·완화 근거 포함하여 유지 |
| 미검증 번역 IFU 제출 | 다국어 결함 재발 | 공인 번역 + 검토자 서명 |
| CAPA 종료 없이 답변 제출 | Major NC 해소 불가 | Evidence + Effectiveness Plan 완비 후 제출 |
| 기한 초과 후 부분 답변 | 중단 횟수 낭비, 일정 지연 | 기한 내 완전한 답변 1회 제출 원칙 |

---

## 7. 타임라인 관리 전략

```
Deficiency Letter 수신
        ↓
  Day 1~3:  내용 분류 + 담당자 배정 + 시험소 일정 확인
  Day 4~14: 추가 시험 필요 항목 즉시 의뢰 (시험 기간 역산)
  Day 15~N-14: 답변서 초안 작성 (항목별 병렬 진행)
  Day N-14~N-7: 내부 QA/RA 검토 + EU AR 검토
  Day N-7~N-3: 최종 교정 + 첨부 문서 번호 정렬
  Day N-1:  NB 담당자에게 제출 예정 사전 통보
  Day N:    제출 (완전한 답변, 1회)
        ↓
  NB 수신 다음날 Clock Resume
```

> **중요**: 기한 연장이 필요한 경우, 기한 만료 **최소 14일 전**에 NB에 서면 요청. 2026/977 기준 NB와 합의하여 기간 조정 가능.

---

## 8. Structured Dialogue 활용법 (2026/977 Article 7)

2026-02-25부터 모든 NB는 공식 Structured Dialogue 절차를 제공해야 함.

**활용 시점**
- 심사 신청 전: 분류, 적합성 평가 경로 (Annex IX/X/XI), 기술문서 기대 수준 확인
- 결함 답변 제출 전: 답변 방향 NB와 사전 조율 (추가 clock-stop 방지)
- Re-certification 전: 사소한 변경사항 인증서 갱신 범위 확인

**절차**
1. NB에 Structured Dialogue 요청서 제출 (주제, 질문 목록, 관련 문서 첨부)
2. NB가 회의 일정 확정 (화상/서면)
3. 논의 내용 분서화 → 양측 서명 → 공식 문서로 보관
4. 결과를 기술문서 또는 CER에 반영

> Structured Dialogue는 binding guidance가 아님. 그러나 NB의 입장을 공식 문서로 남기므로, 추후 결함 발생 시 방어 근거로 활용 가능.

---

## 9. 체크리스트

### 답변서 제출 전 최종 점검
- [ ] 모든 결함 번호에 대응 답변 포함 (누락 없음)
- [ ] 각 답변에 지지 문서 번호/버전 명시
- [ ] 개정 문서 변경 이력(Revision History) 업데이트 완료
- [ ] 첨부 문서 Annex 번호 일치 확인
- [ ] EU AR (Authorized Representative) 검토·서명 완료
- [ ] 불리한 데이터 삭제 없이 해석 포함
- [ ] 답변서 언어: 영어 (NB 사용 언어 확인)
- [ ] 제출 전 NB 담당자에게 제출 예정일 통보

### 자사 3제품 공통 사전 준비
- [ ] ISO 14971 Risk Management File — benefit/risk 정량 근거 완비
- [ ] CER — 3개 동등성 기준 (기술적·생물학적·임상적) 표로 정리
- [ ] IEC 60601 시험 보고서 — NB/IECEE 인정 시험소 발행 확인
- [ ] QMS CAPA — Effectiveness Verification 기준·일정 정의 완료
- [ ] IFU — MDR Annex I §23 전항목 체크리스트 완비

---

## 참조 문서
- [Commission Implementing Regulation (EU) 2026/977](https://eur-lex.europa.eu/eli/reg_impl/2026/977/oj) — NB 균일 요건 (2026-05-05 발효)
- [MedDeviceGuide: 2026/977 Guide](https://meddeviceguide.com/blog/eu-notified-body-conformity-assessment-implementing-regulation-2026-977-guide)
- [Specculo: What 2026/977 Means for Manufacturers](https://specculo.com/implementing-regulation-2026-977-published/)
- [Emergo by UL: NB Timelines Part 2](https://www.emergobyul.com/news/europe-legislates-more-formal-notified-body-processes-and-timelines-part-2-related-changes)
- [Team NB: BPG Technical Documentation](https://www.team-nb.org/wp-content/uploads/2022/10/Team-NB-PositionPaper-BPG-TechnicalDocEU-MDR-2017-745-V1-20221005.pdf)
- [MDCG 2020-5: Equivalence Guidance](https://health.ec.europa.eu/medical-devices-sector/new-regulations/guidance-mdcg-endorsed-documents-and-other-guidance_en)
- 연관 문서: `MFDS_보완자료_대응전략.md` / `FDA_AI_Additional_Information_대응_전략.md`

---
작성: 도메인 전문가 · 검토(QA13/#109, 2026-06-09): EU 2026/977(NB 통일 QMS·최대기한) 및 MFDS 디지털 제조·품질관리 고시 제정 검증·반영. 출처: EUR-Lex·AESGP·NSF·국가법령정보. · 상태: 승인 · 일자: 2026-06-09
