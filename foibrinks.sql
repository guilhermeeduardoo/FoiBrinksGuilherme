-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Fev-2020 às 03:07
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

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idcliente`, `nomeCompleto`, `estadocivil`, `genero`, `rua`, `bairro`, `CEP`, `estado`, `CPF`, `DatadeNascimento`, `DatadeCadastrodeSistema`) VALUES
(1, 'Kelria', 'solteira', 'Feminino', 'Vale dos Poneis', 'tão tão tão distante', '12345', 'RN', '12345678', '1500-04-01', '2019-12-20'),
(2, 'Cesar', 'fodase', 'indefinido', 'Vale dos Poneis negros', 'vila madalena', '12345', 'RN', '12345678', '1945-03-03', '2020-01-19'),
(3, 'Lusca', 'interessante', 'Masculino', 'Vale dos Poneis', 'Mr. X', '123456', 'RN', '12345678123', '1990-01-20', '2020-01-23'),
(4, 'Bryan', 'casado', 'ciborgue', 'tekken', 'tekken 6', '12345', 'SP', '12345678', '1970-08-01', '2020-01-23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dependente_clientes`
--

CREATE TABLE `dependente_clientes` (
  `IDdependentes` smallint(6) NOT NULL,
  `IDclientes` smallint(6) DEFAULT NULL,
  `nomeCompleto` varchar(256) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `genero` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dependente_clientes`
--

INSERT INTO `dependente_clientes` (`IDdependentes`, `IDclientes`, `nomeCompleto`, `dataNascimento`, `genero`) VALUES
(1, 2, 'Ramon silvera pimto', '2020-01-19', 'masculino'),
(2, 1, 'kesla branca das neves', '2020-01-30', 'feminino'),
(5, 1, 'Cesinha Neto', '1995-11-29', 'Seila');

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
  `DataCadastro` date DEFAULT NULL,
  `precoDesconto` double DEFAULT NULL,
  `volume` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `NomeProduto`, `marca`, `FaixaEtariaIndicada`, `altura`, `largura`, `profundidade`, `peso`, `preco`, `DataCadastro`, `precoDesconto`, `volume`) VALUES
(27, 'Anablle', 'capcom', '18 anos', 13, 20, 30, 10, 10, '2020-02-06', 9.6981265, 7800),
(28, 'Leona', 'Gui Bonecas Demoniacas', '18 anos', 50, 20, 13, 20, 254, '2020-02-06', 246.3324131, 13000),
(29, 'playstation 3', 'mycrosoft', 'não recomendo a ninguem', 50, 5, 78, 2, 1235, '2020-02-06', 1197.71862275, 19500),
(30, 'Ruda', 'Romulo', '25', 1.73, 60, 100, 86, 500, '2020-02-06', 484.906325, 10380),
(31, 'bolsa', 'bolsa cara', '0', 20, 30, 50, 10, 300, '2020-02-06', 290.943795, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `dependente_clientes`
--
ALTER TABLE `dependente_clientes`
  ADD PRIMARY KEY (`IDdependentes`),
  ADD KEY `IDclientes` (`IDclientes`);

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
  MODIFY `idcliente` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dependente_clientes`
--
ALTER TABLE `dependente_clientes`
  MODIFY `IDdependentes` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `dependente_clientes`
--
ALTER TABLE `dependente_clientes`
  ADD CONSTRAINT `dependente_clientes_ibfk_1` FOREIGN KEY (`IDclientes`) REFERENCES `clientes` (`idcliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
