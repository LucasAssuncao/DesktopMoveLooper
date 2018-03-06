@echo off

for /F "tokens=*" %%A in (%HOMEPATH%\batch\TXT\Extensions.txt) do (
	IF NOT EXIST "%USERPROFILE%\Desktop\Outros\%%A" (
		echo Creating folder %%A
		mkdir "%USERPROFILE%\Desktop\Outros\%%A"
	) ELSE (
		echo Folder %%A already exists.
	)
)

cls

echo Organizing Files... Hold On

goto loop
:loop
for /F "tokens=*" %%A in (%HOMEPATH%\batch\TXT\Extensions.txt) do (IF EXIST "%USERPROFILE%\Desktop\*.%%A" (move %USERPROFILE%\Desktop\*.%%A %USERPROFILE%\Desktop\Outros\%%A))
sleep 30
goto loop
