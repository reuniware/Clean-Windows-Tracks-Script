REM LemonLearning est systématiquement installé et pollue les logs Chrome lors d'un debug javascript
REM Seule solution actuellement = supprimer en boucle les répertoires des extensions Chrome

@echo off
setlocal

set "folder=C:\Users\[[replace by username]]\AppData\Local\Google\Chrome\User Data\Default\Extensions"

:loop
for /d %%D in ("%folder%\*") do (
    rmdir /s /q "%%~D"
)

for %%F in ("%folder%\*") do (
    del /f /q "%%~F"
)

timeout /t 5 /nobreak >nul
goto loop
