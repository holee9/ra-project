# 규제변경 → 제품 dossier 자동매핑 (#101)

> 최종 갱신: 2026-06-09 (#101 매핑 레지스터 수립)
> 목적: 규제변경 탐지 시 영향받는 제품·dossier·문서를 자동 연결. 주간 모니터가 변경을 이 표로 라우팅한다.
> 제품: P1=X-ray Detector · P2=Handheld X-ray Source · P3=촬영실 GUI SW

## 1. 규제 도메인 → 제품 영향 매트릭스
| 규제 도메인 | P1 Detector | P2 Handheld | P3 GUI SW | 연결 dossier/문서 |
|---|---|---|---|---|
| FDA 510(k)/eSTAR | ● | ● | ● | 미국_FDA/510k_PMA_가이던스/* |
| FDA QMSR(820) | ● | ● | ● | 국제표준/KGMP_QMSR_ISO13485_비교 |
| FDA 사이버보안 524B | ○ | ○ | ● | FDA_Threat_Model·eSTAR_04 |
| FDA PCCP(AI/ML) | ○ | ○ | ● | FDA_AI_ML_2026_PCCP |
| FDA 방사선 21 CFR 1020 | ● | ● | ○ | Handheld_21CFR1020_30·1020_3x |
| MDR TD/GSPR | ● | ● | ● | 유럽_CE_MDR/MDR_2017_745/* |
| MDR PMS/PSUR/Vigilance | ● | ● | ● | 04_템플릿/PMS_Plan·PSUR |
| EUDAMED | ● | ● | ● | EUDAMED_모듈별_등록 |
| MFDS 고시·디지털의료제품법 | ● | ● | ● | 국내_MFDS/법령_고시_가이드라인/* |
| IEC 60601 시리즈 | ● | ● | ○ | 국제표준/IEC60601-* |
| IEC 62304/62366·SW | ○ | ○ | ● | IEC62304·촬영실_GUI_SW |
| ISO 14971/13485 | ● | ● | ● | 04_템플릿/Risk_Management·SOP_* |

(● 직접영향 / ○ 간접·조건부)

## 2. 자동매핑 규칙 (주간 모니터 적용)
1. 소스 폴링에서 신규 변경 감지 → 키워드/CELEX/표준번호로 위 도메인 분류.
2. 해당 행의 ● 제품 + 연결 문서를 이슈 본문에 자동 명시(라벨 `ra-maint`+제품태그 `P1/P2/P3`).
3. 고영향(● 다수)일수록 우선순위 상향 → 마스터 헌장 §1 판단에 반영.

## 3. 향후 고도화(#101 연계)
- 변경→연결문서 자동 patch 제안(diff)까지 확장 시 "변경 자동전파" 완성.
