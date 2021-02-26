<?php

//environnement production
$GLOBALS["envProd"] = false;

//database connection
$GLOBALS["db"] = [
    "host"      => 'localhost',
    "user"      => 'root',
    "password"  => '',
    "database"  => 'dailymotion'
];

//environnement production
$GLOBALS["api_mail_url"] = 'http://localhost/api_mail_server/sendmail';
