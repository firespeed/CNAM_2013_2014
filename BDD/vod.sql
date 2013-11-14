-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Mar 12 Novembre 2013 à 21:25
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `vod`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE IF NOT EXISTS `abonnement` (
  `ID_ABN` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_ABN` varchar(32) DEFAULT NULL,
  `DUREE_ABN` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_ABN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `abonnement`
--

INSERT INTO `abonnement` (`ID_ABN`, `LIB_ABN`, `DUREE_ABN`) VALUES
(1, 'Abonnement 30 jours', 30);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `ID_CAT` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_CAT` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_CAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`ID_CAT`, `LIB_CAT`) VALUES
(1, 'Action'),
(2, 'Aventure'),
(3, 'Comédie'),
(4, 'Documentaire'),
(5, 'Famille'),
(6, 'Fantastique'),
(7, 'Policier'),
(8, 'Science-Fiction'),
(9, 'Western'),
(10, 'Guerre'),
(11, 'Horreur'),
(12, 'Thriller'),
(13, 'Romance'),
(14, 'Drame'),
(15, 'Espionnage'),
(16, 'Musical'),
(17, 'Historique');

-- --------------------------------------------------------

--
-- Structure de la table `cat_video`
--

CREATE TABLE IF NOT EXISTS `cat_video` (
  `ID_CAT` int(11) NOT NULL,
  `ID_VIDEO` int(11) NOT NULL,
  PRIMARY KEY (`ID_CAT`,`ID_VIDEO`),
  KEY `FK_ASSOCIATION_7` (`ID_VIDEO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cat_video`
--

INSERT INTO `cat_video` (`ID_CAT`, `ID_VIDEO`) VALUES
(3, 1),
(10, 1),
(1, 2),
(2, 2),
(8, 2),
(1, 3),
(2, 3),
(8, 3),
(2, 4),
(6, 4),
(1, 5),
(2, 5),
(6, 5),
(12, 5),
(1, 6),
(12, 6),
(15, 6),
(1, 7),
(12, 7),
(12, 8),
(8, 9),
(12, 9),
(2, 10),
(8, 10),
(12, 11),
(14, 11),
(1, 12),
(2, 12),
(6, 12),
(12, 12),
(6, 13),
(11, 13),
(12, 13),
(2, 14),
(12, 14),
(14, 14),
(14, 15),
(16, 15),
(7, 16),
(12, 16),
(14, 16),
(1, 17),
(12, 17),
(14, 17),
(1, 18),
(2, 18),
(8, 18),
(14, 19),
(10, 20),
(13, 20),
(14, 20),
(2, 21),
(10, 21),
(17, 21),
(2, 22),
(6, 22),
(10, 23),
(14, 23),
(17, 23),
(2, 24),
(6, 24),
(2, 25),
(8, 25),
(2, 26),
(6, 26),
(6, 27),
(11, 27),
(14, 27),
(1, 28),
(2, 28),
(14, 28),
(17, 28),
(6, 29),
(7, 29),
(1, 30),
(6, 30),
(14, 30),
(1, 31),
(8, 31),
(1, 32),
(2, 32),
(6, 32),
(15, 32),
(1, 33),
(2, 33),
(10, 33),
(17, 33),
(1, 34),
(2, 34),
(8, 34),
(14, 34),
(1, 35),
(2, 35),
(6, 35),
(14, 35);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ID_CLIENT` int(11) NOT NULL AUTO_INCREMENT,
  `ID_VILLE` int(11) NOT NULL,
  `NOM` varchar(32) DEFAULT NULL,
  `PRENOM` varchar(32) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `LOGIN` varchar(32) DEFAULT NULL,
  `MDP` varchar(32) DEFAULT NULL,
  `DATE_NAISSANCE` datetime DEFAULT NULL,
  `ADMIN` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID_CLIENT`),
  KEY `FK_CLIENT_VILLE` (`ID_VILLE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`ID_CLIENT`, `ID_VILLE`, `NOM`, `PRENOM`, `EMAIL`, `LOGIN`, `MDP`, `DATE_NAISSANCE`, `ADMIN`) VALUES
(1, 1, 'Fino', 'Jean-Marie', 'jmfino@divae.fr', 'jmfino', 'jmfino', '1959-11-07 00:00:00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `client_abn`
--

CREATE TABLE IF NOT EXISTS `client_abn` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_ABN` int(11) NOT NULL,
  `DEBUT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`,`ID_ABN`),
  KEY `FK_ASSOCIATION_9` (`ID_ABN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client_abn`
--

INSERT INTO `client_abn` (`ID_CLIENT`, `ID_ABN`, `DEBUT`) VALUES
(1, 1, '2013-10-18 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `ID_DEP` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PAYS` int(11) DEFAULT NULL,
  `NOM_DEP` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID_DEP`),
  KEY `FK_DEP_PAYS` (`ID_PAYS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`ID_DEP`, `ID_PAYS`, `NOM_DEP`) VALUES
(1, 1, 'Doubs'),
(2, 1, 'Territoire de Belfort'),
(3, 1, 'Haute-Saone');

-- --------------------------------------------------------

--
-- Structure de la table `distribution`
--

CREATE TABLE IF NOT EXISTS `distribution` (
  `ID_VIDEO` int(11) NOT NULL,
  `ID_PARTICIPANT` int(11) NOT NULL,
  PRIMARY KEY (`ID_VIDEO`,`ID_PARTICIPANT`),
  KEY `FK_DISTRIBUTION2` (`ID_PARTICIPANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `distribution`
--

INSERT INTO `distribution` (`ID_VIDEO`, `ID_PARTICIPANT`) VALUES
(15, 1),
(1, 2),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(10, 15),
(4, 17),
(22, 17),
(24, 17),
(26, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 22),
(12, 22),
(5, 23),
(12, 23),
(5, 24),
(5, 25),
(6, 27),
(21, 27),
(25, 27),
(6, 28),
(6, 29),
(6, 30),
(13, 30),
(7, 32),
(7, 33),
(7, 34),
(8, 36),
(9, 36),
(14, 36),
(16, 36),
(8, 37),
(8, 38),
(8, 39),
(9, 40),
(15, 40),
(9, 41),
(10, 43),
(10, 44),
(11, 45),
(19, 45),
(11, 46),
(11, 47),
(12, 48),
(13, 50),
(13, 51),
(14, 53),
(14, 54),
(15, 56),
(16, 57),
(16, 58),
(16, 59),
(17, 61),
(17, 62),
(17, 63),
(18, 65),
(18, 66),
(18, 67),
(19, 68),
(19, 69),
(20, 71),
(20, 72),
(20, 73),
(21, 74),
(21, 75),
(21, 76),
(22, 77),
(24, 77),
(26, 77),
(22, 78),
(24, 78),
(26, 78),
(22, 79),
(24, 79),
(26, 79),
(22, 80),
(24, 80),
(26, 80),
(23, 82),
(23, 83),
(23, 84),
(25, 86),
(25, 87),
(27, 89),
(27, 90),
(27, 91),
(2, 93),
(28, 93),
(28, 94),
(28, 95),
(29, 97),
(29, 98),
(29, 99),
(30, 101),
(30, 102),
(30, 103),
(31, 106),
(31, 107),
(31, 108);

-- --------------------------------------------------------

--
-- Structure de la table `format`
--

CREATE TABLE IF NOT EXISTS `format` (
  `ID_FORMAT` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_FORMAT` varchar(32) DEFAULT NULL,
  `NORMALISE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_FORMAT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `format`
--

INSERT INTO `format` (`ID_FORMAT`, `LIB_FORMAT`, `NORMALISE`) VALUES
(1, 'Audio Video Interleave', 1);

-- --------------------------------------------------------

--
-- Structure de la table `format_video`
--

CREATE TABLE IF NOT EXISTS `format_video` (
  `ID_VIDEO` int(11) NOT NULL,
  `ID_FORMAT` int(11) NOT NULL,
  PRIMARY KEY (`ID_VIDEO`,`ID_FORMAT`),
  KEY `FK_ASSOCIATION_16` (`ID_FORMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `loue`
--

CREATE TABLE IF NOT EXISTS `loue` (
  `ID_CLIENT` int(11) NOT NULL,
  `ID_VIDEO` int(11) NOT NULL,
  `ID_FORMAT` int(11) NOT NULL,
  `DATE_LOC` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_CLIENT`,`ID_VIDEO`,`ID_FORMAT`),
  KEY `FK_LOUE2` (`ID_VIDEO`),
  KEY `FK_LOUE3` (`ID_FORMAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `loue`
--

INSERT INTO `loue` (`ID_CLIENT`, `ID_VIDEO`, `ID_FORMAT`, `DATE_LOC`) VALUES
(1, 1, 1, '2013-10-18 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `participant`
--

CREATE TABLE IF NOT EXISTS `participant` (
  `ID_PARTICIPANT` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PAYS` int(11) NOT NULL,
  `NOM_PARTICIPANT` varchar(32) DEFAULT NULL,
  `PRENOM_PARTICIPANT` varchar(32) DEFAULT NULL,
  `DATE_NAISSANCE` datetime DEFAULT NULL,
  `IMAGE` varchar(128) NOT NULL,
  PRIMARY KEY (`ID_PARTICIPANT`),
  KEY `FK_ASSOCIATION_11` (`ID_PAYS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=123 ;

--
-- Contenu de la table `participant`
--

INSERT INTO `participant` (`ID_PARTICIPANT`, `ID_PAYS`, `NOM_PARTICIPANT`, `PRENOM_PARTICIPANT`, `DATE_NAISSANCE`, `IMAGE`) VALUES
(1, 1, 'Depardieu', 'Gérard', '1948-12-27 00:00:00', 'GerardDepardieu.jpg'),
(2, 2, 'De Funes', 'Louis', '1917-07-31 00:00:00', 'LouisdeFunes.jpg'),
(3, 1, 'Oury', 'Gérard', '1919-04-29 00:00:00', 'GerardOury.jpg'),
(4, 1, 'Bourvil', '', '1917-07-27 00:00:00', 'Bourvil.jpg'),
(5, 1, 'Dubois', 'Marie', '1937-01-12 00:00:00', 'MarieDubois.jpg'),
(6, 2, 'Cavill', 'Henry', '1983-05-05 00:00:00', 'HenryCavill.jpg'),
(7, 2, 'Adams', 'Amy', '1974-08-20 00:00:00', 'AmyAdams.jpg'),
(8, 2, 'Shanon', 'Michael', '1974-08-07 00:00:00', 'MichaelShannon.jpg'),
(9, 2, 'Snyder', 'Zack', '1966-03-01 00:00:00', 'ZackSnyder.jpg'),
(10, 2, 'Abrams', 'Jeffrey Jacob ', '1966-06-27 00:00:00', 'J.J.Abrams.jpg'),
(11, 2, 'Pine', 'Chris', '1980-08-26 00:00:00', 'ChrisPine.jpg'),
(12, 2, 'Zachary', 'Quinto', '1977-06-02 00:00:00', 'ZacharyQuinto.jpg'),
(13, 3, 'Cumberbatch', 'Benedict', '1976-07-19 00:00:00', 'BenedictCumberbatch.jpg'),
(14, 5, 'Urban', 'Karl', '1972-06-07 00:00:00', 'KarlUrban.jpg'),
(15, 2, 'Saldana', 'Zoe', '1978-06-19 00:00:00', 'ZoeSaldana.jpg'),
(16, 5, 'Jackson', 'Peter', '1961-10-31 00:00:00', 'PeterJackson.jpg'),
(17, 3, 'McKellen', 'Ian', '1939-05-25 00:00:00', 'IanMcKellen.jpg'),
(18, 3, 'Freeman', 'Martin', '1971-09-08 00:00:00', 'MartinFreeman.jpg'),
(19, 3, 'Armitage', 'Richard', '1971-08-22 00:00:00', 'RichardArmitage.jpg'),
(20, 5, 'Bennett', 'Manu', '1969-10-10 00:00:00', 'ManuBennett.jpg'),
(21, 3, 'Nolan', 'Christopher', '1970-07-30 00:00:00', 'ChristopherNolan.jpg'),
(22, 3, 'Bale', 'Christian', '1974-01-30 00:00:00', 'ChristianBale.jpg'),
(23, 3, 'OldMan', 'Gary', '1958-03-21 00:00:00', 'GaryOldman.jpg'),
(24, 3, 'Hardy', 'Tom', '1977-09-15 00:00:00', 'TomHardy.jpg'),
(25, 2, 'Hathaway', 'Anne', '1982-11-12 00:00:00', 'AnneHathaway.jpg'),
(26, 2, 'Bird', 'Brad', '1957-09-11 00:00:00', 'BradBird.jpg'),
(27, 2, 'Cruise', 'Tom', '1962-07-03 00:00:00', 'TomCruise.jpg'),
(28, 2, 'Renner', 'Jeremy', '1971-01-07 00:00:00', 'JeremyRenner.jpg'),
(29, 3, 'Pegg', 'Simon', '1970-02-14 00:00:00', 'SimonPegg.jpg'),
(30, 2, 'Patton', 'Paula', '1975-10-05 00:00:00', 'PaulaPatton.jpg'),
(31, 6, 'Winding Refn', 'Nicolas', '1970-09-29 00:00:00', 'NicolasWindingRefn.jpg'),
(32, 7, 'Gosling ', 'Ryan', '1980-11-12 00:00:00', 'RyanGosling.jpg'),
(33, 3, 'Mulligan', 'Carey', '1985-05-28 00:00:00', 'CareyMulligan.jpg'),
(34, 2, 'Cranston', 'Bryan', '1956-03-07 00:00:00', 'BryanCranston.jpg'),
(35, 2, 'Scorsese', 'Martin', '1942-11-17 00:00:00', 'MartinScorsese.jpg'),
(36, 2, 'DiCaprio', 'Leonardo', '1974-11-11 00:00:00', 'LeonardoDiCaprio.jpg'),
(37, 2, 'Ruffalo', 'Mark', '1967-11-22 00:00:00', 'MarkRuffalo.jpg'),
(38, 3, 'Kingsley', 'Ben', '1943-12-31 00:00:00', 'BenKingsley.jpg'),
(39, 2, 'Williams', 'Michelle', '1980-09-09 00:00:00', 'MichelleWilliams.jpg'),
(40, 1, 'Cotillard', 'Marion', '1975-09-30 00:00:00', 'MarionCotillard.jpg'),
(41, 7, 'Page', 'Ellen', '1987-02-21 00:00:00', 'EllenPage.jpg'),
(42, 7, 'Cameron', 'James', '1954-08-16 00:00:00', 'JamesCameron.jpg'),
(43, 4, 'Worthington', 'Sam', '1976-08-02 00:00:00', 'SamWorthington.jpg'),
(44, 2, 'Weaver', 'Sigourney', '1949-10-08 00:00:00', 'SigourneyWeaver.jpg'),
(45, 2, 'Eastwood', 'Clint', '1930-05-31 00:00:00', 'ClintEastwood.jpg'),
(46, 2, 'Wang', 'Bee', '1991-11-04 00:00:00', 'BeeVang.jpg'),
(47, 2, 'Her', 'Ahney', '1993-07-13 00:00:00', 'AhneyHer.jpg'),
(48, 4, 'Ledger', 'Heath', '1979-04-04 00:00:00', 'HeathLedger.jpg'),
(49, 1, 'Aja', 'Alexandres', '1978-08-07 00:00:00', 'AlexandreAja.jpg'),
(50, 2, 'Sutherland', 'Kiefer', '1966-10-21 00:00:00', 'KieferSutherland.jpg'),
(51, 2, 'Boyce', 'Cameron', '1999-05-28 00:00:00', 'CameronBoyce.jpg'),
(52, 2, 'Zwinck', 'Edward', '1952-10-08 00:00:00', 'EdwardZwick.jpg'),
(53, 16, 'Hounsou', 'Djimon', '1964-04-24 00:00:00', 'DjimonHounsou.jpg'),
(54, 2, 'Connelly', 'Jennifer', '1970-12-12 00:00:00', 'JenniferConnelly.jpg'),
(55, 1, 'Dahan', 'Olivier', '1967-06-26 00:00:00', 'OlivierDahan.jpg'),
(56, 1, 'Martins', 'Jean-Pierre', '1971-10-29 00:00:00', 'JeanPierreMartins.jpg'),
(57, 2, 'Damon', 'Matt', '1970-10-08 00:00:00', 'MattDamon.jpg'),
(58, 2, 'Nicholson', 'Jack', '1937-04-22 00:00:00', 'JackNicholson.jpg'),
(59, 2, 'Wahlberg', 'Marc', '1971-06-05 00:00:00', 'MarkWahlberg.jpg'),
(60, 5, 'Niccol', 'Andrew', '1964-01-01 00:00:00', 'AndrewNiccol.jpg'),
(61, 2, 'Cage', 'Nicolas', '1964-01-07 00:00:00', 'NicolasCage.jpg'),
(62, 2, 'Hawke', 'Ethan', '1970-11-06 00:00:00', 'EthanHawke.jpg'),
(63, 2, 'Leto', 'Jared', '1971-12-26 00:00:00', 'JaredLeto.jpg'),
(64, 2, 'Lucas', 'George', '1944-05-14 00:00:00', 'GeorgeLucas.jpg'),
(65, 7, 'Christensen', 'Hayden', '1981-04-19 00:00:00', 'HaydenChristensen.jpg'),
(66, 3, 'McGregor', 'Ewan', '1971-03-31 00:00:00', 'EwanMcGregor.jpg'),
(67, 2, 'Portman', 'Nathalie', '1981-06-09 00:00:00', 'NataliePortman.jpg'),
(68, 2, 'Freeman', 'Morgan', '1937-06-01 00:00:00', 'MorganFreeman.jpg'),
(69, 2, 'Swank', 'Hilary', '1974-07-30 00:00:00', 'HilarySwank.jpg'),
(70, 1, 'Jeunet', 'Jean-Pierre', '1953-09-03 00:00:00', 'Jean-PierreJeunet.jpg'),
(71, 1, 'Tautou', 'Audrey', '1976-08-09 00:00:00', 'AudreyTautou.jpg'),
(72, 1, 'Ulliel', 'Gaspard', '1984-11-25 00:00:00', 'GaspardUlliel.jpg'),
(73, 1, 'Pinon', 'Dominique', '1955-03-04 00:00:00', 'DominiquePinon.jpg'),
(74, 3, 'Connolly', 'Billy', '1942-11-24 00:00:00', 'BillyConnolly.jpg'),
(75, 2, 'Goldwyn', 'Tony', '1960-05-20 00:00:00', 'TonyGoldwyn.jpg'),
(76, 10, 'Watanabe', 'Ken', '1959-10-21 00:00:00', 'KenWatanabe.jpg'),
(77, 2, 'Wood', 'Elijah', '1981-01-28 00:00:00', 'ElijahWood.jpg'),
(78, 2, 'Astin', 'Sean', '1971-02-25 00:00:00', 'SeanAstin.jpg'),
(79, 2, 'Mortensen', 'Viggo', '1958-10-20 00:00:00', 'ViggoMortensen.jpg'),
(80, 2, 'Tyler', 'Liv', '1977-07-01 00:00:00', 'LivTyler.jpg'),
(81, 8, 'Hirschbiegel', 'Oliver', '1957-12-29 00:00:00', 'OliverHirschbiegel.jpg'),
(82, 11, 'Ganz', 'Bruno', '1941-03-22 00:00:00', 'BrunoGanz.jpg'),
(83, 11, 'Kohler', 'Juliane', '1965-08-06 00:00:00', 'JulianeKohler.jpg'),
(84, 9, 'Alexandra', 'Maria Lara', '1978-11-12 00:00:00', 'AlexandraMariaLara.jpg'),
(85, 2, 'Spielberg', 'Steven', '1946-12-18 00:00:00', 'StevenSpielberg.jpg'),
(86, 2, 'Morris', 'Kathryn', '1969-01-28 00:00:00', 'KathrynMorris.jpg'),
(87, 12, 'Farrell', 'Colin', '1966-05-31 00:00:00', 'ColinFarrell.jpg'),
(88, 13, 'Amenabar', 'Alexandro', '1972-03-31 00:00:00', 'AlejandroAmenabar.jpg '),
(89, 2, 'Kidman', 'Nicole', '1967-06-20 00:00:00', 'NicoleKidman.jpg'),
(90, 12, 'Cassidy', 'Elaine', '1979-12-31 00:00:00', 'ElaineCassidy.jpg'),
(91, 3, 'Eccleston', 'Christopher', '1964-02-16 00:00:00', 'ChristopherEccleston.jpg'),
(92, 3, 'Scott', 'Ridley', '1937-11-30 00:00:00', 'RidleyScott.jpg'),
(93, 5, 'Crowe', 'Russel', '1964-04-07 00:00:00', 'RussellCrowe.jpg'),
(94, 2, 'Phoenix', 'Joaquin', '1974-10-28 00:00:00', 'JoaquinPhoenix.jpg'),
(95, 6, 'Nielsen', 'Connie', '1965-07-03 00:00:00', 'ConnieNielsen.jpg'),
(96, 2, 'Darabont', 'Frank', '1959-01-28 00:00:00', 'FrankDarabont.jpg'),
(97, 2, 'Hanks', 'Tom', '1956-07-09 00:00:00', 'TomHanks.jpg'),
(98, 2, 'Duncan', 'Michael Clarke', '1957-12-10 00:00:00', 'MichaelClarkeDuncan.jpg'),
(99, 2, 'Morse', 'David', '1953-10-11 00:00:00', 'DavidMorse.jpg'),
(100, 2, 'Fincher', 'David', '1962-05-10 00:00:00', 'DavidFincher.jpg'),
(101, 2, 'Pitt', 'Brad', '1963-12-18 00:00:00', 'BradPitt.jpg'),
(102, 2, 'Norton', 'Edward', '1969-08-18 00:00:00', 'EdwardNorton.jpg'),
(103, 3, 'Bonham Carter', 'Helena', '1966-05-26 00:00:00', 'HelenaBonhamCarter.jpg'),
(104, 2, 'Wachowski', 'Lana', '1965-06-21 00:00:00', 'LanaWachowski.jpg'),
(105, 2, 'Wachowski', 'Andy', '1967-12-29 00:00:00', 'AndyWachowski.jpg'),
(106, 2, 'Reeves', 'Keanu', '1964-09-02 00:00:00', 'KeanuReeves.jpg'),
(107, 2, 'Fishburne', 'Laurence', '1961-07-30 00:00:00', 'LaurenceFishburne.jpg'),
(108, 2, 'Moss', 'Carie-Anne', '1967-08-21 00:00:00', 'Carrie-AnneMoss.jpg'),
(109, 4, 'Stapleton', 'Sullivan', '1977-06-14 00:00:00', 'sullivanstapleton.jpg'),
(111, 2, 'Winchester', 'Philip', '1981-03-24 00:00:00', 'philipwinchester.jpg'),
(115, 3, 'Mitra', 'Rhona', '1977-06-14 00:00:00', 'rhonamitra.jpg'),
(116, 2, 'Rajskub', 'Mary Lynn', '1971-06-22 00:00:00', 'marylynnrajskub.jpg'),
(117, 2, 'Raver', 'Kim', '1969-03-15 00:00:00', 'kimraver.jpg'),
(118, 4, 'McIntyre', 'Liam', '1982-02-08 00:00:00', 'liammcintyre.jpg'),
(119, 4, 'Clare', 'Dustin', '1982-01-02 00:00:00', 'dustinclare.jpg'),
(120, 2, 'Burke', 'Billy', '1966-11-25 00:00:00', 'billyburke.jpg'),
(121, 7, 'Spiridakos', 'Tracy', '1988-01-01 00:00:00', 'tracyspiridakos.jpg'),
(122, 2, 'Esposito', 'Giancarlo', '1958-04-26 00:00:00', 'giancarloesposito.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `ID_PAYS` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_PAYS` varchar(32) DEFAULT NULL,
  `SYMBOLE` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`ID_PAYS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`ID_PAYS`, `NOM_PAYS`, `SYMBOLE`) VALUES
(1, 'France', 'FR'),
(2, 'Etats-Unis', 'US'),
(3, 'Angleterre', 'UK'),
(4, 'Australie', 'AUS'),
(5, 'Nouvelle-Zelande', 'NZ'),
(6, 'Danemark', 'DK'),
(7, 'Canada', 'CN'),
(8, 'Allemagne', 'Dl'),
(9, 'Roumanie', 'RM'),
(10, 'Japon', 'JN'),
(11, 'Suisse', 'CH'),
(12, 'Irlande', 'IR'),
(13, 'Espagne', 'SP'),
(14, 'Italie', 'IT'),
(16, 'Bénin', 'BN');

-- --------------------------------------------------------

--
-- Structure de la table `pays_video`
--

CREATE TABLE IF NOT EXISTS `pays_video` (
  `ID_PAYS` int(11) NOT NULL,
  `ID_VIDEO` int(11) NOT NULL,
  PRIMARY KEY (`ID_PAYS`,`ID_VIDEO`),
  KEY `FK_ASSOCIATION_14` (`ID_VIDEO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays_video`
--

INSERT INTO `pays_video` (`ID_PAYS`, `ID_VIDEO`) VALUES
(1, 1),
(3, 1),
(2, 2),
(3, 2),
(7, 2),
(2, 3),
(2, 4),
(5, 4),
(2, 5),
(3, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 12),
(2, 13),
(8, 13),
(9, 13),
(2, 14),
(8, 14),
(1, 15),
(3, 15),
(2, 16),
(1, 17),
(2, 17),
(2, 18),
(2, 19),
(1, 20),
(2, 20),
(2, 21),
(2, 22),
(5, 22),
(8, 23),
(2, 24),
(5, 24),
(2, 25),
(2, 26),
(5, 26),
(1, 27),
(2, 27),
(13, 27),
(14, 27),
(2, 28),
(3, 28),
(2, 29),
(2, 30),
(8, 30),
(2, 31),
(2, 32),
(3, 32),
(2, 33),
(2, 34),
(2, 35);

-- --------------------------------------------------------

--
-- Structure de la table `realisation`
--

CREATE TABLE IF NOT EXISTS `realisation` (
  `ID_VIDEO` int(11) NOT NULL,
  `ID_PARTICIPANT` int(11) NOT NULL,
  PRIMARY KEY (`ID_VIDEO`,`ID_PARTICIPANT`),
  KEY `FK_ASSOCIATION_12` (`ID_PARTICIPANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `realisation`
--

INSERT INTO `realisation` (`ID_VIDEO`, `ID_PARTICIPANT`) VALUES
(1, 3),
(2, 9),
(3, 10),
(4, 16),
(22, 16),
(24, 16),
(26, 16),
(5, 21),
(9, 21),
(12, 21),
(6, 26),
(7, 31),
(8, 35),
(16, 35),
(10, 42),
(11, 45),
(19, 45),
(13, 49),
(14, 52),
(21, 52),
(15, 55),
(17, 60),
(18, 64),
(20, 70),
(23, 81),
(25, 85),
(27, 88),
(28, 92),
(29, 96),
(30, 100),
(31, 104),
(31, 105);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `ID_TYPE` int(11) NOT NULL AUTO_INCREMENT,
  `LIB_TYPE` varchar(32) NOT NULL,
  PRIMARY KEY (`ID_TYPE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`ID_TYPE`, `LIB_TYPE`) VALUES
(1, 'Films'),
(2, 'Serie'),
(3, 'Divertissement'),
(4, 'Kids'),
(5, 'Mangas');

-- --------------------------------------------------------

--
-- Structure de la table `type_video`
--

CREATE TABLE IF NOT EXISTS `type_video` (
  `ID_TYPE` int(11) NOT NULL,
  `ID_VIDEO` int(11) NOT NULL,
  PRIMARY KEY (`ID_TYPE`,`ID_VIDEO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type_video`
--

INSERT INTO `type_video` (`ID_TYPE`, `ID_VIDEO`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 32),
(2, 33),
(2, 34),
(2, 35);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `ID_VIDEO` int(11) NOT NULL AUTO_INCREMENT,
  `TITRE_VIDEO` varchar(128) DEFAULT NULL,
  `DUREE` int(11) DEFAULT NULL,
  `FICHIER` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) NOT NULL,
  `SYNOPSIS` text NOT NULL,
  `ANNEE` int(11) NOT NULL,
  PRIMARY KEY (`ID_VIDEO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `video`
--

INSERT INTO `video` (`ID_VIDEO`, `TITRE_VIDEO`, `DUREE`, `FICHIER`, `IMAGE`, `SYNOPSIS`, `ANNEE`) VALUES
(1, 'La Grande vadrouille', 132, '19473697', 'grandeVadrouille.jpg', 'En 1942, un avion anglais est abattu par les Allemands au-dessus de Paris. Les trois pilotes sautent en parachute et atterrissent dans différents endroits de la capitale. Ils sont aidés par deux civils français, un chef d''orchestre et un peintre en bâtiment qui accèptent de les mener en zone libre; ils deviennent ainsi, malgré eux, acteurs de la Résistance. ', 1966),
(2, 'Man Of Steel', 143, '19516753', 'manOfSteel.jpg', 'Un petit garçon découvre qu''il possède des pouvoirs surnaturels et qu''il n''est pas né sur Terre. Plus tard, il s''engage dans un périple afin de comprendre d''où il vient et pourquoi il a été envoyé sur notre planète. Mais il devra devenir un héros s''il veut sauver le monde de la destruction totale et incarner l''espoir pour toute l''humanité.', 2013),
(3, 'Star Trek Into Darkness', 130, '19494789', 'starTrekIntoTheDarkness.jpg', 'Alors qu’il rentre à sa base, l’équipage de l’Enterprise doit faire face à des forces terroristes implacables au sein même de son organisation. L’ennemi a fait exploser la flotte et tout ce qu’elle représentait, plongeant notre monde dans le chaos…', 2013),
(4, 'Le Hobbit : un voyage inattendu', 165, '19404061', 'hobbit.jpg', 'Dans un monde en guerre, le Capitaine Kirk, animé par la vengeance, se lance dans une véritable chasse à l’homme, pour neutraliser celui qui représente à lui seul une arme de destruction massive.', 2012),
(5, 'The Dark Knight Rises', 164, '19340318', 'darkKnightRises.jpg', 'Nos héros entrent dans un jeu d’échecs mortel. L’amour sera menacé, des amitiés seront brisées et des sacrifices devront être faits dans la seule famille qu’il reste à Kirk : son équipe.', 2012),
(6, 'Mission : Impossible - Protocole fantôme ', 133, '19260260', 'miProtocole.jpg', 'Impliquée dans l''attentat terroriste du Kremlin, l''agence Mission Impossible (IMF) est totalement discréditée. Tandis que le président lance l''opération "Protocole Fantôme", Ethan Hunt, privé de ressources et de renfort, doit trouver le moyen de blanchir l''agence et de déjouer toute nouvelle tentative d''attentat. Mais pour compliquer encore la situation, l''agent doit s''engager dans cette mission avec une équipe de fugitifs d''IMF dont il n''a pas bien cerné les motivations… ', 2011),
(7, 'Drive', 100, '19243476', 'drive.jpg', 'Un jeune homme solitaire, "The Driver", conduit le jour à Hollywood pour le cinéma en tant que cascadeur et la nuit pour des truands. Ultra professionnel et peu bavard, il a son propre code de conduite. Jamais il n’a pris part aux crimes de ses employeurs autrement qu’en conduisant - et au volant, il est le meilleur !\r\nShannon, le manager qui lui décroche tous ses contrats, propose à Bernie Rose, un malfrat notoire, d’investir dans un véhicule pour que son poulain puisse affronter les circuits de stock-car professionnels. Celui-ci accepte mais impose son associé, Nino, dans le projet.', 2011),
(8, 'Shutter Island', 137, '18916868', 'shutter.jpg', 'En 1954, le marshal Teddy Daniels et son coéquipier Chuck Aule sont envoyés enquêter sur l''île de Shutter Island, dans un hôpital psychiatrique où sont internés de dangereux criminels. L''une des patientes, Rachel Solando, a inexplicablement disparu. Comment la meurtrière a-t-elle pu sortir d''une cellule fermée de l''extérieur ? Le seul indice retrouvé dans la pièce est une feuille de papier sur laquelle on peut lire une suite de chiffres et de lettres sans signification apparente. Oeuvre cohérente d''une malade, ou cryptogramme ? ', 2010),
(9, 'Inception', 148, '19114615', 'inception.jpg', 'Dom Cobb est un voleur expérimenté – le meilleur qui soit dans l’art périlleux de l’extraction : sa spécialité consiste à s’approprier les secrets les plus précieux d’un individu, enfouis au plus profond de son subconscient, pendant qu’il rêve et que son esprit est particulièrement vulnérable. Très recherché pour ses talents dans l’univers trouble de l’espionnage industriel, Cobb est aussi devenu un fugitif traqué dans le monde entier qui a perdu tout ce qui lui est cher. Mais une ultime mission pourrait lui permettre de retrouver sa vie d’avant – à condition qu’il puisse accomplir l’impossible : l’inception. Au lieu de subtiliser un rêve, Cobb et son équipe doivent faire l’inverse : implanter une idée dans l’esprit d’un individu. S’ils y parviennent, il pourrait s’agir du crime parfait.', 2010),
(10, 'Avatar', 162, '19135625', 'avatar.jpg', 'Malgré sa paralysie, Jake Sully, un ancien marine immobilisé dans un fauteuil roulant, est resté un combattant au plus profond de son être. Il est recruté pour se rendre à des années-lumière de la Terre, sur Pandora, où de puissants groupes industriels exploitent un minerai rarissime destiné à résoudre la crise énergétique sur Terre. Parce que l''atmosphère de Pandora est toxique pour les humains, ceux-ci ont créé le Programme Avatar, qui permet à des " pilotes " humains de lier leur esprit à un avatar, un corps biologique commandé à distance, capable de survivre dans cette atmosphère létale. Ces avatars sont des hybrides créés génétiquement en croisant l''ADN humain avec celui des Na''vi, les autochtones de Pandora.', 2009),
(11, 'Gran Torino', 111, '18857742', 'granTorino.jpg', 'Walt Kowalski est un ancien de la guerre de Corée, un homme inflexible, amer et pétri de préjugés surannés. Après des années de travail à la chaîne, il vit replié sur lui-même, occupant ses journées à bricoler, traînasser et siroter des bières. Hormis sa chienne Daisy, il ne fait confiance qu''à son M-1, toujours propre, toujours prêt à l''usage...\r\nSes anciens voisins ont déménagé ou sont morts depuis longtemps. Son quartier est aujourd''hui peuplé d''immigrants asiatiques qu''il méprise, et Walt ressasse ses haines, innombrables - à l''encontre de ses voisins, des ados Hmong, latinos et afro-américains "qui croient faire la loi", de ses propres enfants, devenus pour lui des étrangers. Walt tue le temps comme il peut, en attendant le grand départ, jusqu''au jour où un ado Hmong du quartier tente de lui voler sa précieuse Ford Gran Torino... ', 2009),
(12, 'The Dark Knight', 147, '18785651', 'darkKnight.jpg', 'Dans ce nouveau volet, Batman augmente les mises dans sa guerre contre le crime. Avec l''appui du lieutenant de police Jim Gordon et du procureur de Gotham, Harvey Dent, Batman vise à éradiquer le crime organisé qui pullule dans la ville. Leur association est très efficace mais elle sera bientôt bouleversée par le chaos déclenché par un criminel extraordinaire que les citoyens de Gotham connaissent sous le nom de Joker. ', 2008),
(13, 'Mirrors', 111, '18830472', 'mirrors.jpg', 'Un ancien flic, forcé de démissionner de son travail après un accident ayant couté la vie de son associé, travaille à présent comme veilleur de nuit dans un grand magasin brûlé et abandonné. Seuls quelques miroirs ont survécu aux flammes. Il réalise que ceux-ci cachent un horrible secret qui les menace, lui et sa famille. ', 2008),
(14, 'Blood Diamond', 142, '18716631', 'bloodDiamond.jpg', 'Alors qu''il purge une peine de prison pour ses trafics, Archer rencontre Solomon Vandy, un pêcheur d''origine Mende. Arraché à sa famille et forcé de travailler dans les mines diamantifères, ce dernier a trouvé - et caché - un diamant rose extrêmement rare. Accompagnés de Maddy Bowen, une journaliste idéaliste, les deux hommes s''embarquent pour un dangereux voyage en territoire rebelle pour récupérer le fameux caillou. Un voyage qui pourrait bien sauver la famille de Salomon et donner à Archer la seconde chance qu''il n''espérait plus. \r\n', 2007),
(15, 'La Môme', 140, '18719120', 'laMome.jpg', 'De son enfance à la gloire, de ses victoires à ses blessures, de Belleville à New York, l''exceptionnel parcours d''Edith Piaf. A travers un destin plus incroyable qu''un roman, découvrez l''âme d''une artiste et le coeur d''une femme. Intime, intense, fragile et indestructible, dévouée à son art jusqu''au sacrifice, voici la plus immortelle des chanteuses..', 2007),
(16, 'Les infiltrés', 150, '18703020', 'infiltres.jpg', 'A Boston, une lutte sans merci oppose la police à la pègre irlandaise.\r\nPour mettre fin au règne du parrain Frank Costello, la police infiltre son gang avec "un bleu" issu des bas quartiers, Billy Costigan.\r\nTandis que Billy s''efforce de gagner la confiance du malfrat vieillissant, Colin Sullivan entre dans la police au sein de l''Unité des Enquêtes Spéciales, chargée d''éliminer Costello. Mais Colin fonctionne en "sous-marin" et informe Costello des opérations qui se trament contre lui.', 2006),
(17, 'Lord of War', 122, '18405600', 'lordOfWar.jpg', 'Né en Ukraine avant l''effondrement du bloc soviétique, Yuri arrive aux Etats-Unis avec ses parents. Il se fait passer pour un émigrant juif...\r\nAudacieux et fin négociateur, il se fait une place dans le trafic d''armes. Les énormes sommes d''argent qu''il gagne lui permettent aussi de conquérir celle qui l''a toujours fasciné, la belle Ava.\r\nParallèlement à cette vie de mari et de père idéal, Yuri devient l''un des plus gros vendeurs d''armes clandestins du monde. Utilisant ses relations à l''Est, il multiplie les coups toujours plus\r\nrisqués, mais parvient chaque fois à échapper à Jack Valentine, l''agent d''Interpol qui le pourchasse.', 2006),
(18, 'Star Wars épisode III : la revanche des Sith', 140, '19352325', 'revancheSith.jpg', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d''un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.\r\nLes Seigneurs Sith s''unissent alors pour préparer leur revanche, qui commence par l''extermination des Jedi. Seuls rescapés du massacre, Yoda et Obi Wan se lancent à la poursuite des Sith. La traque se conclut par un spectaculaire combat au sabre entre Anakin et Obi Wan, qui décidera du sort de la galaxie. ', 2005),
(19, 'Million Dollar Baby', 132, '19447507', 'millionBaby.jpg', 'Rejeté depuis longtemps par sa fille, l''entraîneur Frankie Dunn s''est replié sur lui-même et vit dans un désert affectif, en évitant toute relation qui pourrait accroître sa douleur et sa culpabilité.\r\nLe jour où Maggie Fitzgerald, 31 ans, pousse la porte de son gymnase à la recherche d''un coach, elle n''amène pas seulement avec elle sa jeunesse et sa force, mais aussi une\r\nhistoire jalonnée d''épreuves et une exigence, vitale et urgente : monter sur le ring, entraînée par Frankie, et enfin concrétiser le rêve d''une vie.\r\nAprès avoir repoussé plusieurs fois sa demande, Frankie se laisse convaincre par l''inflexible détermination de la jeune femme. Une relation mouvementée, tour à tour stimulante et exaspérante, se noue entre eux, au fil de laquelle Maggie et l''entraîneur se découvrent une communauté d''esprit et une complicité inattendues... ', 2005),
(20, 'Un long dimanche de fiançailles', 134, '18369524', 'dimancheFiancailles.jpg', 'En 1919, Mathilde a 19 ans. Deux ans plus tôt, son fiancé Manech est parti sur le front de la Somme. Comme des millions d''autres, il est "mort au champ d''honneur". C''est écrit noir sur blanc sur l''avis officiel. Pourtant, Mathilde refuse d''admettre cette évidence. Si Manech était mort, elle le saurait !\r\nElle se raccroche à son intuition comme au dernier fil ténu qui la relierait encore à son amant. Un ancien sergent a beau lui raconter que Manech est mort sur le no man''s land d''une tranchée nommée Bingo Crépuscule, en compagnie de quatre autres condamnés à mort pour mutilation volontaire ; rien n''y fait. Mathilde refuse de lâcher le fil. Elle s''y cramponne avec la foi du charbonnier et se lance dans une véritable contre-enquête.\r\nDe faux espoirs en incertitudes, elle va démêler peu à peu la vérité sur le sort de Manech et de ses quatre camarades. ', 2004),
(21, 'Le dernier Samourai', 144, '18356525', 'dernierSamourai.jpg', 'En 1876, le capitaine Nathan Algren vit avec les souvenirs des batailles sanglantes menées contre les Sioux. Fort de son expérience au combat, il devient conseiller militaire pour le compte de l''empereur japonais soucieux d''ouvrir son pays aux traditions et au commerce occidentaux et d''éradiquer l''ancienne caste guerrière des samouraïs. Mais ceux-ci influent sur le capitaine Algren, qui se trouve bientôt pris entre deux feux, au coeur d''une confrontation entre deux époques et deux mondes avec, pour le guider, son sens de l''honneur.', 2004),
(22, 'Le Seigneur des Anneaux : Le retour du Roi', 200, '18356598', 'retourDuRoi.jpg', 'Les armées de Sauron ont attaqué Minas Tirith, la capitale de Gondor. Jamais ce royaume autrefois puissant n''a eu autant besoin de son roi. Mais Aragorn trouvera-t-il en lui la volonté d''accomplir sa destinée ?\r\nTandis que Gandalf s''efforce de soutenir les forces brisées de Gondor, Théoden exhorte les guerriers de Rohan à se joindre au combat. Mais malgré leur courage et leur loyauté, les forces des Hommes ne sont pas de taille à lutter contre les innombrables légions d''ennemis qui s''abattent sur le royaume...\r\nChaque victoire se paye d''immenses sacrifices. Malgré ses pertes, la Communauté se jette dans la bataille pour la vie, ses membres faisant tout pour détourner l''attention de Sauron afin de donner à Frodon une chance d''accomplir sa quête.\r\nVoyageant à travers les terres ennemies, ce dernier doit se reposer sur Sam et Gollum, tandis que l''Anneau continue de le tenter... ', 2003),
(23, 'La chute', 150, '19447490', 'laChute.jpg', 'Berlin, avril 1945. Le IIIe Reich agonise. Les combats font rage dans les rues de la capitale. Hitler, accompagné de ses généraux et de ses plus proches partisans, s''est réfugié dans son bunker, situé dans les jardins de la Chancellerie.\r\nA ses côtés, Traudl Junge, la secrétaire particulière du Führer, refuse de l''abandonner. Tandis qu''à l''extérieur la situation se dégrade, Hitler vit ses dernières heures et la chute du régime.', 2003),
(24, 'Le Seigneur des Anneaux : Les deux tours', 178, '19448597', 'deuxtours.jpg', 'Après la mort de Boromir et la disparition de Gandalf, la Communauté s''est scindée en trois. Perdus dans les collines d''Emyn Muil, Frodon et Sam découvrent qu''ils sont suivis par Gollum, une créature versatile corrompue par l''Anneau. Celui-ci promet de conduire les Hobbits jusqu''à la Porte Noire du Mordor. A travers la Terre du Milieu, Aragorn, Legolas et Gimli font route vers le Rohan, le royaume assiégé de Theoden. Cet ancien grand roi, manipulé par l''espion de Saroumane, le sinistre Langue de Serpent, est désormais tombé sous la coupe du malfaisant Magicien. Eowyn, la nièce du Roi, reconnaît en Aragorn un meneur d''hommes. Entretemps, les Hobbits Merry et Pippin, prisonniers des Uruk-hai, se sont échappés et ont découvert dans la mystérieuse Forêt de Fangorn un allié inattendu : Sylvebarbe, gardien des arbres, représentant d''un ancien peuple végétal dont Saroumane a décimé la forêt... ', 2002),
(25, 'Minority Report', 145, '18672414', 'minorityReport.jpg', 'A Washington, en 2054, la société du futur a éradiqué le meurtre en se dotant du système de prévention / détection / répression le plus sophistiqué du monde. Dissimulés au coeur du Ministère de la Justice, trois extra-lucides captent les signes précurseurs des violences homicides et en adressent les images à leur contrôleur, John Anderton, le chef de la "Précrime" devenu justicier après la disparition tragique de son fils. Celui-ci n''a alors plus qu''à lancer son escouade aux trousses du "coupable"...\r\nMais un jour se produit l''impensable : l''ordinateur lui renvoie sa propre image. D''ici 36 heures, Anderton aura assassiné un parfait étranger. Devenu la cible de ses propres troupes, Anderton prend la fuite. Son seul espoir pour déjouer le complot : dénicher sa future victime ; sa seule arme : les visions parcellaires, énigmatiques, de la plus fragile des Pré-Cogs : Agatha. ', 2002),
(26, 'Le Seigneur des Anneaux : La Communauté de l''anneau', 165, '19448549', 'comAnneau.jpg', 'Dans ce chapitre de la trilogie, le jeune et timide Hobbit, Frodon Sacquet, hérite d''un anneau. Bien loin d''être une simple babiole, il s''agit de l''Anneau Unique, un instrument de pouvoir absolu qui permettrait à Sauron, le Seigneur des ténèbres, de régner sur la Terre du Milieu et de réduire en esclavage ses peuples. À moins que Frodon, aidé d''une Compagnie constituée de Hobbits, d''Hommes, d''un Magicien, d''un Nain, et d''un Elfe, ne parvienne à emporter l''Anneau à travers la Terre du Milieu jusqu''à la Crevasse du Destin, lieu où il a été forgé, et à le détruire pour toujours. Un tel périple signifie s''aventurer très loin en Mordor, les terres du Seigneur des ténèbres, où est rassemblée son armée d''Orques maléfiques... La Compagnie doit non seulement combattre les forces extérieures du mal mais aussi les dissensions internes et l''influence corruptrice qu''exerce l''Anneau lui-même.\r\nL''issue de l''histoire à venir est intimement liée au sort de la Compagnie. ', 2001),
(27, 'Les autres', 165, '19494263', 'lesAutres.jpg', 'En 1945, dans une immense demeure victorienne isolée sur l''île de Jersey située au large de la Normandie, vit Grace, une jeune femme pieuse, et ses deux enfants, Anne et Nicholas. Les journées sont longues pour cette mère de famille qui passe tout son temps à éduquer ses enfants en leur inculquant ses principes religieux. Atteints d''un mal étrange, Anne et Nicholas ne doivent en aucun cas être exposés à la lumière du jour. Ils vivent donc reclus dans ce manoir obscur, tous rideaux tirés.\r\nUn jour d''épais brouillard, trois personnes frappent à la porte du manoir isolé, en quête d’un travail. Grace, qui a justement besoin d''aide pour l''entretien du parc ainsi que d’une nouvelle nounou pour ses enfants, les engage. Dès lors, des événements étranges surviennent dans la demeure... ', 2001),
(28, 'Gladiator', 155, '19376512', 'gladiator.jpg', 'Le général romain Maximus est le plus fidèle soutien de l''empereur Marc Aurèle, qu''il a conduit de victoire en victoire avec une bravoure et un dévouement exemplaires. Jaloux du prestige de Maximus, et plus encore de l''amour que lui voue l''empereur, le fils de MarcAurèle, Commode, s''arroge brutalement le pouvoir, puis ordonne l''arrestation du général et son exécution. Maximus échappe à ses assassins mais ne peut empêcher le massacre de sa famille. Capturé par un marchand d''esclaves, il devient gladiateur et prépare sa vengeance.\r\n', 2000),
(29, 'La Ligne Verte', 189, '18650717', 'ligneVerte.jpg', 'Paul Edgecomb, pensionnaire centenaire d''une maison de retraite, est hanté par ses souvenirs. Gardien-chef du pénitencier de Cold Mountain en 1935, il était chargé de veiller au bon déroulement des exécutions capitales en s’efforçant d''adoucir les derniers moments des condamnés. Parmi eux se trouvait un colosse du nom de John Coffey, accusé du viol et du meurtre de deux fillettes. Intrigué par cet homme candide et timide aux dons magiques, Edgecomb va tisser avec lui des liens très forts.\r\n', 2000),
(30, 'Fight Club', 135, '18650391', 'fightClub.jpg', 'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d''autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C''est pourquoi il va devenir membre du Fight club, un lieu clandestin ou il va pouvoir retrouver sa virilité, l''échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d''anarchiste entre gourou et philosophe qui prêche l''amour de son prochain. \r\n', 1999),
(31, 'Matrix', 135, '19352299', 'matrix.jpg', 'Programmeur anonyme dans un service administratif le jour, Thomas Anderson devient Neo la nuit venue. Sous ce pseudonyme, il est l''un des pirates les plus recherchés du cyber-espace. A cheval entre deux mondes, Neo est assailli par d''étranges songes et des messages cryptés provenant d''un certain Morpheus. Celui-ci l''exhorte à aller au-delà des apparences et à trouver la réponse à la question qui hante constamment ses pensées : qu''est-ce que la Matrice ? Nul ne le sait, et aucun homme n''est encore parvenu à en percer les defenses. Mais Morpheus est persuadé que Neo est l''Elu, le libérateur mythique de l''humanité annoncé selon la prophétie. Ensemble, ils se lancent dans une lutte sans retour contre la Matrice et ses terribles agents... \r\n', 1999),
(32, 'Strike Back', 45, '19536996', 'strikeback.jpg', 'La section 20 du MI-6 déploie ses moyens pour combattre le terrorisme. Les agents de terrain les plus efficaces parcourent le globe pour éradiquer les menaces.', 2010),
(33, 'Spartacus - La Guerre des damnés', 50, '19263362', 'spartacus-laguerredesdamnés.png', 'La saison 2 s’était achevée dans un véritable bain de sang : pas moins de six personnages centraux y perdaient la vie... Spartacus et les troupes Rebelles remportaient la bataille contre Gaius Claudius Glaber mais devaient faire face à la perte d''êtres chers. Après cette victoire éclatante, des centaines d''esclaves se sont ralliés à la rébellion. Rome redoute de plus en plus la menace que représente Spartacus, apparemment invincible. Entouré de ses lieutenants, Crixus, Gannicus et Agron, l’ancien gladiateur va désormais devoir affronter deux nouveaux émissaires en provenance de Rome. Le richissime Marcus Crassus, bien décidé à adopter une stratégie différente de Glaber, et un certain César.', 2013),
(34, 'Revolution - Saison 1', 42, '19341667', 'revolution-saison1.jpg', 'Le monde bascule dans une ère sombre lorsque l''électricité cesse soudainement de fonctionner. Sans technologie moderne, les hôpitaux, les transports et les moyens de communication ne sont plus opérationnels. La population doit réapprendre à vivre...\r\n\r\n15 ans plus tard, la vie a repris son cours. Lentement. Sereinement ? Pas vraiment. Aux abords des communautés agricoles qui se sont constituées, le danger rôde. Et la vie d''une jeune femme est bouleversée lorsque la milice locale débarque et tue son père, qui semble être mystérieusement lié au blackout. Ces révélations l''amènent à se mettre en quête de réponses sur le passé, dans l''espoir d''un futur meilleur.', 2012),
(35, 'Games Of Thrones - Saison 4', 52, '19220451', 'gamesofthrones-saison4.png', 'Il y a très longtemps, à une époque oubliée, une force a détruit l''équilibre des saisons. Dans un pays où l''été peut durer plusieurs années et l''hiver toute une vie, des forces sinistres et surnaturelles se pressent aux portes du Royaume des Sept Couronnes. La confrérie de la Garde de Nuit, protégeant le Royaume de toute créature pouvant provenir d''au-delà du Mur protecteur, n''a plus les ressources nécessaires pour assurer la sécurité de tous. Après un été de dix années, un hiver rigoureux s''abat sur le Royaume avec la promesse d''un avenir des plus sombres. Pendant ce temps, complots et rivalités se jouent sur le continent pour s''emparer du Trône de Fer, le symbole du pouvoir absolu.', 2014);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `ID_VILLE` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DEP` int(11) NOT NULL,
  `NOM_VILLE` varchar(32) DEFAULT NULL,
  `CP` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ID_VILLE`),
  KEY `FK_VILLE_DEP` (`ID_DEP`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`ID_VILLE`, `ID_DEP`, `NOM_VILLE`, `CP`) VALUES
(1, 1, 'Audincourt', '25400'),
(2, 1, 'Montbéliard', '25200'),
(3, 1, 'Besançon', '25000'),
(4, 1, 'Valentigney', '25300'),
(5, 2, 'Belfort', '90000'),
(6, 3, 'Héricourt', '70000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
