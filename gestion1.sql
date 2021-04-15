-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 06:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion1`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `filiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `nom`, `filiere`) VALUES
(1, 'PHP', 24),
(2, 'THERMO', 23),
(3, 'MECANIQUE', 22),
(10, 'ELECTRIC', 22),
(19, 'nnngg', 48);

-- --------------------------------------------------------

--
-- Table structure for table `employe`
--

CREATE TABLE `employe` (
  `cin` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employe`
--

INSERT INTO `employe` (`cin`, `nom`, `prenom`, `email`, `telephone`, `adresse`, `password`, `role`, `photo`) VALUES
('BBBBBBB', 'Nafil', 'Ayoub', 'ayoub6nafil10@gmail.com', '0666666666', 'AAAAAAAAAAAAAAAAAA', 'ab4f63f9ac65152575886860dde480a1', 'Admin', 'admin.png'),
('dfg', 'fdg', 'dffd', 'ghirnetflix512@gmail.com', '0263232332', 'dfgdfg', 'ab4f63f9ac65152575886860dde480a1', 'Admin', '38d7355701b6f3760ee49852904319c1.jpg'),
('dfgd', 'sdf', 'sdf', 'fsdd@ds.sd', 'sdf', 'sdfsdf', 'ab4f63f9ac65152575886860dde480a1', 'Directeur', 'e23815365a761e4b397ce30822a2d5bb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `filiere`
--

CREATE TABLE `filiere` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filiere`
--

INSERT INTO `filiere` (`id`, `code`, `libelle`) VALUES
(22, 'G2E', 'Genie Electrique'),
(23, 'GI', 'Genie Industru'),
(24, '2ITE', 'Genie Info'),
(48, 'hhh', 'ghhh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filiere` (`filiere`);

--
-- Indexes for table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `filiere`
--
ALTER TABLE `filiere`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `filiere`
--
ALTER TABLE `filiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`filiere`) REFERENCES `filiere` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
