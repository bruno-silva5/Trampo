<?php
    require("../../../Controller/verifica.php");
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/material.min.css">
    <script src="js/material.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="css/main.css">
    <title>Trampo</title>
</head>

<body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header mdl-layout--fixed-drawer mdl-layout--fixed-tabs">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <span class="mdl-layout-title">Trampo</span>
                <div class="mdl-layout-spacer"></div>
                <div class="material-icons mdl-badge mdl-badge--overlap chat-icon" data-badge="1">chat</div>
            </div>
            <div class="mdl-layout__tab-bar mdl-js-ripple-effect">
                <a href="#fixed-tab-1" class="mdl-layout__tab is-active"><span>Contratar</span></a>
                <a href="#fixed-tab-2" class="mdl-layout__tab">Andamento</a>
                <a href="#fixed-tab-3" class="mdl-layout__tab">Feitos</a>
            </div>
        </header>

        <div class="mdl-layout__drawer">
            <div class="profile">
                <img src="https://s3.amazonaws.com/tinycards/image/c5b605125dd3a4685555bf56c37555ed" alt="profile photo">
                <h5>Alex Oliveira</h5>

            </div>
            <nav class="mdl-navigation">
                <a class="mdl-navigation__link active-menu-link" href="#" id="services-btn">Profissionais</a>
                <a class="mdl-navigation__link" href="#" id="myAccount-btn">Minha conta</a>
                <a class="mdl-navigation__link" href="#" id="config-btn">Configurações</a>
                <a class="mdl-navigation__link" href="#" id="help-btn">Ajuda</a>
                <a class="mdl-navigation__link" href="#" id="logout-btn">Sair</a>
            </nav>
            <div class="footer-terms">
                <a href="#">Termos de uso</a>
                <a href="#">Política de privacidade</a>
            </div>
        </div>

        <main class="mdl-layout__content">
            <div class="section-page section-page-services ">
                <section class="mdl-layout__tab-panel is-active" id="fixed-tab-1">
                    <div class="page-content">
                        <div class="services-list">
                            <a href="#">
                                <img src="img/thumbs/confeiteira.jpg" alt="">
                                <h3>Confeitaria</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/mecanico.jpg" alt="">
                                <h3>Mecânica</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/professor.jpg" alt="">
                                <h3>Aulas</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/encanador.jpg" alt="">
                                <h3>Encanamento</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/eletricista.jpg" alt="">
                                <h3>Eletricista</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/informatica.jpg" alt="">
                                <h3>Informática</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/costureira.jpg" alt="">
                                <h3>Costura</h3>
                            </a>
                            <a href="#">
                                <img src="img/thumbs/pintor.jpg" alt="">
                                <h3>Pintura</h3>
                            </a>

                        </div>

                    </div>
                </section>
                <section class="mdl-layout__tab-panel" id="fixed-tab-2">
                    <div class="page-content">
                        Seus serviços em andamento
                    </div>
                </section>
                <section class="mdl-layout__tab-panel" id="fixed-tab-3">
                    <div class="page-content">
                        Serviços realizados
                    </div>
                </section>
            </div>
            <section class="section-page section-page-myAccount">
                <h3>Alterar minha conta</h3>
                <form action="" class="mdl-grid">
                    <div class="mdl-cell mdl-cell--12-col">
                        <h5>Informações pessoais</h5>
                    </div>
                    <div class="mdl-cell mdl-cell--6-col mdl-cell--12-col-tablet ">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="text" id="input-name">
                            <label class="mdl-textfield__label" for="input-name">Nome</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--6-col mdl-cell--12-col-tablet ">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="email" id="input-email">
                            <label class="mdl-textfield__label" for="input-email">E-mail</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--3-col">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="max-width: 150px">
                            <input class="mdl-textfield__input" type="text" id="input-cpf">
                            <label class="mdl-textfield__label" for="input-cpf">CPF</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--4-col" style="min-width: 268px">
                        <label>Sexo: &ensp; </label>
                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="radio-male">
                                    <input type="radio" id="radio-male" class="mdl-radio__button" name="gender" value="M" checked>
                                    <span class="mdl-radio__label">Masculino &ensp;</span>
                                </label>
                        <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="radio-female">
                                    <input type="radio" id="radio-female" class="mdl-radio__button" name="gender" value="F">
                                    <span class="mdl-radio__label">Feminino</span>
                                </label>
                    </div>
                    <div class="mdl-cell mdl-cell--5-col">
                        <label>Data de nascimento:&ensp;</label>
                        <input type="date">
                    </div>
                    <div class="mdl-cell mdl-cell--12-col">
                        <h5>Endereço</h5>
                    </div>
                    <div class="mdl-cell mdl-cell--3-col">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="max-width: 110px">
                            <input class="mdl-textfield__input" type="text" id="input-cep">
                            <label class="mdl-textfield__label" for="input-cep">CEP</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--4-col">
                        <label>Estado &ensp;</label>
                        <select>
                                        <option value="">Option 1</option>
                                        <option value="">Option 1</option>
                                        <option value="">Option 1</option>
                                        <option value="">Option 1</option>
                                        <option value="">Option 1</option>
                                        <option value="">Option 1</option>
                                        <option value="">Rio grande do sul</option>
                                    </select>
                    </div>
                    <div class="mdl-cell mdl-cell--4-col">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                            <input class="mdl-textfield__input" type="email" id="input-street">
                            <label class="mdl-textfield__label" for="input-street">Rua</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--2-col">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="width: 90px">
                            <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="input-number">
                            <label class="mdl-textfield__label" for="input-number">Número</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--4-col ">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="max-width: 230px">
                            <input class="mdl-textfield__input" type="text" id="input-neighborhood">
                            <label class="mdl-textfield__label" for="input-neighborhood">Bairro</label>
                        </div>
                    </div>

                    <div class="mdl-cell mdl-cell--4-col ">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label ">
                            <input class="mdl-textfield__input" type="text" id="input-addOnAdress">
                            <label class="mdl-textfield__label" for="input-addOnAdress">Complemento</label>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--12-col">
                        <h5>Trocar de senha</h5>
                    </div>
                    <div class="mdl-cell">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="max-width: 230px">
                            <input class="mdl-textfield__input" type="password" id="input-currentlyPassword" minlength="8">
                            <label class="mdl-textfield__label" for="input-currentlyPassword">Senha atual</label>
                        </div>
                    </div>
                    <div class="mdl-cell">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="max-width: 230px">
                            <input class="mdl-textfield__input" type="password" id="input-newPassword" minlength="8">
                            <label class="mdl-textfield__label" for="input-newPassword">Nova senha</label>
                        </div>
                    </div>
                    <div class="mdl-cell">
                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" id="txt_confirm_password" style="max-width: 230px">
                            <input class="mdl-textfield__input" type="password" id="input-confirmPassword" minlength="8">
                            <label class="mdl-textfield__label" for="input-confirmPassword">Confirmar senha</label>
                        </div>
                    </div>
                    <button type="button" class="mdl-button mdl-js-button mdl-js-ripple-effect btn-modal-account">Excluir conta</button>
                    <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">Salvar alterações</button>

                </form>
            </section>
            <section class="section-page section-page-configuration ">
                <h3>Configurações</h3>
            </section>
            <section class="section-page section-page-help ">
                <h3>Ajuda</h3>
            </section>
            <section class="section-page section-page-logout ">
                <h3>Logout-Modal</h3>
            </section>
        </main>
    </div>

    <!-- modal -->
    <div class="modal modal-style">
        <!-- Modal content -->
        <div class="modal-content">
            <button class="mdl-button mdl-js-button mdl-button--icon close-modal-style close-modal" >
                <i>&times;</i>
            </button>
            <h3>Deseja sair?</h3>
            <div class="buttons-wrapper">
                <a href="../../../Controller/logout.php"><button class="mdl-button mdl-js-button mdl-js-ripple-effect">Sim</button></a>
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" onclick="toggleModal()">Não</button>
            </div>
        </div>
    </div>

    <!-- modal -->
    <div class="modal-style modal-account">
        <!-- Modal content -->
        <div class="modal-content">
            <button class="mdl-button mdl-js-button mdl-button--icon close-modal-style close-modalAccount">
                <i>&times;</i>
            </button>
            <h3>Tem certeza?</h3>
            <div class="buttons-wrapper">
                <button class="mdl-button mdl-js-button mdl-js-ripple-effect">Sim</button>
                <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent" onclick="toggleModalAccount()">Não</button>
            </div>
        </div>
    </div>

    <script src="js/main.js "></script>
</body>

</html>