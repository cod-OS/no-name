@echo off
echo Waiting for network connection...

:LOOP
timeout /t 5 /nobreak >nul
ping -n 1 google.com | find "TTL=" >nul
if errorlevel 1 goto LOOP

echo Network connection detected!
echo Hello World
pause
