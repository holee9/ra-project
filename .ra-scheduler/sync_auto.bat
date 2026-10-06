@echo off
rem RA KB auto sync - commit/push with Windows git (independent of Claude workspace)
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_auto.log
echo. >> %LOG%
echo === AUTO %DATE% %TIME% === >> %LOG%
git fetch origin >> %LOG% 2>&1
git merge-base --is-ancestor origin/main HEAD
if errorlevel 1 (
  echo STOP: origin/main is not ancestor of HEAD - manual check needed >> %LOG%
  exit /b 1
)
git add -A >> %LOG% 2>&1
git reset -q -- .ra-scheduler/ra-project-full.bundle
git diff --cached --quiet
if errorlevel 1 git commit -m "maint(auto-sync): scheduled run outputs %DATE%" >> %LOG% 2>&1
git push origin HEAD:main >> %LOG% 2>&1
if errorlevel 1 (
  echo PUSH_FAIL >> %LOG%
  exit /b 1
)
git rev-list --left-right --count HEAD...origin/main >> %LOG% 2>&1
echo PUSH_OK >> %LOG%
