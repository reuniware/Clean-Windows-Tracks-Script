net stop "LanmanServer" /y
net stop "wuauserv" /y
net stop "TokenBroker" /y
net stop "SstpSvc" /y
net stop "SSDPSRV" /y
net stop "RmSvc" /y
net stop "hpqcaslwmiex" /y
net stop "cphs" /y
net stop "igfxCUIService2.0.0.0" /y
net stop "SgrmBroker" /y
net stop "LMS" /y
net stop "jhi_service" /y
net stop "HPSupportSolutionsFrameworkService" /y
net stop "HPJumpStartBridge" /y
net stop "HP Comm Recover" /y
net stop "WinDefend" /y
net stop "W3SVC" /y
net stop "VMware NAT Service" /y
net stop "VMUSBArbService" /y
net stop "VMnetDHCP" /y
net stop "VMAuthdService" /y
rem net stop "TeamViewer" /y
net stop "stisvc" /y
net stop "Intel(R) PROSet Monitoring Service" /y
net stop "HotKeyServiceUWP" /y
net stop "DusmSvc" /y
net stop "DiagTrack" /y
net stop "cplspcon" /y
net stop "ClickToRunSvc" /y
net stop "Bonjour Service" /y
net stop "OneSyncSvc_1fdd5b" /y
net stop "CDPUserSvc_1fdd5b" /y
net stop "WpnService" /y
net stop "wlidsvc" /y
net stop "WinHttpAutoProxySvc" /y
net stop "WpnUserService_1fdd5b" /y
net stop "WpnUserService_1fdd5b" /y
net stop "KeyIso" /y
net stop "CertPropSvc" /y
net stop "LicenseManager" /y
net stop "DpHost" /y
net stop "WbioSrvc" /y
net stop "AppXSvc" /y
net stop "RmSvc" /y
net stop "ClipSVC" /y
net stop "CryptSvc" /y
net stop "Spooler" /y
rem net stop "LanmanWorkstation" /y
net stop "UserDataSvc_61338" /y
net stop "NcdAutoSetup" /y
net stop "SSDPSRV" /y
net stop "PimIndexMaintenanceSvc_61338" /y
net stop "OneSyncSvc_61338" /y
net stop "LanWlanWwanSwitchingServiceUWP" /y
net stop "InstallService" /y
net stop "PlugPlay" /y
net stop "ss_conn_service" /y
net stop "ss_conn_service2" /y
net stop "LanmanServer" /y
net stop "WEBDEV 25" /y
net stop "IISADMIN" /y
net stop "lfsvc" /y
net stop "ftpsvc" /y
net stop "CDPUserSvc_61338" /y
net stop "DPS" /y
net stop "CryptSvc" /y
net stop "UnistoreSvc_61338" /y
net stop "TeamViewer" /y
taskkill /F /IM Flow.exe
taskkill /F /IM GoogleCrashHandler.exe
taskkill /F /IM GoogleCrashHandler64.exe
taskkill /F /IM HPHotkeyNotification.exe
taskkill /F /IM igfxEM.exe
taskkill /F /IM Microsoft.Photos.exe
taskkill /F /IM MicTray64.exe
taskkill /F /IM SmartAudio3.exe
taskkill /F /IM YourPhone.exe
taskkill /F /IM Calculator.exe

pause
