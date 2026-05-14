> 최종 갱신: 2026-05-15 (자동보강 #45)
> 근거: https://www.fda.gov/regulatory-information/search-fda-guidance-documents/marketing-submission-recommendations-predetermined-change-control-plan-artificial-intelligence | https://www.federalregister.gov/documents/2024/12/04/2024-28361 | https://www.foley.com/insights/publications/2025/01/fda-final-guidance-ai-device-software-predetermined-change-control-plan/ | https://health.ec.europa.eu/latest-updates/mdcg-2025-6-faq-interplay-between-medical-devices-regulation-vitro-diagnostic-medical-devices-2025-06-19_en | https://bioin.or.kr/board.do?bid=system&cmd=view&num=332039

# PCCP (Predetermined Change Control Plan) 작성 가이드

## 1. 개요

**PCCP(Predetermined Change Control Plan)** 는 AI-enabled 의료기기에서 사전에 승인받은 변경 계획에 따라, 개별 변경마다 별도 마케팅 제출 없이 AI-DSF(AI-enabled Device Software Function)를 수정·개선할 수 있도록 하는 규제 메커니즘이다.

| 항목 | 내용 |
|---|---|
| 근거 가이던스 | Marketing Submission Recommendations for a PCCP for AI-Enabled Device Software Functions |
| 발효일 | 2024-12-04 (Final) |
| 발행 기관 | FDA CDRH / CBER / CDER / OCP |
| Docket | FDA-2022-D-2628 |
| 법적 구속력 | 비구속적 권고 (Nonbinding Recommendations) |

---

## 2. 3개 지역 규제 비교 매트릭스

| 항목 | FDA (미국) | MFDS (한국) | EU MDR + AI Act (유럽) |
|---|---|---|---|
| **제도명** | Predetermined Change Control Plan (PCCP) | 사전변경관리계획 | 별도 명칭 없음 (MDR 변경관리 + EU AI Act) |
| **근거** | FD&C Act §524B (FDORA 2022) + 2024-12-04 Final Guidance | 디지털의료제품법 + 하위 고시 | MDR 2017/745 + EU AI Act (Regulation EU 2024/1689) |
| **적용 범위** | 모든 AI-DSF (ML 포함). 510(k)/De Novo/PMA 해당 | AI 기반 디지털의료기기 변경 | High-risk AI system (Annex III) = 의료기기 해당 |
| **승인 구조** | PCCP를 원본 마케팅 제출에 포함 → 사전 일괄 승인 | 변경관리계획 사전 제출 → 승인된 범위 내 변경 자유 | 중요 변경: NB 재심사 필요 / AI Act: QMS에 변경관리 포함 |
| **특이사항** | Special 510(k) 경로 불가 | 승인 범위 내 변경 = 재허가 면제 | MDCG 2025-6: MDR×AI Act 상호작용 FAQ 발간 (2025-06) |

---

## 3. FDA PCCP 상세: 3대 필수 구성요소

### 3.1 Description of Modification (변경 설명)

PCCP에 포함 가능한 변경 유형 3가지:
1. **AI-DSF 성능 사양의 정량적 변경** — 민감도/특이도/AUC 등 성능 지표 임계값 변경
2. **디바이스 입력 및 호환성 변경** — 새 이미지 포맷, 센서 호환, 데이터 소스 추가
3. **사용 및 성능 관련 특정 변경** — 특정 임상 환경·사용자 유형 확장 (Intended Use 범위 유지 전제)

변경 설명 시 반드시 명시해야 할 속성:

| 속성 | 정의 | 예시 |
|---|---|---|
| **Automatic vs Manual** | SW 업데이트 자동 적용 vs 사람 개입 필요 | 클라우드 자동 배포 vs 사용자 수동 업데이트 |
| **Global vs Local** | 모든 기기 일괄 적용 vs 환자/기관별 개별 적용 | 전국 배포 vs 특정 병원 customization |
| **Frequency** | 변경 예상 빈도 | 분기별, 연간 최대 N회 등 |

> **주의**: 변경은 원본 Intended Use 범위를 유지해야 함. 적응증 자체 변경은 원칙적으로 PCCP 불가 (예외 존재).

---

### 3.2 Modification Protocol (변경 프로토콜)

4개 필수 항목:

| 항목 | 포함 내용 |
|---|---|
| **Data Management** | 훈련·검증 데이터 수집·정제·버전관리 절차, 데이터 편향 관리 |
| **Retraining Practices** | 알고리즘 재학습 트리거 조건, 재학습 절차, Rollback 계획 |
| **Performance Evaluation** | 사전 정의된 허용 기준 (Acceptance Criteria), V&V 방법론, 통계적 유의성 요건 |
| **Updated Procedures** | 사용자·임상진 커뮤니케이션 계획, 실세계 모니터링 계획, IFU 업데이트 절차 |

---

### 3.3 Impact Assessment (영향 평가)

- 승인 후 변경 실행 시 **편익 vs 위험** 분석
- 위험 경감 방안 (Risk Mitigation)
- ISO 14971 Risk Management와 연계: 변경 전·후 Risk Assessment 갱신 명시

---

## 4. 적용 경로별 고려사항

| 경로 | 적용 가능 | 유의사항 |
|---|---|---|
| 510(k) | ✅ | 실질적 동등성 (Substantial Equivalence) 유지 전제 |
| De Novo | ✅ | 신규 제품군 → PCCP로 사후 학습 경로 설계 용이 |
| PMA | ✅ | PMA Supplement 대신 PCCP 활용 가능 |
| Special 510(k) | ❌ | PCCP 불허 (Final Guidance 명시) |
| Pre-Sub (Q-Sub) | 권고 | PCCP 계획 사전 FDA 협의 강력 권고 (승인 단계 아님) |

---

## 5. 라벨링 요건

PCCP 승인 AI-DSF의 IFU/라벨에 반드시 포함:
- 기기가 **Machine Learning을 포함**한다는 명시
- **승인된 PCCP 존재** 및 주기적 SW 업데이트 필요성 고지
- 최신 성능 유지를 위한 업데이트 방법 안내

---

## 6. PCCP 자체 변경 시 처리

PCCP 내용을 변경하려면 → **신규 마케팅 제출 필요** (PCCP 변경 = 기기 변경으로 간주)

---

## 7. EU: MDR × EU AI Act 교차 적용 (MDCG 2025-6)

EU는 FDA PCCP에 해당하는 단일 제도 없음. 대신 아래 이중 규제 적용:

**MDR 2017/745 측면:**
- 중요 변경(Significant change) → Notified Body 재심사 (MDR Article 54)
- 비중요 변경 → 내부 절차 + 기술문서 갱신
- 변경 중요도 판단: MDCG 2020-3 및 NB 협의

**EU AI Act (2024/1689) 측면 (2026-08-02부터 의료기기에 전면 적용):**
- High-risk AI system (Annex III): 품질관리시스템에 변경관리 절차 포함 의무
- Post-market monitoring: 지속적 성능 모니터링 + 중대 변경 시 재적합성평가
- MDCG 2025-6: MDR 기존 CE 인증이 AI Act conformity assessment 일부로 인정

---

## 8. MFDS: 사전변경관리계획 (디지털의료제품법)

- 디지털의료기기 AI 알고리즘 변경 시, 사전에 변경관리계획 제출·승인
- 승인된 범위 내 변경 → 별도 허가 면제
- 생성형 AI 의료기기 허가·심사 가이드라인 (2025-01-24, 세계 최초 발간): 생성형 AI 특성 반영한 별도 심사 기준 포함

---

## 9. 자사 3개 제품 영향 맵핑

| 제품 | AI-DSF 해당 여부 | FDA PCCP 필요성 | MFDS 사전변경관리 | EU AI Act |
|---|---|---|---|---|
| **X-ray Detector** | 조건부 — 자동 노출 제어·이미지 품질 AI 포함 시 해당 | 510(k) 제출 시 AI 성능 최적화 변경에 PCCP 포함 권고 | AI 기능 포함 시 사전변경관리계획 제출 | High-risk AI 해당 시 AI Act 준수 |
| **Handheld X-ray Source** | 낮음 — HW 중심, SW AI 기능 제한적 | AI-DSF 미포함 시 PCCP 불필요 | 해당 없음 (순수 HW) | AI 기능 없으면 AI Act 불적용 |
| **촬영실 GUI SW** | **높음** — 이미지 처리 AI·자동 이상 감지·CAD 기능 | **PCCP 최우선 적용 대상** — 알고리즘 재학습·성능 갱신 사전 승인 확보 | **사전변경관리계획 필수** | **High-risk AI system** — AI Act 전면 적용 (2026-08-02~) |

### 촬영실 GUI SW PCCP 설계 포인트

1. **Modification Description**: 이미지 분석 AI의 민감도/특이도 기준값 변경, 지원 해상도·이미지 포맷 추가 → 자동(클라우드 배포) 또는 반자동
2. **Modification Protocol**: 임상 데이터 기반 재학습 트리거(성능 저하 임계치), 내부 V&V 체크리스트, 사용자 업데이트 알림 절차
3. **Impact Assessment**: 진단 오류 위험 증가 여부 → ISO 14971 연계 재평가, Rollback 절차 명시

---

## 10. 제출 체크리스트 (PCCP 포함 마케팅 제출 시)

- [ ] PCCP 대상 AI-DSF 범위 명확히 정의
- [ ] 변경 유형 3가지 중 해당 항목 선택 및 서술
- [ ] Automatic/Manual, Global/Local 명시
- [ ] Modification Protocol: 4개 항목 전부 작성
- [ ] Acceptance Criteria 수치화 (예: AUC ≥ 0.92, 민감도 ≥ 90%)
- [ ] Impact Assessment: ISO 14971 Risk Table 연계
- [ ] IFU 라벨링 문구 추가
- [ ] Pre-Sub (Q-Sub) 사전 협의 (FDA 권고)
- [ ] Special 510(k) 경로 배제 확인
- [ ] MFDS 사전변경관리계획 병행 준비 (한국 출시 계획 시)

---

## 11. 참조 문서

| 문서 | 버전/날짜 |
|---|---|
| FDA Final Guidance: PCCP for AI-Enabled DSF | 2024-12-04 (Updated 2025-08) |
| Federal Register Notice (Docket FDA-2022-D-2628) | 2024-12-04 |
| MDCG 2025-6: FAQ MDR/IVDR × AI Act | 2025-06 |
| MFDS 생성형 AI 의료기기 허가·심사 가이드라인 | 2025-01-24 |
| EU AI Act (Regulation EU 2024/1689) | 발효 2024-08-01, 의료기기 전면 적용 2026-08-02 |
| ISO 14971:2019 Risk Management | 2019 |
| IEC 62304:2006+A1:2015 SW Lifecycle | 2015 |
