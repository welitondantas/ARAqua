-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 11-Set-2018 às 02:27
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbaraqua`
--
CREATE DATABASE IF NOT EXISTS `dbaraqua` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbaraqua`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agrotoxico`
--

CREATE TABLE IF NOT EXISTS `agrotoxico` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `principioAtivo` varchar(60) NOT NULL,
  `dose` float NOT NULL,
  `coeficienteSorcaoCam1` float NOT NULL,
  `coeficienteSorcaoCam2` float DEFAULT NULL,
  `coeficienteSorcaoCam3` float DEFAULT NULL,
  `coeficienteSorcaoCam4` float DEFAULT NULL,
  `meiaVidaCam1` int(11) NOT NULL,
  `meiaVidaCam2` int(11) DEFAULT NULL,
  `meiaVidaCam3` int(11) DEFAULT NULL,
  `meiaVidaCam4` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localidade`
--

CREATE TABLE IF NOT EXISTS `localidade` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `precipitacao` float NOT NULL,
  `evapotranspiracao` float NOT NULL,
  `irrigacao` float NOT NULL,
  `porosidadeAquifero` float NOT NULL,
  `profundidadeAquifero` float NOT NULL,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resultado`
--

CREATE TABLE IF NOT EXISTS `resultado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recargaHidrica` int(11) NOT NULL,
  `concentracaoEstimada` int(11) NOT NULL,
  `solo_id` int(11) NOT NULL,
  `agrotoxico_id` int(11) NOT NULL,
  `localidade_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `solo_fk` (`solo_id`),
  KEY `agrotoxico_fk` (`agrotoxico_id`),
  KEY `localidade_fk` (`localidade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solo`
--

CREATE TABLE IF NOT EXISTS `solo` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(15) NOT NULL,
  `profundidadeCamada1` int(11) NOT NULL,
  `profundidadeCamada2` int(11) DEFAULT NULL,
  `profundidadeCamada3` int(11) DEFAULT NULL,
  `profundidadeCamada4` int(11) DEFAULT NULL,
  `capacidadeCampo1` float NOT NULL,
  `capacidadeCampo2` float NOT NULL,
  `capacidadeCampo3` float NOT NULL,
  `capacidadeCampo4` float NOT NULL,
  `densidadeSolo1` float NOT NULL,
  `densidadeSolo2` float NOT NULL,
  `densidadeSolo3` float NOT NULL,
  `densidadeSolo4` float NOT NULL,
  `carbonoOrganico1` float NOT NULL,
  `carbonoOrganico2` float NOT NULL,
  `carbonoOrganico3` float NOT NULL,
  `carbonoOrganico4` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `login` varchar(40) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `acesso` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `agrotoxico_fk` FOREIGN KEY (`agrotoxico_id`) REFERENCES `agrotoxico` (`id`),
  ADD CONSTRAINT `localidade_fk` FOREIGN KEY (`localidade_id`) REFERENCES `localidade` (`id`),
  ADD CONSTRAINT `solo_fk` FOREIGN KEY (`solo_id`) REFERENCES `solo` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
