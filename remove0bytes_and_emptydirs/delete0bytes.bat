@echo off
setlocal

rem Define the directory to search
set "searchDir=D:\tmp\deezer-downloader"

rem Search for 0 byte files and delete them
for /R "%searchDir%" %%F in (*) do (
    if %%~zF equ 0 (
        echo Deleting %%F
        del "%%F"
    )
)

rem Remove all empty directories
for /R "%searchDir%" %%D in (.) do (
    rd "%%D" 2>NUL
)

endlocal