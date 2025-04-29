-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vytvořeno: Úte 29. dub 2025, 11:00
-- Verze serveru: 5.7.11
-- Verze PHP: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `skaut_fitness`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `bojovesporty`
--

CREATE TABLE `bojovesporty` (
  `id` int(11) NOT NULL,
  `druh` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `trener` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `oteviraci_cas` time NOT NULL,
  `vybaveni` text COLLATE utf8_czech_ci,
  `znacka` varchar(100) COLLATE utf8_czech_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `bojovesporty`
--

INSERT INTO `bojovesporty` (`id`, `druh`, `trener`, `oteviraci_cas`, `vybaveni`, `znacka`) VALUES
(1, 'Box', 'Martin Svoboda', '08:00:00', 'Boxovací pytle, rukavice, chrániče, lapy', 'Everlast'),
(2, 'Kickbox', 'Petra Nováková', '09:30:00', 'Rukavice, chrániče holení, lapy, ring', 'TopTen'),
(3, 'Judo', 'Tomáš Dvořák', '10:00:00', 'Tatami, kimona, pásky, zrcadla', 'Mizuno'),
(4, 'Karate', 'Jana Horáková', '11:00:00', 'Kimona, lapy, bloky, zrcadla', 'Adidas'),
(5, 'MMA', 'Lukáš Konečný', '12:30:00', 'Klec, rukavice, chrániče, boxovací pytle', 'Venum'),
(6, 'Taekwondo', 'Eva Malá', '14:00:00', 'Chrániče, lapy, kimona, tatami', 'Daedo'),
(7, 'Brazilské jiu-jitsu', 'Pavel Černý', '15:30:00', 'Kimona, pásky, tatami, boxovací panák', 'Tatami Fightwear'),
(8, 'Sambo', 'Kristýna Bílá', '16:45:00', 'Kimona, chrániče, pásky, žíněnky', 'Green Hill'),
(9, 'Krav Maga', 'David Kučera', '18:00:00', 'Rukavice, chrániče, tréninkové nože, lapy', 'KMG'),
(10, 'Muay Thai', 'Michaela Veselá', '19:15:00', 'Loketní a kolenní chrániče, box pytle, rukavice', 'Fairtex');

-- --------------------------------------------------------

--
-- Struktura tabulky `fitkari`
--

CREATE TABLE `fitkari` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `pohlavi` enum('M','F','O') COLLATE utf8_czech_ci NOT NULL,
  `vek` int(11) NOT NULL,
  `trvale_bydliste` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `bojovesporty_id` int(11) NOT NULL,
  `skupinovelekce_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `fitkari`
--

INSERT INTO `fitkari` (`id`, `jmeno`, `prijmeni`, `pohlavi`, `vek`, `trvale_bydliste`, `bojovesporty_id`, `skupinovelekce_id`) VALUES
(1, 'Roman', 'Beneš', 'M', 36, 'Pardubice', 8, 1),
(2, 'David', 'Kříž', 'M', 37, 'Liberec', 7, 7),
(3, 'Michal', 'Beneš', 'M', 59, 'Plzeň', 5, 5),
(4, 'Jan', 'Beneš', 'M', 58, 'Zlín', 3, 4),
(5, 'Petr', 'Kučera', 'M', 57, 'Pardubice', 10, 4),
(6, 'Martin', 'Beneš', 'M', 30, 'Brno', 4, 8),
(7, 'Lukáš', 'Kučera', 'M', 32, 'České Budějovice', 9, 3),
(8, 'Petra', 'Svoboda', 'F', 60, 'Brno', 3, 6),
(9, 'Jan', 'Dvořák', 'M', 47, 'České Budějovice', 6, 7),
(10, 'Roman', 'Fiala', 'M', 48, 'Pardubice', 9, 6),
(11, 'Lukáš', 'Beneš', 'M', 31, 'Pardubice', 6, 8),
(12, 'Tomáš', 'Kučera', 'O', 58, 'České Budějovice', 8, 3),
(13, 'Hana', 'Beneš', 'F', 55, 'Brno', 8, 1),
(14, 'Roman', 'Kříž', 'M', 27, 'Liberec', 2, 6),
(15, 'Jana', 'Svoboda', 'F', 38, 'Zlín', 1, 1),
(16, 'Barbora', 'Fiala', 'F', 44, 'Ostrava', 2, 1),
(17, 'Jakub', 'Beneš', 'M', 34, 'Hradec Králové', 1, 1),
(18, 'Petr', 'Kříž', 'M', 40, 'Brno', 6, 2),
(19, 'Kristýna', 'Kučera', 'F', 33, 'Praha', 10, 5),
(20, 'Eva', 'Svoboda', 'F', 20, 'Zlín', 4, 3),
(21, 'Lukáš', 'Dvořák', 'M', 35, 'Olomouc', 5, 7),
(22, 'Tereza', 'Král', 'F', 41, 'Brno', 6, 1),
(23, 'Veronika', 'Novák', 'F', 29, 'Ostrava', 9, 1),
(24, 'Jan', 'Král', 'M', 23, 'Olomouc', 7, 5),
(25, 'Martin', 'Fiala', 'M', 22, 'Praha', 4, 2),
(26, 'Lucie', 'Beneš', 'F', 39, 'Plzeň', 10, 3),
(27, 'Michal', 'Dvořák', 'M', 54, 'Brno', 1, 5),
(28, 'Kristýna', 'Černý', 'F', 36, 'Praha', 2, 8),
(29, 'Tomáš', 'Král', 'M', 45, 'Zlín', 3, 2),
(30, 'Jana', 'Beneš', 'F', 42, 'Praha', 5, 5),
(31, 'David', 'Kříž', 'M', 38, 'Olomouc', 7, 4),
(32, 'Jakub', 'Fiala', 'M', 46, 'Liberec', 3, 3),
(33, 'Petr', 'Král', 'M', 52, 'Praha', 6, 6),
(34, 'Barbora', 'Kříž', 'F', 50, 'Hradec Králové', 4, 1),
(35, 'Michaela', 'Černý', 'F', 28, 'Plzeň', 5, 7),
(36, 'Lukáš', 'Svoboda', 'M', 33, 'České Budějovice', 7, 8),
(37, 'Eva', 'Kučera', 'F', 25, 'Pardubice', 2, 1),
(38, 'Kristýna', 'Novák', 'O', 30, 'Liberec', 1, 2),
(39, 'Tomáš', 'Kříž', 'M', 34, 'Olomouc', 8, 3),
(40, 'Petra', 'Král', 'F', 29, 'Zlín', 10, 5),
(41, 'Martin', 'Svoboda', 'M', 43, 'Praha', 9, 6),
(42, 'Lucie', 'Kučera', 'F', 48, 'Brno', 6, 7),
(43, 'Roman', 'Novák', 'M', 51, 'Ostrava', 7, 8),
(44, 'Veronika', 'Beneš', 'F', 49, 'Pardubice', 3, 4),
(45, 'Jakub', 'Dvořák', 'M', 26, 'Hradec Králové', 4, 3),
(46, 'Hana', 'Černý', 'F', 31, 'České Budějovice', 2, 1),
(47, 'Michal', 'Král', 'M', 36, 'Olomouc', 1, 2),
(48, 'Michaela', 'Fiala', 'F', 55, 'Praha', 5, 6),
(49, 'Pavel', 'Svoboda', 'M', 40, 'Brno', 9, 5),
(50, 'Eva', 'Kříž', 'F', 32, 'Zlín', 10, 4);

-- --------------------------------------------------------

--
-- Struktura tabulky `skupinovelekce`
--

CREATE TABLE `skupinovelekce` (
  `id` int(11) NOT NULL,
  `nazev` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `trener` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `cas` time NOT NULL,
  `sal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `skupinovelekce`
--

INSERT INTO `skupinovelekce` (`id`, `nazev`, `trener`, `cas`, `sal`) VALUES
(1, 'Kruhový trénink', 'Martin Svoboda', '09:00:00', 1),
(2, 'Spinning', 'Petra Nováková', '10:30:00', 2),
(3, 'Pilates', 'Tomáš Dvořák', '11:15:00', 1),
(4, 'Zumba', 'Jana Horáková', '13:00:00', 3),
(5, 'BodyPump', 'Lukáš Konečný', '15:45:00', 2),
(6, 'CrossFit', 'Eva Malá', '17:00:00', 1),
(7, 'TRX', 'Pavel Černý', '18:30:00', 2),
(8, 'HIIT', 'Kristýna Bílá', '20:00:00', 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `spa`
--

CREATE TABLE `spa` (
  `id` int(11) NOT NULL,
  `moznosti_spa` text COLLATE utf8_czech_ci NOT NULL,
  `znacka` varchar(100) COLLATE utf8_czech_ci DEFAULT NULL,
  `oteviraci_doba` varchar(100) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `stroje`
--

CREATE TABLE `stroje` (
  `id` int(11) NOT NULL,
  `znacka` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `zamereni` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `vek` int(11) NOT NULL,
  `zamestnanci_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `treneri`
--

CREATE TABLE `treneri` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `praxe` int(11) NOT NULL,
  `zamereni` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `vek` int(11) NOT NULL,
  `pohlavi` enum('M','F','O') COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `treneri`
--

INSERT INTO `treneri` (`id`, `jmeno`, `prijmeni`, `praxe`, `zamereni`, `telefon`, `email`, `vek`, `pohlavi`) VALUES
(1, 'Jan', 'Novák', 5, 'silový trénink', '604123456', 'jan.novak@email.cz', 32, 'M'),
(2, 'Petra', 'Dvořáková', 8, 'kondiční trénink', '605987654', 'petra.dvorakova@email.cz', 36, 'F'),
(3, 'Tomáš', 'Horák', 3, 'hypertrofický trénink', '606321789', 'tomas.horak@email.cz', 28, 'M'),
(4, 'Lucie', 'Svobodová', 10, 'silový trénink', '607456123', 'lucie.svobodova@email.cz', 40, 'F'),
(5, 'Marek', 'Král', 2, 'kondiční trénink', '608789456', 'marek.kral@email.cz', 26, 'M'),
(6, 'Eva', 'Malá', 6, 'hypertrofický trénink', '609123789', 'eva.mala@email.cz', 34, 'F'),
(7, 'Michal', 'Beneš', 4, 'kondiční trénink', '601654321', 'michal.benes@email.cz', 30, 'M'),
(8, 'Tereza', 'Pokorná', 7, 'silový trénink', '602741852', 'tereza.pokorna@email.cz', 35, 'F'),
(9, 'David', 'Vlček', 9, 'hypertrofický trénink', '603852963', 'david.vlcek@email.cz', 38, 'M'),
(10, 'Barbora', 'Kučerová', 5, 'kondiční trénink', '604369258', 'barbora.kucerova@email.cz', 31, 'F');

-- --------------------------------------------------------

--
-- Struktura tabulky `treneri_has_bojovesporty`
--

CREATE TABLE `treneri_has_bojovesporty` (
  `treneri_id` int(11) NOT NULL,
  `bojovesporty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `treneri_has_fitkari`
--

CREATE TABLE `treneri_has_fitkari` (
  `treneri_id` int(11) NOT NULL,
  `fitkari_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `treneri_has_skupinovelekce`
--

CREATE TABLE `treneri_has_skupinovelekce` (
  `treneri_id` int(11) NOT NULL,
  `skupinovelekce_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `zamestnanci`
--

CREATE TABLE `zamestnanci` (
  `id` int(11) NOT NULL,
  `jmeno` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `pohlavi` enum('M','F','O') COLLATE utf8_czech_ci NOT NULL,
  `vek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `zamestnanci`
--

INSERT INTO `zamestnanci` (`id`, `jmeno`, `prijmeni`, `pohlavi`, `vek`) VALUES
(1, 'Tomáš', 'Černý', 'O', 17),
(2, 'Marie', 'Benešová', 'F', 51),
(3, 'Jakub', 'Koželuh', 'M', 39),
(4, 'Tereza', 'Bruknerová', 'F', 35),
(5, 'David', 'Frýbert', 'M', 45),
(6, 'Petra', 'Mihulová', 'F', 37),
(7, 'Luboš', 'Bauer', 'M', 50),
(8, 'Karin', 'Joštová', 'F', 40),
(9, 'Kristýna', 'Pirklová', 'F', 33),
(10, 'Petr', 'Provazník', 'M', 46),
(11, 'Vojtěch', 'Svoboda', 'M', 38),
(12, 'Tereza', 'Mazourková', 'F', 36),
(13, 'Filip', 'Škoda', 'M', 41),
(14, 'Soreya', 'Zychová', 'F', 53),
(15, 'Pavel', 'Jiran', 'M', 44);

-- --------------------------------------------------------

--
-- Struktura tabulky `zamestnanci_has_spa`
--

CREATE TABLE `zamestnanci_has_spa` (
  `zamestnanci_id` int(11) NOT NULL,
  `spa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `bojovesporty`
--
ALTER TABLE `bojovesporty`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `fitkari`
--
ALTER TABLE `fitkari`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fitkari_bojovesporty1_idx` (`bojovesporty_id`),
  ADD KEY `fk_fitkari_skupinovelekce1_idx` (`skupinovelekce_id`);

--
-- Klíče pro tabulku `skupinovelekce`
--
ALTER TABLE `skupinovelekce`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `spa`
--
ALTER TABLE `spa`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `stroje`
--
ALTER TABLE `stroje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_stroje_zamestnanci1_idx` (`zamestnanci_id`);

--
-- Klíče pro tabulku `treneri`
--
ALTER TABLE `treneri`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `treneri_has_bojovesporty`
--
ALTER TABLE `treneri_has_bojovesporty`
  ADD PRIMARY KEY (`treneri_id`,`bojovesporty_id`),
  ADD KEY `fk_treneri_has_bojovesporty_bojovesporty1_idx` (`bojovesporty_id`),
  ADD KEY `fk_treneri_has_bojovesporty_treneri1_idx` (`treneri_id`);

--
-- Klíče pro tabulku `treneri_has_fitkari`
--
ALTER TABLE `treneri_has_fitkari`
  ADD PRIMARY KEY (`treneri_id`,`fitkari_id`),
  ADD KEY `fk_treneri_has_fitkari_fitkari1_idx` (`fitkari_id`),
  ADD KEY `fk_treneri_has_fitkari_treneri_idx` (`treneri_id`);

--
-- Klíče pro tabulku `treneri_has_skupinovelekce`
--
ALTER TABLE `treneri_has_skupinovelekce`
  ADD PRIMARY KEY (`treneri_id`,`skupinovelekce_id`),
  ADD KEY `fk_treneri_has_skupinovelekce_skupinovelekce1_idx` (`skupinovelekce_id`),
  ADD KEY `fk_treneri_has_skupinovelekce_treneri1_idx` (`treneri_id`);

--
-- Klíče pro tabulku `zamestnanci`
--
ALTER TABLE `zamestnanci`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `zamestnanci_has_spa`
--
ALTER TABLE `zamestnanci_has_spa`
  ADD PRIMARY KEY (`zamestnanci_id`,`spa_id`),
  ADD KEY `fk_zamestnanci_has_spa_spa1_idx` (`spa_id`),
  ADD KEY `fk_zamestnanci_has_spa_zamestnanci1_idx` (`zamestnanci_id`);

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `fitkari`
--
ALTER TABLE `fitkari`
  ADD CONSTRAINT `fk_fitkari_bojovesporty1` FOREIGN KEY (`bojovesporty_id`) REFERENCES `bojovesporty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_fitkari_skupinovelekce1` FOREIGN KEY (`skupinovelekce_id`) REFERENCES `skupinovelekce` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `stroje`
--
ALTER TABLE `stroje`
  ADD CONSTRAINT `fk_stroje_zamestnanci1` FOREIGN KEY (`zamestnanci_id`) REFERENCES `zamestnanci` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `treneri_has_bojovesporty`
--
ALTER TABLE `treneri_has_bojovesporty`
  ADD CONSTRAINT `fk_treneri_has_bojovesporty_bojovesporty1` FOREIGN KEY (`bojovesporty_id`) REFERENCES `bojovesporty` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_treneri_has_bojovesporty_treneri1` FOREIGN KEY (`treneri_id`) REFERENCES `treneri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `treneri_has_fitkari`
--
ALTER TABLE `treneri_has_fitkari`
  ADD CONSTRAINT `fk_treneri_has_fitkari_fitkari1` FOREIGN KEY (`fitkari_id`) REFERENCES `fitkari` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_treneri_has_fitkari_treneri` FOREIGN KEY (`treneri_id`) REFERENCES `treneri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `treneri_has_skupinovelekce`
--
ALTER TABLE `treneri_has_skupinovelekce`
  ADD CONSTRAINT `fk_treneri_has_skupinovelekce_skupinovelekce1` FOREIGN KEY (`skupinovelekce_id`) REFERENCES `skupinovelekce` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_treneri_has_skupinovelekce_treneri1` FOREIGN KEY (`treneri_id`) REFERENCES `treneri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Omezení pro tabulku `zamestnanci_has_spa`
--
ALTER TABLE `zamestnanci_has_spa`
  ADD CONSTRAINT `fk_zamestnanci_has_spa_spa1` FOREIGN KEY (`spa_id`) REFERENCES `spa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zamestnanci_has_spa_zamestnanci1` FOREIGN KEY (`zamestnanci_id`) REFERENCES `zamestnanci` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
