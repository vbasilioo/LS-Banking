<?php

namespace app\controllers;

class transfers{
    public function index(){
        return [
            'view' => 'transfers.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }
}