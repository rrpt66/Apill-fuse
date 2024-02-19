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
@echo off

:menu

set getcolor=color 0
set Version=1.4
set choix=bysiwat
title Apill-fuse Fusion ZERZAX ZERZAX is old version 
color 0
cls
@echo off
setlocal

:end
rem ส่วนที่จะทำงานเมื่อมี C:\Program Files\Git
:f11
rem use F11
goto menu2

:menu2
rem ส่วนที่จะทำงานเมื่อมี C:\Program Files\Git
echo Entering menu...
rem ทำสิ่งที่คุณต้องการทำที่นี่
goto menu
:menu
move update.bat %temp%
chcp 65001
cls
cls
color 0
cls
set credit=powershell.exe Write-Host "----------------------------------------------By siwat" -ForegroundColor Green
set color=powershell.exe Write-Host "----------------------------------------------Tab:1" -ForegroundColor Red
echo ═════════════════════════════════════════════════════════════════════════════════════════════════════
echo              ░█████╗░██████╗░██╗██╗░░░░░██╗░░░░░░░░░░░███████╗██╗░░░██╗░██████╗███████╗
echo              ██╔══██╗██╔══██╗██║██║░░░░░██║░░░░░░░░░░░██╔════╝██║░░░██║██╔════╝██╔════╝
echo              ███████║██████╔╝██║██║░░░░░██║░░░░░█████╗█████╗░░██║░░░██║╚█████╗░█████╗░░  
echo              ██╔══██║██╔═══╝░██║██║░░░░░██║░░░░░╚════╝██╔══╝░░██║░░░██║░╚═══██╗██╔══╝░░
echo              ██║░░██║██║░░░░░██║███████╗███████╗░░░░░░██║░░░░░╚██████╔╝██████╔╝███████╗
echo              ╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚══════╝░░░░░░╚═╝░░░░░░╚═════╝░╚═════╝░╚══════╝  
echo                   ═══════════════════════════════════════════════════════════════════
echo                   ║ [1] clean file                   ║ [16] Keyboard                ║         
echo                   ║ [2] Remote                       ║ [17] Boost NVIDIA            ║ Hello %username% !
echo                   ║ [3] roblox                       ║ [18] ultra boost cpu         ║ 
echo                   ║ [4] GameModeoff                  ║ [19] Disable ultra Boostcpu  ║
echo                   ║ [5] Gamemodeon                   ║ [20] Low ping                ║ 
echo                   ║ [6] START BACK UP                ║ [21] join discord            ║ 
echo                   ║ [7] Restart                      ║ [22] intel boost             ║ 
echo                   ║ [8] Check ping                   ║ [23] AMD boost               ║ 
echo                   ║ [9] COMPUTER Check               ║ [24] cpu low runnig          ║
echo                   ║ [10] fixed error windows file    ║ [25] clear log file          ║
echo                   ║ [11] Backup                      ║ [26] boost valorant          ║
echo                   ║ [12] FULL CLEAN                  ║ [27] start Setting scan virus║                   
echo                   ║ [13] edit power plan             ║ [28] start Riot              ║ 
echo                   ║ [14] Boost cpu                   ║ [29] report bug              ║ 
echo                   ║ [15] mouse                       ║ [30] task manager            ║ 002 UPDATE
echo                   ║ [funtcion] not found             ║ [31] Boost real time ::beta  ║ 000 credit 
echo                   ║ [33] more                        ║ [32] Protect against spyware ║ 
echo                   ═══════════════════════════════════════════════════════════════════   
%color%
%credit%
echo                                          Current Version:%Version%
echo ═════════════════════════════════════════════════════════════════════════════════════════════════════ 
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :clean
if %choix%== 2 Goto :remoteZ
if %choix%== 3 Goto :roblox1
if %choix%== 4 Goto :Gamemodeoff
if %choix%== 5 Goto :Gamemodeon
if %choix%== 6 Goto :Notebook
if %choix%== 7 Goto :shd
if %choix%== 8 goto :ping
if %choix%== 9 goto :cpt
if %choix%== 10 goto :fixed
if %choix%== 12 goto :fullclean
if %choix%== 13 goto :power
if %choix%== 14 goto :cpu
if %choix%== 15 goto :mouse
if %choix%== 16 goto :Keyboard
if %choix%== 17 goto :nvidia
if %choix%== 18 goto :cpuboos
if %choix%== 19 goto :discup
if %choix%== 20 goto :lowp
if %choix%== 21 goto :discord
if %choix%== 22 goto :intel
if %choix%== 23 goto :AMD
if %choix%== 24 goto :lowcpu
if %choix%== 25 goto :log
if %choix%== 26 goto :valo
if %choix%== 27 goto :virus
if %choix%== 28 goto :valorantStart
if %choix%== 29 goto :bug
if %choix%== 30 goto :task
if %choix%== 000 goto :www
if %choix%== 001 goto :wwwr
if %choix%== 31 goto :boost
if %choix%== 002 goto :files
if %choix%== 32 goto :virus
if %choix%== 33 goto :more
goto please
:virus
del /s /q Apill-fuse-Protect-against-spyware.exe
cls
TIMEOUT 2 /nobreak > nul 
echo UPDATE...................
echo @echo off >Dowload.bat
echo powershell.exe Invoke-WebRequest -Uri "https://github.com/rrpt66/Apill-fuse/raw/main/Apill-fuse-Protect-against-spyware.bat" -OutFile "Apill-fuse-Protect-against-spyware.exe" >>Dowload.bat
echo exit >>Dowload.bat
TIMEOUT 2 /nobreak > nul 
start Dowload.bat
TIMEOUT 7 /nobreak >nul
move Dowload.bat %temp%
call Apill-fuse-Protect-against-spyware.exe
exit /b
:files
echo @echo off >update.bat
echo del /s /q Apill-fuse.bat >>update.bat
echo powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/rrpt66/Apill-fuse/main/Apill-fuse.bat" -OutFile "Apill-fuse.bat" >>update.bat
echo call Apill-fuse.bat >>update.bat
Start update.bat
exit
:boost
cls
echo Boost real time 
SET /p boost="Boost  yes or no ?>  "
powershell -WindowStyle Hidden -Command "& {}"
echo x=msgbox("Boost" ,0, "BOOST-RUNNIG") > Realtime.vbs 
start Realtime.vbs 
:yes
mkdir Boost
cd Boost
title Boost realtime
echo x=msgbox("Boost" ,0, "Successful") >> BOOST%random%.vbs 
goto yes
:no
goto menu
:www
start https://github.com/rrpt66
goto menu
:task
@echo off
title find task manager
echo Find task manager
timeout /t 3 /nobreak > NUL
title start task manager
echo Starting......
timeout /t 5 /nobreak > NUL
taskmgr
goto menu
:bug
color 0
title report bug
SET /p bug=" enter bug  >  "
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST https://discord.com/api/webhooks/... --data "{\"content\": \"%bug%\"}" https://discord.com/api/webhooks/1181283255018864821/BX7KseLsgA1pLRAXPW-7qASo-XSrEC0RKe96Me-xVu7ijwMCNFyIR05uSVXtGDjVmyCO
goto menu
:valorantStart
@echo off
cls
:CheckInterNet
cls
title Check Inter net
echo check inter net

rem ตรวจสอบการเชื่อมต่ออินเทอร์เน็ต
@echo off
ping 8.8.8.8 -n 1 -l 32 >nul
if errorlevel 1 (  
chcp 65001
echo ███╗░░██╗░█████╗░░░░░░░██╗███╗░░██╗████████╗███████╗██████╗░░░░░░░███╗░░██╗███████╗████████╗
echo ████╗░██║██╔══██╗░░░░░░██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗░░░░░░████╗░██║██╔════╝╚══██╔══╝
echo ██╔██╗██║██║░░██║█████╗██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝█████╗██╔██╗██║█████╗░░░░░██║░░░
echo ██║╚████║██║░░██║╚════╝██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗╚════╝██║╚████║██╔══╝░░░░░██║░░░
echo ██║░╚███║╚█████╔╝░░░░░░██║██║░╚███║░░░██║░░░███████╗██║░░██║░░░░░░██║░╚███║███████╗░░░██║░░░
echo ╚═╝░░╚══╝░╚════╝░░░░░░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝░░░░░░╚═╝░░╚══╝╚══════╝░░░╚═╝░░░
  timeout 16 >nul
  goto menu
) else (
  echo Internet connection active.
)
:checkProgram
title Check Program Riot
cd C:\Riot Games\Riot Client
for %%i in (*RiotClientServices.exe) do (
  if exist "%%i" (
    echo "File %%i exists."
	cls
chcp 65001	 
echo ██████╗░██╗░█████╗░████████╗  ██╗░██████╗  ██████╗░███████╗░█████╗░██████╗░██╗░░░██╗
echo ██╔══██╗██║██╔══██╗╚══██╔══╝  ██║██╔════╝  ██╔══██╗██╔════╝██╔══██╗██╔══██╗╚██╗░██╔╝
echo ██████╔╝██║██║░░██║░░░██║░░░  ██║╚█████╗░  ██████╔╝█████╗░░███████║██║░░██║░╚████╔╝░
echo ██╔══██╗██║██║░░██║░░░██║░░░  ██║░╚═══██╗  ██╔══██╗██╔══╝░░██╔══██║██║░░██║░░╚██╔╝░░
echo ██║░░██║██║╚█████╔╝░░░██║░░░  ██║██████╔╝  ██║░░██║███████╗██║░░██║██████╔╝░░░██║░░░
echo ╚═╝░░╚═╝╚═╝░╚════╝░░░░╚═╝░░░  ╚═╝╚═════╝░  ╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░
 goto startProgram ) else (
    echo "File %%i does not exist."
	cls
	echo you Dont have Riot or you Riot UPDATE
	TIMEOUT 4 > nul
  )
)
:startProgram
rem กำหนดชื่อโปรแกรมที่ต้องการเปิด
cd C:\Riot Games\Riot Client
set program="RiotClientServices.exe"
cls
title start-program
rem เปิดโปรแกรม
echo ██████╗░██╗░█████╗░████████╗  ██████╗░██╗░░░██╗███╗░░██╗███╗░░██╗██╗███╗░░██╗░██████╗░
echo ██╔══██╗██║██╔══██╗╚══██╔══╝  ██╔══██╗██║░░░██║████╗░██║████╗░██║██║████╗░██║██╔════╝░
echo ██████╔╝██║██║░░██║░░░██║░░░  ██████╔╝██║░░░██║██╔██╗██║██╔██╗██║██║██╔██╗██║██║░░██╗░
echo ██╔══██╗██║██║░░██║░░░██║░░░  ██╔══██╗██║░░░██║██║╚████║██║╚████║██║██║╚████║██║░░╚██╗
echo ██║░░██║██║╚█████╔╝░░░██║░░░  ██║░░██║╚██████╔╝██║░╚███║██║░╚███║██║██║░╚███║╚██████╔╝
echo ╚═╝░░╚═╝╚═╝░╚════╝░░░░╚═╝░░░  ╚═╝░░╚═╝░╚═════╝░╚═╝░░╚══╝╚═╝░░╚══╝╚═╝╚═╝░░╚══╝░╚═════╝░
timeout 6 > nul 
start "" "%program%"
goto menu
:virus
start windowsdefender://threat
goto menu
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
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "HeadShot100%%" /t REG_QWORD /d "0x0100000000000000" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "Show Player" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "run" /t REG_SZ /d "C:\Riot Games\VALORANT\live\VALORANT.exe" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "movehead" /t REG_SZ /d "regqword moveup y" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "moveup y" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "movedown x" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "down" /t REG_SZ /d "REGQWORD  movedown x" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "Disable HeadShot0%%" /t REG_DWORD /d "3" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "100" /t REG_SZ /d "REGQWORD HeadShot100%%" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "2000" /t REG_SZ /d "REGQWORD Showplayer" /f
Reg.exe add "HKCU\Software\ChangeTracker\Valorant" /v "3000" /t REG_SZ /d "REGQWORD Disable HeadShot0%%" /f
goto menu
:log
Mode 50,40
setlocal > APB_Log.txt
endlocal
setlocal
echo Successful(enter)
pause >NUL
goto menu
:fixed
@echo off
cd %systemroot%\system32
chcp 65001 >nul 2>&1
Mode 120,30
:: Blank/Color Character
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
cls
echo                                            ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                                                   To Windows FIX by Siwat 
echo                                            ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.
echo                                            ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo                                                   Press ENTER to continue   
echo                                            ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.  
echo.
pause > nul

@echo off

cls

:: Repair Windows Script


:: Repair Windows Update components
DISM.exe /Online /Cleanup-image /Restorehealth

:: Repair system files
sfc /scannow

:: Repair Windows Firewall
netsh advfirewall reset


:: Clear temporary files
del /F /Q %temp%\*

:: Rebuild icon cache
ie4uinit.exe -ClearIconCache
taskkill /IM explorer.exe /F
DEL "%localappdata%\IconCache.db" /A
start explorer.exe

:: Re-register Windows Store apps
powershell -Command "Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"

:: Re-register Windows system apps
for /f "delims=" %%G in ('dir /b %windir%\AppxManifest.xml') do (
    echo Processing: %%G
    start /w powershell -command "Add-AppxPackage -DisableDevelopmentMode -Register $env:windir\AppxManifest.xml"
)

:: Fix common Windows issues
DISM.exe /Online /Cleanup-Image /CheckHealth
DISM.exe /Online /Cleanup-Image /ScanHealth


:: DLL registration
for %%i in (%windir%\system32\*.dll) do regsvr32.exe /s "%%i"
for %%i in (%windir%\syswow64\*.dll) do regsvr32.exe /s "%%i"

:: Disk and boot-related repairs
chkdsk C: /f /r /x
bootrec /fixmbr
bootrec /fixboot
bootrec /rebuildbcd

:: Clear DNS cache
ipconfig /flushdns

:: Reset Winsock Catalog
netsh winsock reset

:: Reset TCP/IP stack
netsh int ip reset

:: Reset network adapters
netsh winsock reset catalog
netsh int ipv4 reset reset.log
netsh int ipv6 reset reset.log

:: Reset Wi-Fi configuration
netsh int ip reset reset.log

:: Flush ARP cache
netsh interface ip delete arpcache

:: Reset network settings
netsh winsock reset all
netcfg -d
ipconfig /release
ipconfig /renew

echo Windows repair tasks completed.

cls

::Finished

cd %systemroot%\system32
chcp 65001 >nul 2>&1
cls
color 9


echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                               ███████╗██╗███╗░░██╗██╗░██████╗██╗░░██╗███████╗██████╗░  ██╗██╗██╗
echo                               ██╔════╝██║████╗░██║██║██╔════╝██║░░██║██╔════╝██╔══██╗  ██║██║██║
echo                               █████╗░░██║██╔██╗██║██║╚█████╗░███████║█████╗░░██║░░██║  ██║██║██║
echo                               ██╔══╝░░██║██║╚████║██║░╚═══██╗██╔══██║██╔══╝░░██║░░██║  ╚═╝╚═╝╚═╝
echo                               ██║░░░░░██║██║░╚███║██║██████╔╝██║░░██║███████╗██████╔╝  ██╗██╗██╗
echo                               ╚═╝░░░░░╚═╝╚═╝░░╚══╝╚═╝╚═════╝░╚═╝░░╚═╝╚══════╝╚═════╝░  ╚═╝╚═╝╚═╝
echo.
echo.
echo.
echo.
echo.
echo                                               Do you want to Restart your PC ?     
echo                                       Press [Y] to Restart your PC , Press [N] To EXIT  
echo.
echo.
echo.
echo.

