# 촬영실 GUI 기반 SW 기술파일

## 제품 개요 (확정 필요)
- 제품명 / 버전체계:
- SW 유형: 내장형(Embedded) / 독립형(Standalone) / 클라우드
- 운영체제·H/W 요구사항:
- DICOM / HL7 / IHE 지원 범위:
- 의도된 사용 (촬영 제어 / 영상 관리 / 진단 보조·CAD 등):
- AI/ML 기능 포함 여부:
- 네트워크 연결 여부 (Cyber Device 해당성):

## 규제 분류 (교차검증 반영)

| 지역 | 분류 | 주요 근거 |
|---|---|---|
| **MFDS** | 2등급 (보조 기능·영향도에 따라 3등급 가능) | 의료기기 품목별 등급 규정 + 「디지털의료기기소프트웨어 허가·심사 가이드라인」 + **「디지털의료제품법」(2025-01-24)** |
| **FDA** | Class II | Product Code **LLZ** (Medical Image Management and Processing) / **QIH** (Radiological CADe) / **QDQ** (CAD Triage) 등 |
| **MDR** | **Class IIa ~ IIb** (중증·영향도에 따라 III 가능) | Annex VIII **Rule 11** + **MDCG 2019-11 Rev.1 (2025-06)** |

## SW 특화 핵심 표준·규제

### SW 수명주기 / 안전
- **IEC 62304:2006/AMD1:2015** – Safety Class A/B/C
- **IEC 82304-1:2016** – Health Software 일반요구 (독립형)
- **IEC 62366-1:2015/AMD1:2020** – 사용적합성
- **ISO 14971:2019** – 위험관리

### 사이버보안 (**중요 – 법적 의무 상승**)
- **FDA**: FD&C Act **Section 524B** → Cyber Device **SBOM 법적 의무** / Final Guidance 2023-09-27
- **MDR**: MDCG 2019-16, IEC 81001-5-1:2021 준수
- **MFDS**: 의료기기 사이버보안 가이드라인 개정판 (2025.01)

### AI/ML 특화
- **FDA**: PCCP Final Guidance (2024-12-03), AI 전체 확대
- **MFDS**: 생성형 AI 의료기기 가이드라인 (2025.01) / 디지털의료제품법의 변경관리계획(CMP) 제도
- **EU**: MDCG 2019-11 Rev.1에 따라 AI 기반 X-ray 평가 SW는 항상 MDSW 분류

### IMDRF / 국제
- IMDRF SaMD 분류 (I/II/III/IV – 정보 제공 vs 진단·치료 영향 × 환자 상태 중증도)

## 기술문서 섹션
1. Software Description / Architecture (모듈 구성, 데이터 플로우)
2. Intended Use / User profile / Use Environment
3. Classification (SaMD 분류, IEC 62304 Safety Class, FDA/MDR/MFDS 등급)
4. Risk Management File (SW 위해, 사이버보안 위해 통합)
5. SW Development Plan / Configuration Management / Problem Resolution
6. Requirements → Design → Implementation → V&V Traceability Matrix
7. **SOUP (Software of Unknown Provenance) 목록**
8. **Cybersecurity Plan + SBOM + Threat Model + Vulnerability Assessment**
9. Usability Engineering File (IEC 62366)
10. Labeling (SW IFU, e-Label 가능)
11. Post-Market **업데이트·패치 관리 절차** (Cyber 패치 대응)
12. AI/ML 해당 시: **PCCP 문서** / 변경관리계획
13. Declaration of Conformity / 510(k) Summary / STED

## 시험·검증 체크리스트
- [ ] 단위·통합·시스템·인수 시험 (IEC 62304 기반)
- [ ] 사용적합성 (IEC 62366-1) – 형성적·총괄적 평가
- [ ] DICOM/HL7 Conformance Statement
- [ ] 사이버보안 테스트 (Pen Test, Vulnerability Scanning, Fuzz Testing)
- [ ] SBOM 생성·검증
- [ ] SOUP 관리 기록
- [ ] OS·H/W 호환성 매트릭스
- [ ] 성능·정확도 (CAD 등 해당 시 임상 성능 평가)

## 핵심 인허가 전략 포인트
- **MDR Rule 11 등급 결정이 핵심**: 촬영실 SW가 단순 영상관리·촬영제어인지(IIa), 진단 판단 제공인지(IIb 이상)에 따라 NB 심사 부담 차이 큼.
- **FDA Cyber Device 해당 시 SBOM 필수**: 제출 누락 시 RTA.
- **AI 기능 있다면 PCCP 활용**: 반복 재제출 부담 감소.
- **국내**: 디지털의료제품법 적용 경로(간소 변경보고) 활용 여부 타당성 검토.
