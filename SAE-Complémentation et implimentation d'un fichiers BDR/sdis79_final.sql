-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 05 mai 2024 à 15:42
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sdis79.sql`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `matricule` int(11) NOT NULL,
  `codeCaserne` varchar(50) NOT NULL,
  `dateaffectation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affectation`
--

INSERT INTO `affectation` (`matricule`, `codeCaserne`, `dateaffectation`) VALUES
(123309, 'TH', '1983-12-21'),
(123309, 'BR', '1985-02-20'),
(123401, 'SM', '1986-06-02'),
(123305, 'NA', '1988-07-24'),
(123309, 'AI', '1989-02-01'),
(123488, 'CV', '1989-05-24'),
(123667, 'SV', '1989-06-23'),
(986993, 'CE', '1990-09-17'),
(123620, 'TH', '1990-09-22'),
(123309, 'SS', '1991-04-20'),
(122129, 'AR', '1992-08-19'),
(123459, 'NI', '1993-03-22'),
(123123, 'VV', '1993-05-23'),
(123124, 'NI', '1993-07-21'),
(123000, 'MA', '1993-09-30'),
(123620, 'LL', '1993-11-20'),
(123908, 'PA', '1994-04-23'),
(123471, 'LE', '1995-03-06'),
(123490, 'NI', '1995-09-02'),
(123468, 'ME', '1996-04-20'),
(123489, 'PA', '1997-05-04'),
(123457, 'SZ', '1997-06-04'),
(123321, 'NI', '1998-04-23'),
(123462, 'VV', '1999-02-02'),
(123391, 'NI', '1999-09-25'),
(123401, 'MG', '1999-10-27'),
(986995, 'NI', '1999-12-12'),
(123007, 'BR', '2000-02-17'),
(123467, 'BO', '2000-05-21'),
(123692, 'PA', '2000-06-23'),
(12361, 'AM', '2001-01-21'),
(123490, 'CH', '2001-01-31'),
(123473, 'NI', '2001-05-21'),
(123449, 'BR', '2001-09-10'),
(123567, 'ME', '2001-10-11'),
(123449, 'PA', '2001-12-07'),
(123391, 'CO', '2002-03-20'),
(123459, 'MM', '2003-09-12'),
(123123, 'NI', '2004-09-20'),
(123692, 'VA', '2004-12-04'),
(123089, 'PA', '2005-02-23'),
(123908, 'TZ', '2005-04-23'),
(123466, 'NI', '2007-08-22'),
(123408, 'CE', '2008-04-25'),
(123089, 'VA', '2009-07-02'),
(123303, 'SM', '2009-09-21'),
(123473, 'CO', '2009-12-04'),
(123391, 'LA', '2009-12-10'),
(123550, 'LP', '2010-01-17'),
(123544, 'SE', '2011-03-27'),
(123449, 'BR', '2011-05-19'),
(123463, 'BL', '2011-06-30'),
(123473, 'SC', '2011-09-06'),
(123008, 'MO', '2011-09-22'),
(123304, 'NI', '2011-09-29'),
(123456, 'CZ', '2011-11-24'),
(123567, 'CB', '2012-01-19'),
(123692, 'PA', '2012-07-31'),
(123473, 'CO', '2012-09-09'),
(163456, 'CH', '2013-04-03'),
(123464, 'PR', '2014-05-21'),
(123490, 'PA', '2015-11-26'),
(789012, 'PA', '2015-12-15'),
(986995, 'NI', '2016-06-13'),
(123458, 'BN', '2017-05-22'),
(123404, 'CO', '2018-03-30'),
(123465, 'AL', '2018-05-09'),
(123473, 'NI', '2018-06-20'),
(123006, 'AI', '2018-09-30'),
(123449, 'MO', '2018-12-04'),
(123398, 'FE', '2019-04-28'),
(123478, 'SC', '2019-08-22'),
(123009, 'CH', '2019-09-30'),
(123473, 'CHA', '2020-09-02'),
(123481, 'SA', '2020-09-24'),
(123466, 'BB', '2020-12-07'),
(123482, 'VP', '2021-03-24'),
(123544, 'LC', '2021-04-03'),
(123304, 'CO', '2021-05-09'),
(123321, 'CHA', '2021-06-19'),
(123399, 'AS', '2021-06-25'),
(123449, 'TH', '2021-09-10'),
(123304, 'SE', '2023-11-02'),
(123473, 'MP', '2024-02-12');

-- --------------------------------------------------------

--
-- Structure de la table `affectation1`
--

CREATE TABLE `affectation1` (
  `codeCaserne` varchar(50) NOT NULL,
  `matricule` varchar(50) NOT NULL,
  `dateaffectation1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `affectation1`
--

INSERT INTO `affectation1` (`codeCaserne`, `matricule`, `dateaffectation1`) VALUES
('NI', '456004', '2006-02-14'),
('MM', '123460', '2009-01-29'),
('CH', '456550', '2009-08-22'),
('LA', '456004', '2010-04-21'),
('MG', '456222', '2015-02-04'),
('AL', '456666', '2017-09-07'),
('PA', 'MM1995', '2018-09-06'),
('NA', '456707', '2019-01-01'),
('SV', '456760', '2020-01-24'),
('BR', '456345', '2020-03-04'),
('NI', 'MB1999', '2020-03-06'),
('MO', '456345', '2020-06-05'),
('MO', '456333', '2020-06-11'),
('BB', '456111', '2020-11-20'),
('AI', '456345', '2021-02-20'),
('NI', '456477', '2021-03-31'),
('MO', '456555', '2021-04-30'),
('SC', '455678', '2021-08-12'),
('CHA', 'AB1996', '2021-12-15'),
('SZ', '432567', '2022-03-28'),
('NI', '456770', '2022-12-12'),
('ME', '456334', '2023-01-20'),
('LE', '456000', '2023-06-24'),
('CO', '456020', '2023-08-28'),
('BN', '456234', '2023-09-12'),
('LL', '456600', '2023-10-13'),
('BO', '456773', '2024-01-01'),
('MP', '456228', '2024-01-01'),
('SA', '456001', '2024-01-22'),
('BR', '456090', '2024-01-23'),
('SM', '456770', '2024-02-01'),
('NI', '986996', '2024-03-15'),
('CE', '456505', '2024-04-22');

-- --------------------------------------------------------

--
-- Structure de la table `caserne`
--

