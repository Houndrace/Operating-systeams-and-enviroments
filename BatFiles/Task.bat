@echo off
chcp 1251
tasklist
:beginning
set/p Process=�������, ������� ���������� ���������: 
if not defined Process (
	echo ������� �������.
	goto beginning
) else ( 
	echo ������� ���������.
)
taskkill /f /im %Process% 
goto beginning
pause