# RA KB 자동보강 BACKLOG (우선순위 큐)

> 매 회차 스케줄 러닝 시작 시 최상단 미완료 항목 선택.
> 완료 항목은 `[x]` + `done-YYYY-MM-DD` 태그 처리 후 유지 (이력 추적).
> 큰 주제는 세분화하여 하위 항목으로 재등록.
> 최초 작성: 2026-04-22

## EP(Effort Point) 기준
| 등급 | EP | 기준 |
|---|---|---|
| `[EP:1]` S | 1 | 체크리스트·목록·단순 비교표. 리서치 범위 단일 지역 or 단일 표준 |
| `[EP:2]` M | 2 | 단일 지역 심화 가이드 또는 단일 제품 템플릿 |
| `[EP:3]` L | 3 | 3개 지역 비교 + 3개 제품 맵핑 동반 대형 문서 |

**회차 예산**: 1회차(03:00) 3 EP / 2회차(19:30) 3 EP / CATCHUP 회차 4 EP
**처리 원칙**: 예산 소진 시 중단 → carryover. 예산 내 복수 처리 가능.

---

## [P1] 고우선 — 기초 골격 완성

### 1. 규제 지역별 심화
- [x] FDA eSTAR 섹션별 작성 가이드: Device Description / Indications for Use `[EP:3]` `done-2026-04-22 (#2 push)`
- [x] FDA eSTAR 섹션별 작성 가이드: Substantial Equivalence 비교표 작성법 `[EP:3]` `done-2026-04-22 (#2 push)`
- [x] FDA eSTAR 섹션별 작성 가이드: Performance Testing / Bench Test `[EP:3]` `done-2026-04-24 (#3)`
- [x] FDA eSTAR 섹션별 작성 가이드: Cybersecurity Section (524B 기반) `[EP:3]` `done-2026-04-29 (#4)`
- [x] FDA eSTAR 섹션별 작성 가이드: Software Section (62304 기반) `[EP:3]` `done-2026-04-30 (#5)`
- [x] FDA eSTAR 섹션별 작성 가이드: Labeling (IFU, Form 3881) `[EP:2]` `done-2026-04-30 (#6)`
- [x] FDA Pre-Submission (Q-Sub) 작성 가이드·샘플 질문 `[EP:2]` `done-2026-05-01 (#7)`
- [x] MFDS 기술문서 섹션별 작성 가이드 (사용목적·작용원리·성능·안전성) `[EP:3]` `done-2026-05-01 (#8)`
- [x] MFDS 디지털의료제품법 하위 고시 추적 리스트 `[EP:1]` `done-2026-05-01 (#9)`
- [x] MFDS 디지털의료기기 6종 가이드라인 요약 (2025-05-07) `[EP:2]` `done-2026-05-02 (#10)`
- [x] MDR Annex II Technical Documentation 섹션별 템플릿 `[EP:3]` `done-2026-05-02 (#11)`
- [x] MDR Annex III PMS TD 템플릿 `[EP:2]` `done-2026-05-03 (#12)`
- [x] MDR Annex I GSPR 체크리스트 (전항 맵핑) `[EP:2]` `done-2026-05-03 (#12)`
- [x] MDR Declaration of Conformity (DoC) 양식·작성 지침 `[EP:1]` `done-2026-05-03 (#13)`
- [x] MDR Article 15 PRRC 자격 요건·역할 정리 `[EP:1]` `done-2026-05-03 (#13)`

### 2. 제품별 기술파일 뼈대
- [x] X-ray Detector DHF 목차·각 문서 템플릿 `[EP:2]` `done-2026-05-03 (#13)`
- [x] X-ray Detector 성능 시험 항목 매트릭스 (IEC 62220-1-1 DQE 등) `[EP:2]` `done-2026-05-04 (#14)`
- [x] Handheld X-ray Source DHF 목차·각 문서 템플릿 `[EP:2]` `done-2026-05-04 (#15)`
- [x] Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트 `[EP:1]` `done-2026-05-04 (#16)`
- [ ] 촬영실 GUI SW 문서 세트 (IEC 62304: SRS, SDS, SUP, SVP, 설계 등) `[EP:3]`
- [ ] 3개 제품 공통 Risk Management File (ISO 14971:2019) 템플릿 `[EP:3]`
- [ ] 3개 제품 공통 Usability Engineering File (IEC 62366-1:2015+AMD1:2020) 템플릿 `[EP:2]`
- [ ] 3개 제품 공통 Clinical Evaluation Plan/Report (MDR) 템플릿 `[EP:2]`
- [ ] 3개 제품 공통 Biological Evaluation (ISO 10993-1) 적용 판단 `[EP:2]`

