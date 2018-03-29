@echo off
call config.bat
cd %server%

:update
cls
call log.bat
:wait
if exist update.bat goto update
goto wait