@echo off
set LOG=%~dp0register_sync_task.log
echo === REGISTER %DATE% %TIME% === > "%LOG%"
schtasks /Create /F /TN "RA-KB-GitSync-Daily" /SC DAILY /ST 10:00 /TR "\"%~dp0sync_auto.bat\"" >> "%LOG%" 2>&1
schtasks /Create /F /TN "RA-KB-GitSync-Logon" /SC ONLOGON /TR "\"%~dp0sync_auto.bat\"" >> "%LOG%" 2>&1
schtasks /Query /TN "RA-KB-GitSync-Daily" /FO LIST >> "%LOG%" 2>&1
schtasks /Query /TN "RA-KB-GitSync-Logon" /FO LIST >> "%LOG%" 2>&1
echo === DONE === >> "%LOG%"
