@echo off
cd /d "%~dp0_issue_tmp"
set LOG=gh_issues.log
if exist DONE.marker (
  echo ALREADY_DONE - skip to avoid duplicates > %LOG%
  exit /b 0
)
set PAT=
for /f "usebackq tokens=1,* delims==" %%a in ("%~dp0.env.scheduler") do if "%%a"=="GITHUB_PAT" set PAT=%%~b
if "%PAT%"=="" (
  echo NO_PAT > %LOG%
  exit /b 1
)
set API=https://api.github.com/repos/holee9/ra-project
set H1=Authorization: Bearer %PAT%
set H2=Accept: application/vnd.github+json
echo === GH %DATE% %TIME% === > %LOG%
for %%f in (l1 l2 l3 l4 l5 l6) do (
  curl.exe -s -o r_%%f.json -w "label %%f %%{http_code}\n" -X POST -H "%H1%" -H "%H2%" --data-binary @%%f.json %API%/labels >> %LOG%
)
for %%f in (i1 i2 i3) do (
  curl.exe -s -o r_%%f.json -w "issue %%f %%{http_code}\n" -X POST -H "%H1%" -H "%H2%" --data-binary @%%f.json %API%/issues >> %LOG%
)
for %%n in (116 117) do (
  curl.exe -s -o r_c%%n.json -w "comment %%n %%{http_code}\n" -X POST -H "%H1%" -H "%H2%" --data-binary @c%%n.json %API%/issues/%%n/comments >> %LOG%
  curl.exe -s -o r_d%%n.json -w "label_done %%n %%{http_code}\n" -X POST -H "%H1%" -H "%H2%" --data-binary @done.json %API%/issues/%%n/labels >> %LOG%
  curl.exe -s -o r_x%%n.json -w "close %%n %%{http_code}\n" -X PATCH -H "%H1%" -H "%H2%" --data-binary @close.json %API%/issues/%%n >> %LOG%
)
echo created > DONE.marker
set PAT=
echo === END === >> %LOG%
