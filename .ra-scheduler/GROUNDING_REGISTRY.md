# 근거 그라운딩 레지스트리 (#102)

> 최종 갱신: 2026-06-09 (#102 citation 기반 그라운딩 1단계)
> 목적: 모든 AI 산출의 주장을 권위 1차 출처에 근거(grounding)시켜 환각을 억제. 무등록·검증된 엔드포인트만 신뢰원으로 채택.
> 단계: 1단계 = citation 레지스트리 + 인용 의무(현재). 2단계 = 벡터 RAG 검색(향후, #102 후속).

## 1. 신뢰 1차 출처 (검증·가동 확인 2026-06-09)
| 지역/주제 | 신뢰원 | 접근 | 상태 |
|---|---|---|---|
| FDA 규칙/가이던스 | Federal Register API | `federalregister.gov/api/v1` | ✅ 무등록 |
| FDA 기기 데이터 | openFDA | `api.fda.gov/device/*` (키) | ✅ |
| FDA 본문 | fda.gov / accessdata / ecfr.gov | WebFetch | ✅ |
| EU 법령/개정 | EUR-Lex Cellar SPARQL | `publications.europa.eu/webapi/rdf/sparql` | ✅ 무등록 |
| EU 가이던스 | health.ec.europa.eu (MDCG) | WebFetch | ✅ |
| 한국 법령/고시 | 국가법령정보 OPEN API | `law.go.kr/DRF/*` (OC) | ✅ |
| 한국 기기 데이터 | 공공데이터포털 | `apis.data.go.kr/1471000/*` (키) | ✅ |
| 표준 | iso.org / iec.ch abstract | WebFetch | ✅ |

> 비신뢰: .go.kr 게시판 HTML(JS 빈응답), 토큰 없는 EUR-Lex RSS(202/404) — 사용 금지.

## 2. 인용 의무 규칙
1. 모든 규제 사실 주장은 위 신뢰원의 구체 URL/CELEX/문서번호를 문서 상단 `근거:` 또는 인라인에 명시.
2. 신뢰원으로 확인 불가한 주장은 `[검증 필요]` + VERIFICATION_REGISTER 등록.
3. 2차 출처(컨설팅·뉴스)는 보조로만, 수치는 1차 대조 필수.

## 3. 2단계(향후) — 벡터 RAG
- KB 141문서 임베딩 인덱스 구축 → 작성 시 관련 근거 자동 검색·인용. 본 환경 외 별도 인프라 필요(후속 과제로 유지).
