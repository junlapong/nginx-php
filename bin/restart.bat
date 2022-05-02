@ECHO OFF

SET APP_PATH=C:\Dev\nginx-php

call %APP_PATH%\bin\stop.bat
call %APP_PATH%\bin\start.bat

EXIT /b
