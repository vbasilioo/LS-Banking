<?php

namespace app\controllers;

class weborrow{
    public function index(){
        return [
            'view' => 'weborrow.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('we borrow');
        die();
    }

}