# GitHub 연동·동기화 가이드

## 연동 방식 (2026-04-22 확정)

### 주 경로: Claude 직접 Push (GitHub REST API)
Claude가 Chrome 브라우저 컨텍스트에서 `fetch()`로 GitHub REST API를 호출하여 직접 push.
- 인증: `C:\Users\drake.lee\.git-credentials` 파일의 PAT 사용
- 지시자 조치 불필요 (Claude 작업 후 자동 반영)

### 부 경로: sync.bat (백업용)
Chrome 미연결 또는 Claude 세션 외부 변경 발생 시 `sync.bat` 더블클릭으로 수동 sync.

## 운영

### Claude 직접 push (상시)
Claude가 파일 생성·수정 후 GitHub API로 commit/push 실행.
사용자 확인: <https://github.com/holee9/ra-project>

### sync.bat 수동 사용 (예외)
다음 경우에만 사용:
- 지시자가 로컬에서 직접 파일 편집한 경우
- Chrome 연결 불가한 Claude 세션

실행: 파일 탐색기에서 `sync.bat` 더블클릭 → 엔터

## 문제 해결

### 401 / 403 인증 오류
- `.git-credentials` PAT 만료 또는 권한 부족
- GitHub → Settings → Developer settings → Personal access tokens 에서 PAT 재발급 (`repo` 권한 필수)
- 파일 갱신: `C:\Users\drake.lee\.git-credentials`
  형식: `https://holee9:<PAT>@github.com`

### Chrome 연결 안됨
- Claude 확장 아이콘 클릭 → "Connect"
- 다중 Chrome 실행 시 원하는 브라우저의 확장에서 Connect

### sync.bat에서 `refusing to merge unrelated histories`
sync.bat이 자동 복구. 로그 `sync.log`에 `[RECOVERY]` 줄 확인.

### 기타 오류
`sync.log` 내용을 Claude에 공유 → 원인 분석

## 검증 방법

Claude에게 "레포 확인해줘" 요청 → Claude가 GitHub API로 최신 커밋·파일 상태 조회·보고.
