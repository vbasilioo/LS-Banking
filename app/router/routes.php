<?php

return [
    'POST' => [
        '/' => 'login@store',
        '/home' => 'home@store',
        '/deposits' => 'deposits@store',
        '/extracts' => 'extracts@store',
        '/transfers' => 'transfers@store',
        '/weborrow' => 'weborrow@store',
        '/withdrawals' => 'withdrawals@store'
    ],
    'GET' => [
        '/' => 'login@index',
        '/home' => 'home@index',
        '/deposits' => 'deposits@index',
        '/extracts' => 'extracts@index',
        '/transfers' => 'transfers@index',
        '/weborrow' => 'weborrow@index',
        '/withdrawals' => 'withdrawals@index'
    ]
];