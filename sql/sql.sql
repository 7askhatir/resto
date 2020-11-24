-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 24 nov. 2020 à 15:43
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `resto`
--

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

CREATE TABLE `command` (
  `idcommand` int(11) NOT NULL,
  `dateCommand` date NOT NULL,
  `plat_idplat` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`idcommand`, `dateCommand`, `plat_idplat`, `email`) VALUES
(1, '2020-11-03', 6, 'CCC'),
(2, '2024-11-20', 8, NULL),
(3, '2024-11-20', 1, 'askhatir7@gmail.com'),
(4, '2024-11-20', 7, 'youshop@admin.ma'),
(5, '2024-11-20', 6, 'youshop@admin.ma'),
(6, '2024-11-20', 9, 'askhatir7@gmail.coma'),
(7, '2024-11-20', 11, 'askhatir7@gmail.com'),
(8, '2024-11-20', 11, 'askhatir7@gmail.com'),
(9, '2024-11-20', 5, 'askhatir7@gmail.coma'),
(10, '2024-11-20', 4, 'askhatir7@gmail.coma'),
(11, '2024-11-20', 7, 'askhatir7@gmail.com'),
(12, '2024-11-20', 10, 'askhatir7@gmail.com'),
(13, '2024-11-20', 10, 'askhatir7@gmail.com'),
(14, '2024-11-20', 10, 'askhatir7@gmail.com'),
(15, '2024-11-20', 4, 'askhatir7@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `idplat` int(10) UNSIGNED NOT NULL,
  `nomePlat` varchar(45) NOT NULL,
  `descPlat` varchar(45) NOT NULL,
  `prixPlat` int(11) NOT NULL,
  `imgPlat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`idplat`, `nomePlat`, `descPlat`, `prixPlat`, `imgPlat`) VALUES
(1, 'cokis', 'kiks', 20, 'ccc.png'),
(4, 'polit', 'fff fff   fffff ffff', 20, 'ccc.png'),
(5, 'poissant', 'fff fff   fffff ffff', 20, 'ccc.png'),
(6, 'coskos', 'fff fff   fffff ffff', 20, 'ccc.png'),
(7, 'pezza', 'fff fff   fffff ffff', 20, 'ccc.png'),
(8, 'sandwish', 'fff fff   fffff ffff', 20, 'ccc.png'),
(9, 'dande', 'fff fff   fffff ffff', 20, 'ccc.png'),
(10, 'tacos', 'fff fff   fffff ffff', 20, 'ccc.png'),
(11, 'salade', 'fff fff   fffff ffff', 20, 'ccc.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `prenome` varchar(45) NOT NULL,
  `num` int(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`iduser`, `nome`, `prenome`, `num`, `email`) VALUES
(95, 'kh', 'ask', 123, 'askhatir7@gmail.coma'),
(96, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(97, 'kh', 'ask', 123, 'askhatir7@gmail.coma'),
(98, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(99, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(100, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(101, 'vvvvvv', 'askhatir', 2222, 'youshop@admin.ma'),
(102, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(103, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(104, 'kh', 'ask', 123, 'askhatir7@gmail.coma'),
(105, 'kh', 'ask', 123, 'askhatir7@gmail.coma'),
(106, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(107, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(108, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(109, 'khalid', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(110, 'vvvvvv', 'askhatir', 673396332, 'askhatir7@gmail.com'),
(111, 'khalid', 'askhatir', 0, 'askhatir7@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `command`
--
ALTER TABLE `command`
  ADD UNIQUE KEY `idcommand_UNIQUE` (`idcommand`),
  ADD KEY `fk_command_plat_idx` (`plat_idplat`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`idplat`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `command`
--
ALTER TABLE `command`
  MODIFY `idcommand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `idplat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `fk_command_plat` FOREIGN KEY (`plat_idplat`) REFERENCES `plat` (`idplat`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
