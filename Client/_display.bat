@echo off
call config.bat
cd %server%

:update
call log.bat
:wait
if exist update.bat goto update
goto wait