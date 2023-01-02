<?php

namespace app\controllers;

class validate{
    public function validate(){
        $users = $_SESSION['logged'];
        read('users', 'ID, username');
        whereIn('ID', ["{$users->ID}"]);
        $data = execute();

        if(!isset($data->ID) || !isset($data->username)){
            redirect('/');
            exit;
        }else{
            redirect('/home');
        }

        return;
    }
}