@echo off
chcp 1251
:M1
set/p PathFile=���� � ����������� �����: 
if NOT DEFINED PathFile (
echo �� ����������
goto M1
) else ( 
echo ����������
)
if not EXIST %PathFile% (
echo ����� �� ������ %PathFile% �� ���������� �� �����
goto M1
) else (
echo ����� �� ������ %PathFile% ���������� �� �����
)
set/p extancion=���������� �����:
set/p nameFile=��� ����� ��� ������:
dir/b/s %PathFile%\"*.%extancion%" >> %PathFile%\%nameFile%.txt
echo ������ %DATE% � %TIME% >> %PathFile%\%nameFile%.txt
goto M1
pause
