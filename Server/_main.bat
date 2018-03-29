@echo off
call config.bat

:wait
if exist update.bat goto update
goto wait

:update
call update.bat
set message=%from%: %recieved%
echo echo %message% >> log.bat
del update.bat
goto wait