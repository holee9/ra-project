> 최종 갱신: 2026-05-03 (자동보강 #12)
> 근거: https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (EU MDR 2017/745, Annex III, OJ L 117, 5.5.2017) | https://health.ec.europa.eu/system/files/2023-01/mdcg_2022-21_en.pdf (MDCG 2022-21 PMS Guidance) | https://health.ec.europa.eu/document/download/a9ad86b7-1b8e-4bae-beb4-48b2b3ed2f05_en?filename=mdcg_2025-10_en.pdf (MDCG 2025-10 PMS Guidance)

# MDR Annex III — Post-Market Surveillance Technical Documentation 섹션별 작성 템플릿

## 개요

| 항목 | 내용 |
|---|---|
| 법적 근거 | EU MDR 2017/745, **Annex III** (Technical Documentation on Post-Market Surveillance) |
| 연계 조항 | Article 83 (PMS 의무), Article 84 (PMS Plan), Article 85 (PMSR — Class I), Article 86 (PSUR — Class IIa/IIb/III) |
| 적용 대상 | MDR 적용 전 Class (I · IIa · IIb · III) |
| 위치 | Technical Documentation의 일부 (Annex II + Annex III = 완전한 TD) |
| 주요 가이던스 | MDCG 2022-21 (PMS guidance), MDCG 2025-10 (PMS 최신 guidance) |

---

## Annex III 전체 섹션 구조

```
Annex III — PMS Technical Documentation
├── 1.1  PMS Plan (Article 84)
│     ├── (a) 정보 수집원 & 방법론
│     └── (b) 수집된 데이터 활용 방법
├── 1.2  PMSR — Class I 전용 (Article 85)
│     ├── 데이터 분석 결론 요약
│     └── 조치·이유 기록
└── 1.3  PSUR — Class IIa/IIb/III 전용 (Article 86)
      ├── 주요 발견사항
      ├── Benefit-risk 결론
      ├── 판매량·노출 추정
      ├── PMCF 결과 연계
      └── 다음 PSUR 갱신 일정
```

---

## 1.1 Post-Market Surveillance Plan (PMS Plan)

> **법적 요건 — Annex III §1.1 원문 요지:**
> The manufacturer shall prove in a post-market surveillance plan that it complies with the obligation referred to in Article 83. The plan shall address collection and utilization of available information.

### 1.1(a) — 정보 수집원 (Sources of Information)

| # | 정보 수집원 | 수집 방법 | 주기 | X-ray Detector | Handheld Source | GUI SW |
|---|---|---|---|---|---|---|
| 1 | Serious incidents + PSURs + FSCAs | Vigilance 시스템, EUDAMED | 즉시/분기 | ● | ● | ● |
| 2 | 비심각 사고 + 부작용 데이터 | Complaint 관리 시스템 | 월별 | ● | ● | ● |
| 3 | Trend reporting 데이터 | 내부 통계 집계 | 분기 | ● | ● | ● |
| 4 | 전문 학술지·기술 DB·레지스트리 | PubMed, IEC/ISO DB, MAUDE | 반기 | ● | ● | ● |
| 5 | 사용자·유통사·수입업자 피드백 및 불만 | CRM, 서비스 데이터 | 월별 | ● | ● | ● |
| 6 | 동종 유사 기기 공개 정보 | 경쟁사 TD, EUDAMED, MAUDE DB | 반기 | ● | ● | ● |

> 범례: ● 적용 / ○ 해당 없음

### 1.1(b) — 정보 활용 방법 (Utilization of Information)

```
[템플릿]

## 1. 목적
수집된 PMS 데이터를 분석하여 안전성·성능 유지를 지속 검증하고,
필요 시 설계변경·라벨 갱신·FSCA 등 시정조치 근거를 제공한다.

## 2. 데이터 분석 절차
1. 데이터 집계: 매월 Complaint 담당자 → 분기 PMS 담당자 취합
2. 신호 감지: 임계값 초과 시 Trend Analysis Report 작성
   - 임계값: [회사 정책에 따라 정의, 예: 동일 고장 모드 3건 이상/분기]
3. 임상 연관성 평가: Clinical Evaluation Report (CER)에 반영
4. Risk Management File 갱신: 신규 hazard 식별 시 ISO 14971 절차 적용
5. PMSR / PSUR 작성: 분석 결과 → 보고서 반영

## 3. 시정조치 연계
- Serious incident 발생 시: Vigilance 보고 (EUDAMED, 15일 이내) + CAPA 착수
- 안전성 관련 설계변경: Change Control 절차 → TD 갱신 → NB 통보 (필요 시)
- FSCA 결정 시: FSN 발행, 당국 통보 (MDR Article 87)
```

### 1.1 — PMS Plan 항목별 작성 체크리스트

| 항목 | 작성 내용 | 완료 | 비고 |
|---|---|---|---|
| Device identification | UDI-DI, 제품명, 모델, 대상 기기 범위 | ☐ | |
| Intended purpose 요약 | 사용목적, 적응증, 사용자, 환경 | ☐ | Annex II §1 연계 |
| PMS 담당자·책임 | 이름/직함, PRRC (Article 15) 포함 | ☐ | |
| 정보 수집원 목록 | 위 표 (a) 항목 전체 기술 | ☐ | |
| 수집 주기·방법 | 각 소스별 수집 주기 명시 | ☐ | |
| 데이터 분석 절차 | 신호 감지 임계값, 분석 방법론 | ☐ | |
| 시정조치 연계 절차 | CAPA, Vigilance, FSCA 트리거 조건 | ☐ | |
| CER/SSCP 갱신 연계 | PMS 결과 → Clinical Evaluation 반영 주기 | ☐ | |
| PMCF 계획 연계 | PMCF 필요성 재평가 근거 | ☐ | MDCG 2020-7 연계 |
| PSUR/PMSR 일정 | 작성 주기·버전 관리 계획 | ☐ | |
| 검토·승인 이력 | 버전, 날짜, 서명자 | ☐ | |

---

## 1.2 Post-Market Surveillance Report (PMSR) — Class I 전용

> **적용**: Class I 기기만 해당. Class IIa 이상은 PSUR(§1.3) 작성.

### PMSR 구성 템플릿

```
[PMSR — POST-MARKET SURVEILLANCE REPORT]

문서 번호:     [XXXXX-PMSR-vX.X]
작성일:        YYYY-MM-DD
검토자:        [이름, 직함]
승인자 (PRRC): [이름, 직함]
보고 기간:     YYYY-MM-DD ~ YYYY-MM-DD

─────────────────────────────────────────────────────
1. 기기 정보
   제품명:         [모델명]
   UDI-DI:         [기재]
   Class:          Class I

─────────────────────────────────────────────────────
2. PMS 데이터 수집 결과 요약

2.1 수집 데이터 현황
   - 판매/출하 수량:      [N] units (보고 기간 내)
   - 불만(Complaint):   [N]건 (심각: [N], 비심각: [N])
   - Serious incident: [N]건
   - 사용자 피드백:      [N]건

2.2 주요 발견사항
   [구체적 발견사항 기술]

─────────────────────────────────────────────────────
3. 데이터 분석 결론

3.1 안전성·성능 유지 여부
   □ 유지됨  □ 우려 있음 (조치 필요)
   근거: [기술]

3.2 Benefit-risk 평가
   □ 수용 가능  □ 재평가 필요
   근거: [기술]

─────────────────────────────────────────────────────
4. 취해진 조치 및 이유

| 조치 유형 | 내용 | 조치일 | 이유 |
|---|---|---|---|
| (예) 라벨 개정 | IFU Rev.2 발행 | YYYY-MM-DD | 사용자 피드백 반영 |
| (예) CAPA | [설명] | YYYY-MM-DD | [트리거 사유] |

─────────────────────────────────────────────────────
5. 결론 및 다음 갱신 일정

결론: [PMSR 갱신 필요성, 다음 보고 일정]
다음 PMSR 예정: YYYY-MM-DD
```

---

## 1.3 Periodic Safety Update Report (PSUR) — Class IIa/IIb/III

> **적용**: Class IIa (X-ray Detector, GUI SW), Class IIb (Handheld X-ray Source)
>
> **주기**: MDR Article 86 기준
> - Class IIa: 최소 **2년**마다
> - Class IIb/III: 최소 **1년**마다
> - NB가 요청할 경우 수시 제출 가능

### PSUR 구성 템플릿

```
[PSUR — PERIODIC SAFETY UPDATE REPORT]

문서 번호:     [XXXXX-PSUR-vX.X]
작성일:        YYYY-MM-DD
검토자:        [이름, 직함]
승인자 (PRRC): [이름, 직함]
보고 기간:     YYYY-MM-DD ~ YYYY-MM-DD
Class:         IIa / IIb (해당 항목 선택)
NB 이름:       [Notified Body명, 번호]

─────────────────────────────────────────────────────
1. 기기 정보 및 보고 범위

기기명:           [제품명]
UDI-DI:           [기재]
인증 번호:         [CE Certificate No.]
적용 GSPR:        MDR Annex I 전체 해당 항목 (별첨 체크리스트 참조)

─────────────────────────────────────────────────────
2. PMS Plan 실행 결과 요약

2.1 수집된 정보 개요
   - 판매·출하 수량:      [N] units
   - 추정 노출 환자 수:   [N] (추정 방법 기술)
   - 불만(Complaint):   총 [N]건 (심각: [N], 비심각: [N])
   - Serious incident: [N]건 (EUDAMED 보고: [N]건)
   - FSCA 발생:         [N]건

2.2 신규 문헌·표준 검토 결과
   [관련 학술지, 가이던스 개정 사항 기술]

2.3 유사 기기 데이터 검토
   [동종 기기 MAUDE/EUDAMED/MFDS 데이터 요약]

─────────────────────────────────────────────────────
3. 주요 발견사항 (Main Findings)

| 범주 | 발견사항 | 임상적 중요도 | 조치 여부 |
|---|---|---|---|
| 성능 | [기술] | [높음/중간/낮음] | [조치 내용 or N/A] |
| 안전성 | [기술] | [높음/중간/낮음] | [조치 내용 or N/A] |
| 라벨링 | [기술] | [높음/중간/낮음] | [조치 내용 or N/A] |

─────────────────────────────────────────────────────
4. Benefit-Risk 결론 (MDR Article 86(1)(c))

4.1 임상적 편익 유지 확인
   □ 편익이 위험을 상회함  □ 재평가 필요
   근거: [CER 최신 버전 참조 — 문서번호, 버전, 날짜]

4.2 잔여 위험 평가 (ISO 14971:2019 연계)
   □ 잔여 위험 수용 가능  □ 추가 저감 조치 필요
   근거: [RMF 최신 버전 참조]

─────────────────────────────────────────────────────
5. 판매량 및 노출 추정 (MDR Article 86(1)(d))

| 국가/지역 | 판매 수량 | 추정 환자 노출 수 | 비고 |
|---|---|---|---|
| EU (전체) | [N] | [N] | |
| 국내(MFDS) | [N] | [N] | 별도 보고체계 |
| 미국(FDA) | [N] | [N] | MDR 803 별도 |

─────────────────────────────────────────────────────
6. PMCF 결과 반영 (MDR Annex XIV Part B)

PMCF 실시 여부: □ 실시  □ 불필요 (근거 명시)
최신 PMCF Report 번호·날짜: [XXXXX-PMCF-RPT-vX.X, YYYY-MM-DD]
PMCF 주요 결과:
   [기술]
PSUR 결론에 반영된 사항:
   [기술]

─────────────────────────────────────────────────────
7. 조치 이력

| 조치 유형 | 내용 | 날짜 | 근거 |
|---|---|---|---|
| CAPA | [설명] | YYYY-MM-DD | [트리거] |
| 라벨/IFU 개정 | [설명] | YYYY-MM-DD | [사유] |
| FSCA | [설명] | YYYY-MM-DD | [원인] |
| TD/CE 인증 갱신 | [설명] | YYYY-MM-DD | [사유] |

─────────────────────────────────────────────────────
8. 결론 및 다음 갱신 일정

TD 갱신 필요 여부: □ 예 (해당 섹션: ___)  □ 아니오
CER 갱신 필요 여부: □ 예  □ 아니오
다음 PSUR 예정: YYYY-MM-DD (Class IIa: 2년 후 / Class IIb/III: 1년 후)
NB 제출 일정: YYYY-MM-DD
```

---

## 3개 지역 비교 — PMS 보고 요건

| 항목 | EU (MDR) | 미국 (FDA) | 국내 (MFDS) |
|---|---|---|---|
| 근거 법령 | MDR 2017/745 Article 83~86, Annex III | 21 CFR Part 803 (MDR), 21 CFR Part 822 (PMS) | 의료기기법 제31조, 제조·수입허가 조건 |
| 보고 체계 명칭 | PMSR (Class I) / PSUR (IIa~III) | Medical Device Report (MDR) / PMSR | 이상사례 보고 + 시판 후 조사(PMS) |
| Class I 보고 주기 | 요청 시 또는 자체 유지 | 해당 없음 (exempt 多) | 5년마다 재심사 신청 (해당 시) |
| Class IIa 주기 | **2년**마다 PSUR | MDR 보고 후 30일/5일 | 이상사례: 즉시/15일/30일 |
| Class IIb/III 주기 | **1년**마다 PSUR | MDR 보고 후 30일/5일 | 이상사례: 즉시/15일/30일 |
| 제출 경로 | EUDAMED (단계적 의무화 中) | MedWatch (FDA Gateway) | 의약품안전나라 (이상사례 보고시스템) |
| 데이터 공개 | EUDAMED 공개 예정 | MAUDE DB 공개 | 이상사례 통계 공개 |
| 구체적 가이던스 | MDCG 2022-21, MDCG 2025-10 | FDA Guidance "Post-Market Surveillance" | MFDS 시판 후 안전관리 가이던스 |

---

## 자사 3개 제품 영향 맵핑

| 요구사항 | X-ray Detector (Class IIa) | Handheld X-ray Source (Class IIb) | GUI SW (Class IIa) |
|---|---|---|---|
| 적용 보고서 유형 | PSUR | PSUR | PSUR |
| PSUR 갱신 주기 | **2년** | **1년** | **2년** |
| PMCF 필요성 | 동등성 클레임 검토 후 결정 | 이온화 방사선 → 임상 데이터 적극 수집 권고 | SaMD → 사용 중 오류 데이터 수집 필수 |
| PMS 담당 데이터 소스 | DQE 저하, 픽셀 결함, 환자선량 초과 | 선량 초과, 기계적 손상, 배터리 이상 | SW 오류, 영상 표시 오류, 사용성 이슈 |
| EUDAMED 의무 | UDI 등록 + Vigilance 보고 | UDI 등록 + Vigilance 보고 | UDI 등록 (SaMD) + Vigilance |
| 연계 문서 | CER, RMF, IEC 62220-1-1 시험 데이터 | CER, RMF, 방사선 선량 모니터링 데이터 | CER, IEC 62304 유지보수 기록, Bug log |

---

## 참고 문서 연결

| 문서 | 링크 |
|---|---|
| MDR Annex II TD 템플릿 | `MDR_AnnexII_Technical_Documentation_Template.md` |
| MDR Annex I GSPR 체크리스트 | `MDR_AnnexI_GSPR_Checklist.md` |
| MDR 인허가 상세가이드 | `../MDR_인허가_상세가이드.md` |
