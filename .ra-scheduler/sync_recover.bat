@echo off
REM auto-sync 가드 정지(STOP) 복구 — behind 상태일 때만 fast-forward 한다.
REM 머지·리베이스·리셋을 하지 않는다. 로컬에 커밋/변경이 있으면 멈추고 사람을 부른다.
setlocal
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_recover.log
echo === RECOVER %DATE% %TIME% === >> %LOG%
git fetch origin >> %LOG% 2>&1
for /f %%i in ('git status --porcelain ^| find /c /v ""') do set DIRTY=%%i
if not "%DIRTY%"=="0" (
  echo STOP: 로컬 미커밋 변경 %DIRTY%건 - 사람 확인 필요 >> %LOG%
  exit /b 2
)
git merge-base --is-ancestor HEAD origin/main
if errorlevel 1 (
  echo STOP: 로컬이 behind 가 아님 - 분기 가능성, 사람 확인 필요 >> %LOG%
  exit /b 3
)
git merge --ff-only origin/main >> %LOG% 2>&1
if errorlevel 1 (
  echo FF_FAIL >> %LOG%
  exit /b 1
)
for /f "tokens=1,2" %%a in ('git rev-list --left-right --count HEAD...origin/main') do echo drift %%a %%b >> %LOG%
echo RECOVER_OK >> %LOG%
endlocal
