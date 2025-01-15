@echo off
:: Download GetScreen client
powershell -Command "Invoke-WebRequest -Uri https://getscreen.me/download/windows/installer -OutFile GetScreenInstaller.exe"

:: Install GetScreen client
start /wait GetScreenInstaller.exe /silent

:: Wait for installation to complete
timeout /t 10 >nul

:: Output success message
echo GetScreen client installed successfully!
exit
