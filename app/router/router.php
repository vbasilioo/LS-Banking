<?php

/* Trabalhando com rotas exatas */

function matchUri($uri, $routes){
    return (array_key_exists($uri, $routes)) ? [$uri => $routes[$uri]] : [];
}

/* Fim das rotas exatas */

/* Trabalhando com rotas dinâmicas */

function regularRoutes($uri, $routes){
    if(empty($matchedUri)){
        return array_filter(
            $routes,
            function($value) use ($uri){
                $regex = str_replace('/','\/', ltrim($value, '/'));
                return preg_match("/^$regex$/", ltrim($uri, '/'));
            },
            ARRAY_FILTER_USE_KEY
        );
    }
}

/* Fim das rotas dinâmicas */

function params($uri, $matchedUri){
    if(!empty($matchedUri)){
        $matchedToGetParams = array_keys($matchedUri)[0];
        return array_diff(
            $uri,
            explode('/', ltrim($matchedToGetParams, '/'))
        );
    }
    return [];
}

function paramsFormat($uri, $params){
    $paramsData = [];
    foreach($params as $index => $param){
        $paramsData = [$uri[$index-1]] = $param;
    }

    return $paramsData;
}

/* Requisitando e verificando as rotas */
function router(){
    $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
    $routes = require 'routes.php';
    $requestMethod = $_SERVER['REQUEST_METHOD'];
    $matchedUri = matchUri($uri, $routes[$requestMethod]);

    $params = [];
    
    if(empty($matchedUri)){
        $matchedUri = regularRoutes($uri, $routes[$requestMethod]);
        $uri = explode('/', ltrim($uri, '/'));
        $params = params($uri, $matchedUri);
        $params = paramsFormat($uri, $params);
    }

    if(!empty($matchedUri)){
        return controller($matchedUri, $params);
    }

    throw new Exception('Algo deu errado.');
}