### 3. 시험·표준 실무
- [ ] IEC 60601-1:2005+A1+A2 (Ed 3.2) 시험 항목 매트릭스 `[EP:3]`
- [ ] IEC 60601-1-2:2014+A1:2020 EMC 시험 항목·Pass Criteria `[EP:2]`
- [ ] IEC 60601-1-3:2008+A1+A2 방사선 방호 시험 항목 `[EP:2]`
- [ ] IEC 60601-2-28:2017 X-ray Source 시험 항목 `[EP:2]`
- [ ] IEC 60601-2-54:2022 촬영·투시 시험 항목 `[EP:2]`
- [ ] IEC 62220-1-1:2015 DQE 측정 절차 `[EP:2]`
- [ ] IEC 62304:2006+A1:2015 SW 수명주기 산출물 매핑 `[EP:3]`
- [ ] IEC 62133-2 배터리 안전 (Handheld 적용 시) `[EP:1]`

## [P2] 중우선 — 살 붙이기

### 4. QMS
- [ ] ISO 13485:2016 절차서 목록 (섹션 4~8)·뼈대 `[EP:2]`
- [ ] KGMP vs QMSR vs ISO 13485 차이·통합 전략 (3개 지역 동시 적합) `[EP:3]`
- [ ] Design Controls 절차서 템플릿 (7.3) `[EP:2]`
- [ ] Document Control / Record Control 절차서 템플릿 `[EP:1]`
- [ ] CAPA 절차서 템플릿 `[EP:1]`
- [ ] Internal Audit 절차서 템플릿 `[EP:1]`
- [ ] Management Review 절차서 템플릿 `[EP:1]`
- [ ] Supplier Control 절차서 템플릿 `[EP:1]`

### 5. 사이버보안·AI
- [ ] FDA Threat Model 작성 가이드·STRIDE 기반 샘플 `[EP:2]`
- [ ] SBOM 생성 실무 (SPDX vs CycloneDX 비교·도구) `[EP:2]`
- [ ] PCCP 작성 가이드 (AI-enabled device, 2024-12-03 Final) `[EP:2]`
- [ ] MDCG 2019-16 Rev.1 Cybersecurity 대응 체크리스트 `[EP:1]`
- [ ] IEC 81001-5-1:2021 수명주기 활동 매핑 `[EP:2]`
- [ ] MFDS 사이버보안 가이드라인 (2025.01 개정) 대응 `[EP:2]`

### 6. 라벨·IFU
- [ ] IFU 필수 요소 3개 지역 비교표 `[EP:2]`
- [ ] ISO 15223-1:2021 심볼 적용 가이드 `[EP:1]`
- [ ] UDI 구조 3개 지역 비교 (GUDID / Eudamed / UDI포털) `[EP:1]`
- [ ] 디지털의료기기 표시기재 가이드라인 (MFDS, 2025.01) 대응 `[EP:1]`

### 7. 임상
- [ ] Clinical Evaluation (MDR) 심화 - 동등성·충분성 기준 `[EP:3]`
- [ ] FDA Clinical Data 필요 판단 기준 (510(k) vs De Novo vs PMA) `[EP:2]`
- [ ] MFDS 임상시험 계획 승인 절차 `[EP:2]`
- [ ] MDCG 2020-5 (Equivalence) / 2020-6 (Legacy) / 2020-7 (PMCF Plan) / 2020-8 (PMCF Report) 요약 `[EP:2]`

## [P3] 실전 대응

### 8. 심사 Q&A
- [ ] FDA Additional Information (AI) 대응 전략·샘플 답변 `[EP:2]`
- [ ] FDA RTA (Refuse to Accept) 회피 체크리스트 `[EP:1]`
- [ ] MFDS 보완자료 대응 전략·샘플 `[EP:2]`
- [ ] NB Deficiency Letter 대응 전략·샘플 `[EP:2]`
- [ ] 3개 지역 공통 빈번 지적사항 Top 20 `[EP:2]`

### 9. Post-Market
- [ ] PMS Plan 템플릿 (MDR Annex III) `[EP:2]`
- [ ] PSUR 템플릿 (MDR) `[EP:2]`
- [ ] FDA MDR (Medical Device Reporting) 21 CFR 803 절차 `[EP:2]`
- [ ] Vigilance 실무 (MDR) - Serious Incident 판정 기준 `[EP:1]`
- [ ] FSCA / FSN 절차·템플릿 `[EP:1]`
- [ ] MFDS 이상사례·부작용 보고 절차 `[EP:1]`

