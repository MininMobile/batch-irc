goto exit

:checkName 
set /a mod=0
if %~1 == Minin (set /a mod=1)
goto exit

:exit