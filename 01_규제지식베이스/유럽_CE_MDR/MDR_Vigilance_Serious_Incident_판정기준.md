> 최종 갱신: 2026-05-22 (자동보강 #65)
> 근거: https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng (MDR 2017/745 Art.87, Art.2(65)) | https://health.ec.europa.eu/document/download/af1433fd-ed64-4c53-abc7-612a7f16f976_en?filename=mdcg_2023-3_en.pdf (MDCG 2023-3 Rev.2) | https://health.ec.europa.eu/system/files/2024-01/mdcg_2024-1-1_en.pdf (MDCG 2024-1-1)

# MDR Vigilance — Serious Incident 판정 기준 및 보고 절차

## 1. 핵심 정의 (MDR Article 2)

| 용어 | MDR 정의 조항 | 내용 요약 |
|---|---|---|
| **Incident** | Art.2(64) | 시장 출시 기기와 관련하여 직간접적으로 다음을 초래하거나 초래할 뻔한 사건: 환자·사용자·제3자의 사망, 또는 건강 상태의 일시적·영구적 악화, 또는 공중보건 위협 |
| **Serious Incident** | Art.2(65) | 다음 결과로 이어진 Incident: (a) 사망, (b) 건강 상태의 중대한 악화, (c) 공중보건에 대한 심각한 위협 |
| **FSCA** | Art.2(68) | Field Safety Corrective Action — 이미 출시된 기기와 관련된 위험을 줄이기 위한 모든 시정 조치 |
| **FSN** | Art.2(69) | Field Safety Notice — FSCA와 관련하여 최종 사용자에게 배포하는 정보 |

### 1.1 "중대한 건강 악화 (Serious Deterioration in Health)" 판단 기준 (Art.2(65)(b))

MDR Art.2(65)(b)에 따라 다음 중 하나에 해당하면 Serious Incident:
1. 생명을 위협하는 질병 또는 상해 (life-threatening illness or injury)
2. 신체 기능의 영구적 손상 (permanent impairment of body function)
3. 영구적 신체 구조 손상 (permanent damage to body structure)
4. 입원 또는 입원 기간 연장을 필요로 하는 상황
5. 의료적 또는 외과적 개입이 없었다면 위 결과를 초래했을 상황
6. 태아 사망, 선천성 이상, 또는 출생 손상

---

## 2. Serious Incident 판정 플로우차트

```
[이벤트 발생 또는 접수]
         │
         ▼
 Q1. 기기가 관련되어 있는가?
  (기기의 특성·기능·성능·상태 관련)
         │
    NO ──┘  YES
         │
         ▼
 Q2. 다음 결과가 발생했는가?
  (a) 사망
  (b) 중대한 건강 악화 (위 1.1 기준)
  (c) 공중보건 심각 위협
         │
    NO ──┘  YES
         │
         ▼
 Q3. 예상된 결과인가?
  (IFU·위험관리 파일에 명시된 허용된 위험)
         │
   YES ──┘  NO
         │
         ▼
 ✅ SERIOUS INCIDENT 확정
    → Art.87 보고 의무 발생
```

> **MDCG 2023-3 Rev.2 핵심 원칙:**
> - "Potential"(가능성)도 포함: 사망/중대 악화로 이어질 뻔한 사건도 Serious Incident
> - 인과 관계 입증 불필요: "related to" 기준 → 기기 관련성이 **배제될 수 없으면** 보고
> - 예상된 부작용(AE) 제외: 단, 빈도·중증도가 예상을 초과하면 보고

---

## 3. 보고 타임라인 (MDR Article 87)

| 상황 | 보고 기한 | 근거 조항 |
|---|---|---|
| **즉각적 공중보건 위협** | **2일 이내** | Art.87(1)(a) |
| **사망 또는 예상치 못한 중대한 건강 악화** | **10일 이내** | Art.87(1)(b) |
| **그 외 Serious Incident** | **15일 이내** | Art.87(1)(c) |
| **안전 예방적 보고** (non-serious이나 FSCA 동반) | **FSCA 착수 전** | Art.89(1) |

> **보고 기산일:** 제조업체가 Serious Incident의 **인과 관계를 배제할 수 없음을 인식한 날** (Day 0).
> 정보 수집에 시간이 필요한 경우 → 즉시 예비 보고(Preliminary Report) 제출 후 추후 Final Report.

### 3.1 FDA·MFDS와 타임라인 비교

| 상황 | EU MDR | FDA 21 CFR 803 | MFDS 의료기기법 |
|---|---|---|---|
| 즉각 위협 | **2일** | **5 근무일** | **15일** |
| 사망/중대부상 | **10일** | **30 역일** | **15일** |
| 기타 Serious | **15일** | **30 역일** | **30일** |

---

## 4. 보고 방법 (EUDAMED Vigilance Module)

| 단계 | 내용 |
|---|---|
| **Initial Report** | EUDAMED에 Serious Incident 초기 보고. 모든 필드 완성 불요, 인식 즉시 제출. |
| **Follow-up Report** | 추가 조사 결과 업데이트. 여러 차례 제출 가능. |
| **Final Report** | 조사 완료 후 Root Cause, 시정 조치, 재발 방지 계획 포함. |
| **보고 대상 CA** | 기기가 판매된 EU Member State(들)의 Competent Authority |
| **EUDAMED 접근** | 제조사 → EUDAMED Vigilance Module (SRN 등록 필수) |

---

## 5. FSCA (Field Safety Corrective Action) 연계

| 상황 | FSCA 필요 여부 | 보고 시점 |
|---|---|---|
| Serious Incident가 기기 설계/제조 결함에 기인 | 필요 | 착수 전 CA에 통보 (Art.89(1)) |
| 단발성 사용 오류 (기기 결함 아님) | 불필요 | — |
| Serious Incident 없지만 위험 신호 감지 | 예방적 FSCA 가능 | 착수 전 통보 권장 |

**FSCA 유형:**

| 유형 | 내용 | 예시 |
|---|---|---|
| **기기 회수 (Recall)** | 시장에서 기기 수거 | 안전 결함으로 전량 회수 |
| **현장 수정 (Field Modification)** | 사용 중 기기 수리·업데이트 | SW 패치 배포 |
| **사용 제한 (Restriction)** | 특정 사용 조건 제한 | 특정 환자군 제외 권고 |
| **사용 중단 (Recall to market)** | 완전 시장 철수 | — |

---

## 6. 자사 3제품 Serious Incident 판정 매트릭스

### 6.1 X-ray Detector

| 시나리오 | Incident? | Serious Incident? | 보고 기한 |
|---|---|---|---|
| 불량 이미지 → 오진 → 불필요한 수술 | ✅ | ✅ (의료적 개입) | 10일 |
| 과선량 노출 → 방사선 피해 (즉각) | ✅ | ✅ (공중보건 위협) | **2일** |
| 불량 픽셀 발견, 환자 영향 없음 | ✅ | ❌ (건강 악화 없음) | 보고 불요 (FSCA 검토) |
| 기기 고장, 진단 지연, 입원 연장 | ✅ | ✅ (입원 기간 연장) | 15일 |

### 6.2 Handheld X-ray Source

| 시나리오 | Serious Incident? | 보고 기한 |
|---|---|---|
| 방사선 누설 → 의료인 피폭 (즉각 위협) | ✅ | **2일** + FSCA 즉시 |
| 기기 오작동 → 방사선 노출 과다 (환자) | ✅ | **2일** |
| 배터리 과열 → 사용자 화상 | ✅ | 10일 |
| 기기 낙하 → 손상 (환자 영향 없음) | ❌ | 보고 불요 |

### 6.3 촬영실 GUI SW

| 시나리오 | Serious Incident? | 보고 기한 |
|---|---|---|
| SW 오류 → 선량 표시 오류 → 과노출 | ✅ | **2일** (공중보건 위협 가능) |
| SW 오류 → 진단 오류 → 재수술 | ✅ | 10일 |
| 화면 잠금 → 응급 환자 처치 지연 → 악화 | ✅ | 10일 |
| 화면 잠금 → 비응급 상황, 빠른 복구 | ❌ | 보고 불요 (내부 기록) |

---

## 7. 내부 Vigilance SOP 핵심 요소

1. **인식 기준 (Awareness criteria):** 언제를 "인식"으로 볼 것인가 — Day 0 결정 절차
2. **초기 평가 (Initial assessment):** 48시간 이내 Serious Incident 여부 초기 판단
3. **보고 결정 책임자:** RA Manager + PRRC 공동 승인
4. **EUDAMED 보고 담당:** RA팀 지정인
5. **조사 책임:** QA팀 Root Cause Analysis (8D, Fishbone 등)
6. **기록 유지:** 최소 15년 (MDR Art.10(8)) 또는 기기 수명 + 2년 중 더 긴 기간

---

## 8. 작성 체크리스트

- [ ] Serious Incident 판정 SOP 수립 및 교육 완료
- [ ] EUDAMED Vigilance Module 계정 등록 (SRN 필요)
- [ ] 보고 타임라인 달력 (2일/10일/15일) 내부 공유
- [ ] 초기 판정을 위한 Triage 체크리스트 보유
- [ ] FSCA 결정 기준 및 승인 절차 문서화
- [ ] FSN 표준 양식 준비 (언어별 — EU 언어 요건)
- [ ] Root Cause Analysis 방법론 교육 (8D/Fishbone)
- [ ] EU CA별 연락처 목록 최신화 (판매 국가 기준)

---

## 9. 참고 문서

| 문서 | 링크 |
|---|---|
| MDR 2017/745 Art.87-89 | https://eur-lex.europa.eu/eli/reg/2017/745/oj/eng |
| MDCG 2023-3 Rev.2 (Vigilance Q&A) | https://health.ec.europa.eu/document/download/af1433fd-ed64-4c53-abc7-612a7f16f976_en?filename=mdcg_2023-3_en.pdf |
| MDCG 2024-1-1 | https://health.ec.europa.eu/system/files/2024-01/mdcg_2024-1-1_en.pdf |
| FDA MDR 비교 문서 | [FDA_MDR_21CFR803_보고절차](../../미국_FDA/FDA_MDR_21CFR803_보고절차.md) (#64) |
| PMS Plan 연계 | [PMS_Plan_MDR_Article84_템플릿](../../../04_기술문서_템플릿/PMS_Plan_MDR_Article84_템플릿.md) (#62) |
