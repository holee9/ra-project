> 최종 갱신: 2026-05-13 (자동보강 #35)
> 근거: https://www.iso.org/standard/59752.html | https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-820 | https://eur-lex.europa.eu/legal-content/EN/TXT/?uri=CELEX:32017R0745

# SOP – CAPA (Corrective & Preventive Action) 절차서 템플릿

**문서 번호**: SOP-QMS-008  
**버전**: 1.0  
**기준 조항**: ISO 13485:2016 §8.5.2 (시정조치) / §8.5.3 (예방조치)  
**작성일**: YYYY-MM-DD  
**검토자**: RA Manager  
**승인자**: QMS 대표자  

---

## 1. 목적 및 범위

### 1.1 목적
제품 부적합, 고객 불만, 내부감사 지적사항 등에 대한 근본 원인을 식별하고 시정조치(CA)·예방조치(PA)를 체계적으로 실행하여 품질시스템의 지속적 개선을 확보한다.

### 1.2 적용 범위
- X-ray Detector (FPD / CCD 기반)
- Handheld X-ray Source
- 촬영실 GUI SW
- 상기 제품의 설계, 제조, 공급망, 출시 후 관리 전 단계

### 1.3 용어 정의

| 용어 | 정의 |
|---|---|
| Nonconformity (NC) | 요구사항을 충족하지 못하는 상태 (제품·프로세스·시스템) |
| Corrective Action (CA) | 검출된 NC 원인을 제거하여 재발 방지하는 조치 |
| Preventive Action (PA) | 잠재적 NC 원인을 제거하여 발생 예방하는 조치 |
| Root Cause Analysis (RCA) | 근본 원인 식별 기법 (5-Why, Fishbone, FTA 등) |
| Effectiveness Check | 조치 완료 후 실제 효과 검증 활동 |

---

## 2. 책임과 역할

| 역할 | 책임 |
|---|---|
| QMS 대표자 | CAPA 시스템 총괄, 자원 배분 승인 |
| RA Manager | CAPA 개시 결정, 완료·효과성 검토 최종 승인 |
| 부서장 | 소관 CAPA 조치 실행 책임 |
| 품질팀 | CAPA 레코드 관리, 추적, 통계 분석 |
| 담당자 | 원인 분석, 조치 계획 수립·실행 |

---

## 3. 절차 — 시정조치 (ISO 13485 §8.5.2)

### 3.1 CAPA 개시 트리거

다음 소스로부터 CAPA가 개시된다:
- 고객 불만 (Complaint)
- 제품·공정 부적합 (Internal NC Report)
- 내부감사 지적사항
- 외부감사 (규제기관·NB) 지적사항
- 반품·이상사례 분석
- 수율·공정 지표 이상
- 규제 보고 (MDR/Vigilance/MFDS 이상사례)

### 3.2 CA 실행 Flow

```
[NC 확인] → [CAPA 레코드 개시] → [즉각 봉쇄조치(Containment)]
    → [근본 원인 분석(RCA)] → [CA 계획 수립] → [CA 실행]
    → [효과성 검증] → [레코드 종료] → [경영검토 입력]
```

### 3.3 심각도 분류 및 처리 기한

| 등급 | 기준 | 개시 기한 | 완료 기한 |
|---|---|---|---|
| Critical | 환자 안전 위해 가능, 규제 위반, Class I Recall 우려 | 24시간 | 30일 |
| Major | 제품 성능 실패, 반복 NC, NB/규제기관 지적 | 3 영업일 | 45일 |
| Minor | 경미한 프로세스 일탈, 시스템 개선 필요 | 5 영업일 | 90일 |

### 3.4 근본 원인 분석 (RCA)

| 기법 | 적용 상황 |
|---|---|
| 5-Why | 단순·단일 원인 NC |
| Fishbone (Ishikawa) | 복합 요인 NC (Man/Machine/Method/Material/Environment) |
| FTA (Fault Tree Analysis) | 안전·Critical 부적합 |
| FMEA 역추적 | 설계·공정 연계 NC |

### 3.5 CA 계획 필수 항목

```
CAPA ID: CA-YYYY-NNN
개시일: YYYY-MM-DD
NC 출처: [소스 문서 번호]
NC 설명: [구체 기술]
봉쇄조치: [즉각 실행 내용·일시]
근본 원인: [RCA 결과 — 사실 기반]
CA 계획:
  - 조치 내용:
  - 담당자:
  - 완료 예정일:
효과성 검증 계획:
  - 검증 방법:
  - 검증 기준 (Accept Criteria):
  - 검증 예정일:
```

### 3.6 효과성 검증 (Effectiveness Check)

- CA 완료 후 최소 30~90일 모니터링 (심각도에 따라 조정)
- 동일·유사 NC 재발 여부 확인
- 정량 지표 설정 필수 (예: "동일 NC 0건/90일")
- 효과성 미달 시 CAPA 재개시

---

## 4. 절차 — 예방조치 (ISO 13485 §8.5.3)

### 4.1 PA 트리거 소스

- 경향 분석 (Trend Analysis): 수율·불량률·반품률 추세
- 위험관리 프로세스 (ISO 14971 Risk Assessment)
- 고객 피드백 정성 분석
- 업계·규제 동향 (가이던스 개정·경쟁사 리콜 정보)
- 내부 제안

### 4.2 PA Flow

```
[잠재 NC 식별] → [PA 레코드 개시] → [잠재 원인 분석]
    → [PA 계획 수립] → [PA 실행] → [효과성 검증] → [레코드 종료]
```

> 구분 원칙: CA = 실제 발생 NC 대응. PA = 아직 발생하지 않은 잠재 NC 예방.

---

## 5. 기록·문서 요건

| 기록 | 보존 기간 | 형식 |
|---|---|---|
| CAPA 레코드 (개시·RCA·조치·효과성) | 제품 수명 + 15년 | CAPA-YYYY-NNN 또는 QMS 전산 |
| 봉쇄조치 기록 | 동일 | CAPA 레코드 내 포함 |
| 효과성 검증 보고서 | 동일 | 별도 첨부 또는 레코드 내 기술 |
| CAPA 월별 통계 | 5년 | 경영검토 입력 자료 |

---

## 6. 3개 지역 비교 매트릭스

| 요건 항목 | ISO 13485 §8.5.2/8.5.3 | FDA QMSR 21 CFR 820.100 | KGMP 고시 2024-88호 | MDR Annex IX §3.2 |
|---|---|---|---|---|
| 근거 조항 | §8.5.2 CA / §8.5.3 PA | §820.100 CAPA | §8.5.2/8.5.3 | Annex IX §3.2 항목(f) |
| CA·PA 절차 수립 의무 | 필수 | 필수 | 필수 | QMS 요건으로 포함 |
| 소스 분석 대상 | 공정·품질기록·서비스·불만 | 공정·감사·반품·불만·서비스 포함 | 동일 | 이상사례·PMS·Vigilance 포함 |
| 근본 원인 분석 명시 | NC 원인 결정 요구 | 원인 식별 요구 | 동일 | 동일 |
| 효과성 검증 명시 | 조치 효과 검토·기록 요구 | 정보 배포·효과 검증 요구 | 동일 | 동일 |
| 경영검토 보고 의무 | §5.6.2 입력 의무 | 명시 없음 (권고) | §5.6.2 의무 | Annex IX §3.1 의무 |
| MFDS 추가 요건 | — | — | 이상사례·식약처 보고 연계 | — |
| FDA 추가 요건 | — | 21 CFR 803 MDR 연계 | — | — |
| NB 심사 포인트 | — | — | — | CAPA 트렌드·효과성 증거 요구 |

---

## 7. 자사 3개 제품 영향 맵핑

| 제품 | 주요 NC 소스 | 특이 고려사항 |
|---|---|---|
| X-ray Detector | DQE/MTF 성능 이탈, 픽셀 결함, 센서 드리프트 | IEC 62220-1-1 측정 프로토콜 연계; 방사선 측정 재현성·불확도 분석 필수 |
| Handheld X-ray Source | 누설방사선 초과, 배터리 이상, 방아쇠 잠금 고장 | 21 CFR 1020.30 위반 시 FDA MDR 21 CFR 803 보고 연계 |
| 촬영실 GUI SW | SW 오류·크래시, 사용성 결함, DICOM 전송 실패 | IEC 62304 §9 Problem Resolution과 CAPA 연계; Anomaly → CAPA 전환 기준 정의 필요 |

---

## 8. CAPA 레코드 양식 (빈 템플릿)

```
CAPA RECORD
────────────────────────────────────────
CAPA ID:       CA/PA-YYYY-NNN
유형:          □ Corrective  □ Preventive
심각도:        □ Critical  □ Major  □ Minor
개시일:
소관 부서:
개시자:

1. NC / 잠재 NC 설명
   (구체적 사실 — 언제, 어디서, 무엇이)

2. 봉쇄조치 (CA 전용)
   조치 내용:
   실행일:
   실행자:

3. 근본 원인 분석 (RCA)
   사용 기법: □ 5-Why  □ Fishbone  □ FTA  □ 기타:
   분석 결과:

4. 조치 계획
   항목 | 조치 내용 | 담당자 | 완료 예정일

5. 조치 실행 확인
   완료일:
   실행 내용 요약:
   확인자:

6. 효과성 검증
   검증 방법:
   Accept Criteria:
   검증 기간:    ~ YYYY-MM-DD
   검증 결과: □ 효과 확인 (종료)  □ 미달 (재개시)
   검증자 / 일자:

7. 종료 승인
   RA Manager:           일자:
────────────────────────────────────────
```

---

## 9. 경영검토 입력 항목 (월별)

- 기간 내 CA/PA 개시 건수 (심각도별)
- 기한 내 완료율 (%)
- 효과성 검증 통과율 (%)
- 재발 NC 건수
- 미결 CAPA 목록 및 지연 사유

---

## 10. 연관 문서

- SOP-QMS-001: Document Control (§4.2.4)
- SOP-QMS-002: Record Control (§4.2.5)
- SOP-QMS-006: Design Controls (§7.3)
- SOP-QMS-009: Internal Audit (§8.2.4)
- SOP-QMS-010: Management Review (§5.6)
- Risk Management File (ISO 14971:2019)
- IEC 62304 Anomaly Resolution Procedure (GUI SW)
- 21 CFR Part 803 MDR Procedure (FDA)
- MFDS 이상사례 보고 절차 (국내)
