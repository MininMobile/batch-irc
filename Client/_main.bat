@echo off
start _diplay.bat
call config.bat
cd ..
cd Server

:main
cls
echo Enter Username;
set /p name=

echo set from=%name% > update.bat
echo set recieved=Joined the chat! >> update.bat

:message
cls
set /p msg=%name%: 

echo set from=%name% > update.bat
echo set recieved=%msg% >> update.bat
goto message