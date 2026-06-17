# 의료용 X-ray System 인허가 지식베이스 (RA Knowledge Base)

> ⭐ **개발/제조 착수 준비**: [착수준비_마스터_로드맵](착수준비_마스터_로드맵.md) · [제품별 산출물 체크리스트](착수준비_제품별_산출물체크리스트.md) · [진척 트래커](착수준비_진척_트래커.md)


## 목적
의료용 X-ray system 인허가 업무의 지식 자산화 및 전문가 양성용 체계.

## 대상 제품
- **X-ray Detector** (평판 검출기)
- **소형 X-ray Source** (Handheld형)
- **촬영실 GUI 기반 SW** (Medical Imaging Software)

## 목표 시장
- 국내 (식약처 / MFDS)
- 미국 (US FDA)
- 유럽 (CE / MDR)

## 폴더 체계

| 폴더 | 내용 |
|---|---|
| `01_규제지식베이스/` | 국가·지역별 규제, 국제표준 원문·요약 |
| `02_제품별_기술파일/` | 제품군별 Technical File, STED, DHF |
| `03_진행현안/` | 현재 진행 중인 인허가 과제 관리 |
| `04_기술문서_템플릿/` | 재사용 가능한 문서 양식 |
| `05_전문가교육/` | 신규 담당자 교육 커리큘럼·교재 (Week01~12) |
| `06_심사_QA이력/` | 심사기관 질의응답·보완자료 이력 |
| `07_협력기관_컨택/` | 심사기관·시험기관·컨설팅 연락처 |
| `99_원본자료_업로드저장소/` | 분류 전 원본 자료 임시 저장 |

## 운영 원칙
1. 신규 자료는 `99_원본자료_업로드저장소/`에 먼저 수록 후 분류.
2. 규제 원문은 원본(PDF 등)과 요약(.md)을 함께 보관.
3. 진행 과제는 `03_진행현안/`에서 상태별로 관리.
4. 심사 질의·보완 이력은 `06_심사_QA이력/`에 지속 축적.

