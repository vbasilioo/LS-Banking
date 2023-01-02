<?php

return [
    'POST' => [
        '/' => 'login@store',
        '/home' => 'home@store',
        '/deposits' => 'deposits@store',
        '/plunder' => 'plunder@store',
        '/transfers' => 'transfers@store',
        '/extracts' => 'extracts@store',
        '/profile' => 'profile@index',
        '/logout' => 'logout@store'
    ],
    'GET' => [
        '/' => 'login@index',
        '/home' => 'home@index',
        '/plunder' => 'plunder@index',
        '/deposits' => 'deposits@index',
        '/transfers' => 'transfers@index',
        '/extracts' => 'extracts@index',
        '/profile' => 'profile@index',
        '/logout' => 'logout@index'
    ]
];