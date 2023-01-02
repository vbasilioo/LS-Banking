<?php

$query = [];

function read(string $table, string $fields = '*'){
    global $query;
    $query['read'] = true;
    $query['execute'] = [];
    $query['sql'] = "SELECT {$fields} FROM {$table}";
}

function limit(string|int $limit){
    global $query;
    $query['limit'] = true;

    if(isset($query['paginate'])){
        throw new Exception('O LIMIT não pode ser chamado com a PAGINAÇÃO.');
    }

    $query['sql'] = "{$query['sql']} LIMIT {$limit}";
}

function order(string $by, string $order = 'ASC'){
    global $query;

    if(isset($query['limit'])){
        throw new Exception('O ORDER não pode vir depois do LIMIT.');
    }

    if(isset($query['paginate'])){
        throw new Exception('O ORDER não pode vir depois da PAGINAÇÃO.');
    }

    $query['sql'] = "{$query['sql']} ORDER BY {$by} {$order}";
}

function paginate(string|int $perPage = 10){
    global $query;

    if(isset($query['limit'])){
        throw new Exception('A PAGINAÇÃO não pode ser chamado com o LIMIT.');
    }

    $query['paginate'] = true;
}

function where(){
    global $query;
    $args = func_get_args();
    $numArgs = func_num_args();

    if(!isset($query['read'])){
        throw new Exception('Antes de chamar o WHERE, chame o READ.');
    }

    if($numArgs < 2 || $numArgs > 3){
        throw new Exception('O WHERE precisa de 2 ou 3 parâmetros.');
    }

    if($numArgs === 2){
        $field = $args[0];
        $operator = '=';
        $value = $args[1];
    }

    if($numArgs === 3){
        $field = $args[0];
        $operator = $args[1];
        $value = $args[2];
    }

    $query['where'] = true;
    $query['execute'] = 
    array_merge($query['execute'],
    [
        $field => $value
    ]);
    $query['sql'] = "{$query['sql']} WHERE {$field} {$operator} :{$field}";
}

/*function where(string $field, string $operator, string|int $value){
    global $query;

    if(!isset($query['read'])){
        throw new Exception('Antes de chamar o WHERE, chame o READ.');
    }

    if(func_num_args() != 3){
        throw new Exception('O WHERE precisa de exatamente 3 parâmetros.');
    }

    $query['where'] = true;
    $query['execute'] = 
    array_merge($query['execute'],
    [
        $field => $value
    ]);
    $query['sql'] = "{$query['sql']} WHERE {$field} {$operator} :{$field}";
}*/

function orWhere(string $field, string $operator, string|int $value, string $typeWhere = 'OR'){
    global $query;

    if(!isset($query['read'])){
        throw new Exception('Antes de chamar o WHERE, chame o READ.');
    }

    if(!isset($query['where'])){
        throw new Exception('Antes de chamar o OR-WHERE, chame o WHERE.');
    }

    if(func_num_args() < 3 or func_num_args() > 3){
        throw new Exception('O WHERE precisa de exatamente 3 ou 4 parâmetros.');
    }

    $query['where'] = true;
    $query['execute'] = 
    array_merge($query['execute'],
    [
        $field => $value
    ]);
    $query['sql'] = "{$query['sql']} {$typeWhere} {$field} {$operator} :{$field}";
}

function whereParameters(array $args):array{
    $operators = ['=', '<', '>', '===', '<=', '=>'];
    $field = $args[0];
    $operator = in_array($args[1], $operators) ? $args[1] : '=';
    $value = in_array($args[1], $operators) ? $args[2] : $args[1];
    $typeWhere = $args[2] === 'and' ? 'and' : 'or';

    return [$field, $operator, $value, $typeWhere];
}

function whereIn(string $field, array $data){
    global $query;

    if(isset($query['where'])){
        throw new Exception('Não pode ter chamado a função WHERE e depois o WHERE IN.');
    }

    $query['where'] = true;
    $query['sql'] = "{$query['sql']} WHERE {$field} IN (".'\''.implode('\',\'', $data).'\''.')';
}

function execute(bool $isFetchAll = true, bool $rowCount = false){
    global $query;

    try{
        $connect = connect();

        if(!isset($query['sql'])){
            throw new Exception('Precisa ter o SQL para executar a QUERY.');
        }

        $prepare = $connect->prepare($query['sql']);
        $prepare->execute($query['execute'] ?? []);
        
        if($rowCount){
            return $prepare->rowCount();
        }

        if($isFetchAll){
            return $prepare->fetchAll();
        }
        
        return $prepare->fetch();
    }catch(Exception $e){
        $message = "ERRO no arquivo {$e->getFile()} na linha {$e->getLine()} com a mensagem: {$e->getMessage()}";
        $message .= $query['sql'];
        ddd($message);
    }

}

function all($table, $fields = '*'){
    try{
        $connect = connect();
        $query = $connect->query("SELECT {$fields} FROM {$table}");
        return $query->fetchAll();
    }catch(PDOException $e){
        var_dump($e->getMessage());
    }
}

function findBy($table, $field, $value, $fields = '*'){
    try{
        $connect = connect();
        $prepare = $connect->prepare("SELECT {$fields} FROM {$table} WHERE {$field} = :{$field}");
        $prepare->execute([
            $field => $value
        ]);
        return $prepare->fetch();
    }catch(PDOException $e){
        var_dump($e->getMessage());
    }
}