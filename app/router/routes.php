<?php

return [
    'POST' => [
        '/' => 'login@store',
        '/home' => 'home@store'
    ],
    'GET' => [
        '/' => 'login@index',
        '/home' => 'home@index'
    ]
];