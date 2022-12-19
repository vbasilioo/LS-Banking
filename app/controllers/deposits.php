<?php

namespace app\controllers;

class deposits{
    public function index(){
        return [
            'view' => 'deposits.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('deposits');
        die();
    }

}