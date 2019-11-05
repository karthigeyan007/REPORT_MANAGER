-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 03:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kk`
--

-- --------------------------------------------------------

--
-- Table structure for table `base`
--

CREATE TABLE `base` (
  `SUPPLIER` varchar(250) NOT NULL,
  `ITEM` varchar(250) NOT NULL,
  `DATE` varchar(25) NOT NULL,
  `GRN.NO/DATE` int(50) NOT NULL,
  `itemcode` varchar(250) NOT NULL,
  `QTY` int(250) NOT NULL,
  `SAMPLESIZE` int(250) NOT NULL,
  `SAMPLEPLANREF` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base`
--

INSERT INTO `base` (`SUPPLIER`, `ITEM`, `DATE`, `GRN.NO/DATE`, `itemcode`, `QTY`, `SAMPLESIZE`, `SAMPLEPLANREF`) VALUES
('atma automation', 'bobin', '25/09/19', 24, '001', 550, 55, 'karthio'),
('atma automation', 'bobin', '27/09/19', 24, '15', 550, 55, 'ref.supp'),
('Atma Automation', 'nut', '27/09/19', 45, '12', 1100, 11, 'ref.supplier'),
('Atma Automation', 'nut', '27/09/19', 45, '12', 1100, 11, 'ref.supplier');

-- --------------------------------------------------------

--
-- Table structure for table `superdata`
--

CREATE TABLE `superdata` (
  `itemcode` varchar(250) NOT NULL,
  `A` varchar(250) NOT NULL,
  `B` varchar(250) NOT NULL,
  `C` varchar(250) NOT NULL,
  `D` varchar(250) NOT NULL,
  `E` varchar(250) NOT NULL,
  `F` varchar(250) NOT NULL,
  `G` varchar(250) NOT NULL,
  `H` varchar(250) NOT NULL,
  `I` varchar(250) NOT NULL,
  `ITEM.NO:` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superdata`
--

INSERT INTO `superdata` (`itemcode`, `A`, `B`, `C`, `D`, `E`, `F`, `G`, `H`, `I`, `ITEM.NO:`) VALUES
('15', '4', '1', '4', '5', '5', '5', '5', '5', '5', '5'),
('15', '1', '2', '3', '4', '5', '6', '6', '785', '74', 'spec'),
('12', '44', '45', '44', '54', '44', '45', '44', '42', '41', 'spec');

-- --------------------------------------------------------

--
-- Table structure for table `supervisor`
--

CREATE TABLE `supervisor` (
  `SL.NO:` int(250) NOT NULL,
  `ATTRIBUTES` varchar(250) NOT NULL,
  `SPECIFIED` varchar(250) NOT NULL,
  `itemcode` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supervisor`
--

INSERT INTO `supervisor` (`SL.NO:`, `ATTRIBUTES`, `SPECIFIED`, `itemcode`) VALUES
(1, 'Checker', 'QC', 1),
(2, 'tester', 'QC', 1),
(1, 'QC', 'Make', 15),
(1, 'QC', 'Size', 12),
(2, 'QC', 'Size', 12),
(3, 'QC', 'Size', 12),
(2, 'QC', 'MAKE', 15);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `OBSERVED` varchar(250) NOT NULL,
  `REMARKS` varchar(250) NOT NULL,
  `itemcode` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`OBSERVED`, `REMARKS`, `itemcode`) VALUES
('checked', 'tested', 1),
('checked', 'tested', 1),
('tested', 'Plastic', 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
