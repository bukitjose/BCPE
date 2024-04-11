@echo off
echo MAKE SURE ALL FILES ARE IN C:\ DIRECTORY!
pause
title reboot-to-cmd-mode
echo Changing registry values...
reg add HKLM\SYSTEM\Setup /v CmdLine /t REG_SZ /d "cmd.exe /k C:\CmdLine.bat" /f
reg add HKLM\SYSTEM\Setup /v OOBEInProgress /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\Setup /v SetupType /t REG_DWORD /d 2 /f
reg add HKLM\SYSTEM\Setup /v SetupPhase /t REG_DWORD /d 4 /f
reg add HKLM\SYSTEM\Setup /v SystemSetupInProgress /t REG_DWORD /d 1 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /t REG_DWORD /d 0 /f
echo Successfully changed registry values!
echo Rebooting...
shutdown -r -t 5 -c "Rebooting Into Cmd Only Mode!" -f