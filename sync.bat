@echo off
REM RA project GitHub sync - robust version with auto-recovery and logging
setlocal enabledelayedexpansion
cd /d "%~dp0"

REM Redirect all output to both console and sync.log
call :MAIN > sync.log 2>&1
type sync.log
echo.
echo ============================================
echo Log saved: sync.log  (share with Claude if issue occurs)
echo ============================================
pause
exit /b 0

:MAIN
echo ============================================
echo  RA project GitHub Sync  %DATE% %TIME%
echo ============================================
echo.

set REPO_URL=https://github.com/holee9/ra-project.git
set GIT_USER=holee9
set GIT_EMAIL=hnabyz2023@gmail.com

REM --- 1. git install check
where git >nul 2>&1
if errorlevel 1 (
    echo [ERROR] git not found. Install from https://git-scm.com/download/win
    exit /b
)

REM --- 2. First-run init
if not exist ".git" (
    echo [INIT] Initializing git repository...
    git init
    git branch -M main
    git config user.name "%GIT_USER%"
    git config user.email "%GIT_EMAIL%"
    git config credential.helper store
    git remote add origin %REPO_URL%
    echo [INIT] Fetching pre-existing remote (README)...
    git fetch origin main
    if not errorlevel 1 (
        echo [INIT] Merging local tree over remote base...
        git reset --soft origin/main
    )
    echo.
)

REM --- 3. Show status
echo [STATUS] Changes to commit:
git status --short
echo.

REM --- 4. Commit message
set COMMIT_MSG=
set /p COMMIT_MSG="Commit message (Enter = auto): "
if "%COMMIT_MSG%"=="" set COMMIT_MSG=update: knowledge base sync %DATE% %TIME%

REM --- 5. Stage
echo.
echo [ADD] Staging all changes...
git add -A

REM --- 6. Commit
echo [COMMIT] %COMMIT_MSG%
git commit -m "%COMMIT_MSG%"
if errorlevel 1 (
    echo [INFO] Nothing new to commit. Continuing to push.
)

REM --- 7. Push with auto-recovery
echo.
echo [PUSH] Pushing to origin/main...
git push -u origin main
if errorlevel 1 (
    echo.
    echo [RECOVERY] Push failed. Attempting pull --allow-unrelated-histories...
    git pull origin main --allow-unrelated-histories --no-edit
    if errorlevel 1 (
        echo [ERROR] Pull failed. Manual intervention required.
        echo   Run: git status
        echo   Check sync.log for details.
        exit /b
    )
    echo [PUSH-RETRY] Re-pushing after merge...
    git push -u origin main
    if errorlevel 1 (
        echo [ERROR] Second push failed. Check auth/network.
        echo   Verify .git-credentials: C:\Users\%USERNAME%\.git-credentials
        exit /b
    )
)

echo.
echo ============================================
echo  DONE. View: https://github.com/holee9/ra-project
echo ============================================
exit /b
