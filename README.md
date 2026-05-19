# 의료용 X-ray System 인허가 지식베이스 (RA Knowledge Base)

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
| `05_전문가_양성교육/` | 신규 담당자 교육 커리큘럼·교재 |
| `06_심사_QA이력/` | 심사기관 질의응답·보완자료 이력 |
| `07_협력기관_컨택/` | 심사기관·시험기관·컨설팅 연락처 |
| `99_원본자료_업로드저장소/` | 분류 전 원본 자료 임시 저장 |

## 운영 원칙
1. 신규 자료는 `99_원본자료_업로드저장소/`에 먼저 수록 후 분류.
2. 규제 원문은 원본(PDF 등)과 요약(.md)을 함께 보관.
3. 진행 과제는 `03_진행현안/`에서 상태별로 관리.
4. 심사 질의·보완 이력은 `06_심사_QA이력/`에 지속 축적.

## 최종 갱신
2026-05-19 (진척 현황 및 자동보강 로그 전면 갱신 — #53 반영)

## 연동 상태
- GitHub: <https://github.com/holee9/ra-project>
- 연동 방식: Claude in Chrome + GitHub REST API (PAT 기반)
- Claude 직접 push 가능 (실시간 반영)

## 진척 현황 (EP 기반)

> 최종 갱신: 2026-05-19 | 기준: BACKLOG.md 실집계

| 구분 | 총 EP | 완료 EP | 잔여 EP | 완료율 |
|---|---|---|---|---|
| [P1] 기초 골격 | 70 | 70 | 0 | **100%** ✓ |
| [P2] 중우선 | 37 | 33 | 4 | **89.2%** |
| [P3] 실전 대응 | 42 | 0 | 42 | 0% |
| [P4] 고도화 | 16 | 0 | 16 | 0% |
| **합계** | **165** | **103** | **62** | **62.4%** |

> **P2 잔여 4 EP**: MFDS 임상시험 계획 승인 절차 `[EP:2]` · MDCG 2020-5/6/7/8 요약 `[EP:2]`

- 예상 완료 (낙관): 2026-05-29 (6 EP/일 기준, 잔여 62 EP)
- 예상 완료 (보수): 2026-06-01 (5.1 EP/일 기준, 7일 실속도)
- 다음 작업: MFDS 임상시험 계획 승인 절차 `[EP:2]`

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
- 2026-04-22 11:40 (#2) [EP:3×2] FDA eSTAR Device Description / IFU + Substantial Equivalence — 파일 2개, 3지역 매트릭스·3제품 맵핑
- 2026-04-24 (#3) [EP:3] FDA eSTAR Performance Testing / Bench Test — 파일 1개, IEC 62220-1-1·21 CFR 1020.30·IEC 62304 V&V
- 2026-04-29 19:30 (#4) [CATCHUP EP:3] FDA eSTAR Cybersecurity Section — 파일 1개, 524B·STRIDE·SBOM·3제품 판정
- 2026-04-30 03:00 (#5) [CATCHUP EP:3] FDA eSTAR Software Section — 파일 1개, IEC 62304·Documentation Level·SOUP
- 2026-04-30 (정책 개편) EP 기반 스케줄 정책 도입 — BACKLOG EP 태그·STATE 속도 추적·RUN_SOP 개정·README 갱신
- 2026-04-30 19:30 (#6) [EP:2] FDA eSTAR Labeling (IFU, Form 3881, 21 CFR 801) — 파일 2개, 3제품 IFU 샘플 문구·라벨 체크리스트·3지역 비교
- 2026-05-01 03:00 (#7) [EP:2] FDA Pre-Submission (Q-Sub) 가이드·샘플 질문 — 파일 2개, Q-Sub 4종·MDUFA 70/100일·3제품 Q&A·3지역 비교
- 2026-05-01 19:30 (#8) [CATCHUP EP:3] MFDS 기술문서 섹션별 작성가이드 (사용목적·작용원리·성능·안전성) — 파일 1개, 3지역 매트릭스·3제품 맵핑
- 2026-05-01 19:30 (#9) [CATCHUP EP:1] MFDS 디지털의료제품법 하위 고시 추적 리스트 — 파일 1개, 법령·고시·가이드라인 6종·자사 영향 판단표
- 2026-05-02 03:00 (#10) [EP:2] MFDS 디지털의료기기 가이드라인 6종 요약 (2025-05-07) — 파일 1개, 내장형/독립형 분류·3제품 맵핑·전자적 표시기재 2026-01-24 의무화
- 2026-05-02 19:30 (#11) [CATCHUP EP:3] MDR Annex II Technical Documentation 섹션별 템플릿 — 파일 1개, 6섹션 작성 템플릿·3제품 맵핑·3지역 비교
- 2026-05-03 03:00 (#12) [CATCHUP EP:4] MDR Annex III PMS TD 템플릿 + Annex I GSPR 전항 맵핑 체크리스트 — 파일 2개, PMS Plan·PSUR 템플릿·§1~§23 체크리스트·3지역 비교
- 2026-05-03 19:30 (#13) [CATCHUP EP:4] MDR DoC 양식·PRRC 자격요건·X-ray Detector DHF 목차 — 파일 3개, Annex IV 8항목·Article15 2경로자격·DHF 36문서목차
- 2026-05-04 03:00 (#14) [CATCHUP EP:2] X-ray Detector 성능시험 매트릭스 — 파일 1개, IEC 62220-1-1 DQE·MTF·NPS·3지역 제출요건·V&V 체크리스트
- 2026-05-04 03:00 (#15) [CATCHUP 완료 EP:2] Handheld X-ray Source DHF 목차·문서 템플릿 — 파일 1개, 35문서 목차·21 CFR 1020.30·Form FDA 2579·MDR IIb NB 심사
- 2026-05-04 19:30 (#16) [EP:1] Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트 — 파일 1개, 누설방사선/HVL/경고라벨/인증/배터리표시·3지역 비교
- 2026-05-05 03:00 (#17) [EP:3] 촬영실 GUI SW IEC 62304 문서 세트 — 파일 1개, SDP·SRS·SAD·SDS·SVP/SVR·SCMP·SPRP 전체 템플릿·Safety Class·SOUP·SBOM·3지역 비교
- 2026-05-05 19:30 (#18) [EP:3] 3개 제품 공통 Risk Management File ISO 14971:2019 템플릿 — 파일 1개, RMP·Hazard ID·Risk Register·Risk Control·RRE·ORRE·AFAP vs ALARP 3지역 비교
- 2026-05-06 03:00 (#19) [EP:2] 3개 제품 공통 Usability Engineering File (IEC 62366-1+AMD1) 템플릿 — 파일 1개, UEF-01~11 산출물·URRA/Critical Task·SEP/SER·AMD1 변경사항·3지역 비교
- 2026-05-06 19:30 (#20) [EP:2] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿 — 파일 1개, CEP+CER 전체 섹션·Art.61 동등성 경로·MDCG 2020-1/5/6/2023-7·3지역 비교
- 2026-05-07 03:00 (#21) [EP:2] 3개 제품 공통 ISO 10993-1 생물학적평가 적용판단 — 파일 1개, ISO 10993-1:2025(Ed 6)·3제품 비교 매트릭스·endpoint 결정표·3지역 비교
- 2026-05-07 19:30 (#23) [EP:3] IEC 60601-1:2005+A1+A2 (Ed 3.2) 시험항목 매트릭스 — 파일 1개, Cl.4~17 전항목·3지역 버전·인정현황·3제품 Gap분석·IECEE CB Scheme·Ed 4.0 동향
- 2026-05-08 (#24,#25) [EP:4] IEC 60601-1-2 EMC 시험항목·Pass Criteria + IEC 60601-1-3 방사선방호 시험항목 — 파일 2개, CISPR/IEC 기준·3지역 비교·3제품 갭분석
- 2026-05-09 (#26,#27,#28) [EP:5] IEC 60601-2-28 X-ray Source 시험항목 + IEC 62133-2 배터리 안전 + IEC 60601-2-54 촬영·투시 시험항목 — 파일 3개, 3지역 비교·3제품 맵핑
- 2026-05-10 03:00 (#29) [EP:2] IEC 62220-1-1:2015 DQE 측정절차 가이드 — 파일 1개, MTF/NNPS/DQE Step-by-step·RQA3/RQA5·Lag보정·3지역 규제 요구. commit 02abfec
- 2026-05-10 19:30 (#30) [EP:3] IEC 62304:2006+A1:2015 SW 수명주기 산출물 매핑 — 파일 1개, Cl.5~9 전 조항·Safety Class A/B/C·3제품 적용 계획·FDA Basic/Enhanced·3지역 비교
- 2026-05-11 03:00 (#31) [EP:2] ISO 13485:2016 절차서 목록 (섹션 4~8)·뼈대 — 파일 1개, 37개 절차서(M:22/R:12/C:3)·SOP 뼈대 템플릿·3지역 비교·Phase-in 구현 우선순위
- 2026-05-11 19:30 (#32) [EP:3] KGMP vs QMSR vs ISO 13485 차이·통합 전략 — 파일 1개, 3지역 QMS 비교·ARR 추가 요건·통합 QMS 로드맵·MDSAP 전략·3제품 갭분석
- 2026-05-12 03:00 (#33,#34) [EP:3] Design Controls 절차서 (§7.3) + Document/Record Control 절차서 (§4.2.4/4.2.5) — 파일 2개, 3지역 비교·3제품 맵핑·추적성 매트릭스·15년 보존기준
- 2026-05-13 03:00 (#36,#37,#38) [EP:3] CAPA·Internal Audit·Management Review 절차서 템플릿 — 파일 3개, SOP-QMS-008/009/010, 5-Why/Fishbone RCA·NC 3분류·12개 MR 입력항목·3지역 비교
- 2026-05-13 19:30 [CATCHUP EP:4] (#35,#39,#40,#41) CAPA·Internal Audit·Management Review·Supplier Control 절차서 4개 — SOP-QMS-008~011 신규, §8.5.2/§8.2.4/§5.6/§7.4 기준, 3지역 비교·3제품 맵핑. CATCHUP 완료
- 2026-05-13 19:30 (#42) [EP:2] FDA Threat Model 작성 가이드·STRIDE 기반 샘플 — 파일 1개, Section 524B 근거·STRIDE 6범주·DREAD 우선순위화·3제품 Cyber Device 판정·eSTAR 제출 패키지·3지역 비교
- 2026-05-14 03:00 (#43) [EP:2] SBOM 생성 실무 (SPDX vs CycloneDX 비교·도구) — 파일 1개, SPDX 2.3/CycloneDX 1.6·NTIA 7개 최소요소·도구 비교(syft/cdxgen)·3지역 요구·3제품 맵핑
- 2026-05-14 19:30 (#44) [EP:1] MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트 — 파일 1개, 8대 보안 실무(P1~P8)·Pre/Post-market 체크리스트·MDR Annex I §17.2/17.4/18.8 매핑·3제품 역량 매트릭스. commit 91babcb6
- 2026-05-15 (#45,#46) [EP:3] PCCP 작성 가이드 (AI-enabled device, 2024-12-03 Final) + ISO 15223-1:2021 심볼 적용 가이드 — 파일 2개, PCCP 5단계 구조·SaMD 리스크 분류·ISO 15223-1 심볼 카탈로그·3제품 적용 맵핑·3지역 비교
- 2026-05-16 03:00 (#47) [EP:2] IEC 81001-5-1:2021 수명주기 보안 활동 매핑 — 파일 1개, IEC 62304 단계별 통합 매핑·5대 Clause·64개 보안 요건·3지역 비교(MFDS N60/FDA SPDF/MDR)·3제품 맵핑. commit eb7847b
- 2026-05-16 19:30 (#48) [EP:1] UDI 구조 3개 지역 비교 (GUDID/EUDAMED/UDI포털) — 파일 1개, DI·PI 구조·GS1/HIBCC/ICCBBA·EUDAMED Basic UDI-DI 2계층·2026-05-28 의무화·3제품 라벨 체크리스트. commit 66ea10b2
- 2026-05-17 19:30 (#49) [EP:2] MFDS 사이버보안 가이드라인 2025.01 개정 대응 — 파일 1개, 요구사항 15→35개(RA-01~35)·IMDRF N60/N70/N73 한글화·5종 제출 서류·3지역 비교·3제품 맵핑. commit 8e6f97b0
- 2026-05-18 03:00 (#50) [EP:2] IFU 필수요소 3지역 비교표 — 파일 1개, MFDS/FDA/MDR 36개 IFU 항목 비교 매트릭스·방사선 전용 요건·3제품 IFU 필수항목 체크리스트
- 2026-05-18 19:30 (#51,#52) [EP:4] 디지털의료기기 표시기재 가이드라인(MFDS 2025.01) + Clinical Evaluation(MDR) 심화 — 파일 2개, 전자적 표시 의무화 대응·동등성 충분성 기준·MDCG 2020-5/6/2023-7 기반·3지역 비교
- 2026-05-19 03:00 (#53) [EP:2] FDA Clinical Data 필요 판단 기준 (510(k) vs De Novo vs PMA) — 파일 1개, Clinical Data Decision Tree·Substantial Equivalence 임상 판단·De Novo 요건·3제품 전략 맵핑
