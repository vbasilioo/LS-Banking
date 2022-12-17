<?php

namespace app\controllers;

class user{
    
    public function show($params){

        if(!isset($params['user'])){
            redirect('/');
            return;
        }

        $user = findBy('users', 'id', $params['user']);
        var_dump($user);
    }

}