<?php
    require("../../../../Controller/verifica.php");
    include_once '../../../../Dao/conexao.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../../_sass/materialize.css">
    <title>trampo</title>
</head>

<body>
    <?php 
        $consulta = "SELECT * FROM user WHERE email = '".$_SESSION['email']."'";
        $res = mysqli_query($conn,$consulta);
        $row = mysqli_fetch_assoc($res);
    ?>

    <header>
        <nav class="nav-extended">
            <div class="nav-wrapper">
                <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                <a href="#!" class="brand-logo center">Contratar</a>
                <ul class="right">
                    <li><a href="#modalChat" class="waves-effect waves-light modal-trigger"><i
                                class="material-icons">chat</i></a></li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- padding top due the fixed navbar -->
    <main style="padding-top: 4em;">
        <ul id="slide-out" class="sidenav sidenav-fixed">
            <h5 class="center-align blue-text ">trampo</h5>
            <li>
                <div class="user-view">
                    <a href="#user"><img class="circle z-depth-1" src="../../_img/user.svg"
                            alt="user profile picture"></a>
                    <div class="user-info">
                        <a href="#name"><span class="black-text name"><?php echo $row['full_name'] ?></span></a>
                        <a href="#email"><span class="black-text email"><?php echo $row['email'] ?></span></a>
                    </div>
                </div>
            </li>
            <li id="li-progress"><a href="../../" class="waves-effect"><i class="material-icons">cached</i>Em
                    progresso</a></li>
            <li id="li-hire" class="active"><a href="../" class="waves-effect"><i
                        class="material-icons">assignment_ind</i>Contratar</a></li>
            <li id="li-work"><a href="../../work" class="waves-effect"><i class="material-icons">build</i>Trabalhar</a>
            </li>
            <li>
            <li>
                <div class="divider"></div>
            </li>
            <li><a class="subheader">Configurações</a></li>
            <li id="li-myAccount"><a href="../../myAccount" class="waves-effect">Minha conta</a></li>
            <li id="li-preferences"><a href="#!" class="waves-effect">Preferências</a>
            </li>
            <li>
                <div class="divider"></div>
            </li>
            <li><a href="#modalLeave" class="waves-effect modal-trigger"><i
                        class="material-icons">power_settings_new</i>Sair</a></li>
        </ul>

        <!-- Section HIRE and yours tabs -->

        <section class="section-hire">
            <div class="container">

                <form action="#" class="row z-depth-1 form-hire">
                    <a href="../" class="btn circle waves-effect waves-light hide-on-small-only"><i
                            class="material-icons">arrow_back</i></a>
                    <a href="../" class="btn-floating circle waves-effect waves-light hide-on-med-and-up"><i
                            class="material-icons">arrow_back</i></a>
                    <div class="col s12">
                        <h5 class="center-align">Descrever serviço</h5>
                    </div>
                    <div class="input-field col s12">
                        <input type="text" id="service-type"
                            value="<?php echo(isset($_GET['service_type'])?$_GET['service_type']:'') ?>">
                        <label for="service-type">Profissional</label>
                    </div>
                    <div class="input-field col s12">
                        <select name="service-time">
                            <option value="now">O quanto antes</option>
                            <option value="next_week">A próxima semana</option>
                            <option value="two_weeks">Duas semanas</option>
                            <option value="no_forecast">Sem previsão</option>
                        </select>
                        <label>Para quando é o serviço?</label>
                    </div>
                    <div class="input-field col s12">
                        <input type="text" id="service-title">
                        <label for="service-title">Título do serviço</label>
                    </div>
                    <div class="input-field col s12">
                        <textarea id="service-description" class="materialize-textarea" data-length="500"
                            maxlength="500"></textarea>
                        <label for="service-description">Digite uma descrição do serviço</label>
                    </div>
                    <div class="input-field col s12">
                        <p>
                            <label>
                                <input type="checkbox" />
                                <span class="black-text">Permitir que meu pedido seja visto por prestadores (Poderei receber até 3 mensagens)</span>
                            </label>
                        </p>
                    </div>
                    <div class="input-field col s12 right-align">
                        <a href="../workers" class="btn waves-effect waves-light">Ver prestadores</a>
                    </div>
                </form>

            </div>
        </section>




    </main>
    <!-- Modal leave -->
    <div id="modalLeave" class="modal">
        <div class="modal-content">
            <h4 class="center-align">Deseja sair?</h4>
        </div>
        <div class="modal-footer">
            <a href="../../Controller/logout.php" class="modal-close waves-effect btn-flat">Sim</a>
            <button class="modal-close waves-effect waves-light btn">Não</button>
        </div>
    </div>

    <!-- Modal chat -->
    <div class="modal" id="modalChat">
        <div class="modal-content">
            <div class="conversations">
                <div class="boxConversation">
                    <img src="../../_img/user.svg" alt="" width="70" class="circle">
                    <div>
                        <h6>Fulano de tal</h6>
                        <p>Lorem ipsum dolor sit amet </p>
                    </div>
                </div>

                <div class="boxConversation">
                    <img src="../../_img/user.svg" alt="" width="70" class="circle">
                    <div>
                        <h6>Fulano de tal</h6>
                        <p>Lorem ipsum dolor sit amet </p>
                    </div>
                </div>

                <div class="boxConversation">
                    <img src="../../_img/user.svg" alt="" width="70" class="circle">
                    <div>
                        <h6>Fulano de tal</h6>
                        <p>Lorem ipsum dolor sit amet </p>
                    </div>
                </div>
            </div>
            <div class="conversation">
                <div class="header">
                    <h4>Fulano de tal - servio de tal coisa</h4>
                </div>
                <div class="conversation-content">

                </div>
                <div class="send-message">

                </div>
            </div>
        </div>
    </div>


    <script src="../../_js/jquery/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="../../_js/bin/materialize.min.js"></script>
    <script type="text/javascript" src="../../_js/bin/main.js"></script>
</body>

</html>