<?php

return [
    'POST' => [
        '/login' => 'login@store'
    ],
    'GET' => [
        '/' => 'home@index',
        '/user/create' => 'user@create',
        '/user/[0-9]+' => 'user@show',
        '/login' => 'login@index',
    ]
];