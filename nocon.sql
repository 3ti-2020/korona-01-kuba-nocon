-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Czas generowania: 18 Maj 2020, 23:04
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
-- Baza danych: `nocon`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

DROP TABLE IF EXISTS `klienci`;
CREATE TABLE IF NOT EXISTS `klienci` (
  `id` int(11) DEFAULT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `id_zamowienia` int(11) NOT NULL,
  `telefon` int(11) NOT NULL,
  `miasto` varchar(30) NOT NULL,
  `kraj` varchar(30) NOT NULL,
  `nick` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`, `id_zamowienia`, `telefon`, `miasto`, `kraj`, `nick`) VALUES
(1, 'Dawid', 'Pawlak', 1, 567345234, 'Kleszczów', 'Polska', 'dawid1322'),
(2, 'Szymon', 'Nowak', 2, 785198243, 'Wisła', 'Polska', 'simon11'),
(3, 'Weronika', 'Baran', 2, 143786379, 'Gąski', 'Polska', 'wera133'),
(4, 'Martyna', 'Olejniczak', 3, 937485195, 'Głuche', 'Polska', 'martiwll134'),
(5, 'Hanna', 'Kozłwska', 5, 713652285, 'Szczyrk', 'Polska', 'heandl94'),
(6, 'Jędrzej', 'Jakubowski', 6, 881928647, 'Bielsko-Biała', 'Polska', 'jedrekw154');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

DROP TABLE IF EXISTS `produkty`;
CREATE TABLE IF NOT EXISTS `produkty` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL,
  `kod` varchar(30) NOT NULL,
  `wykonawca` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `nazwa`, `kod`, `wykonawca`) VALUES
(1, 'Buty Sportowe', '110', 'ShoesMaker'),
(2, 'Bluza Rozpinana', '220', 'Clothes4U'),
(3, 'Etui Iphone', '330', 'ObudowyEU'),
(4, 'Rękawiczki', '440', 'HandHot'),
(5, 't-shirt blue', '550', 'H&M'),
(6, 'Kurtka Górska', '660', 'MoutainLove');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

DROP TABLE IF EXISTS `zamowienia`;
CREATE TABLE IF NOT EXISTS `zamowienia` (
  `id` int(11) DEFAULT NULL,
  `id_klienta` int(11) NOT NULL,
  `id_produktu` int(11) NOT NULL,
  `id_magazynu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `id_klienta`, `id_produktu`, `id_magazynu`) VALUES
(1, 1, 1, 3),
(2, 2, 2, 1),
(2, 3, 2, 1),
(3, 4, 3, 2),
(5, 5, 5, 5),
(6, 6, 6, 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
