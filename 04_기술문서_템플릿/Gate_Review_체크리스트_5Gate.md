> 최종 갱신: 2026-06-02 (자동보강 #81)
> 근거: https://www.fda.gov/medical-devices/premarket-notification-510k/510k-submission-process | https://innolitics.com/articles/the-ultimate-510k-checklist/ | https://www.mdsap.global/ | ISO 13485:2016 §7.3 | MDCG 2019-9 Rev.1 | MFDS 의료기기 기술문서 작성 가이드라인

# 과제 Gate Review 체크리스트 — 5 Gate 체계

> DHF 완성 → STED/기술문서 완성 → 제출 패키지 준비 → AI/보완 대응 → 승인·등록
> 3개 지역(MFDS·FDA·MDR) × 3개 제품(X-ray Detector·Handheld Source·GUI SW) 적용

---

## 개요

| Gate | 명칭 | Go/No-Go 주체 | ISO 13485 근거 |
|---|---|---|---|
| **Gate 0** | DHF Completeness | RA + R&D Manager | §7.3.5 Design Review |
| **Gate 1** | Technical Documentation (STED) | RA Lead | §7.3.6 Design Verification |
| **Gate 2** | Pre-Submission Package | RA + QA | §7.3.7 Design Validation |
| **Gate 3** | Deficiency / AI Response | RA + Legal | §8.5.2 CAPA |
| **Gate 4** | Approval / Registration | RA + Management | §7.3.8 Design Transfer |

---

## Gate 0 — DHF 완성 검토

> 목적: 설계 동결(Design Freeze) 전 DHF 문서 완전성 확인

### 공통 체크리스트

| 번호 | 항목 | 담당 | 완료 |
|---|---|---|---|
| G0-01 | Device Description (IFU 초안 포함) 완성 | R&D | ☐ |
| G0-02 | Intended Use / Indications for Use 확정 | RA | ☐ |
| G0-03 | Risk Management File (ISO 14971) — Hazard 식별·RPN 완성 | QA | ☐ |
| G0-04 | Usability Engineering File (IEC 62366-1) — 형성적 평가 완료 | R&D | ☐ |
| G0-05 | Electrical Safety (IEC 60601-1) 시험 계획 확정 | QA | ☐ |
| G0-06 | EMC 시험 계획 (IEC 60601-1-2) 확정 | QA | ☐ |
| G0-07 | Cybersecurity 요건 분석 완료 (IEC 81001-5-1) | SW | ☐ |
| G0-08 | 생물학적 평가 (ISO 10993-1) 접촉 분류 완료 | QA | ☐ |
| G0-09 | SW 안전 등급(IEC 62304 Class) 판정 완료 | SW | ☐ |
| G0-10 | 설계 검증·유효성확인(V&V) 계획 승인 | RA+QA | ☐ |

### 지역별 추가 항목

| 지역 | Gate 0 추가 요건 |
|---|---|
| **MFDS** | 제품 등급 분류 확인 (의료기기법 §32): 2등급=인증, 3·4등급=허가. 제조업·수입업 허가 유효 여부 확인 |
| **FDA** | FDA Product Code / 기존 Predicate Device 선정 완료. 21 CFR 1020.30 방사선 기준 적용 여부 결정 |
| **MDR** | MDR 2017/745 Annex VIII Rule 적용 → 등급(IIa/IIb/III) 확정. NB 선정 착수 여부 확인 |

### Gate 0 Exit 기준 (Go 조건)

- [ ] DHF 문서 G0-01~G0-10 항목 전부 완료
- [ ] Risk Management 1차 검토 회의 완료 (회의록 보존)
- [ ] Design Freeze 승인서(서명) 발행
- [ ] 설계 동결 이후 변경 절차(ECO) 정의 완료

---

## Gate 1 — 기술문서(STED) 완성 검토

> 목적: 제출 전 기술문서 완전성·정합성 최종 확인

### 공통 체크리스트

| 번호 | 항목 | 담당 | 완료 |
|---|---|---|---|
| G1-01 | Device Description 최종본 | RA | ☐ |
| G1-02 | Substantial Equivalence / 동등 비교 매트릭스 작성 | RA | ☐ |
| G1-03 | Performance Testing 결과 보고서 (성능 기준 달성) | QA | ☐ |
| G1-04 | Risk Management Report (ISO 14971 §9) — 잔류위험 수용 | QA | ☐ |
| G1-05 | Usability Engineering Report (IEC 62366-1) — 총괄평가 완료 | R&D | ☐ |
| G1-06 | SW 수명주기 산출물 (IEC 62304): SRS·SDS·SUP·SVP 완성 | SW | ☐ |
| G1-07 | Cybersecurity 문서: Threat Model·SBOM·SPDF 완성 | SW | ☐ |
| G1-08 | Electrical Safety 시험 보고서 (IEC 60601-1 통과) | QA | ☐ |
| G1-09 | EMC 시험 보고서 (IEC 60601-1-2 통과) | QA | ☐ |
| G1-10 | Labeling (IFU, 라벨) 최종본 — 3지역 요건 충족 | RA | ☐ |
| G1-11 | Clinical Evaluation Report (CER) 또는 임상 데이터 판단 문서 | RA | ☐ |
| G1-12 | 문서 버전 관리 체계 확인 (모든 문서 Document Control 등록) | QA | ☐ |

### 지역별 STED 구조 비교

| 섹션 | MFDS 기술문서 | FDA eSTAR | MDR Annex II |
|---|---|---|---|
| 제품 개요 | 사용목적·작용원리 | Device Description | §1 제품 설명 |
| 성능 | 성능·안전성 데이터 | Performance Testing | §6 성능 데이터 |
| 위험관리 | 위험관리 보고서 | Risk Management | §3 GSPR |
| SW | SW 문서 | SW 섹션 (62304) | §4 SW |
| 임상 | 임상시험/문헌 | Clinical Data | §6.1 Clinical Evidence |
| 라벨 | 표시기재 | Labeling | §2 라벨 |

### 지역별 추가 항목

| 지역 | Gate 1 추가 요건 |
|---|---|
| **MFDS** | GSPR 유사 국내 안전·성능 기준 충족 여부 확인. 디지털의료기기 해당 시 SW 검증 추가 서류 준비 |
| **FDA** | eSTAR 섹션 구조 준수 확인. RTA(Refuse to Accept) 체크리스트 자가 점검 완료 |
| **MDR** | GSPR Annex I 전항 맵핑 완료. NB에 Preliminary Review 의뢰 여부 결정 |

### Gate 1 Exit 기준

- [ ] G1-01~G1-12 전항목 완료
- [ ] 내부 기술 검토 회의 완료 및 서명 승인
- [ ] STED 문서 패키지 최종 버전 확정
- [ ] 3지역 중 먼저 제출할 지역 확정 (제출 순서 전략 문서 참조)

---

## Gate 2 — 제출 패키지 준비 검토

> 목적: 제출 직전 행정·양식·서류 완전성 최종 확인

### MFDS 제출 패키지 체크리스트

| 번호 | 항목 | 완료 |
|---|---|---|
| G2-M01 | 의료기기 허가·인증·신고 신청서 (전자민원 eTrade) | ☐ |
| G2-M02 | 기술문서 (규격: 의료기기법 §21 고시 준수) | ☐ |
| G2-M03 | 임상시험 성적서 또는 국외 인허가 증명서 | ☐ |
| G2-M04 | GMP 적합 인정서 (국내 제조 시 해당) | ☐ |
| G2-M05 | 수입 시: 제조원 자유판매증명서(CFS) + 제조원 GMP 증명 | ☐ |
| G2-M06 | 표시기재 최종 확인 (고시 제2024-77호) | ☐ |
| G2-M07 | UDI 사전 신청 (UDI포털) | ☐ |

### FDA 제출 패키지 체크리스트

| 번호 | 항목 | 완료 |
|---|---|---|
| G2-F01 | eSTAR 모든 섹션 완성 (A~K 또는 해당 섹션) | ☐ |
| G2-F02 | Form FDA 3514 (Cover Sheet) | ☐ |
| G2-F03 | Form FDA 3881 (Indications for Use) | ☐ |
| G2-F04 | 510(k) Truthful and Accuracy Statement | ☐ |
| G2-F05 | FDA Electronic Submission Gateway (ESG) 계정 확인 | ☐ |
| G2-F06 | Cybersecurity Section (Section 524B 해당 여부 판단) | ☐ |
| G2-F07 | GUDID 사전 등록 계획 수립 | ☐ |
| G2-F08 | User Fee 납부 계획 (MDUFA V: 2024-2028) | ☐ |

### MDR 제출 패키지 체크리스트

| 번호 | 항목 | 완료 |
|---|---|---|
| G2-E01 | Technical Documentation (Annex II) 최종본 | ☐ |
| G2-E02 | PMS Documentation (Annex III) 초안 | ☐ |
| G2-E03 | EU 대리인 (EU-REP) 지정 및 계약 완료 | ☐ |
| G2-E04 | PRRC (Art.15) 지정 완료 | ☐ |
| G2-E05 | NB 선정 및 신청서 제출 (Formal Application) | ☐ |
| G2-E06 | Declaration of Conformity (DoC) 초안 준비 | ☐ |
| G2-E07 | EUDAMED 제조자 등록 (Actor Registration) | ☐ |

### Gate 2 Exit 기준

- [ ] 해당 지역 제출 패키지 전항목 완료
- [ ] 법무 검토 완료 (계약서·대리인·수수료)
- [ ] 제출일 확정 및 내부 승인
- [ ] 제출 후 추적 담당자 지정

---

## Gate 3 — AI/보완 대응 검토

> 목적: 규제 당국의 추가 요청(AI·보완) 수령 후 대응 방향 확정

### 공통 대응 원칙

1. **수령 즉시 기한 계산**: 지역별 법정 응답 기한 확인
2. **핵심 지적사항 분류**: 사실 오류 / 추가 데이터 필요 / 해석 차이
3. **대응 책임자 지정**: RA Lead + 관련 엔지니어
4. **내부 검토 일정**: 기한 D-7 이전 대응안 완성 목표

### 지역별 대응 기한 및 형식

| 지역 | 요청 유형 | 법정 응답 기한 | 형식 |
|---|---|---|---|
| **MFDS** | 보완자료 요구 | 통상 60일 (연장 가능) | 보완서류 전자 제출 |
| **FDA** | Additional Information (AI) | 180일 (510(k) 심사 클락 정지) | eSTAR 업데이트 또는 별도 회신 |
| **FDA** | Interactive Review | 없음 (비공식) | 전화·이메일·미팅 |
| **MDR NB** | Deficiency Letter | NB 계약 조건 (통상 30~60일) | 문서 보완 + Cover Letter |

### Gate 3 체크리스트

| 번호 | 항목 | 완료 |
|---|---|---|
| G3-01 | 지적사항 전항목 번호·분류 목록화 | ☐ |
| G3-02 | 각 지적사항 담당자 배정 완료 | ☐ |
| G3-03 | 추가 시험 필요 여부 판단 (필요 시 긴급 시험 착수) | ☐ |
| G3-04 | 대응 초안 완성 및 내부 검토 | ☐ |
| G3-05 | 법무·경영진 최종 승인 | ☐ |
| G3-06 | 응답 제출 및 수령 확인 | ☐ |
| G3-07 | 이슈 트래커 업데이트 (지적사항별 완료 체크) | ☐ |
| G3-08 | [추가 보완 발생 시] 재대응 절차 재개 | ☐ |

### 지적 유형별 대응 전략

| 유형 | 대응 방향 |
|---|---|
| 데이터 부재 | 추가 시험 또는 문헌 데이터 제출. 동등 비교 활용 가능 시 적극 활용 |
| 해석 차이 | Guidance 원문 인용 + 사실 기반 논증. 이전 유사 승인 사례(predicate) 제시 |
| 서식 오류 | 즉시 수정 제출. 원인 + 재발 방지 언급 |
| 안전성 우려 | 위험관리 파일 보강 + 추가 시험 검토. 필요 시 설계 변경 검토 |

### Gate 3 Exit 기준

- [ ] 모든 지적사항 공식 대응 완료
- [ ] 추가 보완 없음 확인 (규제 당국 수락 통보)
- [ ] 대응 서류 DHF/기술문서 파일에 반영 갱신

---

## Gate 4 — 승인·등록 확인 검토

> 목적: 인허가 승인 후 시판 전 최종 준비 사항 확인

### 공통 체크리스트

| 번호 | 항목 | 완료 |
|---|---|---|
| G4-01 | 인허가 증명서(허가증·510(k) clearance·CE DoC) 원본 보관 | RA | ☐ |
| G4-02 | 승인된 Indications for Use / 사용 목적 최종 확인 | RA | ☐ |
| G4-03 | 라벨·IFU 최종본 승인 반영 확인 | RA | ☐ |
| G4-04 | UDI 등록 완료 (GUDID/EUDAMED/UDI포털) | RA | ☐ |
| G4-05 | PMS Plan 가동 (PMS 담당자 지정, 데이터 수집 시작) | QA | ☐ |
| G4-06 | 이상사례 보고 체계(MDR/보고) 가동 확인 | QA | ☐ |
| G4-07 | QMS 변경사항 반영 (DHF 최종본 잠금) | QA | ☐ |
| G4-08 | 제조·출하 기준서 최종 승인 | 제조 | ☐ |
| G4-09 | 교육 기록 (영업·AS 팀) — 신제품 교육 완료 | HR | ☐ |
| G4-10 | 규제 변경 모니터링 일정 설정 (연간) | RA | ☐ |

### 지역별 승인 후 의무사항

| 지역 | 승인 후 의무 |
|---|---|
| **MFDS** | 변경허가/변경인증/변경신고 기준 파악. 연차 GMP 유지. 이상사례 보고 의무 시작 |
| **FDA** | Annual Report (PMA) 또는 변경 510(k) 기준 파악. MDR 21 CFR 803 보고 체계 가동. GUDID 유지·갱신 |
| **MDR** | PSUR 갱신 주기 확인 (Class IIa: 2년, IIb·III: 1년). NB 정기 심사 일정 조율. EUDAMED 데이터 유지 |

### Gate 4 Exit 기준

- [ ] G4-01~G4-10 전항목 완료
- [ ] 경영진 시판 승인 의사결정
- [ ] 인허가 이력 파일(RA Master File) 정리 완료

---

## 3개 제품 × Gate별 주요 위험 포인트

| Gate | X-ray Detector | Handheld X-ray Source | GUI SW |
|---|---|---|---|
| G0 | IEC 62220-1-1 DQE 시험 범위 확정 | 방사선 안전 등급·21 CFR 1020.30 적용 판정 | SW Safety Class C 판정·IEC 62304 전체 적용 |
| G1 | DQE 측정 결과 기준치 충족 여부 | Leakage 시험 결과·선량 클레임 근거 | SBOM·Threat Model·PCCP 완성도 |
| G2 | GUDID DI 사전 신청 | 21 CFR 1020.30 compliance 선언 | eSTAR SW 섹션 (Basic→Enhanced 전환 판단) |
| G3 | 성능 데이터 추가 요청 대응 | 방사선 안전 지적 → 위험관리 보강 | 사이버보안 지적 빈번 (SBOM·PCCP) |
| G4 | PMS — DQE drift 모니터링 계획 | FSCA 절차·방사선 사고 보고 체계 | 소프트웨어 변경 관리(PCCP/OTA) 체계 |

---

## 게이트 통과 기록 서식 (샘플)

```
[Gate N Review Record]
제품명:
검토 일자:
Gate 명칭:
참석자 (서명):
  - RA Lead:
  - QA Manager:
  - R&D Lead:
검토 결과: ☐ GO  ☐ NO-GO  ☐ 조건부 GO
조건 (조건부 GO 시):
NO-GO 사유 및 재검토 일정:
승인 서명 (RA Director):
```

---

*참조 문서*
- [ISO 13485:2016 §7.3 설계 및 개발](../01_규제지식베이스/국제표준_IEC_ISO/ISO13485_2016_절차서_목록_뼈대.md)
- [SOP_Design_Controls_ISO13485_7.3_템플릿](SOP_Design_Controls_ISO13485_7.3_템플릿.md)
- [3지역_공통_빈번지적사항_Top20](../01_규제지식베이스/3지역_공통_빈번지적사항_Top20.md)
- [FDA_AI_Additional_Information_대응_전략](../01_규제지식베이스/미국_FDA/FDA_AI_Additional_Information_대응_전략.md)
