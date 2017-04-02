@echo off

mkdir %HOMEDRIVE%\batch
mkdir %HOMEDRIVE%\batch\TXT
mkdir %HOMEDRIVE%\batch\sourceCode
mkdir %USERPROFILE%\Desktop\Outros

SET PATH="%PATH%;C:\batch"

copy sleep.exe %HOMEDRIVE%\batch > nul
copy moveLooper.exe %HOMEDRIVE%\batch > nul
copy Extensions.txt %HOMEDRIVE%\batch\TXT > nul
copy moveLooper.bat %HOMEDRIVE%\batch\sourceCode > nul
copy moveLooper.exe "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" > nul

echo.
echo MoveLooper Installed...
echo MoveLooper will start automatically with Windows
echo. 
echo Exiting...
echo.

pause
exit