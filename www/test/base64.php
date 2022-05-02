<?php

$enc = base64_encode("hello");
echo $enc . PHP_EOL;

echo base64_decode($enc) . PHP_EOL;

//EOF