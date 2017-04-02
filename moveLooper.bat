@echo off
goto loop
:loop
for /F "tokens=*" %%A in (%HOMEPATH%\batch\TXT\Extensions.txt) do (IF EXIST "%USERPROFILE%\Desktop\*.%%A" (move %USERPROFILE%\Desktop\*.%%A %USERPROFILE%\Desktop\Outros\%%A))
sleep 30
goto loop
