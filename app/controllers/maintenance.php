<?php

namespace app\controllers;

class maintenance{
    public function index(){
        return [
            'view' => 'maintenance.php',
            'data' => ['title' => 'Manutenção - Maze Bank']
       ];
    }
}