@echo off
rem RA KB auto sync - commit/push with Windows git (independent of Claude workspace)
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_auto.log
echo. >> %LOG%
echo === AUTO %DATE% %TIME% === >> %LOG%
git fetch origin >> %LOG% 2>&1

rem divergence self-heal: fast-forward when behind and clean, then re-check
git merge-base --is-ancestor origin/main HEAD
if not errorlevel 1 goto ancestor_ok
echo DIVERGED: attempting sync_recover >> %LOG%
call "%~dp0sync_recover.bat" >> %LOG% 2>&1
git merge-base --is-ancestor origin/main HEAD
if not errorlevel 1 goto recovered
echo STOP: origin/main is not ancestor of HEAD - manual check needed >> %LOG%
exit /b 1
:recovered
echo RECOVERED: fast-forward applied >> %LOG%
:ancestor_ok

git add -A >> %LOG% 2>&1
git reset -q -- .ra-scheduler/ra-project-full.bundle
git diff --cached --quiet
if not errorlevel 1 goto nothing_to_commit

rem SOP 2-E loading gate: no commit unless verify_facts.py passes
set GATEPY=
where python >nul 2>&1
if not errorlevel 1 set GATEPY=python
if not "%GATEPY%"=="" goto gate_run
where py >nul 2>&1
if not errorlevel 1 set GATEPY=py -3
if not "%GATEPY%"=="" goto gate_run
echo GATE_SKIP: python not found - commit blocked by SOP 2-E >> %LOG%
git reset -q
exit /b 1
:gate_run
%GATEPY% .ra-scheduler\verify_facts.py --offline >> %LOG% 2>&1
if not errorlevel 1 goto gate_pass
echo GATE_FAIL: verify_facts.py exit non-zero - commit aborted >> %LOG%
git reset -q
exit /b 1
:gate_pass
echo GATE_PASS >> %LOG%
git commit -m "maint(auto-sync): scheduled run outputs %DATE%" >> %LOG% 2>&1
:nothing_to_commit

git push origin HEAD:main >> %LOG% 2>&1
if errorlevel 1 (
  echo PUSH_FAIL >> %LOG%
  exit /b 1
)
git rev-list --left-right --count HEAD...origin/main >> %LOG% 2>&1
echo PUSH_OK >> %LOG%
call "%~dp0sync_issues.bat"
