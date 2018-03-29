@echo off
call config.bat

:wait
if exist update.bat goto update
goto wait

:update
call update.bat
call:checkName "%from%"
if %mod% == 1 goto modUpdate
goto message

:modUpdate
if "%message%" == "clear" (
	echo echo A moderator cleared the chat! > log.bat
	del update.bat
	goto wait
)
goto message

:message
set message=%from%: %recieved%
echo echo %message% >> log.bat
del update.bat
goto wait