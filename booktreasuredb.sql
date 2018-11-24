-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 12 Octobre 2018 à 13:32
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `booktreasuredb`
--

-- --------------------------------------------------------

--
-- Structure de la table `admininfos`
--


CREATE TABLE `admininfos` (
  `idadmin` int(11) UNSIGNED NOT NULL,
  `prenomadmin` varchar(50) NOT NULL,
  `nomadmin` varchar(50) NOT NULL,
  
`identifiantadmin` varchar(50) NOT NULL,
  `motdepassadmin` varchar(50) NOT NULL,
  `typeadmin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Contenu de la table `admininfos`
--

INSERT INTO `admininfos` (`idadmin`, `prenomadmin`, `nomadmin`, `identifiantadmin`, `motdepassadmin`, `typeadmin`) VALUES
(2,
 'Mohamed', 'Bah', 'batobad', 'admin', 'Admin'),
(25, 'Fatoumata Diaraye', 'Diallo', 'fddbah', 'admin', 'Commercial'),
(27, 'Mohamed', 'Camara', 'mcamara', 'admin', 'Admin'),
(28, 'Ousseynou', 'Diallo', 'osene', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `categorieinfos`
--

CREATE TABLE `categorieinfos` (
  `idcategorie` int(11) NOT NULL,
  `nomcategorie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categorieinfos`
--

INSERT INTO `categorieinfos` (`idcategorie`, `nomcategorie`) VALUES
(4, 'C#'),
(1, 'Java'),
(3, 'PHP'),
(2, 'Python'),
(5, 'VB .NET');

-- --------------------------------------------------------

--
-- Structure de la table `retrouvermotdepasse`
--

CREATE TABLE `retrouvermotdepasse` (
  `idretrouvermotdepasse` int(10) UNSIGNED NOT NULL,
  `nomutilisateur` varchar(40) NOT NULL,
  `questionsecrete` varchar(100) NOT NULL,
  `reponse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Contenu de la table `retrouvermotdepasse`
--

INSERT INTO `retrouvermotdepasse` (`idretrouvermotdepasse`, `nomutilisateur`, `questionsecrete`, `reponse`) 
VALUES
(2, 'batobad', 'Quel est votre sport favori', 'Football'),
(3, 'fdd', 'Quel est votre sport favori', 'Football'),
(4, 'amadou',
 'Quel est votre sport favori', 'Football'),
(5, 'moustra', 'Quel est votre animal prefere', 'Chat');


-- --------------------------------------------------------

--
-- 
Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateurid` int(11) UNSIGNED NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50)
 NOT NULL,
  `email` varchar(30) NOT NULL,
  `emailsecours` varchar(30) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `telmobile` varchar(20) NOT NULL,
 
 `adresse1` varchar(50) NOT NULL,
  `adresse2` varchar(50) DEFAULT NULL,
  `codepostal` varchar(20) NOT NULL,
  `datenaiss` date NOT NULL,
 
 `genre` varchar(10) NOT NULL,
  `situationmatrimoniale` varchar(20) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `pays` varchar(50) NOT NULL,
  
`utilisateurloginid` int(11) UNSIGNED NOT NULL,
  `idretrouvermotdepasse` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateurid`, `prenom`, `nom`, `email`, `emailsecours`, `tel`, `telmobile`, `adresse1`, `adresse2`, `codepostal`, `datenaiss`, `genre`, `situationmatrimoniale`, `ville`, `pays`, `utilisateurloginid`, `idretrouvermotdepasse`) VALUES
(1, 'Mohamed', 'Bah', 'batobad@yahoo.fr', 'batobad@yahoo.fr', '77 568 89 33', '70 256 32 21', 'Castors2', NULL, '45213', '2000-05-02', 'masculin', 'marie', 'Dakar', 'Cote Ivoire', 2, 2),
(2, 'Fatoumata Diaraye', 'Diallo', 'fddbah@yahoo.fr', 'fddbah@yahoo.fr', '74 486 62 31 ', '21 356 30 21', 'Castor', NULL, '745869', '1949-12-04', 'feminin', 'marie', 'Dakar', 'Cote Ivoire', 3, 3),
(3, 'Amadou', 'Barry', 'amadou@yahoo.fr', 'amadou@yahoo.fr', '74 580 12 36', '75 235 02 10', 'Castors2', NULL, '745869', '0210-02-01', 'masculin', 'marie', 'Pikine', 'Cote Ivoire', 4, 4),
(4, 'Moussa', 'Traoré', 'moustra@yahoo.fr', 'moustra@gmail.com', '33 546 62 33', '77 564 41 20', 'Sicap Yarakh', NULL, '45789', '2010-03-02', 'masculin', 'celibataire', 'Dakar', 'Senegal', 5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurlogin`
--

CREATE TABLE `utilisateurlogin` (
  `utilisateurloginid` int(11) UNSIGNED NOT NULL,
  `nomutilisateur` varchar(40) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `motdepasse` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurlogin`
--

INSERT INTO `utilisateurlogin` (`utilisateurloginid`, `nomutilisateur`, `motdepasse`) VALUES
(2, 'batobad', 'batobad'),
(3, 'fdd', 'fdd'),
(4, 'amadou', 'amadou'),
(5, 'moustra', 'moussa');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admininfos`
--
ALTER TABLE `admininfos`
  ADD PRIMARY KEY (`idadmin`),
  ADD UNIQUE KEY `identifiantadmin` (`identifiantadmin`);

--
-- Index pour la table `categorieinfos`
--
ALTER TABLE `categorieinfos`
  ADD PRIMARY KEY (`idcategorie`),
  ADD UNIQUE KEY `nomcategorie` (`nomcategorie`);

--
-- Index pour la table `retrouvermotdepasse`
--
ALTER TABLE `retrouvermotdepasse`
  ADD PRIMARY KEY (`idretrouvermotdepasse`),
  ADD KEY `id` (`idretrouvermotdepasse`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`utilisateurid`),
  ADD KEY `utilisateurid` (`utilisateurid`),
  ADD KEY `fk_utilisteuloginid` (`utilisateurloginid`),
  ADD KEY `fk_idretrouvermotdepasse` (`idretrouvermotdepasse`);

--
-- Index pour la table `utilisateurlogin`
--
ALTER TABLE `utilisateurlogin`
  ADD PRIMARY KEY (`utilisateurloginid`),
  ADD UNIQUE KEY `nomutilisateur_2` (`nomutilisateur`),
  ADD KEY `nomutilisateur` (`nomutilisateur`),
  ADD KEY `utilisateurloginid` (`utilisateurloginid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admininfos`
--
ALTER TABLE `admininfos`
  MODIFY `idadmin` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `categorieinfos`
--
ALTER TABLE `categorieinfos`
  MODIFY `idcategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `retrouvermotdepasse`
--
ALTER TABLE `retrouvermotdepasse`
  MODIFY `idretrouvermotdepasse` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateurid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `utilisateurlogin`
--
ALTER TABLE `utilisateurlogin`
  MODIFY `utilisateurloginid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `fk_idretrouvermotdepasse` FOREIGN KEY (`idretrouvermotdepasse`) REFERENCES `retrouvermotdepasse` (`idretrouvermotdepasse`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_utilisteuloginid` FOREIGN KEY (`utilisateurloginid`) REFERENCES `utilisateurlogin` (`utilisateurloginid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
