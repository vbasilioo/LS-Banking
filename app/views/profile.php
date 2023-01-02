<div id="dashboard"><?php require 'partials/dashboard.php'; ?></div>

<div id="dashboard"><?php require 'partials/dashboard.php'; ?></div>

<section id="content">
    <main id="main">
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
                        <a href="#" class="active">Perfil</a>
                    </li>
                </ul>
            </div>
        </div>
        <ul class="box-info">
            <li>
                <span class="text">
                <p><b>Olá</b>, <?php
                    $id_logado = $_SESSION['logged'];
                    read('players', 'name, user_id, dateofbirth, background, phone_number');
                    whereIn('user_id',["{$id_logado->ID}"]);
                    $users = execute();

                    foreach($users as $user){
                        echo $user->name . '. <br /><br />';
                        echo "<b>INFORMAÇÕES PESSOAIS: </b><br /><br />";
                        echo "ANIVERSÁRIO: " . $user->dateofbirth . '<br />';
                        echo "CIDADE: " . $user->background . '<br />';
                        echo "TELEFONE: " . $user->phone_number . '<br />';
                    }
                ?></p>
                </span>
            </li>
        </ul>
    </main>
</section>