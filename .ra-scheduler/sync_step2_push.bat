@echo off
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_step2.log
echo === STEP2 %DATE% %TIME% === > %LOG%
git diff --cached --quiet
if errorlevel 1 git commit -m "maint(sync): working tree sync after bundle f4c7f64 (quarterly#3 follow-up, auto-sync scripts, SOP 4-0)" >> %LOG% 2>&1
git log --oneline -6 >> %LOG% 2>&1
echo --- push --- >> %LOG%
git push origin HEAD:main >> %LOG% 2>&1
echo push_exit=%errorlevel% >> %LOG%
echo --- verify --- >> %LOG%
git fetch origin >> %LOG% 2>&1
git rev-parse --short HEAD >> %LOG% 2>&1
git rev-parse --short origin/main >> %LOG% 2>&1
git rev-list --left-right --count HEAD...origin/main >> %LOG% 2>&1
echo === STEP2 DONE === >> %LOG%
