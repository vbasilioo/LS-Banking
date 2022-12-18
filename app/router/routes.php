<?php

return [
    'POST' => [
        '/' => 'login@index',
        '/home' => 'home@index'
    ],
    'GET' => [
        '/' => 'login@index',
        '/user/create' => 'user@create',
        '/user/[0-9]+' => 'user@show',
        '/home' => 'home@index',
    ]
];