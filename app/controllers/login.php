<?php

namespace app\controllers;

class login{
    public function index(){
        return [
            'view' => 'login.php',
            'data' => ['title' => 'Login']
       ];
    }

    public function store(){
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);

        if(empty($email) || empty($password)){
            redirect('/login');
            return;
        }

        $user = findBy('users', 'email', $email);

        if(!$user){
            redirect('/login');
            return;
        }

        if(!password_verify($password, $user->password)){
            redirect('/login');
            return;
        }

        $_SESSION['logged'] = $user;
        redirect('/');
        return;
    }
}