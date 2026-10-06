@echo off
rem Issue queue processor - called by sync_auto.bat
rem  _issue_queue\new_*.json      -> POST /issues   (title, body, labels)
rem  _issue_queue\close_NNN.json  -> comment + label done + close issue NNN  ({"body":...})
rem  processed files move to _issue_queue\sent\ (201/200 only)
setlocal enabledelayedexpansion
set Q=%~dp0_issue_queue
set LOG=%~dp0sync_auto.log
if not exist "%Q%" exit /b 0
if not exist "%Q%\sent" mkdir "%Q%\sent"
set PAT=
for /f "usebackq tokens=1,* delims==" %%a in ("%~dp0.env.scheduler") do if "%%a"=="GITHUB_PAT" set PAT=%%~b
if "!PAT!"=="" (
  echo ISSUE_QUEUE: NO_PAT >> "%LOG%"
  exit /b 1
)
set API=https://api.github.com/repos/holee9/ra-project
for %%f in ("%Q%\new_*.json") do (
  curl.exe -s -o "%Q%\resp.json" -w "%%{http_code}" -X POST -H "Authorization: Bearer !PAT!" -H "Accept: application/vnd.github+json" --data-binary @"%%f" %API%/issues > "%Q%\code.txt"
  set /p C=<"%Q%\code.txt"
  echo ISSUE_NEW %%~nxf !C! >> "%LOG%"
  if "!C!"=="201" move /Y "%%f" "%Q%\sent\" >nul
)
for %%f in ("%Q%\close_*.json") do (
  set N=%%~nf
  set N=!N:close_=!
  curl.exe -s -o "%Q%\resp.json" -w "%%{http_code}" -X POST -H "Authorization: Bearer !PAT!" -H "Accept: application/vnd.github+json" --data-binary @"%%f" %API%/issues/!N!/comments > "%Q%\code.txt"
  set /p C=<"%Q%\code.txt"
  echo ISSUE_COMMENT !N! !C! >> "%LOG%"
  if "!C!"=="201" (
    curl.exe -s -o nul -X POST -H "Authorization: Bearer !PAT!" -H "Accept: application/vnd.github+json" --data "{\"labels\":[\"done\"]}" %API%/issues/!N!/labels
    curl.exe -s -o "%Q%\resp.json" -w "%%{http_code}" -X PATCH -H "Authorization: Bearer !PAT!" -H "Accept: application/vnd.github+json" --data "{\"state\":\"closed\",\"state_reason\":\"completed\"}" %API%/issues/!N! > "%Q%\code.txt"
    set /p C=<"%Q%\code.txt"
    echo ISSUE_CLOSE !N! !C! >> "%LOG%"
    if "!C!"=="200" move /Y "%%f" "%Q%\sent\" >nul
  )
)
set PAT=
endlocal
