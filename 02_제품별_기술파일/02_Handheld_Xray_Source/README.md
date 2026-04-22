# Handheld X-ray Source 기술파일

## 제품 개요 (확정 필요)
- 제품명 / 모델명:
- X선 관 유형 (고정양극 / 회전양극):
- 최대 관전압 (kVp):
- 최대 관전류 (mA) / 최대 mAs:
- 총 필터 (mmAl equiv.):
- 초점 크기 (mm):
- 출력·누설선량 (μGy):
- 배터리 / 전원 방식:
- 의도된 사용 (적용 부위·대상):

## 규제 분류 (교차검증 반영)

| 지역 | 분류 | 주요 근거 |
|---|---|---|
| **MFDS** | 2등급 (출력·용도에 따라 3등급 가능) | 의료기기 품목별 등급 규정 + 「진단용 방사선 발생장치의 안전관리에 관한 규칙」(의료법, 2025-07-18 개정) |
| **FDA** | Class II | 21 CFR 892.1720, Product Code **IZL** (Mobile) / **EAF** (Stationary) / 기타 + **21 CFR 1020.30~1020.33** Performance Standards |
| **MDR** | **Class IIb** | Annex VIII Rule 10 전단: "active devices intended to emit ionising radiation for diagnostic/therapeutic radiology" |

## X-ray Source 특화 – 방사선 안전 규제

### 국내
- 의료기관: 설치 3일 전 신고, 3년 주기 검사 → 제품이 검사 기준 적합성 확보 필수
- 제조자 매뉴얼에 의료기관 측 안전관리 절차 포함

### 미국 (FDA)
- **21 CFR 1020.30**: 누설선량, 조사야, 타이머, 관전압·관전류·mAs 정확도 정량 요건
- **Form FDA 2579** (Report of Assembly): 2023-01 개정으로 인증 부속품 일부 제출 의무 완화
- **Form FDA 2877** (수입 시 Initial Report)
- Initial Product Report / Annual Report

### 유럽 (MDR)
- **Class IIb** → NB 심사 의무 (Annex IX Ch.I + III 전수)
- **Euratom Directive 2013/59** 및 각 회원국 방사선법 병행

## 기술문서 섹션 (공통 + X-ray Source 특화)
1. Device Description (X-ray generator 상세, 차폐 설계, tube assembly)
2. Intended Use / Indications for Use / 적용부위 제한 / 사용자 요건
3. Classification & Regulatory Status
4. Risk Management File (방사선 위해, 배터리 위해, 기계적 낙하 등 포함)
5. Essential Performance
   - **IEC 60601-2-28:2017** (X-ray tube assembly)
   - **IEC 60601-2-54:2022** (radiographic/radioscopic, 해당 시)
6. Verification & Validation
   - 전기안전 (IEC 60601-1 Ed 3.2)
   - EMC (IEC 60601-1-2)
   - **방사선 방호 (IEC 60601-1-3:2021)**
   - 누설선량 / 출력 정확성 (21 CFR 1020.30 / IEC 60601-2-28)
   - 기계적 안전 (낙하·진동·IP 등급 – Handheld 특화)
   - **배터리 안전 (IEC 62133-2)** – 배터리형
   - 사용적합성 (IEC 62366-1, **촬영자 피폭 최소화** 평가 포함)
7. Clinical Evaluation
8. Labeling / IFU (방사선 경고, 최소 거리, 차폐 요건, PPE 권고 포함)
9. PMS / PMCF / Vigilance
10. Declaration of Conformity

## 자사 핵심 시험 체크리스트
- [ ] 전기안전 (IEC 60601-1 Ed 3.2)
- [ ] EMC (IEC 60601-1-2)
- [ ] 방사선 방호 (IEC 60601-1-3:2021)
- [ ] X-ray tube assembly (IEC 60601-2-28:2017)
- [ ] 촬영·투시 시스템 (IEC 60601-2-54:2022)
- [ ] 누설선량 / 출력 정확성 (**21 CFR 1020.30** + 제조자 사양)
- [ ] 기계적 안전 (낙하·진동·IP 등급)
- [ ] 배터리 (IEC 62133-2)
- [ ] 사용적합성 (IEC 62366-1) – 촬영자 피폭·오사용 시나리오 포함
- [ ] 사이버보안 – 무선 기능 포함 시 (**SBOM 필수**, FDA Cyber Device)
- [ ] 생체적합성 (환자 접촉부 해당 시)

## 핵심 인허가 전략 포인트
- **시스템 vs 구성품 결정**: Handheld Source + Detector + SW를 통합 시스템으로 허가할지, 개별 허가할지.
  - 통합 시 전체 등급 상향 (MDR IIb) / 개별 시 각각의 전략 필요.
- **방사선 안전 문서화 이중 체계**: 의료기기 인허가 문서 + 의료기관용 안전관리 매뉴얼 분리 작성.
- **FDA 방사선 보고 의무**: 초도 보고 + 연차 보고 놓치지 않도록 일정 관리.
