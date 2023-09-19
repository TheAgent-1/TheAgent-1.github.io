@echo off
title Proxima Installer
if not exist "c:\Proxima" (
mkdir "c:\Proxima"
echo Proxima path made
)
cd "c:\Proxima"



if not exist "main.py" (
curl.exe -o main.py https://theagent-1.github.io/proxima/Proxima/main.py
echo got main.py
)

if not exist "proxima.py" (
curl.exe -o proxima.py https://theagent-1.github.io/proxima/Proxima/proxima.py
echo got proxima.py
)

if not exist "requirements.txt" (
curl.exe -o requirements.txt https://theagent-1.github.io/proxima/Proxima/requirements.txt
echo got requirements.txt
)

python -m pip install -r requirements.txt
mklink %USERPROFILE%\Desktop\Proxima "C:\Proxima\main.py"
echo made shortcut on Desktop
cls



