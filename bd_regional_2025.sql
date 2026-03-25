-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2026 at 09:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd regional 2025`
--

-- --------------------------------------------------------

--
-- Table structure for table `espece`
--

CREATE TABLE `espece` (
  `idEspece` int(11) NOT NULL,
  `nomEspece` varchar(20) NOT NULL,
  `typeEspece` varchar(20) NOT NULL,
  `Regime` enum('Carnivore','herbivore','omnivore') NOT NULL,
  `statusEspece` enum('En danger','stable','Preoccupation mineur') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `espece`
--

INSERT INTO `espece` (`idEspece`, `nomEspece`, `typeEspece`, `Regime`, `statusEspece`) VALUES
(1, 'Loup', 'Mammifere', 'Carnivore', 'En danger'),
(2, 'Cerf', 'Mammifere', 'herbivore', 'stable'),
(3, 'Renard', 'Mammifere', 'Carnivore', 'En danger'),
(4, 'Aigle', 'Oiseau', 'Carnivore', 'Preoccupation mineur'),
(5, 'Lapin', 'Mammifere', 'herbivore', 'stable'),
(6, 'Cannard', 'Oiseau', 'omnivore', 'stable');

-- --------------------------------------------------------

--
-- Table structure for table `habitat`
--

CREATE TABLE `habitat` (
  `idHabitat` int(11) NOT NULL,
  `nomHabitat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `habitat`
--

INSERT INTO `habitat` (`idHabitat`, `nomHabitat`) VALUES
(1, 'Forêt'),
(2, 'Prairie'),
(3, 'Montagnes'),
(4, 'Marais');

-- --------------------------------------------------------

--
-- Table structure for table `interaction`
--

CREATE TABLE `interaction` (
  `idInter` varchar(4) NOT NULL,
  `idEspece` int(11) DEFAULT NULL,
  `idHabitat` int(11) DEFAULT NULL,
  `typeInter` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interaction`
--

INSERT INTO `interaction` (`idInter`, `idEspece`, `idHabitat`, `typeInter`) VALUES
('IN11', 1, 1, 'Prédation'),
('IN21', 2, 1, 'Prédation'),
('IN22', 2, 2, 'Herbivorisme'),
('IN32', 3, 2, 'Prédation'),
('IN43', 4, 3, 'Prédation'),
('IN51', 5, 1, 'Proie'),
('IN54', 5, 4, 'Proie'),
('IN64', 6, 4, 'Omnivorisme');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `espece`
--
ALTER TABLE `espece`
  ADD PRIMARY KEY (`idEspece`);

--
-- Indexes for table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`idHabitat`);

--
-- Indexes for table `interaction`
--
ALTER TABLE `interaction`
  ADD PRIMARY KEY (`idInter`),
  ADD KEY `idHabitat` (`idHabitat`),
  ADD KEY `idEspece` (`idEspece`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `espece`
--
ALTER TABLE `espece`
  MODIFY `idEspece` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `habitat`
--
ALTER TABLE `habitat`
  MODIFY `idHabitat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interaction`
--
ALTER TABLE `interaction`
  ADD CONSTRAINT `interaction_ibfk_1` FOREIGN KEY (`idEspece`) REFERENCES `espece` (`idEspece`),
  ADD CONSTRAINT `interaction_ibfk_2` FOREIGN KEY (`idHabitat`) REFERENCES `habitat` (`idHabitat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
