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
2026-04-30 (EP 기반 스케줄 정책 도입)

## 연동 상태
- GitHub: <https://github.com/holee9/ra-project>
- 연동 방식: Claude in Chrome + GitHub REST API (PAT 기반)
- Claude 직접 push 가능 (실시간 반영)

## 진척 현황 (EP 기반)

> 최종 갱신: 2026-05-01

| 구분 | 총 EP | 완료 EP | 잔여 EP | 완료율 |
|---|---|---|---|---|
| [P1] 기초 골격 | 57 | 25 | 32 | 43.9% |
| [P2] 중우선 | 32 | 0 | 32 | 0% |
| [P3] 실전 대응 | 33 | 0 | 33 | 0% |
| [P4] 고도화 | 16 | 0 | 16 | 0% |
| **합계** | **138** | **25** | **113** | **18.1%** |

> 최종 갱신: 2026-05-02

- 예상 완료 (낙관): 2026-05-21 (정상 2회 가동 기준, 6 EP/일)
- 예상 완료 (보수): 2026-06-06 (현재 실속도 기준, 3.3 EP/일)
- CATCHUP 잔여: 14 EP

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
- 2026-04-30 19:30 (#6) [EP:2] FDA eSTAR Labeling (IFU, Form 3881, 21 CFR 801) — 파일 2개, 3개 제품 IFU 샘플 문구·라벨 체크리스트·3지역 비교
- 2026-05-01 03:00 (#7) [EP:2] FDA Pre-Submission (Q-Sub) 가이드·샘플 질문 — 파일 2개(문서+INDEX갱신), Q-Sub 4종·MDUFA 70/100일·3제품 샘플 Q&A·3지역 비교
- 2026-05-01 19:30 (#8) [CATCHUP EP잔여16 EP:3] MFDS 기술문서 섹션별 작성가이드 (사용목적·작용원리·성능·안전성) — 파일 1개, 3지역 매트릭스·3제품 맵핑·시험항목표
- 2026-05-01 19:30 (#9) [CATCHUP EP잔여13 EP:1] MFDS 디지털의료제품법 하위 고시 추적 리스트 — 파일 1개, 법령·고시·가이드라인 6종·자사 영향 판단표
- 2026-05-02 03:00 (#10) [EP:2] MFDS 디지털의료기기 관련 가이드라인 6종 요약 (2025-05-07) — 파일 1개, 내장형/독립형 분류 체계·3제품 맵핑·전자적 표시기재 2026-01-24 의무화 대응
- 2026-05-02 19:30 (#11) [CATCHUP EP잔여11 EP:3] MDR Annex II Technical Documentation 섹션별 템플릿 — 파일 1개, 6개 섹션 작성 템플릿·3제품 맵핑·3지역 비교
- 2026-05-03 03:00 (#12) [CATCHUP EP잔여7 EP:4] MDR Annex III PMS TD 템플릿 + Annex I GSPR 전항 맵핑 체크리스트 — 파일 2개, PMS Plan·PSUR 템플릿·§1~§23 체크리스트·조화표준 매핑·3지역 비교
- 2026-05-03 19:30 (#13) [CATCHUP EP잔여3 EP:4] MDR DoC 양식·PRRC 자격요건·X-ray Detector DHF 목차 — 파일 3개, Annex IV 8개 필수항목·양식템플릿·Article15 2경로자격·DHF 36문서목차·DQE 시험요건
- 2026-05-04 03:00 (#14) [CATCHUP EP:2] X-ray Detector 성능시험 매트릭스 — 파일 1개, IEC 62220-1-1 DQE·MTF·NPS 측정법·3지역 제출요건·V&V 체크리스트
- 2026-05-04 03:00 (#15) [CATCHUP 완료 EP:2] Handheld X-ray Source DHF 목차·문서 템플릿 — 파일 1개, 35문서 목차·21 CFR 1020.30 방사선 성능기준·Form FDA 2579·MDR IIb NB 심사·CATCHUP 해소
- 2026-05-04 19:30 (#16) [EP:1] Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트 — 파일 1개, 누설방사선/HVL/경고라벨/인증/배터리표시/Form FDA 2579·3지역 비교·시험항목 요약
- 2026-05-05 03:00 (#17) [EP:3] 촬영실 GUI SW IEC 62304 문서 세트 — 파일 1개, SDP·SRS·SAD·SDS·SVP/SVR·SCMP·SPRP 전체 템플릿·Safety Class 판단·SW 위험 항목·SOUP·SBOM·3지역 제출 요건 비교·3제품 영향 매트릭스
- 2026-05-05 19:30 (#18) [EP:3] 3개 제품 공통 Risk Management File ISO 14971:2019 템플릿 — 파일 1개, RMP·Hazard ID·Risk Register·Risk Control 3계층·RRE·ORRE·RMR·PPI 전체 섹션·AFAP vs ALARP 3지역 비교·3제품 특화 Hazard 맵핑
- 2026-05-06 03:00 (#19) [EP:2] 3개 제품 공통 Usability Engineering File (IEC 62366-1:2015+AMD1:2020) 템플릿 — 파일 1개, UEF-01~11 산출물 구조·URRA/Critical Task·SEP/SER·훈련 3순위 등 AMD1 변경사항·3지역 제출 비교·3제품 사용자/시나리오/위험 맵핑
- 2026-05-06 19:30 (#20) [EP:2] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿 — 파일 1개, CEP+CER 전체 섹션 템플릿·Art.61 동등성 경로·MDCG 2020-1/5/6/2023-7 기반·3제품 등급별 임상평가 전략·3지역 비교 매트릭스
- 2026-05-07 03:00 (#21) [EP:2] 3개 제품 공통 ISO 10993-1 생물학적평가 적용판단 — 파일 1개, ISO 10993-1:2025(Ed 6) 주요 개정·접촉 범주 분류·3제품 비교 매트릭스(Detector=필수/Handheld=조건부/GUI SW=면제)·endpoint 결정표·3지역 비교(MFDS/FDA/MDR)·BER 구성·비용 참고
- 2026-05-07 19:30 (#23) [EP:3] IEC 60601-1:2005+A1+A2 (Ed 3.2) 시험항목 매트릭스 — 파일 1개, Cl.4~17 전항목 시험표·3지역(MFDS/FDA/MDR) 버전·인정현황 비교·3제품 Gap분석·IECEE CB Scheme 전략·Ed 4.0 동향
-
- 2026-05-09 19:30 (#28) [EP:2] IEC 60601-2-54:2022 촬영·투시 X선 장비 시험항목 매트릭스 — 파일 1개, 투시 최대 AK Rate·AEC·Exposure Index·DAP 표시·3지역 비교(FDA §1020.32 vs IEC)·3제품 갭분석
- 2026-05-10 03:00 (#29) [EP:2] IEC 62220-1-1:2015 DQE 측정절차 가이드 — 파일 1개, Step-by-step MTF/NNPS/DQE 계산·RQA3/RQA5 빔 품질·Lag보정·3지역 규제 요구·3제품 영향 맵핑. commit 02abfec
- 2026-05-10 19:30 (#30) [EP:3] IEC 62304:2006+A1:2015 SW 수명주기 산출물 매핑 — 파일 1개, Cl.5~9 전 조항 산출물·Safety Class A/B/C 판정·면제 조항·3제품 적용 계획(Detector B/Handheld C/GUI SW C)·FDA Basic/Enhanced 수준 판단·3지역(MFDS/FDA/MDR) 요건 비교
- 2026-05-11 03:00 (#31) [EP:2] ISO 13485:2016 절차서 목록 (섹션 4~8)·뼈대 — 파일 1개, 37개 절차서(M:22/R:12/C:3) 전체 목록·표준 SOP 뼈대 템플릿·3지역 비교(KGMP 2025-22·QMSR 2026-02-02·MDR Annex IX)·3제품 영향 맵핑·Phase-in 구현 우선순위
- 2026-05-11 19:30 (#32) [EP:3] KGMP vs QMSR vs ISO 13485 차이·통합 전략 — 파일 1개, 3지역 QMS 체계 비교·조항별 차이 매트릭스·QMSR ARR 추가 요건·KGMP 한국어 문서 요건·MDR PMS/Vigilance/PRRC·통합 QMS 단계별 로드맵·MDSAP 활용 전략·3제품 갭 분석 체크리스트
- 2026-05-12 03:00 (#33) [EP:2] Design Controls 절차서 템플릿 (ISO 13485 §7.3) — 파일 1개, §7.3.2~7.3.10 전 단계 절차·DHF 구성·3지역 비교 매트릭스(QMSR/MDR/KGMP 2025-22)·3제품 적용 맵핑·추적성 매트릭스 템플릿·변경 유형 분류·기록 보존 기준
- 2026-05-12 03:00 (#34) [EP:1] Document Control / Record Control 절차서 템플릿 (ISO 13485 §4.2.4/4.2.5) — 파일 1개, 문서 계층·번호체계·수명주기·기록 15년 보존기준·3지역 비교(QMSR §820.40/180·MDR Annex IX·KGMP)·3제품 맵핑
- 2026-05-13 03:00 (#36) [EP:1] CAPA 절차서 템플릿 (ISO 13485 §8.5.2/§8.5.3) — 파일 1개, CA/PA Flow·5-Why/Fishbone/FTA RCA·심각도 3등급·효과성 검증·3지역 비교(QMSR §820.100·MDR Annex IX·KGMP)·3제품 맵핑·양식 포함
- 2026-05-13 03:00 (#37) [EP:1] Internal Audit 절차서 템플릿 (ISO 13485 §8.2.4) — 파일 1개, 연간 계획·심사원 자격·착수/종결 회의·NC 분류(Major/Minor/OBS)·CAPA 연계·3지역 비교(QMSR §820.22·MDR Annex IX·KGMP)·3제품 핵심 심사 영역·양식 포함
- 2026-05-13 03:00 (#38) [EP:1] Management Review 절차서 템플릿 (ISO 13485 §5.6) — 파일 1개, 12개 입력 항목·출력(Action Item)·QMSR adverse event 추가 요건·MDR PMS 연계·3지역 비교(QMSR §820.20(c)·MDR Annex IX·KGMP)·3제품 맵핑·의사록 양식 포함
- 2026-05-13 19:30 [CATCHUP EP:4] (#35/#39/#40/#41) CAPA·Internal Audit·Management Review·Supplier Control 절차서 템플릿 4개 — SOP-QMS-008/009/010/011 파일 4개 신규, ISO 13485 §8.5.2/§8.2.4/§5.6/§7.4 기준, 3지역 비교(QMSR/MDR/KGMP)·3제품 맵핑·양식 포함. CATCHUP EP:4 전액 소비

- 2026-05-13 19:30 (#42) [EP:2] FDA Threat Model 작성 가이드·STRIDE 기반 샘플 — 파일 1개, Section 524B 법적 근거·STRIDE 6범주 수행 절차·DREAD 우선순위화·3개 제품 Cyber Device 판정 및 위협 매트릭스·eSTAR 제출 패키지 구조·샘플 분석표 7항목·3지역 비교(FDA/MDR/MFDS)·AAMI TIR57/IEC 81001-5-1 연계
