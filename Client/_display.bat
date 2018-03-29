@echo off
cd ..
cd Server

:update
cls
call log.bat
:wait
if exist update.bat goto update
goto wait