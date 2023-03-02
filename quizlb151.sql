-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Mrz 2023 um 12:20
-- Server-Version: 10.4.21-MariaDB
-- PHP-Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `quizlb151`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `highscoreliste`
--

CREATE TABLE `highscoreliste` (
  `id` int(11) NOT NULL,
  `Rang` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `StartZeit` datetime NOT NULL,
  `EndZeit` datetime NOT NULL,
  `Gewinn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `highscoreliste`
--

INSERT INTO `highscoreliste` (`id`, `Rang`, `Name`, `StartZeit`, `EndZeit`, `Gewinn`) VALUES
(163, 1, 'Test', '2023-03-02 10:53:44', '2023-03-02 10:54:02', 2783),
(164, 2, 'Test2', '2023-03-02 10:54:58', '2023-03-02 10:55:38', 1717);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `kategorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kategorie`
--

INSERT INTO `kategorie` (`id`, `kategorie`) VALUES
(1, 'Tiere'),
(2, 'Automarken'),
(3, 'Fussballspieler'),
(4, 'Berufe'),
(9, 'Videospiele');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `schwierigkeit`
--

CREATE TABLE `schwierigkeit` (
  `id` int(11) NOT NULL,
  `schwierigkeitsgrad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `schwierigkeit`
--

INSERT INTO `schwierigkeit` (`id`, `schwierigkeitsgrad`) VALUES
(1, 'Einfach'),
(2, 'Mittel'),
(3, 'Schwer');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `woerter`
--

CREATE TABLE `woerter` (
  `id` int(11) NOT NULL,
  `wort` varchar(48) NOT NULL,
  `gefragt` tinyint(1) NOT NULL,
  `id_kategorie` int(11) DEFAULT NULL,
  `id_schwierigkeit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `woerter`
--

INSERT INTO `woerter` (`id`, `wort`, `gefragt`, `id_kategorie`, `id_schwierigkeit`) VALUES
(1, 'Alfa Romeo', 0, 2, 2),
(2, 'Mitsubishi', 0, 2, 2),
(3, 'Aston Martin', 0, 2, 2),
(4, 'Mercedes Benz', 0, 2, 2),
(5, 'Peugeot', 0, 2, 2),
(6, 'Panzernashorn', 0, 1, 1),
(7, 'Komodowaran', 0, 1, 2),
(8, 'Schimpanse', 0, 1, 1),
(13, 'Zlatan Ibrahimovic', 0, 3, 2),
(14, 'Virgil van Dijk', 0, 3, 3),
(15, 'Robert Lewandowski', 0, 3, 3),
(16, 'Schifffahrtskaufmann', 0, 4, 3),
(17, 'Landmaschinenmechaniker', 0, 4, 3),
(18, 'Uhrmacher', 0, 4, 1),
(19, 'Informatiker', 0, 4, 1),
(20, 'Milchtechnologe', 0, 4, 1),
(22, 'Rotaugenlaubfrosch', 0, 1, 3),
(23, 'Grosser Panda', 0, 1, 2),
(24, 'Dikdik', 0, 1, 3),
(25, 'Barbirusa', 0, 1, 3),
(26, 'Kolibri', 0, 1, 1),
(27, 'Kiwi', 0, 1, 1),
(28, 'Orca', 0, 1, 1),
(29, 'Lamorghini', 0, 2, 1),
(30, 'Chrysler', 0, 2, 3),
(31, 'Cadillac', 0, 2, 3),
(32, 'Koenigsegg', 0, 2, 3),
(33, 'Polestar', 0, 2, 3),
(34, 'Federico Valverde', 0, 3, 3),
(35, 'Lionel Messi', 0, 3, 1),
(36, 'Manuel Neuer', 0, 3, 2),
(37, 'Karim Benzema', 0, 3, 2),
(38, 'Erling Haaland', 0, 3, 2),
(39, 'Neymar', 0, 3, 1),
(40, 'Marcus Rashford', 0, 3, 3),
(41, 'Blasinstrumentenbauer', 0, 4, 3),
(42, 'Polymechaniker', 0, 4, 2),
(44, 'Verpackungstechnologe', 0, 4, 2),
(45, 'Elektroniker', 0, 4, 1),
(46, 'Physiklaborant', 0, 4, 2),
(61, 'GTA V', 0, 9, 1);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `highscoreliste`
--
ALTER TABLE `highscoreliste`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `schwierigkeit`
--
ALTER TABLE `schwierigkeit`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `woerter`
--
ALTER TABLE `woerter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kategorie` (`id_kategorie`),
  ADD KEY `fk_schwierigkeit` (`id_schwierigkeit`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `highscoreliste`
--
ALTER TABLE `highscoreliste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT für Tabelle `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `schwierigkeit`
--
ALTER TABLE `schwierigkeit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `woerter`
--
ALTER TABLE `woerter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `woerter`
--
ALTER TABLE `woerter`
  ADD CONSTRAINT `fk_kategorie` FOREIGN KEY (`id_kategorie`) REFERENCES `kategorie` (`id`),
  ADD CONSTRAINT `fk_schwierigkeit` FOREIGN KEY (`id_schwierigkeit`) REFERENCES `schwierigkeit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