## 최종 갱신
2026-06-04 (자동보강 #88 반영 — 19:30 정상 회차)

## 연동 상태
- GitHub: <https://github.com/holee9/ra-project>
- 연동 방식: Claude in Chrome + GitHub REST API (PAT 기반)
- Claude 직접 push 가능 (실시간 반영)

## 진척 현황 (EP 기반)

> 최종 갱신: 2026-06-04 | 기준: BACKLOG.md 실집계 | 마지막 이슈: #88

| 구분 | 총 EP | 완료 EP | 잔여 EP | 완료율 |
|---|---|---|---|---|
| [P1] 기초 골격 | 70 | 70 | 0 | **100%** ✓ |
| [P2] 중우선 | 37 | 37 | 0 | **100%** ✓ |
| [P3] 실전 대응 | 42 | 42 | 0 | **100%** ✓ |
| [P4] 고도화 | 16 | 16 | 0 | **100%** ✓ |
| [P5] 유지관리 | 3 | 3 | 0 | **100%** ✓ |
| **합계** | **168** | **168** | **0** | **100%** ✓ |

> **전체 완료** (168 EP / 168 EP). P1~P5 모든 Phase 100%.
> Phase 5 유지관리 시리즈 개시 — 분기별 규제 변경 패치 (#88~).

- 다음 작업: (분기) MFDS 디지털의료제품법 하위 법령 보완 (2026 신규 고시) `[EP:2]` / (주간) 시간민감 규제 모니터링

### 자동보강 성장 로그 (최근 5회)
- 2026-06-05 [QUARTERLY] 분기 심층패치 — 2파일 신규(Q3 규제 종합패치 + FDA AI/ML PCCP 운영) + 표준매트릭스/INDEX 갱신. EU MDR 간소화 미채택 확인·EUDAMED 4모듈 의무화 발효(legacy D-176)·IEC 62304 Ed.2 동향. EP 5 처리
- 2026-06-05 03:00 [CATCHUP] (#89) QMSR 발효·HF 가이던스 반영 — 2파일 갱신(KGMP_QMSR_ISO13485 비교 + UEF 템플릿), EP 2 소비. missed_ep 11→9
- 2026-06-04 19:30 (#88) 2026 Q2 규제 업데이트 종합 패치 (MFDS/FDA/MDR) — 1파일 신규, EP 3 소비. missed_ep 14→11
- 2026-06-04 03:00 [CATCHUP] (#86·#87) 경쟁제품 510(k) Summary 분석 DB + EUDAMED 모듈별 등록 실무 가이드 — 2파일 신규, EP 4 소비. missed_ep 18→14
- 2026-06-03 19:30 (#85) 규제 변경 모니터링 자동화 (법령·가이던스 RSS) — 1파일 신규, EP 2 소비. missed_ep 20→18

## 자동보강 스케줄

- 실행 시각: 03:00 / 19:30 (매일 2회)
- 실행 지침: [`.ra-scheduler/RUN_SOP.md`](.ra-scheduler/RUN_SOP.md)
- 작업 큐: [`.ra-scheduler/BACKLOG.md`](.ra-scheduler/BACKLOG.md) — EP 태그 포함
- 상태: [`.ra-scheduler/STATE.md`](.ra-scheduler/STATE.md) — EP 실적·속도 추적
- 회차별 이슈: GitHub Issues 라벨 `ra-auto`

### 회차별 EP 예산

| 회차 | 시각 | EP 예산 | 주요 역할 |
|---|---|---|---|
| **1회차** | 03:00 | 3 EP | BACKLOG 상단부터 EP 소진까지 처리 → 커밋 |
| **2회차** | 19:30 | 3 EP | carryover 우선 처리 → 잔여 예산으로 신규 처리 |
| **CATCHUP** | 해당 시각 | 4 EP | 미실행 누적분 해소 |

### EP 등급 기준

| 등급 | EP | 기준 |
|---|---|---|
| S | 1 | 체크리스트·목록·단순 비교표 |
| M | 2 | 단일 지역 심화 가이드 또는 단일 제품 템플릿 |
| L | 3 | 3개 지역 비교 + 3개 제품 맵핑 동반 대형 문서 |

## 자동보강 로그
(회차별 1줄 추가 · 50줄 초과 시 `ARCHIVE_LOG.md`로 이전)

- 2026-04-22 (초기 구축) 스케줄러 뼈대 추가 — RUN_SOP·BACKLOG·STATE 3파일
- 2026-04-22 (#2) [EP:6] FDA eSTAR Device Description/IFU + Substantial Equivalence — 파일 2개, 3지역 매트릭스·3제품 맵핑
- 2026-04-24 (#3) [EP:3] FDA eSTAR Performance Testing / Bench Test — 파일 1개, IEC 62220-1-1·21 CFR 1020.30·IEC 62304 V&V
- 2026-04-29 (#4) [CATCHUP EP:3] FDA eSTAR Cybersecurity Section — 파일 1개, 524B·STRIDE·SBOM·3제품 판정
- 2026-04-30 (#5) [CATCHUP EP:3] FDA eSTAR Software Section — 파일 1개, IEC 62304·Documentation Level·SOUP
- 2026-04-30 (정책 개편) EP 기반 스케줄 정책 도입 — BACKLOG EP 태그·STATE 속도 추적·RUN_SOP 개정
- 2026-04-30 (#6) [EP:2] FDA eSTAR Labeling (IFU, Form 3881, 21 CFR 801) — 파일 2개, 3제품 IFU 샘플 문구·라벨 체크리스트·3지역 비교
- 2026-05-01 (#7) [EP:2] FDA Pre-Submission (Q-Sub) 가이드·샘플 질문 — 파일 2개, Q-Sub 4종·MDUFA 70/100일·3제품 Q&A
- 2026-05-01 (#8,#9) [CATCHUP EP:4] MFDS 기술문서 섹션별 작성가이드 + 디지털의료제품법 하위 고시 추적 리스트 — 파일 2개, 3지역 매트릭스·3제품 맵핑
- 2026-05-02 (#10) [EP:2] MFDS 디지털의료기기 가이드라인 6종 요약 (2025-05-07) — 파일 1개, 내장형/독립형 분류·3제품 맵핑·전자적 표시기재 의무화
- 2026-05-02 (#11) [CATCHUP EP:3] MDR Annex II Technical Documentation 섹션별 템플릿 — 파일 1개, 6섹션 작성 템플릿·3지역 비교
- 2026-05-03 (#12) [CATCHUP EP:4] MDR Annex III PMS TD 템플릿 + Annex I GSPR 전항 맵핑 체크리스트 — 파일 2개, §1~§23 체크리스트·조화표준 매핑
- 2026-05-03 (#13) [CATCHUP EP:4] MDR DoC 양식·PRRC 자격요건·X-ray Detector DHF 목차 — 파일 3개, Annex IV 8항목·DHF 36문서목차
- 2026-05-04 (#14,#15) [CATCHUP EP:4] X-ray Detector 성능시험 매트릭스 + Handheld X-ray Source DHF 목차·문서 템플릿 — 파일 2개, IEC 62220-1-1 DQE·21 CFR 1020.30·Form FDA 2579
- 2026-05-04 (#16) [EP:1] Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트 — 파일 1개, 누설방사선/HVL/경고라벨·3지역 비교
- 2026-05-05 (#17) [EP:3] 촬영실 GUI SW IEC 62304 문서 세트 — 파일 1개, SDP·SRS·SAD·SDS·SVP/SVR·SCMP·SPRP 전체 템플릿·Safety Class·SOUP·SBOM
- 2026-05-05 (#18) [EP:3] 3개 제품 공통 Risk Management File ISO 14971:2019 템플릿 — 파일 1개, RMP·Hazard ID·Risk Register·Risk Control·AFAP vs ALARP 3지역 비교
- 2026-05-06 (#19) [EP:2] 3개 제품 공통 Usability Engineering File (IEC 62366-1+AMD1) 템플릿 — 파일 1개, UEF-01~11 산출물·URRA/Critical Task·SEP/SER
- 2026-05-06 (#20) [EP:2] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿 — 파일 1개, CEP+CER 전체 섹션·Art.61 동등성 경로·MDCG 2020-1/5/6/2023-7
- 2026-05-07 (#21) [EP:2] 3개 제품 공통 ISO 10993-1 생물학적평가 적용판단 — 파일 1개, ISO 10993-1:2025(Ed 6)·3제품 비교 매트릭스·endpoint 결정표·3지역 비교
- 2026-05-07 (#23) [EP:3] IEC 60601-1:2005+A1+A2 (Ed 3.2) 시험항목 매트릭스 — 파일 1개, Cl.4~17 전항목·3지역 버전·인정현황·3제품 Gap분석·IECEE CB Scheme
- 2026-05-08 (#24,#25) [EP:4] IEC 60601-1-2 EMC 시험항목·Pass Criteria + IEC 60601-1-3 방사선방호 시험항목 — 파일 2개, CISPR/IEC 기준·3지역 비교
- 2026-05-09 (#26,#27,#28) [EP:5] IEC 60601-2-28 X-ray Source + IEC 62133-2 배터리 안전 + IEC 60601-2-54 촬영·투시 시험항목 — 파일 3개, 3지역 비교·3제품 맵핑
- 2026-05-10 (#29) [EP:2] IEC 62220-1-1:2015 DQE 측정절차 가이드 — 파일 1개, MTF/NNPS/DQE Step-by-step·RQA3/RQA5·Lag보정. commit 02abfec
- 2026-05-10 (#30) [EP:3] IEC 62304:2006+A1:2015 SW 수명주기 산출물 매핑 — 파일 1개, Cl.5~9 전 조항·Safety Class A/B/C·3제품 적용 계획·FDA Basic/Enhanced
- 2026-05-11 (#31) [EP:2] ISO 13485:2016 절차서 목록 (섹션 4~8)·뼈대 — 파일 1개, 37개 절차서·SOP 뼈대 템플릿·3지역 비교(KGMP/QMSR/MDR)·Phase-in 우선순위
- 2026-05-11 (#32) [EP:3] KGMP vs QMSR vs ISO 13485 차이·통합 전략 — 파일 1개, 3지역 QMS 비교·ARR 추가 요건·통합 QMS 로드맵·MDSAP 전략·3제품 갭분석
- 2026-05-12 (#33,#34) [EP:3] Design Controls 절차서 (§7.3) + Document/Record Control 절차서 (§4.2.4/4.2.5) — 파일 2개, 3지역 비교·추적성 매트릭스·15년 보존기준
- 2026-05-13 (#35~#41) [CATCHUP EP:7] CAPA·Internal Audit·Management Review·Supplier Control 절차서 4개 — SOP-QMS-008~011, §8.5.2/§8.2.4/§5.6/§7.4 기준·3지역 비교·3제품 맵핑. CATCHUP 완료
- 2026-05-13 (#42) [EP:2] FDA Threat Model 작성 가이드·STRIDE 기반 샘플 — 파일 1개, Section 524B·STRIDE 6범주·DREAD·3제품 Cyber Device 판정·eSTAR 제출 패키지
- 2026-05-14 (#43) [EP:2] SBOM 생성 실무 (SPDX vs CycloneDX 비교·도구) — 파일 1개, SPDX 2.3/CycloneDX 1.6·NTIA 7개 최소요소·도구 비교(syft/cdxgen)·3지역 요구
- 2026-05-14 (#44) [EP:1] MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트 — 파일 1개, 8대 보안 실무(P1~P8)·MDR Annex I §17.2/17.4/18.8 매핑·3제품 역량 매트릭스. commit 91babcb6
- 2026-05-15 (#45,#46) [EP:3] PCCP 작성 가이드 (AI-enabled device, 2024-12-03 Final) + ISO 15223-1:2021 심볼 적용 가이드 — 파일 2개, PCCP 5단계 구조·SaMD 리스크 분류·심볼 카탈로그
- 2026-05-16 (#47) [EP:2] IEC 81001-5-1:2021 수명주기 보안 활동 매핑 — 파일 1개, IEC 62304 단계별 통합 매핑·5대 Clause·64개 보안 요건·3지역 비교(MFDS N60/FDA SPDF/MDR). commit eb7847b
- 2026-05-16 (#48) [EP:1] UDI 구조 3개 지역 비교 (GUDID/EUDAMED/UDI포털) — 파일 1개, DI·PI 구조·GS1/HIBCC/ICCBBA·EUDAMED Basic UDI-DI·2026-05-28 의무화. commit 66ea10b2
- 2026-05-17 (#49) [EP:2] MFDS 사이버보안 가이드라인 2025.01 개정 대응 — 파일 1개, 요구사항 15→35개(RA-01~35)·IMDRF N60/N70/N73 한글화·5종 제출 서류·3지역 비교. commit 8e6f97b0
- 2026-05-17 (#50,#51) [EP:3] IFU 필수요소 3지역 비교표 + 디지털의료기기 표시기재 가이드라인 (MFDS 2025.01) — 파일 2개, MFDS/FDA/MDR 36개 IFU 항목 비교 매트릭스·전자적 표시 의무화
- 2026-05-18 (#52) [EP:3] Clinical Evaluation (MDR) 심화 - 동등성·충분성 기준 — 파일 1개, MDCG 2020-5/6/2023-7 기반·Art.61 경로·동등성 3요소·충분성 판단 매트릭스·3제품 전략
- 2026-05-19 (#53) [EP:2] FDA Clinical Data 필요 판단 기준 (510(k) vs De Novo vs PMA) — 파일 1개, Clinical Data Decision Tree·Substantial Equivalence 임상 판단·3제품 전략 맵핑
- 2026-05-19 (#54) [EP:2] MFDS 임상시험 계획 승인 절차 — 파일 1개, 의료기기법 §10·IND 신청 요건·임상시험계획서 구성·IRB·3지역 비교(MFDS/FDA IDE/MDR CIP). commit c6563c72
- 2026-05-20 (#55,#56) [EP:3] MDCG 2020-5/6/7/8 임상평가 & PMCF 가이던스 요약 + FDA RTA 회피 체크리스트 — 파일 2개, PMCF Plan/Report 섹션별 요건·동등성 기준·RTA A~K 전항목·3제품 맵핑. commit 1e1d29f/f631749
- 2026-05-20 (#57) [EP:2] FDA AI (Additional Information) 대응 전략·샘플 답변 — 파일 1개, AI Request vs RTA vs Interactive Review·180일 타임라인·SIR Meeting·샘플 응답 템플릿·7종 결함 유형별 전략·3지역 비교. commit e2a0aebe
- 2026-05-21 (#58) [EP:2] MFDS 보완자료 대응 전략·샘플 — 파일 1개, 의료기기법 §12 근거·보완 기간(60일)·4대 유형별 전략·샘플 답변(기술문서/임상/라벨링)·3지역 비교·Anti-Patterns. commit 5075a05
- 2026-05-21 (#60) [EP:2] NB Deficiency Letter 대응 전략·샘플 — 파일 1개, 2026/977 clock-stop(최대 4회/90일)·4대 결함 유형·샘플 답변(CER 동등성·CAPA Major NC)·3지역 비교·Structured Dialogue. commit db85403
- 2026-05-22 (#61) [EP:2] 3개 지역 공통 빈번 지적사항 Top 20 — 파일 1개, FDA RTA 33%·AI 67%·NSE 15% 통계·MDR Team NB BPG V3(2025-04) 기반·지적사항별 Fact/해석/Action 3계층·3제품 위험 맵핑·예방 체크리스트. commit b6fd9bb
- 2026-05-22 (#62) [EP:2] PMS Plan 템플릿 (MDR Article 84 / Annex III §1.1) — 파일 1개(+INDEX 갱신), MDCG 2025-10 기반 실용 템플릿·3지역 비교(MDR/FDA 21 CFR 822/MFDS)·S1~S10 수집원·데이터 활용 계획·3제품 특화 고려사항·Vigilance 연계·작성 체크리스트. commit d61dd75e
- 2026-05-22 (#63) [EP:2] PSUR 템플릿 (MDR Article 86) — 파일 1개, Class IIa/IIb/III 전용·데이터수집기간·판매량·주요발견·benefit-risk·PMCF 연계·EUDAMED 제출·3지역 비교(MDR/FDA PMA/MFDS 재심사)·3제품 갱신주기 맵핑·PSUR 체크리스트. commit 6b3b69ae
- 2026-05-22 (#64) [EP:2] FDA MDR 21 CFR 803 보고절차 — 파일 1개, 30 역일/5 근무일 이원 타임라인·Serious Injury 정의·기능불량 판단기준·eMDR 3500A·Supplemental Report·MDR Event Files 2년 보존·3지역 타임라인 비교·3제품 시나리오별 판단 매트릭스·내부 SOP 뼈대. commit 6b3b69ae
- 2026-05-22 (#65) [EP:1] MDR Vigilance Serious Incident 판정기준 — 파일 1개, Art.2(65) 6대 판정기준·판정 플로우차트·2일/10일/15일 타임라인·EUDAMED Vigilance Module·FSCA 유형·3지역 타임라인 비교·3제품 시나리오별 판정표·내부 SOP 핵심. commit 6b3b69ae
- 2026-05-22 (#66) [EP:1] FSCA/FSN 절차·템플릿 (3개 지역) — 파일 1개, MDR Art.83·87/21 CFR 806·의료기기법 제31조 비교·FSCA 5유형·FSN 템플릿·FSCA 추적 대장·3제품 위험 시나리오·작성 체크리스트.
- 2026-05-22 (#67) [EP:1] MFDS 이상사례·부작용 보고 절차 — 파일 1개, 의료기기법 §31·시행규칙 §51·중대성 4기준·보고 기한(15일/90일)·표준코드(2024-05-27 개정)·3지역 타임라인 비교·3제품 적용·내부 SOP 뼈대·체크리스트.
- 2026-05-23 (#68) [EP:2] Week 2: 국내 MFDS 체계 상세 (커리큘럼·실습·평가) — 파일 2개(05_전문가교육 신규 디렉토리+Week02 문서·INDEX 갱신), 법령 계층구조·4등급 판단기준·허가/인증/신고 플로우(65/30일/즉시)·GMP 심사기관 6개·3지역 비교 매트릭스·3제품 경로 맵핑·실습 과제 2개·평가 기준(70점 합격). commit 09b9eed
- 2026-05-23 19:30 (#69) [EP:2] Week 3 FDA 510(k) 상세 교육자료 — 파일 1개 신규, 3가지 제출유형(Traditional/Abbreviated/Special)·SE 5단계 판정·eSTAR 절차·심사 타임라인·21 CFR 1020 방사선기준·3지역 비교·3제품 맵핑·실습과제·평가기준. commit 66c4b7ae
- 2026-05-24 03:00 (#70) [EP:2] Week 4: MDR EU 체계 상세 교육자료 — 파일 1개 신규, MDR 2017/745 발효·전환기간(2027/2028)·Annex VIII 등급분류(Detector IIa/Source IIb/GUI SW IIa)·적합성평가(Annex IX/X/XI)·EUDAMED 의무화(2026-05-28)·NB 선정·3지역 비교 매트릭스·3제품 로드맵·실습 3개·평가기준.
- 2026-05-24 19:30 (#71) [EP:2] Week 5: 국제표준 ISO 13485 / 14971 / 62366 교육자료 — 파일 1개 신규(+INDEX 갱신), 3표준 구조·발행이력·핵심요건·Golden Triangle 도식·3지역 인정현황 비교·3제품 적용맵핑·실습 3종(설계변경 영향평가/FMEA 초안/Use Error 목록)·평가기준. 잔여 1 EP carryover → Week 6.
- 2026-05-25 03:00 (#72) [EP:2] Week 6: X-ray 특화 표준 (IEC 60601 시리즈·62220) 교육자료 — 파일 1개 신규, IEC 60601-1 Ed.3.2(AMD2:2020)·60601-1-2(EMC)·60601-1-3(방사선방호)·60601-2-28(X-ray 관구)·60601-2-54:2022(촬영·투시)·IEC 62220-1-1/1-3(DQE 측정)·3지역 인정현황(FDA 21 CFR 1020 병행)·3제품 적용 매트릭스·시험항목 매트릭스·실습 3종·평가기준. 예산 2 EP 소비, 잔여 1 EP → Week 7 carryover.
- 2026-05-25 19:30 (#73) [EP:3] Week 7: 기술문서 작성 실습 (STED) 교육자료 — 파일 1개 신규(+INDEX·BACKLOG·STATE 갱신), GHTF/SG1/N011:2008 STED 기원·FDA eSTAR vs MDR Annex II vs MFDS 기술문서 3지역 구조 비교 매트릭스·섹션별 작성 요령(Device Description/SE-GSPR-동등비교/Performance Testing/Risk Management/Software/Labeling/Clinical Data)·3제품 기술문서 구성 계획·Common Core 전략·실습 3종·평가기준. 예산 3 EP 소비. Issue #73 close.
- 2026-05-26 03:00 (#74) [EP:2] Week 8: 사이버보안·AI 교육 (SBOM·Threat Model·PCCP) — 파일 1개 신규(+BACKLOG·README·STATE 갱신), FDA 2025-06-27 최신 가이던스 반영(Section VII·524B)·STRIDE 6범주 Threat Model·3지역 비교 매트릭스·SBOM CycloneDX/SPDX 실무·PCCP FDA 2024-12-04 Final 반영·IEC 81001-5-1 vs 62304 매핑·3제품 사이버보안 영향 맵핑·실습 4종·평가기준. 예산 2 EP 소비, 잔여 1 EP. Issue #74 close.
- 2026-06-01 19:30 [CATCHUP] (#80) [EP:3] Week 12 종합 실습·평가 Capstone — 파일 1개 신규(+INDEX·BACKLOG·README·STATE 갱신), 3시나리오(Handheld MFDS 허가·Detector FDA 510(k)·GUI SW MDR CE Marking)·SE 비교 매트릭스·글로벌 Common Core TD 전략·3지역 일정·이론+실기+구술 최종 평가(30+40+30점)·20개 역량 자기점검·수료 후 Phase 로드맵. 예산 3 EP 소비. missed_ep 33→30. commit 4d4a94ab.
- 2026-06-02 03:00 [CATCHUP] (#81) [EP:2] Gate Review 체크리스트 5Gate (DHF→STED→제출→AI대응→승인) — 파일 1개 신규(04_기술문서_템플릿), Gate 0~4 전체 체크리스트·3지역 추가 항목·3제품 위험포인트·Go/No-Go 기록서식. EP 2 소비.
- 2026-06-02 03:00 [CATCHUP] (#82) [EP:2] 글로벌 동시 제출 전략 (MDSAP 활용) — 파일 1개 신규(01_규제지식베이스), MDSAP 5개 정회원+말레이시아·남아공 준회원(2025)·AU P0002.010(2026-02 개정)·Common Core TD 전략·제출 순서 4가지·3제품 권장 전략·MDSAP 로드맵·비용 예측·리스크 매트릭스. EP 2 소비. missed_ep 30→26.
- 2026-06-02 19:30 [CATCHUP] (#83) [EP:3] 원가·일정 예측 모델 (지역·등급·시험비) — 파일 1개 신규(01_규제지식베이스), 3지역 정부수수료 비교 매트릭스(MFDS/FDA FY2026/MDR NB)·시험비 예측 모델(IEC 60601 시리즈·DQE)·3제품×3지역 총원가·일정 예측(최소~최대 시나리오)·비용 최적화 전략(IECEE CB Scheme·FDA SBD)·변동 리스크·예비비 권고. EP 3 소비. missed_ep 26→23.
- 2026-06-03 03:00 [CATCHUP] (#84) [EP:3] 예상 Q&A DB (3개 지역·제품별) — 파일 1개 신규(01_규제지식베이스), MFDS·FDA·MDR 심사관 예상 Q&A: 3지역×3제품 심사 질문·최적 답변 패턴·근거·위험도 표기·빠른 참조 매트릭스. EP 3 소비. missed_ep 23→20.
- 2026-06-03 19:30 (#85) [EP:2] 규제 변경 모니터링 자동화 (법령·가이던스 RSS) — 파일 1개 신규(01_규제지식베이스), MFDS RSS 공식 채널·law.go.kr 법령 추적·FDA CDRH 이메일 구독 목록·Federal Register API·EUR-Lex 맞춤 RSS·EUDAMED 모니터링·3지역 비교 매트릭스·3제품별 모니터링 우선순위·Python 자동화 스크립트·2025~2026 규제 변경 트래커·High/Medium/Low 분류 기준. EP 2 소비.
- 2026-06-04 03:00 [CATCHUP] (#86) [EP:2] 경쟁 제품 510(k) Summary 분석 DB — 파일 1개 신규(01_규제지식베이스), FDA OpenFDA API 기반 MQB/IZL/LLZ product code 2024~2026 경쟁사 510(k) 분석·DRTECH·Vieworks·Carestream·DRGEM·Samsung·H&abyz(자사 K251223) 포함·3지역 비교·Special vs Traditional 전략·번들 제출 패턴·자사 3제품 영향 맵핑·OpenFDA API 조회 스크립트. EP 2 소비. missed_ep 18→16.
- 2026-06-04 03:00 [CATCHUP] (#87) [EP:2] EUDAMED 모듈별 등록 실무 가이드 — 파일 1개 신규(01_규제지식베이스), Commission Decision (EU) 2025/2371(2025-11-27) 기반·4개 모듈 2026-05-28 의무화·ACT(SRN)/UDI-DEV(Basic UDI-DI)/NB-CERT/MSU 등록 절차·Module 5(Vigilance ~Q2 2027)/Module 6(CI/PS) 개발 현황·등록 플로우·3지역 비교(FDA GUDID/MFDS UDI포털/EUDAMED)·자사 3제품 Phase별 체크리스트. EP 2 소비. missed_ep 16→14.
- 2026-06-05 07:00 [weekly] 주간 모니터 #1 — 신규 규제변경 없음. 6소스 폴링(openFDA recall/enforcement 0건·Federal Register FDA 4건 전부 비관련[정형외과 분류 3·미분류기기 면제가이던스 1]·EUR-Lex MDR 0건·law.go.kr 행정규칙 최신 2026-05-19/현행법령 최신 2026-01-02 신규없음·data.go.kr 추적관리 baseline 639). 고/중영향 0건, 이슈·커밋 없음.
- 2026-06-04 19:30 [정상 EP:3] (#88) 2026 Q2 규제 업데이트 종합 패치 (MFDS/FDA/MDR) — Phase 5 유지관리 #1. 파일 1개 신규(01_규제지식베이스). FDA QMSR 2026-02-02 발효(ISO 13485:2016 통합·ARR 3항목)·CP 7382.850 Risk-Based 검사·HF 최종 가이던스(2026-05-29, 2026-08-01 적용)·EU COM(2025)1023 MDR/IVDR 간소화 제안(2025-12-16)·Implementing Reg. 2026/977 NB 절차 표준화·EUDAMED 4모듈 의무화(2026-05-28)·MFDS 2026 업무보고 RWE 확대/음성 변경허가/AI 공통부품 선평가·3지역 변경 매트릭스·3제품 영향 맵핑·기존 KB 갱신 목록. EP 3 소비. missed_ep 14→11.
- 2026-06-05 [QUARTERLY] 분기 심층패치 (BACKLOG [P5] 2건 처리) — 파일 2개 신규(01_규제지식베이스/2026_Q3_규제_업데이트_종합패치 + 미국_FDA/FDA_AI_ML_2026_PCCP_운영_TPLC_업데이트), 표준매트릭스(핵심표준_목록 §7 IEC 62304 Ed.2 동향)·INDEX·BA
- 2026-06-08 07:00 [weekly] 주간 모니터 #2 — 신규 규제변경 없음. 6소스 폴링(openFDA recall/enforcement 0건·Federal Register FDA 신규 1건[2026-06-08 Protamine Sulfate 약품 판정, 비관련]·EUR-Lex MDR 0건[COM(2025)1023 간소화안 입법진행中]·law.go.kr 행정규칙/현행법령 신규 0건·data.go.kr 추적관리 639→640[+1, X선 무관 이식형 카테고리]). 고/중영향 0건, KB갱신·이슈 없음. watermark→2026-06-08.