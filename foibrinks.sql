-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 20-Dez-2019 às 19:42
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foibrinks`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` smallint(6) NOT NULL,
  `nomeCompleto` varchar(70) DEFAULT NULL,
  `estadocivil` varchar(70) DEFAULT NULL,
  `genero` varchar(70) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `bairro` varchar(70) DEFAULT NULL,
  `CEP` varchar(70) DEFAULT NULL,
  `estado` varchar(70) DEFAULT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `DatadeNascimento` date DEFAULT NULL,
  `DatadeCadastrodeSistema` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` smallint(6) NOT NULL,
  `NomeProduto` varchar(70) DEFAULT NULL,
  `marca` varchar(70) DEFAULT NULL,
  `FaixaEtariaIndicada` varchar(70) DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `largura` double DEFAULT NULL,
  `profundidade` double DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `DataCadastro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` smallint(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
