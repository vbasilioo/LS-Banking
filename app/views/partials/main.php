
<?php

    $id_logado = $_SESSION['logged'];
    read('players', 'user_id, money, bank, savings');
    whereIn('user_id',["{$id_logado->ID}"]);
    $users = execute();

?>

<section id="content">
    <main>
        <div class="head-title">
            <div class="left">
                <h1>Dashboard</h1>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">Maze Bank</a>
                    </li>
                    <li>
                        <i class='bx bx-chevron-right'></i>
                    </li>
                    <li>
                        <a href="#" class="active">Início</a>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="box-info">
            <li>
                <i class='bx bxs-dollar-circle' ></i>
                <span class="text">
                    <h3>Dinheiro</h3>
                    <p><?php
                        foreach($users as $user){
                            echo 'U$ ' . $user->money;
                        }
                    ?></p>
                </span>
            </li>
            <li>
                <i class='bx bxs-bank'></i>
                <span class="text">
                    <h3>Banco</h3>
                    <p><?php
                        foreach($users as $user){
                            echo 'U$ ' . $user->bank;
                        }
                    ?></p>
                </span>
            </li>
            <li>
                <i class='bx bxs-wallet' ></i>
                <span class="text">
                    <h3>Poupança</h3>
                    <p><?php
                        foreach($users as $user){
                            echo 'U$ ' . $user->savings;
                        }
                    ?></p>
                </span>
            </li>
        </ul>
    </main>
</section>