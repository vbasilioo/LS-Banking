<?php

namespace app\controllers;

class plunder{
    public function index(){
        return [
            'view' => 'plunder.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}