CREATE TABLE `caserne` (
  `codeCaserne` varchar(50) NOT NULL,
  `libCaserne` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `caserne`
--

INSERT INTO `caserne` (`codeCaserne`, `libCaserne`) VALUES
('AI', 'Airvault'),
('AL', 'Aigondigné - Le Lambon'),
('AM', 'La Courance - Amuré'),
('AR', 'Argentonnay'),
('AS', 'Assais les Jumeaux'),
('BB', 'Brioux sur Boutonne'),
('BE', 'Béceleuf'),
('BL', 'Brulain'),
('BN', 'Beauvoir sur Niort'),
('BO', 'Chef-Boutonne'),
('BR', 'Bressuire'),
('CB', 'Celles sur Belle'),
('CE', 'Cerizay'),
('CH', 'Champdeniers'),
('CHA', 'Chauray'),
('CO', 'Coulonges sur l\'Autize'),
('CV', 'Cherveux'),
('CZ', 'Chizé'),
('DD', 'Dicection Départementale - Chauray'),
('FE', 'Fenioux'),
('LA', 'L\'Absie'),
('LC', 'La Chapelle Saint-Laurent'),
('LE', 'Lezay'),
('LL', 'Les Landes - Bouillé Loretz'),
('LP', 'La Plaine - Plaine et Vallées'),
('MA', 'Mauléon'),
('ME', 'Melle'),
('MG', 'Ménigoute'),
('MM', 'Mauzé-sur-le-Mignon'),
('MO', 'Moncoutant'),
('MP', 'La Mothe St Héray /Pamproux'),
('MZ', 'Mazières en GÃ¢tine'),
('NA', 'Nueil-les-Aubiers'),
('NI', 'Niort'),
('PA', 'Parthenay'),
('PR', 'Prahecq'),
('SA', 'Echiré - Sèvre Amont'),
('SC', 'Arc en Sèvre - La Crèche'),
('SE', 'Secondigny'),
('SM', 'St Maixent l\'école'),
('SS', 'Saint-Martin de Sanzay'),
('SV', 'Saint-Varent'),
('SZ', 'Sauzé-Vaussais'),
('TH', 'Thouars'),
('TZ', 'Thénezay'),
('VA', 'Vasles'),
('VP', 'L\'Entente - Villers en plaine'),
('VV', 'Venise Verte - Arcais');

-- --------------------------------------------------------

--
-- Structure de la table `dateobtention`
--

CREATE TABLE `dateobtention` (
  `dateaffectation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dateobtention`
--

INSERT INTO `dateobtention` (`dateaffectation`) VALUES
('1983-12-21'),
('1985-02-20'),
('1986-06-02'),
('1988-07-24'),
('1989-02-01'),
('1989-05-24'),
('1989-06-23'),
('1990-09-17'),
('1990-09-22'),
('1991-04-20'),
('1992-08-19'),
('1993-03-22'),
('1993-05-23'),
('1993-07-21'),
('1993-09-30'),
('1993-11-20'),
('1994-04-23'),
('1995-03-06'),
('1995-09-02'),
('1996-04-20'),
('1997-05-04'),
('1997-06-04'),
('1998-04-23'),
('1999-02-02'),
('1999-09-25'),
('1999-10-27'),
('1999-12-12'),
('2000-02-17'),
('2000-05-21'),
('2000-06-23'),
('2001-01-21'),
('2001-01-31'),
('2001-05-21'),
('2001-09-10'),
('2001-10-11'),
('2001-12-07'),
('2002-03-20'),
('2003-09-12'),
('2004-09-20'),
('2004-12-04'),
('2005-02-23'),
('2005-04-23'),
('2007-08-22'),
('2008-04-25'),
('2009-07-02'),
('2009-09-21'),
('2009-12-04'),
('2009-12-10'),
('2010-01-17'),
('2011-03-27'),
('2011-05-19'),
('2011-06-30'),
('2011-09-06'),
('2011-09-22'),
('2011-09-29'),
('2011-11-24'),
('2012-01-19'),
('2012-07-31'),
('2012-09-09'),
('2014-05-21'),
('2015-11-26'),
('2017-05-22'),
('2018-03-30'),
('2018-05-09'),
('2018-05-15'),
('2018-06-20'),
('2018-09-30'),
('2018-10-13'),
('2018-12-04'),
('2019-04-28'),
('2019-08-22'),
('2019-09-30'),
('2020-06-19'),
('2020-09-02'),
('2020-09-24'),
('2020-12-07'),
('2021-03-24'),
('2021-04-03'),
('2021-05-09'),
('2021-06-19'),
('2021-06-25'),
('2021-09-09'),
('2021-09-10'),
('2023-11-02'),
('2024-02-12');

-- --------------------------------------------------------

--
-- Structure de la table `dateobtention1`
--

CREATE TABLE `dateobtention1` (
  `dateaffectation1` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dateobtention1`
--

INSERT INTO `dateobtention1` (`dateaffectation1`) VALUES
('2000-11-12'),
('2006-02-14'),
('2009-01-29'),
('2009-08-22'),
('2010-04-21'),
('2015-02-04'),
('2017-09-07'),
('2018-09-06'),
('2019-01-01'),
('2020-01-24'),
('2020-03-04'),
('2020-03-06'),
('2020-06-05'),
('2020-06-11'),
('2020-11-20'),
('2021-02-20'),
('2021-03-31'),
('2021-04-30'),
('2021-08-12'),
('2021-12-15'),
('2022-03-28'),
('2022-12-12'),
('2023-01-20'),
('2023-06-24'),
('2023-08-28'),
('2023-09-12'),
('2023-10-13'),
('2024-01-01'),
('2024-01-22'),
('2024-01-23'),
('2024-02-01'),
('2024-03-15'),
('2024-04-22');

-- --------------------------------------------------------

--
-- Structure de la table `engin`
--

CREATE TABLE `engin` (
  `codeTypeEngin` varchar(50) NOT NULL,
  `numOrdre` bigint(20) NOT NULL,
  `codeCaserne` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `engin`
--

INSERT INTO `engin` (`codeTypeEngin`, `numOrdre`, `codeCaserne`) VALUES
('VSAV', 1, 'AI'),
('VSR', 1, 'AI'),
('VSR', 2, 'AI'),
('VSR', 68, 'AI'),
('VSR', 102, 'AI'),
('EPA', 9, 'AL'),
('VSAV', 2, 'AL'),
('VSR', 3, 'AL'),
('VSR', 103, 'AL'),
('VSAV', 3, 'AM'),
('VSR', 4, 'AM'),
('VSR', 87, 'AM'),
('VSAV', 4, 'AR'),
('VSR', 5, 'AR'),
('VSAV', 5, 'AS'),
('VSR', 6, 'AS'),
('VSR', 88, 'AS'),
('VSR', 89, 'AS'),
('VSAV', 6, 'BB'),
('VSR', 7, 'BB'),
('VSR', 99, 'BB'),
('EPA', 8, 'BE'),
('VSAV', 7, 'BE'),
('VSR', 8, 'BE'),
('VSR', 110, 'BE'),
('VSAV', 8, 'BL'),
('VSR', 9, 'BL'),
('VSR', 100, 'BL'),
('VSAV', 9, 'BN'),
('VSR', 10, 'BN'),
('VSR', 101, 'BN'),
('VSAV', 10, 'BO'),
('VSR', 11, 'BO'),
('VSR', 109, 'BO'),
('EPA', 7, 'BR'),
('FPT', 4, 'BR'),
('VSAV', 11, 'BR'),
('VSAV', 12, 'BR'),
('VSR', 12, 'BR'),
('VSR', 56, 'BR'),
('VSR', 57, 'BR'),
('VSR', 86, 'BR'),
('VSR', 97, 'BR'),
('VSR', 98, 'BR'),
('VSAV', 13, 'CB'),
('VSR', 13, 'CB'),
('VSR', 80, 'CB'),
('VSR', 81, 'CB'),
('CCF', 4, 'CE'),
('VSAV', 14, 'CE'),
('VSR', 14, 'CE'),
('VSAV', 15, 'CH'),
('VSAV', 38, 'CH'),
('VSR', 15, 'CH'),
('VSR', 84, 'CH'),
('VSR', 85, 'CH'),
('CCF', 3, 'CHA'),
('EPA', 10, 'CO'),
('VSAV', 16, 'CO'),
('VSR', 16, 'CO'),
('VSR', 78, 'CO'),
('VSR', 79, 'CO'),
('VSAV', 17, 'CV'),
('VSR', 17, 'CV'),
('VSAV', 18, 'CZ'),
('VSR', 18, 'CZ'),
('VSR', 76, 'CZ'),
('VSAV', 19, 'DD'),
('VSR', 19, 'DD'),
('VSR', 77, 'DD'),
('VSAV', 20, 'FE'),
('VSR', 20, 'FE'),
('VSAV', 21, 'LA'),
('VSR', 21, 'LA'),
('VSAV', 22, 'LC'),
('VSR', 22, 'LC'),
('VSAV', 23, 'LE'),
('VSR', 23, 'LE'),
('VSR', 74, 'LE'),
('VSR', 75, 'LE'),
('VSAV', 24, 'LL'),
('VSR', 24, 'LL'),
('VSR', 72, 'LL'),
('VSAV', 25, 'LP'),
('VSR', 25, 'LP'),
('VSR', 73, 'LP'),
('VSAV', 26, 'MA'),
('VSR', 26, 'MA'),
('EPA', 11, 'ME'),
('VSAV', 27, 'ME'),
('VSAV', 28, 'ME'),
('VSR', 27, 'ME'),
('VSR', 61, 'ME'),
('VSR', 62, 'ME'),
('VSR', 82, 'ME'),
('VSR', 112, 'ME'),
('VSR', 28, 'MG'),
('VSR', 66, 'MG'),
('VSAV', 29, 'MM'),
('VSR', 29, 'MM'),
('VSAV', 30, 'MO'),
('VSAV', 31, 'MO'),
('VSR', 30, 'MO'),
('VSR', 90, 'MO'),
('VSAV', 32, 'MP'),
('VSR', 31, 'MP'),
('VSAV', 34, 'NA'),
('VSR', 33, 'NA'),
('VSR', 104, 'NA'),
('CCF', 1, 'NI'),
('EPA', 3, 'NI'),
('EPA', 4, 'NI'),
('EPA', 5, 'NI'),
('FPT', 1, 'NI'),
('FPT', 2, 'NI'),
('VSAV', 35, 'NI'),
('VSAV', 36, 'NI'),
('VSAV', 37, 'NI'),
('VSR', 34, 'NI'),
('VSR', 49, 'NI'),
('VSR', 50, 'NI'),
('VSR', 51, 'NI'),
('VSR', 52, 'NI'),
('VSR', 53, 'NI'),
('VSR', 83, 'NI'),
('VSR', 93, 'NI'),
('VSR', 111, 'NI'),
('EPA', 1, 'PA'),
('EPA', 2, 'PA'),
('VSAV', 39, 'PA'),
('VSAV', 40, 'PA'),
('VSAV', 41, 'PA'),
('VSR', 35, 'PA'),
('VSR', 54, 'PA'),
('VSR', 55, 'PA'),
('VSR', 94, 'PA'),
('VSR', 95, 'PA'),
('VSAV', 42, 'PR'),
('VSR', 36, 'PR'),
('VSAV', 43, 'SA'),
('VSR', 37, 'SA'),
('VSR', 69, 'SA'),
('VSR', 105, 'SA'),
('VSAV', 44, 'SC'),
('VSR', 38, 'SC'),
('VSR', 70, 'SC'),
('VSAV', 45, 'SE'),
('VSR', 39, 'SE'),
('VSR', 67, 'SE'),
('EPA', 12, 'SM'),
('VSAV', 46, 'SM'),
('VSAV', 47, 'SM'),
('VSR', 40, 'SM'),
('VSR', 63, 'SM'),
('VSR', 64, 'SM'),
('VSR', 65, 'SM'),
('VSR', 108, 'SM'),
('FPT', 5, 'SS'),
('VSAV', 48, 'SS'),
('VSR', 41, 'SS'),
('VSR', 106, 'SS'),
('VSAV', 49, 'SV'),
('VSR', 42, 'SV'),
('VSAV', 50, 'SZ'),
('VSR', 43, 'SZ'),
('VSR', 91, 'SZ'),
('VSR', 92, 'SZ'),
('VSR', 107, 'SZ'),
('CCF', 2, 'TH'),
('EPA', 6, 'TH'),
('FPT', 3, 'TH'),
('VSAV', 51, 'TH'),
('VSAV', 52, 'TH'),
('VSR', 44, 'TH'),
('VSR', 58, 'TH'),
('VSR', 96, 'TH'),
('EPA', 13, 'TZ'),
('VSAV', 53, 'TZ'),
('VSR', 45, 'TZ'),
('VSR', 59, 'TZ'),
('VSR', 60, 'TZ'),
('VSAV', 54, 'VA'),
('VSR', 46, 'VA'),
('VSAV', 55, 'VP'),
('VSR', 47, 'VP'),
('VSAV', 56, 'VV'),
('VSR', 48, 'VV');

-- --------------------------------------------------------

--
-- Structure de la table `engin1`
--

CREATE TABLE `engin1` (
  `refSituation` varchar(50) NOT NULL,
  `codeTypeEngin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `engin1`
--

INSERT INTO `engin1` (`refSituation`, `codeTypeEngin`) VALUES
('FBRO', 'CCF'),
('FLOC', 'CCF'),
('ABLO', 'EC'),
('ABLO', 'EPA'),
('ANIC', 'EPA'),
('ANIS', 'EPA'),
('BACT', 'EPA'),
('FAPP', 'EPA'),
('GRIM', 'EPA'),
('ABLO', 'FPT'),
('FAPP', 'FPT'),
('FBRO', 'FPT'),
('FLOC', 'FPT'),
('FVEH', 'FPT'),
('FBRO', 'VLHR'),
('ABLO', 'VSAV'),
('ACVP', 'VSAV'),
('FAPP', 'VSAV'),
('FVEH', 'VSAV'),
('GRIM', 'VSAV'),
('SDE', 'VSAV'),
('SPUR', 'VSAV'),
('SVE', 'VSAV'),
('ACVP', 'VSR'),
('ANIC', 'VSR'),
('ANIS', 'VSR'),
('BACT', 'VSR'),
('GRIM', 'VSR'),
('INON', 'VSR'),
('POLE', 'VSR'),
('RCB', 'VSR'),
('RR', 'VSR'),
('SDE', 'VSR'),
('SS', 'VSR'),
('SVE', 'VSR'),
('TROC', 'VSR');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

CREATE TABLE `fonction` (
  `codeFonction` varchar(50) NOT NULL,
  `libFonction` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`codeFonction`, `libFonction`) VALUES
('CHCYN', 'Chef équipe cynotechnique'),
('CHFPT', 'Chef d\'agrès fourgon pompe-tonne'),
('CHIMP', 'Chef d\'intervention en milieu périlleux'),
('CHPT', 'Chef d\'Agrès Fourgon Pompe-Tonne'),
('COCHI', 'Conducteur de chiens'),
('COCMC', 'Conducteur camion citerne'),
('COFPT', 'Conducteur fourgon pompe-tonne'),
('COVSA', 'Conducteur secours et d\'assistance aux victimes'),
('COVSR', 'Conducteur de Véhicule de Secours Routier'),
('EQCMC', 'Equipier camion citerne'),
('EQEPA', 'Equiper échelle pivotante automatique'),
('EQFEF', 'Equipier feu en fôret'),
('EQGRI', 'Equipier en milieu périlleux'),
('EQINC', 'Équipier Incendie'),
('EQRCB', 'Equipier en risque chimique et biologique'),
('EQSOU', 'Equipier site souterrrain'),
('NSAQU', 'Nageur sauveteur aquatique'),
('SPPLG', 'Sapeur pompier plongeur');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `codeGrade` varchar(50) NOT NULL,
  `libGrade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`codeGrade`, `libGrade`) VALUES
('AD', 'Adjudant'),
('CA', 'Capitaine'),
('CG', 'Contrôleur général'),
('CL', 'Colonel'),
('CO', 'Commandant'),
('CP', 'Caporal'),
('LC', 'Lieutenant-Colonel'),
('LI', 'Lieutenant'),
('SA', 'Sapeur'),
('SE', 'Sergent');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation`
--

CREATE TABLE `habilitation` (
  `codeFonction` varchar(50) NOT NULL,
  `matricule` varchar(50) NOT NULL,
  `dateObtention1` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `habilitation`
--

INSERT INTO `habilitation` (`codeFonction`, `matricule`, `dateObtention1`) VALUES
('CHPT', 'MB1999', '2020-12-16'),
('COFPT', '123460', '2023-08-02'),
('COVSA', '123460', '2024-01-12'),
('COVSA', '456773', '2024-02-06'),
('COVSR', '123460', '2022-10-21'),
('COVSR', '456004', '2024-01-11'),
('COVSR', '456111', '2024-03-17'),
('COVSR', '456234', '2024-03-15'),
('COVSR', '456477', '2024-01-12'),
('COVSR', '456550', '2024-02-19'),
('COVSR', '456666', '2024-03-15'),
('COVSR', '456773', '2023-09-19'),
('COVSR', '567654', '2023-10-22'),
('COVSR', 'MM1995', '2018-05-15'),
('EQCMC', '455678', '2023-09-22'),
('EQEPA', '455678', '2023-12-12'),
('EQFEF', '432567', '2024-03-22'),
('EQFEF', '456000', '2024-03-13'),
('EQGRI', '456333', '2024-01-19'),
('EQGRI', '456707', '2024-03-17'),
('EQGRI', '456770', '2023-12-19'),
('EQINC', '123460', '2021-09-27'),
('EQINC', '432567', '2024-01-21'),
('EQINC', '455678', '2023-01-20'),
('EQINC', '456000', '2024-01-12'),
('EQINC', '456001', '2024-01-12'),
('EQINC', '456004', '2023-05-14'),
('EQINC', '456020', '2023-10-28'),
('EQINC', '456090', '2024-01-12'),
('EQINC', '456111', '2023-10-28'),
('EQINC', '456222', '2023-05-14'),
('EQINC', '456228', '2023-04-14'),
('EQINC', '456234', '2024-01-12'),
('EQINC', '456333', '2023-10-28'),
('EQINC', '456334', '2023-04-14'),
('EQINC', '456345', '2023-05-14'),
('EQINC', '456477', '2023-10-28'),
('EQINC', '456505', '2023-05-26'),
('EQINC', '456550', '2024-01-12'),
('EQINC', '456555', '2023-10-28'),
('EQINC', '456600', '2024-01-12'),
('EQINC', '456666', '2023-05-14'),
('EQINC', '456707', '2024-01-12'),
('EQINC', '456760', '2023-02-02'),
('EQINC', '456770', '2023-03-01'),
('EQINC', '456773', '2022-06-13'),
('EQINC', '567654', '2023-09-21'),
('EQINC', '986996', '2023-04-21'),
('EQINC', 'AB1996', '2021-09-06'),
('SPPLG', '456222', '2024-01-11'),
('SPPLG', '456345', '2024-01-11'),
('SPPLG', '456555', '2024-01-11'),
('SPPLG', '456760', '2024-03-05'),
('SPPLG', '567654', '2024-01-04');

-- --------------------------------------------------------

--
-- Structure de la table `habilitation1`
--

CREATE TABLE `habilitation1` (
  `matricule` int(11) NOT NULL,
  `codeFonction` varchar(50) NOT NULL,
  `dateObtention` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `habilitation1`
--

INSERT INTO `habilitation1` (`matricule`, `codeFonction`, `dateObtention`) VALUES
(12361, 'COVSA', '2006-09-15'),
(12361, 'COVSR', '2005-04-13'),
(12361, 'EQGRI', '2009-09-12'),
(12361, 'EQINC', '2002-09-14'),
(12361, 'SPPLG', '2007-08-13'),
(122129, 'CHFPT', '2024-04-12'),
(122129, 'COVSA', '2023-09-24'),
(122129, 'COVSR', '2019-03-12'),
(122129, 'EQGRI', '2019-05-12'),
(122129, 'EQINC', '2001-09-21'),
(122129, 'EQSOU', '2020-01-20'),
(123000, 'CHFPT', '2021-06-02'),
(123000, 'CHIMP', '2009-12-24'),
(123000, 'COCMC', '2013-02-20'),
(123000, 'COVSR', '1999-12-03'),
(123000, 'EQCMC', '2019-12-12'),
(123000, 'EQEPA', '1999-12-12'),
(123006, 'COVSR', '2023-09-21'),
(123006, 'EQINC', '2019-09-30'),
(123006, 'NSAQU', '2020-05-01'),
(123007, 'CHCYN', '2009-08-12'),
(123007, 'CHFPT', '2021-02-23'),
(123007, 'CHIMP', '2010-09-21'),
(123007, 'COFPT', '2014-09-12'),
(123007, 'COVSR', '2015-05-23'),
(123007, 'EQCMC', '2019-05-05'),
(123007, 'EQEPA', '2005-02-19'),
(123007, 'EQINC', '2003-01-14'),
(123007, 'EQSOU', '2018-06-01'),
(123008, 'CHFPT', '2021-11-12'),
(123008, 'COVSR', '2014-02-25'),
(123008, 'EQCMC', '2019-09-09'),
(123008, 'EQEPA', '2018-09-02'),
(123008, 'EQINC', '2012-10-22'),
(123009, 'EQEPA', '2020-01-24'),
(123009, 'EQFEF', '2020-04-25'),
(123009, 'EQGRI', '2021-09-28'),
(123009, 'EQINC', '2019-11-23'),
(123009, 'EQRCB', '2022-01-31'),
(123009, 'EQSOU', '2022-09-07'),
(123089, 'CHFPT', '2011-10-21'),
(123089, 'EQEPA', '2009-11-09'),
(123089, 'EQINC', '2008-10-26'),
(123089, 'EQRCB', '2021-09-15'),
(123123, 'CHIMP', '2002-09-20'),
(123123, 'COVSR', '1998-10-15'),
(123123, 'EQGRI', '2004-11-16'),
(123123, 'EQINC', '1994-05-13'),
(123123, 'EQSOU', '2012-09-21'),
(123124, 'CHFPT', '2011-09-28'),
(123124, 'COVSR', '1995-09-15'),
(123124, 'EQCMC', '2005-04-23'),
(123124, 'EQINC', '1994-05-13'),
(123124, 'NSAQU', '2004-09-21'),
(123303, 'COVSR', '2012-04-02'),
(123303, 'EQEPA', '2017-03-16'),
(123303, 'EQFEF', '2014-05-01'),
(123303, 'EQGRI', '2016-03-04'),
(123303, 'EQINC', '2011-09-24'),
(123303, 'NSAQU', '2015-11-13'),
(123304, 'CHFPT', '2022-04-28'),
(123304, 'COVSA', '2020-03-25'),
(123304, 'EQEPA', '2015-03-31'),
(123304, 'EQINC', '2013-03-30'),
(123305, 'CHFPT', '2023-12-15'),
(123305, 'CHIMP', '2021-09-12'),
(123305, 'COCMC', '2013-12-08'),
(123305, 'COVSA', '2004-03-21'),
(123305, 'EQINC', '2000-07-20'),
(123305, 'NSAQU', '2022-12-01'),
(123309, 'CHFPT', '2020-09-04'),
(123309, 'COVSA', '2011-09-12'),
(123309, 'EQEPA', '2000-11-21'),
(123309, 'EQFEF', '2012-04-03'),
(123321, 'CHFPT', '2023-09-21'),
(123321, 'CHIMP', '2009-01-04'),
(123321, 'COCHI', '2023-12-23'),
(123321, 'COCMC', '2008-03-21'),
(123321, 'COVSA', '1999-12-21'),
(123321, 'COVSR', '2006-10-02'),
(123321, 'EQEPA', '2021-05-13'),
(123321, 'NSAQU', '2020-05-01'),
(123391, 'COVSR', '2003-09-23'),
(123391, 'EQCMC', '2022-12-12'),
(123391, 'EQINC', '2000-02-20'),
(123391, 'NSAQU', '2020-05-01'),
(123398, 'CHFPT', '2023-04-03'),
(123398, 'COCMC', '2022-07-07'),
(123398, 'COFPT', '2021-12-05'),
(123398, 'COVSA', '2021-09-03'),
(123398, 'COVSR', '2021-04-01'),
(123398, 'EQINC', '2020-03-31'),
(123399, 'COVSA', '2023-05-12'),
(123399, 'EQFEF', '2022-04-01'),
(123399, 'EQINC', '2022-01-31'),
(123399, 'EQRCB', '2022-09-01'),
(123399, 'EQSOU', '2022-11-09'),
(123401, 'COFPT', '2009-01-15'),
(123401, 'COVSR', '2000-09-13'),
(123401, 'EQINC', '1996-09-04'),
(123404, 'COCMC', '2024-03-04'),
(123404, 'COVSA', '2023-09-16'),
(123404, 'COVSR', '2020-07-22'),
(123404, 'EQCMC', '2023-03-03'),
(123404, 'EQEPA', '2022-09-24'),
(123404, 'EQINC', '2019-04-21'),
(123404, 'EQRCB', '2021-09-24'),
(123408, 'COVSA', '2024-02-01'),
(123408, 'EQEPA', '2022-09-24'),
(123408, 'EQFEF', '2013-10-12'),
(123408, 'EQINC', '2009-02-20'),
(123408, 'EQRCB', '2020-05-24'),
(123408, 'NSAQU', '2017-05-01'),
(123449, 'CHFPT', '2020-09-06'),
(123449, 'COFPT', '2011-11-09'),
(123449, 'COVSA', '2010-06-25'),
(123449, 'COVSR', '2009-09-12'),
(123449, 'EQINC', '2005-07-12'),
(123449, 'EQRCB', '2023-03-31'),
(123456, 'COVSR', '2016-05-31'),
(123456, 'EQINC', '2012-09-21'),
(123457, 'CHFPT', '2007-09-13'),
(123457, 'COCMC', '2016-01-01'),
(123457, 'COFPT', '2015-12-01'),
(123457, 'COVSA', '2009-07-31'),
(123457, 'EQINC', '2004-09-12'),
(123457, 'EQSOU', '2005-05-23'),
(123458, 'COVSR', '2020-07-31'),
(123458, 'EQEPA', '2023-03-31'),
(123458, 'EQINC', '2019-11-11'),
(123459, 'COCMC', '2014-01-25'),
(123459, 'EQEPA', '2011-09-01'),
(123459, 'EQINC', '2000-09-21'),
(123459, 'SPPLG', '2010-09-21'),
(123462, 'EQCMC', '2007-05-16'),
(123462, 'EQFEF', '2003-12-14'),
(123462, 'EQGRI', '2009-05-31'),
(123462, 'EQINC', '2000-12-12'),
(123462, 'EQSOU', '2005-01-15'),
(123463, 'EQCMC', '2023-03-21'),
(123463, 'EQFEF', '2013-07-31'),
(123463, 'EQINC', '2012-10-21'),
(123463, 'EQRCB', '2020-12-24'),
(123464, 'COCMC', '2023-12-23'),
(123464, 'COVSA', '2022-09-12'),
(123464, 'EQFEF', '2021-05-31'),
(123464, 'EQINC', '2018-03-31'),
(123465, 'COVSA', '2023-10-22'),
(123465, 'EQEPA', '2024-02-01'),
(123465, 'EQINC', '2019-05-21'),
(123465, 'NSAQU', '2020-05-01'),
(123466, 'COVSA', '2023-03-25'),
(123466, 'COVSR', '2009-03-31'),
(123466, 'EQGRI', '2015-03-31'),
(123466, 'EQINC', '2008-09-30'),
(123466, 'SPPLG', '2012-11-24'),
(123467, 'CHFPT', '2015-07-31'),
(123467, 'COCMC', '2009-03-31'),
(123467, 'COFPT', '2005-11-23'),
(123467, 'EQINC', '2004-08-09'),
(123468, 'COVSA', '2017-06-15'),
(123468, 'EQFEF', '1998-05-06'),
(123468, 'EQGRI', '1999-03-04'),
(123468, 'EQINC', '1996-05-01'),
(123468, 'NSAQU', '2006-03-22'),
(123468, 'SPPLG', '2005-10-21'),
(123471, 'COVSR', '1998-04-21'),
(123471, 'EQCMC', '2005-04-25'),
(123471, 'EQEPA', '2001-12-21'),
(123471, 'EQINC', '1996-03-01'),
(123471, 'NSAQU', '2000-09-30'),
(123473, 'COFPT', '2006-01-31'),
(123473, 'COVSA', '2018-05-14'),
(123473, 'COVSR', '2006-09-15'),
(123473, 'EQEPA', '2007-03-31'),
(123473, 'EQINC', '2003-03-13'),
(123473, 'EQRCB', '2009-12-28'),
(123478, 'EQINC', '2020-09-15'),
(123478, 'EQRCB', '2022-09-16'),
(123478, 'EQSOU', '2023-03-31'),
(123481, 'EQFEF', '2023-07-30'),
(123481, 'EQINC', '2021-03-31'),
(123482, 'COVSR', '2022-09-12'),
(123482, 'EQINC', '2021-12-02'),
(123488, 'COVSR', '2000-10-17'),
(123488, 'EQCMC', '2021-03-31'),
(123488, 'EQINC', '1990-09-15'),
(123488, 'NSAQU', '2005-09-15'),
(123489, 'CHIMP', '2011-07-04'),
(123489, 'COVSA', '2005-01-04'),
(123489, 'EQCMC', '2000-12-19'),
(123489, 'EQEPA', '2000-04-15'),
(123489, 'EQINC', '1998-04-12'),
(123490, 'CHFPT', '2008-07-31'),
(123490, 'CHIMP', '2000-12-01'),
(123490, 'EQGRI', '2005-12-21'),
(123490, 'EQINC', '1998-02-21'),
(123490, 'SPPLG', '2006-05-31'),
(123544, 'COVSR', '2019-06-30'),
(123544, 'EQINC', '2013-12-21'),
(123550, 'CHFPT', '2020-09-30'),
(123550, 'EQFEF', '2015-03-31'),
(123550, 'EQINC', '2013-04-30'),
(123567, 'COFPT', '2018-03-24'),
(123567, 'EQFEF', '2007-12-23'),
(123567, 'EQINC', '2004-09-14'),
(123567, 'EQSOU', '2009-08-31'),
(123620, 'COFPT', '2007-08-31'),
(123620, 'EQEPA', '2005-03-31'),
(123620, 'EQFEF', '1996-11-09'),
(123620, 'EQINC', '1993-12-02'),
(123620, 'NSAQU', '2000-11-11'),
(123667, 'COVSA', '2003-11-05'),
(123667, 'COVSR', '1998-12-02'),
(123667, 'EQGRI', '2009-12-05'),
(123667, 'EQINC', '1990-05-01'),
(123692, 'COVSR', '2005-10-19'),
(123692, 'EQCMC', '2013-11-21'),
(123692, 'EQGRI', '2012-09-24'),
(123692, 'EQINC', '2001-12-05'),
(123708, 'CHFPT', '2023-05-26'),
(123708, 'COCMC', '2022-09-04'),
(123708, 'COFPT', '2021-09-12'),
(123708, 'EQFEF', '2019-10-22'),
(123708, 'EQINC', '2018-09-21'),
(123708, 'EQSOU', '2021-04-01'),
(123708, 'SPPLG', '2020-08-24'),
(123908, 'COVSR', '2023-01-12'),
(123908, 'EQEPA', '2024-02-15'),
(123908, 'EQINC', '1995-05-14'),
(163456, 'FPT', '2020-06-19'),
(789012, 'VSR', '2021-09-09'),
(986993, 'CHCYN', '1999-09-21'),
(986993, 'CHIMP', '1998-12-09'),
(986995, 'CHCYN', '2012-12-12'),
(986995, 'CHFPT', '2019-03-21'),
(986995, 'EI', '2018-05-15'),
(986995, 'EQINC', '2004-03-02');

-- --------------------------------------------------------

--
-- Structure de la table `mobiliser_moyens_humains`
--

CREATE TABLE `mobiliser_moyens_humains` (
  `codeTypeEngin` varchar(50) NOT NULL,
  `numOrdre` bigint(20) NOT NULL,
  `codeTypeEngin_1` varchar(50) NOT NULL,
  `nbPompiers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mobiliser_moyens_humains`
--

INSERT INTO `mobiliser_moyens_humains` (`codeTypeEngin`, `numOrdre`, `codeTypeEngin_1`, `nbPompiers`) VALUES
('CCF', 1, 'CCF', 1),
('CCF', 1, 'FPT', 2),
('EPA', 1, 'EPA', 3),
('EPA', 2, 'FPT', 1),
('FPT', 1, 'FPT', 1),
('VSAV', 1, 'VSAV', 2),
('VSR', 1, 'VSR', 1);

-- --------------------------------------------------------

--
-- Structure de la table `pompier`
--

CREATE TABLE `pompier` (
  `matricule` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaissance` date NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `numBIP` int(11) NOT NULL,
  `dateEmbauche` date DEFAULT NULL,
  `dernierIndice` varchar(50) DEFAULT NULL,
  `codeGrade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pompier`
--

INSERT INTO `pompier` (`matricule`, `nom`, `prenom`, `dateNaissance`, `sexe`, `telephone`, `numBIP`, `dateEmbauche`, `dernierIndice`, `codeGrade`) VALUES
(12361, 'Barbier', 'Damien', '1979-12-22', 'masculin', '0626341107', 111, '2001-01-21', '188', 'LI'),
(122129, 'Tata', 'Jacques', '1970-04-23', 'masculin', '0782070345', 73, '1992-08-19', '303', 'LI'),
(123000, 'Thibaudeau', 'Jérôme', '1968-02-03', 'masculin', '0637021526', 49, '1993-09-30', '305', 'CA'),
(123006, 'Moreau', 'Manuel', '1990-05-17', 'masculin', '0649868890', 38, '2018-09-30', '198', 'LI'),
(123007, 'Montecot', 'Maxime', '1977-09-30', 'masculin', '0788832649', 68, '2000-02-17', '283', 'CA'),
(123008, 'Drochon', 'Sébastien', '1977-09-24', 'masculin', '0615314508', 80, '2011-09-22', '209', 'LI'),
(123009, 'Bluteau', 'Damien', '1993-09-27', 'masculin', '0686222115', 105, '2019-09-30', '145', 'LI'),
(123089, 'Bouet', 'Nicolas', '1983-09-24', 'masculin', '0634363898', 60, '2005-02-23', '278', 'LI'),
(123123, 'Niderlender', 'Thibault', '1972-09-23', 'masculin', '0549081818', 1, '1993-05-23', '389', 'CL'),
(123124, 'Beauvais', 'Patrick', '1965-09-21', 'masculin', '0549241292', 2, '1993-07-21', '335', 'CO'),
(123303, 'Biga', 'Julien', '1989-03-21', 'masculin', '0770166915', 6, '2009-09-21', '167', 'CA'),
(123304, 'Pied-Didier', 'Florence', '1983-03-01', 'féminin', '0684154477', 135, '2011-09-29', '188', 'LI'),
(123305, 'Gabard', 'Daniel', '1959-09-10', 'masculin', '0618543063', 21, '1988-07-24', '388', 'LI'),
(123309, 'Herbillon', 'Patrice', '1961-08-24', 'masculin', '0680760184', 51, '1983-12-21', '377', 'LI'),
(123321, 'Camus', 'Olivier', '1991-10-08', 'masculin', '0660066011', 10, '1998-04-23', '228', 'CO'),
(123391, 'Giraud', 'Mickaël', '1981-09-09', 'masculin', '0622974411', 39, '1999-09-25', '188', 'LI'),
(123398, 'Boutin', 'Yohan', '1988-10-13', 'masculin', '0618140464', 69, '2019-04-28', '112', 'LI'),
(123399, 'Rousseau', 'Damien', '1998-04-24', 'masculin', '0670894972', 204, '2021-06-25', '98', 'AD'),
(123401, 'Pautrot', 'Olivier', '1960-01-28', 'masculin', '0623707150', 27, '1986-06-02', '356', 'LI'),
(123404, 'Devault', 'Damien', '1988-09-24', 'masculin', '0613713634', 36, '2018-03-30', '109', 'LI'),
(123408, 'Launay', 'Jacky', '1970-05-22', 'masculin', '0781551562', 58, '2008-04-25', '298', 'LI'),
(123449, 'Muzzolini', 'Fabrice', '1979-04-23', 'masculin', '0655666666', 29, '2001-09-10', '205', 'CA'),
(123456, 'Martin', 'Kévin', '1985-12-21', 'masculin', '0661796469', 23, '2011-11-24', '201', 'LI'),
(123457, 'Porcheron', 'Patrice', '1971-03-05', 'masculin', '0630863801', 54, '1997-06-04', '301', 'LI'),
(123458, 'Franki', 'Eric', '1991-07-08', 'masculin', '0684484535', 35, '2017-05-22', '145', 'LI'),
(123459, 'Bergeron', 'Mickaël', '1969-12-03', 'masculin', '0688549764', 26, '1993-03-22', '300', 'LI'),
(123460, 'Rivet', 'Olivier', '1989-09-02', 'masculin', '0654786778', 140, NULL, 'NULL', 'SA'),
(123462, 'Monchaux', 'Mickaël', '1975-02-28', 'masculin', '0661425298', 77, '1999-02-02', '244', 'LI'),
(123463, 'Bouchereau', 'Julien', '1987-11-04', 'mas', '0673776785', 112, '2011-06-30', '107', 'AD'),
(123464, 'Piat', 'Christophe', '1991-05-21', 'masculin', '0652796002', 42, '2014-05-21', '124', 'LI'),
(123465, 'Fouquet', 'Christophe', '1986-03-21', 'masculin', '0667695462', 29, '2018-05-09', '103', 'AD'),
(123466, 'Lacassagne', 'Valérie', '1981-09-22', 'féminin', '0785248100', 18, '2007-08-22', '144', 'LI'),
(123467, 'Thiburce', 'Damien', '1978-02-21', 'masculin', '0689589553', 57, '2000-05-21', '198', 'LI'),
(123468, 'Laurencier', 'Sophie', '1970-02-22', 'féminin', '0683078975', 20, '1996-04-20', '328', 'CA'),
(123471, 'Tribot', 'Michaël', '1967-09-30', 'masculin', '0607651222', 116, '1995-03-06', '331', 'LI'),
(123473, 'Menand', 'Claude', '1980-11-22', 'masculin', '0688480025', 100, '2001-05-21', '244', 'LI'),
(123478, 'Petit-Poupard', 'Angélique', '1994-12-07', 'féminin', '0666666669', 55, '2019-08-22', '116', 'LI'),
(123481, 'Benazet', 'Laurent', '1972-09-09', 'masculin', '0608930465', 164, '2020-09-24', '101', 'LI'),
(123482, 'Gautier', 'Richard', '1991-09-21', 'masculin', '0626748268', 202, '2021-03-24', '99', 'LI'),
(123488, 'Roger', 'Christian', '1961-06-23', 'masculin', '0670609584', 90, '1989-05-24', '330', 'LI'),
(123489, 'Fichet', 'Ludovic', '1973-12-31', 'masculin', '0620012330', 7, '1997-05-04', '288', 'CO'),
(123490, 'Albrecht', 'Mickaël', '1976-09-23', 'masculin', '0612332123', 8, '1995-09-08', '290', 'CO'),
(123544, 'Charrier', 'Cyril', '1978-03-29', 'masculin', '0630589002', 92, '2011-03-27', '209', 'LI'),
(123550, 'Lunet', 'Sébastien', '1980-04-11', 'ma', '0648631998', 67, '2010-01-17', '200', 'LI'),
(123567, 'Mercier', 'Etienne', '1983-11-06', 'masculin', '0650079674', 5, '2001-10-11', '203', 'LI'),
(123620, 'Roy', 'Daniel', '1965-08-28', 'masculin', '0673063360', 49, '1990-09-22', '290', 'LI'),
(123667, 'Mathe', 'Christophe', '1963-07-31', 'masculin', '0656334455', 109, '1989-06-23', '345', 'CA'),
(123692, 'Messager', 'Emmanuel', '1960-12-26', 'masculin', '0630332748', 84, '2000-06-23', '205', 'CA'),
(123708, 'Pintaud', 'Julien', '1989-09-23', 'masculin', '0616425373', 209, '2018-10-13', '109', 'LI'),
(123908, 'Rocheteau', 'Stéphane', '1968-05-27', 'masculin', '0688462560', 93, '1994-04-23', '302', 'LI'),
(163456, 'Karimi', 'Alice', '1985-04-15', 'feminin', '987654321', 456789012, '2010-08-16', '4800', 'FPT'),
(432567, 'Bastin', 'Thomas', '1999-09-30', 'masculin', '0665432345', 67, NULL, 'NULL', 'SA'),
(455678, 'Laurent', 'Arnaud', '2001-03-12', 'masculin', '0787879703', 116, NULL, 'NULL', 'SA'),
(456000, 'Veillon', 'Lucas', '2005-06-24', 'masculin', '0603040908', 299, NULL, 'NULL', 'SA'),
(456001, 'Alliot', 'David', '2000-12-07', 'masculin', '0710111214', 110, NULL, 'NULL', 'SA'),
(456004, 'Chauveau', 'Kévin', '1996-04-16', 'masculin', '0713242678', 44, NULL, 'NULL', 'SA'),
(456020, 'Bourdeau', 'Barbara', '2004-12-25', 'féminin', '0644090803', 288, NULL, 'NULL', 'SA'),
(456090, 'Savarit', 'Yohan', '2006-01-23', 'masculin', '0790912303', 190, NULL, 'NULL', 'SA'),
(456111, 'Arias', 'Samuel', '1998-12-20', 'masculin', '0788112233', 200, NULL, 'NULL', 'SA'),
(456222, 'Normand', 'Sébastien', '1994-11-06', 'masculin', '0788332255', 128, NULL, 'NULL', 'SA'),
(456228, 'Petrault', 'David', '2005-12-31', 'masculin', '0608799034', 356, NULL, 'NULL', 'SA'),
(456234, 'Olivier', 'Romain', '2003-04-30', 'masculin', '0756789087', 229, NULL, 'NULL', 'SA'),
(456333, 'Moreau', 'Camille', '2000-09-30', 'masculin', '0623242800', 280, NULL, 'NULL', 'SA'),
(456334, 'Belli', 'Elodie', '2001-12-21', 'féminin', '07400234', 310, NULL, 'NULL', 'SA'),
(456345, 'Desette', 'Kévin', '2002-11-11', 'masc', '0788992200', 208, NULL, 'NULL', 'SA'),
(456477, 'Trouchon', 'Aurélien', '2003-12-04', 'masculin', '0654100304', 66, NULL, 'NULL', 'SA'),
(456505, 'Bachelery', 'Pierre', '2005-12-01', 'masculin', '0701020304', 300, NULL, 'NULL', 'SA'),
(456550, 'Bluteau', 'Sébastien', '1991-02-28', 'masculin', '0649733910', 204, NULL, 'NULL', 'SA'),
(456555, 'Bodet', 'Clément', '2001-09-24', 'masculin', '0644553001', 183, NULL, 'NULL', 'SA'),
(456600, 'Guillet', 'Xavier', '2005-09-24', 'masculin', '0653245611', 201, NULL, 'NULL', 'SA'),
(456666, 'Couturier', 'Cédric', '1998-02-23', 'masculin', '0654494903', 255, NULL, 'NULL', 'SA'),
(456707, 'Chapas', 'Jérémy', '1999-01-13', 'masculin', '0606070809', 134, NULL, 'NULL', 'SA'),
(456760, 'Gouget', 'Dimitri', '1996-05-09', 'masculin', '0654565456', 104, NULL, 'NULL', 'SA'),
(456770, 'Deurre', 'Céline', '2002-03-26', 'féminin', '0702030405', 229, NULL, 'NULL', 'SA'),
(456773, 'Vaie', 'Fabien', '2003-12-27', 'masculin', '07293845', 229, NULL, 'NULL', 'SA'),
(567654, 'Charron', 'Jean-Michel', '1956-09-23', 'masculin', '0634291802', 51, NULL, 'NULL', 'SA'),
(789012, 'Edison', 'Eric', '1992-05-10', 'masculin', '987654321', 123456789, '2015-09-09', '4000', 'EI'),
(986993, 'Canonne', 'Sylvia', '1961-03-11', 'féminin', '0612345678', 11, '1990-09-17', '380', 'CL'),
(986995, 'Dupont', 'Jean', '1969-01-10', 'masculin', '123456789', 987654321, '2018-05-09', '4500', 'VSR'),
(986996, 'Garnier', 'François', '1988-12-13', 'masculin', '0666554444', 18, NULL, 'NULL', 'AD');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `pompiers_par_grade`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `pompiers_par_grade` (
`codeGrade` varchar(50)
,`nombre_pompiers` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure de la table `situation`
--

CREATE TABLE `situation` (
  `refSituation` varchar(50) NOT NULL,
  `libSituation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `situation`
--

INSERT INTO `situation` (`refSituation`, `libSituation`) VALUES
('ABLO', 'Ascenseur bloqué'),
('ACVP', 'Accident voie publique'),
('ANIC', 'Capture d\'animaux'),
('ANIS', 'Sauvetage d\'animaux'),
('BACT', 'Bâchage de toit'),
('FAPP', 'Feu dans un appartement'),
('FBRO', 'Feu de broussailles'),
('FLOC', 'Feu dans un local d\'entreprise'),
('FVEH', 'Feu dans un véhicule'),
('GRIM', 'Groupe d\'intervention en milieu périlleux'),
('INON', 'Inondation'),
('POLE', 'Pollution eau'),
('RCB', 'Risque chimique et biologique'),
('RR', 'Risque radiologique'),
('SDE', 'Sauvetage déblaiement évacuation'),
('SPUR', 'Secours urgence à la personne'),
('SS', 'Secours subaquatique'),
('SVE', 'Secours victimes de l\'eau'),
('TROC', 'Tronçonnage');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `taux_reussite_habilitation`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `taux_reussite_habilitation` (
`codeFonction` varchar(50)
,`nombre_habilites` bigint(21)
,`taux_reussite` decimal(24,4)
);

-- --------------------------------------------------------

--
-- Structure de la table `typeengin`
--

CREATE TABLE `typeengin` (
  `codeTypeEngin` varchar(50) NOT NULL,
  `libTypeEngin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typeengin`
--

INSERT INTO `typeengin` (`codeTypeEngin`, `libTypeEngin`) VALUES
('CCF', 'Le camion-citerne feux de forêts'),
('EPA', 'Échelle pivotante automatique'),
('FPT', 'Fourgon Pompe-Tonne'),
('VSAV', 'Véhicule de Secours aux Victimes'),
('VSR', 'Véhicule secours routier');

-- --------------------------------------------------------

--
-- Structure de la table `volontaire`
--

CREATE TABLE `volontaire` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaissance` date NOT NULL,
  `employeur` varchar(50) DEFAULT NULL,
  `rue` varchar(50) DEFAULT NULL,
  `cp` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `mail` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `volontaire`
--

INSERT INTO `volontaire` (`matricule`, `nom`, `prenom`, `dateNaissance`, `employeur`, `rue`, `cp`, `ville`, `tel`, `mail`) VALUES
('123460', 'Rivet', 'Olivier', '1989-09-02', 'Poujoulat', 'CS 50016', '79279', 'St Symphorien', '0549044040', 'accueil@poujoulat.fr'),
('432567', 'Bastin', 'Thomas', '1999-09-30', 'SuperU', '2 route de montalembert', '79190', 'Sauzé Vaussais', '0549887734', 'accueil@superu.fr'),
('455678', 'Laurent', 'Arnaud', '2001-03-12', 'Pierre Guérin', '6 rue Denis Papin', '79000', 'Niort', '0549047800', 'accueil@pierre guérin.fr'),
('456000', 'Veillon', 'Lucas', '2005-06-24', 'Centre_social_culturel_du_mellois', '8 place René Groussard', '79500', 'Melle', '0549290405', 'accueil@centre_social_culturel_du_mellois.fr'),
('456001', 'Alliot', 'David', '2000-12-07', 'CD 79', 'Maison du département', '79000', 'Niort', '0549067979', 'accueil@cd 79.fr'),
('456004', 'Chauveau', 'Kévin', '1996-04-16', 'MAAF', '42 Avenue de Paris', '79000', 'Niort', '0969392939', 'accueil@maaf.fr'),
('456020', 'Bourdeau', 'Barbara', '2004-12-25', 'Petits_amoureux', '15 champ de Lameraux', '79160', 'Ardin', '0549043718', 'accueil@petits_amoureux.fr'),
('456090', 'Savarit', 'Yohan', '2006-01-23', 'Leclerc', '13 Rue des Joncs', '79300', 'Bressuire', '0549045679', 'accueil@leclerc.fr'),
('456111', 'Arias', 'Samuel', '1998-12-20', 'MAIF', '200 Avenue Salvador Allende', '79000', 'Niort', '0549737475', 'accueil@maif.fr'),
('456222', 'Normand', 'Sébastien', '1994-11-06', 'IMA', '118 Avenue de Paris', '79000', 'Niort', '0549790979', 'accueil@ima.fr'),
('456228', 'Petrault', 'David', '2005-12-31', 'MAIF', '200 Avenue Salvador Allende', '79000', 'Niort', '0549737475', 'accueil@maif.fr'),
('456234', 'Olivier', 'Romain', '2003-04-30', 'MACIF', '226 avenur de La Rochelle', '79000', 'Niort', '0969394949', 'accueil@macif.fr'),
('456333', 'Moreau', 'Camille', '2000-09-30', 'Leclerc', '13 Rue des Joncs', '79300', 'Bressuire', '0549045679', 'accueil@leclerc.fr'),
('456334', 'Belli', 'Elodie', '2001-12-21', 'Mairie', 'Quartier Mairie', '79500', 'Melle', '0549030203', 'accueil@mairie.fr'),
('456345', 'Desette', 'Kévin', '2002-11-11', 'Couver-Marit', '23 Avenue de la gare', '79600', 'Airvault', '059345677', 'accueil@couver-marit.fr'),
('456477', 'Trouchon', 'Aurélien', '2003-12-04', 'IMA', '118 Avenue de Paris', '79000', 'Niort', '0549790979', 'accueil@ima.fr'),
('456505', 'Bachelery', 'Pierre', '2005-12-01', 'Mairie', 'Rue de la mairie', '79300', 'Bressuire', '0549494849', 'accueil@mairie.fr'),
('456550', 'Bluteau', 'Sébastien', '1991-02-28', 'RenovAuto', 'Rue michonneau', '79220', 'Champdeniers', '0549872356', 'accueil@renovauto.fr'),
('456555', 'Bodet', 'Clément', '2001-09-24', 'IMA', '118 Avenue de Paris', '79000', 'Niort', '0549790979', 'accueil@ima.fr'),
('456600', 'Guillet', 'Xavier', '2005-09-24', 'Etudiant STAPS', 'Rue recteur Pineau', '86000', 'Poitiers', '0549872356', 'accueil@univ-poitiers.fr'),
('456666', 'Couturier', 'Cédric', '1998-02-23', 'MAIF', '200 Avenue Salvador Allende', '79000', 'Niort', '0549737475', 'accueil@maif.fr'),
('456707', 'Chapas', 'Jérémy', '1999-01-13', 'Thouars_Foot_79', 'Rue du stade', '79100', 'Thouars', '0549030678', 'accueil@thouars_foot_79.fr'),
('456760', 'Gouget', 'Dimitri', '1996-05-09', 'Mairie', 'Rue de la mairie', '79330', 'St Varent', '0549484748', 'accueil@mairie.fr'),
('456770', 'Deurre', 'Céline', '2002-03-26', 'Tatimicro', 'Avenue de Paris', '79000', 'Niort', '0549782934', 'accueil@tatimicro.fr'),
('456773', 'Vaie', 'Fabien', '2003-12-27', 'Intermarché', 'Rue de l\'abbé Pierre', '79370', 'Celles sur belle', '0549876754', 'accueil@intermarché.fr'),
('567654', 'Charron', 'Jean-Michel', '1956-09-23', 'MAAF', '42 Avenue de Paris', '79000', 'Niort', '0969392939', 'accueil@maaf.fr'),
('986996', 'Garnier', 'François', '1988-12-13', 'IMA', '118 Avenue de Paris', '79000', 'Niort', '0549790979', 'accueil@ima.fr'),
('AB1996', 'Araides', 'Bota', '1996-06-09', 'SDIS', '5 Rue Paris', '33000', 'Bordeaux', '0658953545', 'Toto.kouraides@gmail.com'),
('BB1966', 'Araide', 'Kylie', '1996-06-09', 'SDIS', '5 Rue Paris', '33000', 'Bordeaux', '0658953545', 'Toto.kouraides@gmail.com'),
('MB1979', 'Mernad', 'Bernard', '1979-06-15', 'Centre de secours de Niort', '16 Rue Jean Jaures', '79000', 'Niort', '0645389533', 'louise.brenard@gmail.com'),
('MB1999', 'Mernard', 'Bouise', '1999-06-15', 'Centre de secours de Niort', '16 Rue Jean Jaures', '79000', 'Niort', '0645369533', 'louise.brenard@gmail.com'),
('MM1988', 'Pompieer', 'Moki', '1988-05-16', 'Entrprises locales', '12 Rue de la Liberté', '75000', 'Paris', '0123459789', 'soukaina.nancy@gmail.com'),
('MM1995', 'Mancy', 'Mouka', '1995-05-16', 'Entrprises locales', '12 Rue de la Liberté', '75000', 'Paris', '0123456789', 'soukaina.nancy@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la vue `pompiers_par_grade`
--
DROP TABLE IF EXISTS `pompiers_par_grade`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pompiers_par_grade`  AS  select `pompier`.`codeGrade` AS `codeGrade`,count(0) AS `nombre_pompiers` from `pompier` group by `pompier`.`codeGrade` ;

-- --------------------------------------------------------

--
-- Structure de la vue `taux_reussite_habilitation`
--
DROP TABLE IF EXISTS `taux_reussite_habilitation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `taux_reussite_habilitation`  AS  select `h`.`codeFonction` AS `codeFonction`,count(0) AS `nombre_habilites`,(count(0) / (select count(0) from `pompier`)) AS `taux_reussite` from `habilitation1` `h` group by `h`.`codeFonction` ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`matricule`,`codeCaserne`,`dateaffectation`),
  ADD KEY `codeCaserne` (`codeCaserne`),
  ADD KEY `dateaffectation` (`dateaffectation`);

--
-- Index pour la table `affectation1`
--
ALTER TABLE `affectation1`
  ADD PRIMARY KEY (`codeCaserne`,`matricule`,`dateaffectation1`),
  ADD KEY `matricule` (`matricule`),
  ADD KEY `dateaffectation1` (`dateaffectation1`);

--
-- Index pour la table `caserne`
--
ALTER TABLE `caserne`
  ADD PRIMARY KEY (`codeCaserne`);

--
-- Index pour la table `dateobtention`
--
ALTER TABLE `dateobtention`
  ADD PRIMARY KEY (`dateaffectation`);

--
-- Index pour la table `dateobtention1`
--
ALTER TABLE `dateobtention1`
  ADD PRIMARY KEY (`dateaffectation1`);

--
-- Index pour la table `engin`
--
ALTER TABLE `engin`
  ADD PRIMARY KEY (`codeTypeEngin`,`numOrdre`),
  ADD KEY `codeCaserne` (`codeCaserne`);

--
-- Index pour la table `engin1`
--
ALTER TABLE `engin1`
  ADD PRIMARY KEY (`refSituation`,`codeTypeEngin`),
  ADD KEY `codeTypeEngin` (`codeTypeEngin`);

--
-- Index pour la table `fonction`
--
ALTER TABLE `fonction`
  ADD PRIMARY KEY (`codeFonction`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`codeGrade`);

--
-- Index pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD PRIMARY KEY (`codeFonction`,`matricule`),
  ADD KEY `matricule` (`matricule`);

--
-- Index pour la table `habilitation1`
--
ALTER TABLE `habilitation1`
  ADD PRIMARY KEY (`matricule`,`codeFonction`),
  ADD KEY `codeFonction` (`codeFonction`);

--
-- Index pour la table `mobiliser_moyens_humains`
--
ALTER TABLE `mobiliser_moyens_humains`
  ADD PRIMARY KEY (`codeTypeEngin`,`numOrdre`,`codeTypeEngin_1`),
  ADD KEY `codeTypeEngin_1` (`codeTypeEngin_1`);

--
-- Index pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD PRIMARY KEY (`matricule`),
  ADD KEY `codeGrade` (`codeGrade`);

--
-- Index pour la table `situation`
--
ALTER TABLE `situation`
  ADD PRIMARY KEY (`refSituation`);

--
-- Index pour la table `typeengin`
--
ALTER TABLE `typeengin`
  ADD PRIMARY KEY (`codeTypeEngin`);

--
-- Index pour la table `volontaire`
--
ALTER TABLE `volontaire`
  ADD PRIMARY KEY (`matricule`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `pompier` (`matricule`),
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`codeCaserne`) REFERENCES `caserne` (`codeCaserne`),
  ADD CONSTRAINT `affectation_ibfk_3` FOREIGN KEY (`dateaffectation`) REFERENCES `dateobtention` (`dateaffectation`);

--
-- Contraintes pour la table `affectation1`
--
ALTER TABLE `affectation1`
  ADD CONSTRAINT `affectation1_ibfk_1` FOREIGN KEY (`codeCaserne`) REFERENCES `caserne` (`codeCaserne`),
  ADD CONSTRAINT `affectation1_ibfk_2` FOREIGN KEY (`matricule`) REFERENCES `volontaire` (`matricule`),
  ADD CONSTRAINT `affectation1_ibfk_3` FOREIGN KEY (`dateaffectation1`) REFERENCES `dateobtention1` (`dateaffectation1`);

--
-- Contraintes pour la table `engin`
--
ALTER TABLE `engin`
  ADD CONSTRAINT `engin_ibfk_1` FOREIGN KEY (`codeTypeEngin`) REFERENCES `typeengin` (`codeTypeEngin`),
  ADD CONSTRAINT `engin_ibfk_2` FOREIGN KEY (`codeCaserne`) REFERENCES `caserne` (`codeCaserne`);

--
-- Contraintes pour la table `engin1`
--
ALTER TABLE `engin1`
  ADD CONSTRAINT `engin1_ibfk_1` FOREIGN KEY (`refSituation`) REFERENCES `situation` (`refSituation`),
  ADD CONSTRAINT `engin1_ibfk_2` FOREIGN KEY (`codeTypeEngin`) REFERENCES `typeengin` (`codeTypeEngin`);

--
-- Contraintes pour la table `habilitation`
--
ALTER TABLE `habilitation`
  ADD CONSTRAINT `habilitation_ibfk_1` FOREIGN KEY (`codeFonction`) REFERENCES `fonction` (`codeFonction`),
  ADD CONSTRAINT `habilitation_ibfk_2` FOREIGN KEY (`matricule`) REFERENCES `volontaire` (`matricule`);

--
-- Contraintes pour la table `habilitation1`
--
ALTER TABLE `habilitation1`
  ADD CONSTRAINT `habilitation1_ibfk_1` FOREIGN KEY (`matricule`) REFERENCES `pompier` (`matricule`),
  ADD CONSTRAINT `habilitation1_ibfk_2` FOREIGN KEY (`codeFonction`) REFERENCES `fonction` (`codeFonction`);

--
-- Contraintes pour la table `mobiliser_moyens_humains`
--
ALTER TABLE `mobiliser_moyens_humains`
  ADD CONSTRAINT `mobiliser_moyens_humains_ibfk_1` FOREIGN KEY (`codeTypeEngin`,`numOrdre`) REFERENCES `engin` (`codeTypeEngin`, `numOrdre`),
  ADD CONSTRAINT `mobiliser_moyens_humains_ibfk_2` FOREIGN KEY (`codeTypeEngin_1`) REFERENCES `typeengin` (`codeTypeEngin`);

--
-- Contraintes pour la table `pompier`
--
ALTER TABLE `pompier`
  ADD CONSTRAINT `pompier_ibfk_1` FOREIGN KEY (`codeGrade`) REFERENCES `grade` (`codeGrade`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
