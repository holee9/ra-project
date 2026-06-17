> 최종 갱신: 2026-06-17 (주간모니터 #4 — §8 추가: 방사선 ML 정량영상 SW 분류 최종규칙 2026-12166)
> 근거: https://www.federalregister.gov/documents/2026/06/17/2026-12166/medical-devices-radiology-devices-classification-of-the-radiological-machine-learning-based | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-artificial-intelligence | https://www.fda.gov/regulatory-information/search-fda-guidance-documents/artificial-intelligence-enabled-device-software-functions-lifecycle-management-and-marketing | https://www.federalregister.gov/documents/2025/01/07/2024-31543/artificial-intelligence-enabled-device-software-functions-lifecycle-management-and-marketing

# FDA AI/ML 기기 2026 업데이트 — PCCP 운영 + TPLC 수명주기 관리

> Phase 5 유지관리 분기 심층패치. BACKLOG [P5] "FDA AI/ML Device Action Plan 2026 업데이트 (PCCP 운영 사례 분석)" 처리분.
> 기존 KB `미국_FDA/PCCP_AI_Device_작성가이드.md`(#45, 2024-12 Final 기준)의 **운영·갱신본**. 작성 가이드와 중복 회피, 운영·확정상태·자사 맵핑 중심.
> 참조 기간: 2024-12 ~ 2026-06-05.

---

## 0. 핵심 결론

1. **PCCP 최종 가이던스(2024-12)는 확정·시행 중.** 510(k)·De Novo·PMA 3개 경로 모두 적용. 승인된 PCCP 범위 내 AI 변경은 **신규 제출 없이** 반영 가능.
2. **AI 수명주기 관리 가이던스(2025-01-06 초안)는 여전히 초안.** FY2026 가이던스 B-list 등재, 2026-06 현재 **미확정**. 그러나 제출 실무에서는 사실상 권고 기준으로 작동.
3. **QMSR(2026-02-02 발효)** 의 설계관리·변경관리·기록보존이 PCCP 운영의 QMS 토대. PCCP는 QMS 없이는 유지 불가.

---

## 1. 두 문서의 상태 정리 (혼동 주의)

| 문서 | 종류 | 발표일 | 상태(2026-06) | 핵심 |
|---|---|---|---|---|
| Marketing Submission Recommendations for a **PCCP** for AI-Enabled DSF | **최종(Final)** | 2024-12 | ✅ 확정·시행 | 제출 시 PCCP로 사전 승인된 변경 범위 운영 |
| **AI-Enabled Device Software Functions: Lifecycle Management & Marketing Submission Recommendations** | **초안(Draft)** | 2025-01-06 | ⏸ 초안 유지(FY2026 B-list) | TPLC 전반 설계·제출 권고(투명성·편향·HF·사이버보안) |

> 의견수렴: 수명주기 초안은 2025-04-07 코멘트 마감. 이후 확정본 미발표(2026-06 기준).

---

## 2. PCCP 운영 핵심 (Final 기준)

### 2-A. PCCP 3대 구성요소

1. **Description of Modifications** — 계획된 기기 변경 내용(예: 재학습 데이터 추가, 성능 임계값 조정, 입력 데이터 유형 확장).
2. **Modification Protocol** — 변경의 개발·검증·구현 방법론: 데이터 관리, 재학습 절차, 성능 평가 프로토콜·합격기준, 업데이트 구현·배포 절차.
3. **Impact Assessment** — 변경이 안전성·유효성에 미치는 영향, 변경 간 상호작용, 위험 통제.

### 2-B. 운영 원리 (사례적 해석)

- 승인된 PCCP에 **정확히 명시된 방식**으로 구현되는 변경만 신규 제출 면제. 프로토콜을 벗어난 변경은 새 510(k)/De Novo/PMA Supplement 필요.
- "specified, methodical, verifiable" 3요건 충족이 핵심. 모호한 포괄 변경은 FDA가 PCCP에서 배제 요구.
- 변경 이력·검증 기록은 QMSR 설계·변경관리(§820)로 추적 가능해야 함.

### 2-C. 제출 권고 패키지(수명주기 초안 반영)

모델 설명 · 데이터 계보/분할(train/tune/test) · 성능과 임상 주장 연계 · **편향 분석·완화** · Human-AI 워크플로우 · **시판 후 모니터링** · 업데이트 계획 시 PCCP.

---

## 3. TPLC(총제품수명주기) 관리 요구

설계·개발·배포·유지 전 단계에 걸친 위험 관리. 강조점: **투명성, AI 편향, 데이터 품질, 인적요인(HF), 변경관리, 사이버보안, 시판 후 성능 모니터링**. (수명주기 초안 + 2026-05-29 HF 최종 가이던스(#89) 정합.)

---

## 4. 자사 3제품 영향 맵핑

| 항목 | X-ray Detector | Handheld X-ray Source | 촬영실 GUI SW |
|---|---|---|---|
| AI-DSF 해당 여부 | 통상 비AI(하드웨어) → 저 | 통상 비AI → 저 | **AI 기능 탑재 시 핵심 대상** |
| PCCP 필요성 | 해당 없음/낮음 | 낮음 | **AI 알고리즘 갱신 계획 시 PCCP 권장** |
| 편향·데이터품질 | — | — | 🔴 학습데이터 대표성·하위집단 성능 |
| 사이버보안(524B) | 연결 시 해당 | 연결 시 해당 | 🔴 SBOM·위협모델(기존 #42·#43) |
| HF/사용적합성 | 중 | 중 | 🔴 Human-AI 워크플로우 |
| QMSR 정합 | 🔴 | 🔴 | 🔴 변경관리로 PCCP 지지 |

> 결론: PCCP는 사실상 **촬영실 GUI SW에 AI 기능이 포함될 경우의 전략 도구**. Detector/Source는 비AI인 한 우선순위 낮음. AI 기능 추가 계획 시 최초 제출에 PCCP 동봉이 후속 재학습 비용·시간을 절감.

---

## 5. 행동 지시 (Action)

1. 촬영실 GUI SW의 AI 기능 로드맵 확정 시, **최초 510(k)/De Novo에 PCCP 동봉** 여부를 설계 초기 결정.
2. PCCP Modification Protocol에 재학습 데이터 관리·성능 합격기준·편향 점검을 **정량 기준**으로 명시(모호 표현 배제).
3. QMSR 설계·변경관리 절차서에 PCCP 변경 추적·기록보존 항목 연결(기존 `KGMP_QMSR_ISO13485_비교_통합전략.md` 갱신본 참조).
4. 수명주기 초안 확정 여부를 분기 주간 모니터(Federal Register API)로 추적 → 확정 시 본 문서 갱신.

---

## 6. 3지역 비교 (AI 변경관리 관점)

| 관점 | FDA(US) | MDR(EU) | MFDS(KR) |
|---|---|---|---|
| 사전 변경 승인 도구 | **PCCP**(Final 2024-12) | Substantial Change 평가 + (간소화 제안 시 절차 개선 논의) | 변경허가/경미변경 신고(음성변경허가 도입 예정) |
| AI 전용 프레임워크 | 수명주기 초안(2025-01, 미확정) | MDCG AI 관련 지침 + AI Act 교차 | AI 디지털의료기기 가이드라인(2025-10 개정 9종) |
| QMS 토대 | QMSR(2026-02-02) | ISO 13485 + MDR | KGMP + 디지털의료제품법 |

---

## 7. 출처 (1차/공식 우선)

- FDA PCCP 최종 가이던스: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-artificial-intelligence
- FDA AI 수명주기 가이던스(초안): https://www.fda.gov/regulatory-information/search-fda-guidance-documents/artificial-intelligence-enabled-device-software-functions-lifecycle-management-and-marketing
- Federal Register 초안 고시(2025-01-07): https://www.federalregister.gov/documents/2025/01/07/2024-31543/artificial-intelligence-enabled-device-software-functions-lifecycle-management-and-marketing
- FDA PCCP Guiding Principles(ML): https://www.fda.gov/medical-devices/software-medical-device-samd/predetermined-change-control-plans-machine-learning-enabled-medical-devices-guiding-principles
- FDA AI in SaMD 허브: https://www.fda.gov/medical-devices/software-medical-device-samd/artificial-intelligence-software-medical-device
- **(2026-06-17 신규)** Federal Register 91 FR 36522 — Radiology ML Quantitative Imaging SW with PCCP, Final Order, 21 CFR 892.2055: https://www.federalregister.gov/documents/2026/06/17/2026-12166/medical-devices-radiology-devices-classification-of-the-radiological-machine-learning-based

---

## 8. 신규 분류: 방사선 ML 정량영상 SW (Class II, 21 CFR 892.2055, 2026-06-17 발효)

> 출처: Federal Register 91 FR 36522 (Doc. 2026-12166, Docket FDA-2026-N-6535, Final amendment; final order). 공포·발효 동일일자 2026-06-17. 분류 적용일은 소급 2023-02-24.

### 8-A. 정의(Identification)
방사선 영상에 머신러닝 알고리즘을 적용해 **정량적 영상 출력**(view selection, segmentation, landmarking 등 보조기능 포함)을 제공하는 **SW 단독(software-only) 기기**. 설계명세에 사전승인된 PCCP에 따라 시행될 **계획 변경**이 포함된다.

### 8-B. 분류·특수통제(Special Controls)
**Class II (special controls)**. 다음을 충족해야 한다 (요지):
1. **설계 검증·확인(V&V)** — (i) 영상후처리 알고리즘·입출력·블록·한계 상세 기술 (ii) **학습 데이터·라벨링·코호트**(인구학·교란요인·장비특성별 부분집합) 상세 (iii) **독립 테스트셋**에서 객관적 성능지표(Dice/Hausdorff/민감도/특이도/예측도 등)·하위집단별 신뢰구간 (iv) **SW V&V·위험분석**.
2. **계획 변경 문서화** — V&V 활동의 일부로, PCCP 성능요건과 일치하는 변경 개발·검증·확인 방법론을 문서화.
3. **위험관리** — 계획 변경의 위험 식별·평가 및 대응통제 식별.
4. **라벨링** — (i) 검증된 환자집단 (ii) 사용자·필요 전문성 (iii) 입출력 상세 (iv) **호환 영상장비·프로토콜** (v) 성능 요약(시험방법·데이터 특성·환경·결과·CI·교란요인 stratified 하위분석) (vi) 실패·성능저하 상황(예: 저화질·특정 하위집단) (vii) **PCCP 라벨** — PCCP 보유 명시·변경 설명(현재성능/입력/검증요건/근거 요약)·**버전이력**·구현방법·사용자 통지방법.

### 8-C. 운영 의의 (Why it matters)
- **PCCP를 분류 자체에 내재화한 최초 사례**(특수통제 본문에서 PCCP를 명시적으로 요구). 그동안 가이던스 차원이던 PCCP가 **CFR로 진입**.
- 510(k) 경로의 동일/유사 ML 정량영상 SW는 본 §892.2055 특수통제 충족이 적합성 추정의 근거가 됨(De Novo→Class II 이행 후 510(k) 단순화 기대).
- **라벨링에 버전이력·사용자 통지방법 명시**는 향후 모든 AI-DSF의 사실상 표준이 될 가능성.

### 8-D. 자사 영향 (DOSSIER_MAP 매핑)
| 제품 | 영향 | 근거 |
|---|---|---|
| P1 X-ray Detector | ○ 간접 | SW 단독 분류로 Detector 자체는 비대상. 단, Detector 출력을 입력으로 쓰는 자사 ML SW 개발 시 §8-B (iv) **호환 영상장비/프로토콜** 라벨링 책임 발생. |
| P2 Handheld X-ray Source | ○ 간접 | 동일 사유. |
| P3 촬영실 GUI SW | ● **직접** | **AI 정량영상 기능 탑재 시 본 §892.2055 분류 우선검토.** §3 PCCP 패키지(설명·프로토콜·영향평가) + §8-B 특수통제 7대 요소 전부를 510(k)/De Novo 패키지에 매핑해야 함. |

### 8-E. Action (촬영실 GUI SW 팀 즉시 조치)
1. 자사 ML 정량영상 기능 로드맵을 **§892.2055 특수통제 7요소 체크리스트**로 매핑(설계초기). PCCP 동봉 결정 시 §2-A 3대 구성요소(Description/Protocol/Impact)와 §8-B(2)~(4) 일치 확인.
2. 학습데이터 코호트 정의서에 **인구학·교란요인·영상장비특성별 하위집단** 명시(§8-B(1)(ii)·(iii) 직접 요구).
3. 라벨링 SOP에 **버전이력·PCCP 변경통지** 절차 추가(§8-B(4)(vii)). 기존 IFU 템플릿(`04_템플릿/IFU_*`)에 PCCP 섹션 보강.
4. QMSR 설계관리 절차서에 §892.2055 특수통제 추적성 매트릭스 추가(§820.30 입력·출력 매핑).

---
작성: FDA 전문가 페르소나 · 검토(QA): Federal Register 1차출처(91 FR 36522, 2026-12166) 직접 확인, 발효일·CFR번호·특수통제 7요소 raw text 대조 완료, DOSSIER_MAP 매핑 정합 · 상태: 승인 (조건부: 호환장비 라벨링 SOP 갱신은 사람확인 대기) · 일자: 2026-06-17
