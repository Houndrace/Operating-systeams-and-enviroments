@echo off
chcp 1251
:M1
set/p PathFile=Путь к необходимой папке: 
if NOT DEFINED PathFile (
echo Не определено
goto M1
) else ( 
echo Определено
)
if not EXIST %PathFile% (
echo Папка по адресу %PathFile% не существует на диске
goto M1
) else (
echo Папка по адресу %PathFile% существует на диске
)
set/p extancion=Расширение файла:
set/p nameFile=Имя файла для вывода:
dir/b/s %PathFile%\"*.%extancion%" >> %PathFile%\%nameFile%.txt
echo Создан %DATE% в %TIME% >> %PathFile%\%nameFile%.txt
goto M1
pause
