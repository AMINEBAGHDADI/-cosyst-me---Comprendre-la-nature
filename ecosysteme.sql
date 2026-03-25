-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 mars 2025 à 17:48
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecosysteme`
--

-- --------------------------------------------------------

--
-- Structure de la table `habitat`
--

CREATE TABLE `habitat` (
  `idHabitat` int(11) NOT NULL,
  `nomHabitat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habitat`
--

INSERT INTO `habitat` (`idHabitat`, `nomHabitat`) VALUES
(1, 'Forêt'),
(2, 'Prairie'),
(3, 'Montagnes'),
(4, 'Marais');

-- --------------------------------------------------------

--
-- Structure de la table `interaction`
--

CREATE TABLE `interaction` (
  `idInter` varchar(4) NOT NULL,
  `idEspece` int(11) DEFAULT NULL,
  `idHabitat` int(11) DEFAULT NULL,
  `typeInter` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `interaction`
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
-- Index pour les tables déchargées
--

--
-- Index pour la table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`idHabitat`);

--
-- Index pour la table `interaction`
--
ALTER TABLE `interaction`
  ADD PRIMARY KEY (`idInter`),
  ADD KEY `idHabitat` (`idHabitat`),
  ADD KEY `idEspece` (`idEspece`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `habitat`
--
ALTER TABLE `habitat`
  MODIFY `idHabitat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
