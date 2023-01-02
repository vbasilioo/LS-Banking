<?php

namespace app\controllers;

class login{
    public function index(){
        return [
            'view' => 'login.php',
            'data' => ['title' => 'Maze Bank']
       ];
    }

    public function store(){
        $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_SPECIAL_CHARS);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_ENCODED);

        if(empty($username) || empty($password)){
            redirect('/');
            return;
        }

        $user = findBy('users', 'username', $username);

        if(!$user){
            redirect('/');
            return;
        }

        if(!password_verify($password, $user->password)){
            redirect('/');
            return;
        }

        $_SESSION['logged'] = $user;
        redirect('/home');
        return;
    }
}