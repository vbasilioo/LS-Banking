<?php

namespace app\controllers;

class home{
    public function index($params){
        $users = all('users');
        return [
            'view' => 'home.php',
            'data' => ['title' => 'Maze Bank', 'users' => $users]
       ];
    }
}