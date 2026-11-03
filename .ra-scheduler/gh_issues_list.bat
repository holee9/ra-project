@echo off
REM 이슈 현황 조회 (읽기 전용 — 생성·수정·close 일절 없음)
REM 결과: .ra-scheduler\_issue_tmp\issues_open.json / issues_closed.json / issues_summary.txt
setlocal
cd /d "%~dp0"
if not exist _issue_tmp mkdir _issue_tmp
set PAT=
for /f "usebackq tokens=1,* delims==" %%a in (".env.scheduler") do if "%%a"=="GITHUB_PAT" set PAT=%%~b
if "%PAT%"=="" (echo NO_PAT > _issue_tmp\issues_summary.txt & exit /b 1)
set API=https://api.github.com/repos/holee9/ra-project
set H1=Authorization: Bearer %PAT%
set H2=Accept: application/vnd.github+json
curl.exe -s -o _issue_tmp\issues_open.json   -w "open   %%{http_code}\n" -H "%H1%" -H "%H2%" "%API%/issues?state=open&per_page=100"  >  _issue_tmp\issues_summary.txt
curl.exe -s -o _issue_tmp\issues_closed.json -w "closed %%{http_code}\n" -H "%H1%" -H "%H2%" "%API%/issues?state=closed&per_page=100&sort=created&direction=desc" >> _issue_tmp\issues_summary.txt
set PAT=
echo DONE >> _issue_tmp\issues_summary.txt
endlocal
