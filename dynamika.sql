-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 22 Maj 2020, 08:19
-- Wersja serwera: 8.0.18
-- Wersja PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `elementy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dynamika`
--

DROP TABLE IF EXISTS `dynamika`;
CREATE TABLE IF NOT EXISTS `dynamika` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `oznaczenie` varchar(30) NOT NULL,
  `znaczenie` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `dynamika`
--

INSERT INTO `dynamika` (`id`, `nazwa`, `oznaczenie`, `znaczenie`) VALUES
(1, 'Pianissimo', 'pp', 'Bardzo Cicho'),
(2, 'Piano', 'p', 'Cicho'),
(3, 'MezzoPiano', 'mp', 'Prawie Piano'),
(4, 'MezzoForte', 'mf', 'Prawie Forte'),
(5, 'Forte', 'f', 'Głośno'),
(6, 'Fortissimo', 'ff', 'Bardzo Głośno'),
(7, 'Crescendo', 'cresc.', 'Coraz Głośniej'),
(8, 'Diminuendo', 'dim.', 'Coraz Ciszej');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
