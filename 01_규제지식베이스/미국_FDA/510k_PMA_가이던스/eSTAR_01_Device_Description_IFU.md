> 최종 갱신: 2026-04-22 (자동보강 #2)
> 근거: https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program · https://www.fda.gov/media/172450/download · https://downloads.regulations.gov/FDA-2019-D-4014-0001/attachment_1.pdf · https://www.fda.gov/media/86323/download · https://www.fda.gov/regulatory-information/search-fda-guidance-documents/generalspecific-intended-use-guidance-industry · https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E/section-807.87 · https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E/section-807.92 · https://eur-lex.europa.eu/legal-content/EN/TXT/HTML/?uri=CELEX:02017R0745-20240709 (Annex II)

# FDA eSTAR 섹션별 작성 가이드 (1) Device Description / Indications for Use

자사 3개 제품(X-ray Detector · Handheld X-ray Source · 촬영실 GUI SW)의 510(k) 제출 시 eSTAR 템플릿 내 \`Device Description\` 및 \`Indications for Use\` 섹션을 작성하는 실무 가이드. MFDS·MDR 대응 관점 1줄 언급 포함.

## 1. 규제적 배경 (Fact)

### 1.1 eSTAR 의무화 시점
- 510(k) 전 제출물: 2023-10-01부터 eSTAR 의무 (CDRH Portal)
- De Novo 제출물: 2025-10-01부터 eSTAR 의무
- 미 의무·면제 대상: BLA 일부, 연구용(IDE) 등 (예외 목록은 FDA eSTAR 페이지 참조)

### 1.1.1 2026년 최신 eSTAR 업데이트 (FDA 공식 공지)
- 2026-02-02: nIVD·IVD eSTAR가 QMSR(신규 Quality Management System Regulation, 21 CFR 820 개정) 시행일에 맞춰 정합화 — PMA 제출자는 v6.1 help text를 따를 것 권고
- 2026-02-17: 3개 eSTAR 모두 Real-World Evidence(RWE) 가이던스 개정판(2025-12-18 공표, 2026-02-16 효력 발생) 내용 반영
- → Device Description 섹션에 QMSR 정합 문서(Design Controls, CAPA) 인용 시 신판 용어 사용, RWE 활용 시 RWE 가이던스 참고 문구를 근거 소스에 포함할 것

### 1.2 작성 근거 문서
- FDA, "Electronic Submission Template for Medical Device 510(k) Submissions" (최종 2023 개정, eSTAR v5.x 기준)
- FDA Guidance, "Format for Traditional and Abbreviated 510(k)s" (2019-09-13 Final)
- 21 CFR 807.87 — 510(k) 제출에 요구되는 정보
- 21 CFR 807.92 — 510(k) Summary 포맷
- FDA Guidance, "General/Specific Intended Use" (1998 Final, 현행 유효)
- FDA Form 3881 (Indications for Use 전용 양식)

## 2. eSTAR \`Device Description\` 섹션 — 필수 구성요소

### 2.1 eSTAR 프롬프트 기반 항목 (순서·탭 명칭 기준)
1. General Device Description — 일반적 설명, 라벨링과 일치
2. Principle of Operation — 작용원리 (intended effect 달성 방식)
3. Proposed Conditions of Use — 사용 조건, 해부학적 위치, 사용자 인터페이스, 타 기기 연결
4. Components, Accessories, System/Kit 구성표 (있을 경우 Attachment)
5. Device Configurations / Variants — 모델·형명·옵션
6. Technological Characteristics — 재질, 에너지 원, 소프트웨어, 네트워크
7. Principle Physical Dimensions / 기술적 사양 (별첨 시방서 허용)
8. Device Photographs / Engineering Drawings (Attachment)

### 2.2 eSTAR \`Indications for Use\` 섹션
- FDA Form 3881 본문을 **그대로** 복사·붙여넣기 (verbatim)
- eSTAR는 Form 3881의 내용을 510(k) Summary(21 CFR 807.92) 해당 필드에 자동 반영
- 처방용(Rx) vs 일반판매용(OTC) 구분 필수 체크박스

### 2.3 작성 원칙 (FDA RTA 회피)
- 전체 제출물 내 IFU 문장 **문구 일치** (라벨·IFU·SE 비교표·Summary 전부 동일)
- Predicate과 동일하거나 더 좁은 범위 (확장 시 de novo·PMA 위험)
- 진단 성능·치료 효과에 대한 **임상 주장은 임상 데이터가 뒷받침**하는 범위로 한정
- 환자군·해부 부위·사용 환경(병원·가정·야전 등) 명시

## 3. 3개 지역 비교 매트릭스

| 구분 | FDA (510(k)/eSTAR) | MFDS (기술문서) | MDR (Annex II) |
|---|---|---|---|
| 섹션 명칭 | Device Description / Indications for Use | 모양 및 구조·사용목적·작용원리·조작방법 | General description / Intended purpose |
| 필수 양식 | eSTAR + Form 3881 | 기술문서 심사자료 서식 (의료기기법 시행규칙) | Annex II 1항 체계 (양식 자유, NB별 템플릿) |
| 핵심 구분 | Intended Use (상위) vs Indications for Use (하위 적응증) | 사용목적(상위) / 성능(하위) | Intended purpose (단일, 상세 구성요소 나열) |
| 환자군 명시 | 필수 (IFU 내) | 필수 (사용목적) | 필수 (Annex II 1.1(c)) |
| 금기·경고 | IFU 본문에 간결 언급 + 라벨로 상세 | 사용시 주의사항에 별도 기재 | Annex II 1.1(c)에 포함 명시 |
| 모델·구성 | Device Description 내 Attachment | 모양 및 구조 원어 포함 | Annex II 1.1(a)(b) |
| 변경 시 영향 | 기존 IFU 변경 → 재510(k) 원칙 | 변경허가 사항 | Significant change 평가 → NB 재심사 |

## 4. 자사 3개 제품 적용 가이드 (Action)

### 4.1 X-ray Detector (평판 검출기)
- Device Description 포함 항목
  - 검출기 종류(a-Se 직접변환 / a-Si + CsI 간접변환 등)·픽셀 피치·활성 영역(inch)
  - 인터페이스(유·무선, Gigabit Ethernet·Wi-Fi 규격)
  - DQE·MTF·공간분해능 대표값 (자세한 값은 Performance Testing 섹션 참조로 축약)
  - IEC 62220-1-1 DQE 측정 조건 명기
  - 호환 X-ray generator 종류·연동 프로토콜(AED, free-running 등)
- Indications for Use 예시(영문)
  - "The [Model] is a digital flat-panel X-ray detector intended to provide general-purpose static radiographic imaging of human anatomy in adult and pediatric patient populations, for use by trained healthcare professionals in medical facilities. Not intended for mammography."
- 주의
  - Mammography 용도 주장 시 별도 510(k) + MQSA 인증 필요 → IFU에 제외 문구 명시
  - Pediatric 포함 시 "Pediatric X-ray Imaging Devices" 가이던스(2017) 대응 자료 필요

### 4.2 Handheld X-ray Source (휴대형 X-선 발생장치)
- Device Description 포함 항목
  - 최대 관전압(kVp)·관전류(mA)·노출시간 범위
  - 초점 크기(focal spot)·고유 여과(inherent filtration) mmAl
  - 방사선 누설(leakage) 규제 한도 대비 측정값
  - 배터리 사양·충전기·안전 인터록(dead-man switch 등)
  - Back-scatter shield 유무, 사용자 및 환자에 대한 차폐 거리
  - 주요 기구부 사진·조립도
- Indications for Use 예시(영문)
  - "The [Model] is a portable, battery-operated diagnostic X-ray source intended to produce X-rays for use in dental and/or general radiographic examinations of the human body, in environments including hospitals, clinics, field settings (by prescription use only)."
- 주의
  - 21 CFR 1020.30 (Diagnostic X-ray systems) 성능기준 적합성 별도 제출 — Device Description에 적용 성능기준 리스트 언급
  - 치과용인지 일반 진단용인지 분류(Product Code) 명확화 → 적응증 문구 폭 결정
  - 최대 누설 방사선 측정 조건을 Device Description에 요약, 상세값은 Performance 섹션

### 4.3 촬영실 GUI SW (영상 획득·검사 제어 SW)
- Device Description 포함 항목
  - SW 아키텍처 요약(모듈·프로세스·DB·DICOM 노드)
  - 운영체제·하드웨어 최소 요구사항
  - 호환 Detector·Generator 리스트(버전 포함)
  - DICOM 적합성 선언서 요약(Storage SCU, Worklist SCU, MPPS 등)
  - 사이버보안 특징(인증·암호화·감사 로그)
  - IEC 62304 SW 안전 등급(Class A/B/C)
  - SOUP 사용 여부·식별 정보
- Indications for Use 예시(영문)
  - "The [Model] software is intended for use by trained technologists to acquire, review, and manage digital radiographic images generated by compatible X-ray acquisition devices in medical facilities. It is not intended for primary diagnosis or for image interpretation."
- 주의
  - "Review"와 "diagnosis" 용어 구분 — 진단용 주장 시 classification 상향 가능
  - AI/ML 기능 포함 시: PCCP 혹은 별도 IFU 문구로 학습 범위 제한 명시
  - Cybersecurity 섹션(eSTAR Cybersecurity) 별도 작성 필요 → 본 섹션에선 요약만

## 5. RTA(Refuse to Accept) 빈번 지적사항 — 본 섹션 한정

1. IFU 문구가 라벨·SE 비교표와 **단어 단위로 일치하지 않음** (예: "adults" vs "adult patients")
2. Predicate과 범위 비교 없이 신규 환자군(예: pediatric) 포함
3. Principle of Operation이 한 문장만 제공 — eSTAR는 **작동 단계·핵심 물리 원리** 설명 기대
4. Device Configurations/Variants 리스트가 Attachment 없이 본문에 산재
5. 구성품·액세서리 중 **별도 Product Code** 해당 품목을 누락
6. 해부학적 위치·사용 환경이 IFU에 부재

## 6. 한국(MFDS) / EU(MDR) 간단 매핑 — 상호 재사용 관점

- 본 섹션에서 작성한 **작용원리 / 모양 및 구조 / 사용목적**은 MFDS 기술문서 해당 항목에 거의 그대로 이식 가능 (국문 번역 + 공식 명칭 유지)
- MDR Annex II 1.1에서 요구하는 Intended purpose 구성요소(환자군·적응증·금기·사용자·사용 환경)는 FDA IFU와 중복률 ~80% — **동일 문안 원본**으로 관리 후 지역별 형식만 조정 권장
- MDR은 "intended purpose" 단일 용어만 사용하고 FDA의 Intended Use / Indications for Use 이분 구조 없음 → 내부 RA 관리 시 3개 지역 공통 **IFU 마스터 1개 + 지역 주석** 구조 유지

## 7. 체크리스트 (제출 직전)

- [ ] IFU 문장 — 라벨·Summary·SE 비교표·eSTAR \`Indications for Use\` 전부 문자 단위 동일
- [ ] Form 3881 — 처방용/OTC 체크, 서명·날짜
- [ ] Device Description — 작용원리 단계별 기술 (3~5문장 이상)
- [ ] 모델·구성·액세서리 리스트 Attachment
- [ ] 사용 환경(병원·클리닉·야전·가정) 명시
- [ ] Product Code·Regulation Number 재확인
- [ ] Predicate 대비 IFU 범위 비교 (1행 코멘트라도 eSTAR 내 Substantial Equivalence 섹션 일관성)
- [ ] MDR·MFDS 마스터 IFU와 정합성 검토 (회사 내 규제 변경 관리)

## 8. 참고 공식 소스

- FDA eSTAR Program 페이지 — https://www.fda.gov/medical-devices/how-study-and-market-your-device/estar-program
- FDA, Electronic Submission Template for Medical Device 510(k) Submissions (PDF) — https://www.fda.gov/media/172450/download
- FDA Guidance, Format for Traditional and Abbreviated 510(k)s (2019) — https://downloads.regulations.gov/FDA-2019-D-4014-0001/attachment_1.pdf
- FDA Form 3881 (Indications for Use) — https://www.fda.gov/media/86323/download
- FDA Guidance, General/Specific Intended Use — https://www.fda.gov/regulatory-information/search-fda-guidance-documents/generalspecific-intended-use-guidance-industry
- 21 CFR 807.87 (eCFR) — https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807
- 21 CFR 807.92 (eCFR) — https://www.ecfr.gov/current/title-21/chapter-I/subchapter-H/part-807/subpart-E/section-807.92

> 다음 회차 예정: FDA eSTAR Substantial Equivalence 비교표 작성법
