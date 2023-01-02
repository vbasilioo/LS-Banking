<?php

function controller($matchedUri, $params){
    [$controller, $method] = explode('@', array_values($matchedUri)[0]);
    $controllerNamespace = CONTROLLER_PATH . $controller;
    
    if(!class_exists($controllerNamespace)){
        throw new Exception("Controller {$controller} não existe.");
    }

    $controllerInstance = new $controllerNamespace;

    if(!method_exists($controllerInstance, $method)){
        throw new Exception("O método {$method} do controller {$controller} não existe.");
    }

    return $controllerInstance->$method($params);
}