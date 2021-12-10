@echo off
chcp 1251
set tm=(%time:~0,2%.%time:~3,2%)
:start
set/p PathFile=The path to the required folder: 
if not EXIST %PathFile% (
	echo The folder in %PathFile% don't exist on disk
	goto start
) else (
	echo The folder in %PathFile% exists on disk
)
set/p extancion=Extancion of the file: 
set/p namearch=Name arch: 
if defined extancion (
	goto exten
) else ( 
	goto kom
)
:exten
	echo Extancion isn't defined. Try it again.
	"C:\Program Files\7-Zip\7z.exe" a D:\backup\%namearch%_%date%_%tm%.7z %PathFile%\*.%extancion%
:kom
	echo Extancion is defined
	"C:\Program Files\7-Zip\7z.exe" a D:\backup\%namearch%_%date%_%tm%.7z %PathFile%
goto start
pause