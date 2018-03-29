@echo off
call config.bat

:wait
if exist update.bat goto update
goto wait

:update
call update.bat
call config.bat checkName "%from%"
echo fries
if %mod% == 1 echo fries
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