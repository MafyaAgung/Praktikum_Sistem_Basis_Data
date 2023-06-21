-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 19.35
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2349_magungf`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_2349`
--

CREATE TABLE `mahasiswa_2349` (
  `NPM` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa_2349`
--

INSERT INTO `mahasiswa_2349` (`NPM`, `Nama`, `Kelas`) VALUES
(2349, 'Muhammad Agung Febriyanto', 'R45'),
(2350, 'Agung', 'R46'),
(2351, 'Febrian', 'R46'),
(2352, 'Brian', 'R45'),
(2353, 'Rian', 'R47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah_23349`
--

CREATE TABLE `matakuliah_23349` (
  `No_Mk` int(11) NOT NULL,
  `Nama_MK` varchar(30) NOT NULL,
  `SKS` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah_23349`
--

INSERT INTO `matakuliah_23349` (`No_Mk`, `Nama_MK`, `SKS`) VALUES
(110011, 'Basis Data', 4),
(120011, 'Komunikasi Data', 3),
(130011, 'Algoritma', 3),
(140011, 'Jaringan Komputer', 2),
(150011, 'Logika Matematika', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_23349`
--

CREATE TABLE `nilai_23349` (
  `NPM` int(11) NOT NULL,
  `No_Mk` int(11) NOT NULL,
  `MID` float NOT NULL,
  `FINAL` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai_23349`
--

INSERT INTO `nilai_23349` (`NPM`, `No_Mk`, `MID`, `FINAL`) VALUES
(2349, 110011, 78, 80),
(2350, 120011, 80, 87),
(2351, 130011, 69, 70),
(2352, 140011, 80, 60),
(2353, 150011, 85, 90);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa_2349`
--
ALTER TABLE `mahasiswa_2349`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `matakuliah_23349`
--
ALTER TABLE `matakuliah_23349`
  ADD PRIMARY KEY (`No_Mk`);

--
-- Indeks untuk tabel `nilai_23349`
--
ALTER TABLE `nilai_23349`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
