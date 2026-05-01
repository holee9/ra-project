# 지식베이스 인덱스 (INDEX)

> 자료 추가 시 본 인덱스를 갱신하여 빠른 검색·참조가 가능하도록 유지.
> 최종 갱신: 2026-05-01 (자동보강 #8·#9 — MFDS 기술문서 섹션별 작성가이드 + 디지털의료제품법 하위고시 추적)

## 0. 기준 문서 (Top-level)
- [README.md](README.md) – 프로젝트 개요
- [SOP_운영규칙.md](SOP_운영규칙.md) – 자료 업로드·분류·현안처리 프로세스

## 1. 규제 지식베이스

### 1.0 통합 요약
- [규제_프레임워크_요약](01_규제지식베이스/규제_프레임워크_요약.md) – MFDS/FDA/MDR 최신 비교 요약
- [사이버보안_통합가이드](01_규제지식베이스/사이버보안_통합가이드.md) – 3대 지역 사이버보안 통합

### 1.1 국내 (MFDS / 식약처)
- [MFDS_인허가_상세가이드](01_규제지식베이스/국내_MFDS/MFDS_인허가_상세가이드.md) – 국내 전체 가이드
- [제품별_등급분류](01_규제지식베이스/국내_MFDS/등급분류_기준/제품별_등급분류.md) – 3개 제품 등급 교차검증
- [MFDS_기술문서_섹션별_작성가이드](01_규제지식베이스/국내_MFDS/MFDS_기술문서_섹션별_작성가이드.md) – 사용목적·작용원리·성능·안전성 섹션 작성 가이드 (3지역 비교·3제품 맵핑, #8)
- 법령·고시·가이드라인: `01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/`
  - [MFDS_디지털의료제품법_하위고시_추적](01_규제지식베이스/국내_MFDS/법령_고시_가이드라인/MFDS_디지털의료제품법_하위고시_추적.md) – 2025-01-24 시행 디지털의료제품법 고시·가이드라인 추적 (#9)
- GMP 심사 자료: `01_규제지식베이스/국내_MFDS/GMP_심사자료/`

### 1.2 미국 (FDA)
- [FDA_인허가_상세가이드](01_규제지식베이스/미국_FDA/FDA_인허가_상세가이드.md) – 510(k)/QMSR/Cybersecurity/PCCP 전체
- 510(k)·PMA 가이던스: `01_규제지식베이스/미국_FDA/510k_PMA_가이던스/`
  - [eSTAR_01_Device_Description_IFU](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_01_Device_Description_IFU.md) – eSTAR 작성 가이드 (1) Device Description / IFU
  - [eSTAR_02_Substantial_Equivalence](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_02_Substantial_Equivalence.md) – eSTAR 작성 가이드 (2) Substantial Equivalence 비교표
  - [eSTAR_03_Performance_Testing_Bench_Test](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_03_Performance_Testing_Bench_Test.md) – eSTAR 작성 가이드 (3) Performance Testing / Bench Test (3개 제품 완전 맵핑)
  - [eSTAR_04_Cybersecurity_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_04_Cybersecurity_Section.md) – eSTAR 작성 가이드 (4) Cybersecurity Section (Section 524B + 2025 Final Guidance 기반, 3개 제품 맵핑)
  - [eSTAR_05_Software_Section](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_05_Software_Section.md) – eSTAR 작성 가이드 (5) Software Section (IEC 62304 기반, Basic/Enhanced 10문서, 3개 제품 맵핑, 3지역 비교)
  - [eSTAR_06_Labeling_IFU_Form3881](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/eSTAR_06_Labeling_IFU_Form3881.md) – eSTAR 작성 가이드 (6) Labeling — IFU·Form 3881·21 CFR 801 기반, 3개 제품 맵핑
  - [FDA_PreSubmission_QSub_가이드](01_규제지식베이스/미국_FDA/510k_PMA_가이던스/FDA_PreSubmission_QSub_가이드.md) – FDA Pre-Sub(Q-Sub) 4종 유형·작성구조·MDUFA 타임라인·3개 제품 샘플 질문·3지역 비교
- 21 CFR Part 820 → QMSR: `01_규제지식베이스/미국_FDA/QSR_21CFR820/`
- 제품군별 Guidance: `01_규제지식베이스/미국_FDA/제품군별_가이던스/`

### 1.3 유럽 (CE / MDR)
- [MDR_인허가_상세가이드](01_규제지식베이스/유럽_CE_MDR/MDR_인허가_상세가이드.md) – MDR·전환기간·NB·MDCG 전체
- MDR 2017/745 원문·해설: `01_규제지식베이스/유럽_CE_MDR/MDR_2017_745/`
- MDCG 가이던스: `01_규제지식베이스/유럽_CE_M
---

## Regula(ra-med-bot) 연동 현황

> 추가일: 2026-05-02 (브레인스토밍 확정 반영)

본 레포는 Regula(ra-med-bot)의 **Knowledge Source #2 (RA 전문 지식베이스)** 역할을 담당한다.

### bot 연동 원칙

- Regula Agent가 이 레포 전체를 탐색하여 팩트 기반 답변 생성
- 미답변 중 `knowledge-gap`으로 분류된 Issue → Cowork 스케줄 처리 → 지식 보강
- 내부 EP 스케줄(완성도 중심) + bot 미답변 BACKLOG(현장 긴급도 중심) 상호 보완

### bot 연동 관련 문서

- [SOP_운영규칙.md §5](SOP_운영규칙.md#5-regulara-med-bot-연동-프로세스) — bot 미답변 처리 흐름
- [시스템 아키텍처](https://github.com/holee9/ra-med-bot/blob/main/docs/시스템_아키텍처.md) — 전체 구조
