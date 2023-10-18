@echo off
:main-screen
title Proxima Installer
echo Proxima Installer
echo (I)nstall or (U)ninstall?
echo If you wish to close, please exit this window

echo I or U
set /p s= Input: 
echo Input is: %s%

if %s% == I goto install
if %s% == U goto uninstall
if %s% == SPICYPILLOW goto confirm



:install
if not exist "c:\Proxima" (
mkdir "c:\Proxima"
echo Proxima path made
)
cd "c:\Proxima"



if not exist "main.py" (
curl.exe -o main.py https://raw.githubusercontent.com/TheAgent-1/Proxima/main/main.py
echo got main.py
)

if not exist "proxima.py" (
curl.exe -o proxima.py https://raw.githubusercontent.com/TheAgent-1/Proxima/main/proxima.py
echo got proxima.py
)

if not exist "requirements.txt" (
curl.exe -o requirements.txt https://raw.githubusercontent.com/TheAgent-1/Proxima/main/requirements.txt
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


:confirm
echo Confirmation?
echo You have entered the secret dev password
echo Do you intend on downloading the experimental testing build
echo (Y)es, (A)rchive or (N)o
echo Selecting no will bring you to the Archive screen

set /p s= Input: 
echo Input is: %s%

if %s% == Y goto testinst
if %s% == A goto archivinst
if %s% == N goto main-screen


:testinst
if not exist "c:\Proxima-TEST" (
mkdir "c:\Proxima-TEST"
echo Proxima-TEST path made
)
cd "c:\Proxima-TEST"



if not exist "main.py" (
curl.exe -o main.py https://raw.githubusercontent.com/TheAgent-1/Proxima/test/main.py
echo got main.py
)

if not exist "proxima.py" (
curl.exe -o proxima.py https://raw.githubusercontent.com/TheAgent-1/Proxima/test/proxima.py
echo got proxima.py
)

if not exist "requirements.txt" (
curl.exe -o requirements.txt https://raw.githubusercontent.com/TheAgent-1/Proxima/test/requirements.txt
echo got requirements.txt
)

python -m pip install -r requirements.txt
mklink %USERPROFILE%\Desktop\Proxima "C:\Proxima-TEST\main.py"
echo made shortcut on Desktop
cls
goto exit


:archivinst
echo Version Select
echo Select the desired Archival version

set /p s= Input: 
echo Input is: %s%

if %s% == 1-1 goto 1-1


:1-1
if not exist "c:\Proxima-ARCHIVE" (
mkdir "c:\Proxima-ARCHIVE"
echo Proxima-ARCHIVE path made
)
cd "c:\Proxima-ARCHIVE"



if not exist "main.py" (
curl.exe -o main.py https://raw.githubusercontent.com/TheAgent-1/Proxima/archive/1-1/main.py
echo got main.py
)

if not exist "proxima.py" (
curl.exe -o proxima.py https://raw.githubusercontent.com/TheAgent-1/Proxima/archive/1-1/proxima.py
echo got proxima.py
)

if not exist "requirements.txt" (
curl.exe -o requirements.txt https://raw.githubusercontent.com/TheAgent-1/Proxima/archive/1-1/requirements.txt
echo got requirements.txt
)

python -m pip install -r requirements.txt
mklink %USERPROFILE%\Desktop\Proxima "C:\Proxima-ARCHIVE\main.py"
echo made shortcut on Desktop
cls
goto exit


:exit
cls
