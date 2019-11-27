-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 26-Nov-2019 às 20:13
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `trampo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversation`
--

CREATE TABLE `conversation` (
  `id` int(11) NOT NULL,
  `id_user_1` int(11) NOT NULL,
  `id_user_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `conversation`
--

INSERT INTO `conversation` (`id`, `id_user_1`, `id_user_2`) VALUES
(44, 73, 74);

-- --------------------------------------------------------

--
-- Estrutura da tabela `evaluation`
--

CREATE TABLE `evaluation` (
  `id` int(11) NOT NULL,
  `answer_1` int(11) NOT NULL,
  `answer_2` int(11) NOT NULL,
  `answer_3` int(11) NOT NULL,
  `further_information` varchar(200) DEFAULT NULL,
  `stars_rating` int(11) NOT NULL,
  `id_user_from` int(11) NOT NULL,
  `id_user_to` int(11) NOT NULL,
  `id_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `evaluation`
--

INSERT INTO `evaluation` (`id`, `answer_1`, `answer_2`, `answer_3`, `further_information`, `stars_rating`, `id_user_from`, `id_user_to`, `id_service`) VALUES
(27, 1, 1, 2, 'show!', 3, 74, 73, 214),
(28, 1, 2, 1, 'Gostei do rapaz', 4, 73, 74, 214);

-- --------------------------------------------------------

--
-- Estrutura da tabela `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `conversation` int(11) NOT NULL,
  `id_user_from` int(11) NOT NULL,
  `id_user_to` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `occupation`
--

CREATE TABLE `occupation` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `occupation`
--

INSERT INTO `occupation` (`id`, `name`) VALUES
(1, 'Serviços de Limpeza'),
(2, 'Serviços de Ar-condicionado'),
(3, 'Serviços Elétricos'),
(4, 'Serviços Hidráulicos'),
(5, 'Serviços de Reforma'),
(6, 'Montagem de Móveis'),
(7, 'Fretes'),
(8, 'Serviços de informática'),
(9, 'Confeitaria'),
(10, 'Serviços Automotivos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `occupation_subcategory`
--

CREATE TABLE `occupation_subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `id_occupation` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `occupation_subcategory`
--

INSERT INTO `occupation_subcategory` (`id`, `name`, `id_occupation`) VALUES
(1, 'Diaristas e Faxineiras', 1),
(2, 'Limpeza de Caixa D\'água', 1),
(3, 'Limpeza de Ar-Condicionado', 2),
(4, 'Instalação de Ar-Condicionado', 2),
(5, 'Desinstalação de Ar-Condicionado', 2),
(6, 'Conserto de Ar-Condicionado', 2),
(7, 'Manutenção de Ar-Condicionado', 2),
(8, 'Pré-Instalação de Ar-Condicionado', 2),
(9, 'Instalação de Chuveiro Elétrico', 3),
(10, 'Instalação de Ventilador de Teto', 3),
(11, 'Instalação de Tomada e Interruptor', 3),
(12, 'Instalação de Disjuntor', 3),
(13, 'Instalação de Luminária', 3),
(14, 'Instalação de Coifa e Depurador', 3),
(15, 'Eletricista', 3),
(16, 'Instalação de Aquecedor a Gás', 4),
(17, 'Conserto de Aquecedor a Gás', 4),
(18, 'Conserto de Vazamento', 4),
(19, 'Instalação de Máquina de Lavar Louça', 4),
(20, 'Instalação de Máquina de Lavar Roupa', 4),
(21, 'Limpeza de Caixa D\'água', 4),
(22, 'Instalação de Torneira', 4),
(23, 'Desentupir Vaso Sanitário', 4),
(24, 'Encanador', 4),
(25, 'Pintura Externa', 5),
(26, 'Pintura de Portas e Janelas', 5),
(27, 'Pintura de Portão e Grade', 5),
(28, 'Pintura de Parede e Teto(Interna)', 5),
(29, 'Colocação de Piso Porcelanato', 5),
(30, 'Instalação de Piso Laminado', 5),
(31, 'Colocação de Piso Cerâmico', 5),
(32, 'Instalação de Piso Vinílico', 5),
(33, 'Instalação de Revestimento na Parede', 5),
(34, 'Reparar Piso ou Revestimento\r\n', 5),
(35, 'Marido de Aluguel', 5),
(36, 'Instalação de Persiana e Cortina', 5),
(37, 'Conserto de Persianas', 5),
(38, 'Instalação de Rodapé', 5),
(39, 'Instalação de Rede de Proteção', 5),
(40, 'Instalação de Papel de Parede', 5),
(41, 'Instalação de Suporte de TV', 6),
(42, 'Montador de Móveis', 6),
(43, 'Pequenos Fretes (Até 100KM)', 7),
(44, 'Instalação de Rede Wi-fi', 8),
(45, 'Formatação de Computadores', 8),
(46, 'Confeitaria e Doces', 9),
(47, 'Pedreiro', 5),
(48, 'Mecânico', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `time_remaining` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `picture` varchar(500) DEFAULT NULL,
  `is_visible` varchar(20) DEFAULT NULL,
  `id_occupation_subcategory` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_request_accepted` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `who_finished` int(11) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT NULL,
  `issue_finished` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `service`
--

INSERT INTO `service` (`id`, `time_remaining`, `title`, `description`, `picture`, `is_visible`, `id_occupation_subcategory`, `id_user`, `id_request_accepted`, `status`, `who_finished`, `is_finished`, `issue_finished`) VALUES
(214, 'A próxima semana', 'Embreagem pesada VW Polo', 'Minha embreagem está muito pesada, mas o KM do meu carro é baixo, então não sei se pode ser outra coisa, ou se realmente preciso que seja feita a troca da minha embreagem', '../_img/service_picture/polao.jpeg', 'true', 48, 73, 114, 2, NULL, 1, 0),
(215, 'A próxima semana', 'Marea fumaçando', 'Não sei pq meu marea ta dando problema. Isso começou desde q eu coloquei 4kg de pressão na turbina', '../_img/service_picture/marea.jpg', 'true', 48, 73, NULL, 0, NULL, 0, 0),
(216, 'O quanto antes', 'Ar-condiconado não gela', 'O meu ar-condiconado apenas emite um ar-quente mas não está gelando quando abaixo a temperatura', '../_img/service_picture/ar-condiconado.jpg', 'true', 4, 75, NULL, 0, NULL, 0, 0),
(217, 'Sem previsão', 'Chuveiro não esquenta', 'Meu chuveiro precisa de manuntencao pois nao fica nem no morno e nem no quente', '../_img/service_picture/fiacao_chuveiro.jpg', 'true', 15, 74, NULL, 0, NULL, 0, 0),
(218, 'O quanto antes', 'Bolo para meu filho', 'Preciso de um bolo de aniversario para o meu filho', NULL, 'true', 46, 76, NULL, 0, NULL, 0, 0),
(219, 'O quanto antes', 'Tomada não esta pegando', 'esta é a unica tomada na minha casa que não funciona não sei pq', '../_img/service_picture/tomada.jpg', 'true', 15, 76, NULL, 0, NULL, 0, 0),
(220, 'O quanto antes', 'Construir muro ', 'Preciso que façam a construção de um muro aqui do lado que caiu semana passada', NULL, 'true', 47, 76, NULL, 0, NULL, 0, 0),
(221, 'O quanto antes', 'Lampada piscando desligada', 'A minha lampada mesmo apos ser desligada fica piscando', '../_img/service_picture/lampada_piscando.jpg', 'true', 15, 76, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `service_request`
--

CREATE TABLE `service_request` (
  `id` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `price` decimal(14,2) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `service_request`
--

INSERT INTO `service_request` (`id`, `id_service`, `id_user`, `price`, `description`) VALUES
(114, 214, 74, '100.00', 'Opa, blz? consigo fazer hoje mesmo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `birth_date` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `neighborhood` varchar(100) DEFAULT NULL,
  `home_number` varchar(10) DEFAULT NULL,
  `address_complement` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(400) NOT NULL DEFAULT '../_img/user_profile_picture/user.svg',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`, `gender`, `phone_number`, `cpf`, `birth_date`, `cep`, `address`, `uf`, `city`, `neighborhood`, `home_number`, `address_complement`, `profile_picture`, `lat`, `lon`) VALUES
(73, 'Diego Melo', 'diego@Live.com', 'Defina uma senha', 'M', '(11) 90324-8029', '674.810.318-51', '1999-08-20', '04230-000', 'Avenida Almirante Delamare', 'SP', 'São Paulo', 'Cidade Nova Heliópolis', '2', 'lado par', '../_img/user_profile_picture/m.jpeg', -23.6046076, -46.59597480000002),
(74, 'Gabriel Fernandes', 'gabriel@live.com', 'Defina uma senha', 'M', '(11) 92903-4824', '476.955.638-11', '1993-01-30', '04446-240', 'Rua Misarela de Agualva', 'SP', 'São Paulo', 'Jardim Sabará', '2', '', '../_img/user_profile_picture/m2.jpeg', -23.6843282, -46.68238029999998),
(75, 'Yasmin Goncalves Araujo', 'yasmin@live.com', 'Defina uma senha', 'F', '(11) 93940-2942', '313.071.168-68', '1993-11-20', '08235-800', 'Rua Benjoeiro', 'SP', 'São Paulo', 'Parque Guarani', '2', '', '../_img/user_profile_picture/f.jpeg', -23.5218054, -46.4652949),
(76, 'Larissa Souza Lima', 'larissa@live.com', 'Defina uma senha', 'F', '(11) 99234-2342', '301.942.708-82', '1993-01-12', '01048-903', 'Rua Coronel Xavier de Toledo', 'SP', 'São Paulo', 'Centro', '2', '161', '../_img/user_profile_picture/f2.jpeg', -23.5473484, -46.63942610000004),
(77, 'Matilde Azevedo', 'matilde@live.com', 'Defina uma senha', 'M', '(11) 90283-4789', '363.321.958-78', '1990-03-05', '04533-002', 'Rua Tabapuã', 'SP', 'São Paulo', 'Itaim Bibi', '2', 'de 572 a 780 - lado par', '../_img/user_profile_picture/f3.jpeg', -23.5834163, -46.67709819999999),
(78, 'Leonardo Barbosa', 'leonardo@live.com', 'Defina uma senha', 'M', '(11) 94203-4829', '964.932.078-43', '1990-03-12', '08290-110', 'Rua Reverendo Saulo Gonçalves', 'SP', 'São Paulo', 'Vila Carmosina', '1', '', '../_img/user_profile_picture/m3.jpeg', -23.5569699, -46.4484678),
(79, 'Rebeca Santos', 'rebeca@live.com', 'Defina uma senha', 'F', '(11) 92094-2094', '236.517.358-69', '1992-04-03', '01229-904', 'Rua São Vicente de Paulo', 'SP', 'São Paulo', 'Santa Cecília', '312', '501', '../_img/user_profile_picture/f5.jpeg', -23.5390605, -46.661481500000036),
(80, 'Carla Souza Rodrigues', 'carla@live.com', 'Defina uma senha', 'F', '(11) 92903-4720', '643.224.758-68', '1993-08-30', '05410-010', 'Rua Amália de Noronha', 'SP', 'São Paulo', 'Pinheiros', '12', '', '../_img/user_profile_picture/f6.jpeg', -23.5520867, -46.680644700000016),
(81, 'Mariana Rodrigues', 'mariana@live.com', 'Defina uma senha', 'F', '(11) 92039-8420', '263.158.558-57', '1993-01-12', '08161-210', 'Rua Faveira do Igapó', 'SP', 'São Paulo', 'Jardim dos Ipês', '1221', '', '../_img/user_profile_picture/f7.jpeg', -23.4993749, -46.41362979999997),
(82, 'Carlos Gomes', 'carlos@live.com', 'Defina uma senha', 'M', '(11) 93208-4203', '373.507.098-11', '1993-02-02', '05653-110', 'Rua Monsenhor Henrique Magalhães', 'SP', 'São Paulo', 'Jardim Leonor', '21', '', '../_img/user_profile_picture/m5.jpeg', -23.6007621, -46.716501100000016),
(83, 'Bruno Tavares', 'bruno@live.com', 'Defina uma senha', 'M', '(11) 98989-7464', '084.792.300-29', '1998-04-15', '01229-904', 'Rua São Vicente de Paulo', 'SP', 'São Paulo', 'Santa Cecília', '5', '501', '../_img/user_profile_picture/user.svg', -23.5390605, -46.661481500000036);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_occupation`
--

CREATE TABLE `user_occupation` (
  `id` int(11) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `id_occupation` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user_occupation`
--

INSERT INTO `user_occupation` (`id`, `description`, `id_occupation`, `id_user`) VALUES
(210, 'Tenho experiencia há mais de 10 anos e também faço carretos', 7, 74),
(211, 'Tenho experiencia há mais de 10 anos e também faço carretos', 10, 74),
(212, 'Tenho uma oficina e também faço entregas', 7, 75),
(213, 'Tenho uma oficina e também faço entregas', 10, 75),
(214, 'Faço entregar e também mexo com carros', 7, 76),
(215, 'Faço entregar e também mexo com carros', 10, 76),
(216, 'Há mais de 10 anos eu faço carretos e também estou na área da mecânica ha quase 20 anos', 7, 77),
(217, 'Há mais de 10 anos eu faço carretos e também estou na área da mecânica ha quase 20 anos', 10, 77),
(220, 'Faço rápidos fretes e também bons reparos automotivos', 7, 78),
(221, 'Faço rápidos fretes e também bons reparos automotivos', 10, 78),
(222, 'Trablaho bem', 7, 79),
(223, 'Trablaho bem', 10, 79),
(224, 'tenho boa experiencia nessa areas', 7, 80),
(225, 'tenho boa experiencia nessa areas', 10, 80),
(226, 'trabalho muito bem e tabem tenho uma grande experiencia na area', 7, 81),
(227, 'trabalho muito bem e tabem tenho uma grande experiencia na area', 10, 81),
(228, 'Monto móveis, faço carretos e também tenho experiência na parte elétrica de carros', 6, 82),
(229, 'Monto móveis, faço carretos e também tenho experiência na parte elétrica de carros', 7, 82),
(230, 'Monto móveis, faço carretos e também tenho experiência na parte elétrica de carros', 10, 82),
(231, 'Trabalho muito bem!', 7, 83),
(232, 'Trabalho muito bem!', 10, 83),
(233, 'Tenho experiencia em reformar casas, sei consertar ar-condiconado, e também com a ajuda de minha esposa faço bolos e doces', 2, 73),
(234, 'Tenho experiencia em reformar casas, sei consertar ar-condiconado, e também com a ajuda de minha esposa faço bolos e doces', 3, 73),
(235, 'Tenho experiencia em reformar casas, sei consertar ar-condiconado, e também com a ajuda de minha esposa faço bolos e doces', 5, 73),
(236, 'Tenho experiencia em reformar casas, sei consertar ar-condiconado, e também com a ajuda de minha esposa faço bolos e doces', 9, 73);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_1` (`id_user_1`),
  ADD KEY `id_user_2` (`id_user_2`);

--
-- Índices para tabela `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_user_from` (`id_user_from`),
  ADD KEY `id_user_to` (`id_user_to`);

--
-- Índices para tabela `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation` (`conversation`),
  ADD KEY `id_user_from` (`id_user_from`),
  ADD KEY `id_user_to` (`id_user_to`);

--
-- Índices para tabela `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `occupation_subcategory`
--
ALTER TABLE `occupation_subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_occupation` (`id_occupation`);

--
-- Índices para tabela `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_occupation_subcategory` (`id_occupation_subcategory`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `hired_id_user` (`id_request_accepted`),
  ADD KEY `who_finished` (`who_finished`);

--
-- Índices para tabela `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service` (`id_service`),
  ADD KEY `id_user` (`id_user`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user_occupation`
--
ALTER TABLE `user_occupation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_occupation` (`id_occupation`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT de tabela `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `occupation_subcategory`
--
ALTER TABLE `occupation_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT de tabela `service_request`
--
ALTER TABLE `service_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de tabela `user_occupation`
--
ALTER TABLE `user_occupation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `conversation`
--
ALTER TABLE `conversation`
  ADD CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`id_user_1`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `conversation_ibfk_2` FOREIGN KEY (`id_user_2`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`id_user_from`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `evaluation_ibfk_3` FOREIGN KEY (`id_user_to`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`conversation`) REFERENCES `conversation` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`id_user_from`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`id_user_to`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `occupation_subcategory`
--
ALTER TABLE `occupation_subcategory`
  ADD CONSTRAINT `occupation_subcategory_ibfk_1` FOREIGN KEY (`id_occupation`) REFERENCES `occupation` (`id`);

--
-- Limitadores para a tabela `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`id_occupation_subcategory`) REFERENCES `occupation_subcategory` (`id`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `service_ibfk_3` FOREIGN KEY (`id_request_accepted`) REFERENCES `service_request` (`id`),
  ADD CONSTRAINT `service_ibfk_4` FOREIGN KEY (`who_finished`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `service_request`
--
ALTER TABLE `service_request`
  ADD CONSTRAINT `service_request_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id`),
  ADD CONSTRAINT `service_request_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Limitadores para a tabela `user_occupation`
--
ALTER TABLE `user_occupation`
  ADD CONSTRAINT `user_occupation_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_occupation_ibfk_2` FOREIGN KEY (`id_occupation`) REFERENCES `occupation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
