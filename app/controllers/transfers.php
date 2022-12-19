<?php

namespace app\controllers;

class transfers{
    public function index(){
        return [
            'view' => 'transfers.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('transfers');
        die();
    }

}