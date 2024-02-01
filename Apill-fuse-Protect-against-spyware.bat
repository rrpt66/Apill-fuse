@echo off
:main
	call :isAdmin
	if %errorlevel% == 0 (
		goto :IsRun
	) else (
		echo Requesting administrative privileges...
		goto :UACPrompt
	)
goto :eof
:isAdmin
	fsutil dirty query %systemdrive% >nul
goto :eof
:UACPrompt
	echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
	echo UAC.ShellExecute "cmd.exe", "/c %~s0 %~1", "", "runas", 1 >> "%temp%\getadmin.vbs"
	"%temp%\getadmin.vbs"
	del "%temp%\getadmin.vbs"
goto :eof`
:Isrun
	if not "%1" == "max" start /MAX cmd /c %0 max & goto :eof
:LOOP
title Apill-fuse-scanner
chcp 65001
cls
echo.
echo.
  echo.  __ __     _____     __ __     _______       ______  _____    _____    __   __    __   __    _____  __ __      
echo. /_/\__/\  ^) ___ ^(   /_/\__/\ /\_______^)\    / ____/\/\ __/\  /\___/\  /_/\ /\_\  /_/\ /\_\ /\_____\/_/\__/\    
echo. ^) ^) ^) ^) ^)/ /\_/\ \  ^) ^) ^) ^) ^)\^(___  __\/    ^) ^) __\/^) ^)__\/ / / _ \ \ ^) ^) \ ^( ^(  ^) ^) \ ^( ^(^( ^(_____/^) ^) ^) ^) ^)   
echo./_/ /_/ // /_/ ^(_\ \/_/ /_/_/   / / /         \ \ \ / / /    \ \^(_^)/ //_/   \ \_\/_/   \ \_\\ \__\ /_/ /_/_/    
echo.\ \ \_\/ \ \ ^)_/ / /\ \ \ \ \  ^( ^( ^(          _\ \ \\ \ \_   / / _ \ \\ \ \   / /\ \ \   / // /__/_\ \ \ \ \    
echo. ^)_^) ^)    \ \/_\/ /  ^)_^) ^) \ \  \ \ \        ^)____^) ^)^) ^)__/\^( ^(_^( ^)_^) ^)^)_^) \ ^(_^(  ^)_^) \ ^(_^(^( ^(_____\^)_^) ^) \ \   
echo. \_\/      ^)_____^(   \_\/ \_\/  /_/_/        \____\/ \/___\/ \/_/ \_\/ \_\/ \/_/  \_\/ \/_/ \/_____/\_\/ \_\/   
echo.                                                                                                                
echo.                                                                                                                
echo.                                                                                                                
echo.                                                                                                                                                            
echo.
echo.
echo 1. Basic Check
echo 2. Basic Analysis Port
echo 3. Check BAD PORT
echo 4. Kill Port Virus
echo 5. Full Analysis Port
set /p m=" > "
goto %m%
goto :LOOP
:1
echo Check FTP 
for %%b in (20 21) do (
 for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":%%b" 
)
echo Check SSH 
for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":22" 
echo Check TelNet 
for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":23" 
echo Check SMTP 
for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":25" 
echo Check NETBIOS 
for %%b in (137 139) do (
 for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":%%b"
)
echo Check SMB 
for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":445" 
echo Check HTTP or HTTPs 
for %%b in (80 8080 443 8443) do (
 for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":%%b" 
)
echo Check Remote Destktop 
for /f "tokens=*" %%a in ('netstat -ano') do echo %%a | find /i ":3389" 
pause
goto :LOOP

:2
echo Analysis Port...
for /f "tokens=2,*" %%a in ('netstat -ano') do (
	for /f "delims=:. tokens=5" %%c in ('echo %%a') do (
		echo [ Port ] %%c	%%b
		if %%c equ 1 echo tcpmux
		if %%c equ 1 echo tcpmux
		if %%c equ 7 echo echo
		if %%c equ 9 echo discard
		if %%c equ 11 echo systat
		if %%c equ 13 echo daytime
		if %%c equ 15 echo netstat
		if %%c equ 17 echo qotd
		if %%c equ 19 echo chargen
		if %%c equ 20 echo ftp data
		if %%c equ 21 echo ftp access
		if %%c equ 22 echo ssh
		if %%c equ 23 echo telnet
		if %%c equ 25 echo smtp
		if %%c equ 37 echo time
		if %%c equ 42 echo name
		if %%c equ 43 echo nicname
		if %%c equ 53 echo domain
		if %%c equ 69 echo tftp
		if %%c equ 77 echo priv-rjs
		if %%c equ 79 echo finger
		if %%c equ 87 echo ttylink
		if %%c equ 95 echo supdup
		if %%c equ 101 echo hostriame
		if %%c equ 102 echo iso-tsap
		if %%c equ 103 echo gppitnp
		if %%c equ 104 echo acr-nema
		if %%c equ 109 echo pop2
		if %%c equ 110 echo pop3
		if %%c equ 111 echo sunrpc
		if %%c equ 113 echo auth
		if %%c equ 115 echo sftp
		if %%c equ 117 echo uucp-path
		if %%c equ 119 echo nntp
		if %%c equ 123 echo NTP
		if %%c equ 135 echo loc-srv ^/epmap
		if %%c equ 137 echo netbios
		if %%c equ 139 echo netbios
		if %%c equ 143 echo imap2
		if %%c equ 161 echo snmp
		if %%c equ 179 echo BGP
		if %%c equ 389 echo ldap
		if %%c equ 427 echo SLP ^(Also used by Apple Filing Protocol^)
		if %%c equ 465 echo smtp+ssl
		if %%c equ 512 echo print ^/ exec
		if %%c equ 513 echo login
		if %%c equ 514 echo shell
		if %%c equ 515 echo printer
		if %%c equ 526 echo tempo
		if %%c equ 530 echo courier
		if %%c equ 531 echo chat
		if %%c equ 532 echo netnews
		if %%c equ 540 echo uucp
		if %%c equ 548 echo AFP ^(Apple Filing Protocol^)
		if %%c equ 554 echo rtsp
		if %%c equ 556 echo remotefs
		if %%c equ 563 echo nntp+ssl
		if %%c equ 587 echo smtp ^(rfc6409^)
		if %%c equ 601 echo syslog-conn ^(rfc3195^)
		if %%c equ 636 echo ldap+ssl
		if %%c equ 993 echo ldap+ssl
		if %%c equ 995 echo pop3+ssl
		if %%c equ 1719 echo h323gatestat
		if %%c equ 1720 echo h323hostcall
		if %%c equ 1723 echo pptp
		if %%c equ 2049 echo nfs
		if %%c equ 3659 echo apple-sasl ^/ PasswordServer
		if %%c equ 4045 echo lockd
		if %%c equ 5060 echo sip
		if %%c equ 5061 echo sips
		if %%c equ 6000 echo X11
		if %%c equ 6566 echo sane-port
		if %%c equ 6665 echo Alternate IRC ^[Apple addition^]
		if %%c equ 6666 echo Alternate IRC ^[Apple addition^]
		if %%c equ 6667 echo Standard IRC ^[Apple addition^]
		if %%c equ 6668 echo Alternate IRC ^[Apple addition^]
		if %%c equ 6669 echo Alternate IRC ^[Apple addition^]
		if %%c equ 6697 echo IRC + TLS
		if %%c equ 10080 echo Amanda
	)
)
pause
goto :LOOP
:3
echo Check BAD Port...
for /f "tokens=2,*" %%a in ('netstat -ano') do (
	for /f "delims=:. tokens=5" %%c in ('echo %%a') do (
		echo %%c	%%b
		if %%c equ 10000 echo [ Found ] Drop Dumaru.Y
		if %%c equ 1001 echo [ Found ] Silencer
		if %%c equ 10048 echo [ Found ] Delf 
		if %%c equ 10080 echo [ Found ] Drop MyDoom.B
		if %%c equ 10100 echo [ Found ] Gift, Senna Spy
		if %%c equ 1026 echo [ Found ] RSM
		if %%c equ 1080 echo [ Found ] Drop MyDoom
		if %%c equ 1120 echo [ Found ] Net Bus 
		if %%c equ 113 echo [ Found ] Shiver
		if %%c equ 1170 echo [ Found ] Psyber Stream
		if %%c equ 1234 echo [ Found ] Ultors Trojan ^& Valvopausepause
		if %%c equ 12345 echo [ Found ] Drop NetBus, GabanBus, Pie Bill Gates, X-Bill, Valvo line
		if %%c equ 12346 echo [ Found ] NetBus 1.x
		if %%c equ 12349 echo [ Found ] Bionet 
		if %%c equ 1243 echo [ Found ] Sub Seven
		if %%c equ 135 echo [ Found ] Drop Blaster Worm. 
		if %%c equ 1363 echo [ Found ] ndm requester
		if %%c equ 1364 echo [ Found ] ndm server
		if %%c equ 1368 echo [ Found ] screen cast
		if %%c equ 1373 echo [ Found ] hromgrafx
		if %%c equ 1377 echo [ Found ] cichlid
		if %%c equ 139 echo [ Found ] Drop Messenger Worm, Nuker
		if %%c equ 1433 echo [ Found ] Wrom
		if %%c equ 1434 echo [ Found ] Worm
		if %%c equ 16660 echo [ Found ] Stacheldraht intruder-to-master
		if %%c equ 17300 echo [ Found ] Drop Kuang2
		if %%c equ 18006 echo [ Found ] Back Orifice 2000
		if %%c equ 18753 echo [ Found ] Shaft master-to-daemon
		if %%c equ 1981 echo [ Found ] ShockRave
		if %%c equ 2001 echo [ Found ] Trojan Cow
		if %%c equ 20034 echo [ Found ] NetBus 2 Pro
		if %%c equ 2023 echo [ Found ] Ripper Pro
		if %%c equ 20432 echo [ Found ] Shaft intruder-to-master
		if %%c equ 21 echo [ Found ] DarkFTP 
		if %%c equ 2140 echo [ Found ] Deep Throat 
		if %%c equ 21544 echo [ Found ] Girl Friend 
		if %%c equ 22222 echo [ Found ] Rux
		if %%c equ 2283 echo [ Found ] Drop Dumaru.Y
		if %%c equ 23 echo [ Found ] EliteWrap 
		if %%c equ 23432 echo [ Found ] Asylum
		if %%c equ 25 echo [ Found ] Jesrto 
		if %%c equ 2535 echo [ Found ] Drop Beagle
		if %%c equ 25685 echo [ Found ] Moon Pie 
		if %%c equ 27374 echo [ Found ] Drop SubSeven, Sub Seven
		if %%c equ 2745 echo [ Found ] Bagle Virus
		if %%c equ 27665 echo [ Found ] Trinoo intruder-to-master
		if %%c equ 2989 echo [ Found ] Rat backdoor
		if %%c equ 30100 echo [ Found ] NetSphere
		if %%c equ 3024 echo [ Found ] WinCrash
		if %%c equ 31 echo [ Found ] Agent 31, Hackers Paradise, Masters Paradise
		if %%c equ 3127 echo [ Found ] Drop MyDoom
		if %%c equ 3128 echo [ Found ] Drop MyDoom
		if %%c equ 3131 echo [ Found ] SubSari
		if %%c equ 31337 echo [ Found ] Back Orifice, Baron Night, Bo Facil
		if %%c equ 31338 echo [ Found ] Net Spy
		if %%c equ 31339 echo [ Found ] Net Spy
		if %%c equ 3150 echo [ Found ] Deep Throat, Invasor
		if %%c equ 33270 echo [ Found ] Trinity master-to-daemon
		if %%c equ 33567 echo [ Found ] Backdoor rootshell via inetd (from Lion worm)
		if %%c equ 33568 echo [ Found ] Trojaned version of SSH (from Lion worm)
		if %%c equ 3410 echo [ Found ] Drop Backdoor OptixPro
		if %%c equ 3700 echo [ Found ] Portal of Doom
		if %%c equ 4000 echo [ Found ] RA
		if %%c equ 40421 echo [ Found ] Masters Paradise Trojan horse
		if %%c equ 4444 echo [ Found ] Worm
		if %%c equ 44444 echo [ Found ] Prosiak
		if %%c equ 445 echo [ Found ] Drop Blaster Worm.
		if %%c equ 4950 echo [ Found ] ICQ Trojan
		if %%c equ 5554 echo [ Found ] Drop Sasser
		if %%c equ 60008 echo [ Found ] Backdoor rootshel via inetd (from Lion worm)
		if %%c equ 6267 echo [ Found ] GW Girl 
		if %%c equ 6346 echo [ Found ] Gnutella
		if %%c equ 6400 echo [ Found ] The Thing
		if %%c equ 64666 echo [ Found ] RSM
		if %%c equ 65000 echo [ Found ] Stacheldraht master-to-daemon
		if %%c equ 65506 echo [ Found ] Drop PhatBot, Agobot, Gaobot
		if %%c equ 666 echo [ Found ] Rippe
		if %%c equ 6667 echo [ Found ] Trinity intruder-to-master, master-to-daemon SubSeven server (default for V2.1 Icqfix and beyond)
		if %%c equ 6670 echo [ Found ] Deep Throat
		if %%c equ 6711 echo [ Found ] Sub Seven
		if %%c equ 6776 echo [ Found ] Sub Seven
		if %%c equ 68 echo [ Found ] Mspy 
		if %%c equ 6969 echo [ Found ] GateCrash 
		if %%c equ 7300 echo [ Found ] Net Spy 
		if %%c equ 7597 echo [ Found ] Qaz
		if %%c equ 7626 echo [ Found ] Gdoor 
		if %%c equ 7777 echo [ Found ] GodMsg 
		if %%c equ 80 echo [ Found ] Codered 
		if %%c equ 8012 echo [ Found ] Ptakks
		if %%c equ 8866 echo [ Found ] Drop Beagle.B
	)
)
:KILL
set a=
set /p a=[ Kill Port Number : ] 
netsh advfirewall firewall add rule name="Close Port %a%" dir=in action=allow protocol=TCP localport=%a%
if "%a%"=="" goto :LOOP
goto :KILL
:5
:4
echo [ Found ] Kill All BAD Port...
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
) do netsh advfirewall firewall add rule name="Close Port %%a" dir=in action=allow protocol=TCP localport=%%a
goto :LOOP

:6
echo Full Analysis Scan Port
for /f "tokens=2,*" %%a in ('netstat -ano') do (
	for /f "delims=:. tokens=5" %%c in ('echo [ Found ] %%a') do (
		echo [ Port ] %%c	%%b
		if %%c equ 0 echo In programming APIs ^(not in communication between hosts^), requests a system-allocated ^(dynamic^) port^[6^]
		if %%c equ 1 echo TCP Port Service Multiplexer ^(TCPMUX^). Historic. Both TCP and UDP have been assigned to TCPMUX by IANA,^[2^] but by design only TCP is specified.^[7^]
		if %%c equ 2 echo compressnet ^(Management Utility^)^[3^]
		if %%c equ 3 echo compressnet ^(Compression Process^)^[3^]
		if %%c equ 5 echo Remote Job Entry^[8^] was historically using socket 5 in its old socket form, while MIB PIM has identified it as TCP/5^[9^] and IANA has assigned both TCP and UDP 5 to it.
		if %%c equ 7 echo Echo Protocol^[10^]^[11^]
		if %%c equ 9 echo Discard Protocol^[13^]
		if %%c equ 11 echo Active Users ^(systat service^)^[15^]^[16^]
		if %%c equ 13 echo Daytime Protocol^[17^]
		if %%c equ 15 echo Previously netstat service^[2^]^[15^]
		if %%c equ 17 echo Quote of the Day ^(QOTD^)^[18^]
		if %%c equ 18 echo Message Send Protocol^[19^]^[20^]
		if %%c equ 19 echo Character Generator Protocol ^(CHARGEN^)^[21^]
		if %%c equ 20 echo File Transfer Protocol ^(FTP^) data transfer^[11^]
		if %%c equ 21 echo File Transfer Protocol ^(FTP^) control ^(command^)^[11^]^[12^]^[22^]^[23^]
		if %%c equ 22 echo Secure Shell ^(SSH^),^[11^] secure logins, file transfers ^(scp, sftp^) and port forwarding
		if %%c equ 23 echo Telnet protocol—unencrypted text communications^[11^]^[24^]
		if %%c equ 25 echo Simple Mail Transfer Protocol ^(SMTP^),^[11^]^[25^] used for email routing between mail servers
		if %%c equ 27 echo nsw-fe ^(NSW User System FE^)^[3^]
		if %%c equ 28 echo Palo Alto Networks^' Panorama High Availability ^(HA^) sync encrypted port.^[26^]
		if %%c equ 29 echo msg-icp ^(MSG ICP^)^[3^]
		if %%c equ 31 echo msg-auth ^(MSG Authentication^)^[3^]
		if %%c equ 33 echo dsp ^(Display Support Protocol^)^[3^]
		if %%c equ 37 echo Time Protocol^[27^]
		if %%c equ 38 echo rap ^(Route Access Protocol^)^[3^]
		if %%c equ 39 echo rlp ^(Resource Location Protocol^)^[3^]
		if %%c equ 41 echo graphics ^(Graphics^)^[3^]
		if %%c equ 42 echo Host Name Server Protocol^[28^]
		if %%c equ 43 echo WHOIS protocol^[29^]^[30^]^[31^]
		if %%c equ 44 echo mpm-flags ^(MPM FLAGS Protocol^)^[3^]
		if %%c equ 45 echo mpm ^(Message Processing Module ^[recv^]^)^[3^]
		if %%c equ 46 echo mpm-snd ^(MPM ^[default send^]^)^[3^]
		if %%c equ 48 echo auditd ^(Digital Audit Daemon^)^[3^]
		if %%c equ 49 echo TACACS Login Host protocol.^[32^] TACACS+, still in draft which is an improved but distinct version of TACACS, only uses TCP 49.^[33^]
		if %%c equ 50 echo re-mail-ck ^(Remote Mail Checking Protocol^)^[3^]
		if %%c equ 51 echo Historically used for Interface Message Processor logical address management,^[34^] entry has been removed by IANA on 2013-05-25
		if %%c equ 52 echo Xerox Network Systems ^(XNS^) Time Protocol. Despite this port being assigned by IANA, the service is meant to work on SPP ^(ancestor of IPX/SPX^), instead of TCP/IP.^[35^]
		if %%c equ 53 echo Domain Name System ^(DNS^)^[36^]^[11^]
		if %%c equ 54 echo Xerox Network Systems ^(XNS^) Clearinghouse ^(Name Server^). Despite this port being assigned by IANA, the service is meant to work on SPP ^(ancestor of IPX/SPX^), instead of TCP/IP.^[35^]
		if %%c equ 55 echo isi-gl ^(ISI Graphics Language^)^[3^]
		if %%c equ 56 echo Xerox Network Systems ^(XNS^) Authentication Protocol. Despite this port being assigned by IANA, the service is meant to work on SPP ^(ancestor of IPX/SPX^), instead of TCP/IP.^[35^]
		if %%c equ 58 echo Xerox Network Systems ^(XNS^) Mail. Despite this port being assigned by IANA, the service is meant to work on SPP ^(ancestor of IPX/SPX^), instead of TCP/IP.^[35^]
		if %%c equ 61 echo Historically assigned to the NIFTP-Based Mail protocol,^[37^] but was never documented in the related IEN.^[38^] The port number entry was removed from IANA^'s registry on 2017-05-18.^[2^]
		if %%c equ 62 echo acas ^(ACA Services^)^[3^]
		if %%c equ 63 echo whoispp ^(whois++^)^[3^]
		if %%c equ 64 echo covia ^(Communications Integrator ^(CI^)^)^[3^]
		if %%c equ 65 echo tacacs-ds ^(TACACS-Database Service^)^[3^]
		if %%c equ 66 echo sql-net ^(Oracle SQL*NET^)^[3^]
		if %%c equ 67 echo Bootstrap Protocol ^(BOOTP^) server;^[11^] also used by Dynamic Host Configuration Protocol ^(DHCP^)
		if %%c equ 68 echo Bootstrap Protocol ^(BOOTP^) client;^[11^] also used by Dynamic Host Configuration Protocol ^(DHCP^)
		if %%c equ 69 echo Trivial File Transfer Protocol ^(TFTP^)^[11^]^[39^]^[40^]^[41^]
		if %%c equ 70 echo Gopher protocol^[42^]
		if %%c equ 76 echo deos ^(Distributed External Object Store^)^[3^]
		if %%c equ 78 echo vettcp ^(vettcp^)^[3^]
		if %%c equ 79 echo Finger protocol^[11^]^[46^]^[47^]
		if %%c equ 80 echo Hypertext Transfer Protocol ^(HTTP^)^[48^]^[49^] uses TCP in versions 1.x and 2. HTTP/3 uses QUIC,^[50^] a transport protocol on top of UDP.
		if %%c equ 81 echo TorPark onion routing^[verification needed^]
		if %%c equ 82 echo xfer ^(XFER Utility^)^[3^]
		if %%c equ 82 echo TorPark control^[verification needed^]
		if %%c equ 83 echo mit-ml-dev ^(MIT ML Device^)^[3^]
		if %%c equ 84 echo ctf ^(Common Trace Facility^)^[3^]
		if %%c equ 85 echo mit-ml-dev ^(MIT ML Device^)^[3^]
		if %%c equ 86 echo mfcobol ^(Micro Focus Cobol^)^[3^]
		if %%c equ 88 echo Kerberos^[11^]^[51^]^[52^] authentication system
		if %%c equ 89 echo su-mit-tg ^(SU/MIT Telnet Gateway^)^[3^]
		if %%c equ 90 echo dnsix ^(DNSIX Security Attribute Token Map^)^[3^]
		if %%c equ 90 echo PointCast ^(dotcom^)^[2^]
		if %%c equ 91 echo mit-dov ^(MIT Dover Spooler^)^[3^]
		if %%c equ 92 echo npp ^(Network Printing Protocol^)^[3^]
		if %%c equ 93 echo dcp ^(Device Control Protocol^)^[3^]
		if %%c equ 94 echo objcall ^(Tivoli Object Dispatcher^)^[3^]
		if %%c equ 95 echo SUPDUP, terminal-independent remote login^[53^]
		if %%c equ 96 echo dixie ^(DIXIE Protocol Specification^)^[3^]
		if %%c equ 97 echo swift-rvf ^(Swift Remote Virtual File Protocol^)^[3^]
		if %%c equ 98 echo tacnews ^(TAC News^)^[3^]
		if %%c equ 99 echo metagram ^(Metagram Relay^)^[3^]
		if %%c equ 101 echo NIC host name^[54^]
		if %%c equ 102 echo ISO Transport Service Access Point ^(TSAP^) Class 0 protocol;^[55^]^[56^]
		if %%c equ 104 echo Digital Imaging and Communications in Medicine ^(DICOM; also port 11112^)
		if %%c equ 105 echo CCSO Nameserver^[57^]
		if %%c equ 106 echo macOS Server, ^(macOS^) password server^[11^]
		if %%c equ 107 echo Remote User Telnet Service ^(RTelnet^)^[58^]
		if %%c equ 108 echo IBM Systems Network Architecture ^(SNA^) gateway access server
		if %%c equ 109 echo Post Office Protocol, version 2 ^(POP2^)^[59^]
		if %%c equ 110 echo Post Office Protocol, version 3 ^(POP3^)^[11^]^[60^]^[61^]
		if %%c equ 111 echo Open Network Computing Remote Procedure Call ^(ONC RPC, sometimes referred to as Sun RPC^)
		if %%c equ 113 echo Ident, authentication service/identification protocol,^[11^]^[62^] used by IRC servers to identify users
		if %%c equ 115 echo Simple File Transfer Protocol^[64^]
		if %%c equ 117 echo UUCP Mapping Project ^(path service^)^[citation needed^]
		if %%c equ 118 echo Structured Query Language ^(SQL^) Services^[jargon^]
		if %%c equ 119 echo Network News Transfer Protocol ^(NNTP^),^[11^] retrieval of newsgroup messages^[65^]^[66^]
		if %%c equ 123 echo Network Time Protocol ^(NTP^), used for time synchronization^[11^]
		if %%c equ 126 echo Formerly Unisys Unitary Login, renamed by Unisys to NXEdit. Used by Unisys Programmer^'s Workbench for Clearpath MCP, an IDE for Unisys MCP software development
		if %%c equ 135 echo DCE endpoint resolution
		if %%c equ 137 echo NetBIOS Name Service, used for name registration and resolution^[68^]^[69^]
		if %%c equ 138 echo NetBIOS Datagram Service^[11^]^[68^]^[69^]
		if %%c equ 139 echo NetBIOS Session Service^[68^]^[69^]
		if %%c equ 143 echo Internet Message Access Protocol ^(IMAP^),^[11^] management of electronic mail messages on a server^[70^]
		if %%c equ 151 echo HEMS
		if %%c equ 152 echo Background File Transfer Program ^(BFTP^)^[71^]^[importance?^]
		if %%c equ 153 echo Simple Gateway Monitoring Protocol ^(SGMP^), a protocol for remote inspection and alteration of gateway management information^[72^]
		if %%c equ 156 echo Structured Query Language ^(SQL^) Service^[jargon^]
		if %%c equ 158 echo Distributed Mail System Protocol ^(DMSP, sometimes referred to as Pcmail^)^[73^]^[importance?^]
		if %%c equ 161 echo Simple Network Management Protocol ^(SNMP^)^[74^]^[citation needed^]^[11^]
		if %%c equ 162 echo Simple Network Management Protocol Trap ^(SNMPTRAP^)^[74^]^[75^]^[citation needed^]
		if %%c equ 165 echo Xerox
		if %%c equ 169 echo SEND
		if %%c equ 170 echo Network PostScript print server
		if %%c equ 177 echo X Display Manager Control Protocol ^(XDMCP^), used for remote logins to an X Display Manager server^[76^]^[self-published source^]
		if %%c equ 179 echo Border Gateway Protocol ^(BGP^),^[77^] used to exchange routing and reachability information among autonomous systems ^(AS^) on the Internet
		if %%c equ 180 echo ris
		if %%c equ 194 echo Internet Relay Chat ^(IRC^)^[78^]
		if %%c equ 199 echo SNMP Unix Multiplexer ^(SMUX^)^[79^]
		if %%c equ 201 echo AppleTalk Routing Maintenance
		if %%c equ 209 echo Quick Mail Transfer Protocol^[80^]^[self-published source^]
		if %%c equ 210 echo ANSI Z39.50
		if %%c equ 213 echo Internetwork Packet Exchange ^(IPX^)
		if %%c equ 218 echo Message posting protocol ^(MPP^)
		if %%c equ 220 echo Internet Message Access Protocol ^(IMAP^), version 3
		if %%c equ 259 echo Efficient Short Remote Operations ^(ESRO^)
		if %%c equ 262 echo Arcisdms
		if %%c equ 264 echo Border Gateway Multicast Protocol ^(BGMP^)
		if %%c equ 280 echo http-mgmt
		if %%c equ 300 echo ThinLinc Web Access
		if %%c equ 308 echo Novastor Online Backup
		if %%c equ 311 echo macOS Server Admin^[11^] ^(officially AppleShare IP Web administration^[2^]^)
		if %%c equ 312 echo macOS Xsan administration^[11^]
		if %%c equ 318 echo PKIX Time Stamp Protocol ^(TSP^)
		if %%c equ 319 echo Precision Time Protocol ^(PTP^) event messages
		if %%c equ 320 echo Precision Time Protocol ^(PTP^) general messages
		if %%c equ 350 echo Mapping of Airline Traffic over Internet Protocol ^(MATIP^) type A
		if %%c equ 351 echo MATIP type B
		if %%c equ 356 echo cloanto-net-1 ^(used by Cloanto Amiga Explorer and VMs^)
		if %%c equ 366 echo On-Demand Mail Relay ^(ODMR^)
		if %%c equ 369 echo Rpc2portmap
		if %%c equ 370 echo codaauth2, Coda authentication server
		if %%c equ 371 echo ClearCase albd
		if %%c equ 376 echo Amiga Envoy Network Inquiry Protocol
		if %%c equ 383 echo HP data alarm manager
		if %%c equ 384 echo A Remote Network Server System
		if %%c equ 387 echo AURP ^(AppleTalk Update-based Routing Protocol^)^[82^]
		if %%c equ 388 echo Unidata LDM near real-time data distribution protocol^[83^]^[self-published source^]^[84^]^[self-published source^]
		if %%c equ 389 echo Lightweight Directory Access Protocol ^(LDAP^)^[11^]
		if %%c equ 399 echo Digital Equipment Corporation DECnet+ ^(Phase V^) over TCP/IP ^(RFC1859^)
		if %%c equ 401 echo Uninterruptible power supply ^(UPS^)
		if %%c equ 427 echo Service Location Protocol ^(SLP^)^[11^]
		if %%c equ 433 echo NNTP, part of Network News Transfer Protocol
		if %%c equ 434 echo Mobile IP Agent ^(RFC 5944^)
		if %%c equ 443 echo Hypertext Transfer Protocol Secure ^(HTTPS^)^[48^]^[49^] uses TCP in versions 1.x and 2. HTTP/3 uses QUIC,^[50^] a transport protocol on top of UDP.
		if %%c equ 444 echo Simple Network Paging Protocol ^(SNPP^), RFC 1568
		if %%c equ 445 echo Microsoft-DS ^(Directory Services^) Active Directory,^[85^] Windows shares
		if %%c equ 464 echo Kerberos Change/Set password
		if %%c equ 475 echo tcpnethaspsrv, Aladdin Knowledge Systems Hasp services
		if %%c equ 491 echo GO-Global remote access and application publishing software
		if %%c equ 497 echo Retrospect
		if %%c equ 500 echo Internet Security Association and Key Management Protocol ^(ISAKMP^) / Internet Key Exchange ^(IKE^)^[11^]
		if %%c equ 502 echo Modbus Protocol
		if %%c equ 504 echo Citadel, multiservice protocol for dedicated clients for the Citadel groupware system
		if %%c equ 510 echo FirstClass Protocol ^(FCP^), used by FirstClass client/server groupware system
		if %%c equ 512 echo Rexec, Remote Process Execution
		if %%c equ 513 echo rlogin
		if %%c equ 514 echo Remote Shell, used to execute non-interactive commands on a remote system ^(Remote Shell, rsh, remsh^)
		if %%c equ 515 echo Line Printer Daemon ^(LPD^),^[11^] print service
		if %%c equ 517 echo Talk
		if %%c equ 518 echo NTalk
		if %%c equ 520 echo efs, extended file name server
		if %%c equ 521 echo Routing Information Protocol Next Generation ^(RIPng^)
		if %%c equ 524 echo NetWare Core Protocol ^(NCP^) is used for a variety things such as access to primary NetWare server resources, Time Synchronization, etc.
		if %%c equ 525 echo Timed, Timeserver
		if %%c equ 530 echo Remote procedure call ^(RPC^)
		if %%c equ 532 echo netnews^[11^]
		if %%c equ 533 echo netwall, for emergency broadcasts
		if %%c equ 540 echo Unix-to-Unix Copy Protocol ^(UUCP^)
		if %%c equ 542 echo commerce ^(Commerce Applications^)
		if %%c equ 543 echo klogin, Kerberos login
		if %%c equ 544 echo kshell, Kerberos Remote shell
		if %%c equ 546 echo DHCPv6 client
		if %%c equ 547 echo DHCPv6 server
		if %%c equ 548 echo Apple Filing Protocol ^(AFP^) over TCP^[11^]
		if %%c equ 550 echo new-rwho, new-who^[89^]
		if %%c equ 554 echo Real Time Streaming Protocol ^(RTSP^)^[11^]
		if %%c equ 556 echo Remotefs, RFS, rfs_server
		if %%c equ 560 echo rmonitor, Remote Monitor
		if %%c equ 561 echo monitor
		if %%c equ 563 echo NNTP over TLS/SSL ^(NNTPS^)
		if %%c equ 564 echo 9P ^(Plan 9^)
		if %%c equ 585 echo Previously assigned for use of Internet Message Access Protocol over TLS/SSL ^(IMAPS^), now deregistered in favour of port 993.^[90^]
		if %%c equ 587 echo email message submission^[11^]^[91^] ^(SMTP^)
		if %%c equ 591 echo FileMaker 6.0 ^(and later^) Web Sharing ^(HTTP Alternate, also see port 80^)
		if %%c equ 593 echo HTTP RPC Ep Map, Remote procedure call over Hypertext Transfer Protocol, often used by Distributed Component Object Model services and Microsoft Exchange Server
		if %%c equ 601 echo Reliable Syslog Service — used for system logging
		if %%c equ 604 echo TUNNEL profile,^[92^] a protocol for BEEP peers to form an application layer tunnel
		if %%c equ 623 echo ASF Remote Management and Control Protocol ^(ASF-RMCP^) ^& IPMI Remote Management Protocol
		if %%c equ 625 echo Open Directory Proxy ^(ODProxy^)^[11^]
		if %%c equ 631 echo Internet Printing Protocol ^(IPP^)^[11^]
		if %%c equ 635 echo RLZ DBase
		if %%c equ 636 echo Lightweight Directory Access Protocol over TLS/SSL ^(LDAPS^)^[11^]
		if %%c equ 639 echo Multicast Source Discovery Protocol, MSDP
		if %%c equ 641 echo SupportSoft Nexus Remote Command ^(control/listening^), a proxy gateway connecting remote control traffic
		if %%c equ 643 echo SANity
		if %%c equ 646 echo Label Distribution Protocol ^(LDP^), a routing protocol used in MPLS networks
		if %%c equ 647 echo DHCP Failover protocol^[93^]
		if %%c equ 648 echo Registry Registrar Protocol ^(RRP^)^[94^]
		if %%c equ 651 echo IEEE-MMS
		if %%c equ 653 echo SupportSoft Nexus Remote Command ^(data^), a proxy gateway connecting remote control traffic
		if %%c equ 654 echo Media Management System ^(MMS^) Media Management Protocol ^(MMP^)^[95^]
		if %%c equ 655 echo Tinc VPN daemon
		if %%c equ 657 echo IBM RMC ^(Remote monitoring and Control^) protocol, used by System p5 AIX Integrated Virtualization Manager ^(IVM^)^[96^] and Hardware Management Console to connect managed logical partitions ^(LPAR^) to enable dynamic partition reconfiguration
		if %%c equ 660 echo macOS Server administration,^[2^] version 10.4 and earlier^[11^]
		if %%c equ 666 echo Doom, the first online first-person shooter
		if %%c equ 674 echo Application Configuration Access Protocol ^(ACAP^)
		if %%c equ 684 echo CORBA IIOP SSL^[97^]
		if %%c equ 688 echo REALM-RUSD ^(ApplianceWare Server Appliance Management Protocol^)
		if %%c equ 690 echo Velneo Application Transfer Protocol ^(VATP^)
		if %%c equ 691 echo MS Exchange Routing
		if %%c equ 694 echo Linux-HA high-availability heartbeat
		if %%c equ 695 echo IEEE Media Management System over SSL ^(IEEE-MMS-SSL^)^[98^]
		if %%c equ 698 echo Optimized Link State Routing ^(OLSR^)
		if %%c equ 700 echo Extensible Provisioning Protocol ^(EPP^), a protocol for communication between domain name registries and registrars ^(RFC 5734^)
		if %%c equ 701 echo Link Management Protocol ^(LMP^),^[99^] a protocol that runs between a pair of nodes and is used to manage traffic engineering ^(TE^) links
		if %%c equ 702 echo IRIS^[100^]^[101^] ^(Internet Registry Information Service^) over BEEP ^(Blocks Extensible Exchange Protocol^)^[102^] ^(RFC 3983^)
		if %%c equ 706 echo Secure Internet Live Conferencing ^(SILC^)
		if %%c equ 711 echo Cisco Tag Distribution Protocol^[103^]^[104^]^[105^]—being replaced by the MPLS Label Distribution Protocol^[106^]
		if %%c equ 712 echo Topology Broadcast based on Reverse-Path Forwarding routing protocol ^(TBRPF; RFC 3684^)
		if %%c equ 749 echo Kerberos administration^[11^]
		if %%c equ 750 echo kerberos-iv, Kerberos version IV
		if %%c equ 751 echo kerberos_master, Kerberos authentication
		if %%c equ 752 echo passwd_server, Kerberos password ^(kpasswd^) server
		if %%c equ 753 echo Reverse Routing Header ^(RRH^)^[107^]
		if %%c equ 754 echo tell send
		if %%c equ 760 echo krbupdate ^[kreg^], Kerberos registration
		if %%c equ 782 echo Conserver serial-console management server
		if %%c equ 783 echo SpamAssassin spamd daemon
		if %%c equ 800 echo mdbs-daemon
		if %%c equ 802 echo MODBUS/TCP Security^[108^]
		if %%c equ 808 echo Microsoft Net.TCP Port Sharing Service
		if %%c equ 829 echo Certificate Management Protocol^[109^]
		if %%c equ 830 echo NETCONF over SSH
		if %%c equ 831 echo NETCONF over BEEP
		if %%c equ 832 echo NETCONF for SOAP over HTTPS
		if %%c equ 833 echo NETCONF for SOAP over BEEP
		if %%c equ 843 echo Adobe Flash^[110^]
		if %%c equ 847 echo DHCP Failover protocol
		if %%c equ 848 echo Group Domain Of Interpretation ^(GDOI^) protocol
		if %%c equ 853 echo DNS over TLS ^(RFC 7858^)
		if %%c equ 860 echo iSCSI ^(RFC 3720^)
		if %%c equ 861 echo OWAMP control ^(RFC 4656^)
		if %%c equ 862 echo TWAMP control ^(RFC 5357^)
		if %%c equ 873 echo rsync file synchronization protocol
		if %%c equ 888 echo cddbp, CD DataBase ^(CDDB^) protocol ^(CDDBP^)
		if %%c equ 897 echo Brocade SMI-S RPC
		if %%c equ 898 echo Brocade SMI-S RPC SSL
		if %%c equ 902 echo VMware ESXi^[112^]^[113^]
		if %%c equ 903 echo VMware ESXi^[112^]^[113^]
		if %%c equ 953 echo BIND remote name daemon control ^(RNDC^)^[114^]^[115^]
		if %%c equ 981 echo Remote HTTPS management for firewall devices running embedded Check Point VPN-1 software^[116^]
		if %%c equ 987 echo Sony PlayStation Wake On Lan
		if %%c equ 988 echo Lustre ^(file system^)^[118^] Protocol ^(data^).
		if %%c equ 989 echo FTPS Protocol ^(data^), FTP over TLS/SSL
		if %%c equ 990 echo FTPS Protocol ^(control^), FTP over TLS/SSL
		if %%c equ 991 echo Netnews Administration System ^(NAS^)^[119^]
		if %%c equ 992 echo Telnet protocol over TLS/SSL
		if %%c equ 993 echo Internet Message Access Protocol over TLS/SSL ^(IMAPS^)^[11^]
		if %%c equ 994 echo Previously assigned to Internet Relay Chat over TLS/SSL ^(IRCS^), but was not used in common practice.
		if %%c equ 995 echo Post Office Protocol 3 over TLS/SSL ^(POP3S^)^[11^]
		if %%c equ 1010 echo ThinLinc web-based administration interface^[120^]
		if %%c equ 1025 echo Teradata database management system ^(Teradata^) server
		if %%c equ 1027 echo Reserved
		if %%c equ 1029 echo Microsoft DCOM services
		if %%c equ 1058 echo nim, IBM AIX Network Installation Manager ^(NIM^)
		if %%c equ 1059 echo nimreg, IBM AIX Network Installation Manager ^(NIM^)
		if %%c equ 1080 echo SOCKS proxy
		if %%c equ 1085 echo WebObjects^[11^]
		if %%c equ 1098 echo rmiactivation, Java remote method invocation ^(RMI^) activation
		if %%c equ 1099 echo rmiregistry, Java remote method invocation ^(RMI^) registry
		if %%c equ 1109 echo Reserved
		if %%c equ 1112 echo ESET virus updates^[123^]
		if %%c equ 1119 echo Battle.net chat/game protocol, used by Blizzard^'s games^[126^]
		if %%c equ 1167 echo Cisco IP SLA ^(Service Assurance Agent^)
		if %%c equ 1194 echo OpenVPN
		if %%c equ 1198 echo The cajo project Free dynamic transparent distributed computing in Java
		if %%c equ 1212 echo Equalsocial Fediverse protocol
		if %%c equ 1214 echo Kazaa
		if %%c equ 1220 echo QuickTime Streaming Server administration^[11^]
		if %%c equ 1234 echo Infoseek search agent
		if %%c equ 1241 echo Nessus Security Scanner
		if %%c equ 1270 echo Microsoft System Center Operations Manager ^(SCOM^) ^(formerly Microsoft Operations Manager ^(MOM^)^) agent
		if %%c equ 1293 echo Internet Protocol Security ^(IPSec^)
		if %%c equ 1311 echo Windows RxMon.exe
		if %%c equ 1314 echo Festival Speech Synthesis System server^[128^]
		if %%c equ 1319 echo AMX ICSP ^(Protocol for communications with AMX control systems devices^)
		if %%c equ 1337 echo Men ^& Mice DNS^[129^]
		if %%c equ 1341 echo Qubes ^(Manufacturing Execution System^)
		if %%c equ 1344 echo Internet Content Adaptation Protocol
		if %%c equ 1352 echo IBM Lotus Notes/Domino ^(RPC^) protocol
		if %%c equ 1360 echo Mimer SQL
		if %%c equ 1414 echo IBM WebSphere MQ ^(formerly known as MQSeries^)
		if %%c equ 1417 echo Timbuktu Service 1 Port
		if %%c equ 1418 echo Timbuktu Service 2 Port
		if %%c equ 1419 echo Timbuktu Service 3 Port
		if %%c equ 1420 echo Timbuktu Service 4 Port
		if %%c equ 1431 echo Reverse Gossip Transport Protocol ^(RGTP^), used to access a General-purpose Reverse-Ordered Gossip Gathering System ^(GROGGS^) bulletin board, such as that implemented on the Cambridge University^'s Phoenix system
		if %%c equ 1433 echo Microsoft SQL Server database management system ^(MSSQL^) server
		if %%c equ 1434 echo Microsoft SQL Server database management system ^(MSSQL^) monitor
		if %%c equ 1476 echo WiFi Pineapple Hak5.
		if %%c equ 1481 echo AIRS data interchange.
		if %%c equ 1492 echo Sid Meier^'s CivNet, a multiplayer remake of the original Sid Meier^'s Civilization game^[citation needed^]
		if %%c equ 1494 echo Citrix Independent Computing Architecture ^(ICA^)^[132^]
		if %%c equ 1500 echo IBM Tivoli Storage Manager server^[133^]
		if %%c equ 1501 echo IBM Tivoli Storage Manager client scheduler^[133^]
		if %%c equ 1503 echo Windows Live Messenger ^(Whiteboard and Application Sharing^)^[134^]
		if %%c equ 1512 echo Microsoft^'s Windows Internet Name Service ^(WINS^)
		if %%c equ 1513 echo Garena game client^[citation needed^]
		if %%c equ 1521 echo nCUBE License Manager
		if %%c equ 1524 echo ingreslock, ingres
		if %%c equ 1527 echo Oracle Net Services, formerly known as SQL*Net^[136^]
		if %%c equ 1533 echo IBM Sametime Virtual Places Chat
		if %%c equ 1534 echo Eclipse Target Communication Framework^[138^]
		if %%c equ 1540 echo 1C:Enterprise server agent ^(ragent^)^[139^]^[140^]
		if %%c equ 1541 echo 1C:Enterprise master cluster manager ^(rmngr^)^[139^]
		if %%c equ 1542 echo 1C:Enterprise configuration repository server^[139^]
		if %%c equ 1545 echo 1C:Enterprise cluster administration server ^(RAS^)^[139^]
		if %%c equ 1547 echo Laplink
		if %%c equ 1550 echo 1C:Enterprise debug server^[139^]
		if %%c equ 1581 echo MIL STD 2045-47001 VMF
		if %%c equ 1583 echo Pervasive PSQL^[141^]
		if %%c equ 1589 echo Cisco VLAN Query Protocol ^(VQP^)
		if %%c equ 1604 echo DarkComet remote administration tool ^(RAT^)^[citation needed^]
		if %%c equ 1626 echo iSketch^[142^]
		if %%c equ 1627 echo iSketch^[142^]
		if %%c equ 1628 echo LonTalk normal
		if %%c equ 1629 echo LonTalk urgent
		if %%c equ 1645 echo Early deployment of RADIUS before RFC standardization was done using UDP port number 1645. Enabled for compatibility reasons by default on Cisco^[citation needed^] and Juniper Networks RADIUS servers.^[143^] Official port is 1812. TCP port 1645 must not be used.^[144^]
		if %%c equ 1646 echo Old radacct port,^[when?^] RADIUS accounting protocol. Enabled for compatibility reasons by default on Cisco^[citation needed^] and Juniper Networks RADIUS servers.^[143^] Official port is 1813. TCP port 1646 must not be used.^[144^]
		if %%c equ 1666 echo Perforce^[145^]
		if %%c equ 1677 echo Novell GroupWise clients in client/server access mode
		if %%c equ 1688 echo Microsoft Key Management Service ^(KMS^) for Windows Activation^[146^]
		if %%c equ 1701 echo Layer 2 Forwarding Protocol ^(L2F^)
		if %%c equ 1707 echo Windward Studios games ^(vdmplay^)
		if %%c equ 1716 echo America^'s Army, a massively multiplayer online game ^(MMO^)^[149^]
		if %%c equ 1719 echo H.323 registration and alternate communication
		if %%c equ 1720 echo H.323 call signaling
		if %%c equ 1723 echo Point-to-Point Tunneling Protocol ^(PPTP^)^[11^]
		if %%c equ 1755 echo Microsoft Media Services ^(MMS, ms-streaming^)
		if %%c equ 1761 echo Novell ZENworks^[150^]^[151^]
		if %%c equ 1776 echo Emergency management information system
		if %%c equ 1801 echo Microsoft Message Queuing
		if %%c equ 1812 echo RADIUS authentication protocol, radius
		if %%c equ 1813 echo RADIUS accounting protocol, radius-acct
		if %%c equ 1863 echo Microsoft Notification Protocol ^(MSNP^), used by the Microsoft Messenger service and a number of instant messaging Messenger clients
		if %%c equ 1880 echo Node-RED^[152^]
		if %%c equ 1883 echo MQTT ^(formerly MQ Telemetry Transport^)
		if %%c equ 1900 echo Simple Service Discovery Protocol ^(SSDP^),^[11^] discovery of UPnP devices
		if %%c equ 1935 echo Macromedia Flash Communications Server MX, the precursor to Adobe Flash Media Server before Macromedia^'s acquisition by Adobe on December 3, 2005
		if %%c equ 1965 echo Gemini, a lightweight, collaboratively designed protocol, striving to fill the gap between Gopher and HTTP^[154^]
		if %%c equ 1967 echo Cisco IOS IP Service Level Agreements ^(IP SLAs^) Control Protocol^[citation needed^]
		if %%c equ 1972 echo InterSystems Cach้, and InterSystems IRIS versions 2020.3 and later
		if %%c equ 1984 echo Big Brother
		if %%c equ 1985 echo Cisco Hot Standby Router Protocol ^(HSRP^)^[156^]^[self-published source^]
		if %%c equ 1998 echo Cisco X.25 over TCP ^(XOT^) service
		if %%c equ 2000 echo Cisco Skinny Client Control Protocol ^(SCCP^)
		if %%c equ 2009 echo only for Jasper
		if %%c equ 2010 echo Artemis: Spaceship Bridge Simulator^[157^]
		if %%c equ 2033 echo Civilization IV multiplayer^[158^]
		if %%c equ 2049 echo Network File System ^(NFS^)^[11^]
		if %%c equ 2056 echo Civilization IV multiplayer^[158^]
		if %%c equ 2080 echo Autodesk NLM ^(FLEXlm^)
		if %%c equ 2082 echo cPanel default^[159^]
		if %%c equ 2083 echo Secure RADIUS Service ^(radsec^)
		if %%c equ 2086 echo GNUnet
		if %%c equ 2087 echo WebHost Manager default SSL^[159^]
		if %%c equ 2095 echo cPanel default web mail^[159^]
		if %%c equ 2096 echo cPanel default SSL web mail^[159^]
		if %%c equ 2100 echo Warzone 2100 multiplayer^[citation needed^]
		if %%c equ 2101 echo Networked Transport of RTCM via Internet Protocol ^(NTRIP^)^[citation needed^]
		if %%c equ 2102 echo Zephyr Notification Service server
		if %%c equ 2103 echo Zephyr Notification Service serv-hm connection
		if %%c equ 2104 echo Zephyr Notification Service hostmanager
		if %%c equ 2123 echo GTP control messages ^(GTP-C^)
		if %%c equ 2142 echo TDMoIP ^(TDM over IP^)
		if %%c equ 2152 echo GTP user data messages ^(GTP-U^)
		if %%c equ 2159 echo GDB remote debug port
		if %%c equ 2181 echo EForward-document transport system
		if %%c equ 2195 echo Apple Push Notification Service, binary, gateway.^[11^]^[160^] Deprecated March 2021.^[161^]
		if %%c equ 2196 echo Apple Push Notification Service, binary, feedback.^[11^]^[160^] Deprecated March 2021.^[161^]
		if %%c equ 2197 echo Apple Push Notification Service, HTTP/2, JSON-based API.
		if %%c equ 2210 echo NOAAPORT Broadcast Network
		if %%c equ 2211 echo EMWIN
		if %%c equ 2221 echo ESET anti-virus updates^[123^]
		if %%c equ 2222 echo EtherNet/IP implicit messaging for IO data
		if %%c equ 2240 echo General Dynamics Remote Encryptor Configuration Information Protocol ^(RECIPe^)
		if %%c equ 2261 echo CoMotion master
		if %%c equ 2262 echo CoMotion backup
		if %%c equ 2302 echo ArmA multiplayer^[163^]
		if %%c equ 2303 echo ArmA multiplayer ^(default port for game +1^)^[163^]
		if %%c equ 2305 echo ArmA multiplayer ^(default port for game +3^)^[163^]
		if %%c equ 2351 echo AIM game LAN network port^[citation needed^]
		if %%c equ 2368 echo Ghost ^(blogging platform^)^[165^]
		if %%c equ 2369 echo Default for BMC Control-M/Server Configuration Agent
		if %%c equ 2370 echo Default for BMC Control-M/Server, to allow the Control-M/Enterprise Manager to connect to the Control-M/Server
		if %%c equ 2372 echo Default for K9 Web Protection/parental controls, content filtering agent^[citation needed^]
		if %%c equ 2375 echo Docker REST API ^(plain^)
		if %%c equ 2376 echo Docker REST API ^(SSL^)
		if %%c equ 2377 echo Docker Swarm cluster management communications^[166^]^[self-published source^]
		if %%c equ 2379 echo CoreOS etcd client communication
		if %%c equ 2380 echo CoreOS etcd server communication
		if %%c equ 2389 echo OpenView Session Mgr
		if %%c equ 2399 echo FileMaker Data Access Layer ^(ODBC/JDBC^)
		if %%c equ 2401 echo CVS version control system password-based server
		if %%c equ 2404 echo IEC 60870-5-104, used to send electric power telecontrol messages between two systems via directly connected data circuits
		if %%c equ 2424 echo OrientDB database listening for binary client connections^[168^]
		if %%c equ 2427 echo Media Gateway Control Protocol ^(MGCP^) media gateway
		if %%c equ 2447 echo ovwdb—OpenView Network Node Manager ^(NNM^) daemon
		if %%c equ 2456 echo Valheim
		if %%c equ 2459 echo XRPL
		if %%c equ 2480 echo OrientDB database listening for HTTP client connections^[168^]
		if %%c equ 2483 echo Oracle database listening for insecure client connections to the listener, replaces port 1521^[when?^]
		if %%c equ 2484 echo Oracle database listening for SSL client connections to the listener
		if %%c equ 2500 echo NetFS communication^[169^]
		if %%c equ 2501 echo NetFS probe
		if %%c equ 2535 echo Multicast Address Dynamic Client Allocation Protocol ^(MADCAP^).^[170^] All standard messages are UDP datagrams.^[171^]
		if %%c equ 2541 echo LonTalk/IP
		if %%c equ 2593 echo Ultima Online servers^[citation needed^]
		if %%c equ 2598 echo Citrix Independent Computing Architecture ^(ICA^) with Session Reliability; port 1494 without session reliability^[132^]
		if %%c equ 2599 echo Ultima Online servers^[citation needed^]
		if %%c equ 2628 echo DICT^[172^]
		if %%c equ 2638 echo SQL Anywhere database server^[173^]^[174^]
		if %%c equ 2710 echo XBT Tracker.^[175^] UDP tracker extension is considered experimental.^[176^]
		if %%c equ 2727 echo Media Gateway Control Protocol ^(MGCP^) media gateway controller ^(call agent^)
		if %%c equ 2775 echo Short Message Peer-to-Peer ^(SMPP^)^[citation needed^]
		if %%c equ 2809 echo corbaloc:iiop URL, per the CORBA 3.0.3 specification
		if %%c equ 2811 echo gsi ftp, per the GridFTP specification
		if %%c equ 2827 echo I2P BOB Bridge^[177^]
		if %%c equ 2944 echo Megaco text H.248
		if %%c equ 2945 echo Megaco binary ^(ASN.1^) H.248
		if %%c equ 2947 echo gpsd, GPS daemon
		if %%c equ 2967 echo Symantec System Center agent ^(SSC-AGENT^)
		if %%c equ 3000 echo Ruby on Rails development default^[178^]
		if %%c equ 3001 echo Honeywell Prowatch^[184^]
		if %%c equ 3004 echo iSync^[11^]
		if %%c equ 3010 echo KWS Connector
		if %%c equ 3020 echo Common Internet File System ^(CIFS^). See also port 445 for Server Message Block ^(SMB^), a dialect of CIFS.
		if %%c equ 3050 echo gds-db ^(Interbase/Firebird databases^)
		if %%c equ 3052 echo APC PowerChute Network
		if %%c equ 3074 echo Xbox LIVE and Games for Windows – Live
		if %%c equ 3101 echo BlackBerry Enterprise Server communication protocol^[185^]
		if %%c equ 3128 echo Squid caching web proxy^[186^]
		if %%c equ 3225 echo Fibre Channel over IP ^(FCIP^)
		if %%c equ 3233 echo WhiskerControl research control protocol
		if %%c equ 3260 echo iSCSI
		if %%c equ 3268 echo msft-gc, Microsoft Global Catalog ^(LDAP service which contains data from Active Directory forests^)
		if %%c equ 3269 echo msft-gc-ssl, Microsoft Global Catalog over SSL ^(similar to port 3268, LDAP over SSL^)
		if %%c equ 3283 echo Net Assistant,^[11^] a predecessor to Apple Remote Desktop
		if %%c equ 3290 echo Virtual Air Traffic Simulation ^(VATSIM^) network voice communication^[citation needed^]
		if %%c equ 3305 echo Odette File Transfer Protocol ^(OFTP^)
		if %%c equ 3306 echo MySQL database system^[11^]
		if %%c equ 3323 echo DECE GEODI Server
		if %%c equ 3332 echo Thundercloud DataPath Overlay Control
		if %%c equ 3333 echo Eggdrop, an IRC bot default port^[187^]
		if %%c equ 3344 echo Repetier-Server
		if %%c equ 3351 echo Pervasive PSQL^[141^]
		if %%c equ 3386 echo GTP^' 3GPP GSM/UMTS CDR logging protocol
		if %%c equ 3389 echo Microsoft Terminal Server ^(RDP^) officially registered as Windows Based Terminal ^(WBT^)^[190^]
		if %%c equ 3396 echo Novell NDPS Printer Agent
		if %%c equ 3412 echo xmlBlaster
		if %%c equ 3423 echo Xware xTrm Communication Protocol
		if %%c equ 3424 echo Xware xTrm Communication Protocol over SSL
		if %%c equ 3435 echo Pacom Security User Port
		if %%c equ 3455 echo Resource Reservation Protocol ^(RSVP^)
		if %%c equ 3478 echo STUN, a protocol for NAT traversal^[191^]
		if %%c equ 3479 echo PlayStation Network^[195^]
		if %%c equ 3480 echo PlayStation Network^[195^]
		if %%c equ 3483 echo Slim Devices discovery protocol
		if %%c equ 3493 echo Network UPS Tools ^(NUT^)
		if %%c equ 3503 echo MPLS LSP-echo Port
		if %%c equ 3516 echo Smartcard Port
		if %%c equ 3527 echo Microsoft Message Queuing
		if %%c equ 3535 echo SMTP alternate^[196^]
		if %%c equ 3544 echo Teredo tunneling
		if %%c equ 3551 echo Apcupsd Information Port ^[197^]
		if %%c equ 3601 echo SAP Message Server Port^[198^]
		if %%c equ 3632 echo Distcc, distributed compiler^[11^]
		if %%c equ 3645 echo Cyc
		if %%c equ 3655 echo Advanced Systems Concepts, Inc. ActiveBatch Exec Agent^[199^]
		if %%c equ 3659 echo Apple SASL, used by macOS Server Password Server^[11^]
		if %%c equ 3667 echo Information Exchange
		if %%c equ 3671 echo KNXnet/IP^(EIBnet/IP^)
		if %%c equ 3689 echo Digital Audio Access Protocol ^(DAAP^), used by Apple^'s iTunes and AirPlay^[11^]
		if %%c equ 3690 echo Subversion ^(SVN^)^[11^] version control system
		if %%c equ 3702 echo Web Services Dynamic Discovery ^(WS-Discovery^), used by various components of Windows Vista and later
		if %%c equ 3721 echo ES File Explorer FTP server
		if %%c equ 3724 echo Some Blizzard games^[126^]
		if %%c equ 3725 echo Netia NA-ER Port
		if %%c equ 3749 echo CimTrak registered port
		if %%c equ 3768 echo RBLcheckd server daemon
		if %%c equ 3784 echo Bidirectional Forwarding Detection ^(BFD^)for IPv4 and IPv6 ^(Single Hop^) ^(RFC 5881^)
		if %%c equ 3785 echo VoIP program used by Ventrilo
		if %%c equ 3799 echo RADIUS change of authorization
		if %%c equ 3804 echo Harman Professional HiQnet protocol
		if %%c equ 3825 echo RedSeal Networks client/server connection^[citation needed^]
		if %%c equ 3826 echo WarMUX game server
		if %%c equ 3830 echo System Management Agent, developed and used by Cerner to monitor and manage solutions
		if %%c equ 3835 echo RedSeal Networks client/server connection^[citation needed^]
		if %%c equ 3856 echo ERP Server Application used by F10 Software
		if %%c equ 3868 echo Diameter base protocol ^(RFC 3588^)
		if %%c equ 3872 echo Oracle Enterprise Manager Remote Agent
		if %%c equ 3880 echo IGRS
		if %%c equ 3900 echo udt_os, IBM UniData UDT OS^[200^]
		if %%c equ 3960 echo Warframe online interaction^[citation needed^]
		if %%c equ 3962 echo Warframe online interaction^[citation needed^]
		if %%c equ 3978 echo OpenTTD game ^(masterserver and content service^)
		if %%c equ 3978 echo Palo Alto Networks^' Panorama management of firewalls and log collectors ^& pre-PAN-OS 8.0 Panorama-to-managed devices software updates.^[201^]
		if %%c equ 3979 echo OpenTTD game
		if %%c equ 3999 echo Norman distributed scanning service
		if %%c equ 4000 echo Diablo II game
		if %%c equ 4001 echo Microsoft Ants game
		if %%c equ 4018 echo Protocol information and warnings^[clarification needed^]
		if %%c equ 4035 echo IBM Rational Developer for System z Remote System Explorer Daemon
		if %%c equ 4045 echo Solaris lockd NFS lock daemon/manager
		if %%c equ 4050 echo Mud Master Chat protocol ^(MMCP^) - Peer-to-peer communications between MUD clients.^[202^]
		if %%c equ 4069 echo Minger Email Address Verification Protocol^[203^]
		if %%c equ 4070 echo Amazon Echo Dot ^(Amazon Alexa^) streaming connection with Spotify^[204^]
		if %%c equ 4089 echo OpenCORE Remote Control Service
		if %%c equ 4090 echo Kerio
		if %%c equ 4093 echo PxPlus Client server interface ProvideX
		if %%c equ 4096 echo Ascom Timeplex Bridge Relay Element ^(BRE^)
		if %%c equ 4105 echo Shofar ^(ShofarNexus^)
		if %%c equ 4111 echo Xgrid^[11^]
		if %%c equ 4116 echo Smartcard-TLS
		if %%c equ 4123 echo Z-Wave Protocol^[205^]
		if %%c equ 4125 echo Microsoft Remote Web Workplace administration
		if %%c equ 4172 echo Teradici PCoIP
		if %%c equ 4190 echo ManageSieve^[206^]
		if %%c equ 4197 echo Harman International^'s HControl protocol for control and monitoring of Audio, Video, Lighting and Control equipment
		if %%c equ 4198 echo Couch Potato Android app^[207^]
		if %%c equ 4200 echo Angular app
		if %%c equ 4201 echo TinyMUD and various derivatives
		if %%c equ 4222 echo NATS server default port^[208^]
		if %%c equ 4226 echo Aleph One, a computer game
		if %%c equ 4242 echo Orthanc – DICOM server^[209^]
		if %%c equ 4243 echo Docker implementations, redistributions, and setups default^[210^]^[needs update?^]
		if %%c equ 4244 echo Viber^[211^]
		if %%c equ 4303 echo Simple Railroad Command Protocol ^(SRCP^)
		if %%c equ 4307 echo TrueConf Client - TrueConf Server media data exchange^[212^]
		if %%c equ 4321 echo Referral Whois ^(RWhois^) Protocol^[213^]
		if %%c equ 4444 echo Oracle WebCenter Content: Content Server—Intradoc Socket port. ^(formerly known as Oracle Universal Content Management^).
		if %%c equ 4486 echo Integrated Client Message Service ^(ICMS^)
		if %%c equ 4488 echo Apple Wide Area Connectivity Service, used by Back to My Mac^[11^]
		if %%c equ 4500 echo IPSec NAT Traversal^[11^] ^(RFC 3947, RFC 4306^)
		if %%c equ 4534 echo Armagetron Advanced server default
		if %%c equ 4560 echo default Log4j socketappender port
		if %%c equ 4567 echo Sinatra default server port in development mode ^(HTTP^)
		if %%c equ 4569 echo Inter-Asterisk eXchange ^(IAX2^)
		if %%c equ 4604 echo Identity Registration Protocol
		if %%c equ 4605 echo Direct End to End Secure Chat Protocol
		if %%c equ 4662 echo OrbitNet Message Service
		if %%c equ 4664 echo Google Desktop Search
		if %%c equ 4672 echo Default for older versions of eMule^[215^]
		if %%c equ 4711 echo eMule optional web interface^[215^]
		if %%c equ 4713 echo PulseAudio sound server
		if %%c equ 4723 echo Appium open source automation tool
		if %%c equ 4724 echo Default bootstrap port to use on device to talk to Appium
		if %%c equ 4728 echo Computer Associates Desktop and Server Management ^(DMP^)/Port Multiplexer^[216^]
		if %%c equ 4730 echo Gearman^'s job server
		if %%c equ 4739 echo IP Flow Information Export
		if %%c equ 4747 echo Apprentice
		if %%c equ 4753 echo SIMON ^(service and discovery^)
		if %%c equ 4757 echo Select Studios Official Servers
		if %%c equ 4789 echo Virtual eXtensible Local Area Network ^(VXLAN^)
		if %%c equ 4791 echo IP Routable RocE ^(RoCEv2^)
		if %%c equ 4840 echo OPC UA Connection Protocol ^(TCP^) and OPC UA Multicast Datagram Protocol ^(UDP^) for OPC Unified Architecture from OPC Foundation
		if %%c equ 4843 echo OPC UA TCP Protocol over TLS/SSL for OPC Unified Architecture from OPC Foundation
		if %%c equ 4847 echo Web Fresh Communication, Quadrion Software ^& Odorless Entertainment
		if %%c equ 4848 echo Java, Glassfish Application Server administration default
		if %%c equ 4894 echo LysKOM Protocol A^[217^]
		if %%c equ 4944 echo DrayTek DSL Status Monitoring^[218^]
		if %%c equ 4949 echo Munin Resource Monitoring Tool
		if %%c equ 4950 echo Cylon Controls UC32 Communications Port
		if %%c equ 5000 echo UPnP—Windows network device interoperability
		if %%c equ 5001 echo Slingbox and Slingplayer
		if %%c equ 5002 echo ASSA ARX access control system^[225^]
		if %%c equ 5003 echo FileMaker – name binding and transport^[11^]
		if %%c equ 5004 echo Real-time Transport Protocol media data ^(RTP^) ^(RFC 3551, RFC 4571^)
		if %%c equ 5005 echo Real-time Transport Protocol control protocol ^(RTCP^) ^(RFC 3551, RFC 4571^)
		if %%c equ 5007 echo Palo Alto Networks - User-ID agent
		if %%c equ 5010 echo Registered to: TelePath ^(the IBM FlowMark workflow-management system messaging platform^)^[226^]
		if %%c equ 5011 echo TelePath ^(the IBM FlowMark workflow-management system messaging platform^)^[226^]
		if %%c equ 5022 echo MSSQL Server Replication and Database mirroring endpoints^[227^]
		if %%c equ 5025 echo scpi-raw Standard Commands for Programmable Instruments
		if %%c equ 5029 echo Sonic Robo Blast 2 and Sonic Robo Blast 2 Kart servers
		if %%c equ 5031 echo AVM CAPI-over-TCP ^(ISDN over Ethernet tunneling^)^[citation needed^]
		if %%c equ 5037 echo Android ADB server
		if %%c equ 5044 echo Standard port in Filebeats/Logstash implementation of Lumberjack protocol.
		if %%c equ 5048 echo Texai Message Service
		if %%c equ 5050 echo Yahoo! Messenger
		if %%c equ 5051 echo ita-agent Symantec Intruder Alert^[228^]
		if %%c equ 5060 echo Session Initiation Protocol ^(SIP^)^[11^]
		if %%c equ 5061 echo Session Initiation Protocol ^(SIP^) over TLS
		if %%c equ 5062 echo Localisation access
		if %%c equ 5064 echo EPICS Channel Access server^[230^]
		if %%c equ 5065 echo EPICS Channel Access repeater beacon^[230^]
		if %%c equ 5070 echo Binary Floor Control Protocol ^(BFCP^)^[231^]
		if %%c equ 5080 echo List of telephone switches#NEC^[NEC Phone System^] NEC SV8100 and SV9100 MLC Phones Default iSIP Port
		if %%c equ 5084 echo EPCglobal Low Level Reader Protocol ^(LLRP^)
		if %%c equ 5085 echo EPCglobal Low Level Reader Protocol ^(LLRP^) over TLS
		if %%c equ 5090 echo 3CX Phone System 3CX Tunnel Protocol, 3CX App API, 3CX Session Border Controller
		if %%c equ 5093 echo SafeNet, Inc Sentinel LM, Sentinel RMS, License Manager, client-to-server
		if %%c equ 5099 echo SafeNet, Inc Sentinel LM, Sentinel RMS, License Manager, server-to-server
		if %%c equ 5104 echo IBM Tivoli Framework NetCOOL/Impact^[232^] HTTP Service
		if %%c equ 5121 echo Neverwinter Nights
		if %%c equ 5124 echo TorgaNET ^(Micronational Darknet^)
		if %%c equ 5125 echo TorgaNET ^(Micronational Intelligence Darknet^)
		if %%c equ 5150 echo ATMP Ascend Tunnel Management Protocol^[233^]
		if %%c equ 5151 echo ESRI SDE Instance
		if %%c equ 5154 echo BZFlag
		if %%c equ 5172 echo PC over IP Endpoint Management^[234^]
		if %%c equ 5173 echo Vite
		if %%c equ 5190 echo AOL Instant Messenger protocol.^[11^] The chat app is defunct as of 15 December 2017.^[235^]
		if %%c equ 5198 echo EchoLink VoIP Amateur Radio Software ^(Voice^)
		if %%c equ 5199 echo EchoLink VoIP Amateur Radio Software ^(Voice^)
		if %%c equ 5200 echo EchoLink VoIP Amateur Radio Software ^(Information^)
		if %%c equ 5201 echo Iperf3 ^(Tool for measuring TCP and UDP bandwidth performance^)
		if %%c equ 5222 echo Extensible Messaging and Presence Protocol ^(XMPP^) client connection^[11^]^[236^]^[237^]
		if %%c equ 5223 echo Apple Push Notification Service^[11^]^[160^]
		if %%c equ 5228 echo HP Virtual Room Service
		if %%c equ 5242 echo Viber^[211^]
		if %%c equ 5243 echo Viber^[211^]
		if %%c equ 5246 echo Control And Provisioning of Wireless Access Points ^(CAPWAP^) CAPWAP control^[239^]
		if %%c equ 5247 echo Control And Provisioning of Wireless Access Points ^(CAPWAP^) CAPWAP data^[239^]
		if %%c equ 5269 echo Extensible Messaging and Presence Protocol ^(XMPP^) server-to-server connection^[11^]^[236^]^[237^]
		if %%c equ 5280 echo Extensible Messaging and Presence Protocol ^(XMPP^)^[240^]
		if %%c equ 5281 echo Extensible Messaging and Presence Protocol ^(XMPP^)^[241^]
		if %%c equ 5298 echo Extensible Messaging and Presence Protocol ^(XMPP^)^[242^]
		if %%c equ 5310 echo Outlaws, a 1997 first-person shooter video game^[243^]
		if %%c equ 5318 echo Certificate Management over CMS^[244^]
		if %%c equ 5349 echo STUN over TLS/DTLS, a protocol for NAT traversal^[191^]
		if %%c equ 5351 echo NAT Port Mapping Protocol and Port Control Protocol—client-requested configuration for connections through network address translators and firewalls
		if %%c equ 5353 echo Multicast DNS ^(mDNS^)^[11^]
		if %%c equ 5355 echo Link-Local Multicast Name Resolution ^(LLMNR^), allows hosts to perform name resolution for hosts on the same local link ^(only provided by Windows Vista and Server 2008^)
		if %%c equ 5357 echo Web Services for Devices ^(WSDAPI^) ^(only provided by Windows Vista, Windows 7 and Server 2008^)
		if %%c equ 5358 echo WSDAPI Applications to Use a Secure Channel ^(only provided by Windows Vista, Windows 7 and Server 2008^)
		if %%c equ 5394 echo Kega Fusion, a Sega multi-console emulator^[245^]^[246^]
		if %%c equ 5402 echo Multicast File Transfer Protocol ^(MFTP^)^[247^]^[importance?^]
		if %%c equ 5405 echo NetSupport Manager
		if %%c equ 5412 echo IBM Rational Synergy ^(Telelogic Synergy^) ^(Continuus CM^) Message Router
		if %%c equ 5413 echo Wonderware SuiteLink service
		if %%c equ 5417 echo SNS Agent
		if %%c equ 5421 echo NetSupport Manager
		if %%c equ 5432 echo PostgreSQL^[11^] database system
		if %%c equ 5433 echo Bouwsoft file/webserver^[248^]
		if %%c equ 5445 echo Cisco Unified Video Advantage^[citation needed^]
		if %%c equ 5450 echo OSIsoft PI Server Client Access ^[249^]
		if %%c equ 5457 echo OSIsoft PI Asset Framework Client Access ^[250^]
		if %%c equ 5458 echo OSIsoft PI Notifications Client Access ^[251^]
		if %%c equ 5480 echo VMware VAMI ^(Virtual Appliance Management Infrastructure^)—used for initial setup of various administration settings on Virtual Appliances designed using the VAMI architecture.
		if %%c equ 5481 echo Schneider Electric^'s ClearSCADA ^(SCADA implementation for Windows^) — used for client-to-server communication.^[252^]
		if %%c equ 5495 echo IBM Cognos TM1 Admin server
		if %%c equ 5498 echo Hotline tracker server connection
		if %%c equ 5499 echo Hotline tracker server discovery
		if %%c equ 5500 echo Hotline control connection
		if %%c equ 5501 echo Hotline file transfer connection
		if %%c equ 5517 echo Setiqueue Proxy server client for SETI@Home project
		if %%c equ 5550 echo Hewlett-Packard Data Protector^[citation needed^]
		if %%c equ 5554 echo Fastboot default wireless port
		if %%c equ 5555 echo Oracle WebCenter Content: Inbound Refinery—Intradoc Socket port. ^(formerly known as Oracle Universal Content Management^). Port though often changed during installation
		if %%c equ 5556 echo Freeciv, Oracle WebLogic Server Node Manager^[253^]
		if %%c equ 5568 echo Session Data Transport ^(SDT^), a part of Architecture for Control Networks ^(ACN^)^[254^]^[full citation needed^]
		if %%c equ 5601 echo Kibana^[255^]
		if %%c equ 5631 echo pcANYWHEREdata, Symantec pcAnywhere ^(version 7.52 and later^[256^]^)^[257^] data
		if %%c equ 5632 echo pcANYWHEREstat, Symantec pcAnywhere ^(version 7.52 and later^) status
		if %%c equ 5656 echo IBM Lotus Sametime p2p file transfer
		if %%c equ 5666 echo NRPE ^(Nagios^)
		if %%c equ 5667 echo NSCA ^(Nagios^)
		if %%c equ 5670 echo FILEMQ ZeroMQ File Message Queuing Protocol
		if %%c equ 5671 echo Advanced Message Queuing Protocol ^(AMQP^)^[258^] over TLS
		if %%c equ 5672 echo Advanced Message Queuing Protocol ^(AMQP^)^[258^]
		if %%c equ 5678 echo n8n^[259^]
		if %%c equ 5683 echo Constrained Application Protocol ^(CoAP^)
		if %%c equ 5684 echo Constrained Application Protocol Secure ^(CoAPs^)
		if %%c equ 5693 echo Nagios Cross Platform Agent ^(NCPA^)^[260^]
		if %%c equ 5701 echo Hazelcast default communication port^[261^]
		if %%c equ 5718 echo Microsoft DPM Data Channel ^(with the agent coordinator^)
		if %%c equ 5719 echo Microsoft DPM Data Channel ^(with the protection agent^)
		if %%c equ 5722 echo Microsoft RPC, DFSR ^(SYSVOL^) Replication Service^[citation needed^]
		if %%c equ 5723 echo System Center Operations Manager^[262^]
		if %%c equ 5724 echo Operations Manager Console
		if %%c equ 5741 echo IDA Discover Port 1
		if %%c equ 5742 echo IDA Discover Port 2
		if %%c equ 5800 echo VNC Remote Frame Buffer RFB protocol over HTTP
		if %%c equ 5900 echo Remote Frame Buffer protocol ^(RFB^)
		if %%c equ 5905 echo Windows service "C:\Program Files\Intel\Intel^(R^) Online Connect Access\IntelTechnologyAccessService.exe" that listens on 127.0.0.1
		if %%c equ 5931 echo AMMYY admin Remote Control
		if %%c equ 5938 echo TeamViewer remote desktop protocol^[265^]
		if %%c equ 5984 echo CouchDB database server
		if %%c equ 5985 echo Windows PowerShell Default psSession Port^[266^] Windows Remote Management Service ^(WinRM-HTTP^)^[267^]
		if %%c equ 5986 echo Windows PowerShell Default psSession Port^[266^] Windows Remote Management Service ^(WinRM-HTTPS^)^[267^]
		if %%c equ 6005 echo Default for BMC Software Control-M/Server—Socket used for communication between Control-M processes—though often changed during installation
		if %%c equ 6009 echo JD Edwards EnterpriseOne ERP system JDENet messaging client listener
		if %%c equ 6050 echo Arcserve backup
		if %%c equ 6051 echo Arcserve backup
		if %%c equ 6086 echo Peer Distributed Transfer Protocol ^(PDTP^), FTP like file server in a P2P network
		if %%c equ 6100 echo Vizrt System
		if %%c equ 6101 echo Backup Exec Agent Browser^[citation needed^]
		if %%c equ 6110 echo softcm, HP Softbench CM
		if %%c equ 6111 echo spc, HP Softbench Sub-Process Control
		if %%c equ 6112 echo dtspcd, execute commands and launch applications remotely
		if %%c equ 6113 echo Club Penguin Disney online game for kids, Used by some Blizzard games^[126^]
		if %%c equ 6136 echo ObjectDB database server^[269^]
		if %%c equ 6159 echo ARINC 840 EFB Application Control Interface
		if %%c equ 6160 echo Veeam Installer Service
		if %%c equ 6161 echo Veeam vPower NFS Service
		if %%c equ 6162 echo Veeam Data Mover
		if %%c equ 6163 echo Veeam Hyper-V Integration Service
		if %%c equ 6164 echo Veeam WAN Accelerator
		if %%c equ 6165 echo Veeam WAN Accelerator Data Transfer
		if %%c equ 6167 echo Veeam Log Shipping Service
		if %%c equ 6170 echo Veeam Mount Server
		if %%c equ 6200 echo Oracle WebCenter Content Portable: Content Server ^(With Native UI^) and Inbound Refinery
		if %%c equ 6201 echo Thermo-Calc Software AB: Management of service nodes in a processing grid for thermodynamic calculations
		if %%c equ 6225 echo Oracle WebCenter Content Portable: Content Server Web UI
		if %%c equ 6227 echo Oracle WebCenter Content Portable: JavaDB
		if %%c equ 6240 echo Oracle WebCenter Content Portable: Capture
		if %%c equ 6244 echo Oracle WebCenter Content Portable: Content Server—Intradoc Socket port
		if %%c equ 6255 echo Oracle WebCenter Content Portable: Inbound Refinery—Intradoc Socket port
		if %%c equ 6257 echo WinMX ^(see also 6699^)
		if %%c equ 6260 echo planet M.U.L.E.
		if %%c equ 6262 echo Sybase Advantage Database Server
		if %%c equ 6343 echo SFlow, sFlow traffic monitoring
		if %%c equ 6346 echo gnutella-svc, gnutella ^(FrostWire, Limewire, Shareaza, etc.^)
		if %%c equ 6347 echo gnutella-rtr, Gnutella alternate
		if %%c equ 6350 echo App Discovery and Access Protocol
		if %%c equ 6379 echo Redis key-value data store
		if %%c equ 6389 echo EMC CLARiiON
		if %%c equ 6432 echo PgBouncer—A connection pooler for PostgreSQL
		if %%c equ 6436 echo Leap Motion Websocket Server TLS
		if %%c equ 6437 echo Leap Motion Websocket Server
		if %%c equ 6443 echo Kubernetes API server ^[270^]
		if %%c equ 6444 echo Sun Grid Engine Qmaster Service
		if %%c equ 6445 echo Sun Grid Engine Execution Service
		if %%c equ 6454 echo Art-Net protocol
		if %%c equ 6464 echo Port assignment for medical device communication in accordance to IEEE 11073-20701
		if %%c equ 6513 echo NETCONF over TLS
		if %%c equ 6514 echo Syslog over TLS^[272^]
		if %%c equ 6515 echo Elipse RPC Protocol ^(REC^)
		if %%c equ 6516 echo Windows Admin Center
		if %%c equ 6543 echo Pylons project#Pyramid Default Pylons Pyramid web service port
		if %%c equ 6556 echo Check MK Agent
		if %%c equ 6566 echo SANE ^(Scanner Access Now Easy^)—SANE network scanner daemon^[273^]
		if %%c equ 6571 echo Windows Live FolderShare client
		if %%c equ 6600 echo Microsoft Hyper-V Live
		if %%c equ 6601 echo Microsoft Forefront Threat Management Gateway
		if %%c equ 6602 echo Microsoft Windows WSS Communication
		if %%c equ 6619 echo odette-ftps, Odette File Transfer Protocol ^(OFTP^) over TLS/SSL
		if %%c equ 6622 echo Multicast FTP
		if %%c equ 6653 echo OpenFlow^[citation needed^]
		if %%c equ 6679 echo Osorno Automation Protocol ^(OSAUT^)
		if %%c equ 6690 echo Synology Cloud station
		if %%c equ 6697 echo IRC SSL ^(Secure Internet Relay Chat^)—often used
		if %%c equ 6699 echo WinMX ^(see also 6257^)
		if %%c equ 6715 echo AberMUD and derivatives default port
		if %%c equ 6771 echo BitTorrent Local Peer Discovery
		if %%c equ 6801 echo ACNET Control System Protocol
		if %%c equ 6888 echo MUSE
		if %%c equ 6901 echo Windows Live Messenger ^(Voice^)
		if %%c equ 6924 echo split-ping, ping with RX/TX latency/loss split
		if %%c equ 6935 echo EthoScan Service
		if %%c equ 6936 echo XenSource Management Service
		if %%c equ 6969 echo acmsoda
		if %%c equ 6980 echo Voicemeeter VBAN network audio protocol^[274^]
		if %%c equ 7000 echo Default for Vuze^'s built-in HTTPS Bittorrent tracker
		if %%c equ 7001 echo Avira Server Management Console
		if %%c equ 7002 echo Default for BEA WebLogic Server^'s HTTPS server, though often changed during installation
		if %%c equ 7005 echo Default for BMC Software Control-M/Server and Control-M/Agent for Agent-to-Server, though often changed during installation
		if %%c equ 7006 echo Default for BMC Software Control-M/Server and Control-M/Agent for Server-to-Agent, though often changed during installation
		if %%c equ 7010 echo Default for Cisco AON AMC ^(AON Management Console^)^[275^]
		if %%c equ 7022 echo Database mirroring endpoints^[227^]
		if %%c equ 7023 echo Bryan Wilcutt T2-NMCS Protocol for SatCom Modems
		if %%c equ 7025 echo Zimbra LMTP ^[mailbox^]—local mail delivery
		if %%c equ 7047 echo Zimbra conversion server
		if %%c equ 7070 echo Real Time Streaming Protocol ^(RTSP^), used by QuickTime Streaming Server. TCP is used by default, UDP is used as an alternate.^[11^]
		if %%c equ 7077 echo Development-Network Authentification-Protocol
		if %%c equ 7133 echo Enemy Territory: Quake Wars
		if %%c equ 7144 echo Peercast^[citation needed^]
		if %%c equ 7145 echo Peercast^[citation needed^]
		if %%c equ 7171 echo Tibia
		if %%c equ 7262 echo CNAP ^(Calypso Network Access Protocol^)
		if %%c equ 7272 echo WatchMe - WatchMe Monitoring
		if %%c equ 7306 echo Zimbra mysql ^[mailbox^]^[citation needed^]
		if %%c equ 7307 echo Zimbra mysql ^[logger^]^[citation needed^]
		if %%c equ 7312 echo Sibelius License Server
		if %%c equ 7396 echo Web control interface for Folding@home v7.3.6 and later^[276^]
		if %%c equ 7400 echo RTPS ^(Real Time Publish Subscribe^) DDS Discovery
		if %%c equ 7401 echo RTPS ^(Real Time Publish Subscribe^) DDS User-Traffic
		if %%c equ 7402 echo RTPS ^(Real Time Publish Subscribe^) DDS Meta-Traffic
		if %%c equ 7471 echo Stateless Transport Tunneling ^(STT^)
		if %%c equ 7473 echo Rise: The Vieneo Province
		if %%c equ 7474 echo Neo4J Server webadmin^[277^]
		if %%c equ 7478 echo Default port used by Open iT Server.^[278^]
		if %%c equ 7542 echo Saratoga file transfer protocol^[279^]^[280^]
		if %%c equ 7547 echo CPE WAN Management Protocol ^(CWMP^) Technical Report 069
		if %%c equ 7575 echo Populous: The Beginning server
		if %%c equ 7624 echo Instrument Neutral Distributed Interface
		if %%c equ 7631 echo ERLPhase
		if %%c equ 7634 echo hddtemp—Utility to monitor hard drive temperature
		if %%c equ 7655 echo I2P SAM Bridge Socket API
		if %%c equ 7670 echo BrettspielWelt BSW Boardgame Portal
		if %%c equ 7680 echo Delivery Optimization for Windows 10^[281^]
		if %%c equ 7687 echo Bolt database connection
		if %%c equ 7717 echo Killing Floor
		if %%c equ 7777 echo iChat server file transfer proxy^[11^]
		if %%c equ 7831 echo Default used by Smartlaunch Internet Cafe Administration^[282^] software
		if %%c equ 7880 echo PowerSchool Gradebook Server^[citation needed^]
		if %%c equ 7890 echo Default that will be used by the iControl Internet Cafe Suite Administration software
		if %%c equ 7915 echo Default for YSFlight server^[283^]
		if %%c equ 7935 echo Fixed port used for Adobe Flash Debug Player to communicate with a debugger ^(Flash IDE, Flex Builder or fdb^).^[284^]
		if %%c equ 7946 echo Docker Swarm communication among nodes^[166^]
		if %%c equ 7979 echo Used by SilverBluff Studios for communication between servers and clients.^[citation needed^]
		if %%c equ 7990 echo Atlassian Bitbucket ^(default port^)^[citation needed^]
		if %%c equ 8000 echo Commonly used for Internet radio streams such as SHOUTcast^[citation needed^], Icecast^[citation needed^] and iTunes Radio^[11^]
		if %%c equ 8005 echo Tomcat remote shutdown^[11^]
		if %%c equ 8006 echo Quest AppAssure 5 API^[289^]
		if %%c equ 8007 echo Quest AppAssure 5 Engine^[289^]
		if %%c equ 8007 echo Proxmox Backup Server admin web interface
		if %%c equ 8008 echo Alternative port for HTTP. See also ports 80 and 8080.
		if %%c equ 8009 echo Apache JServ Protocol ^(ajp13^)^[citation needed^]
		if %%c equ 8010 echo Buildbot web status page^[citation needed^]
		if %%c equ 8042 echo Orthanc – REST API over HTTP^[209^]
		if %%c equ 8069 echo OpenERP 5.0 XML-RPC protocol^[292^]
		if %%c equ 8070 echo OpenERP 5.0 NET-RPC protocol^[292^]
		if %%c equ 8074 echo Gadu-Gadu
		if %%c equ 8075 echo Killing Floor web administration interface^[citation needed^]
		if %%c equ 8080 echo Alternative port for HTTP. See also ports 80 and 8008.
		if %%c equ 8081 echo Sun Proxy Admin Service^[295^]
		if %%c equ 8088 echo Asterisk management access via HTTP^[citation needed^]
		if %%c equ 8089 echo Splunk daemon management^[297^]
		if %%c equ 8090 echo Atlassian Confluence^[299^]
		if %%c equ 8091 echo CouchBase web administration^[301^]
		if %%c equ 8092 echo CouchBase API^[301^]
		if %%c equ 8096 echo Emby and Jellyfin HTTP port^[302^]
		if %%c equ 8111 echo JOSM Remote Control
		if %%c equ 8112 echo PAC Pacifica Coin
		if %%c equ 8116 echo Check Point Cluster Control Protocol
		if %%c equ 8118 echo Privoxy—advertisement-filtering Web proxy
		if %%c equ 8123 echo Polipo Web proxy
		if %%c equ 8124 echo Standard BURST Mining Pool Software Port
		if %%c equ 8125 echo BURST Web Interface
		if %%c equ 8139 echo Puppet ^(software^) Client agent
		if %%c equ 8140 echo Puppet ^(software^) Master server
		if %%c equ 8172 echo Microsoft Remote Administration for IIS Manager^[304^]
		if %%c equ 8184 echo NCSA Brown Dog Data Access Proxy
		if %%c equ 8200 echo GoToMyPC
		if %%c equ 8222 echo VMware VI Web Access via HTTP^[306^]
		if %%c equ 8236 echo jRCS listener for Rocket Software jBASE Remote Connectivity Server^[307^]
		if %%c equ 8243 echo HTTPS listener for Apache Synapse^[308^]
		if %%c equ 8245 echo Dynamic DNS for at least No-IP and DynDNS^[309^]
		if %%c equ 8280 echo HTTP listener for Apache Synapse^[308^]
		if %%c equ 8281 echo HTTP Listener for Gatecraft Plugin
		if %%c equ 8291 echo Winbox—Default on a MikroTik RouterOS for a Windows application used to administer MikroTik RouterOS^[310^]
		if %%c equ 8303 echo Teeworlds Server
		if %%c equ 8332 echo Bitcoin JSON-RPC server^[311^]
		if %%c equ 8333 echo Bitcoin^[citation needed^]
		if %%c equ 8334 echo Filestash server ^(default^) ^[312^]
		if %%c equ 8337 echo VisualSVN Distributed File System Service ^(VDFS^)^[313^]
		if %%c equ 8384 echo Syncthing web GUI
		if %%c equ 8388 echo Shadowsocks proxy server^[citation needed^]
		if %%c equ 8400 echo Commvault Communications Service ^(GxCVD, found in all client computers^)
		if %%c equ 8401 echo Commvault Server Event Manager ^(GxEvMgrS, available in CommServe^)
		if %%c equ 8403 echo Commvault Firewall ^(GxFWD, tunnel port for HTTP/HTTPS^)
		if %%c equ 8443 echo SW Soft Plesk Control Panel
		if %%c equ 8444 echo Bitmessage
		if %%c equ 8448 echo Matrix homeserver federation over HTTPS^[291^]
		if %%c equ 8484 echo MapleStory Login Server
		if %%c equ 8500 echo Adobe ColdFusion built-in web server^[315^]
		if %%c equ 8530 echo Windows Server Update Services over HTTP, when using the default role installation settings in Windows Server 2012 and later versions.^[316^]^[317^]
		if %%c equ 8531 echo Windows Server Update Services over HTTPS, when using the default role installation settings in Windows Server 2012 and later versions.^[316^]^[317^]
		if %%c equ 8555 echo Symantec DLP OCR Engine ^[318^]
		if %%c equ 8580 echo Freegate, an Internet anonymizer and proxy tool^[320^]
		if %%c equ 8629 echo Tibero database^[citation needed^]
		if %%c equ 8642 echo Lotus Notes Traveler auto synchronization for Windows Mobile and Nokia devices^[322^]
		if %%c equ 8691 echo Ultra Fractal, a fractal generation and rendering software application – distributed calculations over networked computers^[323^]^[324^]
		if %%c equ 8765 echo Default port of a local GUN relay peer that the Internet Archive^[325^] and others use as a decentralized mirror for censorship resistance.^[326^]
		if %%c equ 8767 echo Voice channel of TeamSpeak 2,^[327^] a proprietary Voice over IP protocol targeted at gamers^[citation needed^]
		if %%c equ 8834 echo Nessus, a vulnerability scanner – remote XML-RPC web server^[328^]^[third-party source needed^]
		if %%c equ 8840 echo Opera Unite, an extensible framework for web applications^[329^]^[330^]
		if %%c equ 8880 echo Alternate port of CDDB ^(Compact Disc Database^) protocol, used to look up audio CD ^(compact disc^) information over the Internet.^[331^] See also port 888.
		if %%c equ 8883 echo Secure MQTT ^(MQTT over TLS^)^[333^]^[334^]
		if %%c equ 8887 echo HyperVM over HTTP^[citation needed^]
		if %%c equ 8888 echo HyperVM over HTTPS^[citation needed^]
		if %%c equ 8889 echo MAMP^[337^]
		if %%c equ 8920 echo Jellyfin HTTPS port^[302^]
		if %%c equ 8983 echo Apache Solr^[338^]
		if %%c equ 8997 echo Alternate port for I2P Monotone Proxy^[177^]^[jargon^]
		if %%c equ 8998 echo I2P Monotone Proxy^[177^]^[jargon^]
		if %%c equ 8999 echo Alternate port for I2P Monotone Proxy^[177^]^[jargon^]
		if %%c equ 9000 echo SonarQube Web Server^[339^]
		if %%c equ 9001 echo ETL Service Manager^[342^]
		if %%c equ 9002 echo Newforma Server comms
		if %%c equ 9030 echo Tor often used
		if %%c equ 9042 echo Apache Cassandra native protocol clients
		if %%c equ 9043 echo WebSphere Application Server Administration Console secure
		if %%c equ 9060 echo WebSphere Application Server Administration Console
		if %%c equ 9080 echo glrpc, Groove Collaboration software GLRPC
		if %%c equ 9081 echo Zerto ZVM to ZVM communication
		if %%c equ 9090 echo Prometheus metrics server
		if %%c equ 9091 echo Openfire Administration Console ^(SSL Secured^)
		if %%c equ 9092 echo H2 ^(DBMS^) Database Server
		if %%c equ 9100 echo PDL Data Stream, used for printing to certain network printers^[11^]
		if %%c equ 9101 echo Bacula Director
		if %%c equ 9102 echo Bacula File Daemon
		if %%c equ 9103 echo Bacula Storage Daemon
		if %%c equ 9119 echo MXit Instant Messenger
		if %%c equ 9150 echo Tor Browser
		if %%c equ 9191 echo Sierra Wireless Airlink
		if %%c equ 9199 echo Avtex LLC—qStats
		if %%c equ 9200 echo Elasticsearch^[344^]—default Elasticsearch port
		if %%c equ 9217 echo iPass Platform Service
		if %%c equ 9293 echo Sony PlayStation RemotePlay^[345^]
		if %%c equ 9295 echo Sony PlayStation Remote Play Session creation communication port
		if %%c equ 9296 echo Sony PlayStation Remote Play
		if %%c equ 9300 echo IBM Cognos BI^[citation needed^]
		if %%c equ 9303 echo D-Link Shareport Share storage and MFP printers^[citation needed^]
		if %%c equ 9306 echo Sphinx Native API
		if %%c equ 9309 echo Sony PlayStation Vita Host Collaboration WiFi Data Transfer^[346^]
		if %%c equ 9312 echo Sphinx SphinxQL
		if %%c equ 9332 echo Litecoin JSON-RPC server
		if %%c equ 9333 echo Litecoin
		if %%c equ 9339 echo Used by all Supercell games such as Brawl Stars and Clash of Clans, mobile freemium strategy video games
		if %%c equ 9389 echo adws, Microsoft AD DS Web Services, Powershell uses this port
		if %%c equ 9392 echo OpenVAS Greenbone Security Assistant web interface
		if %%c equ 9418 echo git, Git pack transfer service
		if %%c equ 9419 echo MooseFS distributed file system – master control port^[347^]
		if %%c equ 9420 echo MooseFS distributed file system – master command port^[347^]
		if %%c equ 9421 echo MooseFS distributed file system – master client port^[347^]
		if %%c equ 9422 echo MooseFS distributed file system – Chunkservers^[347^]
		if %%c equ 9425 echo MooseFS distributed file system – CGI server^[347^]
		if %%c equ 9443 echo VMware Websense Triton console ^(HTTPS port used for accessing and administrating a vCenter Server via the Web Management Interface^)
		if %%c equ 9535 echo mngsuite, LANDesk Management Suite Remote Control
		if %%c equ 9536 echo laes-bf, IP Fabrics Surveillance buffering function
		if %%c equ 9600 echo Factory Interface Network Service ^(FINS^), a network protocol used by Omron programmable logic controllers^[citation needed^]
		if %%c equ 9669 echo VGG Image Search Engine VISE
		if %%c equ 9675 echo Spiceworks Desktop, IT Helpdesk Software
		if %%c equ 9676 echo Spiceworks Desktop, IT Helpdesk Software
		if %%c equ 9695 echo Content centric networking ^(CCN, CCNx^)^[citation needed^]
		if %%c equ 9735 echo Bitcoin Lightning Network^[348^]
		if %%c equ 9785 echo Viber^[211^]
		if %%c equ 9800 echo WebDAV Source
		if %%c equ 9875 echo Club Penguin Disney online game for kids
		if %%c equ 9897 echo Sony PlayStation Remote Play Video stream
		if %%c equ 9898 echo Tripwire—File Integrity Monitoring Software^[349^]
		if %%c equ 9899 echo SCTP tunneling ^(port number used in SCTP packets encapsulated in UDP, RFC 6951^)
		if %%c equ 9901 echo Banana for Apache Solr
		if %%c equ 9981 echo Tvheadend HTTP server ^(web interface^)^[350^]
		if %%c equ 9982 echo Tvheadend HTSP server ^(Streaming protocol^)^[350^]
		if %%c equ 9987 echo TeamSpeak 3 server default ^(voice^) port ^(for the conflicting service see the IANA list^)^[351^]
		if %%c equ 9993 echo ZeroTier Default port for ZeroTier
		if %%c equ 9997 echo Splunk port for communication between the forwarders and indexers
		if %%c equ 9999 echo Urchin Web Analytics^[citation needed^]
		if %%c equ 9999 echo Dash ^(cryptocurrency^)^[352^]
		if %%c equ 10000 echo Network Data Management Protocol ^(NDMP^) Control stream for network backup and restore.
		if %%c equ 10001 echo Ubiquiti UniFi access points broadcast to 255.255.255.255:10001 ^(UDP^) to locate the controller^(s^)
		if %%c equ 10009 echo Crossfire, a multiplayer online First Person Shooter^[citation needed^]
		if %%c equ 10011 echo TeamSpeak 3 ServerQuery^[351^]
		if %%c equ 10022 echo TeamSpeak 3 ServerQuery over SSH
		if %%c equ 10024 echo Zimbra smtp ^[mta^]—to amavis from postfix^[citation needed^]
		if %%c equ 10025 echo Zimbra smtp ^[mta^]—back to postfix from amavis^[citation needed^]
		if %%c equ 10042 echo Mathoid server ^[354^]
		if %%c equ 10050 echo Zabbix agent
		if %%c equ 10051 echo Zabbix trapper
		if %%c equ 10110 echo NMEA 0183 Navigational Data. Transport of NMEA 0183 sentences over TCP or UDP
		if %%c equ 10172 echo Intuit Quickbooks client
		if %%c equ 10200 echo FRISK Software International^'s fpscand virus scanning daemon for Unix platforms^[355^]
		if %%c equ 10212 echo GE Intelligent Platforms Proficy HMI/SCADA – CIMPLICITY WebView^[357^]
		if %%c equ 10308 echo Digital Combat Simulator Dedicated Server ^[358^]
		if %%c equ 10346 echo TEKWorx Limited - interfaceIT board protocol
		if %%c equ 10468 echo Flyer - discovery protocol^[citation needed^]
		if %%c equ 10480 echo SWAT 4 Dedicated Server^[citation needed^]
		if %%c equ 10505 echo BlueStacks ^(android simulator^) broadcast^[359^]
		if %%c equ 10514 echo TLS-enabled Rsyslog ^(default by convention^)
		if %%c equ 10578 echo Skyrim Together multiplayer server for The Elder Scrolls V: Skyrim mod.
		if %%c equ 10800 echo Touhou fight games ^(Immaterial and Missing Power, Scarlet Weather Rhapsody, Hisoutensoku, Hopeless Masquerade and Urban Legend in Limbo^)
		if %%c equ 10823 echo Farming Simulator 2011^[citation needed^]
		if %%c equ 10891 echo Jungle Disk ^(this port is opened by the Jungle Disk Monitor service on the localhost^)^[citation needed^]
		if %%c equ 10933 echo Octopus Deploy Tentacle deployment agent^[360^]
		if %%c equ 11001 echo metasys ^( Johnson Controls Metasys java AC control environment ^)
		if %%c equ 11100 echo Risk of Rain multiplayer server
		if %%c equ 11111 echo RiCcI, Remote Configuration Interface ^(Redhat Linux^)
		if %%c equ 11112 echo ACR/NEMA Digital Imaging and Communications in Medicine ^(DICOM^)
		if %%c equ 11211 echo memcached^[11^]
		if %%c equ 11214 echo memcached incoming SSL proxy
		if %%c equ 11215 echo memcached internal outgoing SSL proxy
		if %%c equ 11311 echo Robot Operating System master
		if %%c equ 11371 echo OpenPGP HTTP key server
		if %%c equ 11753 echo OpenRCT2 multiplayer^[362^]
		if %%c equ 12000 echo CubeForm, Multiplayer SandBox Game
		if %%c equ 12012 echo Audition Online Dance Battle, Korea Server—Status/Version Check
		if %%c equ 12013 echo Audition Online Dance Battle, Korea Server
		if %%c equ 12035 echo Second Life, used for server UDP in-bound^[363^]
		if %%c equ 12043 echo Second Life, used for LSL HTTPS in-bound^[364^]
		if %%c equ 12046 echo Second Life, used for LSL HTTP in-bound^[364^]
		if %%c equ 12201 echo Graylog Extended Log Format ^(GELF^)^[365^]^[importance?^]
		if %%c equ 12222 echo Light Weight Access Point Protocol ^(LWAPP^) LWAPP data ^(RFC 5412^)
		if %%c equ 12223 echo Light Weight Access Point Protocol ^(LWAPP^) LWAPP control ^(RFC 5412^)
		if %%c equ 12307 echo Makerbot UDP Broadcast ^(client to printer^) ^(JSON-RPC^)^[366^]
		if %%c equ 12308 echo Makerbot UDP Broadcast ^(printer to client^) ^(JSON-RPC^)^[366^]
		if %%c equ 12345 echo Cube World^[367^]
		if %%c equ 12443 echo IBM HMC web browser management access over HTTPS instead of default port 443^[368^]
		if %%c equ 12489 echo NSClient/NSClient++/NC_Net ^(Nagios^)
		if %%c equ 12975 echo LogMeIn Hamachi ^(VPN tunnel software; also port 32976^)—used to connect to Mediation Server ^(bibi.hamachi.cc^); will attempt to use SSL ^(TCP port 443^) if both 12975 ^& 32976 fail to connect
		if %%c equ 13008 echo Crossfire, a multiplayer online First Person Shooter^[citation needed^]
		if %%c equ 13075 echo Default^[370^] for BMC Software Control-M/Enterprise Manager Corba communication, though often changed during installation
		if %%c equ 13400 echo ISO 13400 Road vehicles — Diagnostic communication over Internet Protocol^(DoIP^)
		if %%c equ 13698 echo File-Transferer
		if %%c equ 13720 echo Symantec NetBackup—bprd ^(formerly VERITAS^)
		if %%c equ 13721 echo Symantec NetBackup—bpdbm ^(formerly VERITAS^)
		if %%c equ 13724 echo Symantec Network Utility—vnetd ^(formerly VERITAS^)
		if %%c equ 13782 echo Symantec NetBackup—bpcd ^(formerly VERITAS^)
		if %%c equ 13783 echo Symantec VOPIED protocol ^(formerly VERITAS^)
		if %%c equ 13785 echo Symantec NetBackup Database—nbdb ^(formerly VERITAS^)
		if %%c equ 13786 echo Symantec nomdb ^(formerly VERITAS^)
		if %%c equ 14550 echo MAVLink Ground Station Port
		if %%c equ 14567 echo Battlefield 1942 and mods
		if %%c equ 14652 echo Repgen DoxBox reporting tool
		if %%c equ 14800 echo Age of Wonders III p2p port^[371^]
		if %%c equ 15000 echo psyBNC
		if %%c equ 15009 echo Teltonika networks remote management system ^(RMS^)
		if %%c equ 15010 echo Teltonika networks remote management system ^(RMS^)
		if %%c equ 15345 echo XPilot Contact
		if %%c equ 15441 echo ZeroNet fileserver^[citation needed^]
		if %%c equ 15567 echo Battlefield Vietnam and mods
		if %%c equ 15672 echo RabbitMQ management plugin^[373^]
		if %%c equ 16000 echo Oracle WebCenter Content: Imaging ^(formerly known as Oracle Universal Content Management^). Port though often changed during installation
		if %%c equ 16080 echo macOS Server Web ^(HTTP^) service with performance cache^[374^]
		if %%c equ 16200 echo Oracle WebCenter Content: Content Server ^(formerly known as Oracle Universal Content Management^). Port though often changed during installation
		if %%c equ 16225 echo Oracle WebCenter Content: Content Server Web UI. Port though often changed during installation
		if %%c equ 16250 echo Oracle WebCenter Content: Inbound Refinery ^(formerly known as Oracle Universal Content Management^). Port though often changed during installation
		if %%c equ 16261 echo Project Zomboid multiplayer. Additional sequential ports used for each player connecting to server.^[citation needed^]
		if %%c equ 16300 echo Oracle WebCenter Content: Records Management ^(formerly known as Oracle Universal Records Management^). Port though often changed during installation
		if %%c equ 16384 echo CISCO Default RTP MIN
		if %%c equ 16400 echo Oracle WebCenter Content: Capture ^(formerly known as Oracle Document Capture^). Port though often changed during installation
		if %%c equ 16567 echo Battlefield 2 and mods
		if %%c equ 16666 echo SITC Port for mobile web traffic
		if %%c equ 16677 echo SITC Port for mobile web traffic
		if %%c equ 17000 echo M17 - Digital RF voice and data protocol with Internet ^(UDP^) gateways ^(reflectors^).^[375^]
		if %%c equ 17011 echo Worms multiplayer
		if %%c equ 17224 echo Train Realtime Data Protocol ^(TRDP^) Process Data, network protocol used in train communication.^[2^]^[376^]
		if %%c equ 17225 echo Train Realtime Data Protocol ^(TRDP^) Message Data, network protocol used in train communication.^[2^]^[377^]
		if %%c equ 17333 echo CS Server ^(CSMS^), default binary protocol port
		if %%c equ 17472 echo Tanium Communication Port
		if %%c equ 17474 echo DMXControl 3 Network Discovery
		if %%c equ 17475 echo DMXControl 3 Network Broker
		if %%c equ 17500 echo Dropbox LanSync Protocol ^(db-lsp^); used to synchronize file catalogs between Dropbox clients on a local network.
		if %%c equ 17777 echo SITC Port for mobile web traffic
		if %%c equ 18080 echo Monero P2P network communications^[citation needed^]
		if %%c equ 18081 echo Monero incoming RPC calls^[citation needed^]
		if %%c equ 18091 echo memcached Internal REST HTTPS for SSL
		if %%c equ 18092 echo memcached Internal CAPI HTTPS for SSL
		if %%c equ 18104 echo RAD PDF Service
		if %%c equ 18200 echo Audition Online Dance Battle, AsiaSoft Thailand Server status/version check
		if %%c equ 18201 echo Audition Online Dance Battle, AsiaSoft Thailand Server
		if %%c equ 18206 echo Audition Online Dance Battle, AsiaSoft Thailand Server FAM database
		if %%c equ 18300 echo Audition Online Dance Battle, AsiaSoft SEA Server status/version check
		if %%c equ 18301 echo Audition Online Dance Battle, AsiaSoft SEA Server
		if %%c equ 18306 echo Audition Online Dance Battle, AsiaSoft SEA Server FAM database
		if %%c equ 18333 echo Bitcoin testnet^[citation needed^]
		if %%c equ 18400 echo Audition Online Dance Battle, KAIZEN Brazil Server status/version check
		if %%c equ 18401 echo Audition Online Dance Battle, KAIZEN Brazil Server
		if %%c equ 18505 echo Audition Online Dance Battle R4p3 Server, Nexon Server status/version check
		if %%c equ 18506 echo Audition Online Dance Battle, Nexon Server
		if %%c equ 18605 echo X-BEAT status/version check
		if %%c equ 18606 echo X-BEAT
		if %%c equ 18676 echo YouView
		if %%c equ 19000 echo Audition Online Dance Battle, G10/alaplaya Server status/version check
		if %%c equ 19001 echo Audition Online Dance Battle, G10/alaplaya Server
		if %%c equ 19132 echo Minecraft: Bedrock Edition multiplayer server^[378^]
		if %%c equ 19133 echo Minecraft: Bedrock Edition IPv6 multiplayer server^[378^]
		if %%c equ 19150 echo Gkrellm Server
		if %%c equ 19226 echo Panda Software AdminSecure Communication Agent
		if %%c equ 19294 echo Google Talk Voice and Video connections^[379^]
		if %%c equ 19295 echo Google Talk Voice and Video connections^[379^]
		if %%c equ 19302 echo Google Talk Voice and Video connections^[379^]
		if %%c equ 19531 echo systemd-journal-gatewayd^[380^]
		if %%c equ 19532 echo systemd-journal-remote^[381^]
		if %%c equ 19788 echo Mesh Link Establishment protocol for IEEE 802.15.4 radio mesh networks^[382^]
		if %%c equ 19812 echo 4D database SQL Communication^[383^]
		if %%c equ 19813 echo 4D database Client Server Communication^[383^]
		if %%c equ 19814 echo 4D database DB4D Communication^[383^]
		if %%c equ 19999 echo Distributed Network Protocol—Secure ^(DNP—Secure^), a secure version of the protocol used in SCADA systems between communicating RTU^'s and IED^'s
		if %%c equ 20000 echo Distributed Network Protocol ^(DNP^), a protocol used in SCADA systems between communicating RTU^'s and IED^'s
		if %%c equ 20560 echo Killing Floor
		if %%c equ 20582 echo HW Development IoT comms
		if %%c equ 20583 echo HW Development IoT comms
		if %%c equ 20595 echo 0 A.D. Empires Ascendant
		if %%c equ 20808 echo Ableton Link
		if %%c equ 21025 echo Starbound Server ^(default^), Starbound
		if %%c equ 21064 echo Default Ingres DBMS server
		if %%c equ 22000 echo Syncthing ^(default^)
		if %%c equ 22136 echo FLIR Systems Camera Resource Protocol
		if %%c equ 22222 echo Davis Instruments, WeatherLink IP
		if %%c equ 23073 echo Soldat Dedicated Server
		if %%c equ 23399 echo Skype default protocol
		if %%c equ 23513 echo Duke Nukem 3D source ports
		if %%c equ 24441 echo Pyzor spam detection network
		if %%c equ 24444 echo NetBeans integrated development environment
		if %%c equ 24465 echo Tonido Directory Server for Tonido which is a Personal Web App and P2P platform
		if %%c equ 24554 echo BINKP, Fidonet mail transfers over TCP/IP
		if %%c equ 24800 echo Synergy: keyboard/mouse sharing software
		if %%c equ 24842 echo StepMania: Online: Dance Dance Revolution Simulator
		if %%c equ 25565 echo Minecraft ^(Java Edition^) multiplayer server^[384^]^[385^]
		if %%c equ 25575 echo Minecraft ^(Java Edition^) multiplayer server RCON^[387^]
		if %%c equ 25826 echo collectd default port^[389^]
		if %%c equ 26000 echo id Software^'s Quake server
		if %%c equ 26822 echo MSI MysticLight
		if %%c equ 27000 echo PowerBuilder SySAM license server
		if %%c equ 27015 echo GoldSrc and Source engine dedicated server port^[390^]
		if %%c equ 27016 echo Magicka and Space Engineers server port
		if %%c equ 27017 echo MongoDB daemon process ^(mongod^) and routing service ^(mongos^)^[391^]
		if %%c equ 27036 echo Steam ^(In-Home Streaming^)^[390^]
		if %%c equ 27374 echo Sub7 default.
		if %%c equ 27888 echo Kaillera server
		if %%c equ 27950 echo OpenArena outgoing
		if %%c equ 28000 echo Siemens Digital Industries Software license server^[2^]
		if %%c equ 28001 echo Starsiege: Tribes^[citation needed^]
		if %%c equ 28015 echo Rust ^(video game^)^[392^]
		if %%c equ 28016 echo Rust ^(video game^) RCON^[393^]
		if %%c equ 28200 echo VoxelStorm game server
		if %%c equ 28260 echo Palo Alto Networks^' Panorama HA-1 backup unencrypted sync port.^[26^]
		if %%c equ 28443 echo Palo Alto Networks^' Panorama-to-managed devices software updates, PAN-OS 8.0 and later.^[201^]
		if %%c equ 28769 echo Palo Alto Networks^' Panorama HA unencrypted sync port.^[26^]
		if %%c equ 28770 echo Palo Alto Networks^' Panorama HA-1 backup sync port.^[26^]
		if %%c equ 28852 echo Killing Floor^[citation needed^]
		if %%c equ 28910 echo Nintendo Wi-Fi Connection^[395^]
		if %%c equ 28960 echo Call of Duty; Call of Duty: United Offensive; Call of Duty 2; Call of Duty 4: Modern Warfare^[citation needed^] Call of Duty: World at War ^(PC platform^)^[396^]
		if %%c equ 29000 echo Perfect World, an adventure and fantasy MMORPG^[citation needed^]
		if %%c equ 29070 echo Jedi Knight: Jedi Academy by Ravensoft^[citation needed^]
		if %%c equ 29920 echo Nintendo Wi-Fi Connection^[395^]
		if %%c equ 30000 echo XLink Kai P2P
		if %%c equ 30003 echo Amicon FPSU-IP Remote Administration
		if %%c equ 30004 echo Amicon FPSU-IP VPN
		if %%c equ 30033 echo TeamSpeak 3 File Transfer^[351^]
		if %%c equ 30120 echo Fivem ^(Default Port^) GTA V multiplayer^[399^]^[385^]
		if %%c equ 30564 echo Multiplicity: keyboard/mouse/clipboard sharing software^[citation needed^]
		if %%c equ 31337 echo Back Orifice and Back Orifice 2000 remote administration tools^[400^]^[401^]
		if %%c equ 31416 echo BOINC RPC^[403^]
		if %%c equ 31438 echo Rocket U2^[404^]
		if %%c equ 31457 echo TetriNET
		if %%c equ 32137 echo Immunet Protect ^(UDP in version 2.0,^[405^] TCP since version 3.0^[406^]^)
		if %%c equ 32400 echo Plex Media Server^[407^]
		if %%c equ 32764 echo A backdoor found on certain Linksys, Netgear and other wireless DSL modems/combination routers^[408^]
		if %%c equ 32887 echo Ace of Spades, a multiplayer FPS video game^[citation needed^]
		if %%c equ 32976 echo LogMeIn Hamachi, a VPN application; also TCP port 12975 and SSL ^(TCP 443^).^[409^]
		if %%c equ 33434 echo traceroute
		if %%c equ 33848 echo Jenkins, a continuous integration ^(CI^) tool^[410^]^[411^]
		if %%c equ 34000 echo Infestation: Survivor Stories ^(formerly known as The War Z^), a multiplayer zombie video game^[verification needed^]
		if %%c equ 34197 echo Factorio, a multiplayer survival and factory-building game^[412^]
		if %%c equ 35357 echo OpenStack Identity ^(Keystone^) administration^[413^]^[self-published source?^]
		if %%c equ 36330 echo Folding@home Control Port
		if %%c equ 37008 echo TZSP intrusion detection^[citation needed^]
		if %%c equ 40000 echo SafetyNET p – a real-time Industrial Ethernet protocol
		if %%c equ 41121 echo Tentacle Server^[414^] - Pandora FMS
		if %%c equ 41230 echo Z-Wave Protocol over DTLS^[415^]
		if %%c equ 41794 echo Crestron Control Port^[416^] - Crestron Electronics
		if %%c equ 41795 echo Crestron Terminal Port^[417^] - Crestron Electronics
		if %%c equ 41796 echo Crestron Secure Control Port^[418^] - Crestron Electronics
		if %%c equ 41797 echo Crestron Secure Terminal Port^[419^] - Crestron Electronics
		if %%c equ 42999 echo Curiosity ^[420^]
		if %%c equ 43110 echo ZeroNet web UI default port ^[421^]
		if %%c equ 44123 echo Z-Wave Secure Tunnel^[423^]
		if %%c equ 44405 echo Mu Online Connect Server^[citation needed^]
		if %%c equ 44818 echo EtherNet/IP explicit messaging
		if %%c equ 48556 echo drive.web AC/DC Drive Automation and Control Networks ^[424^]
		if %%c equ 48656 echo Brainy LAB Control Server
		if %%c equ 48657 echo Brainy LAB Control Server
		if %%c equ 49151 echo Reserved^[2^]
		if %%c equ 49160 echo Palo Alto Networks^' Panorama.^[201^]
		if %%c equ 51820 echo WireGuard protocol^[427^]
		if %%c equ 55555 echo Used by mac OS 11 Big Sur and later.^[428^]
		if %%c equ 64738 echo Mumble^[430^]
		if %%c geq 10000 (if %%c leq 20000 echo Used on VoIP networks for receiving and transmitting voice telephony traffic which includes Google Voice via the OBiTalk ATA devices as well as on the MagicJack and Vonage ATA network devices.^[353^])
		if %%c geq 10201 (if %%c leq 10204 echo FRISK Software International's f-protd virus scanning daemon for Unix platforms^[356^] )
		if %%c geq 13000 (if %%c leq 13050 echo Second Life, used for server UDP in-bound^[369^] )
		if %%c geq 1560 (if %%c leq 1590 echo 1C:Enterprise cluster working processes^[139^] )
		if %%c geq 1582 (if %%c leq 1583 echo IBM Tivoli Storage Manager server web interface^[133^] )
		if %%c geq 16384 (if %%c leq 16387 echo Real-time Transport Protocol ^(RTP^), RTP Control Protocol ^(RTCP^), used by Apple's FaceTime and Game Center^[11^] )
		if %%c geq 16384 (if %%c leq 16403 echo Real-time Transport Protocol ^(RTP^), RTP Control Protocol ^(RTCP^), used by Apple's iChat for audio and video^[11^] )
		if %%c geq 16393 (if %%c leq 16402 echo Real-time Transport Protocol ^(RTP^), RTP Control Protocol ^(RTCP^), used by Apple's FaceTime and Game Center^[11^] )
		if %%c geq 16403 (if %%c leq 16472 echo Real-time Transport Protocol ^(RTP^), RTP Control Protocol ^(RTCP^), used by Apple's Game Center^[11^] )
		if %%c geq 1714 (if %%c leq 1764 echo KDE Connect^[148^] )
		if %%c geq 2222 (if %%c leq 2226 echo ESET Remote administrator^[123^]) 
		if %%c geq 2546 (if %%c leq 2548 echo EVault data protection services )
		if %%c geq 25600 (if %%c leq 25700 echo SamsidParty Operational Ports )
		if %%c geq 25734 (if %%c leq 25735 echo SOLIDWORKS SolidNetworkLicense Manager^[388^] )
		if %%c geq 26900 (if %%c leq 26901 echo EVE Online )
		if %%c geq 26909 (if %%c leq 26911 echo Action Tanks Online )
		if %%c geq 27000 (if %%c leq 27006 echo id Software's QuakeWorld master server )
		if %%c geq 27000 (if %%c leq 27009 echo FlexNet Publisher's License server ^(from the range of default ports^) )
		if %%c geq 27000 (if %%c leq 27015 echo Steam ^(game client traffic^)^[390^] )
		if %%c geq 27015 (if %%c leq 27018 echo Unturned, a survival game )
		if %%c geq 27015 (if %%c leq 27030 echo Steam ^(matchmaking and HLTV^)^[390^] )
		if %%c geq 27031 (if %%c leq 27035 echo Steam ^(In-Home Streaming^)^[390^] )
		if %%c geq 27500 (if %%c leq 27900 echo id Software's QuakeWorld )
		if %%c geq 27901 (if %%c leq 27910 echo id Software's Quake II master server )
		if %%c geq 27960 (if %%c leq 27969 echo Activision's Enemy Territory and id Software's Quake III Arena, Quake III and Quake Live and some ioquake3 derived games, such as Urban Terror ^(OpenArena incoming^) )
		if %%c geq 28770 (if %%c leq 28771 echo AssaultCube Reloaded, a video game based upon a modification of AssaultCube^[citation needed^] )
		if %%c geq 28785 (if %%c leq 28786 echo Cube 2: Sauerbraten^[394^] )
		if %%c geq 2948 (if %%c leq 2949 echo WAP push Multimedia Messaging Service ^(MMS^) )
		if %%c geq 29900 (if %%c leq 29901 echo Nintendo Wi-Fi Connection^[395^])
		if %%c geq 3478 (if %%c leq 3481 echo Microsoft Teams ^[194^] )
		if %%c geq 42081 (if %%c leq 42090 echo Zippin - Zippin Stores )
		if %%c geq 42590 (if %%c leq 42595 echo Glue - MakePro X )
		if %%c geq 43594 (if %%c leq 43595 echo RuneScape^[422^] )
		if %%c geq 4444 (if %%c leq 4445 echo I2P HTTP/S proxy )
		if %%c geq 4502 (if %%c leq 4534 echo Microsoft Silverlight connectable ports under non-elevated trust )
		if %%c geq 4505 (if %%c leq 4506 echo Salt master )
		if %%c geq 4610 (if %%c leq 4640 echo QualiSystems TestShell Suite Services )
		if %%c geq 476 (if %%c leq 490 echo Centro Software ERP ports )
		if %%c geq 47808 (if %%c leq 47823 echo BACnet Building Automation and Control Networks ^(4780810 = BAC016 to 4782310 = BACF16^) )
		if %%c geq 49152 (if %%c leq 65535 echo Certificate Management over CMS^[426^] )
		if %%c geq 5000 (if %%c leq 5500 echo League of Legends, a multiplayer online battle arena video game^[224^] )
		if %%c geq 5235 (if %%c leq 5236 echo Firebase Cloud Messaging^[238^] )
		if %%c geq 5988 (if %%c leq 5989 echo CIM-XML ^(DMTF Protocol^)^[268^] )
		if %%c geq 60000 (if %%c leq 61000 echo Range from which Mosh – a remote-terminal application similar to SSH – typically assigns ports for ongoing sessions between Mosh servers and Mosh clients.^[429^] )
		if %%c geq 6000 (if %%c leq 6063 echo X11—used between an X client and server over the network )
		if %%c geq 6463 (if %%c leq 6472 echo Discord RPC^[271^] )
		if %%c geq 6560 (if %%c leq 6561 echo Speech-Dispatcher daemon^[citation needed^] )
		if %%c geq 6660 (if %%c leq 6664 echo Internet Relay Chat ^(IRC^) )
		if %%c geq 6665 (if %%c leq 6669 echo Internet Relay Chat ^(IRC^) )
		if %%c geq 6783 (if %%c leq 6785 echo Splashtop Remote server broadcast )
		if %%c geq 6881 (if %%c leq 6887 echo BitTorrent beginning of range of ports used most often )
		if %%c geq 6889 (if %%c leq 6890 echo BitTorrent continuation of range of ports used most often )
		if %%c geq 6891 (if %%c leq 6900 echo BitTorrent continuation of range of ports used most often )
		if %%c geq 6891 (if %%c leq 6900 echo Windows Live Messenger ^(File transfer^) )
		if %%c geq 6902 (if %%c leq 6968 echo BitTorrent continuation of range of ports used most often )
		if %%c geq 6970 (if %%c leq 6999 echo BitTorrent end of range of ports used most often )
		if %%c geq 71 (if %%c leq 74 echo NETRJS protocol^[43^]^[44^]^[45^] )
		if %%c geq 7652 (if %%c leq 7654 echo I2P anonymizing overlay network )
		if %%c geq 7656 (if %%c leq 7660 echo I2P anonymizing overlay network )
		if %%c geq 7707 (if %%c leq 7708 echo Killing Floor )
		if %%c geq 7777 (if %%c leq 7788 echo Common default Steam game server ports^(Ark, L4D2, ect^) )
		if %%c geq 8194 (if %%c leq 8195 echo Bloomberg Terminal^[305^] )
		if %%c geq 8611 (if %%c leq 8614 echo Canon BubbleJet Network Protocol ^[321^] )
		if %%c geq 9050 (if %%c leq 9051 echo Tor ^(SOCKS-5 proxy client^) )
	)
)
pause
goto :Loop