# nginx-php

- https://www.nginx.com/resources/wiki/start/topics/examples/phpfastcgionwindows/
- https://dev.to/ilhamsabir/windows-10-nginx-php-2oef

## Download

- http://nginx.org/download/nginx-1.20.2.zip
- https://windows.php.net/downloads/releases/archives/php-7.1.16-Win32-VC14-x64.zip
- https://xdebug.org/wizard

## PHP

extract php to `/c/Dev/nginx-php/php/php-7.1.16`

setup PATH

```
### PHP ###
export PHP_HOME=/c/Dev/nginx-php/php/php-7.1.16
export PATH=$PHP_HOME:$PATH
```

check php version

```
php -v

PHP 7.1.16 (cli) (built: Mar 28 2018 21:15:31) ( ZTS MSVC14 (Visual C++ 2015) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies
```

locate to `$PHP_HOME`

copy file `php.ini-development` to `php.ini`

```
cd $PHP_HOME
cp php.ini-development php.ini
```

edit file `php.ini`

```
extension_dir = "ext"

;;;;;;;;;;;;;;;;;;;;;;
; Dynamic Extensions ;
;;;;;;;;;;;;;;;;;;;;;;

extension=php_curl.dll
extension=php_gd2.dll
extension=php_mbstring.dll
extension=php_exif.dll      ; Must be after mbstring as it depends on it
extension=php_mysqli.dll
extension=php_pdo_mysql.dll
extension=php_pdo_sqlite.dll
extension=php_sqlite3.dll

[Date]
date.timezone = "Asia/Bangkok"
```

## XDebug

open https://xdebug.org/wizard and follow Installation Wizard

add configuration below at the end of file `php.ini`

```
[xdebug]
zend_extension = php_xdebug
xdebug.remote_enable=1
xdebug.remote_host=127.0.0.1
xdebug.remote_port="9000"  ; <the port (9000 by default) to which Xdebug connects>
```

check `xdebug` enabled

```
php -v

PHP 7.1.16 (cli) (built: Mar 28 2018 21:15:31) ( ZTS MSVC14 (Visual C++ 2015) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.1.0, Copyright (c) 1998-2018 Zend Technologies
    with Xdebug v2.9.8, Copyright (c) 2002-2020, by Derick Rethans

```
