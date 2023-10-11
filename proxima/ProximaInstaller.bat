@echo off
title Proxima Installer
echo Proxima Installer
echo (I)nstall or (U)ninstall?
echo If you wish to close, please exit this window

echo I or U
set /p s= Input: 
echo Input is: %s%

if %s% == I goto install
if %s% == U goto uninstall



:install
if not exist "c:\Proxima" (
mkdir "c:\Proxima"
echo Proxima path made
)
cd "c:\Proxima"



if not exist "main.py" (
curl.exe -o main.py https://github.com/TheAgent-1/Proxima/raw/main/main.py
echo got main.py
)

if not exist "proxima.py" (
curl.exe -o proxima.py https://github.com/TheAgent-1/Proxima/raw/main/proxima.py
echo got proxima.py
)

if not exist "requirements.txt" (
curl.exe -o requirements.txt https://github.com/TheAgent-1/Proxima/raw/main/requirements.txt
echo got requirements.txt
)

python -m pip install -r requirements.txt
mklink %USERPROFILE%\Desktop\Proxima "C:\Proxima\main.py"
echo made shortcut on Desktop
cls
goto exit


:uninstall
if exist "c:\Proxima" (
    rmdir /s /q "c:\Proxima"
)

if exist "%USERPROFILE%\Desktop\Proxima.*" (
    del /q "%USERPROFILE%\Desktop\Proxima.*"
)

:exit
cls