@echo off
call config.bat
cd ../Server

:main
cls
echo Enter Username;
set /p name=

echo %name% has joined the chat! >> log.bat

:message
cls
set /p msg=%name%: 

echo set recieved=%msg% > update.bat
goto message