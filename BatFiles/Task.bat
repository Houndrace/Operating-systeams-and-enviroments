@echo off
chcp 1251
tasklist
:beginning
set/p Process=Процесс, который необходимо завершить: 
if not defined Process (
	echo Введите процесс.
	goto beginning
) else ( 
	echo Процесс определен.
)
taskkill /f /im %Process% 
goto beginning
pause