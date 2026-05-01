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

## 3-레포 시스템 내 역할

본 레포는 **RA 전문가 지식베이스(knowledge source #2)** 역할을 담당한다.

| 레포 | 역할 |
|------|------|
| MD-process | 회사 정책·지침·SOP (knowledge source #1) |
| **ra-project** | **RA 전문 지식베이스 (knowledge source #2)** |
| ra-med-bot (Regula) | 두 레포 기반 사내 사용자 챗봇 |

### Bot 연동 원칙

- Regula(ra-med-bot)의 Agent가 이 레포를 탐색하여 팩트 기반 답변 생성
- 미답변 발생 시 본 레포 GitHub Issue 자동 등록 → Cowork 스케줄링 처리
- Bot 대화 이력의 미답변 패턴이 BACKLOG 우선순위에 반영 (현장 긴급도 보완)
- 내부 EP 스케줄(완성도 중심) + bot 미답변(현장 긴급도 중심) 상호 보완 운영

> 시스템 전체 브레인스토밍 확정: [ra-med-bot/.moai/plans/brainstorming-2026-05-02.md](https://github.com/holee9/ra-med-bot/blob/main/.moai/plans/brainstorming-2026-05-02.md)

## 연동 상태
- GitHub: <https://github.com/holee9/ra-project>
- 연동 방식: Claude in Chrome + GitHub REST API (PAT 기반)
- Claude 직접 push 가능 (실시간 반영)

## 진척 현황 (EP 기반)

> 최종 갱신: 2026-05-01

| 구분 | 총 EP | 완료 EP | 잔여 EP | 완료율 |
|---|---|---|---|---|
| [P1] 기초 골격 | 57 | 23 | 34 | 40.4% |
| [P2] 중우선 | 32 | 0 | 32 | 0% |
| [P3] 실전 대응 | 33 | 0 | 33 | 0% |
| [P4] 고도화 | 16 | 0 | 16 | 0% |
| **합계** | **138** | **23** | **115** | **16.7%** |

- 예상 완료 (낙관): 2026-05-20 (정상 2회 가동 기준, 6 EP/일)
- 예상 완료 (보수): 2026-06-12 (현재 실속도 기준, 2.6 EP/일)
- CATCHUP 잔여: 16 EP

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
| **2회차