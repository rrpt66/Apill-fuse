dir /s /b Scan-By-Apill-fuse-Defender.txt
IF %ERRORLEVEL%== 1 (
goto start
cd %temp%
) ELSE (
exit
)
:start
start C:\Report
exit