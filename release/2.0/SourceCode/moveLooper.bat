@echo off

for /F "tokens=*" %%A in (C:\batch\TXT\Extensions.txt) do (
	IF NOT EXIST "%USERPROFILE%\Desktop\Outros\%%A" (
		echo Criando a pasta %%A
		mkdir "%USERPROFILE%\Desktop\Outros\%%A"
	) ELSE (
		echo Pasta %%A criada.
	)
)

cls

goto loop
:loop
for /F "tokens=*" %%A in (%HOMEPATH%\batch\TXT\Extensions.txt) do (IF EXIST "%USERPROFILE%\Desktop\*.%%A" (move %USERPROFILE%\Desktop\*.%%A %USERPROFILE%\Desktop\Outros\%%A))
sleep 30
goto loop
