rem monitor live connections from command line (administrator only)
:loop
cls
netstat -b | findstr /R /C:"ESTABLISHED"

timeout /t 1

goto loop
