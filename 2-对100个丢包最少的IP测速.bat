@echo off
setlocal enabledelayedexpansion
RD /S /Q temp
mkdir temp
cls
set sleep=500
set maxtime=10
set /p sleep=���̼����Ĭ�ϣ�%sleep%���롿:
set /p maxtime=������ִ��ʱ�䡾Ĭ�ϣ�%maxtime%����:
echo WScript.sleep !sleep! > sleep.vbs
for /f "tokens=1,2" %%a in ('type "100���������ٵ�IP.txt"') do (
sleep.vbs
start /b curl --resolve speed.cloudflare.com:443:%%a https://speed.cloudflare.com/__down?bytes=1000000000 -o temp/%%a -s --connect-timeout 2 --max-time !maxtime!
echo  ���ڲ��� %%a
)
del sleep.vbs