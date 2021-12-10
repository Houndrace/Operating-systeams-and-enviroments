@echo off
chcp 1251
:nachalo
set/p varPath=Dobavte Znachenie:
if not defined varPath (
echo Voznicla ohibochka. Go zanovo
goto nachalo
)
if not exist %varPath% (
echo Ne vihodit chto to
echo %varPath%
goto nachalo
)
set/p extFile=format faila:
set fullPath= %varPath%\*.%extFile%
set tm=(%time:~0,2%.%time:~3,2%)
set logFileName=%date%_%tm%_var3
dir/B/S %fullPath% >> D:\%logFileName%.txt
echo FIO %date% %time% >> D:\%logFileName%.txt
"C:\Program Files (x86)\Notepad++\notepad++.exe" D:\%logFileName%.txt
goto nachalo
pause