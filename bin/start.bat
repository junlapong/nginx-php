@ECHO OFF

SET APP_PATH=C:\Dev\nginx-php

ECHO Starting PHP FastCGI...
%APP_PATH%\bin\RunHiddenConsole.exe %APP_PATH%\php\php-cgi.exe -b 127.0.0.1:9000

pushd

ECHO Starting NGINX
cd %APP_PATH%\nginx
start %APP_PATH%\nginx\nginx.exe

cd %APP_PATH%
popd
EXIT /b
