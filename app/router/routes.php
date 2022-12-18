<?php

return [
    'POST' => [
        '/home' => 'home@store'
    ],
    'GET' => [
        '/' => 'login@index',
        '/user/create' => 'user@create',
        '/user/[0-9]+' => 'user@show',
        '/home' => 'home@index',
    ]
];