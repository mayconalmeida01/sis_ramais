-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/03/2025 às 00:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sis_ramais`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ramais`
--

CREATE TABLE `ramais` (
  `id` int(11) NOT NULL,
  `setor` varchar(255) DEFAULT NULL,
  `colaborador` varchar(255) DEFAULT NULL,
  `ramal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ramais`
--

INSERT INTO `ramais` (`id`, `setor`, `colaborador`, `ramal`) VALUES
(1, 'Assessoria Jurídica', 'Glaucia Guerra', '2224'),
(2, 'Assessoria da Presidência', 'Ana Menezes', '2342'),
(3, 'Coordenação Administrativa', 'Elis Augusta', '2022'),
(4, 'Diretoria ADM Financeira', 'Francisco Almeida', '2195'),
(5, 'Financeiro', 'Elis Regina', '2191'),
(6, 'Gerência de Projetos e Serviços', 'Alene Vanessa', '2542'),
(7, 'Gestão de Projetos', 'Ana Matos / Fabiola Oliveira', '2224'),
(8, 'NUESC - Importação', 'Ana Luiza', '2054'),
(9, 'Negócios', 'Miriã Oliveira', '2230'),
(10, 'Núcleo Contábil e Financeiro', 'Fabiana / Elizabeth', '2268'),
(11, 'Presidência', 'Paulo do Eirado', '2220'),
(12, 'Prestação de Contas', 'Maria Cristiane', '2268'),
(13, 'SESMT - Serv. Esp. Eng. Seg. e Med. Trab.', 'Thiago Pinheiro', '2660'),
(14, 'Suprimentos', 'Eline / Henrique', '2168'),
(15, 'Tecnologia da Informação', 'Maycon', '2054'),
(16, 'LBMAT - Lab. Biomateriais', 'Juliana Cordeiro', '2595'),
(17, 'LBT - Lab. De Biologia Tropical', 'Rubens Riscala', '2534'),
(19, 'LDIP - Lab. Doenças Infec e Parasitarias', 'Verônica / Cláudia Moura', '2030'),
(20, 'LEA - Lab. Estudos Ambientais', 'Michele Batista', '2627'),
(21, 'LEA - Lab. Estudos Ambientais', 'Graciele Costa', '2547'),
(22, 'LEB - Lab. Eng de Bioprocessos', 'Cleide Mara / Ranyere', '2632'),
(23, 'LEN - Lab. Eletroq e Nanotecnologia', 'Giancarlo Richard / Katlin', '2548'),
(24, 'LMPE - Lab. Morfologia e P Estrutural', 'Margarete Zanardo', '2615'),
(25, 'LNMED - Lab. Nanotec. e N. Med.', 'Patricia Severino', '2599'),
(26, 'LPA - Lab. Pesquisa em Alimentos', 'Cleide Mara / Ranyere', '2627'),
(27, 'LBPN - Lab. Prod Nat Biotecnologia', 'Edna Aragão / Maria Nogueira', '2536'),
(28, 'LPPS - Lab. Plan Promoção de Saúde', 'Marcos Almeida', '2553'),
(29, 'LRTE 1 - Lab. Trat. Resíduos e Efluentes', 'Maria Nogueira', '2549'),
(30, 'LRTE 2 - Lab. Trat. Resíduos e Efluentes', 'Eliane Bezerra', '2661'),
(31, 'LSINCROM - Lab Sint de Mat e Cromatografia', 'Silvia Maria / Juliana Faccin', '2164'),
(32, 'LPCI - Lab. De Prevenção e Cont de Incrust.', 'Elton Franceschi', '2137'),
(33, 'NUESC - Núc. Est. Sist. Coloidais', 'Cláudio Dariva / Gustavo Borges', '2157'),
(34, 'LabCrom - Lab. Cromatog. Gas. Bidim', 'Elina / Thiago Bjerk', '2296');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `ramais`
--
ALTER TABLE `ramais`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ramais`
--
ALTER TABLE `ramais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
