<?php

namespace app\controllers;

class home{
    public function index(){
        return [
            'view' => 'home.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}