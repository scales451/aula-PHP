-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Set-2019 às 01:56
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tads_26082019`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `cli_codigo` int(11) NOT NULL,
  `cli_nome` varchar(45) DEFAULT NULL,
  `cli_dtNasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cli_codigo`, `cli_nome`, `cli_dtNasc`) VALUES
(1, 'Maria da Silva', '2018-04-11'),
(2, 'Andre Evandro', '1980-10-25'),
(3, 'asdfa', '2010-10-15'),
(4, 'Lucas Silva', '1985-12-01'),
(5, 'maria rosa', '1974-10-15'),
(6, 'maria rosa', '1974-10-15'),
(7, 'maria rosa', '1974-10-15'),
(8, 'maria rosa', '1974-10-15'),
(9, 'maria rosa', '1974-10-15'),
(10, 'maria rosa', '1974-10-15'),
(11, 'ana rosa', '1974-10-15'),
(12, 'ana rosa', '1974-10-15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatura`
--

CREATE TABLE `fatura` (
  `fat_codigo` int(11) NOT NULL,
  `fat_valor` decimal(8,2) DEFAULT NULL,
  `fat_dtVencimento` date DEFAULT NULL,
  `cliente_cli_codigo` int(11) NOT NULL,
  `fat_xxxx` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `ven_codigo` int(11) NOT NULL,
  `ven_nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor_has_cliente`
--

CREATE TABLE `vendedor_has_cliente` (
  `vendedor_ven_codigo` int(11) NOT NULL,
  `cliente_cli_codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cli_codigo`);

--
-- Indexes for table `fatura`
--
ALTER TABLE `fatura`
  ADD PRIMARY KEY (`fat_codigo`),
  ADD KEY `fk_fatura_cliente` (`cliente_cli_codigo`);

--
-- Indexes for table `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`ven_codigo`);

--
-- Indexes for table `vendedor_has_cliente`
--
ALTER TABLE `vendedor_has_cliente`
  ADD PRIMARY KEY (`vendedor_ven_codigo`,`cliente_cli_codigo`),
  ADD KEY `fk_vendedor_has_cliente_cliente1` (`cliente_cli_codigo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cli_codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fatura`
--
ALTER TABLE `fatura`
  MODIFY `fat_codigo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `fatura`
--
ALTER TABLE `fatura`
  ADD CONSTRAINT `fk_fatura_cliente` FOREIGN KEY (`cliente_cli_codigo`) REFERENCES `cliente` (`cli_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendedor_has_cliente`
--
ALTER TABLE `vendedor_has_cliente`
  ADD CONSTRAINT `fk_vendedor_has_cliente_cliente1` FOREIGN KEY (`cliente_cli_codigo`) REFERENCES `cliente` (`cli_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendedor_has_cliente_vendedor1` FOREIGN KEY (`vendedor_ven_codigo`) REFERENCES `vendedor` (`ven_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
