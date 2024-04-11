@echo off
echo Booting into Command Line Mode...
title cmd.exe > NUL
reg add HKLM\SYSTEM\Setup /v CmdLine /t REG_SZ /d "" /f > NUL
reg add HKLM\SYSTEM\Setup /v OOBEInProgress /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SetupType /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SetupPhase /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SYSTEM\Setup /v SystemSetupInProgress /t REG_DWORD /d 0 /f > NUL
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /t REG_DWORD /d 0 /f
echo Successfully booted into Command Line Mode!