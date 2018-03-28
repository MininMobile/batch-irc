@echo off
call config.bat
cd %server%

:main
cls
echo Enter Username;
set /p name=

echo %name% has joined the chat! >> log.bat

:message
cls
call log.bat
set /p msg=%name%: 

echo set recieved=%msg% > update.bat

:wait
if NOT exist update.bat goto wait

goto message