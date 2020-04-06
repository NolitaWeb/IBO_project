-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Apr 01, 2020 alle 17:10
-- Versione del server: 5.7.29-cll-lve
-- Versione PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `d15xxq6h_iboproject`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `association`
--

CREATE TABLE `association` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipality` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_users` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` int(11) NOT NULL,
  `other_service` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `association`
--

INSERT INTO `association` (`id`, `country_id`, `name`, `address`, `municipality`, `phone`, `contact_notes`, `website`, `email`, `service_users`, `service`, `other_service`) VALUES
(2, 4, 'Caritas Diocesana Modenese', 'Via dei Servi 13', 'Modena', '059 212202', '3208155000 (Claudia Capitani) e al 328 4589661 (Serena Muracchini)', 'www.caritas.mo.it', 'caritas@modena.chiesacattolica.it', 'Persone Fragile Sole Famiglie con fragilità, relazionali ed economiche', 1, 'generi alimentari o di prima necessità');

-- --------------------------------------------------------

--
-- Struttura della tabella `association_type`
--

CREATE TABLE `association_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `availability`
--

CREATE TABLE `availability` (
  `id` int(11) NOT NULL,
  `monday` tinyint(1) DEFAULT NULL,
  `mondaystart` int(11) DEFAULT NULL,
  `thuesday` tinyint(1) DEFAULT NULL,
  `thuesdaystart` int(11) DEFAULT NULL,
  `wednesday` tinyint(1) DEFAULT NULL,
  `wednesdaystart` int(11) DEFAULT NULL,
  `thursday` tinyint(1) DEFAULT NULL,
  `thursdaystart` int(11) DEFAULT NULL,
  `friday` tinyint(1) DEFAULT NULL,
  `fridaystart` int(11) DEFAULT NULL,
  `saturday` tinyint(1) DEFAULT NULL,
  `saturdaystart` int(11) DEFAULT NULL,
  `sunday` tinyint(1) DEFAULT NULL,
  `sundaystart` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `availability`
--

INSERT INTO `availability` (`id`, `monday`, `mondaystart`, `thuesday`, `thuesdaystart`, `wednesday`, `wednesdaystart`, `thursday`, `thursdaystart`, `friday`, `fridaystart`, `saturday`, `saturdaystart`, `sunday`, `sundaystart`) VALUES
(2, 1, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL),
(5, 1, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL),
(6, 0, NULL, 0, NULL, 1, 1, 0, NULL, 0, NULL, 1, 1, 0, NULL),
(7, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL),
(8, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, NULL),
(9, 0, 3, 1, 3, 1, 3, 1, 3, 1, 3, 0, NULL, 0, NULL),
(10, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(11, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(12, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(13, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, NULL),
(14, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(15, 0, NULL, 0, NULL, 1, 1, 0, NULL, 0, NULL, 0, NULL, 0, NULL),
(16, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2),
(17, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2),
(18, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2),
(19, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2),
(20, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(21, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(22, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(23, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL, 1, NULL),
(24, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 2, 0, NULL),
(25, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 2, 0, NULL),
(26, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 2, 0, NULL),
(27, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 1, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Parma'),
(2, 'Reggio Emilia'),
(3, 'Piacenza'),
(4, 'Modena'),
(5, 'Bologna'),
(6, 'Rimini'),
(7, 'Forlì Cesena'),
(8, 'Ravenna'),
(9, 'Ferrara');

-- --------------------------------------------------------

--
-- Struttura della tabella `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200319172352', '2020-03-19 17:24:00'),
('20200319193824', '2020-03-19 19:38:34'),
('20200320163351', '2020-03-20 16:34:00'),
('20200320211546', '2020-03-20 21:15:52'),
('20200321163534', '2020-03-21 16:35:40'),
('20200321224729', '2020-03-21 22:47:34'),
('20200323124359', '2020-03-23 12:44:05'),
('20200323153132', '2020-03-23 15:31:36'),
('20200324113036', '2020-03-24 11:30:40'),
('20200331125827', '2020-03-31 12:58:44'),
('20200331131211', '2020-03-31 13:12:17'),
('20200331134621', '2020-03-31 13:46:26');

-- --------------------------------------------------------

--
-- Struttura della tabella `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shop_type_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipality` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `shop`
--

INSERT INTO `shop` (`id`, `shop_type_id`, `country_id`, `address`, `municipality`, `phone`, `note`, `name`) VALUES
(1, 1, 1, ' ', 'Palanzano', '3495420096', NULL, 'Naturalmente di Montali Luisella'),
(264, 1, 1, 'VIA MONTE FAGGETO 14', 'Palanzano', '3495420096', '', 'Naturalmente di Montali Luisella'),
(265, 1, 1, 'Piazza Cardinal Ferrari 6', 'Palanzano', '0521891104', '', 'Alimentari Begani Carla'),
(266, 1, 1, 'STRADA CARBOGNA 28', 'Palanzano', '3409599371', '', 'Il Quadrifoglio di Michela Bertoletti'),
(267, 1, 1, '', 'Palanzano', '3493762946', '', 'Mini Market Macelleria Cadosssi Benedetta'),
(268, 1, 1, 'Rivalta', 'Lesignano de\' Bagni', '0521836353', 'info@agricolairis.it', 'Agricola Iris'),
(269, 1, 1, 'Staridano', 'Lesignano de\' Bagni', '339 4125494', '', 'Az. AGricola Tenuta I Musi Lunghi (Consegna Uova)'),
(270, 1, 1, 'Via Torchio 3', 'Lesignano de\' Bagni', '0521842624', 'info@baschierirenato', 'Ditta Baschieri Renato (Consegna Bevande)'),
(271, 1, 1, 'Piazza Guglielmo Marconi 4,', 'Lesignano de\' Bagni', '0521350420', '', 'Generi Alimentari \"da Enzo\"'),
(272, 1, 1, 'Via Mon. Pietro Triani 5', 'Lesignano de\' Bagni', '0521350120 ', '0521850517', 'Generi Alimentari \"Donatella\"'),
(273, 1, 1, 'Via Argini 74 Fr. Mamiano', 'Lesignano de\' Bagni', '0521848125', '', 'Alimentari Mori Ugo'),
(274, 1, 1, 'Localit', 'Busseto', '052492752', '', 'Alimentari Santi'),
(275, 1, 1, 'Via Partigiani d\'Italia 1', 'Busseto', '052491899', '', 'Conad'),
(276, 1, 1, 'Via Vivaldi 6', 'Busseto', '0524071026', '', 'Ecu'),
(277, 1, 1, 'Via Roma 64', 'Busseto', '3490676974', '', 'Enoteca \"Via Roma\"'),
(278, 1, 1, 'Via Roma 39', 'Busseto', '0524204291', '', 'Frutta e Verdura Barbieri Stefania'),
(279, 1, 1, 'Frazione Roncole Verdi 65', 'Busseto', '052497804', '', 'Il Bottegaio di Roncole'),
(280, 1, 1, 'Via Roma 49', 'Busseto', '052491980', '', 'Il Frutteto'),
(281, 1, 1, 'Via Roma 104', 'Busseto', '052491274', '', 'Latteria \"Via Roma\"'),
(282, 1, 1, 'Largo Affo\' 6', 'Busseto', '0524070410', '', 'Sigma'),
(283, 1, 1, 'Piazza Pincolini ', 'Fontanellato ', '0521975429', '', 'Frutta Piu\''),
(284, 1, 1, 'Via Azzali 15', 'Fontanellato ', '05211402459 ', '329258934', 'Frutta e Verdura  '),
(285, 1, 1, 'Via Vaccari 9', 'Fontanellato ', '0521821628 ', '3357703477', 'Supermercato CRAI'),
(286, 1, 1, 'Strada Provinciale 145', 'Roccabianca', '0521876446 ', '3926487996', 'Sabrina Bossoni Alimentari '),
(287, 1, 1, 'VIA MAZZINI 6', 'Roccabianca', '0521374009 ', '3311118259', 'CRAI Roccalimentari'),
(288, 1, 1, 'Strada Stagno 2', 'Roccabianca', '0521876161', '', 'Cattani Giuliana'),
(289, 1, 1, 'Piazza Minozzi 2', 'Roccabianca', '0521876215', '', 'Ortofrutta Ruggeri Aldo'),
(290, 1, 1, 'Strada Villa 79 Fr. Fontanelle', 'Roccabianca', '0521870231', '', 'Alimentari Poli Mirella '),
(291, 1, 1, '', 'Roccabianca', '0521870110', '', 'La Vecchia Pesa'),
(292, 1, 1, 'Piazza Monumento 7', 'Varsi', '3668939212 ', '3333034821', 'Alimentari Nati Alimentari e Macelleria '),
(293, 1, 1, 'Corso Europa 1', 'Pellegrino Parmense ', '052464110', '', 'Migross'),
(294, 1, 1, 'Piazza Bruno Ferrari 3', 'Montechiarugolo', '0521 681551', '', 'Coop Consumo di BASILICANOVA'),
(295, 1, 1, 'Via Montepelato Sud 8', 'Montechiarugolo ', '0521659117 ', '3381763242', 'L\'angolo dei Sapori '),
(296, 1, 1, 'via Resga 8', 'Montechiarugolo ', '0521 686653 ', '', 'Pelizzi Faro'),
(297, 1, 1, '', 'Fidenza', '0524525653', '', 'FRUTTA E VERDURA ORTOFRUTTA FIDENZA '),
(298, 1, 1, 'Via XXIV maggio n.24/A', 'Fidenza', ' 0524528004 ', '3395463864', 'LA FRUTTA DEL BORGO '),
(299, 1, 1, 'Via Cavour, 16', 'Fidenza', '0524.534513', '', 'LATTERIA 55 '),
(300, 1, 1, 'via Romagnosi', 'Fidenza', '329 6375750', '', 'ALIMENTARI MORI GIORDANO'),
(301, 1, 1, 'fraz. Castione Marchesi, 85', 'Fidenza', '3487601754', '', 'LA BOTTEGA  '),
(302, 1, 1, 'Via Cavour , 87/a ', 'Fidenza', '0524 501295', '', 'ACQUE E BEVANDE CAFFITALY SHOP DI FIDENZA '),
(303, 1, 1, 'via Parma, 49 ', 'Fidenza', '0524578237  ', '393 9664523', 'IDROS SALSESE '),
(304, 1, 1, 'Via Muccioli 25,', 'Soragna', '366 6561950', '', 'ECCELLENZE DI CANTINA'),
(305, 1, 1, 'Via Cheve\'', 'Colorno', '0521814405', '', 'A&O Supermercato'),
(306, 1, 1, 'Largo Aviatori d\'Italia', 'Soragna ', '0524597130', '', 'Conad Soragna'),
(307, 1, 1, 'Via Saragat', 'Soragna ', '0524596344', '', 'Di Piu\'Discout'),
(308, 1, 1, 'Via Cavour 13', 'Soragna', '0524597055', '', 'Macchiavelli Barbara Ortofrutta'),
(309, 1, 1, 'Via Repubblica 3', 'Medesano', '0525430142', '', 'Minimarket Davoli Zelinda'),
(310, 1, 1, 'Fr.Varano Marchesi', 'Medesano', '3661892908', '', 'Alimentari da Michy'),
(311, 1, 1, 'Fr. Felegara', 'Medesano', '0525430723', '', 'Emporio Corradi di Confroti Alberto'),
(312, 1, 1, 'Loc. Carnevala', 'Medesano', '0525420004', '', 'Sigma Medesano'),
(313, 1, 1, 'Fr. Felegara', 'Medesano', '3279446680', '', 'Varoli Massimo Ortofrutta'),
(314, 1, 1, 'Fr. Felegara', 'Medesano', '3396515522', '', 'Aldoviti di Dallaromanina Ortofrutta'),
(315, 1, 1, 'Fr. Felegara', 'Medesano', '3883433512', '', 'Zouheir Ameur Ortofrutta'),
(316, 1, 1, 'Santa Lucia', 'Medesano', '052559150', '', 'Soc. Agricola San Paolo'),
(317, 1, 1, '', 'Medesano', '0525420608', '', 'La Fonte di Pedretti e Folchini'),
(318, 1, 1, 'Via Solferino 91', 'Medesano', '3334526479', '', 'La Cantina di Bacco'),
(319, 1, 1, 'Piazza Roma 17', 'Sissa Trecasali', '0521879995', '', 'Barbieri Maurizio Alimentari'),
(320, 1, 1, 'Via G. Verdi 3/BIS', 'Sissa Trecasali', '3898850176', '', 'Merlini Anna Alimentari '),
(321, 1, 1, 'Piazza Fontana 11', 'Sissa Trecasali', '0521878207', '', 'Mutti Mariella Alimentari '),
(322, 1, 1, 'Via Co\' Di Sotto 3', 'Sissa Trecasali', '3384975421', '', 'Piazza Emma Alimentari'),
(323, 1, 1, 'Via Picelli 8', 'Sissa Trecasali', '0521879278', '', 'Bolsi Giuliano Frutta e Verdura '),
(324, 1, 1, 'Via Enrico Berlinguer 6', 'Sissa Trecasali', '3401249146', '', 'Cesari Fulvio'),
(325, 1, 1, 'Piazza Juan Gastone Von Berger 22', 'Sissa Trecasali', '3494618324', '', 'Terzi Debora '),
(326, 1, 1, 'Viale Giuseppe Verdi 2', 'Sissa trecasali', ' 0521879128', '3473203151', 'Migross'),
(327, 1, 1, 'Via Roma 159', 'Sissa Trecasali ', '0521875317 ', '3394320610', 'La Bottega di Coltaro'),
(328, 1, 1, 'via Abbeveratoia 15a', 'Parma ', ' 0521 714236 ', '349 8016405', 'Bottega e Cucina - Gastronomia Parmigiana '),
(329, 1, 1, '', 'Parma ', '0521 483030', '', 'Da Giovanni  '),
(330, 1, 1, 'Strada Luigi Carlo Farini 49c', 'Parma ', '0521 1402018 ', '', 'Festa di rapa - gastronomia vegetariana e vegana '),
(331, 1, 1, 'Via S. Leonardo 145b', 'Parma ', '349 2416548', '', 'Gastro bar Sapori di Casa  '),
(332, 1, 1, 'Via S. Leonardo 145b', 'Parma ', '349 2416548  ', '347 9928556', 'Bistrstro Bar sapori di casa gastronomia '),
(333, 1, 1, 'Via Robert Koch 4/a', 'Parma ', '0521 1759510', '', 'Gastronomia Orlandini '),
(334, 1, 1, 'Via Rolando dei Capelluti 6', 'Parma ', '0521 992303', '', 'Humus Bio Bakery Bistrot '),
(335, 1, 1, 'Str. Luigi Carlo Farini 9', 'Parma ', '0521 234188', '', 'La Prosciutteria '),
(336, 1, 1, 'Via Marco Emilio Lepido 1c', 'Parma ', '0521 244381', '', 'La Rocca di Romani  '),
(337, 1, 1, '', 'Parma ', '0521 208100', '', 'La Salumeria Verdi  '),
(338, 1, 1, 'Via San Leonardo 24/B ', 'Parma ', '0521 1551753', '', 'La San Leo srl - gastronomia, salumi e pasta fresc'),
(339, 1, 1, 'Viale Piacenza 2', 'Parma ', '0521 967327', '', 'Officina Gastronomica '),
(340, 1, 1, 'Str. G. Garibaldi 42', 'Parma ', '0521 235606', '', 'Salumeria garibaldi - gastronomia parmigiana  '),
(341, 1, 1, 'Via Toscana 37', 'Parma ', '0521 487746', '', 'Salumeria Gastronomia Poletti  '),
(342, 1, 1, 'Via Montanara 17/b', 'Parma ', '0521 966093 ', '', 'Tuttisapori di Parma - Gastronomia '),
(343, 1, 1, 'Strada Madonna dell\'Aiuto 7/a', 'Parma ', '348 9336391', '', 'Azienda Agraria Sperimentale Stuard'),
(344, 1, 1, 'VIA LA SPEZIA 27/B', 'Parma ', '342 8005394', '', 'Pastificio Michele '),
(345, 1, 1, 'Viale Antonio Gramsci 3/a', 'Parma ', '320 8118831 0521 165', '', 'Somyfruit '),
(346, 1, 1, 'Via Pompeo Sacco 20', '', '0521 963904', '', 'Alimentari Marchesi '),
(347, 1, 1, 'Via Gramsci 33', '', '0521 1651118', '', 'Bacovia Alimentari  '),
(348, 1, 1, 'Via Repubblica 95/B', '', '347 8948692', '', 'Drogheria di una volta '),
(349, 1, 1, 'P.za delle Terramare 7/A', 'Vicofertile', '338 3279770', '', 'La Bottega di Vicofertile - Minimarcket - salumeri'),
(350, 1, 1, 'Str. Nino Bixio 41', 'Parma ', ' 0521 289567', '', 'La Cantina della carne '),
(351, 1, 1, 'Via Stanislao Solari 30', 'Parma ', '3280541156 ', '', 'La Cantina di Fausto '),
(352, 1, 1, 'Str. Langhirano 2', 'Parma ', '0521246511 ', '', 'Nautilus Sea Food '),
(353, 1, 1, 'Via Calatafini 33c', 'Parma ', '0521 985213  ', '333 5394777', 'Ortofrutta Molinetto '),
(354, 1, 1, 'piazzale Lubiana 33/A', 'Parma ', ' 340 6851559 ', '', 'Verosapore - la bottega del contadino'),
(355, 2, 1, 'Via Solferino 185', 'Medesano', '3896063043', '', 'Patore\''),
(356, 2, 1, 'Via Toscanini 3 Mulazzano Ponte', 'Lesignano de\' Bagni', '0521857193', 'info@saliceto.com', 'Caseificio Saliceto '),
(357, 2, 1, 'Via Roma 14', 'Busseto', '0524070432', '', 'La Bottega della Carne'),
(358, 2, 1, 'Frazione Spigarolo 24', 'Busseto', '3343313979', '', 'Salumificio Dassena'),
(359, 2, 1, 'Via Roma 76', 'Busseto', '052491066', '', 'Salsamenteria Baratta'),
(360, 2, 1, 'Via Balestra 2', 'Busseto', '3470718010', '', 'Salumeria \"Sapori della Bassa\"'),
(361, 2, 1, 'Via Peracchi 18', 'Fontanellato ', ' 0521821220 ', '3391866697', 'Macelleria Berce\''),
(362, 2, 1, 'Via Sanvitale 42', 'Fontanellato ', '0521821675', '', 'Cibarium Salsamenteria'),
(363, 2, 1, 'Frazione Parola 58E', 'Fontanellato ', '0521827038', '', 'Burlenghi Salumi'),
(364, 2, 1, 'Via IV Novembre 5', 'Fontanellato ', '0521822417', '', 'Antica Salumeria '),
(365, 2, 1, 'Via Giacomo Matteotti 28', 'Monticelli Terme ', '0521658214 ', 'macelleriasicuri@gma', ''),
(366, 2, 1, 'VIA ARGINI NORd 5', 'MONTECHIARUGOLO', '0521681789', '', 'Spaccio carni'),
(367, 2, 1, 'Via Mamiano 18 ', 'Basilicanova', '0521681278', '', 'La polleria'),
(368, 2, 1, 'Via Antonio Gramsci 67A', 'Fidenza ', '3472606676  ', '', 'CARNI E MACELLERIE EQUINE LA BOTTEGA DEL CAVALLO '),
(369, 2, 1, 'VIA XX SETTEMBRE 40A', 'Fidenza ', '348 0430409', '', 'MACELLERIA EQUINA MAINI '),
(370, 2, 1, ' via Amendola 7', 'Fidenza ', '340 5672087', '', ' LATTE E FORMAGGI CABRIOLATTE E FORMAGGI '),
(371, 2, 1, 'Via Mazzini 26', '', '0521312447', '', 'Macelleria Roberta Silocchi'),
(372, 2, 1, 'VIA GARIBALDI 26', 'Soragna ', '3480824103', '', 'Azzali Fabio Carne Equina '),
(373, 2, 1, 'Via Caduti 18 Marzo 1945 26', 'Soragna ', '0524520415', '', 'Montana Gourmet'),
(374, 2, 1, 'Via Garibaldi 34', 'Soragna ', '0524598096', '', 'Menna Alessandro & C. SNC Macelleria'),
(375, 2, 1, 'Via Cisa 27', 'Medesano', '0525430698', '', 'Cisa Carni'),
(376, 2, 1, '', 'Medesano', '05252540', '', 'Le Rondini Macelleria'),
(377, 2, 1, 'Piazzale Lubiana 9a', 'Parma', '0521 243258 ', '', 'Salumeria macelleria Nadotti '),
(378, 2, 1, 'Via Marco Emilio Lepido 72', 'Parma', '0521 486769  ', '338 3947894', 'Caseificio Ugolotti '),
(379, 2, 1, 'VIA FARINI 35E', 'Parma', '0521 1627130', '', 'Macelleria Entrecote '),
(380, 3, 1, '', 'Viarolo ', '0521 6716631', '', 'Panificio Giacomazzi'),
(381, 3, 1, 'Piazza', 'SISSA Trecasali', '0521 872435', '', 'Forno Scaramuzza'),
(382, 3, 1, 'Via Provinciale', 'SISSA Trecasali', '0521 875317 ', '3394320610', 'Panetteria Caf'),
(383, 3, 1, 'Via G. Matteotti 7', 'SISSA Trecasali', '0521879757', '', 'Panificio Amadasi'),
(384, 3, 1, 'Piazzale Francesco Scaramuzza 1', 'Sissa Trecasali', '3381468696', '', 'La fonte del pane '),
(385, 3, 1, ' via XX settembre 15 ', 'Fidenza ', '3273338157 ', 'ingo@gelopasta.it', 'PANE, PASTA FRESCA E GASTRONOMIE SA.ME.'),
(386, 3, 1, 'Via S. Faustino 41', 'Fidenza ', '0524 525930', ' 340 5524369', 'IL FORNO DEL PINGUINO DI MOLINARI ALBERTO '),
(387, 3, 1, ' Via Bacchini 23', 'Fidenza ', '334 1300603', '', ' SANAFOLLIA'),
(388, 3, 1, 'Via Roma 55', 'Busseto', '052492071', '', 'Forno Ghezzi'),
(389, 3, 1, 'Via Roma 100', 'Busseto', '3927802742', '', 'Cuore di Pasta'),
(390, 3, 1, 'Via Donizetti 45', 'Busseto', '3272598556', '', 'Gastronomia \"Pepe Rosa\"'),
(391, 3, 1, 'Via Roma  105', 'Busseto', '052492267', '', 'Panetteria e Pasticceria Fantini'),
(392, 3, 1, 'Via Brambilla 8', 'Fontanellato ', '0521829071', '', 'Gastronomia A Tavola '),
(393, 3, 1, 'Via Vaccari  15', 'Fontanellato ', '0521822986', '', 'Panificio Giacomazzi'),
(394, 3, 1, 'Localit', 'Fontanellato ', '0521827084', '', 'Panificio Sauro'),
(395, 3, 1, 'Via IV Novembre 36', 'Fontanellato ', '3486817528', '', 'Forno Saiani'),
(396, 3, 1, 'Localita\'', 'Fontanellato ', '052483028', '', 'Forno Cinque'),
(397, 3, 1, 'Via Vittorio Veneto 10', 'Roccabianca ', '0521876873 ', '3487818387', 'Panificio Mariglioni'),
(398, 3, 1, '', 'Varsi', '3316309123', '', 'Il posto Giusto (panetteria, consegna pasti e pizz'),
(399, 3, 1, 'VIA SPADOLINI 14', 'Montechiarugolo ', '388 3440220', '', 'Forno Giuliana'),
(400, 3, 1, 'Via Ghiare 11 ', 'Basilicanova', '0521 681238', '', 'I portici di Basilicanova'),
(401, 3, 1, 'Via Mazzini G. 48', 'Colorno ', '0521815447', '', 'Borlengi Panificio '),
(402, 3, 1, 'Via Matteotti 28', 'Colorno ', '0521811031', '', 'La fonte del pane'),
(403, 3, 1, 'Via Don Minzoni 20', 'Soragna ', '3494784968', '', 'Forno Saiani '),
(404, 3, 1, 'Str. Castellina 42', 'Soragna ', '0524506056', '', 'La Rosa di Parma Gastronomia'),
(405, 3, 1, 'Piazza Garibaldi 15', 'Soragna ', '0521975044', '', 'Panetteria Saccani'),
(406, 3, 1, 'Via Risorgimento 1 Fr.Felegara', 'Medesano', '05255301', '3408282375', 'Pasticceria Manferdelli'),
(407, 3, 1, 'Strada Carnevala 27', 'Medesano', '3493944665', '', 'Pasticceria Maximilian'),
(408, 3, 1, 'Via Giuseppe di Vittorio 15', 'Fornovo Taro', '0525 430185', '', 'Panificio Bitti'),
(409, 3, 1, 'Via Cisa 9', 'Medesano', '0525430185', '', 'Panificio Quattrini e Piroli'),
(410, 3, 1, 'Via Roma 49', 'Medesano', '3777800775', '', 'Panificio Fani'),
(411, 3, 1, 'via g. rossa 10', 'Medesano', '0525431854', '', 'Panificio Ca\' Dal Forner'),
(412, 3, 1, 'Val Recchio Varano Marchesi', 'Medesano', '3476986252', '', 'Laboratorio Bottega Val Recchio'),
(413, 3, 1, 'Via Antonello da Messina 11', 'Parma ', '0521 258659', '', 'Pane & co '),
(414, 3, 1, 'Str. G. Garibaldi 19', 'Parma ', '0521239038', '', 'Panetteria Anna '),
(415, 3, 1, 'Str. Nino Bixio 14', 'Parma ', '0521284318', '', 'Panificio Centrale '),
(416, 3, 1, '', 'Parma ', '340 3454095 ', '', 'Torrefazione Pelco '),
(417, 3, 1, 'Borgo Angelo Mazza 2E', 'Parma ', '349 9823464 ', '', 'Cioccot'),
(418, 3, 1, 'Via Marchesi Luigi e Salvatore 10', 'Parma ', '0521 988949', '', 'Dolceria Zanlari  '),
(419, 3, 1, 'Via Massimo D\'Azeglio 66c', 'Parma ', '0521 573126 ', '', 'La Cornetteria '),
(420, 4, 1, 'Via Bertolotta 4', 'Sissa Trecasali', '3476912691', '', 'La Maesta\''),
(421, 4, 1, 'Strada Provinciale 28', 'Montechiarugolo ', '348 2255955 ', '', 'Trotter Ristorante'),
(422, 4, 1, 'Via XXV Aprile 50', 'Lesignano de\' Bagni', '3246057174', '', 'Osteria Al Clandestino'),
(423, 4, 1, 'Via Agostino Berenini 83', 'Fidenza ', '0524 522586', '', 'DAL GNUPO '),
(424, 4, 1, 'Via Francesco Baracca 20', 'Fidenza ', '', 'jaco1994@libero.it', 'IL SOGNATORE '),
(425, 4, 1, 'via Abate Zani 62', 'Fidenza ', '  0524 402138', '339 8316753', 'DA GIANNI '),
(426, 4, 1, 'Strada Pieve di Cusignano 98', 'Fidenza ', '0524 62184', '', 'STELLA DI MARE '),
(427, 4, 1, 'Via Micheli 27', 'Fidenza ', '0524071259', '', 'HOSTERIA NUMERO 1000  '),
(428, 4, 1, 'Piazza Rastelli 7', 'Medesano', '3471397580', '', 'Meat&Co'),
(429, 4, 1, 'Strada cornaccina 32', 'Medesano', '3292848788', 'Solo weekend', 'Trattoria Da Anna'),
(430, 4, 1, '', 'Medesano', '3200755564', '', 'La Braceria '),
(431, 4, 1, 'Via Benedetta 99a', 'Parma ', '0521 272524 ', '', 'Antica Osteria Tre Ville - '),
(432, 4, 1, 'Stradello San Girolamo 19/a', 'Parma ', ' 0521 572077 ', '370 3286861', 'Artai - osteria parmigiana Ristoranti'),
(433, 4, 1, 'Viale Paolo Borsellino 29a', 'Parma ', '0521 1510620 ', '', 'Ceci Pasta & Shake '),
(434, 4, 1, 'vicolo Asdente 9', 'Parma ', '0521 237912 ', '', 'Corale Verdi - '),
(435, 4, 1, 'Str. Conservatorio 1', 'Parma ', '0521 234426 ', '', 'Corrieri '),
(436, 4, 1, 'Viale Piacenza 19', 'Parma ', '0521 271214 ', '', 'Curcuma e mango - cucina indiana '),
(437, 4, 1, 'Borgo della Salina 3', 'Parma ', '0521 208846 ', '', 'Gallo d'),
(438, 4, 1, 'Via Marco Emilio Lepido 6', 'Parma ', '0521 1999008 ', '', 'I Love Pesce '),
(439, 4, 1, 'Strada Comunale Farnese 74/A', 'Parma ', '0521 968870 ', '', 'I tri siochet '),
(440, 4, 1, 'Via Annibale Pizzarelli 2', 'Parma ', '0521 674273 ', '', 'Il Bocconcino '),
(441, 4, 1, 'Strada Budellungo 96', 'Parma ', '0521 645310 ', '', 'La maison di gourmet '),
(442, 4, 1, 'Str. XX Settembre 8', 'Parma ', '0521 1713812 ', '', 'Meet Hamburger Gourmet '),
(443, 4, 1, 'Piazza Ghiaia 1', 'Parma ', '0521 231211  ', '331 5253463', 'Osteria dei Servi '),
(444, 4, 1, 'Piazza S. Bartolomeo 9', 'Parma ', '0521 208455 ', '345 4675950', 'Osteria del Teatro '),
(445, 4, 1, 'Borgo del Correggio 60', 'Parma ', ' 0521 957652 ', '', 'Osteria I Tre Porcellini'),
(446, 4, 1, 'Viale Antonio Fratti 22/A', 'Parma ', '0521 781137 ', '', 'Perlage ristorante '),
(447, 4, 1, 'Viale Antonio Gramsci 4f', 'Parma ', '0521 1747735 ', '', 'Qualunquemente mangi '),
(448, 4, 1, 'Viale Giovanni Falcone 28A', 'Parma ', '0521 181380 ', '', 'Ristorante pesce Sea&no '),
(449, 4, 1, 'Via Venezia 46', 'Parma ', '3207877364 ', '', 'Ristorante Pizzeria Il Mito '),
(450, 4, 1, 'Via Venezia, 46', 'Parma ', '0521 929715 ', '', 'Ritual Ristorante Messicano & Steakhouse, '),
(451, 4, 1, '', 'Parma ', '800 969826 ', '', 'T bone station '),
(452, 4, 1, 'Piazza Terramare 7', 'Parma ', '0521 673149 ', '', 'Tot'),
(453, 4, 1, 'Via Guido Buratti 44', 'Parma ', '0521 494950', '', 'Agriturismo Santa Felicita'),
(454, 5, 1, 'Via Motoclub Parma 43', 'Lesignano de\' Bagni', '0521853225 ', '3294772486', 'Pizzeria Al Ponte'),
(455, 5, 1, 'Viale Nuovo 22', 'Basilicanova', '0521682257  ', '340 4795625', 'Pizzeria La Campagnola (Bella Capri)'),
(456, 5, 1, 'Via Romagnosi 4', 'Salsomaggiore Terme', '0524573128  ', '347 0026174 ', 'CASA DEL PANE   '),
(457, 5, 1, 'Via Zani 20 ', 'Fidenza ', '0524 528595', '', 'PRONTO PIZZA '),
(458, 5, 1, 'Via Antonio Gramsci 16', 'Fidenza ', '0524 526685', '', 'ISTANBUL CITY KEBAB '),
(459, 5, 1, 'Via Galileo Ferraris 13/a ', 'Fidenza ', '0524 071404', '', 'TRAMVAI '),
(460, 5, 1, 'Via Cornini Malpeli 78', 'Fidenza ', '0524335306  ', '524530589', 'DA TONY '),
(461, 5, 1, 'Str. Giovanni Inzani 34A', 'Parma ', '3478113440', '', 'Bastian Contrario -   Bar/pub/birrerie'),
(462, 5, 1, 'Piazzale S. Lorenzo 3', 'Parma ', '0521 1472266 ', '351 9724961', 'Cantina Canistracci  Bar/pub/birrerie'),
(463, 5, 1, 'Strada Massimo D\'Azeglio 13A', 'Parma ', '0521 289581 ', '', 'L\'Acquolina D\'Azeglio '),
(464, 5, 1, 'Via Farini 92D', 'Parma ', '0521 289407 ', '329 7425773', 'Peter Pan wine bar  '),
(465, 5, 1, 'Via Rapallo 2', 'Parma ', '0521 939146 ', '', 'Adamo Pizzeria '),
(466, 5, 1, 'Via M.Minghetti 1B', 'Parma ', '0521 290334  ', '349 2993128', 'C'),
(467, 5, 1, 'Str. Nino Bixio 76a', 'Parma ', '0521 238901', '', 'I due gatti - pizzeria '),
(468, 5, 1, 'Via Toscana 84A', 'Parma ', '0521 481412 ', '', 'Pizza e cuore '),
(469, 5, 1, 'Via la Spezia 57', 'Parma ', '0521 257373 ', '366 3487722', 'Pizza Fantasy  '),
(470, 5, 1, 'Viale Fratti 22', 'Parma ', '0521 780878', '', 'Pizzeria da Luca  '),
(471, 5, 1, 'Via O. Lizzadri  5', 'Parma ', '0521 1912181 ', '', 'Pizzeria Da Simone '),
(472, 5, 1, 'Strada Massimo d\'Azeglio 30', 'Parma ', '0521 282899', '', 'Pizzeria il Profeta  '),
(473, 5, 1, 'Borgo Pietro Cocconi 3D', 'Parma ', '0521 522951', '', 'Pizzeria Reale  '),
(474, 6, 1, 'via XXV Aprile 2', 'Lesignano de\' Bagni', '3406038523 ', '3483512579', 'Gelateria Orso Bianco'),
(475, 6, 1, 'Via Montepelato Nord 17', 'Montechiarugolo', '340 7839236', '', 'Gelateria K2'),
(476, 6, 1, 'Via Montepelato Sud 3', 'Montechiarugolo', '345 6084793', '', 'Il Giardino Gelateria '),
(477, 6, 1, 'Via Solferino 24', 'Medesano ', '3382033570', '', 'Gelateria Settimo Cielo'),
(478, 6, 1, '', 'Medesano ', '3398488843', '', 'Gelateria Calypso'),
(479, 6, 1, 'Via la Spezia 14/A', 'Parma ', '331 7881722', '', 'Gelateria al Polo  '),
(480, 6, 1, 'Viale Solferino 30', 'Parma ', '0521 253604 ', '', 'Gelateria Floridita '),
(481, 6, 1, 'Viale Antonio Gramsci 10c', 'Parma ', '0521 290794', '', 'Gelateria Harnold\'s  '),
(482, 6, 1, 'Str. Langhirano 79', 'Parma ', '0521 258716', '', 'Gelateria Millevoglie  '),
(483, 7, 1, 'Via San Rocco 58', 'Colorno', '3496741247', 'barbaratoscanini82@g', 'Barbara Pet Market'),
(484, 7, 1, 'Via Pasini 1', 'Colorno ', '3348843365', '', 'Finardi Store'),
(485, 7, 1, 'Via Volturno 50A', 'Parma ', '320 0325499', '', 'Natura Selvaggia B.A.R.F. & non solo  '),
(486, 7, 1, '', 'Parma ', '0521 710988', '', 'Dog Stories Petshop  '),
(487, 8, 1, 'Via', 'Lesignano de\' Bagni', '3248050971', '', 'Lavanderia La Coccinella (Servizio Stiratura)'),
(488, 8, 1, 'Via Montepelato Sud 50', 'Monticelli Terme ', '0521657215 ', '3291691694', 'Lavanderia Beatrice La Bottega del pulito (Lavande'),
(489, 8, 1, 'Str. G. Garibaldi 42', 'Parma', '347 5934472', '', 'Nadalini Gian Franco & c  cosmetici e prodotti igi'),
(490, 9, 1, 'Via Guglielmo Marconi 16', 'Varsi', '052574223', '', 'Tuttocasa'),
(491, 9, 1, 'Via Guglielmo Marconi 4', 'Varsi', '0525751507', '', 'Yappa Abbigliamento e Varie '),
(492, 9, 1, 'Via Montepelato Sud 10', 'Montechiarugolo', '0521659032 ', 'ilgiardinodeimelogra', 'Ii Giardino dei Melograni - Centro Naturale'),
(493, 9, 1, 'Via G. Marconi 8', 'Montechiarugolo ', '334 6581044', 'gzstudio@me.com', 'Sartoria Reverberi '),
(494, 9, 1, 'Via Montepelato Sud 50b', 'Montechiarugolo ', '34760175486', 'pepeshoeseco@gmail.c', 'Pepe Shoes & Co.'),
(495, 9, 1, 'Via Ponticelle 4', 'Montechiarugolo ', '0521 657600', '', 'Ferramenta Mazza Massimo '),
(496, 9, 1, 'Via Montepelato Sud 54', 'Montechiarugolo ', '3480004778', 'marti.greci@gmail.co', 'Fiorista Renata'),
(497, 9, 1, 'Via Giuseppe Garibaldi 4', 'Montechiarugolo ', '331 8435880  ', '331 7564779', 'Floridea'),
(498, 9, 1, 'VIA MATTEOTTI 28B', 'Montechiarugolo ', '339 4843824', '', 'Raffaella Valenti '),
(499, 9, 1, ' via Gramsci 6', 'Fidenza', '0524 526131', '', 'TABACCHERIA'),
(500, 9, 1, 'Via la Bionda 11', 'Fidenza', '0524 527437 ', 'www.teldon.it', 'TELDON'),
(501, 9, 1, 'via Papini 22', 'Fidenza', '0524 83380', '', 'MARUSI '),
(502, 9, 1, 'Via Farini 67A', 'Parma ', '0521 236811', '', 'Eco Store  Consumabili per la stampa'),
(503, 9, 1, 'Strada Massimo D\'Azeglio 57', 'Parma ', '0521 234593', '', 'Libreria Medico Scientifica  Libreria'),
(504, 9, 1, 'Via Carlo Goldoni 5', 'Parma ', '349 6421946 ', '', 'My Euro Island Oggettistica'),
(505, 9, 1, 'Viale Osacca 19 B', 'Parma ', '338 9867898 ', '', 'Bocchi centro tv elettrodomestici '),
(506, 9, 1, 'Piazza Guglielmo Marconi 10', 'Lesignano de\' Bagni', '3714407801', '', 'BAR EDICOLA MELAGODO (Consegna Giornali)'),
(507, 9, 1, 'P.zza Monumento 5', 'Varsi', '052574662', '', 'Edicola-Merceria Nicky'),
(508, 10, 1, 'PIAZZA S. MICHELE 1', 'Lesignano de\' Bagni', '0521 350121', '', 'Farmacia Dott.Agnelli Umberto '),
(509, 10, 1, '', 'Busseto', '052492232', '', 'Farmacia Bergamaschi'),
(510, 10, 1, 'Via Roma 20', 'Busseto', '052492316', '', 'Farmacia Piccoli '),
(511, 10, 1, 'Via Roma 18', 'Varsi', '052574122  ', '3358365357', 'Farmacia Scimonelli'),
(512, 10, 1, 'Str. Bonifacio di Canossa 16', 'Palanzano', '0521897227', '', 'Farmacia Ferri'),
(513, 10, 1, 'Viale Sandro Pertini 1', 'Collecchio', '0521805830 ', '3518168163 farmaciac', 'Farmacia Comunale'),
(514, 10, 1, 'Piazza Alfredo Avanzini 1', 'Collecchio', '0521805315', 'farmacia.donetti@gma', 'Farmacia Donetti'),
(515, 10, 1, 'Via Nazionale 79C', 'Collecchio', '0521809171 ', '3791463678 farmacias', 'Farmacia San Giorgio'),
(516, 10, 1, 'Via Cavour 23', 'Colorno', '0521815342', '', 'Farmacia Arnoldi di Rossi Nicola'),
(517, 10, 1, 'Via Giacomo Matteotti 16', 'Colorno ', '0521815416', '', 'Farmacia Siviero'),
(518, 10, 1, 'Strada Comunale per Carzeto 23A', 'Soragna ', '05245993388', '', 'Farmacia Baldi'),
(519, 10, 1, 'Piazza Giuseppe Garibaldi 26', 'Soragna ', '0524597022', '', 'Farmacia Pelizza'),
(520, 10, 1, 'Via Solferino 68A.', 'Medesano', '0525 430142', '', 'Farmacia Denegri'),
(521, 10, 1, 'Via Della Repubblica 17', 'Medesano', '0525431540', '', 'Farmacia Piazza');

-- --------------------------------------------------------

--
-- Struttura della tabella `shop_type`
--

CREATE TABLE `shop_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `shop_type`
--

INSERT INTO `shop_type` (`id`, `type_name`) VALUES
(1, 'Alimentari, ortofrutta, drogherie, gastronomie'),
(2, 'Macellerie, salumerie, caseifici'),
(3, 'Forni, pasticcerie, pastifici, torrefazioni'),
(4, 'Ristoranti, tratterie, osterie'),
(5, 'Pizzerie, pub, birrerie, kebab, fast food'),
(6, 'Gelaterie'),
(7, 'Cibo e accessori per animali domestici'),
(8, 'Servizi domestici'),
(9, 'Altro'),
(10, 'Farmacie');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'info@iboitalia.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$/HWmOhPdjxR2PQxAb1otBA$8Hgv8/qT3bUbLF2iZJ01h2nR4fIvArjORKtylj0HSkM'),
(2, 'linda@iboproject.org', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$oDq51E+RQci1tRgMdpFOMA$XO9yxmS2t9nl0Ld3+plyDk8gdq/KUs8ElznPp9hOpkw');

-- --------------------------------------------------------

--
-- Struttura della tabella `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `availability_id` int(11) NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_owner` tinyint(1) DEFAULT NULL,
  `inception` date NOT NULL,
  `expiry` date NOT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `baby_sitting` tinyint(1) DEFAULT NULL,
  `note` varchar(2550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_delivery` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `volunteer`
--

INSERT INTO `volunteer` (`id`, `country_id`, `availability_id`, `lastname`, `name`, `birthday`, `address`, `zipcode`, `city`, `phone`, `email`, `car_owner`, `inception`, `expiry`, `delivery`, `baby_sitting`, `note`, `drug_delivery`) VALUES
(2, 1, 5, 'Zavaroni', 'Pierluigi', '1977-03-28', 'Via Emilia 41', '43010', 'Ponte Taro', '3408145226', 'parmalibera@gmail.com', 0, '2020-01-12', '2020-03-12', 0, 0, NULL, 0),
(3, 1, 6, 'Pittelli', 'Ermelinda', '1982-11-26', 'Strada Bonatti n.77/A', '43019', 'SORAGNA', '3779937529', 'perlinda82@gmail.com', 0, '2020-03-24', '2020-07-19', 1, 0, 'sdkslfj', 0),
(4, 1, 7, 'Pittelli', 'Ermelinda Pittelli', '1982-11-26', 'Strada Bonatti, 77/A', '43019', 'SORAGNA', '3779937529', 'perlinda82@gmail.com', 0, '2020-03-24', '2020-06-23', 0, 1, NULL, 1),
(5, 1, 8, 'Pittelli', 'Ermelinda Pittelli', '1982-11-26', 'Strada Bonatti, 77/A', '43019', 'SORAGNA', '3779937529', 'perlinda82@gmail.com', 0, '2020-03-24', '2020-06-23', 0, 1, NULL, 1),
(6, 1, 9, 'Carrante', 'Milena', '1992-12-12', 'strada Nino Bixio', '43125', 'parma', '3453861207', 'milena.carrante@hotmail.it', 0, '2020-03-24', '2020-04-30', 1, 0, NULL, 1),
(7, 1, 10, 'Ferrari', 'Marco', '1962-03-13', 'via Don Scarica 24', '43029', 'Traversetolo', '+393355387377', 'marcone.ferrari133@gmail.com', 1, '2020-03-25', '2020-04-06', 1, 0, NULL, 1),
(8, 1, 11, 'Ferrari', 'Marco', '1962-03-13', 'via Don Scarica 24', '43029', 'Traversetolo', '+393355387377', 'marcone.ferrari133@gmail.com', 1, '2020-03-25', '2020-04-06', 1, 0, NULL, 1),
(9, 1, 12, 'Ferrari', 'Marco', '1962-03-13', 'via Don Scarica 24', '43029', 'Traversetolo', '+393355387377', 'marcone.ferrari133@gmail.com', 1, '2020-03-25', '2020-04-06', 1, 0, NULL, 1),
(10, 1, 13, 'Cocconcelli', 'Chiara', '1996-05-16', 'Laurano, 34', '43024', 'Neviano Arduini', '3490089168', 'chiaracocco96@gmail.com', 1, '2020-03-24', '2020-04-03', 1, 1, 'Sarò disponibile finchè sarà necessario, anche oltre il 03/04/20.', 1),
(11, 1, 14, 'Ferrari', 'Marco', '1962-03-13', 'Via Don Scarica 24', '43029', 'Traversetolo', '+393355387377', 'marcone.ferrari133@gmail.com', 1, '2020-03-25', '2020-04-30', 1, 0, NULL, 1),
(12, 1, 15, 'eer', 'dkédf', '1978-03-04', 'rer', 'rere', 'gfg', 're', 'e', 1, '2020-03-25', '2020-05-31', 0, 0, 'cvvd,dv', 0),
(13, 1, 16, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '328/2735800', 'ayne89@hotmail.it', 0, '2020-03-26', '2020-04-30', 1, 1, NULL, 1),
(14, 1, 17, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '3282735800', 'ayne89@hotmail.it', 0, '2020-03-25', '2020-04-30', 1, 1, NULL, 1),
(15, 1, 18, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '3282735800', 'ayne89@hotmail.it', 0, '2020-03-25', '2020-04-30', 1, 1, NULL, 1),
(16, 1, 19, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '3282735800', 'ayne89@hotmail.it', 1, '2020-03-25', '2020-04-30', 1, 1, NULL, 1),
(17, 1, 20, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '+393282735800', 'ayne89@hotmail.it', 0, '2020-03-25', '2020-04-25', 1, 1, 'Do la mia disponibilità ad ogni tipo di intervento', 1),
(18, 1, 21, 'Azzarone', 'Maria Grazia', '1989-11-06', 'Via Giacomo Leopardi 4', '43125', 'Parma', '+393282735800', 'ayne89@hotmail.it', 0, '2020-03-26', '2020-04-18', 1, 1, NULL, 1),
(19, 9, 22, 'martinez frutos', 'francisco manuel', '1981-01-20', 'CORSO ERCOLE I D\'ESTE,88, 88', '44121', 'FERRARA', '3926542057', 'franciscofrutos@gmail.com', 1, '2020-03-30', '2020-05-20', 1, 1, 'Posso aiutare sia a Ferrara che Parma. Lavoro per NaturaSì e ho il permesso (autocertificato) per poter spostarmi in tutta Italia. Vivo sia a Ferrara che a Parma.', 1),
(20, 9, 23, 'martinez frutos', 'francisco manuel', '1981-01-20', 'CORSO ERCOLE I D\'ESTE,88, 88', '44121', 'FERRARA', '3926542057', 'franciscofrutos@gmail.com', 1, '2020-03-30', '2020-05-20', 1, 1, 'Posso aiutare sia a Ferrara che Parma. Lavoro per NaturaSì e ho il permesso (autocertificato) per poter spostarmi in tutta Italia. Vivo sia a Ferrara che a Parma.', 1),
(21, 5, 24, 'Olmi', 'Matilde', '1995-10-31', 'Via Pietralata 40', '40122', 'BOLOGNA', '3404062791', 'matilde.olmi@gmail.com', 0, '2020-03-31', '2020-04-18', 1, 0, NULL, 1),
(22, 5, 25, 'Olmi', 'Matilde', '1995-10-31', 'Via Pietralata 40', '40122', 'BOLOGNA', '3404062791', 'matilde.olmi@gmail.com', 0, '2020-03-31', '2020-04-18', 1, 0, NULL, 1),
(23, 5, 26, 'Olmi', 'Matilde', '1995-10-31', 'Via Pietralata 40', '40122', 'BOLOGNA', '3404062791', 'matilde.olmi@gmail.com', 0, '2020-03-31', '2020-04-18', 1, 0, NULL, 1),
(24, 5, 27, 'Olmi', 'Matilde', '1995-10-31', 'Via Pietralata 40', '40122', 'Bologna', '3404062791', 'matilde.olmi@gmail.com', 0, '2020-03-31', '2020-04-18', 1, 0, NULL, 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `association`
--
ALTER TABLE `association`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FD8521CCF92F3E70` (`country_id`);

--
-- Indici per le tabelle `association_type`
--
ALTER TABLE `association_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indici per le tabelle `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC6A4CA2C67FCCB9` (`shop_type_id`),
  ADD KEY `IDX_AC6A4CA2F92F3E70` (`country_id`);

--
-- Indici per le tabelle `shop_type`
--
ALTER TABLE `shop_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Indici per le tabelle `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5140DEDB61778466` (`availability_id`),
  ADD KEY `IDX_5140DEDBF92F3E70` (`country_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `association`
--
ALTER TABLE `association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `association_type`
--
ALTER TABLE `association_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `availability`
--
ALTER TABLE `availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT per la tabella `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT per la tabella `shop_type`
--
ALTER TABLE `shop_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `association`
--
ALTER TABLE `association`
  ADD CONSTRAINT `FK_FD8521CCF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Limiti per la tabella `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `FK_AC6A4CA2C67FCCB9` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type` (`id`),
  ADD CONSTRAINT `FK_AC6A4CA2F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Limiti per la tabella `volunteer`
--
ALTER TABLE `volunteer`
  ADD CONSTRAINT `FK_5140DEDB61778466` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`id`),
  ADD CONSTRAINT `FK_5140DEDBF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
