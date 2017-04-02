@echo off
goto loop
:loop
for /F "tokens=*" %%A in (C:\batch\TXT\Extensions.txt) do (IF EXIST "C:\Users\Lucas\Desktop\*.%%A" (move C:\Users\Lucas\Desktop\*.%%A C:\Users\Lucas\Desktop\Outros\%%A))
sleep 30
goto loop