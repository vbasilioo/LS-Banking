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
        $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
        $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_FULL_SPECIAL_CHARS);

        if(empty($email) || empty($password)){
            redirect('/');
            return;
        }

        $user = findBy('users', 'email', $email);

        if(!$user){
            redirect('/');
            return;
        }

        if(!password_verify($password, $user->password)){
            redirect('/');
            return;
        }

        if (!isset($_SESSION)) {
            session_start();
            return;
        }

        if (!isset($_SESSION['id'])) {
            redirect('/');
            return;
        }

        $_SESSION['logged'] = $user;
        redirect('/home');
        return;
    }
}