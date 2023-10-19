@echo off
:main-screen
title Proxima Installer
cls
echo Proxima Installer
echo (I)nstall or (U)ninstall?
echo If you wish to close, please exit this window

echo I or U
set /p s= Input: 
echo Input is: %s%

if %s% == I goto install
if %s% == U goto uninst-confirm
if %s% == SPICYPILLOW goto confirm
if %s% == Josh goto meme-instance
if %s% == josh goto meme-instance
if %s% == PhoneticDragon goto meme-instance
if %s% == Phoneticdragon goto meme-instance
if %s% == phoneticDragon goto meme-instance
if %s% == phoneticdragon goto meme-instance
if %s% == Phonetic goto meme-instance
if %s% == phonetic goto meme-instance
if %s% == Dragon goto meme-instance
if %s% == dragon goto meme-instance
if %s% == PD goto meme-instance
if %s% == Pd goto meme-instance
if %s% == pD goto meme-instance
if %s% == pd goto meme-instance



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


:uninst-confirm
cls
echo Confirmation?
echo Which version would you like to uninstall
echo (M)ain, (T)est, (A)rchive or (All)

set /p s= Input: 
echo Input is: %s%

if %s% == M goto m-uninstall
if %s% == T goto t-uninstall
if %s% == A goto a-uninstall
if %s% == All goto uninstall
if %s% == Al echo Wot mate?
if %s% == Josh goto meme-instance
if %s% == josh goto meme-instance
if %s% == PhoneticDragon goto meme-instance
if %s% == Phoneticdragon goto meme-instance
if %s% == phoneticDragon goto meme-instance
if %s% == phoneticdragon goto meme-instance
if %s% == Phonetic goto meme-instance
if %s% == phonetic goto meme-instance
if %s% == Dragon goto meme-instance
if %s% == dragon goto meme-instance
if %s% == PD goto meme-instance
if %s% == Pd goto meme-instance
if %s% == pD goto meme-instance
if %s% == pd goto meme-instance

:m-uninstall
if exist "c:\Proxima" (
    rmdir /s /q "c:\Proxima"
)

if exist "%USERPROFILE%\Desktop\Proxima.*" (
    del /q "%USERPROFILE%\Desktop\Proxima.*"
)
cls
goto exit


:confirm
cls
echo Confirmation?
echo You have entered the secret dev password
echo Do you intend on downloading the experimental testing build
echo (Y)es, (N)o or (A)rchive

set /p s= Input: 
echo Input is: %s%

if %s% == Y goto testinst
if %s% == A goto archivinst
if %s% == N goto main-screen
if %s% == SPICYPILLOW echo That won't work twice.
if %s% == Josh goto meme-instance
if %s% == josh goto meme-instance
if %s% == PhoneticDragon goto meme-instance
if %s% == Phoneticdragon goto meme-instance
if %s% == phoneticDragon goto meme-instance
if %s% == phoneticdragon goto meme-instance
if %s% == Phonetic goto meme-instance
if %s% == phonetic goto meme-instance
if %s% == Dragon goto meme-instance
if %s% == dragon goto meme-instance
if %s% == PD goto meme-instance
if %s% == Pd goto meme-instance
if %s% == pD goto meme-instance
if %s% == pd goto meme-instance


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
mklink %USERPROFILE%\Desktop\Proxima-TEST "C:\Proxima-TEST\main.py"
echo made shortcut on Desktop
cls
goto exit


:t-uninstall
if exist "c:\Proxima-TEST" (
    rmdir /s /q "c:\Proxima-TEST"
)

if exist "%USERPROFILE%\Desktop\Proxima-TEST.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-TEST.*"
)
cls
goto exit


:archivinst
cls
echo Version Select
echo Select the desired Archival version
echo Allowed Inputs:
echo 1-1

set /p s= Input: 
echo Input is: %s%

if %s% == 1-1 goto 1-1
if %s% == Josh goto meme-instance
if %s% == josh goto meme-instance
if %s% == PhoneticDragon goto meme-instance
if %s% == Phoneticdragon goto meme-instance
if %s% == phoneticDragon goto meme-instance
if %s% == phoneticdragon goto meme-instance
if %s% == Phonetic goto meme-instance
if %s% == phonetic goto meme-instance
if %s% == Dragon goto meme-instance
if %s% == dragon goto meme-instance
if %s% == PD goto meme-instance
if %s% == Pd goto meme-instance
if %s% == pD goto meme-instance
if %s% == pd goto meme-instance


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
mklink %USERPROFILE%\Desktop\Proxima-ARCHIVE-1-1 "C:\Proxima-ARCHIVE\main.py"
echo made shortcut on Desktop
cls
goto exit


:a-1-1-uninstall
if exist "c:\Proxima-ARCHIVE-1-1" (
    rmdir /s /q "c:\Proxima-ARCHIVE-1-1"
)

if exist "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-1.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-1.*"
)
cls
goto exit


:uninstall
if exist "c:\Proxima" (
    rmdir /s /q "c:\Proxima"
)

if exist "%USERPROFILE%\Desktop\Proxima.*" (
    del /q "%USERPROFILE%\Desktop\Proxima.*"
)

if exist "c:\Proxima-TEST" (
    rmdir /s /q "c:\Proxima-TEST"
)

if exist "%USERPROFILE%\Desktop\Proxima-TEST.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-TEST.*"
)

if exist "c:\Proxima-ARCHIVE-1-1" (
    rmdir /s /q "c:\Proxima-ARCHIVE-1-1"
)

if exist "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-1.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-1.*"
)

if exist "c:\Proxima-ARCHIVE-1-2" (
    rmdir /s /q "c:\Proxima-ARCHIVE-1-2"
)

if exist "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-2.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-2.*"
)

if exist "c:\Proxima-ARCHIVE-1-3" (
    rmdir /s /q "c:\Proxima-ARCHIVE-1-3"
)

if exist "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-3.*" (
    del /q "%USERPROFILE%\Desktop\Proxima-ARCHIVE-1-3.*"
)
cls
goto exit


:meme-instance
title Impending Doom...
cls
echo What have you done...
timeout /t 10 /nobreak
goto exit

:exit
cls
