<?php

return [
    'username' => 'phpmyadmin',
    'password' => 'Pole1417@',
    'dbname' => 'sudokita',
    'host' => 'mysql:host=127.0.0.1:3306',
    'options' => [
            \PDO::ATTR_ERRMODE => \PDO::ERRMODE_EXCEPTION
        ]
];
