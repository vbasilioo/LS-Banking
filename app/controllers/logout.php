<?php

namespace app\controllers;

class logout{
    public function index(){
        session_destroy();
        return [
            'view' => 'logout.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}