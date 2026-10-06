@echo off
chcp 65001 >nul
cd /d "%~dp0.."
set LOG=.ra-scheduler\sync_step1.log
echo === STEP1 %DATE% %TIME% === > %LOG%
echo --- stale lock (2026-09-10, 0B) move to .git\_stale --- >> %LOG%
if exist .git\index.lock move /Y .git\index.lock .git\_stale\index.lock.20260910 >> %LOG% 2>&1
if exist .git\ORIG_HEAD.lock move /Y .git\ORIG_HEAD.lock .git\_stale\ORIG_HEAD.lock.20260910 >> %LOG% 2>&1
git --version >> %LOG% 2>&1
echo --- remote url (masked check) --- >> %LOG%
git config --get remote.origin.url | findstr "@" >nul && echo WARN_CRED_IN_URL >> %LOG% || echo url_ok >> %LOG%
echo --- HEAD before --- >> %LOG%
git rev-parse --short HEAD >> %LOG% 2>&1
git branch --show-current >> %LOG% 2>&1
echo --- fetch origin --- >> %LOG%
git fetch origin >> %LOG% 2>&1
git rev-parse --short origin/main >> %LOG% 2>&1
echo --- bundle verify --- >> %LOG%
git bundle verify .ra-scheduler\ra-project-full.bundle >> %LOG% 2>&1
git fetch .ra-scheduler\ra-project-full.bundle main:refs/remotes/bundle/main --force >> %LOG% 2>&1
git log --oneline -5 bundle/main >> %LOG% 2>&1
echo --- is origin/main ancestor of bundle/main --- >> %LOG%
git merge-base --is-ancestor origin/main bundle/main && echo ANCESTOR_OK >> %LOG% || echo ANCESTOR_FAIL >> %LOG%
echo --- safety backup branch of old HEAD --- >> %LOG%
git branch -f backup/pre-sync-20261006 HEAD >> %LOG% 2>&1
echo --- move HEAD to bundle/main keeping working tree --- >> %LOG%
git reset --mixed bundle/main >> %LOG% 2>&1
git add -A >> %LOG% 2>&1
git reset -q -- .ra-scheduler/ra-project-full.bundle .ra-scheduler/sync_step1_prepare.bat .ra-scheduler/sync_step2_push.bat
echo --- staged diff vs bundle tip --- >> %LOG%
git diff --cached --stat >> %LOG% 2>&1
echo --- staged name-status --- >> %LOG%
git diff --cached --name-status >> %LOG% 2>&1
echo === STEP1 DONE === >> %LOG%
