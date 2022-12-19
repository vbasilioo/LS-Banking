<?php

namespace app\controllers;

class extracts{
    public function index(){
        return [
            'view' => 'extracts.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        var_dump('extracts');
        die();
    }

}