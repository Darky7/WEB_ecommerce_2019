-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Ven 20 Mars 2020 à 21:43
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.2.28-3+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `prix` float NOT NULL,
  `created_at` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `product`
--

INSERT INTO `product` (`id`, `nom`, `model`, `prix`, `created_at`, `description`) VALUES
(1, 'Peugeot 508', 'Peugeot 508 GT-WEBASTO-8tr', 28000, '2020-03-13', 'Peugeot 508 GT-WEBASTO-8tr 360 caméra- / 13 000 km, 177CV, 2019, Diesel, Automatique Garantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMÉTRAGE , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VÉHICULE FRANÇAIS.'),
(2, 'Bmw serie 1', 'BMW Série 1 116d aut M-Sport', 13000, '2020-03-13', 'BMW Série 1 116d aut M-Sport, Caméra arrière, Led, / 56 408 km, 116CV, 2016, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMÉTRAGE , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(3, 'Audi A5', 'Audi A5 Coupé Sport 2.0 TFSI Quattro 2xS-LINE', 37000, '2020-03-19', 'Audi A5 Coupé Sport 2.0 TFSI Quattro 2xS-LINE / QUATTRO / B&O / 27 250 km, 252CV, 2017, Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(4, 'Mercedes-Benz Classe A', 'Mercedes-Benz Classe A220 4MATIC aut AMG', 32000, '2020-03-19', 'Mercedes-Benz Classe A220 4MATIC aut AMG / Forfait nuit / Forfait Premium plus / 7 530 km, 190CV, 2019, Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(5, 'Volkswagen T-Roc', 'Volkswagen T-Roc 2.0 TDI Sport 4Motion DSG', 20000, '2020-03-19', 'Volkswagen T-Roc 2.0 TDI Sport 4Motion DSG H.feste, Webasto, / 9 900 km, 150CV, 2019, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(6, 'Volkswagen Touareg', 'Volkswagen Touareg 3.0 V6 TDI', 50000, '2020-03-20', 'Volkswagen Touareg 3.0 V6 TDI, Beaucoup d\'équipement / 20 158 km, 286CV, 2018, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(7, 'Mercedes-Benz Classe C', 'Mercedes-Benz Classe C300 4-MATIC EQ AMG', 38000, '2020-03-19', 'Mercedes-Benz Classe C300 4-MATIC EQ AMG BIEN ÉQUIPÉ / 60 km, 380CV, 2020, Électrique + Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(8, 'BMW Série 8', 'BMW Série 8 840d xDrive Coupe I M-Sport I', 75000, '2020-03-19', 'BMW Série 8 840d xDrive Coupe I M-Sport I / 3 900 km, 320CV, 2019, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(9, 'BMW X6', 'BMW X6 40d M-Sport Webasto', 40000, '2020-03-19', 'BMW X6 40d M-Sport Webasto / 79 452 km, 313CV, 2017, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(10, 'Audi A4', 'Audi A4 3,0TDI ', 13000, '2020-03-19', 'Audi A4 3,0TDI / Quattro / Toit ouvrant / Partie cuir / Xenon / Crochet / Cruice + / 57 000 km, 239CV, 2009, Diesel, Manuel\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(11, 'Audi A3', 'Audi A3 Sportback 1,4 TFSI Panorama', 15000, '2020-03-19', 'Audi A3 Sportback 1,4 TFSI Panorama / 41 284 km, 204CV, 2017, Électrique + essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(12, 'Audi SQ5', 'Audi SQ5 3.0 TFSI quattro Matrix', 60000, '2020-03-19', ' Audi SQ5\r\nAudi SQ5 3.0 TFSI quattro Matrix, B&O, Webasto, Pano / 46 650 km, 354CV, 2018, Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(13, 'Mercedes-Benz GLK', 'Mercedes-Benz GLK 220CDI', 20000, '2020-03-19', 'Mercedes-Benz GLK 220CDI / 4Matic / AMG / Pano / cuir / Navi / xenon / 111 000 km, 170CV, 2013, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(14, ' Mercedes-Benz GLA', 'Mercedes-Benz GLA 2.0 220 4MATIC AMG Sport Package', 30000, '2020-03-19', 'Mercedes-Benz GLA 2.0 220 4MATIC AMG Sport Package / 58 000 km, 184CV, 2018, Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(15, 'Land Rover Range Rover Evoque', 'Range Rover Evoque TD4', 25000, '2020-03-19', 'Range Rover Evoque TD4 / DYNAMIC / WEBASTO / CAMERA / PANORAMA / DAB + / CUIR / 83 250 km, 150CV, 2014, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(16, 'Nissan Navara', 'Nissan Navara Double Cab 2.3 dCi', 22000, '2020-03-19', 'Nissan Navara Double Cab 2.3 dCi / 11 000 km, 190CV, 2018, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(17, 'BMW Série 6', 'BMW Série 6 640i', 30000, '2020-03-19', 'BMW Série 6 640i / 59 000 km, 320CV, 2012, Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(18, 'Mercedes-Benz CLS', 'Mercedes-Benz CLS 450 4MATIC Edition 1', 70000, '2020-03-19', 'Mercedes-Benz CLS 450 4MATIC Edition 1, Appareil photo, LED, Airmatic, Toit ouvrant / 19 813 km, 367CV, 2019, Électrique + Essence, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(19, 'Mercedes-Benz GLE', 'Mercedes-Benz GLE 350d 4MATIC AMG ', 50000, '2020-03-19', 'Mercedes-Benz GLE 350d 4MATIC AMG / Forfait nuit / Air / 21 \"/ Panorama / HF / Webasto/ 47 145 km, 258CV, 2016, Diesel, Automatique\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.'),
(20, 'Ford Focus', 'Ford Focus RS ', 20000, '2020-03-19', 'Ford Focus RS / 112 000 km, 305CV, 2010, Essence, Manuel\r\n\r\nGarantie 36 mois\r\n\r\nPAYABLE COMPTANT D’UN COUP\r\n#OU EN FACILITÉ\r\nPOUR LA FACILITÉ DE PAIEMENT ==> APPORT 10% , 90% sur une durée allant de 6 à 84 mois . PAS BESOIN D’UNE BANQUE OU ORGANISME ON S’EN OCCUPE ,\r\n\r\nTOUS LES PAPIERS EN RÈGLES > CARTE GRISE , NON GAGE ,, CERTIFICAT DE KILOMETRAGES , CERTIFICAT D’IMMATRICULATION FRANÇAIS , AUCUN FRAIS À PRÉVOIR , Pour commander il faut écrire en messagerie privée et non commentaire ,\r\nLivraison sur toute la FRANCE véhicule disponible en France\r\nLivraison DOM TOM, NOUVELLE CALÉDONIE , POLYNÉSIE FRANÇAISE\r\nSOUS GARANTIE , VEHICULE FRANÇAIS.');

-- --------------------------------------------------------

--
-- Structure de la table `rememberme_token`
--

CREATE TABLE `rememberme_token` (
  `series` char(88) NOT NULL,
  `value` char(88) NOT NULL,
  `lastUsed` datetime NOT NULL,
  `class` varchar(100) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `apitoken` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`, `apitoken`) VALUES
(1, 'admin@mail.com', '[]', 'azerty123', 'admin', 'ecommerce', ''),
(2, 'vandoe@mail.com', '[]', 'azerty123', 'Dario', 'Dario', ''),
(3, 'johndoe@mail.com', '[]', 'azerty123', 'hedhie', 'krouk', ''),
(4, 'jeandoe@mail.com', '[]', 'azerty123', 'Dario', 'Dario', NULL),
(5, 'humdoe@mail.com', '[]', 'azerty123', 'Doe', 'Hum', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rememberme_token`
--
ALTER TABLE `rememberme_token`
  ADD PRIMARY KEY (`series`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
