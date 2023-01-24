<?php

namespace app\controllers;

class extracts{
    public function index(){
        return [
            'view' => 'extracts.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}