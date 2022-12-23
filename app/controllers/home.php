<?php

namespace app\controllers;

class home{
    public function index($params){
        return [
            'view' => 'home.php',
            'data' => ['title' => 'Home']
       ];
    }
}