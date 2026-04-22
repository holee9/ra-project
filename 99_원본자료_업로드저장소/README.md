# 원본자료 업로드 저장소

## 용도
분류 전 원본 자료의 임시 저장소. 업로드 후 Claude가 분류 작업을 수행하여 적합한 폴더로 이동시킨다.

## 파일명 규칙
`[YYYYMMDD]_[출처]_[제목].확장자`

예시:
- `20260422_MFDS_의료용Xray기술문서작성가이드.pdf`
- `20260422_FDA_SolidStateXrayImager_Guidance.pdf`
- `20260422_사내_XD1000_RiskManagementFile.docx`

## 분류 요청 방법
업로드 완료 후 Claude에게 다음과 같이 지시:
- "99 폴더에 업로드된 파일 분류해줘"
- 또는 특정 파일 지정: "20260422_MFDS_*.pdf 분류해줘"
