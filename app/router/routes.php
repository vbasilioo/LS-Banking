<?php

return [
    'POST' => [
        '/login' => 'login@store'
    ],
    'GET' => [
        '/' => 'login@index',
        '/user/create' => 'user@create',
        '/user/[0-9]+' => 'user@show',
        '/home' => 'home@index',
    ]
];