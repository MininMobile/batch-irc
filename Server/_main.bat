@echo off

:wait
if exist update.bat goto update
goto wait

:update
call update.bat
if "%mod%" == "1" echo fries

set message=%from%: %recieved%
echo echo %message% >> log.bat
del update.bat
goto wait