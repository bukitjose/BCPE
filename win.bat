@echo off
title Rebooting...
reg add HKLM\SYSTEM\Setup /v CmdLine /t REG_SZ /d "" /f > NUL
reg add HKLM\SYSTEM\Setup /v OOBEInProgress /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SetupType /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SetupPhase /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SystemSetupInProgress /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /t REG_DWORD /d 1 /f > NUL
echo Rebooting...
shutdown -r -t 0 -f