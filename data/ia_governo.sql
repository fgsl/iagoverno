-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 27-Fev-2025 às 16:36
-- Versão do servidor: 8.0.41-0ubuntu0.22.04.1
-- versão do PHP: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ia_governo`
--
CREATE DATABASE IF NOT EXISTS `ia_governo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ia_governo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_software`
--

CREATE TABLE `categoria_software` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `licenca`
--

CREATE TABLE `licenca` (
  `codigo` int NOT NULL,
  `nome` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `livre` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgao`
--

CREATE TABLE `orgao` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tipo_orgao` int NOT NULL,
  `semresposta` tinyint(1) NOT NULL DEFAULT '0',
  `sigla` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pedidos` tinyint NOT NULL DEFAULT '1',
  `usaia` tinyint(1) NOT NULL DEFAULT '0',
  `houvemelhoria` tinyint(1) NOT NULL DEFAULT '0',
  `hapoliticainterna` tinyint(1) NOT NULL DEFAULT '0',
  `questoeseticas` tinyint(1) NOT NULL DEFAULT '0',
  `pesquisa` tinyint(1) NOT NULL DEFAULT '0',
  `aplica` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo`
--

CREATE TABLE `protocolo` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `protocolo_orgao`
--

CREATE TABLE `protocolo_orgao` (
  `codigo_protocolo` int NOT NULL,
  `codigo_orgao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `software`
--

CREATE TABLE `software` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `codigo_categoria` int NOT NULL,
  `website` varchar(180) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `codigo_licenca` int NOT NULL,
  `observacoes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `software_orgao`
--

CREATE TABLE `software_orgao` (
  `codigo_software` int NOT NULL,
  `codigo_orgao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_orgao`
--

CREATE TABLE `tipo_orgao` (
  `codigo` int NOT NULL,
  `nome` varchar(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria_software`
--
ALTER TABLE `categoria_software`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `licenca`
--
ALTER TABLE `licenca`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `orgao`
--
ALTER TABLE `orgao`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `protocolo`
--
ALTER TABLE `protocolo`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `protocolo_orgao`
--
ALTER TABLE `protocolo_orgao`
  ADD PRIMARY KEY (`codigo_protocolo`,`codigo_orgao`);

--
-- Índices para tabela `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `software_orgao`
--
ALTER TABLE `software_orgao`
  ADD PRIMARY KEY (`codigo_software`,`codigo_orgao`);

--
-- Índices para tabela `tipo_orgao`
--
ALTER TABLE `tipo_orgao`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_software`
--
ALTER TABLE `categoria_software`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `licenca`
--
ALTER TABLE `licenca`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orgao`
--
ALTER TABLE `orgao`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `protocolo`
--
ALTER TABLE `protocolo`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `software`
--
ALTER TABLE `software`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_orgao`
--
ALTER TABLE `tipo_orgao`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
