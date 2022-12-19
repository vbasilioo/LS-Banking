<?php

namespace app\controllers;

class home{
    public function index($users){
        return [
            'view' => 'home.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('home');
        die();
    }

}