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
-