<?php

namespace app\controllers;

class withdrawals{
    public function index(){
        return [
            'view' => 'withdrawals.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('withdrawals');
        die();
    }

}