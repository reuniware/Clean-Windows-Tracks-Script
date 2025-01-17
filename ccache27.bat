@REM FROM MYSELF

rd /s /q c:\$Recycle.bin
rd /s /q d:\$Recycle.bin

taskkill /F /IM firefox.exe
taskkill /F /IM iexplore.exe
taskkill /F /IM chrome.exe
taskkill /F /IM msedge*

erase "%LOCALAPPDATA%\Microsoft\Edge\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Edge\*") do RD /S /Q "%%i"

erase "%LOCALAPPDATA%\Microsoft\Internet Explorer\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Internet Explorer\*") do RD /S /Q "%%i"

erase "%LOCALAPPDATA%\Microsoft\OneDrive\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\OneDrive\*") do RD /S /Q "%%i"

erase "%LOCALAPPDATA%\Microsoft\Outlook\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Outlook\*") do RD /S /Q "%%i"

erase "%LOCALAPPDATA%\BraveSoftware\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\BraveSoftware\*") do RD /S /Q "%%i"

@rem powershell.exe -Command ^
@rem 	WEVTUTIL EL > .\LOGLIST.TXT;^
@rem 	for /f %%a in ( .\LOGLIST.TXT ) do WEVTUTIL CL "%%a";^
@rem 	del .\LOGLIST.TXT

@REM FROM https://gallery.technet.microsoft.com/Effacer-lhistorique-des-2e27ee49
REG DELETE "HKCU\Software\Microsoft\Terminal Server Client" /F
DEL /F /S /Q /A %UserProfile%\Documents\Default.rdp

@REM FROM STACKOVERFLOW https://stackoverflow.com/questions/12621969/clear-cache-of-browser-by-command-line

erase "%TEMP%\*.*" /f /s /q
for /D %%i in ("%TEMP%\*") do RD /S /Q "%%i"

erase "%TMP%\*.*" /f /s /q
for /D %%i in ("%TMP%\*") do RD /S /Q "%%i"

erase "%ALLUSERSPROFILE%\TEMP\*.*" /f /s /q
for /D %%i in ("%ALLUSERSPROFILE%\TEMP\*") do RD /S /Q "%%i"

erase "%SystemRoot%\TEMP\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\TEMP\*") do RD /S /Q "%%i"

erase "%SystemRoot%\Prefetch\*.*" /f /s /q
for /D %%i in ("%SystemRoot%\Prefetch\*") do RD /S /Q "%%i"

@rem Clear IE cache - (Deletes Temporary Internet Files Only)
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
erase "%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Microsoft\Windows\Tempor~1\*") do RD /S /Q "%%i"

@rem Clear Google Chrome cache
erase "%LOCALAPPDATA%\Google\Chrome\User Data\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Google\Chrome\User Data\*") do RD /S /Q "%%i"

@rem Clear Firefox cache
erase "%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*.*" /f /s /q
for /D %%i in ("%LOCALAPPDATA%\Mozilla\Firefox\Profiles\*") do RD /S /Q "%%i"

@rem Android Studio (delete remote machines accessed through adb, such as phones etc...)
for /D %%i in ("C:\Users\%USERNAME%\Documents\AndroidStudio\DeviceExplorer") do RD /S /Q "%%i"

@FROM STACKOVERFLOW http://www.catonmat.net/blog/clear-privacy-ie-firefox-opera-chrome-safari/

set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data

del /q /s /f "%ChromeDir%"
rd /s /q "%ChromeDir%"

set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite

set DataDir=C:\Users\%USERNAME%\AppData\Local\Opera\Opera
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Opera\Opera

del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

del /q /s /f "%DataDir2%"
rd /s /q "%DataDir2%"

set DataDir=C:\Users\%USERNAME%\AppData\Local\Applec~1\Safari
set DataDir2=C:\Users\%USERNAME%\AppData\Roaming\Applec~1\Safari

del /q /s /f "%DataDir%\History"
rd /s /q "%DataDir%\History"

del /q /s /f "%DataDir%\Cache.db"
del /q /s /f "%DataDir%\WebpageIcons.db"

del /q /s /f "%DataDir2%"
rd /s /q "%DataDir2%"

set FlashCookies=C:\Users\%USERNAME%\AppData\Roaming\Macromedia\Flashp~1

del /q /s /f "%FlashCookies%"
rd /s /q "%FlashCookies%"

"C:\Program Files\CCleaner\CCleaner64.exe" /AUTO

@echo off
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared!
goto theEnd
:do_clear
rem echo clearing %1
wevtutil.exe cl %1
goto :eof
:noAdmin
echo You must run this script as an Administrator!
echo.
:theEnd

rem ping -n 5 127.0.0.1 > nul

rem pause
