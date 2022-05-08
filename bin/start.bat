@ECHO OFF

SET APP_PATH=C:\Dev\nginx-php
set PHP_PATH=%APP_PATH%\php\php-7.1.16

ECHO Starting PHP FastCGI...
%APP_PATH%\bin\RunHiddenConsole.exe %PHP_PATH%\php-cgi.exe -b 127.0.0.1:9000

pushd

ECHO Starting NGINX
cd %APP_PATH%\nginx
start %APP_PATH%\nginx\nginx.exe

cd %APP_PATH%
popd

EXIT /b
