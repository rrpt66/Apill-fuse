@echo off
:getadmin
@echo off

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------   
cls
:valo
@echo off
title Question
cls
echo boost valorant??
SET /p choix=" yes or No  >  "
if %choix%== yes Goto :valob
if %choix%== no Goto :menu
:valob
title Question
echo loadding
ping -n 4 127.0.0.1>nul
echo boost
ping -n 2 127.0.0.1>nul
title boost valorant
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "HeadShot" /t REG_QWORD /d "0x0100000000000000" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "leftclick" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "run" /t REG_SZ /d "C:\Riot Games\VALORANT\live\VALORANT.exe" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "moveup" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "movedown" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "down" /t REG_SZ /d "REGQWORD  movedown x" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "DisableHeadShot" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "100" /t REG_SZ /d "REGQWORD HeadShot100%%" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "2000" /t REG_SZ /d "REGQWORD Showplayer" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "3000" /t REG_SZ /d "REGQWORD Disable HeadShot0%%" /f
goto menu
:menu
exit