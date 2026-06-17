> 최종 갱신: 2026-05-22 (자동보강 #62)  ⟶ 2026-06-09 (검증⑨ — 디지털의료제품법 시행일 정정)
> 근거: https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (MDR 2017/745 Annex III §1.1, Article 83-86) | https://health.ec.europa.eu/document/download/a9ad86b7-1b8e-4bae-beb4-48b2b3ed2f05_en?filename=mdcg_2025-10_en.pdf (MDCG 2025-10, 2025-12-19) | https://health.ec.europa.eu/system/files/2023-01/mdcg_2022-21_en.pdf (MDCG 2022-21) | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-822 (21 CFR Part 822)

# Post-Market Surveillance Plan — MDR Article 84 / Annex III §1.1 실용 템플릿

## 1. 개요 및 법적 근거

| 항목 | 내용 |
|---|---|
| **법적 근거 (EU MDR)** | MDR 2017/745, Article 83 (PMS 의무), Article 84 (PMS Plan), Annex III §1.1 |
| **관련 보고서** | Article 85: PMSR (Class I) / Article 86: PSUR (Class IIa·IIb·III) |
| **주요 가이던스** | MDCG 2025-10 (2025-12-19, 최신), MDCG 2022-21, MDCG 2020-7 (PMCF) |
| **QMS 연계** | ISO 13485 §8.2.1 (피드백), §8.3 (불만 처리) |
| **문서 위치 (TD)** | Annex III §1.1 — Technical Documentation on PMS |

> **MDCG 2025-10 핵심 변경점 (2025-12-19 발행):**
> PMS system은 QMS 내 통합 운영이 의무화. 단순 "passive" 수집이 아닌 "proactive, systematic, scientifically valid" 방식 명시. Annex III §1.1(b)의 데이터 활용 계획을 benefit-risk balance 재평가와 직접 연계 요구.

---

## 2. 3개 지역 규제 비교 매트릭스

| 비교 항목 | EU MDR | FDA (21 CFR Part 822) | MFDS (의료기기법) |
|---|---|---|---|
| **법적 근거** | MDR Art.83-86, Annex III §1.1 | 21 CFR Part 822; §522 FD&C Act | 의료기기법 제26조(재심사), 제28조(시판후조사) |
| **적용 트리거** | 전 등급 **전면 의무** | FDA가 specific order 발부 시만 의무 (Class II/III 일부) | 신개발 의료기기·신의료기술 적용 기기 (허가 조건 명시 시) |
| **PMS Plan 제출** | 필수 (TD 내 Annex III §1.1) — NB 검토 대상 | 522 order 수령 후 **30일 이내** FDA 제출 | 시판후조사 계획서, 허가 전 또는 조건부 허가 시 제출 |
| **핵심 내용 요건** | §1.1(a): 수집원·방법론, §1.1(b): 활용방법·분석 계획, PMCF 계획 포함 | Study design, enrollment 기준, endpoints, analysis plan, 연간 보고 | 조사 대상 수, 기간, 방법, 평가항목, 부작용 보고 절차 |
| **보고 주기** | PSUR: 매년(Class III), 2년(Class IIa/IIb) / PMSR: 필요시(Class I) | 연간 보고 (522 study report) | 재심사 기간 종료 후 1회 (3~6년) |
| **미이행 페널티** | MDR Art.10(9): CE Mark 취소 가능, NB 감사 지적 | 위반 시 prohibited act (§301(q)(1)(C)) + 기기 misbranded | 의료기기법 §40: 허가 취소, 시정명령 |
| **EUDAMED 연계** | Vigilance 모듈·PMS 모듈 통해 데이터 업로드 | MedWatch, MDR 803 보고 시스템 별도 | UMDNS/UDI 연계, 이상사례 보고시스템 |

### 2-A. 자사 3제품 적용 매트릭스

| 제품 | MDR 등급 (추정) | PMS Plan 의무 | 보고서 유형 | FDA 522 | MFDS 시판후조사 |
|---|---|---|---|---|---|
| **X-ray Detector** | Class IIa/IIb | **필수** | PSUR 2년/매년 | 해당 없음 (비이식형) | 신개발 시 3~4년 조사 |
| **Handheld X-ray Source** | Class IIb | **필수** | PSUR 매년 | 해당 없음 (비이식형) | 신개발 시 4~6년 조사 |
| **촬영실 GUI SW (SaMD)** | Class IIa (MDR §22) | **필수** | PSUR 2년 | 해당 없음 | 소프트웨어 신개발 시 해당 |

---

## 3. PMS Plan 실용 템플릿 (MDCG 2025-10 기반)

`[추가확인]` 표시 항목은 자사 확인 후 기재.

---

### COVER PAGE

| 필드 | 내용 |
|---|---|
| **문서 제목** | Post-Market Surveillance Plan |
| **제품명** | [제품명] |
| **모델명/UDI-DI** | [모델명] / [UDI-DI] |
| **MDR 등급** | Class [I / IIa / IIb / III] |
| **제조업체** | [회사명, 주소] |
| **문서 번호** | [문서 관리 번호] |
| **버전** | [Version X.X] |
| **작성일** | [YYYY-MM-DD] |
| **다음 갱신 예정** | [YYYY-MM-DD] |
| **작성자 / 검토자 / 승인자** | [이름, 직책] |

---

### Section 1. 제품 개요 및 사용 목적

**1.1 제품 정의**

| 항목 | 내용 |
|---|---|
| 제품명 | [제품명] |
| 적용 MDR 등급 | Class [등급], Rule [해당 규칙 번호] |
| 의도된 사용 목적 (Intended Purpose) | [MDR Art.2(12) 정의에 따른 의도 목적] |
| 의도된 사용자 | [의료전문가 / 일반 환경 / 환자 직접 사용 여부] |
| 의도된 사용 환경 | [병원 촬영실, 이동형 현장 등] |
| 금기사항 | [해당 시 기재] |

**1.2 사전 시장 임상 데이터 요약**

- 임상평가 보고서(CER) 버전: [버전 / 날짜]
- 동등성 기기 (해당 시): [기기명, 제조사]
- 사전 인증 상태: [CE / 510(k) / MFDS 허가번호]

---

### Section 2. PMS 목표 및 범위

**2.1 PMS의 목표 (MDR Art.83)**

1. 시장 출시 후 제품의 benefit-risk balance 지속 확인
2. 제품 개선 및 위험관리 프로세스 갱신에 필요한 데이터 확보
3. 임상평가 보고서(CER) 갱신을 위한 post-market 임상 데이터 생성
4. 이상사례(Serious Incident) 발생 시 신속 대응을 위한 신호 탐지

**2.2 PMS 범위**

- 대상 시장: [EU / 한국 / 미국 / 기타]
- 대상 기간: [허가 후 ~ PSUR/PMSR 갱신 주기까지]
- 포함 모델: [해당 모델 전체 목록]
- 포함 소프트웨어 버전: [버전 범위]

---

### Section 3. 정보 수집원 및 방법론 — Annex III §1.1(a)

> MDCG 2025-10: 수집원은 "active & systematic" 방식으로 운영되어야 하며, 단순 불만 접수만으로는 충분하지 않음.

| # | 정보 수집원 | 수집 방법 | 주기 | 담당 부서 |
|---|---|---|---|---|
| **S1** | 고객 불만 (Customer Complaints) | 불만 접수 시스템 (SOP: [문서번호]) | 수시 + 분기 집계 | QA팀 |
| **S2** | Serious Incidents (MDR Art.87) | EUDAMED Vigilance Module, FSCAs | 즉시 (발생 시) | RA팀 |
| **S3** | 비심각 사고 (Non-serious incidents) | 내부 이상사례 로그 | 월별 집계 | QA팀 |
| **S4** | Trend reporting (MDR Art.88) | 통계적 임계값 초과 시 자동 알림 | 분기별 | QA/RA팀 |
| **S5** | 문헌 조사 (Scientific Literature) | PubMed, EMBASE, Cochrane 검색 | 반기 | RA/Clinical팀 |
| **S6** | 동종 기기 데이터 (Equivalent Device) | 제조사 데이터, MAUDE, EUDAMED | 반기 | RA팀 |
| **S7** | Regulatory Vigilance (타 제조사 FSCAs) | EUDAMED, MHRA, BfArM 안전 경보 | 월별 | RA팀 |
| **S8** | Post-market 임상 데이터 (PMCF) | PMCF Plan (별도 문서: [문서번호]) | PMCF 계획 따름 | Clinical팀 |
| **S9** | 사용자 피드백 (설문·필드 방문) | 연 1회 사용자 설문, 필드 보고서 | 연 1회 | 마케팅/QA팀 |
| **S10** | 규제 데이터베이스 | EUDAMED, MAUDE (FDA), MFDS 이상사례 DB | 분기별 | RA팀 |

**수집 데이터 품질 기준:**
- 데이터 완결성(completeness): [정의할 기준]
- 데이터 신뢰성(reliability): 소스별 검증 방법 기재
- 데이터 적절성(suitability): CER 갱신에 사용 가능 여부 판단 기준

---

### Section 4. 데이터 분석 및 활용 계획 — Annex III §1.1(b)

> MDR Annex III §1.1(b): 수집된 정보를 어떻게 활용할 것인지 명시해야 함 (benefit-risk balance 재평가, 위험관리 갱신, CER 갱신, FSCA 결정 등).

**4.1 분석 방법론**

| 분석 유형 | 방법 | 담당 | 트리거 조건 |
|---|---|---|---|
| 추세 분석 (Trend Analysis) | 통계적 관리도 (SPC), 임계값 설정 | QA팀 | 분기별, 또는 임계값 초과 시 |
| Benefit-Risk 재평가 | MDR Art.10(9), ISO 14971 기반 | RA/QA팀 | PSUR 작성 시, 중대 이상사례 발생 시 |
| 신호 탐지 (Signal Detection) | ICSR 클러스터링, 보고율 모니터링 | QA팀 | 월별 |
| 규제 신호 모니터링 | MDCG guidance 변경, 규제 DB 변경 추적 | RA팀 | 월별 |

**4.2 데이터 활용 연계**

| 출력 | 활용처 | 주기 |
|---|---|---|
| PMS 데이터 분석 결과 | CER(임상평가보고서) 갱신 입력 | PSUR 주기와 동기 |
| Benefit-Risk 재평가 결과 | 위험관리 파일(RMF, ISO 14971) 갱신 | 중대 변화 발생 시 즉시, 기본 연 1회 |
| Serious Incident 분석 | EUDAMED Vigilance 보고, FSCA 판단 | 발생 즉시 |
| 불만 추세 분석 | 설계 변경·CAPA 착수 결정 | 분기별 |
| PMCF 결과 | PSUR Section 6 반영 | PMCF 보고서 완성 시 |

---

### Section 5. PMCF (Post-Market Clinical Follow-up) 연계 계획

> MDR Annex XIV Part B 및 MDCG 2020-7 기반. PMS Plan은 PMCF Plan을 참조하거나 포함해야 함.

| 항목 | 내용 |
|---|---|
| PMCF 필요성 판단 | [Yes (이유: ___) / No (정당화 근거: ___)] |
| PMCF 방법 | [Post-market clinical study / Registry / Literature / PMCF Survey] |
| PMCF Plan 문서 참조 | [문서번호, 버전] |
| PMCF 결과 반영 주기 | PSUR 작성 시 Section 6에 통합 반영 |

---

### Section 6. Vigilance 및 사고 보고 절차 연계

| 사고 유형 | 보고 대상 | 기한 | 참조 SOP |
|---|---|---|---|
| Serious Incident (MDR Art.87) | 해당 EU Member State CA | 즉시(사망/위협) / 15일(중대) / 30일(예상치 못한) | [SOP 문서번호] |
| Non-serious (trend reporting, Art.88) | 해당 CA | 임계값 초과 후 지체 없이 | [SOP 문서번호] |
| FSCA (MDR Art.89) | 해당 CA + EUDAMED | 착수 전 (긴급 시 동시) | [SOP 문서번호] |
| MFDS 이상사례 (의료기기법 §32) | 식품의약품안전처 | 15일(중대) / 30일(비중대) | [SOP 문서번호] |
| FDA MDR (21 CFR 803) | FDA | 30일 / 5일(MDR 30일 불가 시) | [SOP 문서번호] |

---

### Section 7. 문서화·갱신 주기 및 책임

**7.1 PSUR / PMSR 갱신 일정**

| 보고서 유형 | 대상 등급 | 갱신 주기 | 최초 제출 시점 | 담당자 |
|---|---|---|---|---|
| PSUR | Class III | 매년 | CE Mark 발급 후 1년 이내 | RA Manager |
| PSUR | Class IIa, IIb | 2년마다 (단, Art.86 §3: NB 요청 시 연 1회) | CE Mark 발급 후 2년 이내 | RA Manager |
| PMSR | Class I | 필요 시 (규정 기준 없음, 내부 정책) | [내부 정책 기준] | QA Manager |

**7.2 PMS Plan 갱신 트리거**

- 정기 갱신: [매년 / 2년마다] (PSUR 주기와 동기화)
- 즉시 갱신 트리거:
  - Serious Incident 발생 후 원인 분석 결과 반영 시
  - 설계 변경 (MDR Art.120 §3 significant change) 시
  - 새로운 MDCG guidance 발행 시
  - 새로운 안전 신호 탐지 시

**7.3 문서 책임 매트릭스**

| 역할 | 책임 | 담당자 |
|---|---|---|
| PMS Plan 작성 | RA팀 | [이름] |
| PMS 데이터 수집·분석 | QA팀 | [이름] |
| PMCF 수행 | Clinical팀 | [이름] |
| PSUR/PMSR 작성 승인 | 경영진 대표 | [이름] |
| PRRC (MDR Art.15) | [이름, 자격 증빙 문서번호] | [이름] |

---

### Section 8. 자사 3제품별 PMS 특화 고려사항

#### 8.1 X-ray Detector

| PMS 항목 | 특화 내용 |
|---|---|
| 주요 위험 신호 | 선량 과노출, 이미지 아티팩트, 결함 픽셀 누적, EMC 간섭 |
| 핵심 수집원 | 방사선 사고 보고 (REMS 등), 방사선관계법 이상사례, MAUDE 동종 기기 |
| PMCF 방법 | 임상 이미지 품질 평가, 임상 사용 데이터 수집 (최소 [N]명 / [기간]) |
| 주요 표준 모니터링 | IEC 62220-1 (X-ray detector), IEC 60601-1 개정 동향 |
| MFDS 특이사항 | 방사선 발생장치 적합성 인증 재평가 주기 확인 |

#### 8.2 Handheld X-ray Source

| PMS 항목 | 특화 내용 |
|---|---|
| 주요 위험 신호 | 방사선 누설, 배터리 과열·발화, 기계적 낙하 손상 |
| 핵심 수집원 | 방사선 안전 사고 데이터 (원자력안전위원회, NRC), MAUDE 동종 기기 |
| PMCF 방법 | 현장 방사선 측정 데이터, 사용자 경험 조사 |
| 주요 표준 모니터링 | IEC 60601-1-2 (EMC, 4th Ed.), 배터리 IEC 62133 |
| MFDS 특이사항 | 방사선 발생장치: 허가 후 정기검사 요건 확인 (의료기기법 §27) |

#### 8.3 촬영실 GUI Software (SaMD)

| PMS 항목 | 특화 내용 |
|---|---|
| 주요 위험 신호 | SW 오류로 인한 진단 오류, 데이터 손실, 사이버보안 취약점 |
| 핵심 수집원 | SW 버그 리포트, 사이버보안 취약점 공개 DB (CVE, NIST NVD) |
| PMCF 방법 | 사용성 평가 (IEC 62366), 실사용 에러 데이터 수집 |
| 주요 표준 모니터링 | IEC 62304 개정, MDCG 2019-16 Rev.1 사이버보안, MDCG 2021-6 SaMD |
| MFDS 특이사항 | 디지털의료제품법(**2025-01-24 시행**, 식약처) 적용 여부 검토 — GUI SW가 디지털의료기기 해당 시 적용 |

---

## 4. 작성 완료 체크리스트

### EU MDR Annex III §1.1 필수 확인

- [ ] PMS Plan이 QMS에 통합되어 있음 (MDCG 2025-10)
- [ ] 정보 수집원이 구체적으로 명시됨 (S1~S10 이상)
- [ ] 수집 방법이 "active & systematic" 요건 충족
- [ ] Annex III §1.1(a): 수집원 및 방법론 섹션 완성
- [ ] Annex III §1.1(b): 데이터 활용 계획 (benefit-risk, CER, RMF 연계) 완성
- [ ] PMCF Plan 연계 또는 PMCF 불필요 정당화 포함
- [ ] Vigilance 보고 절차 참조 (MDR Art.87-89)
- [ ] PSUR/PMSR 갱신 주기 및 담당자 명시
- [ ] PRRC (Article 15) 검토 책임자 지정

### 품질 검증

- [ ] CER 버전과 정합성 확인
- [ ] 위험관리 파일(ISO 14971) 참조 일치
- [ ] EUDAMED SRN (Single Registration Number) 등록 확인
- [ ] NB (Notified Body) 검토 의견 반영 이력 포함 (해당 시)

---

## 5. 참고 문서 및 소스

| 문서 | 링크/참조 |
|---|---|
| MDR 2017/745 Annex III | https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng |
| MDCG 2025-10 (PMS Guidance, 2025-12-19) | https://health.ec.europa.eu/document/download/a9ad86b7-1b8e-4bae-beb4-48b2b3ed2f05_en?filename=mdcg_2025-10_en.pdf |
| MDCG 2022-21 (PMS Guidance) | https://health.ec.europa.eu/system/files/2023-01/mdcg_2022-21_en.pdf |
| MDCG 2020-7 (PMCF Plan/Report) | https://health.ec.europa.eu/document/download/... (PMCF 전용 문서) |
| 21 CFR Part 822 (FDA PMS) | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-822 |
| 의료기기법 제26조·28조 (MFDS) | https://law.go.kr/법령/의료기기법 |
| 연관 KB 문서 | [MDR_AnnexIII_PMS_TD_Template](../01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/MDR_AnnexIII_PMS_TD_Template.md) (issue #12) |

---
작성: 도메인 전문가 · 검토(QA9, 2026-06-09): 디지털의료제품법 시행일 2024.09.26(오류)→2025-01-24 정정(국가법령정보). · 상태: 승인(오류 정정) · 일자: 2026-06-09
