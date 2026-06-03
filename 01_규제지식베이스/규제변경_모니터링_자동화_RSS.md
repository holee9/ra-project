> 최종 갱신: 2026-06-03 (자동보강 #85)
> 근거: https://www.fda.gov/about-fda/contact-fda/subscribe-podcasts-and-news-feeds | https://www.fda.gov/about-fda/center-devices-and-radiological-health/subscribe-cdrh-email-lists | https://www.mfds.go.kr/www/rss/list.do | https://eur-lex.europa.eu/content/help/my-eurlex/my-rss-feeds.html | https://health.ec.europa.eu/medical-devices-sector/new-regulations_en | https://www.federalregister.gov/

# 규제 변경 모니터링 자동화 — 법령·가이던스 RSS 및 알림 체계

## 1. 개요 및 목적

X-ray Detector·Handheld X-ray Source·촬영실 GUI SW 3개 제품의 인허가·시판 후 관리 담당자가 MFDS·FDA·MDR 3개 지역의 법령·가이던스·표준 개정을 누락 없이 추적하기 위한 자동 모니터링 체계.

핵심 원칙:
- **1차 소스 직접 구독**: 규제기관 공식 채널만 참조
- **중요도 분류**: 제품별 영향도에 따라 High/Medium/Low 3단계
- **대응 기한 연동**: 입법예고(comment period) 및 시행일 자동 캘린더화

---

## 2. 지역별 공식 모니터링 채널

### 2.1 MFDS (식품의약품안전처)

#### 2.1.1 RSS 피드

MFDS는 공식 RSS 구독 서비스를 운영 중이다. 구독 경로: `mfds.go.kr` 하단 "최신정보 자료 제공 서비스 / 맞춤형 구독 정보 서비스" 또는 직접 접속.

| 채널 | RSS URL / 경로 | 분류 | 중요도 |
|---|---|---|---|
| 공지·공고 | `https://www.mfds.go.kr/brd/m_74/list.do` (RSS 구독) | 행정 공지 | High |
| 보도자료 | `https://www.mfds.go.kr/brd/m_99/list.do` (RSS 구독) | 정책 발표 | High |
| 법령·시행령·시행규칙 | `https://www.mfds.go.kr/brd/m_203/list.do` | 법령 개정 | **Critical** |
| 안내서·지침 | `https://www.mfds.go.kr/brd/m_218/list.do` | 가이드라인 | High |
| RSS 통합 구독 페이지 | `https://www.mfds.go.kr/www/rss/list.do` | — | — |

**구독 방법:**
1. `https://www.mfds.go.kr/www/rss/list.do` 접속
2. RSS Reader(예: Feedly, Inoreader) 또는 브라우저 RSS 확장 사용
3. 항목별 RSS URL 등록

#### 2.1.2 국가법령정보센터 (law.go.kr)

의료기기 관련 법령 직접 추적:

| 법령명 | law.go.kr URL | 비고 |
|---|---|---|
| 의료기기법 | `https://www.law.go.kr/법령/의료기기법` | 최신: 법률 제20888호(2025-04-01) |
| 의료기기법 시행규칙 | `https://www.law.go.kr/법령/의료기기법시행규칙` | |
| 디지털의료제품법 | `https://www.law.go.kr/lsInfoP.do?lsId=014601` | 2025-01-24 시행 |

**법령 개정 알림:** `law.go.kr` → 해당 법령 상세 페이지 → "개정이력" → 법제처 입법예고 `https://opinion.lawmaking.go.kr/` 구독 병행.

#### 2.1.3 식의약법령정보 시스템

`https://www.mfds.go.kr/law/main.do` — 의료기기 관련 법령·고시·가이드라인 통합 검색. 주 1회 수동 점검 권장.

---

### 2.2 FDA (CDRH)

#### 2.2.1 공식 RSS 피드

FDA는 가이던스 전용 RSS를 제공하지 않는다. 대신 아래 RSS + 이메일 구독 조합 사용:

| 채널 | RSS URL | 분류 | 중요도 |
|---|---|---|---|
| MedWatch Safety Alerts | `https://www.fda.gov/about-fda/contact-fda/stay-informed/rss-feeds/medwatch/rss.xml` | 안전성 경보 | **Critical** |
| Press Releases | `https://www.fda.gov/about-fda/contact-fda/stay-informed/rss-feeds/press-releases/rss.xml` | 정책 발표 | High |
| Recalls | `https://www.fda.gov/about-fda/contact-fda/stay-informed/rss-feeds/recalls/rss.xml` | 리콜 | High |

#### 2.2.2 CDRH 이메일 구독 (가이던스 추적 핵심 채널)

`https://www.fda.gov/about-fda/center-devices-and-radiological-health/subscribe-cdrh-email-lists` 에서 등록:

| 구독 목록명 | 내용 | 우리 제품 관련도 |
|---|---|---|
| **CDRH New** | 전일 업데이트 daily digest (가이던스 포함) | **최우선** |
| **CDRH Industry** | 산업계 대상 신규/갱신 콘텐츠 + DICE·OSEL·Standards 뉴스레터 | High |
| **Radiological Health Program** | X-ray·방사선 제품 규제 뉴스 + DICE 뉴스레터 | **X-ray 제품 필수** |
| **Medical Device Safety and Recalls** | 리콜·안전 경보 | High |
| **MDSAP** | MDSAP 문서 갱신 알림 | High |
| **Digital Health** | 디지털헬스 + DHCoE 뉴스레터 | GUI SW |
| **In Vitro Diagnostics** | IVD 관련 (참고용) | Low |

#### 2.2.3 Federal Register API (법규 변경 자동 추적)

FDA 규정 개정(Rule/Proposed Rule)은 Federal Register에 게재된다.

**검색 URL 패턴:**
```
https://www.federalregister.gov/api/v1/documents.json
  ?conditions[agencies][]=food-and-drug-administration
  &conditions[type][]=Rule
  &conditions[term]=medical+devices
  &per_page=20
  &order=newest
```

**RSS 구독 (Proposed Rule 포함):**
```
https://www.federalregister.gov/documents/search/rss?conditions[agencies][]=food-and-drug-administration&conditions[type][]=Rule&conditions[type][]=Proposed+Rule&conditions[term]=medical+devices
```

X-ray 특화 검색 키워드: `"1020.30"`, `"radiology"`, `"radiation-emitting"`, `"21 CFR 892"`

---

### 2.3 EU / MDR

#### 2.3.1 EUR-Lex RSS 맞춤 알림

EUR-Lex에서 검색어 기반 맞춤 RSS 생성 가능: `https://eur-lex.europa.eu/content/help/my-eurlex/my-rss-feeds.html`

**권장 구독 쿼리:**

| 검색 범위 | 쿼리 | 비고 |
|---|---|---|
| MDR 2017/745 개정 | CELEX=02017R0745 + amendment | Corrigendum 포함 |
| Medical devices OJ 신규 | `medical devices` + OJ:L 필터 | Implementing Regulation |
| MDCG 가이던스 | `MDCG` | EUR-Lex 미게재 → EC 페이지 병행 |

**EUR-Lex RSS 형식:**
```
https://eur-lex.europa.eu/search.html?qid=&DTA=2024&text=medical+devices&SUBDOM_INIT=ALL_ALL&DTS_SUBDOM=ALL_ALL&type=advanced&format=RSS
```

#### 2.3.2 European Commission 공식 채널

| 채널 | URL | 분류 |
|---|---|---|
| New Regulations 페이지 | `https://health.ec.europa.eu/medical-devices-sector/new-regulations_en` | 법령 개정 |
| MDCG 가이던스 목록 | `https://health.ec.europa.eu/medical-devices-sector/new-regulations/guidance-mdcg-endorsed-documents-and-other-guidance_en` | 가이던스 |
| EC 뉴스레터 구독 | `https://ec.europa.eu/health/electronic-publications_en` | 통합 알림 |
| Latest Updates | `https://ec.europa.eu/health/medical-devices-sector/latest-updates_en` | 최신 동향 |

#### 2.3.3 EUDAMED 모니터링

2026-05-28부터 4개 모듈(Actor, UDI/Device, NB/Certificates, Clinical Investigations) 의무 사용 개시:
- 포털: `https://eudamed.ec.europa.eu/`
- 제조사는 EU Authorized Representative 변경·인증서 만료 알림을 EUDAMED에서 직접 수신

---

## 3. 3지역 비교 매트릭스

| 구분 | MFDS | FDA | MDR/EU |
|---|---|---|---|
| **공식 RSS** | 있음 (`mfds.go.kr/www/rss/list.do`) | 부분 (안전경보·리콜·보도자료) | EUR-Lex 맞춤 RSS |
| **이메일 구독** | 없음 (RSS 대체) | CDRH 이메일 (govdelivery) | EC 뉴스레터 |
| **가이던스 알림** | 안내서/지침 RSS 구독 | CDRH New 이메일 (daily) | MDCG 페이지 수동 확인 |
| **법령 개정 알림** | law.go.kr 직접 확인 | Federal Register API/RSS | EUR-Lex RSS |
| **점검 주기 권장** | 주 1회 RSS 확인 | Daily (CDRH New 이메일) | 주 1회 |
| **X-ray 특화 채널** | 없음 (의료기기 통합) | Radiological Health 이메일 | MDR Art.47 (방사선 특칙 없음) |

---

## 4. 자사 3개 제품별 모니터링 우선순위

### 4.1 X-ray Detector

| 항목 | 모니터링 소스 | 관련 규정 | 조치 기한 |
|---|---|---|---|
| IEC 60601-2-54 개정 | ISO/IEC 공식 (newsfeed) | 촬영·투시 성능 | 발효 전 2년 내 전환 |
| FDA 21 CFR 892 (Radiology Devices) | Federal Register RSS | 510(k) 면제 등급 변경 | 즉시 검토 |
| MFDS 의료기기 전기·기계적 안전 기준 고시 | MFDS 안내서 RSS | 성능 기준 | 고시 시행일 |
| MDR Annex I §11 (방사선 GSPR) | EUR-Lex MDR RSS | CE 마킹 유지 | 즉시 |

### 4.2 Handheld X-ray Source

| 항목 | 모니터링 소스 | 관련 규정 | 조치 기한 |
|---|---|---|---|
| FDA 21 CFR 1020.30 개정 | Federal Register RSS (`"1020.30"`) | 방사선 방호 성능 기준 | **Critical** |
| IEC 60601-2-28 (X-ray Source) 개정 | ISO/IEC 뉴스피드 | 시험 항목 변경 | 발효 전 2년 |
| 의료기기법 방사선 발생장치 분류 고시 | MFDS 법령 RSS | 등급 분류 | 즉시 |
| MDR Class IIb→III 전환 검토 (방사선) | MDCG 가이던스 페이지 | GSPR §16 | 즉시 |

### 4.3 촬영실 GUI SW

| 항목 | 모니터링 소스 | 관련 규정 | 조치 기한 |
|---|---|---|---|
| FDA PCCP·AI/ML guidance 업데이트 | CDRH New 이메일 | PCCP 정책 변경 | 즉시 |
| IEC 62304 개정 (현재 2006+A1:2015) | ISO/IEC 뉴스피드 | SW 수명주기 | 개정 발표 후 검토 |
| MFDS 인공지능 의료기기 가이드라인 | MFDS 안내서 RSS | AI 등급 분류 | 즉시 |
| EU AI Act 의료기기 적용 | EUR-Lex RSS (`"artificial intelligence" medical`) | CE 마킹 | 2026년 이후 단계적 |
| IEC 81001-5-1 개정 / ISH1:2025 | ISO/IEC 뉴스피드 | 사이버보안 | 즉시 |

---

## 5. 모니터링 자동화 구현 방안

### 5.1 RSS 통합 관리 (무료 도구)

| 도구 | 특징 | 권장 사용처 |
|---|---|---|
| **Feedly** | 팀 공유 피드 + AI 필터링 | MFDS·FDA RSS 통합 |
| **Inoreader** | 규칙 기반 필터 + 이메일 전달 | X-ray 키워드 필터 |
| **The Old Reader** | 경량, 무료 | 개인용 |
| **Zapier / Make** | RSS → 슬랙/이메일 자동 전송 | 팀 알림 자동화 |

### 5.2 Python 스크립트 예시 (Federal Register API)

```python
import requests
from datetime import datetime, timedelta

def check_fda_rules(keywords=["medical devices", "radiology", "1020.30"]):
    """FDA Federal Register 신규 Rule/Proposed Rule 확인"""
    base = "https://www.federalregister.gov/api/v1/documents.json"
    since = (datetime.now() - timedelta(days=7)).strftime("%Y-%m-%d")
    
    for keyword in keywords:
        params = {
            "conditions[agencies][]": "food-and-drug-administration",
            "conditions[type][]": ["Rule", "Proposed Rule"],
            "conditions[term]": keyword,
            "conditions[publication_date][gte]": since,
            "per_page": 10,
            "order": "newest"
        }
        resp = requests.get(base, params=params)
        docs = resp.json().get("results", [])
        for doc in docs:
            print(f"[{doc['publication_date']}] {doc['title']}")
            print(f"  → {doc['html_url']}")
```

### 5.3 점검 주기 및 담당 분장 (권장)

| 주기 | 채널 | 담당 행동 |
|---|---|---|
| 매일 (자동) | CDRH New 이메일 수신 | X-ray/Radiology 키워드 필터링 |
| 주 1회 | MFDS RSS + law.go.kr 의료기기법 | 변경사항 요약 기록 |
| 주 1회 | EUR-Lex RSS + EC Medical Devices 페이지 | MDCG 신규 가이던스 확인 |
| 월 1회 | MDCG 가이던스 전체 목록 대조 | 누락 여부 확인 |
| 분기 1회 | ISO/IEC 표준 신규 발행 조회 | 핵심 표준 개정판 확인 |

---

## 6. 2025~2026 주요 규제 변경 트래커

현재 추적 중인 고영향 변경사항 (2026-06-03 기준):

| 지역 | 변경 내용 | 발효일 | 우리 제품 영향 | 상태 |
|---|---|---|---|---|
| **EU** | EC COM(2025)1023 — MDR/IVDR 규정 간소화 제안 | 입법 진행 중 (EP·Council 심의) | 모든 제품 — 행정 부담 감소 예상 | 모니터링 |
| **EU** | EUDAMED 4개 모듈 의무화 | 2026-05-28 | Detector·Handheld — Actor/UDI 모듈 등록 필수 | **긴급 이행** |
| **EU** | Implementing Regulation 2025/1234 — e-IFU 개정 | 2025-06-26 발효 | GUI SW — 전자 IFU 요건 업데이트 | 이행 |
| **FDA** | QMSR (21 CFR Part 820 개정) 기술 수정 | 2025-12-04 (179개 CFR 참조 정비) | QMS 절차서 참조 조항 업데이트 필요 | 이행 |
| **FDA** | Radiological Health Regulations Technical Amendments | 2025-09-18 | Handheld Source — 분산 제출 절차 변경 | 완료 |
| **MFDS** | 의료기기법 개정 (법률 제20888호) | 2025-08-01 | 등록·변경 신고 요건 확인 필요 | 모니터링 |
| **표준** | IEC 60601-2-54:2022 | 2022 발행, MFDS 인정 검토 | Detector — 시험 항목 업데이트 | 이행 중 |

---

## 7. 알림 우선순위 분류 기준

| 등급 | 기준 | 조치 |
|---|---|---|
| **🔴 Critical** | 법령 시행·강제 인증 기한 변경 / 제품 안전 기준 개정 | 48시간 이내 RA팀 검토 |
| **🟠 High** | 가이던스 초안 공개 (comment period) / 표준 Draft 발행 | 1주 이내 영향 평가 |
| **🟡 Medium** | 가이던스 최종 확정 (업계 이미 인지) / 해외 타 지역 변경 | 월간 정기 검토 |
| **🟢 Low** | 교육·정보성 공지 / 시행 2년 이상 남은 예정 변경 | 분기 정기 검토 |

---

## 8. 한계 및 보완 방안

| 한계 | 보완 방안 |
|---|---|
| MFDS 안내서 RSS가 모든 가이드라인을 즉시 반영하지 않을 수 있음 | `mfds.go.kr/brd/m_218` 주 1회 수동 확인 병행 |
| FDA 가이던스 전용 RSS 없음 | CDRH New 이메일 구독 + 최근 25개 가이던스 페이지 북마크 |
| MDCG 가이던스 EUR-Lex 미게재 (EC 직접 게시) | `health.ec.europa.eu` MDCG 페이지 주 1회 방문 |
| ISO/IEC 표준 공식 RSS 없음 (유료 구독 필요) | ISO 공식 abstract 페이지 + IECEE 뉴스레터 구독 |
| 한국 입법예고 자동 알림 부재 | `opinion.lawmaking.go.kr` 법제처 입법예고 사이트 RSS 구독 |
