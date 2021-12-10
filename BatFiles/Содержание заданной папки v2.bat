@echo off
chcp 1251
:start
set/p PathFile=The path to the required folder: 
if not EXIST %PathFile% (
	echo The folder in %PathFile% don't exist on disk
	goto start
) else (
	echo The folder in %PathFile% exists on disk
)
:exten
set/p extancion=Extancion of the file:
if not defined extancion (
	echo Extancion isn't defined. Try it again.
	goto exten
) else ( 
	echo Extancion is defined
)
set tm=(%time:~0,2%.%time:~3,2%)
dir/b/s %PathFile%\"*.%extancion%" >> %PathFile%\%date%_%tm%_variant#4.txt
echo The file is created in %PathFile%
goto start
pause