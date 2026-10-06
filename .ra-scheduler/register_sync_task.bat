@echo off
chcp 65001 >nul
rem 매일 10:00 sync_auto.bat 실행 작업 등록 (PC 꺼져 있었으면 다음 부팅 후 실행 안 됨 → 로그온 시 1회 추가)
schtasks /Create /F /TN "RA-KB-GitSync-Daily" /SC DAILY /ST 10:00 /TR "\"%~dp0sync_auto.bat\""
schtasks /Create /F /TN "RA-KB-GitSync-Logon" /SC ONLOGON /TR "\"%~dp0sync_auto.bat\""
schtasks /Query /TN "RA-KB-GitSync-Daily"
schtasks /Query /TN "RA-KB-GitSync-Logon"
pause