@ECHO Off

    

    SET /P yesno=Choose Your Option:
    IF "%yesno%"=="y" GOTO Confirmation
    IF "%yesno%"=="Y" GOTO Confirmation
    IF "%yesno%"=="n" GOTO End
    IF "%yesno%"=="N" GOTO End
    
    :Confirmation
    
    ECHO System is going to Restart now
    
    shutdown /r /t 0 
    
    GOTO EOF
    :End
    
    ECHO System Restart cancelled
    
    TIMEOUT 5 >nul
    
    :EOF
    exit
:plese
cls
echo please selected
ping -n 4 127.0.0.1>nul
goto menu
:BACKUP
goto backup

:discup
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt 
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f > APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "5" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "4" /f >> APB_Log.txt
goto menu
:commingsoon
cls
echo commingsoon
pause
ping -n 5 127.0.0.1>nul
xcopy APB_log.txt 
goto menu
:lowp
cls
:NetworkTweaks
cls
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Network" /v "setnetwork" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Network" /v "network" /t REG_SZ /d "set locallow set host127.0.0.1" /f >NUL
Reg.exe add "HKCU\Network" /v "run" /t REG_SZ /d "REG_QWORD setnetwork" /f >NUL
cls
echo reset inter network ?
echo 1 reset network   2 noreset
set /p choix=
if %choix%== 1 goto :reset
if %choix%== 2 goto :nettot
:reset
Reg.exe add "HKLM\SOFTWARE\Google\Chrome\IP target" /v "run" /t REG_SZ /d "REG_QWORD setnetwork" /f
Reg.exe add "HKLM\SOFTWARE\Google\Chrome\IP target" /v "setnetwork" /t REG_SZ /d "set locallow set host 216.58.200.4" /f
:: Reset Internet
echo Resetting Internet
ipconfig /release          
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh int ipv4 reset
netsh int ipv6 reset
netsh int tcp reset
netsh winsock reset
netsh advfirewall reset
netsh branchcache reset
netsh http flush logbuffer
ipconfig /release 
goto nettot
:fullclean
cls
@echo off
echo Cleaning PC...
del /s /q Clear.bat
cls
powershell.exe Invoke-WebRequest -Uri "https://raw.githubusercontent.com/rrpt66/cc/main/Clear.bat" -OutFile "Clear.bat"
start /wait Clear.bat
ping -n 4.5 127.0.0.1>nul
@echo off
cls
TIMEOUT 3 /nobreak > nul
cls
echo Check files.....
TIMEOUT 3 /nobreak > nul
@echo off
cls
rem กำหนดค่าตัวแปร
set temp_folder=%temp%

rem ค้นหาไฟล์ทั้งหมดในโฟลเดอร์ Temp
for /f "delims=" %%i in ('dir /b %temp%') do (
    rem ลบไฟล์
	cls
    echo Delete files...... "%%i"
	ping -n 2.3 127.0.0.1>nul
    rmdir /s /q "%%i"

)

rem หากไม่มีไฟล์ในโฟลเดอร์ Temp
if not exist "%temp%" goto ee
ping -n 1.3 127.0.0.1>nul
rem จบการทำงาน
:ee
cd C:\Windows
mkdir SoftwareDistribution-V
move C:\Windows\SoftwareDistribution C:\Windows\SoftwareDistribution-V
cd C:\Windows\SoftwareDistribution-V\SoftwareDistribution 
del /q *.*
cls
rem ดำเนินการต่อไปยังจุดที่กำหนด
cls
echo not have flies....
ping -n 2.3 127.0.0.1>nul
cls
call :bbb
:bbb
cls
echo exit full clean
ping -n 4.3 127.0.0.1>nul
goto menu
:nettot
cls
ping -n 4.5 127.0.0.1>nul
cls
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes
netsh int tcp set heuristics disabled 
netsh int tcp set supp internet congestionprovider=ctcp
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global initialRto=2000
netsh int tcp set global timestamps=disabled 
netsh int tcp set global rsc=disabled 
netsh int tcp set global nonsackttresiliency=disabled
netsh int tcp set global MaxSynRetransmissions=2 
netsh int tcp set global fastopen=enabled
netsh int tcp set global fastopenfallback=enabled
netsh int tcp set global pacingprofile=off
netsh int tcp set global hystart=disabled
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int 6to4 set state state=enabled
netsh int udp set global uro=enabled
netsh winsock set autotuning on
netsh int tcp set supplemental template=custom icw=10
netsh interface teredo set state enterprise
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface Ethernet mtu=1500 store=persistent

for /f %%r in ('reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "1" /d /s^|Findstr HKEY_') do (
reg add %%r /v "NonBestEffortLimit" /t reg_DWORD /d "0" /f 
reg add %%r /v "DeadGWDetectDefault" /t reg_DWORD /d "1" /f 
reg add %%r /v "PerformRouterDiscovery" /t reg_DWORD /d "1" /f
reg add %%r /v "TCPNoDelay" /t reg_DWORD /d "1" /f
reg add %%r /v "TcpAckFrequency" /t reg_DWORD /d "1" /f
reg add %%r /v "TcpInitialRTT" /t reg_DWORD /d "2" /f
reg add %%r /v "TcpDelAckTicks" /t reg_DWORD /d "0" /f
reg add %%r /v "MTU" /t reg_DWORD /d "1500" /f
reg add %%r /v "UseZeroBroadcast" /t reg_DWORD /d "0" /f
)

