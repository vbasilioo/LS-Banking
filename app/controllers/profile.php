<?php

namespace app\controllers;

class profile{
    public function index(){
        return [
            'view' => 'profile.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}