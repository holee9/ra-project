@echo off
rem RA KB 자동 동기 — Windows git으로 커밋·푸시 (Claude 작업환경/Plan9 무관)
chcp 65001 >nul
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_auto.log
echo. >> %LOG%
echo === AUTO %DATE% %TIME% === >> %LOG%
git fetch origin >> %LOG% 2>&1
git merge-base --is-ancestor origin/main HEAD
if errorlevel 1 (
  echo STOP: 원격이 로컬보다 앞서 있거나 분기됨 - 수동 확인 필요 >> %LOG%
  exit /b 1
)
git add -A >> %LOG% 2>&1
git reset -q -- .ra-scheduler/ra-project-full.bundle
git diff --cached --quiet
if errorlevel 1 (
  git commit -m "maint(auto-sync): 스케줄 회차 산출물 동기 %DATE%" >> %LOG% 2>&1
) else (
  echo no_changes >> %LOG%
)
git push origin HEAD:main >> %LOG% 2>&1
if errorlevel 1 (
  echo PUSH_FAIL >> %LOG%
  exit /b 1
)
git rev-list --left-right --count HEAD...origin/main >> %LOG% 2>&1
echo PUSH_OK >> %LOG%
