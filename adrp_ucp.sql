-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2022 às 23:40
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `adrp_testes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `advertisement`
--

CREATE TABLE `advertisement` (
  `ID` int(11) NOT NULL,
  `player` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `text` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `time` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ban`
--

CREATE TABLE `ban` (
  `ID` int(11) NOT NULL,
  `banned_id` int(11) NOT NULL DEFAULT 0,
  `admin_name` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `reason` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `ban_date` int(11) NOT NULL DEFAULT 0,
  `unban_date` int(11) NOT NULL DEFAULT 0,
  `unban_admin` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `banned` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `character_licences_driver`
--

CREATE TABLE `character_licences_driver` (
  `ID` int(11) NOT NULL,
  `character_id` int(11) NOT NULL DEFAULT 0,
  `licence_number` int(11) NOT NULL DEFAULT 0,
  `licence_status` int(11) NOT NULL DEFAULT 0,
  `licence_warnings` int(11) NOT NULL DEFAULT 0,
  `licence_car` int(11) NOT NULL DEFAULT 0,
  `licence_bike` int(11) NOT NULL DEFAULT 0,
  `licence_truck` int(11) NOT NULL DEFAULT 0,
  `licence_gun` int(11) NOT NULL DEFAULT 0,
  `warning_one` varchar(128) NOT NULL DEFAULT 'Vazio',
  `warning_two` varchar(128) NOT NULL DEFAULT 'Vazio',
  `warning_three` varchar(128) NOT NULL DEFAULT 'Vazio'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `custom_skins`
--

CREATE TABLE `custom_skins` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL DEFAULT 0,
  `skin_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `furniture_info`
--

CREATE TABLE `furniture_info` (
  `ID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Nenhum',
  `model` int(11) NOT NULL DEFAULT 0,
  `category` varchar(64) NOT NULL DEFAULT 'Nenhum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `character_id` int(11) DEFAULT 0,
  `address` varchar(256) DEFAULT 'Endereço desconhecido',
  `locked` int(11) DEFAULT 0,
  `price` int(11) DEFAULT 0,
  `storage_money` int(11) DEFAULT 0,
  `entry_x` float DEFAULT 0,
  `entry_y` float DEFAULT 0,
  `entry_z` float DEFAULT 0,
  `entry_a` float DEFAULT 0,
  `vw_entry` int(11) DEFAULT 0,
  `interior_entry` int(11) DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `vw_exit` int(11) DEFAULT 0,
  `interior_exit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `houses_other_entries`
--

CREATE TABLE `houses_other_entries` (
  `id` int(11) NOT NULL,
  `house_id` int(11) DEFAULT 0,
  `locked` int(11) DEFAULT 0,
  `entry_x` float DEFAULT 0,
  `entry_y` float DEFAULT 0,
  `entry_z` float DEFAULT 0,
  `entry_a` float DEFAULT 0,
  `vw_entry` int(11) DEFAULT 0,
  `interior_entry` int(11) DEFAULT 0,
  `exit_x` float DEFAULT 0,
  `exit_y` float DEFAULT 0,
  `exit_z` float DEFAULT 0,
  `exit_a` float DEFAULT 0,
  `vw_exit` int(11) DEFAULT 0,
  `interior_exit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `interiors_info`
--

CREATE TABLE `interiors_info` (
  `ID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Nenhum',
  `virtual_world` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `positionA` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players`
--

CREATE TABLE `players` (
  `ID` int(11) NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `registration_ip` varchar(16) NOT NULL DEFAULT 'Nenhum',
  `registration_date` int(11) NOT NULL DEFAULT 0,
  `first_ip` varchar(16) NOT NULL DEFAULT 'Nenhum',
  `last_ip` varchar(16) NOT NULL DEFAULT 'Nenhum',
  `first_login` int(11) NOT NULL DEFAULT 0,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `dateofbirth` varchar(16) NOT NULL DEFAULT '01/01/1970',
  `origin` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `minutes` int(11) NOT NULL DEFAULT 0,
  `hours` int(11) NOT NULL DEFAULT 0,
  `background` varchar(64) NOT NULL DEFAULT 'Los Santos',
  `money` int(11) NOT NULL DEFAULT 0,
  `bank` int(11) NOT NULL DEFAULT 0,
  `savings` int(11) NOT NULL DEFAULT 0,
  `skin` int(11) NOT NULL DEFAULT 23,
  `health` float NOT NULL DEFAULT 100,
  `armour` float NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 1,
  `virtual_world` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `positionX` float NOT NULL DEFAULT 1642.2,
  `positionY` float NOT NULL DEFAULT -2334.48,
  `positionZ` float NOT NULL DEFAULT 13.5469,
  `positionA` float NOT NULL DEFAULT 0,
  `phone_number` int(11) NOT NULL DEFAULT 0,
  `phone_type` int(11) NOT NULL DEFAULT 0,
  `online` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players_apparence`
--

CREATE TABLE `players_apparence` (
  `ID` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 1,
  `ethnicity` int(11) NOT NULL DEFAULT 0,
  `color_eyes` int(11) NOT NULL DEFAULT 0,
  `color_hair` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `weight` float NOT NULL DEFAULT 0,
  `build` int(11) NOT NULL DEFAULT 0,
  `description` varchar(128) NOT NULL DEFAULT 'N/A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players_premium`
--

CREATE TABLE `players_premium` (
  `ID` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `donator` int(11) NOT NULL DEFAULT 0,
  `donator_time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `players_weapons`
--

CREATE TABLE `players_weapons` (
  `ID` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `Gun1` int(11) NOT NULL DEFAULT 0,
  `Ammo1` int(11) NOT NULL DEFAULT 0,
  `Gun2` int(11) NOT NULL DEFAULT 0,
  `Ammo2` int(11) NOT NULL DEFAULT 0,
  `Gun3` int(11) NOT NULL DEFAULT 0,
  `Ammo3` int(11) NOT NULL DEFAULT 0,
  `Gun4` int(11) NOT NULL DEFAULT 0,
  `Ammo4` int(11) NOT NULL DEFAULT 0,
  `Gun5` int(11) NOT NULL DEFAULT 0,
  `Ammo5` int(11) NOT NULL DEFAULT 0,
  `Gun6` int(11) NOT NULL DEFAULT 0,
  `Ammo6` int(11) NOT NULL DEFAULT 0,
  `Gun7` int(11) NOT NULL DEFAULT 0,
  `Ammo7` int(11) NOT NULL DEFAULT 0,
  `Gun8` int(11) NOT NULL DEFAULT 0,
  `Ammo8` int(11) NOT NULL DEFAULT 0,
  `Gun9` int(11) NOT NULL DEFAULT 0,
  `Ammo9` int(11) NOT NULL DEFAULT 0,
  `Gun10` int(11) NOT NULL DEFAULT 0,
  `Ammo10` int(11) NOT NULL DEFAULT 0,
  `Gun11` int(11) NOT NULL DEFAULT 0,
  `Ammo11` int(11) NOT NULL DEFAULT 0,
  `Gun12` int(11) NOT NULL DEFAULT 0,
  `Ammo12` int(11) NOT NULL DEFAULT 0,
  `Gun13` int(11) NOT NULL DEFAULT 0,
  `Ammo13` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pool_tables`
--

CREATE TABLE `pool_tables` (
  `ID` int(11) NOT NULL,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `positionA` float NOT NULL DEFAULT 0,
  `virtual_world` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0,
  `skin` varchar(64) NOT NULL DEFAULT 'POOL_SKIN_DEFAULT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `serverlogs`
--

CREATE TABLE `serverlogs` (
  `ID` int(11) NOT NULL,
  `character` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `user` varchar(24) NOT NULL DEFAULT 'Nenhum',
  `ip` varchar(16) NOT NULL DEFAULT 'Nenhum',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `log` varchar(255) NOT NULL DEFAULT 'N/A',
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `serverlogs`
--

INSERT INTO `serverlogs` (`ID`, `character`, `user`, `ip`, `timestamp`, `log`, `type`) VALUES
(1, 'SYSTEM', 'SYSTEM', '', 1659298593, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(2, 'SYSTEM', 'SYSTEM', '', 1018987200, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(3, 'SYSTEM', 'SYSTEM', '', 2147483647, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(4, 'SYSTEM', 'SYSTEM', '', 2147483647, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(5, 'SYSTEM', 'SYSTEM', '', 1659298594, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(6, 'SYSTEM', 'SYSTEM', '', 1641844800, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(7, 'SYSTEM', 'SYSTEM', '', 1659298595, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(8, 'SYSTEM', 'SYSTEM', '', 1659298595, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(9, 'SYSTEM', 'SYSTEM', '', 1659298596, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(10, 'SYSTEM', 'SYSTEM', '', 1659298596, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(11, 'SYSTEM', 'SYSTEM', '', 1659298598, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(12, 'John_Doe', 'Thiago', '127.0.0.1', 1659298704, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(13, 'John_Doe', '', '255.255.255.255', 1659384000, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(14, 'Sebastian_Onaodowan', 'Thiago', '127.0.0.1', 1659298946, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(15, 'John_Doe', 'Thiago', '127.0.0.1', 1659298972, 'John Doe (Thiago) deu uma Desert Eagle (ID:24 AMMO:100) para John Doe.', 1),
(16, 'John_Doe', 'Thiago', '127.0.0.1', 1659298972, 'John Doe (Thiago) [127.0.0.1]: /dararma 0 24 100', 3),
(17, 'John_Doe', '', '255.255.255.255', 1659299132, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(18, 'John_Doe', 'Thiago', '127.0.0.1', 1659299184, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(19, 'John_Doe', 'Thiago', '127.0.0.1', 1659299209, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(20, 'John_Doe', 'Thiago', '127.0.0.1', 1659299230, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(21, 'John_Doe', '', '255.255.255.255', 1659299236, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(22, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(23, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(24, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(25, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(26, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(27, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(28, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(29, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(30, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(31, 'SYSTEM', 'SYSTEM', '', 1659299924, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(32, 'SYSTEM', 'SYSTEM', '', 1659299925, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(33, 'SYSTEM', 'SYSTEM', '', 1659299925, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(34, 'SYSTEM', 'SYSTEM', '', 1659299925, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(35, 'SYSTEM', 'SYSTEM', '', 1659299925, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(36, 'SYSTEM', 'SYSTEM', '', 1659299925, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(37, 'SYSTEM', 'SYSTEM', '', 1018962000, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(38, 'John_Doe', 'Thiago', '192.168.0.213', 2147483647, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(39, 'John_Doe', '', '255.255.255.255', 2147483647, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(40, 'SYSTEM', 'SYSTEM', '', 1659306082, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(41, 'SYSTEM', 'SYSTEM', '', 1659306082, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(42, 'SYSTEM', 'SYSTEM', '', 1659306082, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(43, 'SYSTEM', 'SYSTEM', '', 1659306082, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(44, 'SYSTEM', 'SYSTEM', '', 1659306082, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(45, 'SYSTEM', 'SYSTEM', '', 1641844800, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(46, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(47, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(48, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(49, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(50, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(51, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(52, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(53, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(54, 'SYSTEM', 'SYSTEM', '', 1659306083, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(55, 'SYSTEM', 'SYSTEM', '', 1659306085, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(56, 'John_Doe', 'Thiago', '127.0.0.1', 1659306279, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(57, 'John_Doe', 'Thiago', '127.0.0.1', 1659306299, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(58, 'John_Doe', 'Thiago', '127.0.0.1', 1659306303, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(59, 'John_Doe', 'Thiago', '127.0.0.1', 1659306305, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(60, 'John_Doe', 'Thiago', '127.0.0.1', 1659306338, 'John Doe (Thiago) [127.0.0.1]: /ir pos', 3),
(61, 'John_Doe', 'Wee', '127.0.0.1', 1659306344, 'John Doe (Thiago) [127.0.0.1]: /ir pos 1784.9822 -1302.0426 0.9', 3),
(62, 'John_Doe', '', '255.255.255.255', 1659306956, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(63, 'SYSTEM', 'SYSTEM', '', 1659307584, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(64, 'SYSTEM', 'SYSTEM', '', 1659307584, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(65, 'SYSTEM', 'SYSTEM', '', 1659307584, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(66, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(67, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(68, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(69, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(70, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(71, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(72, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(73, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(74, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(75, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(76, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(77, 'SYSTEM', 'SYSTEM', '', 1659307585, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(78, 'SYSTEM', 'SYSTEM', '', 1659307587, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(79, 'John_Doe', 'Thiago', '127.0.0.1', 1659307618, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(80, 'John_Doe', 'Thiago', '127.0.0.1', 1659307658, 'John Doe (Thiago) [127.0.0.1]: /z -1', 3),
(81, 'John_Doe', 'Thiago', '127.0.0.1', 1659307659, 'John Doe (Thiago) [127.0.0.1]: /z -1', 3),
(82, 'John_Doe', 'Thiago', '127.0.0.1', 1659307660, 'John Doe (Thiago) [127.0.0.1]: /z -1', 3),
(83, 'John_Doe', 'Thiago', '127.0.0.1', 1659307661, 'John Doe (Thiago) [127.0.0.1]: /z -1', 3),
(84, 'John_Doe', 'Thiago', '127.0.0.1', 1659307663, 'John Doe (Thiago) [127.0.0.1]: /z -10', 3),
(85, 'John_Doe', 'Thiago', '127.0.0.1', 1659307665, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(86, 'John_Doe', 'Thiago', '127.0.0.1', 1659307671, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(87, 'John_Doe', 'Thiago', '127.0.0.1', 1659307673, 'John Doe (Thiago) [127.0.0.1]: /y 1', 3),
(88, 'John_Doe', 'Thiago', '127.0.0.1', 1659307748, 'John Doe (Thiago) [127.0.0.1]: /z 2', 3),
(89, 'John_Doe', 'Thiago', '127.0.0.1', 1659307893, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(90, 'John_Doe', 'Thiago', '127.0.0.1', 1659307899, 'John Doe (Thiago) criou o investimento Maze Bank [ID: 1] como uma ação.', 1),
(91, 'John_Doe', 'Thiago', '127.0.0.1', 1659307899, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 1 Maze Bank', 3),
(92, 'John_Doe', 'Thiago', '127.0.0.1', 1659307903, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1', 3),
(93, 'John_Doe', 'Thiago', '127.0.0.1', 1659307910, 'John Doe (Thiago) alterou o símbolo do investimento ID 1 para MZBK', 1),
(94, 'John_Doe', 'Thiago', '127.0.0.1', 1659307910, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 símbolo MZBK', 3),
(95, 'John_Doe', 'Thiago', '127.0.0.1', 1659307921, 'John Doe (Thiago) alterou a descrição do investimento ID 1 para O maior banco de San Andreas', 1),
(96, 'John_Doe', 'Thiago', '127.0.0.1', 1659307921, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 descrição O maior banco de San Andreas', 3),
(97, 'John_Doe', 'Thiago', '127.0.0.1', 1659307933, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ 12,921,093.00', 1),
(98, 'John_Doe', 'Thiago', '127.0.0.1', 1659307933, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 12921093.32', 3),
(99, 'John_Doe', 'Thiago', '127.0.0.1', 1659307945, 'John Doe (Thiago) alterou o valor de compra do investimento ID 1 para US$ 123.98', 1),
(100, 'John_Doe', 'Thiago', '127.0.0.1', 1659307945, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 valorcompra 123.99', 3),
(101, 'John_Doe', 'Thiago', '127.0.0.1', 1659307952, 'John Doe (Thiago) alterou o valor de venda do investimento ID 1 para US$ 129.22', 1),
(102, 'John_Doe', 'Thiago', '127.0.0.1', 1659307952, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 valorvenda 129.23', 3),
(103, 'John_Doe', 'Thiago', '127.0.0.1', 1659307967, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 1 para 100', 1),
(104, 'John_Doe', 'Thiago', '127.0.0.1', 1659307967, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 maxslots 100', 3),
(105, 'John_Doe', 'Thiago', '127.0.0.1', 1659308044, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(106, 'John_Doe', 'Thiago', '127.0.0.1', 1659308050, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(107, 'John_Doe', 'Thiago', '127.0.0.1', 1659308064, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(108, 'John_Doe', 'Thiago', '127.0.0.1', 1659308117, 'John Doe (Thiago) pegou um paycheck antecipado.', 1),
(109, 'John_Doe', 'Thiago', '127.0.0.1', 1659308117, 'John Doe (Thiago) [127.0.0.1]: /pegarpaycheck ', 3),
(110, 'John_Doe', 'Thiago', '127.0.0.1', 1659308118, 'John Doe (Thiago) pegou um paycheck antecipado.', 1),
(111, 'John_Doe', 'Thiago', '127.0.0.1', 1659308118, 'John Doe (Thiago) [127.0.0.1]: /pegarpaycheck ', 3),
(112, 'John_Doe', 'Thiago', '127.0.0.1', 1659308119, 'John Doe (Thiago) pegou um paycheck antecipado.', 1),
(113, 'John_Doe', 'Thiago', '127.0.0.1', 1659308119, 'John Doe (Thiago) [127.0.0.1]: /pegarpaycheck ', 3),
(114, 'John_Doe', 'Thiago', '127.0.0.1', 1659308178, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(115, 'John_Doe', 'Thiago', '127.0.0.1', 1659308188, 'John Doe (Thiago) comprou 23 investimentos de Maze Bank [ID: 1] e pagou US$ 2.852.', 15),
(116, 'John_Doe', 'Thiago', '127.0.0.1', 1659308209, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(117, 'John_Doe', 'Thiago', '127.0.0.1', 1659308219, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(118, 'John_Doe', 'Thiago', '127.0.0.1', 1659308263, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(119, 'John_Doe', 'Thiago', '127.0.0.1', 1659308436, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(120, 'John_Doe', 'Thiago', '127.0.0.1', 1659308437, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(121, 'John_Doe', 'Thiago', '127.0.0.1', 1659308437, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(122, 'John_Doe', 'Thiago', '127.0.0.1', 1659308438, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(123, 'John_Doe', 'Thiago', '127.0.0.1', 1659308438, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(124, 'John_Doe', 'Thiago', '127.0.0.1', 1659308438, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(125, 'John_Doe', 'Thiago', '127.0.0.1', 1659308439, 'John Doe (Thiago) [127.0.0.1]: /z 10', 3),
(126, 'John_Doe', '', '255.255.255.255', 1659308442, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(127, 'SYSTEM', 'SYSTEM', '', 1659315630, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(128, 'SYSTEM', 'SYSTEM', '', 1659315630, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(129, 'SYSTEM', 'SYSTEM', '', 1659315630, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(130, 'SYSTEM', 'SYSTEM', '', 1659315630, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(131, 'SYSTEM', 'SYSTEM', '', 1659315630, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(132, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(133, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(134, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(135, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(136, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(137, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(138, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(139, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(140, 'SYSTEM', 'SYSTEM', '', 1659315631, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(141, 'SYSTEM', 'SYSTEM', '', 1659315632, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(142, 'SYSTEM', 'SYSTEM', '', 1659315634, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(143, 'John_Doe', 'Thiago', '127.0.0.1', 1659315657, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(144, 'John_Doe', 'Thiago', '127.0.0.1', 1659315664, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(145, 'John_Doe', 'Thiago', '127.0.0.1', 1659315844, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(146, 'John_Doe', 'Thiago', '127.0.0.1', 1659315858, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(147, 'John_Doe', 'Thiago', '127.0.0.1', 1659315861, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(148, 'John_Doe', 'Thiago', '127.0.0.1', 1659315863, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(149, 'John_Doe', 'Thiago', '127.0.0.1', 1659315903, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(150, 'SYSTEM', 'SYSTEM', '', 1659316118, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(151, 'SYSTEM', 'SYSTEM', '', 1659316118, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(152, 'SYSTEM', 'SYSTEM', '', 1659316118, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(153, 'SYSTEM', 'SYSTEM', '', 1659316118, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(154, 'SYSTEM', 'SYSTEM', '', 1659316118, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(155, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(156, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(157, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(158, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(159, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(160, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(161, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(162, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(163, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(164, 'SYSTEM', 'SYSTEM', '', 1659316119, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(165, 'SYSTEM', 'SYSTEM', '', 1659316121, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(166, 'John_Doe', 'Thiago', '127.0.0.1', 1659316325, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(167, 'John_Doe', 'Thiago', '127.0.0.1', 1659316339, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(168, 'John_Doe', 'Thiago', '127.0.0.1', 1659316341, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(169, 'John_Doe', 'Thiago', '127.0.0.1', 1659316392, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(170, 'John_Doe', 'Thiago', '127.0.0.1', 1659316417, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(171, 'John_Doe', 'Thiago', '127.0.0.1', 1659316445, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(172, 'John_Doe', 'Thiago', '127.0.0.1', 1659316450, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(173, 'John_Doe', '', '255.255.255.255', 1659316508, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(174, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(175, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(176, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(177, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(178, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(179, 'SYSTEM', 'SYSTEM', '', 1659316549, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(180, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(181, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(182, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(183, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(184, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(185, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(186, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(187, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(188, 'SYSTEM', 'SYSTEM', '', 1659316550, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(189, 'SYSTEM', 'SYSTEM', '', 1659316552, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(190, 'John_Doe', 'Thiago', '127.0.0.1', 1659316581, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(191, 'John_Doe', 'Thiago', '127.0.0.1', 1659316594, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(192, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(193, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(194, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(195, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(196, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(197, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(198, 'SYSTEM', 'SYSTEM', '', 1659316723, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(199, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(200, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(201, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(202, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(203, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(204, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(205, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(206, 'SYSTEM', 'SYSTEM', '', 1659316724, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(207, 'SYSTEM', 'SYSTEM', '', 1659316726, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(208, 'John_Doe', 'Thiago', '127.0.0.1', 1659316973, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(209, 'John_Doe', 'Thiago', '127.0.0.1', 1659316984, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(210, 'John_Doe', '', '127.0.0.1', 1659317031, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(211, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(212, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(213, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(214, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(215, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(216, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(217, 'SYSTEM', 'SYSTEM', '', 1659317043, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(218, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(219, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(220, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(221, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(222, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(223, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(224, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(225, 'SYSTEM', 'SYSTEM', '', 1659317044, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(226, 'SYSTEM', 'SYSTEM', '', 1659317045, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(227, 'John_Doe', 'Thiago', '127.0.0.1', 1659317102, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(228, 'John_Doe', 'Thiago', '127.0.0.1', 1659317109, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(229, 'John_Doe', 'Thiago', '127.0.0.1', 1659317112, 'John Doe (Thiago) vendeu 23 investimentos de Maze Bank [ID: 1] e recebeu US$ 2.967.', 15),
(230, 'John_Doe', 'Thiago', '127.0.0.1', 1659317115, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(231, 'John_Doe', 'Thiago', '127.0.0.1', 1659317121, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(232, 'John_Doe', 'Thiago', '127.0.0.1', 1659317137, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(233, 'John_Doe', '', '255.255.255.255', 1659317223, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(234, 'SYSTEM', 'SYSTEM', '', 1659360680, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(235, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(236, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(237, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(238, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(239, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(240, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(241, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(242, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(243, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(244, 'SYSTEM', 'SYSTEM', '', 1659360681, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(245, 'SYSTEM', 'SYSTEM', '', 1659360682, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(246, 'SYSTEM', 'SYSTEM', '', 1659360682, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(247, 'SYSTEM', 'SYSTEM', '', 1659360682, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(248, 'SYSTEM', 'SYSTEM', '', 1659360682, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(249, 'SYSTEM', 'SYSTEM', '', 1659360684, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(250, 'John_Doe', 'Thiago', '127.0.0.1', 1659360720, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(251, 'John_Doe', '', '127.0.0.1', 1659360981, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(252, 'SYSTEM', 'SYSTEM', '', 1659360992, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(253, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(254, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(255, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(256, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(257, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(258, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(259, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(260, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(261, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(262, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(263, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(264, 'SYSTEM', 'SYSTEM', '', 1659360993, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(265, 'SYSTEM', 'SYSTEM', '', 1659360994, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(266, 'SYSTEM', 'SYSTEM', '', 1659360994, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(267, 'SYSTEM', 'SYSTEM', '', 1659360994, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(268, 'John_Doe', 'Thiago', '127.0.0.1', 1659361040, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(269, 'John_Doe', 'Thiago', '127.0.0.1', 1659361089, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(270, 'John_Doe', 'Thiago', '127.0.0.1', 1659361153, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(271, 'John_Doe', '', '255.255.255.255', 1659361473, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(272, 'SYSTEM', 'SYSTEM', '', 1659362936, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(273, 'SYSTEM', 'SYSTEM', '', 1659362936, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(274, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(275, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(276, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(277, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(278, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(279, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(280, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(281, 'SYSTEM', 'SYSTEM', '', 1659362937, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(282, 'SYSTEM', 'SYSTEM', '', 1659362938, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(283, 'SYSTEM', 'SYSTEM', '', 1659362938, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(284, 'SYSTEM', 'SYSTEM', '', 1659362938, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(285, 'SYSTEM', 'SYSTEM', '', 1659362938, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(286, 'SYSTEM', 'SYSTEM', '', 1659362938, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(287, 'SYSTEM', 'SYSTEM', '', 1659362940, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(288, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(289, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(290, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(291, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(292, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(293, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(294, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(295, 'SYSTEM', 'SYSTEM', '', 1659362990, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(296, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(297, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(298, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(299, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(300, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(301, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(302, 'SYSTEM', 'SYSTEM', '', 1659362991, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(303, 'SYSTEM', 'SYSTEM', '', 1659362993, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(304, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(305, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(306, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(307, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(308, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(309, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(310, 'SYSTEM', 'SYSTEM', '', 1659363039, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(311, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(312, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(313, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(314, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(315, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(316, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(317, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(318, 'SYSTEM', 'SYSTEM', '', 1659363040, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(319, 'SYSTEM', 'SYSTEM', '', 1659363042, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(320, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(321, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(322, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(323, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(324, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(325, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(326, 'SYSTEM', 'SYSTEM', '', 1659363295, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(327, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(328, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(329, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(330, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(331, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(332, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(333, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(334, 'SYSTEM', 'SYSTEM', '', 1659363296, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(335, 'SYSTEM', 'SYSTEM', '', 1659363298, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(336, 'SYSTEM', 'SYSTEM', '', 1659363679, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(337, 'SYSTEM', 'SYSTEM', '', 1659363679, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(338, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(339, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(340, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(341, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(342, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(343, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(344, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(345, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(346, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(347, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(348, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(349, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(350, 'SYSTEM', 'SYSTEM', '', 1659363680, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(351, 'SYSTEM', 'SYSTEM', '', 1659363682, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(352, 'SYSTEM', 'SYSTEM', '', 1659364304, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(353, 'SYSTEM', 'SYSTEM', '', 1659364304, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(354, 'SYSTEM', 'SYSTEM', '', 1659364304, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(355, 'SYSTEM', 'SYSTEM', '', 1659364304, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(356, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(357, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(358, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(359, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(360, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(361, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(362, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(363, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(364, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(365, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(366, 'SYSTEM', 'SYSTEM', '', 1659364305, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(367, 'SYSTEM', 'SYSTEM', '', 1659364307, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(368, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(369, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(370, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(371, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(372, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(373, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(374, 'SYSTEM', 'SYSTEM', '', 1659364376, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(375, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(376, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(377, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(378, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(379, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(380, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(381, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(382, 'SYSTEM', 'SYSTEM', '', 1659364377, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(383, 'SYSTEM', 'SYSTEM', '', 1659364379, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(384, 'SYSTEM', 'SYSTEM', '', 1659366263, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(385, 'SYSTEM', 'SYSTEM', '', 1659366263, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(386, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(387, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(388, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(389, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(390, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(391, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(392, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(393, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(394, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(395, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(396, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(397, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(398, 'SYSTEM', 'SYSTEM', '', 1659366264, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(399, 'SYSTEM', 'SYSTEM', '', 1659366267, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(400, 'John_Doe', 'Thiago', '127.0.0.1', 1659366359, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(401, 'John_Doe', 'Thiago', '127.0.0.1', 1659366366, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(402, 'John_Doe', 'Thiago', '127.0.0.1', 1659366429, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(403, 'John_Doe', 'Thiago', '127.0.0.1', 1659366539, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(404, 'John_Doe', 'Thiago', '127.0.0.1', 1659366605, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(405, 'John_Doe', 'Thiago', '127.0.0.1', 1659366607, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(406, 'John_Doe', 'Thiago', '127.0.0.1', 1659366666, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(407, 'John_Doe', 'Thiago', '127.0.0.1', 1659366736, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(408, 'John_Doe', '', '255.255.255.255', 1659366737, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(409, 'SYSTEM', 'SYSTEM', '', 1659367212, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(410, 'SYSTEM', 'SYSTEM', '', 1659367213, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(411, 'SYSTEM', 'SYSTEM', '', 1659367213, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(412, 'SYSTEM', 'SYSTEM', '', 1659367213, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(413, 'SYSTEM', 'SYSTEM', '', 1659367213, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(414, 'SYSTEM', 'SYSTEM', '', 1659367213, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(415, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(416, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(417, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(418, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(419, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(420, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(421, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(422, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(423, 'SYSTEM', 'SYSTEM', '', 1659367214, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(424, 'SYSTEM', 'SYSTEM', '', 1659367216, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(425, 'John_Doe', 'Thiago', '127.0.0.1', 1659367257, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(426, 'John_Doe', 'Thiago', '127.0.0.1', 1659367266, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(427, 'John_Doe', 'Thiago', '127.0.0.1', 1659367273, 'John Doe (Thiago) comprou 28 investimentos de Maze Bank [ID: 1] e pagou US$ 3.472.', 15),
(428, 'John_Doe', 'Thiago', '127.0.0.1', 1659367278, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(429, 'John_Doe', 'Thiago', '127.0.0.1', 1659367284, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(430, 'SYSTEM', 'SYSTEM', '', 1659367288, 'SYSTEM: [INVESTIMENTOS] Investimento 0 alterado de 123.98 para 124.22.', 5),
(431, 'John_Doe', 'Thiago', '127.0.0.1', 1659367288, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(432, 'John_Doe', 'Thiago', '127.0.0.1', 1659367288, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(433, 'John_Doe', 'Thiago', '127.0.0.1', 1659367290, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(434, 'John_Doe', 'Thiago', '127.0.0.1', 1659367344, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(435, 'John_Doe', '', '255.255.255.255', 1659367364, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(436, 'SYSTEM', 'SYSTEM', '', 1659367388, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(437, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(438, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(439, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(440, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(441, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(442, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(443, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(444, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(445, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(446, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(447, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(448, 'SYSTEM', 'SYSTEM', '', 1659367389, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(449, 'SYSTEM', 'SYSTEM', '', 1659367390, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(450, 'SYSTEM', 'SYSTEM', '', 1659367390, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(451, 'SYSTEM', 'SYSTEM', '', 1659367392, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(452, 'John_Doe', 'Thiago', '127.0.0.1', 1659367455, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(453, 'John_Doe', 'Thiago', '127.0.0.1', 1659367461, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(454, 'John_Doe', 'Thiago', '127.0.0.1', 1659367466, 'John Doe (Thiago) criou o investimento Supa-Save [ID: 2] como uma ação.', 1),
(455, 'John_Doe', 'Thiago', '127.0.0.1', 1659367467, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 1 Supa-Save', 3);
INSERT INTO `serverlogs` (`ID`, `character`, `user`, `ip`, `timestamp`, `log`, `type`) VALUES
(456, 'John_Doe', 'Thiago', '127.0.0.1', 1659367471, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2', 3),
(457, 'John_Doe', 'Thiago', '127.0.0.1', 1659367482, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para SUSA', 1),
(458, 'John_Doe', 'Thiago', '127.0.0.1', 1659367482, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 símbolo SUSA', 3),
(459, 'John_Doe', 'Thiago', '127.0.0.1', 1659367757, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para valorcompra 234', 1),
(460, 'John_Doe', 'Thiago', '127.0.0.1', 1659367757, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 símbolo valorcompra 234.34', 3),
(461, 'John_Doe', 'Thiago', '127.0.0.1', 1659367764, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para valorvenda 234.', 1),
(462, 'John_Doe', 'Thiago', '127.0.0.1', 1659367764, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 símbolo valorvenda 234.34', 3),
(463, 'John_Doe', 'Thiago', '127.0.0.1', 1659367777, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para maxslots 200', 1),
(464, 'John_Doe', 'Thiago', '127.0.0.1', 1659367777, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 símbolo maxslots 200', 3),
(465, 'John_Doe', 'Thiago', '127.0.0.1', 1659367793, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para SUSA', 1),
(466, 'John_Doe', 'Thiago', '127.0.0.1', 1659367793, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 símbolo SUSA', 3),
(467, 'John_Doe', 'Thiago', '127.0.0.1', 1659367800, 'John Doe (Thiago) alterou o valor de compra do investimento ID 2 para US$ 219.22', 1),
(468, 'John_Doe', 'Thiago', '127.0.0.1', 1659367800, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 valorcompra 219.23', 3),
(469, 'John_Doe', 'Thiago', '127.0.0.1', 1659367805, 'John Doe (Thiago) alterou o valor de venda do investimento ID 2 para US$ 219.22', 1),
(470, 'John_Doe', 'Thiago', '127.0.0.1', 1659367805, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 valorvenda 219.23', 3),
(471, 'John_Doe', 'Thiago', '127.0.0.1', 1659367814, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 2 para 200', 1),
(472, 'John_Doe', 'Thiago', '127.0.0.1', 1659367814, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 maxslots 200', 3),
(473, 'John_Doe', 'Thiago', '127.0.0.1', 1659367845, 'John Doe (Thiago) alterou a descrição do investimento ID 2 para Distribuidora multinacional de alimentícios', 1),
(474, 'John_Doe', 'Thiago', '127.0.0.1', 1659367845, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 Descrição Distribuidora multinacional de alimentícios', 3),
(475, 'John_Doe', 'Thiago', '127.0.0.1', 1659367851, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2', 3),
(476, 'John_Doe', 'Thiago', '127.0.0.1', 1659367858, 'John Doe (Thiago) alterou a capital do investimento ID 2 para US$ 1,212,423.25', 1),
(477, 'John_Doe', 'Thiago', '127.0.0.1', 1659367858, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 capital 1212423.23', 3),
(478, 'John_Doe', 'Thiago', '127.0.0.1', 1659367864, 'John Doe (Thiago) alterou a capital do investimento ID 2 para US$ 1,212,423,168.00', 1),
(479, 'John_Doe', 'Thiago', '127.0.0.1', 1659367864, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 capital 1212423121.23', 3),
(480, 'John_Doe', 'Thiago', '127.0.0.1', 1659367884, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(481, 'John_Doe', 'Thiago', '127.0.0.1', 1659367894, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(482, 'SYSTEM', 'SYSTEM', '', 1659367898, 'SYSTEM: [INVESTIMENTOS] Investimento 0 alterado de 123.98 para 123.81.', 5),
(483, 'John_Doe', 'Thiago', '127.0.0.1', 1659367899, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(484, 'John_Doe', 'Thiago', '127.0.0.1', 1659367899, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(485, 'John_Doe', 'Thiago', '127.0.0.1', 1659367907, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(486, 'John_Doe', 'Thiago', '127.0.0.1', 1659367909, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(487, 'SYSTEM', 'SYSTEM', '', 1659368136, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(488, 'SYSTEM', 'SYSTEM', '', 1659368136, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(489, 'SYSTEM', 'SYSTEM', '', 1659368136, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(490, 'SYSTEM', 'SYSTEM', '', 1659368136, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(491, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(492, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(493, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(494, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(495, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(496, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(497, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(498, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(499, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(500, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(501, 'SYSTEM', 'SYSTEM', '', 1659368137, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(502, 'SYSTEM', 'SYSTEM', '', 1659368139, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(503, 'John_Doe', 'Thiago', '127.0.0.1', 1659368165, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(504, 'SYSTEM', 'SYSTEM', '', 1659368325, 'SYSTEM: [INVESTIMENTOS] Investimento 1 alterado de 123.98 para 123.77.', 5),
(505, 'SYSTEM', 'SYSTEM', '', 1659368325, 'SYSTEM: [INVESTIMENTOS] Investimento 2 alterado de 219.22 para 219.27.', 5),
(506, 'John_Doe', 'Thiago', '127.0.0.1', 1659368325, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(507, 'John_Doe', 'Thiago', '127.0.0.1', 1659368325, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(508, 'John_Doe', 'Thiago', '127.0.0.1', 1659368330, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(509, 'John_Doe', 'Thiago', '127.0.0.1', 1659368370, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(510, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(511, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(512, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(513, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(514, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(515, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(516, 'SYSTEM', 'SYSTEM', '', 1659368479, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(517, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(518, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(519, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(520, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(521, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(522, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(523, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(524, 'SYSTEM', 'SYSTEM', '', 1659368480, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(525, 'SYSTEM', 'SYSTEM', '', 1659368482, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(526, 'John_Doe', 'Thiago', '127.0.0.1', 1659368517, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(527, 'SYSTEM', 'SYSTEM', '', 1659368525, '[SISTEMA] Investimento 1 alterado de 123.77 para 123.82', 15),
(528, 'SYSTEM', 'SYSTEM', '', 1659368526, '[SISTEMA] Investimento 2 alterado de 219.27 para 219.69', 15),
(529, 'John_Doe', 'Thiago', '127.0.0.1', 1659368526, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(530, 'John_Doe', 'Thiago', '127.0.0.1', 1659368526, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(531, 'John_Doe', 'Thiago', '127.0.0.1', 1659368529, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(532, 'John_Doe', 'Thiago', '127.0.0.1', 1659368537, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(533, 'John_Doe', 'Thiago', '127.0.0.1', 1659368539, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(534, 'John_Doe', 'Thiago', '127.0.0.1', 1659368540, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(535, 'SYSTEM', 'SYSTEM', '', 1659368542, '[SISTEMA] Investimento 1 alterado de 123.82 para 123.94', 15),
(536, 'SYSTEM', 'SYSTEM', '', 1659368542, '[SISTEMA] Investimento 2 alterado de 219.69 para 219.33', 15),
(537, 'John_Doe', 'Thiago', '127.0.0.1', 1659368543, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(538, 'John_Doe', 'Thiago', '127.0.0.1', 1659368543, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(539, 'John_Doe', 'Thiago', '127.0.0.1', 1659368544, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(540, 'John_Doe', 'Thiago', '127.0.0.1', 1659368584, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(541, 'John_Doe', 'Thiago', '127.0.0.1', 1659368590, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(542, 'John_Doe', 'Thiago', '127.0.0.1', 1659368593, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(543, 'John_Doe', 'Thiago', '127.0.0.1', 1659368610, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(544, 'SYSTEM', 'SYSTEM', '', 1659368614, '[SISTEMA] Investimento 1 alterado de 123.94 para 123.71', 15),
(545, 'SYSTEM', 'SYSTEM', '', 1659368614, '[SISTEMA] Investimento 2 alterado de 219.33 para 219.18', 15),
(546, 'John_Doe', 'Thiago', '127.0.0.1', 1659368614, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(547, 'John_Doe', 'Thiago', '127.0.0.1', 1659368614, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(548, 'John_Doe', 'Thiago', '127.0.0.1', 1659368615, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(549, 'John_Doe', 'Thiago', '127.0.0.1', 1659368694, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(550, 'SYSTEM', 'SYSTEM', '', 1659368731, '[SISTEMA] Investimento 1 alterado de 123.71 para 123.50', 15),
(551, 'SYSTEM', 'SYSTEM', '', 1659368732, '[SISTEMA] Investimento 2 alterado de 219.18 para 219.53', 15),
(552, 'John_Doe', 'Thiago', '127.0.0.1', 1659368732, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(553, 'John_Doe', 'Thiago', '127.0.0.1', 1659368732, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(554, 'SYSTEM', 'SYSTEM', '', 1659368732, '[SISTEMA] Investimento 1 alterado de 123.50 para 123.40', 15),
(555, 'SYSTEM', 'SYSTEM', '', 1659368733, '[SISTEMA] Investimento 2 alterado de 219.53 para 219.88', 15),
(556, 'John_Doe', 'Thiago', '127.0.0.1', 1659368733, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(557, 'John_Doe', 'Thiago', '127.0.0.1', 1659368733, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(558, 'SYSTEM', 'SYSTEM', '', 1659368733, '[SISTEMA] Investimento 1 alterado de 123.40 para 123.16', 15),
(559, 'SYSTEM', 'SYSTEM', '', 1659368733, '[SISTEMA] Investimento 2 alterado de 219.88 para 219.77', 15),
(560, 'John_Doe', 'Thiago', '127.0.0.1', 1659368733, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(561, 'John_Doe', 'Thiago', '127.0.0.1', 1659368733, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(562, 'SYSTEM', 'SYSTEM', '', 1659368733, '[SISTEMA] Investimento 1 alterado de 123.16 para 122.95', 15),
(563, 'SYSTEM', 'SYSTEM', '', 1659368733, '[SISTEMA] Investimento 2 alterado de 219.77 para 219.99', 15),
(564, 'John_Doe', 'Thiago', '127.0.0.1', 1659368734, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(565, 'John_Doe', 'Thiago', '127.0.0.1', 1659368734, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(566, 'SYSTEM', 'SYSTEM', '', 1659368734, '[SISTEMA] Investimento 1 alterado de 122.95 para 123.06', 15),
(567, 'SYSTEM', 'SYSTEM', '', 1659368734, '[SISTEMA] Investimento 2 alterado de 219.99 para 219.62', 15),
(568, 'John_Doe', 'Thiago', '127.0.0.1', 1659368734, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(569, 'John_Doe', 'Thiago', '127.0.0.1', 1659368734, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(570, 'John_Doe', 'Thiago', '127.0.0.1', 1659368736, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(571, 'John_Doe', 'Thiago', '127.0.0.1', 1659368783, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(572, 'John_Doe', 'Thiago', '127.0.0.1', 1659368787, 'John Doe (Thiago) vendeu 28 investimentos de  [ID: 1] e recebeu US$ 3.444.', 15),
(573, 'John_Doe', 'Thiago', '127.0.0.1', 1659369054, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(574, 'John_Doe', 'Thiago', '127.0.0.1', 1659369057, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(575, 'John_Doe', 'Thiago', '127.0.0.1', 1659369059, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(576, 'John_Doe', 'Thiago', '127.0.0.1', 1659369071, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(577, 'John_Doe', 'Thiago', '127.0.0.1', 1659369077, 'John Doe (Thiago) comprou 50 investimentos de Supa-Save [ID: 2] e pagou US$ 11.000.', 15),
(578, 'John_Doe', 'Thiago', '127.0.0.1', 1659369081, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(579, 'John_Doe', 'Thiago', '127.0.0.1', 1659369086, 'John Doe (Thiago) comprou 20 investimentos de Maze Bank [ID: 1] e pagou US$ 2.460.', 15),
(580, 'John_Doe', 'Thiago', '127.0.0.1', 1659369090, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(581, 'John_Doe', 'Thiago', '127.0.0.1', 1659369104, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(582, 'John_Doe', '', '255.255.255.255', 1659369679, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(583, 'SYSTEM', 'SYSTEM', '', 1659381475, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(584, 'SYSTEM', 'SYSTEM', '', 1659381476, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(585, 'SYSTEM', 'SYSTEM', '', 1659381476, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(586, 'SYSTEM', 'SYSTEM', '', 1659381476, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(587, 'SYSTEM', 'SYSTEM', '', 1659381476, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(588, 'SYSTEM', 'SYSTEM', '', 1659381476, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(589, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(590, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(591, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(592, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(593, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(594, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(595, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(596, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(597, 'SYSTEM', 'SYSTEM', '', 1659381477, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(598, 'SYSTEM', 'SYSTEM', '', 1659381479, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(599, 'John_Doe', 'Thiago', '127.0.0.1', 1659381513, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(600, 'John_Doe', 'Thiago', '127.0.0.1', 1659381541, 'John Doe (Thiago) [127.0.0.1]: /ir pos 2216.5703, 1588.0938, 1006.0000', 3),
(601, 'John_Doe', 'Thiago', '127.0.0.1', 1659381544, 'John Doe (Thiago) [127.0.0.1]: /ir pos 2216.5703 1588.0938 1006.0000', 3),
(602, 'John_Doe', 'Thiago', '127.0.0.1', 1659381546, 'John Doe (Thiago) [127.0.0.1]: /ir pos 2216.5703 1588.0938 1006.0000', 3),
(603, 'John_Doe', 'Thiago', '127.0.0.1', 1659381684, 'John Doe (Thiago) [127.0.0.1]: /setarinterior ', 3),
(604, 'John_Doe', 'Thiago', '127.0.0.1', 1659381685, 'John Doe (Thiago) [127.0.0.1]: /setarinterior 0 1', 3),
(605, 'John_Doe', 'Thiago', '127.0.0.1', 1659381688, 'John Doe (Thiago) [127.0.0.1]: /ir pos 2216.5703 1588.0938 1006.0000', 3),
(606, 'John_Doe', 'Thiago', '127.0.0.1', 1659381693, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(607, 'John_Doe', 'Thiago', '127.0.0.1', 1659381695, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(608, 'John_Doe', 'Thiago', '127.0.0.1', 1659381695, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(609, 'John_Doe', 'Thiago', '127.0.0.1', 1659381696, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(610, 'John_Doe', 'Thiago', '127.0.0.1', 1659381697, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(611, 'John_Doe', 'Thiago', '127.0.0.1', 1659381698, 'John Doe (Thiago) [127.0.0.1]: /z 1', 3),
(612, 'John_Doe', 'Thiago', '127.0.0.1', 1659381702, 'John Doe (Thiago) [127.0.0.1]: /z 3', 3),
(613, 'John_Doe', 'Thiago', '127.0.0.1', 1659381947, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(614, 'John_Doe', 'Thiago', '127.0.0.1', 1659381952, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(615, 'John_Doe', '', '255.255.255.255', 1659381977, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(616, 'SYSTEM', 'SYSTEM', '', 1659389254, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(617, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(618, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(619, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(620, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(621, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(622, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(623, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(624, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(625, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(626, 'SYSTEM', 'SYSTEM', '', 1659389255, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(627, 'SYSTEM', 'SYSTEM', '', 1659389256, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(628, 'SYSTEM', 'SYSTEM', '', 1659389256, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(629, 'SYSTEM', 'SYSTEM', '', 1659389256, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(630, 'SYSTEM', 'SYSTEM', '', 1659389257, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(631, 'SYSTEM', 'SYSTEM', '', 1659389259, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(632, 'John_Doe', 'Thiago', '127.0.0.1', 1659389302, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(633, 'John_Doe', 'Thiago', '127.0.0.1', 1659389382, 'John Doe (Thiago) [127.0.0.1]: /setarinterior 0 0', 3),
(634, 'John_Doe', 'Thiago', '127.0.0.1', 1659389387, 'John Doe (Thiago) [127.0.0.1]: /vw 0 0', 3),
(635, 'John_Doe', 'Thiago', '127.0.0.1', 1659389393, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(636, 'John_Doe', 'Thiago', '127.0.0.1', 1659389439, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(637, 'John_Doe', 'Thiago', '127.0.0.1', 1659389444, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(638, 'John_Doe', 'Thiago', '127.0.0.1', 1659389447, 'John Doe (Thiago) criou o investimento Maze Bank [ID: 1] como uma ação.', 1),
(639, 'John_Doe', 'Thiago', '127.0.0.1', 1659389447, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 1 Maze Bank', 3),
(640, 'John_Doe', 'Thiago', '127.0.0.1', 1659389455, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 ', 3),
(641, 'John_Doe', 'Thiago', '127.0.0.1', 1659389461, 'John Doe (Thiago) alterou o símbolo do investimento ID 1 para MZBK', 1),
(642, 'John_Doe', 'Thiago', '127.0.0.1', 1659389461, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 símbolo MZBK', 3),
(643, 'John_Doe', 'Thiago', '127.0.0.1', 1659389632, 'John Doe (Thiago) alterou a descrição do investimento ID 1 para Cadeia de bancos de San Andreas', 1),
(644, 'John_Doe', 'Thiago', '127.0.0.1', 1659389633, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 descrição Cadeia de bancos de San Andreas', 3),
(645, 'John_Doe', 'Thiago', '127.0.0.1', 1659389670, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ 4,000,000.00', 1),
(646, 'John_Doe', 'Thiago', '127.0.0.1', 1659389670, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 4000000.00', 3),
(647, 'John_Doe', 'Thiago', '127.0.0.1', 1659389776, 'John Doe (Thiago) alterou o valor de compra do investimento ID 1 para US$ 283.11', 1),
(648, 'John_Doe', 'Thiago', '127.0.0.1', 1659389776, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 valorcompra 283.12', 3),
(649, 'John_Doe', 'Thiago', '127.0.0.1', 1659389780, 'John Doe (Thiago) alterou o valor de venda do investimento ID 1 para US$ 283.11', 1),
(650, 'John_Doe', 'Thiago', '127.0.0.1', 1659389780, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 valorvenda 283.12', 3),
(651, 'John_Doe', 'Thiago', '127.0.0.1', 1659389794, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 1 para 300', 1),
(652, 'John_Doe', 'Thiago', '127.0.0.1', 1659389794, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 maxslots 300', 3),
(653, 'John_Doe', 'Thiago', '127.0.0.1', 1659389799, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(654, 'John_Doe', 'Thiago', '127.0.0.1', 1659389820, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(655, 'John_Doe', 'Thiago', '127.0.0.1', 1659389820, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(656, 'John_Doe', 'Thiago', '127.0.0.1', 1659389822, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(657, 'John_Doe', '', '255.255.255.255', 1659389866, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(658, 'SYSTEM', 'SYSTEM', '', 1659390047, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(659, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(660, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(661, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(662, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(663, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(664, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(665, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(666, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(667, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(668, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(669, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(670, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(671, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(672, 'SYSTEM', 'SYSTEM', '', 1659390048, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(673, 'SYSTEM', 'SYSTEM', '', 1659390051, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(674, 'John_Doe', 'Thiago', '127.0.0.1', 1659390138, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(675, 'SYSTEM', 'SYSTEM', '', 1659390144, '[SISTEMA] Investimento 1 alterado de 283.11 para 282.80', 15),
(676, 'John_Doe', 'Thiago', '127.0.0.1', 1659390145, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(677, 'John_Doe', 'Thiago', '127.0.0.1', 1659390145, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(678, 'John_Doe', 'Thiago', '127.0.0.1', 1659390148, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(679, 'John_Doe', 'Thiago', '127.0.0.1', 1659390154, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(680, 'John_Doe', 'Thiago', '127.0.0.1', 1659390155, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(681, 'SYSTEM', 'SYSTEM', '', 1659390158, '[SISTEMA] Investimento 1 alterado de 282.80 para 282.61', 15),
(682, 'John_Doe', 'Thiago', '127.0.0.1', 1659390158, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(683, 'John_Doe', 'Thiago', '127.0.0.1', 1659390158, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(684, 'John_Doe', 'Thiago', '127.0.0.1', 1659390159, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(685, 'John_Doe', 'Thiago', '127.0.0.1', 1659390183, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(686, 'SYSTEM', 'SYSTEM', '', 1659390186, '[SISTEMA] Investimento 1 alterado de 282.61 para 282.61', 15),
(687, 'John_Doe', 'Thiago', '127.0.0.1', 1659390186, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(688, 'John_Doe', 'Thiago', '127.0.0.1', 1659390186, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(689, 'John_Doe', 'Thiago', '127.0.0.1', 1659390188, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(690, 'John_Doe', 'Thiago', '127.0.0.1', 1659390226, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(691, 'SYSTEM', 'SYSTEM', '', 1659390229, '[SISTEMA] Investimento 1 alterado de 282.61 para 282.52', 15),
(692, 'John_Doe', 'Thiago', '127.0.0.1', 1659390229, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(693, 'John_Doe', 'Thiago', '127.0.0.1', 1659390229, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(694, 'John_Doe', 'Thiago', '127.0.0.1', 1659390231, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(695, 'John_Doe', 'Thiago', '127.0.0.1', 1659390235, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(696, 'SYSTEM', 'SYSTEM', '', 1659390278, '[SISTEMA] Investimento 1 alterado de 282.52 para 282.21', 15),
(697, 'John_Doe', 'Thiago', '127.0.0.1', 1659390278, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(698, 'John_Doe', 'Thiago', '127.0.0.1', 1659390278, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(699, 'John_Doe', 'Thiago', '127.0.0.1', 1659390279, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(700, 'John_Doe', '', '127.0.0.1', 1659390323, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(701, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(702, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(703, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(704, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(705, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(706, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(707, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(708, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(709, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(710, 'SYSTEM', 'SYSTEM', '', 1659390335, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(711, 'SYSTEM', 'SYSTEM', '', 1659390336, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(712, 'SYSTEM', 'SYSTEM', '', 1659390336, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(713, 'SYSTEM', 'SYSTEM', '', 1659390336, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(714, 'SYSTEM', 'SYSTEM', '', 1659390336, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(715, 'SYSTEM', 'SYSTEM', '', 1659390336, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(716, 'SYSTEM', 'SYSTEM', '', 1659390337, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(717, 'John_Doe', 'Thiago', '127.0.0.1', 1659390361, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(718, 'John_Doe', 'Thiago', '127.0.0.1', 1659390374, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento ', 3),
(719, 'John_Doe', 'Thiago', '127.0.0.1', 1659390381, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ .\',,\'*),.\'*.00', 1),
(720, 'John_Doe', 'Thiago', '127.0.0.1', 1659390381, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 4000000000', 3),
(721, 'John_Doe', 'Thiago', '127.0.0.1', 1659390383, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ 400,000,000.00', 1),
(722, 'John_Doe', 'Thiago', '127.0.0.1', 1659390383, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 400000000', 3),
(723, 'John_Doe', 'Thiago', '127.0.0.1', 1659390385, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ 40,000,000.00', 1),
(724, 'John_Doe', 'Thiago', '127.0.0.1', 1659390385, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 40000000', 3),
(725, 'John_Doe', 'Thiago', '127.0.0.1', 1659390387, 'John Doe (Thiago) alterou a capital do investimento ID 1 para US$ 4,000,000.00', 1),
(726, 'John_Doe', 'Thiago', '127.0.0.1', 1659390387, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 1 capital 4000000', 3),
(727, 'John_Doe', 'Thiago', '127.0.0.1', 1659390403, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(728, 'SYSTEM', 'SYSTEM', '', 1659390412, '[SISTEMA] Investimento 1 alterado de 282.21 para 282.75', 15),
(729, 'John_Doe', 'Thiago', '127.0.0.1', 1659390413, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(730, 'John_Doe', 'Thiago', '127.0.0.1', 1659390413, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(731, 'John_Doe', 'Thiago', '127.0.0.1', 1659390414, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(732, 'John_Doe', 'Thiago', '127.0.0.1', 1659390427, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(733, 'John_Doe', 'Thiago', '127.0.0.1', 1659390429, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(734, 'SYSTEM', 'SYSTEM', '', 1659390431, '[SISTEMA] Investimento 1 alterado de 282.75 para 282.58', 15),
(735, 'John_Doe', 'Thiago', '127.0.0.1', 1659390431, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(736, 'John_Doe', 'Thiago', '127.0.0.1', 1659390431, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(737, 'John_Doe', 'Thiago', '127.0.0.1', 1659390432, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(738, 'John_Doe', '', '127.0.0.1', 1659390542, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(739, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(740, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(741, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(742, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(743, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(744, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(745, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(746, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(747, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(748, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(749, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(750, 'SYSTEM', 'SYSTEM', '', 1659390554, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(751, 'SYSTEM', 'SYSTEM', '', 1659390555, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(752, 'SYSTEM', 'SYSTEM', '', 1659390555, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(753, 'SYSTEM', 'SYSTEM', '', 1659390555, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(754, 'SYSTEM', 'SYSTEM', '', 1659390556, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(755, 'John_Doe', 'Thiago', '127.0.0.1', 1659390576, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(756, 'John_Doe', 'Thiago', '127.0.0.1', 1659390586, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(757, 'SYSTEM', 'SYSTEM', '', 1659390592, '[SISTEMA] Investimento 1 alterado de 282.58 para 282.43', 15),
(758, 'John_Doe', 'Thiago', '127.0.0.1', 1659390592, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(759, 'John_Doe', 'Thiago', '127.0.0.1', 1659390592, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(760, 'John_Doe', 'Thiago', '127.0.0.1', 1659390594, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(761, 'SYSTEM', 'SYSTEM', '', 1659390604, '[SISTEMA] Investimento 1 alterado de 282.44 para 282.04', 15),
(762, 'John_Doe', 'Thiago', '127.0.0.1', 1659390604, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(763, 'John_Doe', 'Thiago', '127.0.0.1', 1659390604, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(764, 'SYSTEM', 'SYSTEM', '', 1659390605, '[SISTEMA] Investimento 1 alterado de 282.04 para 281.59', 15),
(765, 'John_Doe', 'Thiago', '127.0.0.1', 1659390605, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(766, 'John_Doe', 'Thiago', '127.0.0.1', 1659390605, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(767, 'SYSTEM', 'SYSTEM', '', 1659390606, '[SISTEMA] Investimento 1 alterado de 281.59 para 281.45', 15),
(768, 'John_Doe', 'Thiago', '127.0.0.1', 1659390606, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(769, 'John_Doe', 'Thiago', '127.0.0.1', 1659390606, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(770, 'SYSTEM', 'SYSTEM', '', 1659390606, '[SISTEMA] Investimento 1 alterado de 281.45 para 281.03', 15),
(771, 'John_Doe', 'Thiago', '127.0.0.1', 1659390606, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(772, 'John_Doe', 'Thiago', '127.0.0.1', 1659390607, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(773, 'SYSTEM', 'SYSTEM', '', 1659390607, '[SISTEMA] Investimento 1 alterado de 281.03 para 280.91', 15),
(774, 'John_Doe', 'Thiago', '127.0.0.1', 1659390607, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(775, 'John_Doe', 'Thiago', '127.0.0.1', 1659390607, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(776, 'SYSTEM', 'SYSTEM', '', 1659390607, '[SISTEMA] Investimento 1 alterado de 280.91 para 280.94', 15),
(777, 'John_Doe', 'Thiago', '127.0.0.1', 1659390607, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(778, 'John_Doe', 'Thiago', '127.0.0.1', 1659390607, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(779, 'John_Doe', 'Thiago', '127.0.0.1', 1659390610, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(780, 'John_Doe', 'Thiago', '127.0.0.1', 1659390792, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(781, 'John_Doe', 'Thiago', '127.0.0.1', 1659390885, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(782, 'John_Doe', 'Thiago', '127.0.0.1', 1659390891, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(783, 'John_Doe', 'Thiago', '127.0.0.1', 1659390913, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(784, 'John_Doe', 'Thiago', '127.0.0.1', 1659390942, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(785, 'John_Doe', 'Thiago', '127.0.0.1', 1659390954, 'John Doe (Thiago) criou o investimento Burger Shot [ID: 2] como uma ação.', 1),
(786, 'John_Doe', 'Thiago', '127.0.0.1', 1659390954, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 1 Burger Shot', 3),
(787, 'John_Doe', 'Thiago', '127.0.0.1', 1659390963, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 ', 3),
(788, 'John_Doe', 'Thiago', '127.0.0.1', 1659390969, 'John Doe (Thiago) alterou o símbolo do investimento ID 2 para BGR', 1),
(789, 'John_Doe', 'Thiago', '127.0.0.1', 1659390969, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 Símbolo BGR', 3),
(790, 'John_Doe', 'Thiago', '127.0.0.1', 1659391059, 'John Doe (Thiago) alterou a descrição do investimento ID 2 para Maior rede de fast-food de San Andreas', 1),
(791, 'John_Doe', 'Thiago', '127.0.0.1', 1659391060, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 descrição Maior rede de fast-food de San Andreas', 3),
(792, 'John_Doe', 'Thiago', '127.0.0.1', 1659391070, 'John Doe (Thiago) alterou a capital do investimento ID 2 para US$ 1,500,000.00', 1),
(793, 'John_Doe', 'Thiago', '127.0.0.1', 1659391070, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 capital 1500000', 3),
(794, 'John_Doe', 'Thiago', '127.0.0.1', 1659391079, 'John Doe (Thiago) alterou o valor de compra do investimento ID 2 para US$ 123.31', 1),
(795, 'John_Doe', 'Thiago', '127.0.0.1', 1659391079, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 valorcompra 123.32', 3),
(796, 'John_Doe', 'Thiago', '127.0.0.1', 1659391084, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 2 para 100', 1),
(797, 'John_Doe', 'Thiago', '127.0.0.1', 1659391085, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 maxslots 100', 3),
(798, 'John_Doe', 'Thiago', '127.0.0.1', 1659391088, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 2 para 150', 1),
(799, 'John_Doe', 'Thiago', '127.0.0.1', 1659391088, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 2 maxslots 150', 3),
(800, 'John_Doe', 'Thiago', '127.0.0.1', 1659391097, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(801, 'John_Doe', 'Thiago', '127.0.0.1', 1659391101, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(802, 'SYSTEM', 'SYSTEM', '', 1659391104, '[SISTEMA] Investimento 1 alterado de 280.94 para 280.86', 15),
(803, 'SYSTEM', 'SYSTEM', '', 1659391104, '[SISTEMA] Investimento 2 alterado de 123.31 para 123.12', 15),
(804, 'John_Doe', 'Thiago', '127.0.0.1', 1659391105, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(805, 'John_Doe', 'Thiago', '127.0.0.1', 1659391105, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(806, 'John_Doe', 'Thiago', '127.0.0.1', 1659391106, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(807, 'John_Doe', 'Thiago', '127.0.0.1', 1659391120, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(808, 'John_Doe', 'Thiago', '127.0.0.1', 1659391130, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(809, 'John_Doe', 'Thiago', '127.0.0.1', 1659391139, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(810, 'John_Doe', 'Thiago', '127.0.0.1', 1659391170, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(811, 'John_Doe', 'Thiago', '127.0.0.1', 1659391183, 'John Doe (Thiago) criou o investimento Redwood Cigarettes [ID: 3] como uma ação.', 1),
(812, 'John_Doe', 'Thiago', '127.0.0.1', 1659391183, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 1 Redwood Cigarettes', 3),
(813, 'John_Doe', 'Thiago', '127.0.0.1', 1659391187, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3', 3),
(814, 'John_Doe', 'Thiago', '127.0.0.1', 1659391192, 'John Doe (Thiago) alterou o símbolo do investimento ID 3 para RWC', 1),
(815, 'John_Doe', 'Thiago', '127.0.0.1', 1659391192, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 símbolo RWC', 3),
(816, 'John_Doe', 'Thiago', '127.0.0.1', 1659391218, 'John Doe (Thiago) alterou a descrição do investimento ID 3 para Maior fabricante de cigarros de San Andreas', 1),
(817, 'John_Doe', 'Thiago', '127.0.0.1', 1659391218, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 descrição Maior fabricante de cigarros de San Andreas', 3),
(818, 'John_Doe', 'Thiago', '127.0.0.1', 1659391228, 'John Doe (Thiago) alterou a capital do investimento ID 3 para US$ 2,300,000.00', 1),
(819, 'John_Doe', 'Thiago', '127.0.0.1', 1659391228, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 capital 2300000', 3),
(820, 'John_Doe', 'Thiago', '127.0.0.1', 1659391235, 'John Doe (Thiago) alterou a capital do investimento ID 3 para US$ 1,300,000.00', 1),
(821, 'John_Doe', 'Thiago', '127.0.0.1', 1659391235, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 capital 1300000', 3),
(822, 'John_Doe', 'Thiago', '127.0.0.1', 1659391248, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 valorcompra 98,33', 3),
(823, 'John_Doe', 'Thiago', '127.0.0.1', 1659391252, 'John Doe (Thiago) alterou o valor de compra do investimento ID 3 para US$ 98.33', 1),
(824, 'John_Doe', 'Thiago', '127.0.0.1', 1659391252, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 valorcompra 98.33', 3),
(825, 'John_Doe', 'Thiago', '127.0.0.1', 1659391263, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 3 para 200', 1),
(826, 'John_Doe', 'Thiago', '127.0.0.1', 1659391263, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 3 maxslots 200', 3),
(827, 'John_Doe', 'Thiago', '127.0.0.1', 1659391301, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(828, 'John_Doe', 'Thiago', '127.0.0.1', 1659391303, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(829, 'SYSTEM', 'SYSTEM', '', 1659391307, '[SISTEMA] Investimento 1 alterado de 280.86 para 281.28', 15),
(830, 'SYSTEM', 'SYSTEM', '', 1659391307, '[SISTEMA] Investimento 2 alterado de 123.12 para 123.25', 15),
(831, 'SYSTEM', 'SYSTEM', '', 1659391307, '[SISTEMA] Investimento 3 alterado de 98.33 para 98.35', 15),
(832, 'John_Doe', 'Thiago', '127.0.0.1', 1659391307, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(833, 'John_Doe', 'Thiago', '127.0.0.1', 1659391307, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(834, 'John_Doe', 'Thiago', '127.0.0.1', 1659391309, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(835, 'John_Doe', 'Thiago', '127.0.0.1', 1659391313, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(836, 'SYSTEM', 'SYSTEM', '', 1659391315, '[SISTEMA] Investimento 1 alterado de 281.28 para 281.73', 15),
(837, 'SYSTEM', 'SYSTEM', '', 1659391315, '[SISTEMA] Investimento 2 alterado de 123.25 para 123.29', 15),
(838, 'SYSTEM', 'SYSTEM', '', 1659391316, '[SISTEMA] Investimento 3 alterado de 98.35 para 98.32', 15),
(839, 'John_Doe', 'Thiago', '127.0.0.1', 1659391316, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(840, 'John_Doe', 'Thiago', '127.0.0.1', 1659391316, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(841, 'John_Doe', 'Thiago', '127.0.0.1', 1659391316, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(842, 'John_Doe', 'Thiago', '127.0.0.1', 1659391325, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(843, 'John_Doe', 'Thiago', '127.0.0.1', 1659391347, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(844, 'John_Doe', 'Thiago', '127.0.0.1', 1659391382, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(845, 'John_Doe', 'Thiago', '127.0.0.1', 1659391384, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 2', 3),
(846, 'John_Doe', 'Thiago', '127.0.0.1', 1659391386, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(847, 'John_Doe', 'Thiago', '127.0.0.1', 1659391425, 'John Doe (Thiago) criou o investimento Bitcoin [ID: 4] como uma cripto.', 1),
(848, 'John_Doe', 'Thiago', '127.0.0.1', 1659391425, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 2 Bitcoin', 3),
(849, 'John_Doe', 'Thiago', '127.0.0.1', 1659391434, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4', 3),
(850, 'John_Doe', 'Thiago', '127.0.0.1', 1659391438, 'John Doe (Thiago) alterou o símbolo do investimento ID 4 para BTC', 1),
(851, 'John_Doe', 'Thiago', '127.0.0.1', 1659391438, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 símbolo BTC', 3),
(852, 'John_Doe', 'Thiago', '127.0.0.1', 1659391452, 'John Doe (Thiago) alterou a descrição do investimento ID 4 para Bitcoin é uma rede de pagamento digital\r\noriginal', 1),
(853, 'John_Doe', 'Thiago', '127.0.0.1', 1659391452, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 descrição Bitcoin é uma rede de pagamento digital\r\noriginal', 3),
(854, 'John_Doe', 'Thiago', '127.0.0.1', 1659391461, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(855, 'John_Doe', 'Thiago', '127.0.0.1', 1659391485, 'John Doe (Thiago) alterou o valor de compra do investimento ID 4 para US$ 23,019.48', 1),
(856, 'John_Doe', 'Thiago', '127.0.0.1', 1659391485, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 valorcompra 23019.48', 3),
(857, 'John_Doe', 'Thiago', '127.0.0.1', 1659391499, 'John Doe (Thiago) alterou a capital do investimento ID 4 para US$ 328,000,000.00', 1),
(858, 'John_Doe', 'Thiago', '127.0.0.1', 1659391499, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 capital 328000000', 3),
(859, 'John_Doe', 'Thiago', '127.0.0.1', 1659391505, 'John Doe (Thiago) alterou a capital do investimento ID 4 para US$ 128,000,000.00', 1),
(860, 'John_Doe', 'Thiago', '127.0.0.1', 1659391505, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 capital 128000000', 3),
(861, 'John_Doe', 'Thiago', '127.0.0.1', 1659391512, 'John Doe (Thiago) alterou a descrição do investimento ID 4 para Bitcoin é uma rede de pagamento digital\r\noriginal', 1),
(862, 'John_Doe', 'Thiago', '127.0.0.1', 1659391512, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 descrição Bitcoin é uma rede de pagamento digital\r\noriginal', 3),
(863, 'John_Doe', 'Thiago', '127.0.0.1', 1659391516, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(864, 'John_Doe', 'Thiago', '127.0.0.1', 1659391527, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 4 para 500', 1),
(865, 'John_Doe', 'Thiago', '127.0.0.1', 1659391527, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 4 maxslots 500', 3),
(866, 'SYSTEM', 'SYSTEM', '', 1659391533, '[SISTEMA] Investimento 1 alterado de 281.73 para 282.24', 15),
(867, 'SYSTEM', 'SYSTEM', '', 1659391534, '[SISTEMA] Investimento 2 alterado de 123.29 para 123.09', 15),
(868, 'SYSTEM', 'SYSTEM', '', 1659391534, '[SISTEMA] Investimento 3 alterado de 98.32 para 98.29', 15),
(869, 'SYSTEM', 'SYSTEM', '', 1659391535, '[SISTEMA] Investimento 4 alterado de 23,019.50 para 23,017.19', 15),
(870, 'John_Doe', 'Thiago', '127.0.0.1', 1659391535, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(871, 'John_Doe', 'Thiago', '127.0.0.1', 1659391535, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(872, 'John_Doe', 'Thiago', '127.0.0.1', 1659391538, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(873, 'John_Doe', 'Thiago', '127.0.0.1', 1659391542, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(874, 'John_Doe', 'Thiago', '127.0.0.1', 1659391543, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(875, 'John_Doe', 'Thiago', '127.0.0.1', 1659391574, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(876, 'John_Doe', 'Thiago', '127.0.0.1', 1659391577, 'John Doe (Thiago) criou o investimento Gold [ID: 5] como uma commodity.', 1),
(877, 'John_Doe', 'Thiago', '127.0.0.1', 1659391577, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 3 Gold', 3),
(878, 'John_Doe', 'Thiago', '127.0.0.1', 1659391580, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 5', 3),
(879, 'John_Doe', 'Thiago', '127.0.0.1', 1659391585, 'John Doe (Thiago) alterou o símbolo do investimento ID 5 para XAU', 1),
(880, 'John_Doe', 'Thiago', '127.0.0.1', 1659391585, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 5 símbolo XAU', 3),
(881, 'John_Doe', 'Thiago', '127.0.0.1', 1659391602, 'John Doe (Thiago) alterou a descrição do investimento ID 5 para Ouro (XAU) refere-se ao preço à vista do ouro', 1),
(882, 'John_Doe', 'Thiago', '127.0.0.1', 1659391602, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 5 descrição Ouro (XAU) refere-se ao preço à vista do ouro', 3),
(883, 'John_Doe', 'Thiago', '127.0.0.1', 1659391621, 'John Doe (Thiago) alterou o valor de compra do investimento ID 5 para US$ 1,772.03', 1),
(884, 'John_Doe', 'Thiago', '127.0.0.1', 1659391621, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 5 valorcompra 1772.03', 3),
(885, 'John_Doe', 'Thiago', '127.0.0.1', 1659391661, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3);
INSERT INTO `serverlogs` (`ID`, `character`, `user`, `ip`, `timestamp`, `log`, `type`) VALUES
(886, 'John_Doe', 'Thiago', '127.0.0.1', 1659391669, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento ', 3),
(887, 'John_Doe', 'Thiago', '127.0.0.1', 1659391673, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 5 para 1000', 1),
(888, 'John_Doe', 'Thiago', '127.0.0.1', 1659391673, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 5 maxslots 1000', 3),
(889, 'John_Doe', 'Thiago', '127.0.0.1', 1659391683, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(890, 'SYSTEM', 'SYSTEM', '', 1659391689, '[SISTEMA] Investimento 1 alterado de 282.24 para 282.41', 15),
(891, 'SYSTEM', 'SYSTEM', '', 1659391690, '[SISTEMA] Investimento 2 alterado de 123.09 para 122.90', 15),
(892, 'SYSTEM', 'SYSTEM', '', 1659391690, '[SISTEMA] Investimento 3 alterado de 98.29 para 98.09', 15),
(893, 'SYSTEM', 'SYSTEM', '', 1659391690, '[SISTEMA] Investimento 4 alterado de 23,017.19 para 23,026.40', 15),
(894, 'SYSTEM', 'SYSTEM', '', 1659391690, '[SISTEMA] Investimento 5 alterado de 1,772.03 para 1,770.08', 15),
(895, 'John_Doe', 'Thiago', '127.0.0.1', 1659391691, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(896, 'John_Doe', 'Thiago', '127.0.0.1', 1659391691, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(897, 'John_Doe', 'Thiago', '127.0.0.1', 1659391693, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(898, 'John_Doe', 'Thiago', '127.0.0.1', 1659391711, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(899, 'John_Doe', 'Thiago', '127.0.0.1', 1659391715, 'John Doe (Thiago) criou o investimento Silver [ID: 6] como uma commodity.', 1),
(900, 'John_Doe', 'Thiago', '127.0.0.1', 1659391715, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 3 Silver', 3),
(901, 'John_Doe', 'Thiago', '127.0.0.1', 1659391729, 'John Doe (Thiago) alterou o símbolo do investimento ID 6 para XAG', 1),
(902, 'John_Doe', 'Thiago', '127.0.0.1', 1659391729, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 símbolo XAG', 3),
(903, 'John_Doe', 'Thiago', '127.0.0.1', 1659391766, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 20.36', 1),
(904, 'John_Doe', 'Thiago', '127.0.0.1', 1659391766, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 20.36', 3),
(905, 'John_Doe', 'Thiago', '127.0.0.1', 1659391776, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 6 para 5000', 1),
(906, 'John_Doe', 'Thiago', '127.0.0.1', 1659391776, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 maxslots 5000', 3),
(907, 'John_Doe', 'Thiago', '127.0.0.1', 1659391821, 'John Doe (Thiago) criou o investimento Crude Oil WTI [ID: 7] como uma commodity.', 1),
(908, 'John_Doe', 'Thiago', '127.0.0.1', 1659391821, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 3 Crude Oil WTI', 3),
(909, 'John_Doe', 'Thiago', '127.0.0.1', 1659391855, 'John Doe (Thiago) alterou o símbolo do investimento ID 6 para USOUSD', 1),
(910, 'John_Doe', 'Thiago', '127.0.0.1', 1659391855, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 simbolo USOUSD', 3),
(911, 'John_Doe', 'Thiago', '127.0.0.1', 1659391871, 'John Doe (Thiago) alterou a descrição do investimento ID 6 para é um tipo\r\nde óleo cru', 1),
(912, 'John_Doe', 'Thiago', '127.0.0.1', 1659391871, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 descrição é um tipo\r\nde óleo cru', 3),
(913, 'John_Doe', 'Thiago', '127.0.0.1', 1659391880, 'John Doe (Thiago) alterou a descrição do investimento ID 6 para É um tipo de óleo cru', 1),
(914, 'John_Doe', 'Thiago', '127.0.0.1', 1659391880, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 descrição É um tipo de óleo cru', 3),
(915, 'John_Doe', 'Thiago', '127.0.0.1', 1659391893, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 93.16', 1),
(916, 'John_Doe', 'Thiago', '127.0.0.1', 1659391893, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 93.17', 3),
(917, 'John_Doe', 'Thiago', '127.0.0.1', 1659391900, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 93.18', 1),
(918, 'John_Doe', 'Thiago', '127.0.0.1', 1659391900, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 93.18', 3),
(919, 'John_Doe', 'Thiago', '127.0.0.1', 1659391902, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 93.16', 1),
(920, 'John_Doe', 'Thiago', '127.0.0.1', 1659391902, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 93.17', 3),
(921, 'John_Doe', 'Thiago', '127.0.0.1', 1659391909, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(922, 'John_Doe', 'Thiago', '127.0.0.1', 1659391920, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 93.16', 1),
(923, 'John_Doe', 'Thiago', '127.0.0.1', 1659391921, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 93.17', 3),
(924, 'John_Doe', 'Thiago', '127.0.0.1', 1659391931, 'John Doe (Thiago) alterou o valor de compra do investimento ID 7 para US$ 93.16', 1),
(925, 'John_Doe', 'Thiago', '127.0.0.1', 1659391931, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 7 valorcompra 93.17', 3),
(926, 'John_Doe', 'Thiago', '127.0.0.1', 1659391940, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 7 simbolo USOUSD', 3),
(927, 'John_Doe', 'Thiago', '127.0.0.1', 1659391948, 'John Doe (Thiago) alterou o símbolo do investimento ID 6 para sdaSD', 1),
(928, 'John_Doe', 'Thiago', '127.0.0.1', 1659391948, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 simbolo sdaSD', 3),
(929, 'John_Doe', 'Thiago', '127.0.0.1', 1659391949, 'John Doe (Thiago) alterou o símbolo do investimento ID 7 para USOUSD', 1),
(930, 'John_Doe', 'Thiago', '127.0.0.1', 1659391949, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 7 simbolo USOUSD', 3),
(931, 'John_Doe', 'Thiago', '127.0.0.1', 1659391960, 'John Doe (Thiago) alterou a descrição do investimento ID 7 para É um tipo de óleo cru', 1),
(932, 'John_Doe', 'Thiago', '127.0.0.1', 1659391960, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 7 descrição É um tipo de óleo cru', 3),
(933, 'John_Doe', 'Thiago', '127.0.0.1', 1659391971, 'John Doe (Thiago) alterou o símbolo do investimento ID 6 para XAG', 1),
(934, 'John_Doe', 'Thiago', '127.0.0.1', 1659391971, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 simbolo XAG', 3),
(935, 'John_Doe', 'Thiago', '127.0.0.1', 1659391983, 'John Doe (Thiago) alterou o valor de compra do investimento ID 6 para US$ 20.36', 1),
(936, 'John_Doe', 'Thiago', '127.0.0.1', 1659391983, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 valorcompra 20.36', 3),
(937, 'John_Doe', 'Thiago', '127.0.0.1', 1659391994, 'John Doe (Thiago) alterou a descrição do investimento ID 6 para Prata (XAG) representa o preço à vista de Prata', 1),
(938, 'John_Doe', 'Thiago', '127.0.0.1', 1659391994, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 6 descrição Prata (XAG) representa o preço à vista de Prata', 3),
(939, 'SYSTEM', 'SYSTEM', '', 1659392011, '[SISTEMA] Investimento 1 alterado de 282.41 para 282.15', 15),
(940, 'SYSTEM', 'SYSTEM', '', 1659392012, '[SISTEMA] Investimento 2 alterado de 122.90 para 122.67', 15),
(941, 'SYSTEM', 'SYSTEM', '', 1659392012, '[SISTEMA] Investimento 3 alterado de 98.09 para 97.99', 15),
(942, 'SYSTEM', 'SYSTEM', '', 1659392012, '[SISTEMA] Investimento 4 alterado de 23,026.40 para 23,063.24', 15),
(943, 'SYSTEM', 'SYSTEM', '', 1659392012, '[SISTEMA] Investimento 5 alterado de 1,770.07 para 1,772.38', 15),
(944, 'SYSTEM', 'SYSTEM', '', 1659392013, '[SISTEMA] Investimento 6 alterado de 20.36 para 20.38', 15),
(945, 'SYSTEM', 'SYSTEM', '', 1659392013, '[SISTEMA] Investimento 7 alterado de 93.16 para 93.15', 15),
(946, 'John_Doe', 'Thiago', '127.0.0.1', 1659392013, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(947, 'John_Doe', 'Thiago', '127.0.0.1', 1659392013, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(948, 'John_Doe', 'Thiago', '127.0.0.1', 1659392021, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(949, 'John_Doe', 'Thiago', '127.0.0.1', 1659392023, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(950, 'John_Doe', 'Thiago', '127.0.0.1', 1659392026, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(951, 'John_Doe', 'Thiago', '127.0.0.1', 1659392029, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(952, 'John_Doe', 'Thiago', '127.0.0.1', 1659392045, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 7 para 5000', 1),
(953, 'John_Doe', 'Thiago', '127.0.0.1', 1659392045, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 7 maxslots 5000', 3),
(954, 'John_Doe', 'Thiago', '127.0.0.1', 1659392076, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(955, 'John_Doe', 'Thiago', '127.0.0.1', 1659392079, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(956, 'John_Doe', 'Thiago', '127.0.0.1', 1659392081, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(957, 'John_Doe', 'Thiago', '127.0.0.1', 1659392206, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(958, 'John_Doe', 'Thiago', '127.0.0.1', 1659392218, 'John Doe (Thiago) criou o investimento Ethereum [ID: 8] como uma cripto.', 1),
(959, 'John_Doe', 'Thiago', '127.0.0.1', 1659392218, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento 2 Ethereum', 3),
(960, 'John_Doe', 'Thiago', '127.0.0.1', 1659392231, 'John Doe (Thiago) alterou o símbolo do investimento ID 8 para ETH', 1),
(961, 'John_Doe', 'Thiago', '127.0.0.1', 1659392231, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 simbolo ETH', 3),
(962, 'John_Doe', 'Thiago', '127.0.0.1', 1659392284, 'John Doe (Thiago) alterou a descrição do investimento ID 8 para É uma plataforma descentralizada\r\npara aplicativos', 1),
(963, 'John_Doe', 'Thiago', '127.0.0.1', 1659392284, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 descrição É uma plataforma descentralizada\r\npara aplicativos', 3),
(964, 'John_Doe', 'Thiago', '127.0.0.1', 1659392299, 'John Doe (Thiago) alterou o valor de venda do investimento ID 8 para US$ 1,613.58', 1),
(965, 'John_Doe', 'Thiago', '127.0.0.1', 1659392299, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 valorvenda 1613.59', 3),
(966, 'John_Doe', 'Thiago', '127.0.0.1', 1659392350, 'John Doe (Thiago) alterou a capital do investimento ID 8 para US$ +\'+,(+-,-/..00', 1),
(967, 'John_Doe', 'Thiago', '127.0.0.1', 1659392350, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 capital 1021606334036', 3),
(968, 'John_Doe', 'Thiago', '127.0.0.1', 1659392697, 'John Doe (Thiago) alterou a capital do investimento ID 8 para US$ 10,216,063.00', 1),
(969, 'John_Doe', 'Thiago', '127.0.0.1', 1659392697, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 capital 10216063', 3),
(970, 'John_Doe', 'Thiago', '127.0.0.1', 1659392700, 'John Doe (Thiago) alterou a capital do investimento ID 8 para US$ 102,160,632.00', 1),
(971, 'John_Doe', 'Thiago', '127.0.0.1', 1659392700, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 capital 102160630', 3),
(972, 'SYSTEM', 'SYSTEM', '', 1659392722, '[SISTEMA] Investimento 1 alterado de 282.15 para 281.67', 15),
(973, 'SYSTEM', 'SYSTEM', '', 1659392722, '[SISTEMA] Investimento 2 alterado de 122.68 para 122.87', 15),
(974, 'SYSTEM', 'SYSTEM', '', 1659392722, '[SISTEMA] Investimento 3 alterado de 97.99 para 97.82', 15),
(975, 'SYSTEM', 'SYSTEM', '', 1659392723, '[SISTEMA] Investimento 4 alterado de 23,063.19 para 23,093.18', 15),
(976, 'SYSTEM', 'SYSTEM', '', 1659392723, '[SISTEMA] Investimento 5 alterado de 1,772.38 para 1,774.50', 15),
(977, 'SYSTEM', 'SYSTEM', '', 1659392723, '[SISTEMA] Investimento 6 alterado de 20.38 para 20.36', 15),
(978, 'SYSTEM', 'SYSTEM', '', 1659392723, '[SISTEMA] Investimento 7 alterado de 93.15 para 93.24', 15),
(979, 'SYSTEM', 'SYSTEM', '', 1659392724, '[SISTEMA] Investimento 8 alterado de 1,613.58 para 1,610.36', 15),
(980, 'John_Doe', 'Thiago', '127.0.0.1', 1659392724, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(981, 'John_Doe', 'Thiago', '127.0.0.1', 1659392724, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(982, 'John_Doe', 'Thiago', '127.0.0.1', 1659392729, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(983, 'John_Doe', 'Thiago', '127.0.0.1', 1659392734, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(984, 'John_Doe', 'Thiago', '127.0.0.1', 1659392744, 'John Doe (Thiago) alterou o máximo de slots do investimento ID 8 para 500', 1),
(985, 'John_Doe', 'Thiago', '127.0.0.1', 1659392744, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento 8 maxslots 500', 3),
(986, 'John_Doe', 'Thiago', '127.0.0.1', 1659392919, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(987, 'John_Doe', 'Thiago', '127.0.0.1', 1659392926, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(988, 'John_Doe', 'Thiago', '127.0.0.1', 1659392928, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(989, 'John_Doe', '', '255.255.255.255', 1659393132, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(990, 'SYSTEM', 'SYSTEM', '', 1659398261, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(991, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(992, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(993, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(994, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(995, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(996, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(997, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(998, 'SYSTEM', 'SYSTEM', '', 1659398262, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(999, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1000, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1001, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1002, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1003, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1004, 'SYSTEM', 'SYSTEM', '', 1659398263, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1005, 'SYSTEM', 'SYSTEM', '', 1659398265, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1006, 'John_Doe', 'Thiago', '127.0.0.1', 1659398301, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1007, 'John_Doe', 'Thiago', '127.0.0.1', 1659398329, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1008, 'John_Doe', 'Thiago', '127.0.0.1', 1659398336, 'John Doe (Thiago) comprou 10 investimentos de Maze Bank [ID: 1] e pagou US$ 2.820.', 15),
(1009, 'John_Doe', 'Thiago', '127.0.0.1', 1659398338, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1010, 'John_Doe', 'Thiago', '127.0.0.1', 1659398348, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1011, 'John_Doe', 'Thiago', '127.0.0.1', 1659398354, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1012, 'John_Doe', 'Thiago', '127.0.0.1', 1659398355, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1013, 'John_Doe', 'Thiago', '127.0.0.1', 1659398362, 'John Doe (Thiago) comprou 10 investimentos de Silver [ID: 6] e pagou US$ 200.', 15),
(1014, 'John_Doe', 'Thiago', '127.0.0.1', 1659398434, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1015, 'John_Doe', 'Thiago', '127.0.0.1', 1659398438, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1016, 'John_Doe', '', '127.0.0.1', 1659398523, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1017, 'SYSTEM', 'SYSTEM', '', 1659398535, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1018, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1019, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1020, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1021, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1022, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1023, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1024, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1025, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1026, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1027, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1028, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1029, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1030, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1031, 'SYSTEM', 'SYSTEM', '', 1659398536, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1032, 'SYSTEM', 'SYSTEM', '', 1659398537, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1033, 'John_Doe', 'Thiago', '127.0.0.1', 1659398585, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1034, 'John_Doe', 'Thiago', '127.0.0.1', 1659398600, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1035, 'John_Doe', 'Thiago', '127.0.0.1', 1659398610, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1036, 'John_Doe', 'Thiago', '127.0.0.1', 1659398651, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1037, 'John_Doe', '', '127.0.0.1', 1659398762, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1038, 'SYSTEM', 'SYSTEM', '', 1659398774, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1039, 'SYSTEM', 'SYSTEM', '', 1659398774, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1040, 'SYSTEM', 'SYSTEM', '', 1659398774, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1041, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1042, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1043, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1044, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1045, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1046, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1047, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1048, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1049, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1050, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1051, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1052, 'SYSTEM', 'SYSTEM', '', 1659398775, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1053, 'SYSTEM', 'SYSTEM', '', 1659398776, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1054, 'John_Doe', '', '127.0.0.1', 1659398817, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1055, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1056, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1057, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1058, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1059, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1060, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1061, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1062, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1063, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1064, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1065, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1066, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1067, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1068, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1069, 'SYSTEM', 'SYSTEM', '', 1659398829, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1070, 'SYSTEM', 'SYSTEM', '', 1659398830, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1071, 'John_Doe', 'Thiago', '127.0.0.1', 1659398834, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1072, 'John_Doe', 'Thiago', '127.0.0.1', 1659398845, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1073, 'John_Doe', 'Thiago', '127.0.0.1', 1659398950, 'John Doe (Thiago) [127.0.0.1]: /aa ', 3),
(1074, 'John_Doe', 'Thiago', '127.0.0.1', 1659398999, 'John Doe (Thiago) [127.0.0.1]: /clima ', 3),
(1075, 'John_Doe', 'Thiago', '127.0.0.1', 1659399002, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1076, 'John_Doe', 'Thiago', '127.0.0.1', 1659399002, 'John Doe (Thiago) [127.0.0.1]: /clima 21 14', 3),
(1077, 'John_Doe', 'Thiago', '127.0.0.1', 1659399010, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1078, 'John_Doe', 'Thiago', '127.0.0.1', 1659399010, 'John Doe (Thiago) [127.0.0.1]: /clima 22 14', 3),
(1079, 'John_Doe', 'Thiago', '127.0.0.1', 1659399012, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1080, 'John_Doe', 'Thiago', '127.0.0.1', 1659399012, 'John Doe (Thiago) [127.0.0.1]: /clima 23 14', 3),
(1081, 'John_Doe', 'Thiago', '127.0.0.1', 1659399013, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1082, 'John_Doe', 'Thiago', '127.0.0.1', 1659399013, 'John Doe (Thiago) [127.0.0.1]: /clima 24 14', 3),
(1083, 'John_Doe', 'Thiago', '127.0.0.1', 1659399015, 'John Doe (Thiago) [127.0.0.1]: /clima 25 14', 3),
(1084, 'John_Doe', 'Thiago', '127.0.0.1', 1659399017, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1085, 'John_Doe', 'Thiago', '127.0.0.1', 1659399017, 'John Doe (Thiago) [127.0.0.1]: /clima 0 14', 3),
(1086, 'John_Doe', 'Thiago', '127.0.0.1', 1659399019, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1087, 'John_Doe', 'Thiago', '127.0.0.1', 1659399019, 'John Doe (Thiago) [127.0.0.1]: /clima 1 14', 3),
(1088, 'John_Doe', 'Thiago', '127.0.0.1', 1659399021, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1089, 'John_Doe', 'Thiago', '127.0.0.1', 1659399021, 'John Doe (Thiago) [127.0.0.1]: /clima 2 14', 3),
(1090, 'John_Doe', 'Thiago', '127.0.0.1', 1659399022, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1091, 'John_Doe', 'Thiago', '127.0.0.1', 1659399022, 'John Doe (Thiago) [127.0.0.1]: /clima 3 14', 3),
(1092, 'John_Doe', 'Thiago', '127.0.0.1', 1659399023, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1093, 'John_Doe', 'Thiago', '127.0.0.1', 1659399024, 'John Doe (Thiago) [127.0.0.1]: /clima 4 14', 3),
(1094, 'John_Doe', 'Thiago', '127.0.0.1', 1659399025, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1095, 'John_Doe', 'Thiago', '127.0.0.1', 1659399025, 'John Doe (Thiago) [127.0.0.1]: /clima 5 14', 3),
(1096, 'John_Doe', 'Thiago', '127.0.0.1', 1659399026, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1097, 'John_Doe', 'Thiago', '127.0.0.1', 1659399027, 'John Doe (Thiago) [127.0.0.1]: /clima 6 14', 3),
(1098, 'John_Doe', 'Thiago', '127.0.0.1', 1659399029, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1099, 'John_Doe', 'Thiago', '127.0.0.1', 1659399029, 'John Doe (Thiago) [127.0.0.1]: /clima 7 14', 3),
(1100, 'John_Doe', 'Thiago', '127.0.0.1', 1659399031, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1101, 'John_Doe', 'Thiago', '127.0.0.1', 1659399031, 'John Doe (Thiago) [127.0.0.1]: /clima 8 14', 3),
(1102, 'John_Doe', 'Thiago', '127.0.0.1', 1659399033, 'John Doe (	) configurou a hora para 67 e o clima como \'\'.', 1),
(1103, 'John_Doe', 'Thiago', '127.0.0.1', 1659399033, 'John Doe (Thiago) [127.0.0.1]: /clima 9 14', 3),
(1104, 'John_Doe', 'Thiago', '127.0.0.1', 1659399034, 'John Doe (\n) configurou a hora para 67 e o clima como \'\'.', 1),
(1105, 'John_Doe', 'Thiago', '127.0.0.1', 1659399035, 'John Doe (Thiago) [127.0.0.1]: /clima 10 14', 3),
(1106, 'John_Doe', 'Thiago', '127.0.0.1', 1659399037, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1107, 'John_Doe', 'Thiago', '127.0.0.1', 1659399037, 'John Doe (Thiago) [127.0.0.1]: /clima 11 14', 3),
(1108, 'John_Doe', 'Thiago', '127.0.0.1', 1659399039, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1109, 'John_Doe', 'Thiago', '127.0.0.1', 1659399039, 'John Doe (Thiago) [127.0.0.1]: /clima 12 14', 3),
(1110, 'John_Doe', 'Thiago', '127.0.0.1', 1659399041, 'John Doe (\r) configurou a hora para 67 e o clima como \'\'.', 1),
(1111, 'John_Doe', 'Thiago', '127.0.0.1', 1659399041, 'John Doe (Thiago) [127.0.0.1]: /clima 13 14', 3),
(1112, 'John_Doe', 'Thiago', '127.0.0.1', 1659399043, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1113, 'John_Doe', 'Thiago', '127.0.0.1', 1659399043, 'John Doe (Thiago) [127.0.0.1]: /clima 14 14', 3),
(1114, 'John_Doe', 'Thiago', '127.0.0.1', 1659399045, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1115, 'John_Doe', 'Thiago', '127.0.0.1', 1659399045, 'John Doe (Thiago) [127.0.0.1]: /clima 15 14', 3),
(1116, 'John_Doe', 'Thiago', '127.0.0.1', 1659399046, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1117, 'John_Doe', 'Thiago', '127.0.0.1', 1659399046, 'John Doe (Thiago) [127.0.0.1]: /clima 16 14', 3),
(1118, 'John_Doe', 'Thiago', '127.0.0.1', 1659399048, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1119, 'John_Doe', 'Thiago', '127.0.0.1', 1659399048, 'John Doe (Thiago) [127.0.0.1]: /clima 17 14', 3),
(1120, 'John_Doe', 'Thiago', '127.0.0.1', 1659399050, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1121, 'John_Doe', 'Thiago', '127.0.0.1', 1659399050, 'John Doe (Thiago) [127.0.0.1]: /clima 18 14', 3),
(1122, 'John_Doe', 'Thiago', '127.0.0.1', 1659399052, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1123, 'John_Doe', 'Thiago', '127.0.0.1', 1659399052, 'John Doe (Thiago) [127.0.0.1]: /clima 19 14', 3),
(1124, 'John_Doe', 'Thiago', '127.0.0.1', 1659399055, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1125, 'John_Doe', 'Thiago', '127.0.0.1', 1659399055, 'John Doe (Thiago) [127.0.0.1]: /clima 20 14', 3),
(1126, 'John_Doe', 'Thiago', '127.0.0.1', 1659399056, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1127, 'John_Doe', 'Thiago', '127.0.0.1', 1659399056, 'John Doe (Thiago) [127.0.0.1]: /clima 21 14', 3),
(1128, 'John_Doe', 'Thiago', '127.0.0.1', 1659399059, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1129, 'John_Doe', 'Thiago', '127.0.0.1', 1659399059, 'John Doe (Thiago) [127.0.0.1]: /clima 22 14', 3),
(1130, 'John_Doe', 'Thiago', '127.0.0.1', 1659399062, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1131, 'John_Doe', 'Thiago', '127.0.0.1', 1659399062, 'John Doe (Thiago) [127.0.0.1]: /clima 21 14', 3),
(1132, 'John_Doe', 'Thiago', '127.0.0.1', 1659399067, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1133, 'John_Doe', 'Thiago', '127.0.0.1', 1659399067, 'John Doe (Thiago) [127.0.0.1]: /clima 23 14', 3),
(1134, 'John_Doe', 'Thiago', '127.0.0.1', 1659399069, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1135, 'John_Doe', 'Thiago', '127.0.0.1', 1659399069, 'John Doe (Thiago) [127.0.0.1]: /clima 24 14', 3),
(1136, 'John_Doe', 'Thiago', '127.0.0.1', 1659399165, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1137, 'John_Doe', '', '127.0.0.1', 1659399260, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1138, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1139, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1140, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1141, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1142, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1143, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1144, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1145, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1146, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1147, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1148, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1149, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1150, 'SYSTEM', 'SYSTEM', '', 1659399272, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1151, 'SYSTEM', 'SYSTEM', '', 1659399273, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1152, 'SYSTEM', 'SYSTEM', '', 1659399273, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1153, 'SYSTEM', 'SYSTEM', '', 1659399273, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1154, 'John_Doe', 'Thiago', '127.0.0.1', 1659399277, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1155, 'John_Doe', 'Thiago', '127.0.0.1', 1659399288, 'John Doe (Thiago) [127.0.0.1]: /debug ', 3),
(1156, 'John_Doe', 'Thiago', '127.0.0.1', 1659399289, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1157, 'John_Doe', 'Thiago', '127.0.0.1', 1659399293, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1158, 'John_Doe', 'Thiago', '127.0.0.1', 1659399296, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1159, 'John_Doe', 'Thiago', '127.0.0.1', 1659399299, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1160, 'John_Doe', 'Thiago', '127.0.0.1', 1659399304, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1161, 'John_Doe', 'Thiago', '127.0.0.1', 1659399311, 'John Doe () configurou a hora para 67 e o clima como \'\'.', 1),
(1162, 'John_Doe', 'Thiago', '127.0.0.1', 1659399311, 'John Doe (Thiago) [127.0.0.1]: /clima 22 14', 3),
(1163, 'John_Doe', 'Thiago', '127.0.0.1', 1659399323, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1164, 'John_Doe', 'Thiago', '127.0.0.1', 1659399352, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1165, 'John_Doe', 'Thiago', '127.0.0.1', 1659399373, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1166, 'John_Doe', 'Thiago', '127.0.0.1', 1659399383, 'John Doe (Thiago) [127.0.0.1]: /fly ', 3),
(1167, 'John_Doe', 'Thiago', '127.0.0.1', 1659399612, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1168, 'John_Doe', 'Thiago', '127.0.0.1', 1659399621, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1169, 'John_Doe', 'Thiago', '127.0.0.1', 1659399626, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1170, 'John_Doe', 'Thiago', '127.0.0.1', 1659399636, 'John Doe (Thiago) comprou 2 investimentos de Crude Oil WTI [ID: 7] e pagou US$ 186.', 15),
(1171, 'John_Doe', 'Thiago', '127.0.0.1', 1659399638, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1172, 'John_Doe', 'Thiago', '127.0.0.1', 1659399646, 'John Doe (Thiago) vendeu 10 investimentos de  [ID: 1] e recebeu US$ 2.820.', 15),
(1173, 'SYSTEM', 'SYSTEM', '', 1659399654, '[SISTEMA] Investimento 1 alterado de 281.67 para 281.76', 15),
(1174, 'SYSTEM', 'SYSTEM', '', 1659399654, '[SISTEMA] Investimento 2 alterado de 122.87 para 123.07', 15),
(1175, 'SYSTEM', 'SYSTEM', '', 1659399654, '[SISTEMA] Investimento 3 alterado de 97.82 para 97.74', 15),
(1176, 'SYSTEM', 'SYSTEM', '', 1659399654, '[SISTEMA] Investimento 4 alterado de 23,093.19 para 23,137.07', 15),
(1177, 'SYSTEM', 'SYSTEM', '', 1659399655, '[SISTEMA] Investimento 5 alterado de 1,774.51 para 1,775.92', 15),
(1178, 'SYSTEM', 'SYSTEM', '', 1659399655, '[SISTEMA] Investimento 6 alterado de 20.36 para 20.40', 15),
(1179, 'SYSTEM', 'SYSTEM', '', 1659399655, '[SISTEMA] Investimento 7 alterado de 93.24 para 93.37', 15),
(1180, 'SYSTEM', 'SYSTEM', '', 1659399655, '[SISTEMA] Investimento 8 alterado de 1,610.35 para 1,611.64', 15),
(1181, 'John_Doe', 'Thiago', '127.0.0.1', 1659399655, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(1182, 'John_Doe', 'Thiago', '127.0.0.1', 1659399655, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(1183, 'John_Doe', 'Thiago', '127.0.0.1', 1659399659, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(1184, 'John_Doe', 'Thiago', '127.0.0.1', 1659399662, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento ', 3),
(1185, 'John_Doe', 'Thiago', '127.0.0.1', 1659399666, 'John Doe (Thiago) [127.0.0.1]: /deletarinvestimento ', 3),
(1186, 'John_Doe', 'Thiago', '127.0.0.1', 1659399793, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1187, 'John_Doe', 'Thiago', '127.0.0.1', 1659399796, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1188, 'John_Doe', '', '255.255.255.255', 1659399873, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1189, 'SYSTEM', 'SYSTEM', '', 1659400025, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1190, 'SYSTEM', 'SYSTEM', '', 1659400025, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1191, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1192, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1193, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1194, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1195, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1196, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1197, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1198, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1199, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1200, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1201, 'SYSTEM', 'SYSTEM', '', 1659400026, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1202, 'SYSTEM', 'SYSTEM', '', 1659400027, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1203, 'SYSTEM', 'SYSTEM', '', 1659400027, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1204, 'SYSTEM', 'SYSTEM', '', 1659400029, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1205, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela users checada com sucesso.', 5),
(1206, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela players checada com sucesso.', 5),
(1207, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela players_apparence checada com sucesso.', 5),
(1208, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela players_weapons checada com sucesso.', 5),
(1209, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela ban checada com sucesso.', 5),
(1210, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela serverlogs checada com sucesso.', 5),
(1211, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela furniture_info checada com sucesso.', 5),
(1212, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela interiors checada com sucesso.', 5),
(1213, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela advertisement checada com sucesso.', 5),
(1214, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela vehicles checada com sucesso.', 5),
(1215, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela vehicles_weapons checada com sucesso.', 5),
(1216, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela pool_tables checada com sucesso.', 5),
(1217, 'SYSTEM', 'SYSTEM', '', 1659400264, 'SYSTEM: [DATABASE] Tabela houses checada com sucesso.', 5),
(1218, 'SYSTEM', 'SYSTEM', '', 1659400265, 'SYSTEM: [DATABASE] Tabela tradings checada com sucesso.', 5),
(1219, 'SYSTEM', 'SYSTEM', '', 1659400265, 'SYSTEM: [DATABASE] Tabela tradings_owners checada com sucesso.', 5),
(1220, 'SYSTEM', 'SYSTEM', '', 1659400267, 'SYSTEM: O servidor iniciou com acesso normal.', 5),
(1221, 'John_Doe', 'Thiago', '127.0.0.1', 1659400287, 'Thiago (127.0.0.1) logou como John Doe. ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1222, 'John_Doe', 'Thiago', '127.0.0.1', 1659400306, 'John Doe (Thiago) [127.0.0.1]: /criarinvestimento ', 3),
(1223, 'John_Doe', 'Thiago', '127.0.0.1', 1659400309, 'John Doe (Thiago) [127.0.0.1]: /editarinvestimento ', 3),
(1224, 'John_Doe', 'Thiago', '127.0.0.1', 1659400313, 'John Doe (Thiago) [127.0.0.1]: /deletarinvestimento ', 3),
(1225, 'John_Doe', 'Thiago', '127.0.0.1', 1659400316, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1226, 'John_Doe', 'Thiago', '127.0.0.1', 1659400318, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1227, 'John_Doe', 'Thiago', '127.0.0.1', 1659400321, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1228, 'John_Doe', 'Thiago', '127.0.0.1', 1659400327, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1229, 'John_Doe', 'Thiago', '127.0.0.1', 1659400331, 'John Doe (Thiago) vendeu 2 investimentos de Crude Oil WTI [ID: 7] e recebeu US$ 186.', 15),
(1230, 'John_Doe', 'Thiago', '127.0.0.1', 1659400332, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1231, 'John_Doe', 'Thiago', '127.0.0.1', 1659400338, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1232, 'John_Doe', 'Thiago', '127.0.0.1', 1659400344, 'John Doe (Thiago) comprou 10 investimentos de Maze Bank [ID: 1] e pagou US$ 2.820.', 15),
(1233, 'John_Doe', 'Thiago', '127.0.0.1', 1659400346, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1234, 'John_Doe', 'Thiago', '127.0.0.1', 1659400352, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1235, 'John_Doe', 'Thiago', '127.0.0.1', 1659400355, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1236, 'SYSTEM', 'SYSTEM', '', 1659400360, '[SISTEMA] Investimento 1 alterado de 281.76 para 281.95', 15),
(1237, 'SYSTEM', 'SYSTEM', '', 1659400360, '[SISTEMA] Investimento 2 alterado de 123.07 para 123.10', 15),
(1238, 'SYSTEM', 'SYSTEM', '', 1659400360, '[SISTEMA] Investimento 3 alterado de 97.74 para 97.74', 15),
(1239, 'SYSTEM', 'SYSTEM', '', 1659400360, '[SISTEMA] Investimento 4 alterado de 23,137.09 para 23,104.70', 15),
(1240, 'SYSTEM', 'SYSTEM', '', 1659400361, '[SISTEMA] Investimento 5 alterado de 1,775.93 para 1,772.73', 15),
(1241, 'SYSTEM', 'SYSTEM', '', 1659400361, '[SISTEMA] Investimento 6 alterado de 20.40 para 20.36', 15),
(1242, 'SYSTEM', 'SYSTEM', '', 1659400361, '[SISTEMA] Investimento 7 alterado de 93.37 para 93.32', 15),
(1243, 'SYSTEM', 'SYSTEM', '', 1659400361, '[SISTEMA] Investimento 8 alterado de 1,611.65 para 1,611.16', 15),
(1244, 'John_Doe', 'Thiago', '127.0.0.1', 1659400361, 'John Doe (Thiago) forçou a atualização de todos os investimentos.', 1),
(1245, 'John_Doe', 'Thiago', '127.0.0.1', 1659400362, 'John Doe (Thiago) [127.0.0.1]: /atualizarinvestimentos ', 3),
(1246, 'John_Doe', 'Thiago', '127.0.0.1', 1659400362, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1247, 'John_Doe', 'Thiago', '127.0.0.1', 1659400365, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1248, 'John_Doe', 'Thiago', '127.0.0.1', 1659400366, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1249, 'John_Doe', 'Thiago', '127.0.0.1', 1659400368, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1250, 'John_Doe', 'Thiago', '127.0.0.1', 1659400372, 'John Doe (Thiago) [127.0.0.1]: /investimentos ', 3),
(1251, 'John_Doe', '', '255.255.255.255', 1659401003, 'John Doe desconectou-se do servidor. ARMAS: ([0 0] [0 0] [24 100] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0] [0 0])', 2),
(1252, 'SYSTEM', 'SYSTEM', '', 1659402002, '[SISTEMA] Investimento 1 alterado de 281.95 para 282.06', 15),
(1253, 'SYSTEM', 'SYSTEM', '', 1659402003, '[SISTEMA] Investimento 2 alterado de 123.11 para 122.90', 15),
(1254, 'SYSTEM', 'SYSTEM', '', 1659402003, '[SISTEMA] Investimento 3 alterado de 97.74 para 97.89', 15),
(1255, 'SYSTEM', 'SYSTEM', '', 1659402004, '[SISTEMA] Investimento 4 alterado de 23,104.69 para 23,130.11', 15),
(1256, 'SYSTEM', 'SYSTEM', '', 1659402004, '[SISTEMA] Investimento 5 alterado de 1,772.72 para 1,772.19', 15),
(1257, 'SYSTEM', 'SYSTEM', '', 1659402004, '[SISTEMA] Investimento 6 alterado de 20.36 para 20.39', 15),
(1258, 'SYSTEM', 'SYSTEM', '', 1659384000, '[SISTEMA] Investimento 7 alterado de 93.32 para 93.39', 15),
(1259, 'SYSTEM', 'SYSTEM', '', 1659384000, '[SISTEMA] Investimento 8 alterado de 1,611.17 para 1,613.74', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tradings`
--

CREATE TABLE `tradings` (
  `ID` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Nenhum',
  `symbol` varchar(16) NOT NULL DEFAULT 'N/A',
  `description` varchar(124) NOT NULL DEFAULT 'N/A',
  `type` int(11) NOT NULL DEFAULT 0,
  `capital` float NOT NULL DEFAULT 0,
  `oldbuy_value` float NOT NULL DEFAULT 0,
  `buy_value` float NOT NULL DEFAULT 0,
  `sell_value` float NOT NULL DEFAULT 0,
  `max_value` float NOT NULL DEFAULT 0,
  `min_value` float NOT NULL DEFAULT 0,
  `max_slots` int(11) NOT NULL DEFAULT 0,
  `sold_slots` int(11) NOT NULL DEFAULT 0,
  `variation` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tradings_owners`
--

CREATE TABLE `tradings_owners` (
  `ID` int(11) NOT NULL,
  `trading_id` int(11) NOT NULL DEFAULT 0,
  `character_id` int(11) NOT NULL DEFAULT 0,
  `bought_price` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_announcements`
--

CREATE TABLE `ucp_announcements` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `type` int(1) NOT NULL DEFAULT 0,
  `target` int(1) NOT NULL DEFAULT 0,
  `showing` int(1) NOT NULL DEFAULT 0,
  `send_date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_announcements`
--

INSERT INTO `ucp_announcements` (`id`, `user_id`, `title`, `body`, `type`, `target`, `showing`, `send_date`) VALUES
(4, 12, 'AD Points extras!', 'O patrão adicionou 1 AD Points extras para todos vocês. Aproveitem!', 3, 1, 0, 1671100696);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_apps`
--

CREATE TABLE `ucp_apps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `origin` varchar(128) NOT NULL,
  `birthdate` varchar(11) NOT NULL,
  `gender` int(11) NOT NULL DEFAULT 0,
  `ethnicity` int(11) NOT NULL DEFAULT 0,
  `build` int(11) NOT NULL DEFAULT 0,
  `color_eyes` int(11) NOT NULL DEFAULT 0,
  `color_hair` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `weigth` float NOT NULL DEFAULT 0,
  `description_apparence` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `history` text NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `ip` varchar(120) NOT NULL,
  `send_date` int(11) NOT NULL DEFAULT 0,
  `status` varchar(120) NOT NULL DEFAULT '0',
  `admin` varchar(120) NOT NULL DEFAULT 'Nenhum',
  `correction_admin` int(11) NOT NULL DEFAULT 0,
  `reason` text NOT NULL,
  `valuation_date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_apps`
--

INSERT INTO `ucp_apps` (`id`, `user_id`, `fullname`, `origin`, `birthdate`, `gender`, `ethnicity`, `build`, `color_eyes`, `color_hair`, `height`, `weigth`, `description_apparence`, `history`, `question1`, `question2`, `answer1`, `answer2`, `ip`, `send_date`, `status`, `admin`, `correction_admin`, `reason`, `valuation_date`) VALUES
(1, 13, 'Igor_Onaodowan', 'Missouri, Jefferson City', '15/07/1997', 1, 1, 1, 1, 1, 168, 84, 'dsa', 'dsa', 'Enquanto guiava pelas ruas de El Corona, você acaba realizando uma conversão incorreta e acaba cometendo uma infração, em contrapartida, havia uma viatura nesta mesma rua que flagrou o ocorrido. Ela, então, liga as sirenes e destaca a intenção de uma abordagem de trânsito. Você as acata e encosta o carro na beirada da pista. Consigo, haviam algumas gramas de maconha e uma pistola com um único carregador. Descreva sua reação diante da situação.', 'Imagine que você, branco, alguém de Marina, universitário, faz curso de contabilidades, pega um taxi. No meio do caminho, você nota que errou a rota para o taxista, e acabou parando num lugar como Ganton, no centro-sul da cidade, quase que desconhecido por você. Mas notório pela periculosidade e a sua cultura com gangues. Numa discussão com o taxista, você acaba sendo deixado no local e até mesmo sem pagar o taxi. Um grupo lhe aborda, pergunta de onde você é, o que você quer, e por quê tá ali. Descreva como você reagiria. E se eles tentassem roubar ou tomar alguma coisa de você?', 'dsa', 'das', '::1', 1671065213, '0', 'Nenhum', 0, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_apps_customskins`
--

CREATE TABLE `ucp_apps_customskins` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `character_id` int(11) NOT NULL,
  `default_ped_id` int(11) NOT NULL DEFAULT 1,
  `custom_ped_id` int(11) NOT NULL DEFAULT 0,
  `dff_archive` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `txd_archive` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `img_preview_skin` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `ip_send` varchar(120) NOT NULL DEFAULT 'Nenhum',
  `send_date` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `admin` varchar(120) NOT NULL DEFAULT 'Nenhum',
  `reason` text NOT NULL,
  `valuation_date` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_choices`
--

CREATE TABLE `ucp_choices` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_choices`
--

INSERT INTO `ucp_choices` (`id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 0, 'Deathmatching: Não existem motivos plausíveis e/ou suficientes para ceifar a vida dos envolvidos.'),
(2, 1, 0, 'Powergaming: Seu personagem seria incapaz de matar muitas pessoas sozinho.'),
(3, 1, 1, 'Metagaming: Seu personagem não teria como reconhecer os culpados por conta própria. Essa ação só ocorreu porque você ficou sabendo de forma externa.'),
(4, 2, 0, 'Solicito a supervisão de um administrador e me recuso a prosseguir o roleplay até que a solicitação seja atendida.'),
(5, 2, 0, 'Informo o jogador no /b que aquilo aparentemente é contra as regras e opto por não dar continuidade à situação até que aquilo tome um rumo diferente.'),
(6, 2, 1, 'Denuncio a situação, prossigo com o roleplay até o fim, busco uma resolução após isso e, caso necessário, denuncio o jogador via fórum para que administradores avaliem o caso. '),
(7, 3, 0, 'Deathmatching: não existem motivos plausíveis e/ou suficientes para ceifar a vida dos envolvidos.'),
(8, 3, 0, 'Powergaming: seu personagem seria incapaz de matar muitas pessoas sozinho.'),
(9, 3, 1, 'Cortesia Comum: você não pode deixar de seguir um roleplay só porque acha que estão quebrando uma regra, tampouco ofendê-los via chat OOC. (essa eh a certa, so n lembro msm a regra toda)'),
(10, 4, 0, 'O ato de realizar ações que seriam impossíveis na vida real;'),
(11, 4, 0, 'O ato de matar uma pessoa sem motivos plausíveis;'),
(12, 4, 1, 'O ato de utilizar-se de informações de fora do jogo para se beneficiar dentro do jogo.'),
(13, 5, 1, 'Ler os printscreens postados no tópico para que você saiba qual é o melhor lugar para fazer o seu personagem encontrar os membros da facção em questão e então tentar iniciar o entrosamento.'),
(14, 5, 0, 'Descobrir quem é o líder da facção e chama-lo através da caixa de mensagem privada disponibilizada no fórum.'),
(15, 5, 0, 'Ler os printscreens postados no tópico para que você saiba qual é o melhor lugar para fazer o seu personagem encontrar os membros da facção em questão e dizer que gostaria de se juntar àquela organização.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_logs`
--

CREATE TABLE `ucp_logs` (
  `ID` int(11) NOT NULL,
  `character` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `log` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_logs`
--

INSERT INTO `ucp_logs` (`ID`, `character`, `user`, `ip`, `timestamp`, `log`, `type`) VALUES
(1, 'NULL', 'wee', '::1', 1671083188, '[UCP]: wee zerou os AD Points do usuário outrouserEdge (ID 10).', 504),
(2, 'NULL', 'wee', '::1', 1671083307, '[UCP]: wee zerou os AD Points do usuário wee (ID 12).', 504),
(3, 'NULL', 'teste', '::1', 1671070470, '[UCP]: teste entrou em sua conta.', 500),
(4, 'NULL', 'wee', '::1', 1671085334, '[UCP]: wee zerou os AD Points do usuário usuarioEdge (ID 9).', 504),
(5, 'NULL', 'wee', '::1', 1671085337, '[UCP]: wee zerou os AD Points do usuário outrouserChrome (ID 11).', 504),
(6, 'NULL', 'wee', '::1', 1671085339, '[UCP]: wee zerou os AD Points do usuário teste (ID 13).', 504),
(7, 'NULL', 'wee', '::1', 1671085341, '[UCP]: wee zerou os AD Points do usuário usuarioChrome (ID 8).', 504),
(8, 'NULL', 'wee', '::1', 1671085947, '[UCP]: wee zerou os AD Points do usuário usuarioChrome (ID 8).', 504),
(9, 'NULL', 'wee', '::1', 1671087775, '[UCP]: wee acessou o painel administrativo.', 501),
(10, 'NULL', 'wee', '::1', 1671073759, '[UCP]: wee creditou 1 AD Points para todos os usuários.', 504),
(11, 'NULL', 'wee', '::1', 1671073837, '[UCP]: wee creditou 1 AD Points para o usuário teste (ID 13.', 504),
(12, 'NULL', 'wee', '::1', 1671074646, '[UCP]: wee zerou o AD Points de todos os usuários.', 504),
(13, 'NULL', 'wee', '::1', 1671074676, '[UCP]: wee zerou o AD Points de todos os usuários.', 504),
(14, 'NULL', 'wee', '::1', 1671074720, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(15, 'NULL', 'wee', '::1', 1671074802, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(16, 'NULL', 'wee', '::1', 1671074815, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(17, 'NULL', 'wee', '::1', 1671074824, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(18, 'NULL', 'wee', '::1', 1671074834, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(19, 'NULL', 'wee', '::1', 1671075244, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(20, 'NULL', 'wee', '::1', 1671075256, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(21, 'NULL', 'wee', '::1', 1671075514, '[UCP]: wee zerou o AD Points de todos os usuários.', 504),
(22, 'NULL', 'wee', '::1', 1671075524, '[UCP]: wee removeu 1 AD Points de todos os usuários.', 504),
(23, 'NULL', 'wee', '::1', 1671075539, '[UCP]: wee removeu 1 AD Points de todos os usuários.', 504),
(24, 'NULL', 'wee', '::1', 1671075575, '[UCP]: wee removeu 1 AD Points do usuário teste (ID 13).', 504),
(25, 'NULL', 'wee', '::1', 1671075669, '[UCP]: wee zerou o AD Points de todos os usuários.', 504),
(26, 'NULL', 'wee', '::1', 1671075707, '[UCP]: wee removeu 3 AD Points de todos os usuários.', 504),
(27, 'NULL', 'wee', '::1', 1671076141, '[UCP]: wee removeu 2 AD Points de todos os usuários.', 504),
(28, 'NULL', 'wee', '::1', 1671076235, '[UCP]: wee removeu 1 AD Points de todos os usuários.', 504),
(29, 'NULL', 'wee', '::1', 1671076253, '[UCP]: wee removeu 1 AD Points de todos os usuários.', 504),
(30, 'NULL', 'wee', '::1', 1671076264, '[UCP]: wee removeu 2 AD Points de todos os usuários.', 504),
(31, 'NULL', 'wee', '::1', 1671076342, '[UCP]: wee removeu -1 AD Points do usuário wee (ID 12).', 504),
(32, 'NULL', 'wee', '::1', 1671076388, '[UCP]: wee removeu -50 AD Points de todos os usuários.', 504),
(33, 'NULL', 'wee', '::1', 1671076405, '[UCP]: wee removeu -95 AD Points de todos os usuários.', 504),
(34, 'NULL', 'wee', '::1', 1671076578, '[UCP]: wee removeu 1 AD Points de todos os usuários.', 504),
(35, 'NULL', 'wee', '::1', 1671091077, '[UCP]: wee acessou o painel administrativo.', 501),
(36, 'NULL', 'wee', '::1', 1671114260, '[UCP]: wee acessou o painel administrativo.', 501),
(37, 'NULL', 'wee', '::1', 1671114908, '[UCP]: wee acessou o painel administrativo.', 501),
(38, 'NULL', 'wee', '::1', 1671100696, '[UCP]: wee creditou 1 AD Points para todos os usuários.', 504),
(39, 'NULL', 'wee', '::1', 1671115166, '[UCP]: wee acessou o painel administrativo.', 501),
(40, 'NULL', 'wee', '::1', 1671115942, '[UCP]: wee acessou o painel administrativo.', 501),
(41, 'NULL', 'wee', '::1', 1671125551, '[UCP]: wee acessou o painel administrativo.', 501),
(42, 'NULL', 'teste', '::1', 1671111297, '[UCP]: teste entrou em sua conta.', 500),
(43, 'NULL', 'wee', '::1', 1671125864, '[UCP]: wee acessou o painel administrativo.', 501);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_notifications`
--

CREATE TABLE `ucp_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notification_title` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `notification_body` text NOT NULL,
  `notification_author` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `notification_send_date` int(11) NOT NULL DEFAULT 0,
  `notification_read` int(1) NOT NULL DEFAULT 0,
  `notification_read_date` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_notifications`
--

INSERT INTO `ucp_notifications` (`id`, `user_id`, `notification_title`, `notification_body`, `notification_author`, `notification_send_date`, `notification_read`, `notification_read_date`) VALUES
(13, 12, 'teste', 'teste', 'wee', 1671111162, 0, 0),
(14, 13, 'teste', 'teste', 'wee', 1671111301, 1, 1671111306);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_posts`
--

CREATE TABLE `ucp_posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `post_title` text NOT NULL,
  `post_desc` text NOT NULL,
  `post_img` text NOT NULL,
  `post_send_date` int(11) NOT NULL DEFAULT 0,
  `post_target_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_questions`
--

CREATE TABLE `ucp_questions` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `text` text NOT NULL,
  `target` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `ucp_questions`
--

INSERT INTO `ucp_questions` (`id`, `question_number`, `text`, `target`) VALUES
(1, 1, 'Seu amigo foi morto na sua frente em uma troca de tiros, num beco aleatório de Los Santos. Algumas horas depois, fora do jogo e navegando pelo fórum do servidor, você encontra screenshots desse roleplay no tópico da facção responsável e, para acertar as contas, vai até o território deles com seu personagem, para concretizar a vingança.\n<br>\nDas opções abaixo, assinale a alternativa que configura a regra infringida:', 'signup'),
(2, 2, 'Você acha que um jogador envolvido no mesmo roleplay que você está quebrando uma regra que lhe prejudique. O que você faz?', 'signup'),
(3, 3, 'Seu personagem acaba de cometer uma infração na cidade e a polícia do servidor o para, alegando que você está preso. Posteriormente irritado por ter pedido, você ofende os policiais no chat OOC e puxa uma arma para matá-los, ou simplesmente fecha o jogo por seu descontentamento com o roleplay ali.\n<br>\nDas opções abaixo, assinale a alternativa que configua a regra infringida:', 'signup'),
(4, 4, 'Selecione a opção que melhor configura a definição da palavra \"Metagaming\":', 'signup'),
(5, 5, 'Você é munido com informações sobre uma determinada organização criminosa (por acompanhar no fórum o desenvolvimento desta facção) e decide que irá criar um personagem que melhor se adequa ao tipo de roleplay proposto e entregue por ela. Quais das opções apresentadas abaixo é considerada a forma correta para uma abordagem?', 'signup'),
(6, 1, 'Seu amigo querido foi sequestrado por uma gangue de mexicanos extremamente perigosos em El Corona. O que se sabe, é que muitos deles estão armados com armamento pesado (escopetas e submetralhadoras) e aguardando a polícia para negociarem. Você, aflito pela segurança do seu parceiro, tem uma pistola com você, próximo à região onde ele se encontra sequestrado. O que você faria?', 'new_character'),
(8, 2, 'Você tem uma rixa com uma pessoa há algumas semanas e existe uma cobrança a ser feita para dar um jeito no safado e deixá-lo ciente que nunca mais deve se meter com você, seja por bem ou por mal. Você o procura por toda a cidade durante todo esse tempo, e o encontra dentro de uma boate lotada, indefeso e bebendo com um grupo de colegas. O que você faria na hora?', 'new_character'),
(9, 3, 'Enquanto guiava pelas ruas de El Corona, você acaba realizando uma conversão incorreta e acaba cometendo uma infração, em contrapartida, havia uma viatura nesta mesma rua que flagrou o ocorrido. Ela, então, liga as sirenes e destaca a intenção de uma abordagem de trânsito. Você as acata e encosta o carro na beirada da pista. Consigo, haviam algumas gramas de maconha e uma pistola com um único carregador. Descreva sua reação diante da situação.', 'new_character'),
(10, 4, 'Você vagava pelas ruas de Los Santos dirigindo seu sedã em direção ao seu trabalho, como faz diariamente nos últimos anos. Por conta do trânsito intenso, você decide tomar uma rota alternativa e se depara com uma obra mal sinalizada enquanto fuçava o rádio, dada a situação, em milésimos de segundos, ocorre um acidente entre seu veículo e uma caçamba de lixo. Porém, como não havia ninguém por perto, você decide ignorar o ocorrido e volta a vagar tranquilamente. Descreva, em detalhes, o que há de errado neste cenário.', 'new_character'),
(11, 5, 'Imagine que você, branco, alguém de Marina, universitário, faz curso de contabilidades, pega um taxi. No meio do caminho, você nota que errou a rota para o taxista, e acabou parando num lugar como Ganton, no centro-sul da cidade, quase que desconhecido por você. Mas notório pela periculosidade e a sua cultura com gangues. Numa discussão com o taxista, você acaba sendo deixado no local e até mesmo sem pagar o taxi. Um grupo lhe aborda, pergunta de onde você é, o que você quer, e por quê tá ali. Descreva como você reagiria. E se eles tentassem roubar ou tomar alguma coisa de você?', 'new_character');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ucp_transactions`
--

CREATE TABLE `ucp_transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `product` varchar(128) NOT NULL,
  `price` int(11) NOT NULL,
  `external_reference` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `purchase_date` int(11) NOT NULL DEFAULT 0,
  `update_date` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(24) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `discord_tag` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `forum_username` varchar(128) NOT NULL DEFAULT 'Nenhum',
  `registration_ip` varchar(16) NOT NULL DEFAULT 'Nenhum',
  `registration_fingerprint` varchar(200) NOT NULL DEFAULT 'Nenhum',
  `registration_date` int(11) NOT NULL DEFAULT 0,
  `last_login` int(11) NOT NULL DEFAULT 0,
  `admin` int(11) NOT NULL DEFAULT 0,
  `dutytime` int(11) NOT NULL DEFAULT 0,
  `SOSAns` int(11) NOT NULL DEFAULT 0,
  `APPAns` int(11) NOT NULL DEFAULT 0,
  `redflag` int(11) NOT NULL DEFAULT 0,
  `newbie` int(11) NOT NULL DEFAULT 0,
  `jailtime` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `email`, `discord_tag`, `forum_username`, `registration_ip`, `registration_fingerprint`, `registration_date`, `last_login`, `admin`, `dutytime`, `SOSAns`, `APPAns`, `redflag`, `newbie`, `jailtime`) VALUES
(8, 'usuarioChrome', '$2y$11$P5CmM73kz4DciXC7bOVeJu2XTgZWXNMBRvCUgHkDtjK443uPSBNrO', 'usuario1@gmail.com', 'usuario#1111', 'Usuario', '::1', 'XnHDwcO6cR7szTp9D2HP', 1660336602, 0, 0, 0, 0, 0, 0, 0, -1),
(9, 'usuarioEdge', '$2y$11$GLeDl/dDvfmC5cThxNjyE.9jTrH.H6upakWPAvFlUGPPgraOs6rKC', 'usuario@usuario.com', 'wee#4342', 'Wee', '::1', 'oTBCUPlEfak99R8rINzI', 1660336681, 0, 0, 0, 0, 0, 0, 0, -1),
(10, 'outrouserEdge', '$2y$11$fLQAcH2bSIWnDXKUAmxzfO1Vh.jDW2C4l9g1pFFpITPomd2QYwD1a', 'outrouserEdge@hotmail.com', 'weE#4578', 'dsaddd', '::1', 'oTBCUPlEfak99R8rINzI', 1660336960, 0, 0, 0, 0, 0, 0, 0, -1),
(11, 'outrouserChrome', '$2y$11$igLunqdZkuoDAV1eFK0FsuMvEDK4POjHSov5YSo1cZQTuDyNPOm..', 'outrouserChrome@gmail.com', 'sdadd#2222', 'dsads', '::1', 'XnHDwcO6cR7szTp9D2HP', 1660337001, 0, 0, 0, 0, 0, 0, 0, -1),
(12, 'wee', '$2y$11$DLu9QuKQgW9sZNkwX/dFP.7IgwnI6zA.grJoqxuApDxdjLxs9RZHe', 'igoramarques99@gmail.com', 'wee#0183', 'wee', '::1', 'jB1HBD2cMVl0ApjnAKSE', 1671053965, 1671065186, 1337, 0, 0, 0, 0, 0, -1),
(13, 'teste', '$2y$11$Ym8zK.i996P6gIj6xpNBHuQIMglorQbjlIrTXWWD7WoeDOrn1wU..', 'teste@gmail.com', 'teste#0101', 'teste', '::1', 'Nenhum', 1671065182, 0, 0, 0, 0, 0, 0, 0, -1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_premium`
--

CREATE TABLE `users_premium` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `name_changes` int(11) NOT NULL DEFAULT 0,
  `number_changes` int(11) NOT NULL DEFAULT 0,
  `fight_changes` int(11) NOT NULL DEFAULT 0,
  `plate_changes` int(11) NOT NULL DEFAULT 0,
  `chars_slots` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users_premium`
--

INSERT INTO `users_premium` (`ID`, `user_id`, `points`, `name_changes`, `number_changes`, `fight_changes`, `plate_changes`, `chars_slots`) VALUES
(1, 8, 1, 0, 0, 0, 0, 5),
(2, 9, 1, 0, 0, 0, 0, 5),
(3, 10, 1, 0, 0, 0, 0, 5),
(4, 11, 1, 0, 0, 0, 0, 5),
(5, 12, 161, 0, 0, 0, 0, 5),
(6, 13, 1, 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_teams`
--

CREATE TABLE `users_teams` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `head_faction_team` int(11) NOT NULL DEFAULT 0,
  `head_property_team` int(11) NOT NULL DEFAULT 0,
  `head_event_team` int(11) NOT NULL DEFAULT 0,
  `head_ck_team` int(11) NOT NULL DEFAULT 0,
  `faction_team` int(11) NOT NULL DEFAULT 0,
  `property_team` int(11) NOT NULL DEFAULT 0,
  `event_team` int(11) NOT NULL DEFAULT 0,
  `ck_team` int(11) NOT NULL DEFAULT 0,
  `log_team` int(11) NOT NULL DEFAULT 0,
  `ucp_admin_announcements` int(11) NOT NULL DEFAULT 0,
  `ucp_posts` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `users_teams`
--

INSERT INTO `users_teams` (`ID`, `user_id`, `head_faction_team`, `head_property_team`, `head_event_team`, `head_ck_team`, `faction_team`, `property_team`, `event_team`, `ck_team`, `log_team`, `ucp_admin_announcements`, `ucp_posts`) VALUES
(0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicles`
--

CREATE TABLE `vehicles` (
  `ID` int(11) NOT NULL,
  `character_id` int(11) NOT NULL DEFAULT 0,
  `model` int(11) NOT NULL DEFAULT 0,
  `faction` int(11) NOT NULL DEFAULT -1,
  `business` int(11) NOT NULL DEFAULT -1,
  `name` varchar(256) NOT NULL DEFAULT 'Default',
  `personalized_name` int(11) NOT NULL DEFAULT 0,
  `plate` varchar(128) NOT NULL DEFAULT 'Default',
  `personalized_plate` int(11) NOT NULL DEFAULT 0,
  `locked` int(11) NOT NULL DEFAULT 0,
  `color1` int(11) NOT NULL DEFAULT 0,
  `color2` int(11) NOT NULL DEFAULT 0,
  `paintjob` int(11) NOT NULL DEFAULT 0,
  `positionX` float NOT NULL DEFAULT 0,
  `positionY` float NOT NULL DEFAULT 0,
  `positionZ` float NOT NULL DEFAULT 0,
  `positionA` float NOT NULL DEFAULT 0,
  `virtual_world` int(11) NOT NULL DEFAULT 0,
  `interior` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicles_tunings`
--

CREATE TABLE `vehicles_tunings` (
  `ID` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT 0,
  `mod1` int(11) NOT NULL DEFAULT 0,
  `mod2` int(11) NOT NULL DEFAULT 0,
  `mod3` int(11) NOT NULL DEFAULT 0,
  `mod4` int(11) NOT NULL DEFAULT 0,
  `mod5` int(11) NOT NULL DEFAULT 0,
  `mod6` int(11) NOT NULL DEFAULT 0,
  `mod7` int(11) NOT NULL DEFAULT 0,
  `mod8` int(11) NOT NULL DEFAULT 0,
  `mod9` int(11) NOT NULL DEFAULT 0,
  `mod10` int(11) NOT NULL DEFAULT 0,
  `mod11` int(11) NOT NULL DEFAULT 0,
  `mod12` int(11) NOT NULL DEFAULT 0,
  `mod13` int(11) NOT NULL DEFAULT 0,
  `mod14` int(11) NOT NULL DEFAULT 0,
  `mod15` int(11) NOT NULL DEFAULT 0,
  `mod16` int(11) NOT NULL DEFAULT 0,
  `mod17` int(11) NOT NULL DEFAULT 0,
  `mod18` int(11) NOT NULL DEFAULT 0,
  `mod19` int(11) NOT NULL DEFAULT 0,
  `mod20` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicles_weapons`
--

CREATE TABLE `vehicles_weapons` (
  `ID` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL DEFAULT 0,
  `weapon1` int(11) NOT NULL DEFAULT 0,
  `ammo1` int(11) NOT NULL DEFAULT 0,
  `weapon_type1` int(11) NOT NULL DEFAULT 0,
  `weapon2` int(11) NOT NULL DEFAULT 0,
  `ammo2` int(11) NOT NULL DEFAULT 0,
  `weapon_type2` int(11) NOT NULL DEFAULT 0,
  `weapon3` int(11) NOT NULL DEFAULT 0,
  `ammo3` int(11) NOT NULL DEFAULT 0,
  `weapon_type3` int(11) NOT NULL DEFAULT 0,
  `weapon4` int(11) NOT NULL DEFAULT 0,
  `ammo4` int(11) NOT NULL DEFAULT 0,
  `weapon_type4` int(11) NOT NULL DEFAULT 0,
  `weapon5` int(11) NOT NULL DEFAULT 0,
  `ammo5` int(11) NOT NULL DEFAULT 0,
  `weapon_type5` int(11) NOT NULL DEFAULT 0,
  `weapon6` int(11) NOT NULL DEFAULT 0,
  `ammo6` int(11) NOT NULL DEFAULT 0,
  `weapon_type6` int(11) NOT NULL DEFAULT 0,
  `weapon7` int(11) NOT NULL DEFAULT 0,
  `ammo7` int(11) NOT NULL DEFAULT 0,
  `weapon_type7` int(11) NOT NULL DEFAULT 0,
  `weapon8` int(11) NOT NULL DEFAULT 0,
  `ammo8` int(11) NOT NULL DEFAULT 0,
  `weapon_type8` int(11) NOT NULL DEFAULT 0,
  `weapon9` int(11) NOT NULL DEFAULT 0,
  `ammo9` int(11) NOT NULL DEFAULT 0,
  `weapon_type9` int(11) NOT NULL DEFAULT 0,
  `weapon10` int(11) NOT NULL DEFAULT 0,
  `ammo10` int(11) NOT NULL DEFAULT 0,
  `weapon_type10` int(11) NOT NULL DEFAULT 0,
  `weapon11` int(11) NOT NULL DEFAULT 0,
  `ammo11` int(11) NOT NULL DEFAULT 0,
  `weapon_type11` int(11) NOT NULL DEFAULT 0,
  `weapon12` int(11) NOT NULL DEFAULT 0,
  `ammo12` int(11) NOT NULL DEFAULT 0,
  `weapon_type12` int(11) NOT NULL DEFAULT 0,
  `weapon13` int(11) NOT NULL DEFAULT 0,
  `ammo13` int(11) NOT NULL DEFAULT 0,
  `weapon_type13` int(11) NOT NULL DEFAULT 0,
  `weapon14` int(11) NOT NULL DEFAULT 0,
  `ammo14` int(11) NOT NULL DEFAULT 0,
  `weapon_type14` int(11) NOT NULL DEFAULT 0,
  `weapon15` int(11) NOT NULL DEFAULT 0,
  `ammo15` int(11) NOT NULL DEFAULT 0,
  `weapon_type15` int(11) NOT NULL DEFAULT 0,
  `weapon16` int(11) NOT NULL DEFAULT 0,
  `ammo16` int(11) NOT NULL DEFAULT 0,
  `weapon_type16` int(11) NOT NULL DEFAULT 0,
  `weapon17` int(11) NOT NULL DEFAULT 0,
  `ammo17` int(11) NOT NULL DEFAULT 0,
  `weapon_type17` int(11) NOT NULL DEFAULT 0,
  `weapon18` int(11) NOT NULL DEFAULT 0,
  `ammo18` int(11) NOT NULL DEFAULT 0,
  `weapon_type18` int(11) NOT NULL DEFAULT 0,
  `weapon19` int(11) NOT NULL DEFAULT 0,
  `ammo19` int(11) NOT NULL DEFAULT 0,
  `weapon_type19` int(11) NOT NULL DEFAULT 0,
  `weapon20` int(11) NOT NULL DEFAULT 0,
  `ammo20` int(11) NOT NULL DEFAULT 0,
  `weapon_type20` int(11) NOT NULL DEFAULT 0,
  `weapon21` int(11) NOT NULL DEFAULT 0,
  `ammo21` int(11) NOT NULL DEFAULT 0,
  `weapon_type21` int(11) NOT NULL DEFAULT 0,
  `weapon22` int(11) NOT NULL DEFAULT 0,
  `ammo22` int(11) NOT NULL DEFAULT 0,
  `weapon_type22` int(11) NOT NULL DEFAULT 0,
  `weapon23` int(11) NOT NULL DEFAULT 0,
  `ammo23` int(11) NOT NULL DEFAULT 0,
  `weapon_type23` int(11) NOT NULL DEFAULT 0,
  `weapon24` int(11) NOT NULL DEFAULT 0,
  `ammo24` int(11) NOT NULL DEFAULT 0,
  `weapon_type24` int(11) NOT NULL DEFAULT 0,
  `weapon25` int(11) NOT NULL DEFAULT 0,
  `ammo25` int(11) NOT NULL DEFAULT 0,
  `weapon_type25` int(11) NOT NULL DEFAULT 0,
  `weapon26` int(11) NOT NULL DEFAULT 0,
  `ammo26` int(11) NOT NULL DEFAULT 0,
  `weapon_type26` int(11) NOT NULL DEFAULT 0,
  `weapon27` int(11) NOT NULL DEFAULT 0,
  `ammo27` int(11) NOT NULL DEFAULT 0,
  `weapon_type27` int(11) NOT NULL DEFAULT 0,
  `weapon28` int(11) NOT NULL DEFAULT 0,
  `ammo28` int(11) NOT NULL DEFAULT 0,
  `weapon_type28` int(11) NOT NULL DEFAULT 0,
  `weapon29` int(11) NOT NULL DEFAULT 0,
  `ammo29` int(11) NOT NULL DEFAULT 0,
  `weapon_type29` int(11) NOT NULL DEFAULT 0,
  `weapon30` int(11) NOT NULL DEFAULT 0,
  `ammo30` int(11) NOT NULL DEFAULT 0,
  `weapon_type30` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `banned_id` (`banned_id`);

--
-- Índices para tabela `character_licences_driver`
--
ALTER TABLE `character_licences_driver`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `custom_skins`
--
ALTER TABLE `custom_skins`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `furniture_info`
--
ALTER TABLE `furniture_info`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `houses_other_entries`
--
ALTER TABLE `houses_other_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `house_id` (`house_id`);

--
-- Índices para tabela `interiors_info`
--
ALTER TABLE `interiors_info`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `players_apparence`
--
ALTER TABLE `players_apparence`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `players_premium`
--
ALTER TABLE `players_premium`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `players_weapons`
--
ALTER TABLE `players_weapons`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `pool_tables`
--
ALTER TABLE `pool_tables`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `serverlogs`
--
ALTER TABLE `serverlogs`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tradings`
--
ALTER TABLE `tradings`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `tradings_owners`
--
ALTER TABLE `tradings_owners`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`),
  ADD KEY `trading_id` (`trading_id`);

--
-- Índices para tabela `ucp_announcements`
--
ALTER TABLE `ucp_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ucp_apps`
--
ALTER TABLE `ucp_apps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `ucp_apps_customskins`
--
ALTER TABLE `ucp_apps_customskins`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `ucp_choices`
--
ALTER TABLE `ucp_choices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ucp_logs`
--
ALTER TABLE `ucp_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `ucp_notifications`
--
ALTER TABLE `ucp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `ucp_posts`
--
ALTER TABLE `ucp_posts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ucp_questions`
--
ALTER TABLE `ucp_questions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ucp_transactions`
--
ALTER TABLE `ucp_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `users_premium`
--
ALTER TABLE `users_premium`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `character_id` (`character_id`);

--
-- Índices para tabela `vehicles_tunings`
--
ALTER TABLE `vehicles_tunings`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Índices para tabela `vehicles_weapons`
--
ALTER TABLE `vehicles_weapons`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ban`
--
ALTER TABLE `ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `character_licences_driver`
--
ALTER TABLE `character_licences_driver`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_skins`
--
ALTER TABLE `custom_skins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `furniture_info`
--
ALTER TABLE `furniture_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `houses_other_entries`
--
ALTER TABLE `houses_other_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `interiors_info`
--
ALTER TABLE `interiors_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `players`
--
ALTER TABLE `players`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `players_apparence`
--
ALTER TABLE `players_apparence`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `players_premium`
--
ALTER TABLE `players_premium`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `players_weapons`
--
ALTER TABLE `players_weapons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pool_tables`
--
ALTER TABLE `pool_tables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `serverlogs`
--
ALTER TABLE `serverlogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1260;

--
-- AUTO_INCREMENT de tabela `tradings`
--
ALTER TABLE `tradings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tradings_owners`
--
ALTER TABLE `tradings_owners`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ucp_announcements`
--
ALTER TABLE `ucp_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `ucp_apps`
--
ALTER TABLE `ucp_apps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ucp_apps_customskins`
--
ALTER TABLE `ucp_apps_customskins`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ucp_choices`
--
ALTER TABLE `ucp_choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `ucp_logs`
--
ALTER TABLE `ucp_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `ucp_notifications`
--
ALTER TABLE `ucp_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `ucp_posts`
--
ALTER TABLE `ucp_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ucp_questions`
--
ALTER TABLE `ucp_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `ucp_transactions`
--
ALTER TABLE `ucp_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users_premium`
--
ALTER TABLE `users_premium`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `vehicles_tunings`
--
ALTER TABLE `vehicles_tunings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vehicles_weapons`
--
ALTER TABLE `vehicles_weapons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
