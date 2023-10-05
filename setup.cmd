@echo off

:: Windows Script to Copy Config to nvim folder in AppData

echo %USERNAME%
set P=C:\Users\%USERNAME%\AppData\Local\
echo Copying nvim config files to %P%

xcopy /i /s config %P%