for /f %%a in ('reg query HKLM /v "*WakeOnMagicPacket" /s ^| findstr  "HKEY"') do (
for /f %%i in ('reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (reg add "%%i" /v "*EEE" /t reg_DWORD /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*FlowControl" ^| findstr "HKEY"') do (reg add "%%i" /v "*FlowControl" /t reg_DWORD /d "0" /f)
for /f %%i in ('reg query "%%a" /v "EnableSavePowerNow" ^| findstr "HKEY"') do (reg add "%%i" /v "EnableSavePowerNow" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "EnablePowerManagement" ^| findstr "HKEY"') do (reg add "%%i" /v "EnablePowerManagement" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "EnableDynamicPowerGating" ^| findstr "HKEY"') do (reg add "%%i" /v "EnableDynamicPowerGating" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "EnableConnectedPowerGating" ^| findstr "HKEY"') do (reg add "%%i" /v "EnableConnectedPowerGating" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "AutoPowerSaveModeEnabled" ^| findstr "HKEY"') do (reg add "%%i" /v "AutoPowerSaveModeEnabled" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "AdvancedEEE" ^| findstr "HKEY"') do (reg add "%%i" /v "AdvancedEEE" /t reg_DWORD /d "0" /f)
for /f %%i in ('reg query "%%a" /v "ULPMode" ^| findstr "HKEY"') do (reg add "%%i" /v "ULPMode" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "ReduceSpeedOnPowerDown" ^| findstr "HKEY"') do (reg add "%%i" /v "ReduceSpeedOnPowerDown" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "EnablePME" ^| findstr "HKEY"') do (reg add "%%i" /v "EnablePME" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*WakeOnMagicPacket" ^| findstr "HKEY"') do (reg add "%%i" /v "*WakeOnMagicPacket" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*WakeOnPattern" ^| findstr "HKEY"') do (reg add "%%i" /v "*WakeOnPattern" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*TCPChecksumOffloadIPv4" ^| findstr "HKEY"') do (reg add "%%i" /v "*TCPChecksumOffloadIPv4" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "*TCPChecksumOffloadIPv6" ^| findstr "HKEY"') do (reg add "%%i" /v "*TCPChecksumOffloadIPv6" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "*UDPChecksumOffloadIPv4" ^| findstr "HKEY"') do (reg add "%%i" /v "*UDPChecksumOffloadIPv4" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "*UDPChecksumOffloadIPv6" ^| findstr "HKEY"') do (reg add "%%i" /v "*UDPChecksumOffloadIPv6" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "WolShutdownLinkSpeed" ^| findstr "HKEY"') do (reg add "%%i" /v "WolShutdownLinkSpeed" /t reg_SZ /d "2" /f)
for /f %%i in ('reg query "%%a" /v "*SpeedDuplex" ^| findstr "HKEY"') do (reg add "%%i" /v "*SpeedDuplex" /t reg_SZ /d "6" /f)
for /f %%i in ('reg query "%%a" /v "*LsoV2IPv4" ^| findstr "HKEY"') do (reg add "%%i" /v "*LsoV2IPv4" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*LsoV2IPv6" ^| findstr "HKEY"') do (reg add "%%i" /v "*LsoV2IPv6" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*TransmitBuffers" ^| findstr "HKEY"') do (reg add "%%i" /v "*TransmitBuffers" /t reg_SZ /d "128" /f)
for /f %%i in ('reg query "%%a" /v "*ReceiveBuffers" ^| findstr "HKEY"') do (reg add "%%i" /v "*ReceiveBuffers" /t reg_SZ /d "512" /f)
for /f %%i in ('reg query "%%a" /v "*JumboPacket" ^| findstr "HKEY"') do (reg add "%%i" /v "*JumboPacket" /t reg_SZ /d "9014" /f)
for /f %%i in ('reg query "%%a" /v "*PMARPOffload" ^| findstr "HKEY"') do (reg add "%%i" /v "*PMARPOffload" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "*PMNSOffload" ^| findstr "HKEY"') do (reg add "%%i" /v "*PMNSOffload" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*InterruptModeration" ^| findstr "HKEY"') do (reg add "%%i" /v "*InterruptModeration" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*ModernStandbyWoLMagicPacket" ^| findstr "HKEY"') do (reg add "%%i" /v "*ModernStandbyWoLMagicPacket" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "WakeOnLinkChange" ^| findstr "HKEY"') do (reg add "%%i" /v "WakeOnLinkChange" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "*IPChecksumOffloadIPv4" ^| findstr "HKEY"') do (reg add "%%i" /v "*IPChecksumOffloadIPv4" /t reg_SZ /d "3" /f)
for /f %%i in ('reg query "%%a" /v "*RSS" ^| findstr "HKEY"') do (reg add "%%i" /v "*RSS" /t reg_SZ /d "1" /f)
for /f %%i in ('reg query "%%a" /v "*NumRssQueues" ^| findstr "HKEY"') do (reg add "%%i" /v "*NumRssQueues" /t reg_SZ /d "4" /f)
for /f %%i in ('reg query "%%a" /v "EnableGreenEthernet" ^| findstr "HKEY"') do (reg add "%%i" /v "EnableGreenEthernet" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "GigaLite" ^| findstr "HKEY"') do (reg add "%%i" /v "GigaLite" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "PowerSavingMode" ^| findstr "HKEY"') do (reg add "%%i" /v "PowerSavingMode" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "S5WakeOnLan" ^| findstr "HKEY"') do (reg add "%%i" /v "S5WakeOnLan" /t reg_SZ /d "0" /f)
for /f %%i in ('reg query "%%a" /v "AutoDisableGigabit" ^| findstr "HKEY"') do (reg add "%%i" /v "AutoDisableGigabit" /t reg_SZ /d "0" /f)
)
:: Disable Network Throttling
echo Disabling Network Throttling
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set Network Autotuning to Normal
echo Setting Network AutoTuning to Normal
netsh int tcp set global autotuninglevel=disabled
timeout /t 1 /nobreak > NUL

:: Disable ECN
echo Disabling Explicit Congestion Notification
netsh int tcp set global ecncapability=disabled
timeout /t 1 /nobreak > NUL

:: Enable DCA
echo Enabling Direct Cache Access
netsh int tcp set global dca=enabled
timeout /t 1 /nobreak > NUL

:: Enable NetDMA
echo Enabling Network Direct Memory Access
netsh int tcp set global netdma=enabled
timeout /t 1 /nobreak > NUL

:: Disable RSC
echo Disabling Recieve Side Coalescing
netsh int tcp set global rsc=disabled
timeout /t 1 /nobreak > NUL

:: Enable RSS
echo Enabling Recieve Side Scaling
netsh int tcp set global rss=enabled
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable TCP Timestamps
echo Disabling TCP Timestamps
netsh int tcp set global timestamps=disabled
timeout /t 1 /nobreak > NUL

:: Set Initial RTO to 2ms
echo Setting Initial Retransmission Timer
netsh int tcp set global initialRto=2000
timeout /t 1 /nobreak > NUL

:: Set MTU Size to 1500
echo Setting MTU Size
netsh interface ipv4 set subinterface “Ethernet” mtu=1500 store=persistent
timeout /t 1 /nobreak > NUL

:: Disable NonSackRTTresiliency
echo Disabling Non Sack RTT Resiliency
netsh int tcp set global nonsackrttresiliency=disabled
timeout /t 1 /nobreak > NUL

:: Set Max Syn Retransmissions to 2
echo Setting Max Syn Retransmissions
netsh int tcp set global maxsynretransmissions=2
timeout /t 1 /nobreak > NUL

:: Disable MPP
echo Disabling Memory Pressure Protection
netsh int tcp set security mpp=disabled
timeout /t 1 /nobreak > NUL

:: Disable Security Profiles
echo Disabling Security Profiles
netsh int tcp set security profiles=disabled
timeout /t 1 /nobreak > NUL

:: Disable Heuristics
echo Disabling Windows Scaling Heuristics
netsh int tcp set heuristics disabled
timeout /t 1 /nobreak > NUL

:: Increase ARP Cache Size to 4096
echo Increasing ARP Cache Size
netsh int ip set global neighborcachelimit=4096
timeout /t 1 /nobreak > NUL

:: Enable CTCP
echo Enabling CTCP
netsh int tcp set supplemental Internet congestionprovider=ctcp
timeout /t 1 /nobreak > NUL

:: Disable Task Offloading
echo Disabling Task Offloading
netsh int ip set global taskoffload=disabled
timeout /t 1 /nobreak > NUL

:: Disable IPv6
echo Disabling IPv6
netsh int ipv6 set state disabled
timeout /t 1 /nobreak > NUL

:: Disable ISATAP
echo Disabling ISATAP
netsh int isatap set state disabled
timeout /t 1 /nobreak > NUL

:: Disable Teredo
echo Disabling Teredo
netsh int teredo set state disabled
timeout /t 1 /nobreak > NUL

:: Set TTL to 64
echo Configuring Time to Live
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable TCP Window Scaling
echo Enabling TCP Window Scaling
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set TcpMaxDupAcks
echo Setting TcpMaxDupAcks to 2
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable SackOpts
echo Disabling TCP Selective ACKs
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Increase Maximum Port Number
echo Increasing Maximum Port Number
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Decrease Time to Wait in "TIME_WAIT" State
echo Decreasing Timed Wait Delay
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set Network Priorities
echo Setting Network Priorities
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Adjust Sock Address Size
echo Configuring Sock Address Size
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Nagle's Algorithm
echo Disabling Nagle's Algorithm
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Delivery Optimization
echo Disabling Delivery Optimization
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Auto Disconnect for Idle Connections
echo Disabling Auto Disconnect
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "autodisconnect" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Limit Number of SMB Sessions
echo Limiting SMB Sessions
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Oplocks
echo Disabling Oplocks
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "EnableOplocks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set IRP Stack Size
echo Setting IRP Stack Size
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "20" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Sharing Violations
echo Disabling Sharing Violations
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationRetries" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Get the Sub ID of the Network Adapter
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (

:: Disable NIC Power Savings
echo Disabling NIC Power Savings
reg add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "*EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "SmartPowerDownEnable" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f > APB_Log.txt
reg add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f > APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Jumbo Frame
echo Disabling Jumbo Frame
reg add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configure Receive/Transmit Buffers
echo Configuring Buffer Sizes
reg add "%%n" /v "TransmitBuffers" /t REG_SZ /d "4096" /f >> APB_Log.txt
reg add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "512" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configure Offloads
echo Configuring Offloads
reg add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable RSS in NIC
echo Enabling RSS in NIC
reg add "%%n" /v "RSS" /t REG_SZ /d "1" /f >> APB_Log.txt
reg add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Flow Control
echo Disabling Flow Control
reg add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Remove Interrupt Delays
echo Removing Interrupt Delays
reg add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "RxIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Remove Adapter Notification
echo Removing Adapter Notification Sending
reg add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Interrupt Moderation
echo Disabling Interrupt Moderation
reg add "%%n" /v "*InterruptModeration" /t REG_SZ /d "0" /f >> APB_Log.txt
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB1" /t REG_DWORD /d "0" /f >> APB_Log.txt
ping -n 1 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB2" /t REG_DWORD /d "0" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "SMB3" /t REG_DWORD /d "1" /f >> APB_Log.txt
ping -n 1 127.0.0.1>nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "5" /f >> APB_Log.txt

netsh int tcp set global autotuninglevel=normal
netsh interface 6to4 set state disabled
netsh int isatap set state disable
netsh int tcp set global timestamps=disabled
netsh int tcp set heuristics disabled
netsh int tcp set global chimney=disabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rsc=disabled
netsh int tcp set global nonsackrttresiliency=disabled
netsh int tcp set security mpp=disabled
netsh int tcp set security profiles=disabled
netsh int ip set global icmpredirects=disabled
netsh int tcp set security mpp=disabled profiles=disabled
netsh int ip set global multicastforwarding=disabled
netsh int tcp set supplemental internet congestionprovider=ctcp
netsh interface teredo set state disabled
netsh winsock reset
netsh int isatap set state disable
netsh int ip set global taskoffload=disabled
netsh int ip set global neighborcachelimit=4096
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
PowerShell Disable-NetAdapterLso -Name "*"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterPowerManagement -Name $adapter.Name -ErrorAction SilentlyContinue}"
powershell "ForEach($adapter In Get-NetAdapter){Disable-NetAdapterLso -Name $adapter.Name -ErrorAction SilentlyContinue}"

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "8760" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_SZ /d "ffffffff" /f
cls
echo Setup........
echo @echo off >L.bat
echo powershell.exe Invoke-WebRequest -Uri " https://github.com/RRAAPTcOMEBACK/Low-ping/raw/main/Get-0-Ping-In-All-Games/TCPOptimizer.exe" -OutFile "TCPOptimizer.exe" >>L.bat
echo exit >>L.bat
start L.bat
TIMEOUT 7 /nobreak > nul
move L.bat %temp%
call TCPOptimizer.exe
goto menu
:cup
title Disable boost
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
goto menu

:clean
cleanmgr >>APB_Log.txt
goto menu

:cpt
dxdiag
ping -n 2 127.0.0.1>nul
msinfo32
ping -n 2 127.0.0.1>nul
hdwwiz
ping -n 2 127.0.0.1>nul
azman.msc
ping -n 2 127.0.0.1>nul
eventvwr.msc
ping -n 2 127.0.0.1>nul
dir c: /w/s
ping -n 2 127.0.0.1>nul
goto menu
:menue
cls
ping -n 2 127.0.0.1>nul

goto ping
ping -n 2 127.0.0.1>nul
:ping
title Check in ter net
title Question
echo Check inter net ???
pause
ping -n 2 127.0.0.1>nul
title Check in ter net
title Check ping facebook
ping www.facebook.com
cls
title Check ping titok
ping www.tiktok.com
title Check ping youtube
ping www.youtube.com
cls
title Check ping Roblox
ping www.roblox.com
cls
ping google.co.th
cls
title Check net
cls
echo Check FULL pinG ??
SET /p choix=" yes or no  >  "
if %choix%== yes Goto :pua
if %choix%== no Goto :menu
:pua
netstat
goto menu


:clean2
title Scanner
cls
ping -n 2 127.0.0.1>nul
cls
title scan
ping -n 2 127.0.0.1>nul
sfc /scannow
goto menu
:remoteZ
cls
chcp 65001
title remoteZ
goto ALL

:ALL
cls
SET /p command="  >  "
%command%
pause
goto ALL
:roblox1
chcp 65001
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo starting Roblox Boost
ping -n 5.4 127.0.0.1>nul
:next
goto roblox2
:roblox2
goto roblox3
:mspaint
title paint
start mspaint
goto menu

:roblox3
@echo off
:erp
echo Please close roblox
:checkRunning
@echo off
tasklist | find /i "RobloxPlayerBeta.exe" > nul
if %errorlevel% neq 0 goto start
goto checkRunning

:start
goto start
goto checkRunning
:start 
goto stt
:stt
TASKKILL /IM RobloxPlayerBeta.exe >> APB_Log.txt
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "DisableEffect" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "Fullscreen" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "pingset" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
@echo off
reg add "HKCU\Console" /v "FontFamily" /t REG_DWORD /d 0x00000000 /f
reg add "HKCU\Console" /v "FaceName" /t REG_SZ /d "Lucida Console" /f

cls

rem Color Foreground
rem Dark
set color.foreground.black=[30m
set color.foreground.red=[31m
set color.foreground.green=[32m
set color.foreground.yellow=[33m
set color.foreground.blue=[34m
set color.foreground.magenta=[35m
set color.foreground.cyan=[36m
set color.foreground.white=[37m
rem Light
set color.foreground.lightBlack=[90m
set color.foreground.lightRed=[91m
set color.foreground.lightGreen=[92m
set color.foreground.lightYellow=[93m
set color.foreground.lightBlue=[94m
set color.foreground.lightMagenta=[95m
set color.foreground.lightCyan=[96m
set color.foreground.lightWhite=[97m

rem Color Background
rem Dark
set color.background.black=[40m
set color.background.red=[41m
set color.background.green=[42m
set color.background.yellow=[43m
set color.background.blue=[44m
set color.background.magenta=[45m
set color.background.cyan=[46m
set color.background.white=[47m
rem Light
set color.background.lightBlack=[100m
set color.background.lightRed=[101m
set color.background.lightGreen=[102m
set color.background.lightYellow=[103m
set color.background.lightBlue=[104m
set color.background.lightMagenta=[105m
set color.background.lightCyan=[106m
set color.background.lightWhite=[107m

rem Color Bold
set color.bold=[1m

rem Color Underline
set color.underline=[4m

rem Color Italic
set color.italic=[3m

rem Color Reversed
set color.reversed=[7m

rem Color Invisible
set color.invisible=[8m

rem Color Strike
set color.strike=[9m

rem Color Reset
set color.reset=[0m

rem Color Foreground Reset
set color.foreground.reset=[39m

rem Color Background Reset
set color.background.reset=[49m

rem Color Bold Reset
set color.bold.reset=[22m

rem Color Underline Reset
set color.underline.reset=[24m

rem Color Italic Reset
set color.italic.reset=[23m

rem Color Reversed Reset
set color.reversed.reset=[27m

rem Color Invisible Reset
set color.invisible.reset=[28m

rem Color Strike Reset
set color.strike.reset=[29m

rem Color Reset All
set color.reset.all=[0;39;49m

cd %LocalAppData%\Roblox\Versions

set rbxApp=RobloxPlayerBeta.exe

for /d /r %%a in (*) do (
  if exist "%%a\%rbxApp%" (
    set dirPath=%%a
    goto :found
  )
)

if not exist dirPath (
  goto :notfound
)

:found {
  goto :main
  
  :app {
    cls
      
    if %toggle% == true (
      set toggleText=✅ %color.foreground.lightGreen%on%color.reset%
      if not exist ClientAppSettings.json (
        copy /y ClientAppSettings_clone.json ClientAppSettings.json
        cls
      )
    ) else (
      set toggleText=❌ %color.foreground.lightRed%off%color.reset%
      if exist ClientAppSettings.json (
        del ClientAppSettings.json
      )
    )

    echo ┌──────────────────────┐
    echo │  %color.bold%%color.foreground.lightMagenta%Roblox FPS Booster%color.reset%  │
    echo └──────────────────────┘
    echo  └ %color.bold%%color.foreground.lightYellow%Status%color.reset%: %toggleText%
    echo  └ %color.bold%%color.foreground.lightYellow%Author%color.reset%: %color.foreground.lightCyan%@%color.foreground.lightWhite%wuw.sh %color.reset%(%color.foreground.lightCyan%https://github.com/wuw-sh%color.reset%)
    echo  └ %color.bold%%color.foreground.lightYellow%Version%color.reset%: %color.foreground.lightCyan%1.0.2%color.reset%
    echo  └ %color.bold%%color.foreground.lightYellow%Repository%color.reset%: %color.foreground.lightCyan%https://github.com/wuw-sh/Roblox-FPS-Booster%color.reset%
    echo.
    
    if %toggle% == true (
      set toggle=false
      powershell.exe -Command "$json = Get-Content 'config.json' | ConvertFrom-Json; $json.toggle = $false; $json | ConvertTo-Json -Depth 100 | Set-Content 'config.json'"
    ) else (
      set toggle=true
      powershell.exe -Command "$json = Get-Content 'config.json' | ConvertFrom-Json; $json.toggle = $true; $json | ConvertTo-Json -Depth 100 | Set-Content 'config.json'"
    )
    
    echo.
    echo %color.bold%%color.foreground.lightCyan%Changing %color.foreground.lightGreen%status %color.reset%. . .%color.reset%
    timeout /t 0 /nobreak >nul
    if "%enter%" == "" goto :app
    goto :app
  }

  :main {
    cd %dirPath%
    if exist ClientSettings (
      cd ClientSettings
      if not exist config.json (
        (
          echo {
          echo  "toggle": true
          echo }
        ) > config.json
      )
      set toggle=true
      for /f "delims=" %%a in ('powershell.exe -Command "(Get-Content config.json | ConvertFrom-Json).toggle.ToString().ToLower()"') do set toggle=%%a
      goto :app
    ) else (
      mkdir ClientSettings
      cd ClientSettings

      (
        echo {
        echo  "toggle": true
        echo }
      ) > config.json

      (
        echo {
        echo   "FIntFlagUpdateVersion": 114,
        echo   "FStringNewInGameMenuForcedUserIds": "2323539704;3822626535;4126963942;2627408279;4329723352",
        echo   "DFIntSecondsBetweenDynamicVariableReloading": 31557600,
        echo   "FIntRolloutEnrollmentExpirationMinutes": 31557600,
        echo   "DFFlagDynamicFastVariableReloaderTest1": false,
        echo   "FFlagExecDynInitTests": false,
        echo   "DFFlagEarlyExitIfHang": false,
        echo   "DFFlagRenderTC2_6": true,
        echo   "FFlagRenderTC2_Disable": false,
        echo   "FIntRenderTC2_PercentageRollout": 100,
        echo   "FIntRenderTC2_MaxTextureSize": 1024,
        echo   "FIntTerrainOTAMaxTextureSize": 1024,
        echo   "FIntUITextureMaxRenderTextureSize": 512,
        echo   "FFlagRenderFixTC2MemoryLeak": true,
        echo   "FFlagLoadCoreScriptsFromPatchOnly": true,
        echo   "FIntMaxCachedPatches": 3,
        echo   "DFIntAppLaunchFlowThrottlingRate": 0,
        echo   "FIntMeshContentProviderForceCacheSize": 200000000,
        echo   "FIntAnimationClipCacheBytes": 200000000,
        echo   "FIntEmotesAnimationsPerPlayerCacheSize": 200000000,
        echo   "FIntDefaultMeshCacheSizeMB": 2048,
        echo   "FIntSmoothTerrainPhysicsCacheSize": 200000000,
        echo   "DFIntHttpCurlConnectionCacheSize": 200000000,
        echo   "FIntHttpCurlMaxCachedHandlesPerHost": 200000000,
        echo   "FIntHttpCurlMaxHostsRequestsInProgress": 64,
        echo   "DFIntHttpCurlMaxConnectionsPerHost": 100,
        echo   "DFIntHttpCacheRefreshHundredthsPercent": 100,
        echo   "DFIntHttpCacheRetryCount": 6,
        echo   "DFIntHttpConnMaxAge": 21600,
        echo   "DFIntHttpMaxRedirects": 6,
        echo   "DFIntHttpMaxRetries": 6,
        echo   "DFIntHttpMaxRetryAfterSec": 1,
        echo   "DFIntMaxHttpResultResponseSize": 16384,
        echo   "DFIntUserIdPlayerNameCacheSize": 200000000,
        echo   "DFIntUserIdPlayerNameLifetimeSeconds": 604800,
        echo   "DFIntFriendsListCacheExpirationInSeconds": 300,
        echo   "DFIntGetFriendsOnlineCacheExpirationInSeconds": 120,
        echo   "DFIntGetFriendsOnlineFailureExpirationInSeconds": 60,
        echo   "DFIntGetProductInfoAssetCacheSecs": 60,
        echo   "DFIntGetProductInfoGamepassCacheSecs": 60,
        echo   "DFIntGetProductInfoProductCacheSecs": 60,
        echo   "DFIntGetProductInfoSubscriptionCacheSecs": 60,
        echo   "DFIntGamePassOwnershipCacheSeconds": 60,
        echo   "DFIntPlayerSubscriptionCacheIntervalSeconds": 60,
        echo   "FIntTaskSchedulerAutoThreadLimit": 16,
        echo   "DFIntTaskSchedulerTargetFps": 500,
        echo   "FIntSSAOMipLevels": 0,
        echo   "DFIntMaxActiveAnimationTracks": 512,
        echo   "DFIntJoinDataCompressionLevel": 8,
        echo   "DFIntClusterCompressionLevel": 8,
        echo   "DFIntNetworkSchemaCompressionRatio": 18,
        echo   "DFIntAbuseReportV1Percentage": 100,
        echo   "DFIntAbuseReportV2Percentage": 100,
        echo   "FFlagHandleAltEnterFullscreenManually": false,
        echo   "DFFlagTaskSchedulerAvoidYieldInBackground": true,
        echo   "DFFlagTaskSchedulerBlockingShutdownInClients": true,
        echo   "FFlagEnableQuickGameLaunch": false,
        echo   "FFlagPreloadAllFonts": true,
        echo   "FFlagPreloadMinimalFonts": true,
        echo   "FFlagRemoveRedundantFontPreloading": true,
        echo   "FFlagPreloadTextureItemsOption4": true,
        echo   "DFFlagContentProviderSupportsSymlinks": true,
        echo   "DFFlagHttpClientOptimizeReqQueuing": false,
        echo   "FFlagClientAssetFormatResolution5": false,
        echo   "FFlagBatchAssetApi": true,
        echo   "FFlagBatchAssetApiRollout": true,
        echo   "FIntBatchAssetApiRolloutHundredthPercent": 100,
        echo   "DFFlagReportHttpBatchApiRejectedUrl": true,
        echo   "DFLogBatchAssetApiLog": 6,
        echo   "FFlagBatchGfxGui2": true,
        echo   "FFlagFinishFetchingAssetsCorrectly": true,
        echo   "FFlagEnableZeroLatencyCacheForVersionedAssets": true,
        echo   "FFlagAnimationClipMemCacheEnabled": true,
        echo   "FFlagRenderEnableGlobalInstancing4": true,
        echo   "FFlagRenderEnableGlobalInstancingD3D10": true,
        echo   "FFlagRenderEnableGlobalInstancingD3D11": true,
        echo   "FFlagRenderEnableGlobalInstancingMetal": true,
        echo   "FFlagRenderEnableGlobalInstancingVulkan": true,
        echo   "FFlagPrefetchProtocolUseCallbackArgument": true,
        echo   "DFFlagAddJobStartTimesExpiringPrefetch": true,
        echo   "FFlagPrefetchOneCopyDev": true,
        echo   "FFlagEnablePrefetchTimout": true,
        echo   "FFlagPrefetchOnEveryPlatform": true,
        echo   "FFlagCacheRequestedMaxSize": true,
        echo   "FFlagAudioAssetsInResizableCache2": true,
        echo   "DFFlagEnablePerformanceControlSoundCache3": false,
        echo   "DFFlagHttpCacheCleanBasedOnMemory": true,
        echo   "DFFlagHttpCacheMissingRedirects": true,
        echo   "DFFlagGraphicsRenderImageRemoveSprintf": true,
        echo   "DFFlagGraphicsRenderMatGenRemoveSprintf": true,
        echo   "DFFlagGraphicsRenderSmoothClusterRemoveSprintf": true,
        echo   "DFFlagGraphicsRenderTC2CoreRemoveSprintf": true,
        echo   "DFFlagGraphicsRenderTexManRemoveSprintf": true,
        echo   "DFFlagCSGNoSprintf": true,
        echo   "DFFlagFixUserInputServiceNotInitialized": true,
        echo   "FFlagSimCSG3KeepConsistentCFrame": true,
        echo   "FFlagSimCSG3LoadTreeFromSerialized": true,
        echo   "FFlagSimCSG3PartOperationsIncrementalUpdates": true,
        echo   "FFlagSimCSG3TreeEnableNewNormalize": true,
        echo   "FFlagSimCSGEnableCSGMeshSerializationVer5": true,
        echo   "FFlagSimCSGV3TriangleMeshPartGetConvexes": true,
        echo   "FFlagSimCSG3MegaAssetFetcherSkipCached": true,
        echo   "FFlagSimUseCSGV3TreeRule2Reduction": true,
        echo   "FFlagSimCSGV3SeparateDetachedCoplanarGraphs": true,
        echo   "FFlagSimCSGV3PruneNonManifoldVertexGraph": true,
        echo   "FFlagSimCSGV3IncrementalTriangulationStreamingCompression": true,
        echo   "FFlagSimCSGV3IncrementalTriangulationPhase3": true,
        echo   "FFlagSimCSGV3IncrementalTriangulationPhase2": true,
        echo   "FFlagSimCSGV3IncrementalTriangulationPhase1": true,
        echo   "FFlagSimCSGKeepPhysicalConfigData": true,
        echo   "FFlagSimCSGAllowLocalOperations": true,
        echo   "DFFlagSimCSG3UseQuadBallInExperience": true,
        echo   "FFlagSimCSG3NewAPIBreakApart": true,
        echo   "FFlagSimCSG3EnableNewAPI": true,
        echo   "FFlagSimCSG3AsyncWarmv2": true,
        echo   "FFlagSimCSG3AllowBodyToSave": true,
        echo   "FFlagCSGMeshDisableReadHash": true,
        echo   "FFlagCSGMeshDisableWriteHash": true,
        echo   "DFFlagCleanOldCSGData": true,
        echo   "FFlagGraphicsD3D11AllowThreadSafeTextureUpload": true,
        echo   "FFlagGraphicsDeviceEvents": true,
        echo   "FFlagGraphicsEnableD3D10Compute": true,
        echo   "FFlagGraphicsTextureCopy": true,
        echo   "FFlagSmoothClusterShaderRefactor": true,
        echo   "FIntMotionBuffers2": 100,
        echo   "FIntRenderShaderLoadAnalyticsHundredthPercent": 0,
        echo   "FIntRenderD3D11UncleanShutdownPercent": 100,
        echo   "FIntEnableCullableScene2HundredthPercent": 500,
        echo   "FFlagEnableCullableSceneOctree": true,
        echo   "DFFlagAlwaysPutSoundsOnDiskWhenLowOnMemory": true,
        echo   "FFlagTrackAllDeviceMemory6": true,
        echo   "FIntAbuseReportScreenshotMaxSize": 0,
        echo   "DFIntCrashReportingHundredthsPercentage": 0,
        echo   "DFIntCrashUploadErrorInfluxHundredthsPercentage": 0,
        echo   "DFIntCrashUploadToBacktracePercentage": 0,
        echo   "FFlagUpdateUICachesWithQuadTree3": true,
        echo   "DFFlagExperimentalRuntimeTextureCreation": true,
        echo   "FFlagFixGraphicsQuality": true,
        echo   "FFlagCommitToGraphicsQualityFix": true,
        echo   "FFlagFixTextureCompositorFramebufferManagement2": true,
        echo   "FFlagMemoryPrioritizationEnabledForTextures": true,
        echo   "FFlagTextureManagerMaySkipBlackReloadFallback": true,
        echo   "FFlagTextureManagerUsePerfControl": true,
        echo   "FFlagTextureManagerUsePerfControlDirectMapping": true,
        echo   "FFlagTextureManagerUsePerfControlV2Api": true,
        echo   "FFlagIntegrityCheckedProcessorUsePerfControl": true,
        echo   "FFlagIntegrityCheckedProcessorPerfControlEffects": true,
        echo   "FFlagIntegrityCheckedProcessorUsePerfControlV2Api": true,
        echo   "FFlagIntegrityCheckedProcessorClientSendsBatchEvents": false,
        echo   "DFFlagIntegrityCheckedProcessorDisableAllAdditions": true,
        echo   "FFlagNetProcessingFairnessEnabled1": true,
        echo   "FFlagNetProcessingFairnessEnabled2": true,
        echo   "DFFlagQueueDataPingFromSendData": true,
        echo   "FFlagDontCreatePingJob": true,
        echo   "FFlagPerfControlFireCallbacks3": true,
        echo   "FFlagSoundServiceUsePerfControlV2Api": false,
        echo   "DFIntPerformanceControlEventIngestHundredthPercentageSent": 0,
        echo   "DFIntPerformanceControlHundredthPercentageSent": 0,
        echo   "FFlagPerformanceControlChangeTunableEagerly": true,
        echo   "FFlagPerformanceControlDynamicUtilityCurves": true,
        echo   "FFlagPerformanceControlMimicMemoryPrioritization": true,
        echo   "DFFlagPerformanceControlProportionalPlanner2": true,
        echo   "DFFlagPerformanceControlProportionalPlannerForV2_2": true,
        echo   "FFlagPerformanceControlSimpleMPLogic": true,
        echo   "DFFlagESGamePerfMonitorEnabled": false,
        echo   "DFIntESGamePerfMonitorHundredthsPercentage": 0,
        echo   "FIntGamePerfMonitorPercentage": 0,
        echo   "DFFlagEnablePerfAudioCollection": false,
        echo   "DFFlagEnablePerfDataCoreCategoryTimersCollection2": false,
        echo   "DFFlagEnablePerfDataCoreTimersCollection2": false,
        echo   "DFFlagEnablePerfDataCountersCollection": false,
        echo   "DFFlagEnablePerfDataGatherTelemetry2": false,
        echo   "DFFlagEnablePerfDataMemoryCategoriesCollection2": false,
        echo   "DFFlagEnablePerfDataMemoryCollection": false,
        echo   "DFFlagEnablePerfDataMemoryPerformanceCleanup3": false,
        echo   "DFFlagEnablePerfDataMemoryPressureCollection": false,
        echo   "DFFlagEnablePerfDataReportThermals": false,
        echo   "DFFlagEnablePerfDataSubsystemTimersCollection2": false,
        echo   "DFFlagEnablePerfDataSummaryMode": false,
        echo   "DFFlagEnablePerfRenderStatsCollection2": false,
        echo   "DFFlagEnablePerfStatsCollection3": false,
        echo   "DFIntPerfDataGlobalThrottleHundredthsPercent": 100000,
        echo   "FFlagRenderGpuTextureCompressor": true,
        echo   "FFlagRenderLightGridEfficientTextureAtlasUpdate": true,
        echo   "DFIntRenderingThrottleDelayInMS": 100,
        echo   "FFlagReadHSRAlwaysVisibleData": true,
        echo   "FFlagApplyHSRAlwaysVisibleData": true,
        echo   "FFlagEnableLinearCageDeformer2": true,
        echo   "FFlagUseFallbackTextureStatusLoaded2": true,
        echo   "FFlagHumanoidDeferredSyncFunction5": true,
        echo   "DFFlagHumanoidOnlyStepInWorkspace": true,
        echo   "FFlagHumanoidParallelFasterSetCollision": true,
        echo   "FFlagHumanoidParallelFasterWakeUp": true,
        echo   "FFlagHumanoidParallelFixTickleFloor2": true,
        echo   "FFlagHumanoidParallelOnStep2": true,
        echo   "FFlagHumanoidParallelSafeCofmUpdate": true,
        echo   "FFlagHumanoidParallelSafeUnseat": true,
        echo   "FFlagHumanoidParallelUseManager4": true,
        echo   "FFlagCloudsUseBC4Compression": true,
        echo   "FIntClientCompressionFormatRequestPC": 3,
        echo   "FFlagCloudsMvpForceNoHistory": true,
        echo   "DFFlagThrottleDeveloperConsoleEvents": true,
        echo   "FFlagFastGPULightCulling3": false,
        echo   "FFlagDebugForceFSMCPULightCulling": false,
        echo   "DFFlagSimIfNoInterp2": true,
        echo   "FFlagUseMediumpSamplers": true,
        echo   "DFFlagCollectibleItemInExperiencePurchaseEnabled": true,
        echo   "DFFlagCollectibleItemInInspectAndBuyEnabled": true,
        echo   "DFIntCollectibleItemInExperiencePurchaseRolloutPercentage": 100,
        echo   "DFFlagIntegrateSendInPeer": true,
        echo   "DFFlagLocServiceGetSourceLanguageFromWebAPI": true,
        echo   "DFFlagPlayerConfigurer2886": true,
        echo   "FFlagPlayerConfigurer2759": true,
        echo   "DFFlagPredictedOOM": false,
        echo   "DFFlagPredictedOOMAbs": false,
        echo   "DFFlagUsePredictedOOMAbsLimitForMemoryCurve": false,
        echo   "DFFlagOOMTimestamp": false,
        echo   "DFIntPredictedOOMPercent": 0,
        echo   "FFlagKickClientOnCoreGuiRenderOverflow": false,
        echo   "FFlagLuaAppSystemBar": true,
        echo   "FFlagGraphicsGLTextureReduction": true,
        echo   "FFlagEnableInGameMenuV3": false,
        echo   "FFlagDisableNewIGMinDUA": true,
        echo   "DFFlagDisconnectPlayerOnRemove2": false,
        echo   "FFlagMovePrerender": false,
        echo   "DFFlagContentProviderInit": true,
        echo   "FFlagEnqueueTextureGarbageCollection": true,
        echo   "FFlagProcessEventQueueOnInput": true,
        echo   "FFlagQueueAndDropExtraEvents": true,
        echo   "DFFlagCollectionServiceRefactor": true,
        echo   "DFFlagEnableParallelFrustumQueries2": true,
        echo   "DFFlagJointIrregularityOptimization": true,
        echo   "DFFlagPlayerAvoidNetworkDependency": true,
        echo   "DFFlagShouldMuteDMBeforeClosing3": true,
        echo   "DFFlagSpecialCaseSupportRbxCdnInAppDataModel2": true,
        echo   "DFFlagSupportYouTubeInAppDataModelIfRbxCdnAllowed": true,
        echo   "DFFlagVoxelizerDisableTerrainSIMD": true,
        echo   "DFFlagSSOnlyQueueIfInWorkspace": true,
        echo   "FFlagResizeJobAfterReplicatorCreation": true,
        echo   "FFlagRuppTokenFallback": true,
        echo   "FFlagSanityCheckMultithreadedTextureManagerAccess": true,
        echo   "FFlagAssertDeletedTextureDataSane": true,
        echo   "FFlagSaveAccessTokenToSecureStore": true,
        echo   "FFlagSHDynamicLevelCount": true,
        echo   "FFlagSHExtendAssemblyBroadphaseExtentsClamps": true,
        echo   "DFFlagSHSkipNoPrimitivesForBreadthFirstSearch": true,
        echo   "FFlagAssemblyAllowBroadphaseExclusion2": true,
        echo   "FFlagParallelTerrainBroadphase2": true,
        echo   "DFIntInterpolationNumParallelTasks": 8,
        echo   "DFIntMegaReplicatorNumParallelTasks": 8,
        echo   "DFIntNetworkClusterPacketCacheNumParallelTasks": 8,
        echo   "DFIntPhysicsReceiveNumParallelTasks": 8,
        echo   "DFIntReplicationDataCacheNumParallelTasks": 8,
        echo   "FIntSimWorldTaskQueueParallelTasks": 8,
        echo   "FIntLuaGcParallelMinMultiTasks": 8,
        echo   "FFlagGraphicsEnable32Textures": true,
        echo   "FFlagGraphicsRenderDeprecateSprintf": true,
        echo   "FFlagTextureManagerDoNotRegisterPerfControlCallbackByDefault": true,
        echo   "FFlagTextureManagerMaySkipBlackReloadFallback2": true,
        echo   "FFlagTextureQualityReloadFix": true,
        echo   "FFlagThreadSafeTextureInvalidation2": true,
        echo   "DFLogHttpTrace": 0,
        echo   "DFLogHttpTraceError": 0,
        echo   "DFLogHttpTraceLight": 0,
        echo   "DFFlagAnimatorAnalyticsEnabled": false,
        echo   "FFlagReportFpsAndGfxQualityPercentiles": false,
        echo   "DFIntBrowserTrackerApiDeviceInitializeRolloutPercentage": 0,
        echo   "DFFlagBrowserTrackerIdTelemetryEnabled": false,
        echo   "DFIntBrowserTrackerIdTelemetryThrottleHundredthsPercent": 100000,
        echo   "DFFlagSessionTelemetryLayeredClothing": false,
        echo   "DFFlagSessionTelemetrySnapshotEnabled2": false,
        echo   "DFFlagSessionTrackingRecordHasLocation": false,
        echo   "DFFlagSessionTrackingRecordUserClickMinRadiusTime": false,
        echo   "FFlagAddGameInstanceIdToSessionTracking": false,
        echo   "FFlagNavigationAnalyticsSessionId": false,
        echo   "FFlagRbxAnalyticsExposePlaySessionId": false,
        echo   "FFlagReportELFInSessionTracking": false,
        echo   "FFlagReportJoinAllCount": false,
        echo   "FFlagReportJoinTelemetry": false,
        echo   "FFlagJoinTimeCounters": false,
        echo   "FFlagSessionTelemetryApp": false,
        echo   "FFlagShowPlaySessionIdForHelpTab": false,
        echo   "DFFlagAddPlaySessionIdTelemetry": false,
        echo   "DFIntLoginTelemetryHundredthsPercent": 0,
        echo   "FIntReportDeviceInfoRollout": 0,
        echo   "DFIntReportDeviceInfoRate": 0,
        echo   "DFIntReportFmodErrorsRate": 0,
        echo   "DFFlagAddUserIdToSessionTracking": false,
        echo   "DFFlagBacklogDetectorSessionId": false,
        echo   "DFFlagBacklogDetectorEventIngest": false,
        echo   "DFFlagBaseNetworkMetrics": false,
        echo   "DFFlagHttpClientRequestMetrics2": false,
        echo   "DFFlagHttpPointsErrorMetrics": false,
        echo   "DFFlagHttpPointsResponseMetrics": false,
        echo   "DFFlagHttpLogRedirects": false,
        echo   "DFFlagHttpTraceErrorCurrentUrl": false,
        echo   "DFFlagHttpTraceErrorProxy": false,
        echo   "DFFlagHttpServiceErrorLogEnabled": false,
        echo   "DFFlagNewInferredCrashSystem": false,
        echo   "DFFlagNewInferredCrashSystemV2": false,
        echo   "DFFlagNewInferredCrashTelemetrySystem": false,
        echo   "DFFlagInferredCrashMemReportingV2": false,
        echo   "DFFlagInferredCrashSystemSuccessReportMove": false,
        echo   "DFFlagInfluxReportLastVisitedUrlHost": false,
        echo   "DFIntInfluxReportLocalFilterStringPermyriad": 0,
        echo   "DFIntInfluxTattletaleV2Permyriad": 0,
        echo   "DFIntHttpInfluxHundredthsPercentage": 0,
        echo   "DFIntHttpInfluxReportsPerMillion": 0,
        echo   "DFIntHttpGAFailureReportPercent": 0,
        echo   "DFIntGoogleAnalyticsLoadPlayerHundredth": 0,
        echo   "DFIntHttpAnalyticsMaxHistory": 0,
        echo   "DFIntCountOldChatAPIUsageHundrethsPercent": 0,
        echo   "DFIntCoreGuiRenderOverflowKicksReportHundredthsPercent": 0,
        echo   "DFIntCookieProtocolAnalyticsHundredthsPercentage": 0,
        echo   "DFIntCookieProtocolAnalyticsPriorityHundredthsPercentage": 0,
        echo   "DFIntCoreScriptsAnalyticsHundredthsPercentage": 0,
        echo   "DFIntDataModelPatcherErrorInfluxHundredthsPercentage": 0,
        echo   "DFIntDataModelPatcherFunnelInfluxHundredthsPercentage": 0,
        echo   "DFIntCSGv2OperationInfluxHundredthsPercentage": 0,
        echo   "DFIntCSGV3OperationMetricsHundredthsPercentage": 0,
        echo   "FStringImmersiveAdsUniverseWhitelist": "0",
        echo   "FFlagImmersiveAdsWhitelistDisabled": false,
        echo   "FFlagAdGuiEnabled3": false,
        echo   "FFlagEnableAdsAPI": false,
        echo   "FFlagEnableBackendAdsProviderTimerService": false,
        echo   "FFlagAdPortalEnabled3": false,
        echo   "FFlagAdServiceEnabled": false,
        echo   "FFlagEnableAdPortalTimerService2": false,
        echo   "DFFlagEnableAdUnitName": false,
        echo   "FFlagEnableAdGuiTimerService": false,
        echo   "FFlagAdGuiTextLabelEnabled": false,
        echo   "FFlagAdPortalAdFetchEnabled": false,
        echo   "DFFlagAdGuiImpressionDisabled": true,
        echo   "DFFlagEnableGCapsHardwareTelemetry": false,
        echo   "DFFlagAudioDeviceTelemetry": false,
        echo   "FFlagEnableSoundTelemetry": false,
        echo   "DFFlagEnableHardwareTelemetry": false,
        echo   "DFIntHardwareTelemetryHundredthsPercent": 0,
        echo   "DFFlagEphemeralCounterInfluxReportingEnabled": false,
        echo   "DFIntEphemeralCounterInfluxReportingPriorityHundredthsPercent": 0,
        echo   "DFIntEphemeralCounterInfluxReportingThrottleHundredthsPercent": 100000,
        echo   "DFIntEphemeralStatsInfluxReportingPriorityHundredthsPercent": 0,
        echo   "DFIntEphemeralStatsInfluxReportingThrottleHundredthsPercent": 100000,
        echo   "DFFlagVoiceChatEnableEventCounters3": false,
        echo   "DFFlagVoiceChatEnableEventLogging5": false,
        echo   "DFFlagVoiceChatUnderrunErrorsTelemetry": false,
        echo   "DFFlagVoiceChatHttpResultBodyEmptyTelemetry": false,
        echo   "FFlagVoiceChatEnableBlockTelemetry": false,
        echo   "FFlagVoiceChatReportTaskStats": false,
        echo   "FFlagVoiceChatSignalRTimingCounterToStat": false,
        echo   "FFlagVoiceChatStatsJoinSubsOnUsersError": false,
        echo   "FFlagVoiceChatStatsMultistreamSubscriptionsV2": false,
        echo   "FFlagVoiceChatWaitForSignalRJoinStageMetrics": false,
        echo   "FFlagEnableFlagRolloutCrashReportingWindows": false,
        echo   "DFFlagEnableTelemetryAppNameOverride": false,
        echo   "DFIntLogFileTelemetryInfluxDbHundredthsPercentage": 0,
        echo   "DFIntLmsClientMaxTargets": 0,
        echo   "FFlagLocServicePerformanceAnalyticsEnabled": false,
        echo   "DFFlagDebugAnalyticsSendUserId": false,
        echo   "DFStringAnalyticsEventStreamUrlEndpoint": "opt-out",
        echo   "DFStringAltHttpPointsReporterUrl": "https://opt-out.roblox.com",
        echo   "DFStringAltTelegrafHTTPTransportUrl": "http://opt-out.roblox.com",
        echo   "DFStringTelegrafHTTPTransportUrl": "https://opt-out.roblox.com",
        echo   "DFStringLmsRecipeEndpoint": "/opt-out",
        echo   "DFStringLmsReportEndpoint": "/opt-out",
        echo   "DFFlagEnableLightstepReporting2": false,
        echo   "DFIntLightstepHTTPTransportHundredthsPercent2": 0,
        echo   "DFStringLightstepHTTPTransportUrlHost": "https://opt-out.roblox.com",
        echo   "DFStringLightstepHTTPTransportUrlPath": "/opt-out",
        echo   "DFStringLightstepToken": "opt-out",
        echo   "DFStringHttpPointsReporterUrl": "https://opt-out.roblox.com",
        echo   "DFStringCrashUploadToBacktraceBaseUrl": "https://opt-out.roblox.com",
        echo   "FFlagBacktraceMainSourcePathEnabled": false,
        echo   "FStringErrorUploadToBacktraceBaseUrl": "https://opt-out.roblox.com",
        echo   "DFFlagReportGlobalAnalyticsUniverseAndPlaceIds": false,
        echo   "DFStringRobloxAnalyticsSubDomain": "opt-out",
        echo   "DFStringRobloxAnalyticsURL": "https://opt-out.roblox.com",
        echo   "DFStringAnalyticsNS1ApplicationId": "opt-out",
        echo   "DFStringAnalyticsNS1BeaconConfig": "https://opt-out.roblox.com"
        echo }
      ) > ClientAppSettings_clone.json

      set toggle=true

      echo ✅ %color.foreground.green%Roblox FPS Boost has been applied!%color.reset%
      echo.


exit
  }
}

:notfound {
  echo ❌ %color.background.lightRed%%color.bold% Roblox is not installed, Please install Roblox and try again. %color.reset%
  echo (ctrl %color.foreground.lightGreen%+ %color.reset%click) this link to %color.foreground.lightGreen%install%color.reset% Roblox: 🔗%color.foreground.lightCyan%https://www.roblox.com/download/client%color.reset%
  echo.


  if "%enter%" == "" exit
  exit
}
Reg.exe add "HKCU\Software\Roblox" /v "start" /t REG_MULTI_SZ /d "setlocal" /f
Reg.exe add "HKCU\Software\Roblox" /v "enableGamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox" /v "ping" /t REG_SZ /d "set 30>50" /f
Reg.exe add "HKCU\Software\Roblox" /v "Zerpclick" /t REG_BINARY /d "144520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "Disablestart" /t REG_DWORD /d "0" /f
cls
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
pause
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "start" /t REG_QWORD /d "0x0c00000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "Disablestart" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "(Pro)" /t REG_SZ /d "echo off" /f
Reg.exe add "HKLM\SOFTWARE\1D0EC6DE-4A80-4CC3-A335-E6E41C951198\RobloxPlayerBata.exe" /v "echo" /t REG_SZ /d "ping RobloxPlayerBeta.exe" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "head" /t REG_QWORD /d "0x1000000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graph" /t REG_QWORD /d "0x1400000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "bingui" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "head" /t REG_QWORD /d "0x1000000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graph" /t REG_QWORD /d "0x1400000000000000" /f
REM ~ Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "echo" /t REG_QWORD /d "0x0200000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\SOFTWARE\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "DisableEffect" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "Fullscreen" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "pingset" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win7" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11 delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10 delay" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox" /v "start" /t REG_MULTI_SZ /d "setlocal" /f
Reg.exe add "HKCU\Software\Roblox" /v "enableGamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox" /v "ping" /t REG_SZ /d "set 30>50" /f
Reg.exe add "HKCU\Software\Roblox" /v "key1delay" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "key2delay" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "key3delay" /t REG_MULTI_SZ /d "0" /f
Reg.exe add "HKCU\Software\Roblox" /v "keyzdelay" /t REG_MULTI_SZ /d "0.1>0\00>0.1" /f
Reg.exe add "HKCU\Software\Roblox" /v "delaystartprogram" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable xbox" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable setting" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "killenable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable delay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "startdelay" /t REG_BINARY /d "01100000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox enable" /t REG_EXPAND_SZ /d "0/1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win7" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11 delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10 delay" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox\disable" /v "disable xbox" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable setting" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "killenable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable delay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "startdelay" /t REG_BINARY /d "01100000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox enable" /t REG_EXPAND_SZ /d "0/1" /f
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "DisableEffect" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "Fullscreen" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "pingset" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "enableGamemode" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox" /v "key3delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11" /t REG_QWORD /d "0x0100000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win7" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win11 delay" /t REG_QWORD /d "0x0000000000000000" /f
REM ~ Reg.exe add "HKCU\Software\Roblox\disable" /v "win10 delay" /t REG_QWORD /d "0x0000000000000000" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKCU\Software\Roblox" /v "start" /t REG_MULTI_SZ /d "setlocal>>Roblox" /f
Reg.exe add "HKCU\Software\Roblox" /v "ping" /t REG_SZ /d "set 30>50" /f
Reg.exe add "HKCU\Software\Roblox" /v "key1delay" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "key2delay" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "keyzdelay" /t REG_MULTI_SZ /d "0.1>0\00>0.1" /f
Reg.exe add "HKCU\Software\Roblox" /v "delaystartprogram" /t REG_BINARY /d "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox" /v "fastclick" /t REG_BINARY /d "144520" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable xbox" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable setting" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "killenable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "enable Gamemode" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "disable delay" /t REG_SZ /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "startdelay" /t REG_BINARY /d "01100000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox disable" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\disable" /v "xbox enable" /t REG_EXPAND_SZ /d "0/1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "0" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "1" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "2" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002300" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "3" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "4" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "5" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "6" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002600" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "7" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "8" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "9" /t REG_BINARY /d "04000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff000000000029700" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "10" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "11" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "12" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002400" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "13" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002100" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "14" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000001200" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "15" /t REG_BINARY /d "4000560061007200690061006e007400280000000000000043000100ff00ff00ff00ff00ff00ff00ff00ff00000000002000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "uibing" /t REG_BINARY /d "bbb12bb43b3b533b35b3953b632b536b35354b53436b47b324b342b634354632b6444225364343b34643423436b3435363434336b34353b435343b343b53b43b5b3b43b5b3bb3b53b5b3b5b3b5b35b3b545b4b65b6b54b45b45b654b6b54b54b54b6b546b54b6b546b54b6b546b54b63b5b25b436b43b54b5b325b23b5b2b43b3b5b6b54b6b6b54b54b76b7b67b54bb523b5b235b43b43bb43b43b65bb65b6b54b654b6b546b54b654bb6b657b5b54b54bbb45b45b45bb54b4bbbbebbebb34bb4b5b54b45bb54b54b54b54b0" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Players" /t REG_EXPAND_SZ /d "head Size = 400 (aimhead == RobloxPlayer)" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Graphconfig" /t REG_BINARY /d "222434543454444493823213303539222222225933333333333333333333329532852035820358212b249324323924328523432432b5243293282432b4325329432539243284325b2520" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "GrapconfigHead" /t REG_EXPAND_SZ /d "start Graph.exe start Graph.REGQWORD" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Player" /t REG_MULTI_SZ /d "setspeed= 0 setlocal=1 sethttps=1 " /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Runhead" /t REG_EXPAND_SZ /d "runhead loop" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "exit" /t REG_EXPAND_SZ /d "exit killall" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "chat" /t REG_SZ /d "low set= loca31l" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "Boost" /t REG_BINARY /d "00d05ce00c020000305c50e00c02000030003200200028003200290000000000ffffffff00000000ffffffff00000000f0625432532542546453243253253320" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "startBoost" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\CustomColor" /v "delayclicked" /t REG_BINARY /d "00d05ce00c02000070405de00c0200003000310020002800310029000000000038863773fe7f000030945ce00c020000000035353546352453264653634644000000000000000000000000000000000000000000000000000000000000000000000000000000" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "window_geometry_ribbon" /t REG_BINARY /d "400042007900740065004100720072006100790028000100d900d000cb0000000300000000000000000000002b0000000000000000000000000005002c00000000000200d8000000000000002c000000000000001f000000000005002b00000000000200d70000000000000000000000000000000000050056000000000000002c000000000000001f000000000005002b00000000000200d7002900" /f
Reg.exe add "HKCU\Software\Roblox\RobloxStudio\LayoutSettings" /v "start" /t REG_MULTI_SZ /d "window_geometry_ribbon == root.exe(reg.exe add window_geometry_ribbon)host.exe add(host.exewindow_geometry_ribbon)" /f
endlocal
goto menu


goto menu
:remoteShell
title SHell
chcp 65001
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
if %choix%== o Goto :Shell
if %choix%== m Goto :remotet
if %choix%== f Goto :Checkip
title Question
echo start powershell or remote?
echo 1remote 2powershell   3  ip
echo remote type o
echo ip type f
echo powershell type m
ping -n 2 127.0.0.1>nul
SET /p choix=" select  >  "


:Checkip
title carcking
echo Check ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
echo Crack ip!!!!!!!!!!
ping -n 2 127.0.0.1>nul
cls
ipconfig
timeout 10
echo thank for use Crack ip
ping -n 6 127.0.0.1>nul
goto menu








:Gamemodeon
@echo off
setlocal
title Gamemode on
@echo on >nul
cls
schtasks >> APB_log.txt
compact >> APB_log.txt
@echo off > nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
ping -n 4 127.0.0.1>nul
cls
:: Enable GameMode
echo Enabling GameMode
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Gamebar
echo Disabling Gamebar
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\WindowsRuntime\ActivatableClassId\Windows.Gaming.GameBar.PresenceServer.Internal.PresenceWriter" /v "ActivationType" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "HistoryViewEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "DeviceHistoryEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BingSearchEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "fff9887" /f
bcdedit /deletevalue useplatformclock
bcdedit /deletevalue disabledynamictick
bcdedit /set useplatformtick Yes
bcdedit /set tscsyncpolicy Enhanced
bcdedit /set nx AlwaysOff
bcdedit /set bootmenupolicy legacy
bcdedit /set hypervisorlaunchtype off
bcdedit /set tpmbootentropy ForceDisable
bcdedit /set linearaddress57 OptOut
bcdedit /set firstmegabytepolicy UseAll 
bcdedit /set nolowmem Yes
bcdedit /set allowedinmemorysettings 0 
bcdedit /set isolatedcontext No 
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001" /v "*RSSProfile" /t reg_SZ /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile" /v "ParamDesc" /t reg_SZ /d "RSS load balancing profile" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile" /v "default" /t reg_SZ /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile" /v "type" /t reg_SZ /d "enum" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile\Enum" /v "1" /t reg_SZ /d "ClosestProcessor" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile\Enum" /v "2" /t reg_SZ /d "ClosestProcessorStatic" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile\Enum" /v "3" /t reg_SZ /d "NUMAScaling" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile\Enum" /v "4" /t reg_SZ /d "NUMAScalingStatic" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0001\Ndi\Params\*RSSProfile\Enum" /v "5" /t reg_SZ /d "ConservativeScaling" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t reg_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t reg_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t reg_DWORD /d "32" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /t reg_DWORD /d "8760" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t reg_DWORD /d "8760" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t reg_DWORD /d "65534" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t reg_DWORD /d "64" /f
reg add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t reg_DWORD /d "1" /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1 
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t reg_DWORD /d "4" /f  >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WbioSrvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UnistoreSvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t reg_DWORD /d "4" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "2" /t reg_DWORD /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t reg_DWORD /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t reg_DWORD /d "3" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t reg_DWORD /d "3" /f >nul 2>&1
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CertPropSvc" /v "Start" /t reg_DWORD /d "3" /f >nul 2>&1
cls
taskkill /f /im explorer.exe
start explorer.exe
echo 1Disable update  2 no Disable
SET /p choix=" >  "
if %choix%== yes Goto :updateD
if %choix%== 1 Goto :updateD
if %choix%== no Goto :nextSHD
if %choix%== 2 Goto :nextSHD
:updateD
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\fU" /v "DisableWindowsUpdate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AU" /v "NoAutoWindowsUpdate" /t REG_DWORD /d "1" /f
cls
:nextSHD
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
ping -n 2 127.0.0.1>nul
taskkill /f /im explorer.exe
start explorer.exe
echo shutdown ??
ping -n 2 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo 1 Restart
echo 2 NO Restart
SET /p choix=" >  "
if %choix%== 1 Goto :shd
if %choix%== 2 Goto :Question
if %choix%== yes Goto :shd
if %choix%== no Goto :Question
Echo Enable Gamemode
goto boost
ping -n 4 127.0.0.1>nul
timeout 10
goto menu
:Question
chcp 65001
cls
title Question
echo Boost windows 11?
ping -n 2 127.0.0.1>nul
echo windows 11 onlY!!!!!!!!
ping -n 2 127.0.0.1>nul
goto win11


:GameModeoff
cls
setlocal
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
title Gamemode off
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerEnable" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevel" /f >> APB_Log.txt
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevelAC" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul
pause
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
start BACKUP
ping -n 2 127.0.0.1>nul
echo Disable Gamemode
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo 1Restart
echo 2no
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :shd
if %choix%== 2 Goto :menu
timeout 10
goto menu
:shd
title restart
cls
echo Restart.....
timeout 3 > NUL
shutdown /r /t 2 
taskkill cmd

:sh
echo loadding
ping -n 4 127.0.0.1>nul
exit


:boost
echo info: press any key to continue
pause 
goto Question

:win11
chcp 65001
cls
title win11 Boost
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo only windows 11
SET /p choix=" yes or No  >  "
if %choix%== yes Goto :Family
if %choix%== no Goto :menu
:Family
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "GlobalTimerResolutionRequests" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager" /v "AlpcWakePolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SimulateCommitSavings" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackLockedPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "TrackPtes" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "fff9887" /f
@echo off
setlocal enabledelayedexpansion
cls
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator
echo.


REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222202202222222220020000002000200000000000000000 /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f

echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
@echo off
setlocal enabledelayedexpansion
cls
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator
echo.


REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222222222222222222222222222222222222222222222222 /f

REM Per-process Process Mitigations
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Acrobat.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcrobatInfo.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroCEF.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroRd32.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroServicesUpdater.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe" /v "MitigationOptions" /f
REM keep MsSense alone because it causes problems
REM reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM Disabled features
REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f

echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
@echo off
setlocal enabledelayedexpansion
cls
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator


REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222202202222222220020000002000200000000000000000 /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f


REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM Disabled features
REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f

echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
@echo off
setlocal enabledelayedexpansion
cls
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator
echo.

REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222222222222222222222222222222222222222222222222 /f

REM Per-process Process Mitigations
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Acrobat.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcrobatInfo.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroCEF.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroRd32.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\AcroServicesUpdater.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ExtExport.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ie4uinit.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieinstal.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ielowutil.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ieUnatt.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\iexplore.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mscorsvw.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\msfeedssync.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\mshta.exe" /v "MitigationOptions" /f
REM keep MsSense alone because it causes problems
REM reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\MsSense.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngen.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ngentask.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PresentationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintDialog.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\PrintIsolationHost.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\runtimebroker.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\splwow64.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\spoolsv.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SystemSettings.exe" /v "MitigationOptions" /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM use bbr2 (BBR V2) as a congestion control provider
netsh int tcp set supplemental internet congestionprovider=bbr2

REM use the weak host model by default (same as Linux)
powershell "Get-NetAdapter -IncludeHidden | Set-NetIPInterface -WeakHostSend Enabled -WeakHostReceive Enabled -ErrorAction SilentlyContinue"

REM Disabled features
REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f

echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
@echo off
setlocal enabledelayedexpansion
cls
echo.
echo Automatic Optimizer to restore proper framerate in your Windows 11 PC after Windows 10 Upgrade
echo.
echo Make SURE you run this script as Administrator
echo If you did, press any key to continue, else, close the script and run it again as Administrator
echo.


REM Process Mitigations
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d 222222222222222222222222222222222222222222222222 /f

REM Other Mitigation stuff
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d 3 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\FVE" /v "DisableExternalDMAUnderLock" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "EnableVirtualizationBasedSecurity" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeviceGuard" /v "HVCIMATRequired" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main" /v "DEPOff" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoDataExecutionPrevention" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "DisableHHDEP" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 0 /f
bcdedit /set isolatedcontext No
bcdedit /set allowedinmemorysettings 0x0
bcdedit /set disableelamdrivers Yes
bcdedit /set vsmlaunchtype Off
bcdedit /set bootmenupolicy Legacy

REM Telemetry
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\AppV\CEIP" /v "CEIPEnable" /t REG_DWORD /d 0 /f
REM the one below is actually 0 to disable customer improvement program, idk why
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\SQM" /v "DisableCustomerImprovementProgram" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f
REM same thing, 1 to disable
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MSDeploy\3" /v "EnableTelemetry" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

REM Defender and SmartScreen
REM we cannot disable Defender in Win11 but at least make it slimmer and stop it from taking actions on its own
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableSmartScreen" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\MicrosoftEdge\PhishingFilter" /v "EnabledV9" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRoutinelyTakingAction" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "ServiceKeepAlive" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Reporting" /v "DisableEnhancedNotifications" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\SmartScreen" /v "ConfigureAppInstallControlEnabled" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "1" /t REG_SZ /d "6" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "2" /t REG_SZ /d "6" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "4" /t REG_SZ /d "6" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Threats\ThreatSeverityDefaultAction" /v "5" /t REG_SZ /d "6" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\UX Configuration" /v "Notification_Suppress" /t REG_DWORD /d 1 /f

REM Hardware accelerated scheduling
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f

REM Disabled features
REM Get Insider Updates without joining the Insider Program and without having Telemetry enabled
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "BranchReadinessLevel" /t REG_DWORD /d 2 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuilds" /t REG_DWORD /d 1 /f
REM reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ManagePreviewBuildsPolicyValue" /t REG_DWORD /d 2 /f

echo.
echo Done, make sure you reboot your system
echo Run this script every time you upgrade to a new build
echo.
endlocal
goto menu

:Notebook
cls
cd C:\Users\%username%\BACKUP
cls
start HKEY_USERS.reg
start HKEY_LOCAL_MACHINE.reg
start HKEY_CURRENT_USER.reg
start HKEY_CLASSES_ROOT.reg
start HK_CURRENT_CONFIG.reg
goto LL2
:LL2
goto menu
:LL
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
pause
goto menu

:power
chcp 65001
title setting power plan
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
cls
echo 1 balanced
echo 2 High
echo 3 TurBo
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :balanced
if %choix%== 2 Goto :High
if %choix%== 3 Goto :TurBo
:smart
goto ld4
:balanced
goto ld1

:High
goto ld2

:TurBo
goto ld3

:ld1
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
powercfg -duplicatescheme a1841308-3541-4fab-bc81-f71556f20b4a >> APB_Log.txt
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld2
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
powercfg -duplicatescheme 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >> APB_Log.txt
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:ld3
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
powercfg -restoredefaultschemes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/1145945307205611623/1145945358707470386/Batlez_Tweaks.pow" -OutFile "%temp%\Apill-power.pow"
cls
powercfg /d 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -import "%temp%\Apill-power.pow" 44444444-4444-4444-4444-444444444449 >nul 2>&1 
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444449" >nul 2>&1 
powercfg /changename 44444444-4444-4444-4444-444444444449 "Turbo's Power Plan" "The Ultimate Power Plan to increase FPS, improve latency and reduce input lag." >nul 2>&1 
del "%temp%\Apill-power.pow"
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu
:ld4
title setting powerplan
color 7
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >> APB_Log.txt
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo succeed
ping -n 2 127.0.0.1>nul
goto menu

:cpu
set color=color 0
cls
echo Boost ? 
%color%
SET /p choix=" yes or no ? >  "
if %choix%== yes Goto :ball
if %choix%== no Goto :menu
:ball
echo Packking.......
ping -n 4.33 127.0.0.1>nul
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c" /v "ValueMax" /t reg_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\893dee8e-2bef-41e0-89c6-b55d0929964c\DefaultPowerSchemeValues\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c" /v "ValueMax" /t reg_DWORD /d "100" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t reg_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t reg_DWORD /d "0" /f
color 0
goto menu
:Keyboard
title Keybord
goto kb
:kb
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /t REG_SZ /d Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mouclass\Parameters /f >> APB_Log.txt
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t reg_SZ /d "200" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t reg_SZ /d "6" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t reg_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t reg_SZ /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t reg_SZ /d "59" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t reg_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t reg_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t reg_DWORD /d "0" /f
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t reg_DWORD /d "1000" /f
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t reg_SZ /d "506" /f
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t reg_SZ /d "58" /f
reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t reg_SZ /d "38" /f
reg add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t reg_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t reg_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t reg_SZ /d "31" /f
goto menu

:mouse
title mouse
goto Mu
:Mu
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\Applets\Regedit /v LastKey /t REG_SZ /d Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters /f >> APB_Log.txt
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseXCurve" /t reg_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t reg_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f >nul 2>&1
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t reg_SZ /d "10" /f >nul 2>&1
reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t reg_BINARY /d 
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /t reg_SZ /d "100" /f
goto menu

:nvidia
title nvidia boost
cls
setlocal
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
:: ---------------------------------------------------  !!! Incorrect Data Found !!!  -------------------------------------------------------------
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer --> [Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\nvlddmkm]
:: ------------------------------------------------------------------------------------------------------------------------------------------------
:: -----------------------------------------------------  !!! Unsupported Reg Type Found !!!  -----------------------------------------------------
REM ~ Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetworkInterfaceInstallTimestamp" /t REG_QWORD /d "0xf54709573e03da01" /f
:: ------------------------------------------------------------------------------------------------------------------------------------------------

Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDesc" /t REG_SZ /d "Qualcomm QCA9377 802.11ac Wireless Adapter" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ProviderName" /t REG_SZ /d "Qualcomm Communications Inc." /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDateData" /t REG_BINARY /d "00c02dbfde41d601" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverDate" /t REG_SZ /d "6-14-2020" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DriverVersion" /t REG_SZ /d "12.0.0.953" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InfPath" /t REG_SZ /d "oem32.inf" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InfSection" /t REG_SZ /d "ATHR_DEV_OS63_988x_DE_NFA435_TF_1_1.ndi.NTamd64" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "IncludedInfs" /t REG_MULTI_SZ /d "machine.inf\0netvwifibus.inf\0pci.inf" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "MatchingDeviceId" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "AddNewChannelfor11d" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "disableP2pLinkSpeedInd" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "AdaptiveSchedulerEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "UtfMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "UtfTraceLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ftEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wmmacEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "FWFileName" /t REG_SZ /d "qca9377_2_0.bin" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DBFileName" /t REG_SZ /d "Data9377_2_0.msc" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "BoardDataFileName" /t REG_SZ /d "eeprom_qca9377_1p1_NFA435_olpc.bin" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Txbfee" /t REG_DWORD /d "141" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Txbfeeenable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DpcTargetProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DpcLockMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "SmUfCfgParaPolicy" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wowEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "serviceMonWlan" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetBand" /t REG_DWORD /d "117440511" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "wModeSelect" /t REG_DWORD /d "117440511" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "VHT40WAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "stbcTxbfWar" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "CountryToEnable11ac" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "EnableHardwareRFKill" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "enablePPDULog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "YBForScanTimeout3Times" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "fastDlBinary" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "WarForEnablePmL1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*IfType" /t REG_DWORD /d "71" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*MediaType" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*PhysicalMediaType" /t REG_DWORD /d "9" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "BusType" /t REG_SZ /d "5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "Characteristics" /t REG_DWORD /d "132" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "roamPolicy" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "D0PCEnable" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "StaPreferredBand" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "StaWirelessMode" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "IfTypePreStart" /t REG_DWORD /d "71" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "InstallTimeStamp" /t REG_BINARY /d "e7070a00050014000a000f0018009801" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PnPCapabilities" /t REG_DWORD /d "16" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthReceiveAuthorizationState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthSendAuthorizationState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthReceiveControlState" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PortAuthSendControlState" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "DeviceInstanceID" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31\4&345942d6&0&00E0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "ComponentId" /t REG_SZ /d "PCI\VEN_168C&DEV_0042&SUBSYS_18101028&REV_31" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetCfgInstanceId" /t REG_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "NetLuidIndex" /t REG_DWORD /d "32768" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "PldrCapability" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "QcFwVersion" /t REG_SZ /d "98" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "QcHwVersion" /t REG_SZ /d "3.1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*WdiRscIPv4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "*WdiRscIPv6" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "SoftwareRadioOff" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "radioEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009" /v "g11bNicState" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "RootDevice" /t REG_MULTI_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "Export" /t REG_MULTI_SZ /d "\Device\{E8690919-717E-4DB4-9086-CCA7FBF954C5}" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "UpperBind" /t REG_MULTI_SZ /d "lltdio\0MsLldp\0Ndisuio\0RasPppoe\0RDMANDK\0rspndr\0Tcpip\0Tcpip6" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Linkage" /v "FilterList" /t REG_MULTI_SZ /d "{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{3BFD7820-D65C-4C1B-9FEA-983A019639EA}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0001\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{5CBF81BF-5055-47CD-9055-A76B2B4E3698}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0002\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{E475CF9A-60CD-4439-A75F-0079CE0E18A1}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0003\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{B5F4D659-7DAA-4565-8E41-BE220ED60542}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0004\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{B70D6460-3635-4D42-B866-B8AB1A24454C}-0000\0{E8690919-717E-4DB4-9086-CCA7FBF954C5}-{430BDADD-BAB0-41AB-A369-94B67FA5BE0A}-0005" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi" /v "Service" /t REG_SZ /d "Qcamain10x64" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Interfaces" /v "UpperRange" /t REG_SZ /d "ndis5" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Interfaces" /v "LowerRange" /t REG_SZ /d "wlan,ethernet,vwifi" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "ParamDesc" /t REG_SZ /d "D0 PacketCoalescing" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable" /v "Default" /t REG_SZ /d "0" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "0" /t REG_SZ /d "Disable" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\D0PCEnable\enum" /v "1" /t REG_SZ /d "Enable" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "ParamDesc" /t REG_SZ /d "Network Address" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "default" /t REG_SZ /d "" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "LimitText" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "UpperCase" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "optional" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\NetworkAddress" /v "type" /t REG_SZ /d "edit" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "ParamDesc" /t REG_SZ /d "Roaming aggressiveness" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy" /v "Default" /t REG_SZ /d "3" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "5" /t REG_SZ /d "5.Highest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "4" /t REG_SZ /d "4.Medium-high" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "3" /t REG_SZ /d "3.Medium" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "2" /t REG_SZ /d "2.Medium-low" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\roamPolicy\enum" /v "1" /t REG_SZ /d "1.Lowest" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "ParamDesc" /t REG_SZ /d "Preferred Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "default" /t REG_SZ /d "1" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "1" /t REG_SZ /d "1 - No Preference" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "2" /t REG_SZ /d "2 - Prefer 2.4Ghz Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaPreferredBand\enum" /v "3" /t REG_SZ /d "3 - Prefer 5Ghz Band" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "ParamDesc" /t REG_SZ /d "Wireless Mode" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "default" /t REG_SZ /d "12" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode" /v "type" /t REG_SZ /d "enum" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "1" /t REG_SZ /d "01 - 11 b" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "2" /t REG_SZ /d "02 - 11 g" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "3" /t REG_SZ /d "03 - 11 b/g" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "4" /t REG_SZ /d "04 - 11 g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "5" /t REG_SZ /d "05 - 11 b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "6" /t REG_SZ /d "06 - 11 a" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "7" /t REG_SZ /d "07 - 11 a/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "8" /t REG_SZ /d "08 - 11 a/b/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "9" /t REG_SZ /d "09 - 11 a/g/n" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "10" /t REG_SZ /d "10 - 11 a/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "11" /t REG_SZ /d "11 - 11 a/g/n/ac" /f
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}\0009\Ndi\Params\StaWirelessMode\enum" /v "12" /t REG_SZ /d "12 - 11 a/b/g/n/ac" /f
:: NVIDIA Inspector Profile
echo Applying NVIDIA Inspector Profile
curl -g -k -L -# -o "%temp%\nvidiaProfileInspector.zip" "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/latest/download/nvidiaProfileInspector.zip" >> APB_Log.txt
powershell -NoProfile Expand-Archive '%temp%\nvidiaProfileInspector.zip' -DestinationPath 'C:\NvidiaProfileInspector\' >> APB_Log.txt
curl -g -k -L -# -o "C:\NvidiaProfileInspector\ancel_nv_profile.nip" "https://cdn.discordapp.com/attachments/1003668036345143376/1067887367865778208/ancel_nv_profile.nip" >> APB_Log.txt
start "" /wait "C:\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\NvidiaProfileInspector\ancel_nv_profile.nip" >> APB_Log.txt
timeout /t 3 /nobreak > NUL

:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
)
timeout /t 1 /nobreak > NUL

:: NVIDIA Latency Tolerance
echo Setting NVIDIA Latency Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Force Contigous Memory Allocation
echo Forcing Contigous Memory Allocation
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable HDCP
echo Disabling High-bandwidth Digital Content Protection
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable TCC
echo Disabling TCC
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Tiled Display
echo Disabling Tiled Display
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA Telemetry
echo Disabling NVIDIA Telemetry
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA Display Power Saving
echo Disabling NVIDIA Display Power Saving
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Write Combining
echo Disabling Write Combining
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable DPC'S for each Core
echo Enabling DPC'S for each Core
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Video Redraw Acceleration
echo Setting Driver Acceleration
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA 3D Vision Shortcuts
echo Disabling NVIDIA Shortcuts
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Filter
echo Disabling Filter
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Increased Dedicated Video Memory
echo Increasing Dedicated Video Memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Set NVIDIA Driver Package Install Directory
echo Setting Driver Package Install Directory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: ReAllocate DMA Buffers
echo ReAllocating DMA Buffers
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Change PCounter Permissions
echo Changing Performance Counter Permissions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable DX Event Tracking
echo Disabling DirectX Event Tracking
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Verifications in Block Transfer Operations
echo Disabling Verifications Block Transfer Operations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable NVIDIA WDDM TDR
echo Disabling NVIDIA TDR
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitCount" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrTestMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

echo Finished NVIDIA GPU Optimizations
timeout /t 5 /nobreak > NUL
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplExposeWin2kDualView" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplTvLocaleAutoDetect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplAllowForceTVDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableActiveApp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableApplyColorsAtStartup" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoMenus" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "OverlayPageState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CinematicPageState" /t REG_DWORD /d "255" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplThermalSettings" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAppProfilePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableScreenMenuPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplCustomResConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAdditionalInfoPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisablePerfQualPage" /t REG_BINARY /d "00000000" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAGPSettingsPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CoolBits" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableOverlaySpanControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "TwinViewCapsOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableDesktopOverlapPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableTroubleshootingPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRefreshRatePage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRotateAngles" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableClearViewPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFanControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFrameSyncPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablenForcePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablePwrMzrOnDesktopMenu" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableRotationColorSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplNvThermPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "PowermizerPreferences" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "QTwkEnableModeChangeWarning" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "Latency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMPcieLinkSpeed" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMGpuId" /t REG_DWORD /d "256" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "UseBestResolution" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnablePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NvTelemetryContainer" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UvmDisable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogWarningEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogPagingEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogEventEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LogErrorEntries" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "EnableBugcheckDisplay" /t REG_DWORD /d "0" /f
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
pause
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E968-E325-11CE-BFC1-08002BE10318}\0000" /v "RMHdcpKeyglobZero" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplExposeWin2kDualView" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplTvLocaleAutoDetect" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplAllowForceTVDetection" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableActiveApp" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "DisableApplyColorsAtStartup" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoMenus" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "OverlayPageState" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CinematicPageState" /t REG_DWORD /d "255" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplThermalSettings" /t REG_DWORD /d "32" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAppProfilePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableScreenMenuPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplCustomResConfig" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAdditionalInfoPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisablePerfQualPage" /t REG_BINARY /d "00000000" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableAGPSettingsPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "CoolBits" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableOverlaySpanControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "TwinViewCapsOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableDesktopOverlapPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableTroubleshootingPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRefreshRatePage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplDisableRotateAngles" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NoPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableClearViewPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFanControl" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableFrameSyncPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableHardwarePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablenForcePage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnablePwrMzrOnDesktopMenu" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplEnableRotationColorSettings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "NvCplNvThermPage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "PowermizerPreferences" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "QTwkEnableModeChangeWarning" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "SimulateSecureBoot" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\nvlddmkm" /v "DisableMshybridNvsrSwitch" /t REG_DWORD /d "1" /f
cls
goto menu


:cpuboos
title Boost
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost 
chcp 65001 >nul
SET /p choix=" yes or No  >  "
if %choix%== yes Goto :bof
if %choix%== no Goto :menu

:bof
title Boost
cls
chcp 65001 >nul
cls
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo ══════════════════════════════════════════════════════════════════════════════════════════════════ 
echo 1 boost 10%
echo 2 boost 45%
echo 3 boost 100%
echo ══════════════════════════════════════════════════════════════════════════════════════════════════
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :1
if %choix%== 2 Goto :g
if %choix%== 3 Goto :v

:1
title boost 10%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "8" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "2" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "8" /f >nul
cls
goto menu

:g
title boost 45%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "12" /f >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "100" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "12" /f >nul
cls
goto menu

:v
title boost 100%
color 7
echo  (═══════                                      )
ping -n 1 127.0.0.1>nul
cls
echo  (══════════════                               )
ping -n 1 127.0.0.1>nul
cls
echo  (═══════════════════════════════════          )
ping -n 1 127.0.0.1>nul
cls
echo  (═════════════════════════════════════════════)
ping -n 1 127.0.0.1>nul
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalCriticalWorkerThreads" /t REG_DWORD /d "20" /f >nul >>APB_Log.txt        
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "500" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f >nul >> APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f >nul >>APB_Log.txt
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f >nul >>APB_Log.txt
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v "AdditionalDelayedWorkerThreads" /t REG_DWORD /d "20" /f >nul
cls
goto menu





:discord
title join discord
cls
echo join discord
SET /p choix="yes or no  >  "
if %choix%== yes Goto :dis
if %choix%== no Goto :menu

:dis
start https://discord.gg/g2G7PgsfCe
goto menu

:backup
cd C:\Users\%username%
mkdir BACKUP
echo backup Successful > BACKUP\backup.txt
cd BACKUP
cls
echo backup.
ping -n 2 127.0.0.1>nul
reg export HKLM HKEY_LOCAL_MACHINE.reg >> APB_Log.txt
cls
echo backup..
ping -n 2 127.0.0.1>nul
reg export HKCU HKEY_CURRENT_USER.reg >> APB_Log.txt
cls
echo backup...
ping -n 2 127.0.0.1>nul
reg export HKCR HKEY_CLASSES_ROOT.reg >> APB_Log.txt
cls
echo backup....
ping -n 2 127.0.0.1>nul
reg export HKU HKEY_USERS.reg >> APB_Log.txt
cls
echo backup...
ping -n 2 127.0.0.1>nul
reg export HKCC HK_CURRENT_CONFIG.reg >> APB_Log.txt
cd C:\Users\%username%
cls
echo backup..
ping -n 2 127.0.0.1>nul
cls
echo backup.
cls
echo %getcolor%"Successful"
ping -n 2 127.0.0.1>nul
goto pause


:pause
goto menu >nul


:intel
cls
setlocal
title boost cpu intel
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost 
pause
timeout /t 5 /nobreak > NUL
echo loadding
ping -n 2 127.0.0.1>nul
cls
echo use 500mb sure?
SET /p choix="yes or no  >  "
if %choix%== yes Goto :intelburn
if %choix%== no Goto :basic
:intelburn
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "SystemCacheDirtyPageThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageThreshold" /t REG_DWORD /d "500" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcTotalDirtyPages" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerinterval" /t REG_DWORD /d "0" /f
echo Packking...
tree > nul
cls
 call Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
tree
  call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
  call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
  call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
cd C:\Intel
mkdir BoostIntel 
cd BoostIntel 
echo 1:Boost Delay > intel.txt
echo 2:Use Maximum cpu intel >> intel.txt
echo 3:use Maximum use Gpu intel >> intel.txt
echo bcdedit /set firstmegabytepolicy UseAll >> Boost.bat
echo bcdedit /set avoidlowmemory 0x8000000 >> Boost.bat
echo bcdedit /set nolowmem Yes >> Boost.bat
echo TIMEOUT 3 >nul >> Boost.bat
echo exit >> Boost.bat
start Boost.bat
 call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f 
  call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
  call  Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
ping -n 5 127.0.0.1>nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CcDirtyPageTarget" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ObUnsecureGlobalNames" /t REG_MULTI_SZ /d "netfxcustomperfcounters.1.0\0SharedPerfIPCBlock\0Cor_Private_IPCBlock\0Cor_Public_IPCBlock_" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SeTokenSingletonAttributesConfig" /t REG_DWORD /d "3" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "obcaseinsensitive" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D1Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D2Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\usbflags" /v "fid_D3Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0000" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0001" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0002" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0003" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0004" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0005" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0006" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0007" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0008" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0009" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0010" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0011" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0012" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0013" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0014" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0015" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0016" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0017" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0018" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0019" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0020" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0021" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0022" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0023" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0024" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0025" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0026" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0027" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0028" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0029" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0030" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0031" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Class\USB\0032" /v "IdleEnable" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "222222222222222222222222222222222222222222222222" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableTsx" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MinimumDpcRate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcQueueDepth" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SplitLargeCaches" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogProfileOffset" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogPeriod" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumDpcQueueDepth" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "AdjustDpcThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IdealDpcRate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "LazyModeTimeout" /t REG_DWORD /d "10000" /f
:basic
@echo off
setlocal EnableDelayedExpansion

DISM > nul 2>&1 || echo error: administrator privileges required && pause && exit /b 1

:: initialize mask to get mask length
PowerShell Set-ProcessMitigation -System -Disable CFG
if not !errorlevel! == 0 (
    echo error: unsupported windows version
    echo info: press any key to continue
    pause > nul 2>&1
    exit /b 1
)

:: get current mask
for /f "tokens=3 skip=2" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions"') do (
    set "mitigation_mask=%%a"
)

echo info: current mask - !mitigation_mask!

:: set all values in current mask to 2 (disable all mitigations)
for /L %%a in (0,1,9) do (
    set "mitigation_mask=!mitigation_mask:%%a=2!"
)
echo info: modified mask - !mitigation_mask!

:: apply mask to kernel
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationOptions" /t REG_BINARY /d "!mitigation_mask!" /f > nul 2>&1
reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MitigationAuditOptions" /t REG_BINARY /d "!mitigation_mask!" /f > nul 2>&1
echo Successful
ping -n 1 127.0.0.1>nul
goto menu


:AMD
cls
setlocal
title AMD Boostecho                                
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
:: Enable MSI Mode for GPU
echo Enabling MSI Mode
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt              )
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Override Referesh Rate
echo Disabling Display Refresh Rate Override
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable SnapShot
echo Disabling SnapShot
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Anti Aliasing
echo Disabling Anti Aliasing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowSubscription
echo Disabling Subscriptions
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Anisotropic Filtering
echo Disabling Anisotropic Filtering
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowRSOverlay
echo Disabling Radeon Overlay
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t REG_SZ /d "false" /f >> APB_Log.txt 
timeout /t 1 /nobreak > NUL

:: Enable Adaptive DeInterlacing
echo Enabling Adaptive DeInterlacing
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AllowSkins
echo Disabling Skins
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t REG_SZ /d "false" /f >> APB_Log.txt 
timeout /t 1 /nobreak > NUL

:: Disable AutoColorDepthReduction_NA
echo Disabling Automatic Color Depth Reduction
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Power Gating
echo Disabling Power Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Clock Gating
echo Disabling Clock Gating
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableVceSwClockGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUvdClockGating" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable ASPM
echo Disabling Active State Power Management
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable ULPS
echo Disabling Ultra Low Power States
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable De-Lag
echo Enabling De-Lag
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable FRT
echo Disabling Frame Rate Target
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable DMA
echo Disabling DMA
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Enable BlockWrite
echo Enable BlockWrite
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable StutterMode
echo Disabling Stutter Mode
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "StutterMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable GPU Mem Clock Sleep State
echo Disabling GPU Memory Clock Sleep State
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_SclkDeepSleepDisable" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Thermal Throttling
echo Disabling Thermal Throttling
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable Preemption
echo Disabling Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableComputePreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting Main3D
echo Setting Main3D
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting FlipQueueSize
echo Setting FlipQueueSize
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "FlipQueueSize" /t REG_BINARY /d "3100" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Setting Shader Cache
echo Setting Shader Cache Size
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3200" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Configuring TFQ
echo Configuring TFQ
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable HDCP
echo Disabling High-Bandwidth Digital Content ProtectionF
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\\DAL2_DATA__2_0\DisplayPath_4\EDID_D109_78E9\Option" /v "ProtectionControl" /t REG_BINARY /d "0100000001000000" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable GPU Power Down
echo Disabling GPU Power Down
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_GPUPowerDownEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: Disable AMD Logging
echo Disabling AMD Logging
reg add "HKLM\SYSTEM\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL

:: AMD Tweaks (Melody The Neko#9870)
echo Applying Melody AMD Tweaks
for %%a in (LTRSnoopL1Latency LTRSnoopL0Latency LTRNoSnoopL1Latency LTRMaxNoSnoopLatency KMD_RpmComputeLatency
        DalUrgentLatencyNs memClockSwitchLatency PP_RTPMComputeF1Latency PP_DGBMMMaxTransitionLatencyUvd
        PP_DGBPMMaxTransitionLatencyGfx DalNBLatencyForUnderFlow DalDramClockChangeLatencyNs
        BGM_LTRSnoopL1Latency BGM_LTRSnoopL0Latency BGM_LTRNoSnoopL1Latency BGM_LTRNoSnoopL0Latency
        BGM_LTRMaxSnoopLatencyValue BGM_LTRMaxNoSnoopLatencyValue) do (reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "%%a" /t REG_DWORD /d "1" /f >> APB_Log.txt
)
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdateTriggered" /t REG_DWORD /d "0" /f > nul 2>&1 > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "PowerSaverAutoEnable_CUR" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "WindowSize" /t REG_SZ /d "1440,960" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "BuildType" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "WizardProfile" /t REG_SZ /d "PROFILE_CUSTOM" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "UserTypeWizardShown" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "LastPage" /t REG_SZ /d "settings/graphics/0/" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AutoUpdate" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "RSXBrowserUnavailable" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "SystemTray" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AllowWebContent" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "CN_Hide_Toast_Notification" /t REG_SZ /d "true" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN" /v "AnimationEffect" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN\OverlayNotification" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\CN\VirtualSuperResolution" /v "AlreadyNotified" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PerformanceMonitorOpacityWA" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "CaptureFileOutput" /t REG_SZ /d "C:\Users\Emre\Videos\Radeon ReLive" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "DvrEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "ActiveSceneId" /t REG_SZ /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "AVCCaps" /t REG_SZ /d "256,1,4096,4096,100000000,244800,0;" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "HEVCCaps" /t REG_SZ /d "256,1,4096,4096,2147483647,979200,0;" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "AvcEfcSupport" /t REG_SZ /d "0;" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "HevcEfcSupport" /t REG_SZ /d "0;" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantReplayEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInGameReplayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "PrevInstantGifEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "DvrDesktops" /t REG_SZ /d "\\.\DISPLAY19" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "RemoteServerStatus" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\DVR" /v "ShowRSOverlay" /t REG_SZ /d "false" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraSize" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraOpacity" /t REG_DWORD /d "100" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraAnchor" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraShownOnScreen" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "IndicatorPosition" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "TimerEnabled" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatOverlayEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatCustomOffset" /t REG_SZ /d "0.0260,0.0462" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatOverlayAnchor" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatBackgroundBlur" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatFontSize" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "RelativeCoords" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraOffset" /t REG_SZ /d "0.0208,0.0370" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraCustomOffset" /t REG_SZ /d "0.0208,0.0370" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraRect" /t REG_SZ /d "0.1667,0.2222" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "CameraCustomRect" /t REG_SZ /d "0.1667,0.2222" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatCustomRect" /t REG_SZ /d "0.1562,0.1562" /f > nul 2>&1
Reg.exe add "HKCU\Software\AMD\SCENE\0" /v "ChatOverlaySize" /t REG_DWORD /d "3" /f > nul 2>&1
Reg.exe add "HKCU\Software\ATI\ACE\Settings\ADL\AppProfiles" /v "AplReloadCounter" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\Software\AMD\Install" /v "AUEP" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\Software\AUEP" /v "RSX_AUEPStatus" /t REG_DWORD /d "2" /f > nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalOptimizeEdpLinkRate" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DalPSRFeatureEnable" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL0s" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableAspmL1" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePllOffInL1" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuClockGating" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSamuLightSleep" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableGPUVirtualizationFeature" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_BlockchainSupport" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_ChillEnabled" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_EnableGDIAcceleration" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableAutoWattman" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_DisableLightSleep" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3D_Refresh_Rate_Override_DEF" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "3to2Pulldown_NA" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AAF_NA" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Adaptive De-interlacing" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowRSOverlay" /t reg_SZ /d "false" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSkins" /t reg_SZ /d "false" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSnapshot" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AllowSubscription" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AntiAlias_NA" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AreaAniso_NA" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ASTT_NA" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "AutoColorDepthReduction_NA" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableSAMUPowerGating" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableUVDPowerGatingDynamic" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableVCEPowerGating" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL0s" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAspmL1" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableUlps_NA" /t reg_SZ /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t reg_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_FRTEnabled" /t reg_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t reg_DWORD /d "1" /f >nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NotifySubscription" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "IsComponentControl" /t REG_BINARY /d "00000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_USUEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_RadeonBoostEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "IsAutoDefault" /t REG_BINARY /d "01000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "KMD_DeLagEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ACE" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree_SET" /t REG_BINARY /d "3020322034203820313600" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_SET" /t REG_BINARY /d "302031203220332034203500" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_OPTION" /t REG_BINARY /d "3200" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AAF" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "GI" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "CatalystAI" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TemporalAAMultiplier_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EnableTripleBuffering" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ExportCompressedTex" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PixelCenter" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ZFormats_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "DitherAlpha_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect_D3D_SET" /t REG_BINARY /d "3020312032203320342038203900" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TFQ" /t REG_BINARY /d "3200" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "VSyncControl" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureOpt" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TextureLod" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASE" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASD" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ASTT" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasSamples" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAlias" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoDegree" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AnisoType" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasMapping_SET" /t REG_BINARY /d "3028303A302C313A3029203228303A322C313A3229203428303A342C313A3429203828303A382C313A382900" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiAliasSamples_SET" /t REG_BINARY /d "3020322034203800" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ForceZBufferDepth_SET" /t REG_BINARY /d "3020313620323400" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect_OGL_SET" /t REG_BINARY /d "3020312032203320342035203620372038203920313120313220313320313420313520313620313700" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Tessellation_SET" /t REG_BINARY /d "31203220342036203820313620333220363400" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "HighQualityAF" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "DisplayCrossfireLogo" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AppGpuId" /t REG_BINARY /d "300078003000310030003000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SwapEffect" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "PowerState" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "AntiStuttering" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TurboSync" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "SurfaceFormatReplacements" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "EQAA" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "ShaderCache" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "MLF" /t REG_BINARY /d "3000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "TruformMode_NA" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "LRTCEnable" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "3to2Pulldown" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "MosquitoNoiseRemoval_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "MosquitoNoiseRemoval" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Deblocking_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Deblocking" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DemoMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "OverridePA" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DynamicRange" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "StaticGamma_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "BlueStretch_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "BlueStretch" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "LRTCCoef" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "DynamicContrast_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "WhiteBalanceCorrection" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Fleshtone_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Fleshtone" /t REG_BINARY /d "350030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "ColorVibrance_ENABLE" /t REG_BINARY /d "31000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "ColorVibrance" /t REG_BINARY /d "340030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Detail_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Detail" /t REG_BINARY /d "310030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Denoise_ENABLE" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "Denoise" /t REG_BINARY /d "360034000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "TrueWhite" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "OvlTheaterMode" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "StaticGamma" /t REG_BINARY /d "3100300030000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD\DXVA" /v "InternetVideo" /t REG_BINARY /d "30000000" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdwddmg" /v "ChillEnabled" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D_DEF" /t REG_SZ /d "1" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000\UMD" /v "Main3D" /t REG_BINARY /d "3100" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDMACopy" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableBlockWrite" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PP_ThermalAutoThrottlingEnable" /t REG_DWORD /d "0" /f > nul 2>&1
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableDrmdmaPowerGating" /t REG_DWORD /d "1" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD Crash Defender Service" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\AMD External Events Utility" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdfendrmgr" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
Reg.exe add "HKLM\System\CurrentControlSet\Services\amdlog" /v "Start" /t REG_DWORD /d "4" /f > nul 2>&1
sc config amdlog start=disabled
sc config "AMD External Events Utility" start=disabled
cls
echo Finished AMD GPU Optimizations
timeout /t 5 /nobreak > NUL >> APB_Log.txt
goto menu





:lowcpu
title cpu runnig low %
echo                                ███████╗███████╗██████╗░███████╗░█████╗░██╗░░██╗
echo                                ╚════██║██╔════╝██╔══██╗╚════██║██╔══██╗╚██╗██╔╝
echo                                ░░███╔═╝█████╗░░██████╔╝░░███╔═╝███████║░╚███╔╝░
echo                                ██╔══╝░░██╔══╝░░██╔══██╗██╔══╝░░██╔══██║░██╔██╗░
echo                                ███████╗███████╗██║░░██║███████╗██║░░██║██╔╝╚██╗
echo                                ╚══════╝╚══════╝╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░░
echo Boost ???(press key to continue)
pause 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power >> APB_Log.txt
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power >> APB_Log.txt
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000 >> APB_Log.txt
goto menu
:ram
cls
set /p yesno=Boost ? yse or on 
echo call Boost
TIMEOUT 6 /nobreak > nul 
sc stop BITS
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start DsSvc
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "DcpSvc"
sc start WlanSvc
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
cls
ECHO Download Clear Ram
powershell.exe Invoke-WebRequest -Uri "https://github.com/rrpt66/RAM/raw/main/HELIOS.exe" -OutFile "Apill-fuse-Clear-ram.exe"
TIMEOUT 3 /nobreak
start Apill-fuse-Clear-ram.exe
echo Successful
TIMEOUT 2 /nobreak > nul
goto menu
:more
set credit=powershell.exe Write-Host "----------------------------------------------By siwat" -ForegroundColor Green
set color=powershell.exe Write-Host "----------------------------------------------Tab:2" -ForegroundColor Red
chcp 65001 > nul
cls
echo ═════════════════════════════════════════════════════════════════════════════════════════════════════
echo              ░█████╗░██████╗░██╗██╗░░░░░██╗░░░░░░░░░░░███████╗██╗░░░██╗░██████╗███████╗
echo              ██╔══██╗██╔══██╗██║██║░░░░░██║░░░░░░░░░░░██╔════╝██║░░░██║██╔════╝██╔════╝
echo              ███████║██████╔╝██║██║░░░░░██║░░░░░█████╗█████╗░░██║░░░██║╚█████╗░█████╗░░
echo              ██╔══██║██╔═══╝░██║██║░░░░░██║░░░░░╚════╝██╔══╝░░██║░░░██║░╚═══██╗██╔══╝░░
echo              ██║░░██║██║░░░░░██║███████╗███████╗░░░░░░██║░░░░░╚██████╔╝██████╔╝███████╗
echo              ╚═╝░░╚═╝╚═╝░░░░░╚═╝╚══════╝╚══════╝░░░░░░╚═╝░░░░░░╚═════╝░╚═════╝░╚══════╝  
echo                   ═══════════════════════════════════════════════════════════════════
echo                   ║ [1] ram boost                 ║ [16] commingsoon  ║         
echo                   ║ [2] commingsoon               ║ [17] commingsoon  ║ Hello %username% !
echo                   ║ [3] commingsoon               ║ [18] commingsoon  ║ 
echo                   ║ [4] commingsoon               ║ [19] Dcommingsoon ║
echo                   ║ [5] commingsoon               ║ [20] commingsoon  ║ 
echo                   ║ [6] commingsoon               ║ [21] commingsoon  ║ 
echo                   ║ [7] commingsoon               ║ [22] commingsoon  ║ 
echo                   ║ [8] commingsoon               ║ [23] commingsoon  ║ 
echo                   ║ [9] commingsoon               ║ [24] ccommingsoon ║
echo                   ║ [10] commingsoon              ║ [25] commingsoon  ║
echo                   ║ [11] commingsoon              ║ [26] commingsoon  ║
echo                   ║ [12] commingsoon              ║ [27] commingsoon  ║                   
echo                   ║ [13] commingsoon              ║ [28] commingsoon  ║ 
echo                   ║ [14] commingsoon              ║ [29] commingsoon  ║ 
echo                   ║ [15] commingsoon              ║ [30] commingsoon  ║ 002 commingsoon 
echo                   ║ [funtcion] not found          ║ [31] commingsoon  ║ 000 commingsoon 
echo                   ║ [33] commingsoon              ║ [32] commingsoon  ║ 
echo                   ═══════════════════════════════════════════════════════════════════   
%color%
%credit%
echo                                          Current Version:%Version%
echo ═════════════════════════════════════════════════════════════════════════════════════════════════════ 
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 goto :ram
goto menu