### 10. 전문가 교육 Week 2~12
- [ ] Week 2: 국내 MFDS 체계 상세 (커리큘럼·실습·평가) `[EP:2]`
- [ ] Week 3: FDA 510(k) 상세 `[EP:2]`
- [ ] Week 4: MDR 상세 `[EP:2]`
- [ ] Week 5: 국제표준 (ISO 13485 / 14971 / 62366) `[EP:2]`
- [ ] Week 6: X-ray 특화 표준 (60601 시리즈·62220) `[EP:2]`
- [ ] Week 7: 기술문서 작성 실습 (STED) `[EP:3]`
- [ ] Week 8: 사이버보안·AI (SBOM·Threat Model·PCCP) `[EP:2]`
- [ ] Week 9: 임상평가 `[EP:2]`
- [ ] Week 10: QMS 심사 대응 `[EP:2]`
- [ ] Week 11: 심사 Q&A 시뮬레이션 `[EP:2]`
- [ ] Week 12: 종합 실습·평가 `[EP:3]`

## [P4] 고도화

- [ ] 과제 Gate Review 체크리스트 (DHF → STED → 제출 → AI 대응 → 승인) `[EP:2]`
- [ ] 원가·일정 예측 모델 (지역·등급·시험비) `[EP:3]`
- [ ] 글로벌 동시 제출 전략 (MDSAP 활용) `[EP:2]`
- [ ] 예상 Q&A DB (3개 지역·제품별) `[EP:3]`
- [ ] 규제 변경 모니터링 자동화 (법령·가이던스 RSS) `[EP:2]`
- [ ] 경쟁 제품 510(k) Summary 분석 DB `[EP:2]`
- [ ] EUDAMED 모듈별 대응 로드맵 `[EP:2]`

---

## EP 집계

| 구분 | 총 EP | 완료 EP | 잔여 EP |
|---|---|---|---|
| P1 | 57 | 41 | 16 |
| P2 | 32 | 0 | 32 |
| P3 | 33 | 0 | 33 |
| P4 | 16 | 0 | 16 |
| **합계** | **138** | **41** | **97** |

> 잔여 EP 97 ÷ 6 EP/일(정상 가동) = 약 16일 → 예상 완료: 2026-05-20

---

## 완료 이력

- #2 (2026-04-22) FDA eSTAR Device Description / IFU `[EP:3]`
- #2 (2026-04-22) FDA eSTAR Substantial Equivalence `[EP:3]`
- #3 (2026-04-24) FDA eSTAR Performance Testing `[EP:3]`
- #4 (2026-04-29) FDA eSTAR Cybersecurity `[EP:3]`
- #5 (2026-04-30) FDA eSTAR Software Section `[EP:3]`
- #6 (2026-04-30) FDA eSTAR Labeling (IFU, Form 3881) `[EP:2]`
- #7 (2026-05-01) FDA Pre-Submission (Q-Sub) 가이드·샘플 질문 `[EP:2]`
- #8 (2026-05-01) MFDS 기술문서 섹션별 작성가이드 (사용목적·작용원리·성능·안전성) `[EP:3]`
- #9 (2026-05-01) MFDS 디지털의료제품법 하위 고시 추적 리스트 `[EP:1]`
- #10 (2026-05-02) MFDS 디지털의료기기 관련 가이드라인 6종 요약 (2025-05-07) `[EP:2]`
- #11 (2026-05-02) MDR Annex II Technical Documentation 섹션별 템플릿 `[EP:3]`
- #12 (2026-05-03) MDR Annex III PMS TD 템플릿 `[EP:2]`
- #12 (2026-05-03) MDR Annex I GSPR 체크리스트 (전항 맵핑) `[EP:2]`
- #13 (2026-05-03) MDR Declaration of Conformity (DoC) 양식·작성 지침 `[EP:1]`
- #13 (2026-05-03) MDR Article 15 PRRC 자격 요건·역할 정리 `[EP:1]`
- #13 (2026-05-03) X-ray Detector DHF 목차·각 문서 템플릿 `[EP:2]`
- #14 (2026-05-04) X-ray Detector 성능 시험 항목 매트릭스 (IEC 62220-1-1 DQE 등) `[EP:2]`
- #15 (2026-05-04) Handheld X-ray Source DHF 목차·각 문서 템플릿 `[EP:2]`
- #16 (2026-05-04) Handheld X-ray Source 21 CFR 1020.30 적합성 체크리스트 `[EP:1]`

