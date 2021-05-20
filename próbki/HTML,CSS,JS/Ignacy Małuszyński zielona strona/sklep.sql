-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 04 Lut 2016, 08:59
-- Wersja serwera: 10.1.8-MariaDB
-- Wersja PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `meteo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lokalizacja`
--

CREATE TABLE `lokalizacja` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nazwa` text,
  `Adres` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `lokalizacja`
--

INSERT INTO `lokalizacja` (`id`, `Nazwa`, `Adres`) VALUES
(1, 'WAW1', 'Warszawa, Koszykowa 75'),
(2, 'SZC1', 'Szczecin, Przestrzenna 10'),
(3, 'KAT1', 'Katowice, Korfantego 105');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pogoda`
--

CREATE TABLE `pogoda` (
  `id` int(10) UNSIGNED NOT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `Opad` int(10) UNSIGNED DEFAULT NULL,
  `Cisnienie` int(10) UNSIGNED DEFAULT NULL,
  `PredkoscWiatru` int(10) UNSIGNED DEFAULT NULL,
  `Wilgotnosc` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pogoda`
--

INSERT INTO `pogoda` (`id`, `temperatura`, `Opad`, `Cisnienie`, `PredkoscWiatru`, `Wilgotnosc`) VALUES
(1, 23, 0, 1017, 4, 60),
(2, 21, 0, 1004, 40, 50),
(3, 18, 0, 990, 3, 55),
(4, 23, 0, 1000, 30, 30),
(5, 19, 0, 1000, 30, 30);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prognoza`
--

CREATE TABLE `prognoza` (
  `id` int(10) UNSIGNED NOT NULL,
  `Lokalizacja_id` int(10) UNSIGNED NOT NULL,
  `Pogoda_id` int(10) UNSIGNED NOT NULL,
  `dataProg` date DEFAULT NULL,
  `godzina` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `prognoza`
--

INSERT INTO `prognoza` (`id`, `Lokalizacja_id`, `Pogoda_id`, `dataProg`, `godzina`) VALUES
(1, 1, 1, '2015-07-01', '17:00:00'),
(2, 2, 2, '2015-07-01', '17:00:00'),
(3, 1, 3, '2015-07-02', '17:00:00'),
(4, 2, 4, '2015-07-02', '17:00:00'),
(5, 1, 5, '2015-07-03', '17:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `lokalizacja`
--
ALTER TABLE `lokalizacja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pogoda`
--
ALTER TABLE `pogoda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prognoza`
--
ALTER TABLE `prognoza`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `lokalizacja`
--
ALTER TABLE `lokalizacja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `pogoda`
--
ALTER TABLE `pogoda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `prognoza`
--
ALTER TABLE `prognoza`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
