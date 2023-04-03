-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Apr 2023 pada 18.54
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
-- Database: `magungf_2349`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agung_2349_mhs`
--

CREATE TABLE `agung_2349_mhs` (
  `NPM` bigint(12) NOT NULL,
  `Nama_Mahasiswa` varchar(30) NOT NULL,
  `Domisili` varchar(15) NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `Tanggal_Lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agung_2349_mhs`
--

INSERT INTO `agung_2349_mhs` (`NPM`, `Nama_Mahasiswa`, `Domisili`, `Jenis_Kelamin`, `Tanggal_Lahir`) VALUES
(202143502349, 'Muhammad Agung Febriyanto', 'Jakarta', 'L', '2003-02-05'),
(202243500121, 'Desi Maryani', 'Bekasi', 'P', '1991-08-24'),
(202243500165, 'Firdaus', 'Jakarta', 'L', '1991-05-18'),
(202243500228, 'Muhammad Gandi', 'Depok', 'L', '1991-07-10'),
(202243500234, 'Endah Haryati', 'Depok', 'P', '1991-05-15'),
(202243500439, 'Andi', 'Jakarta', 'L', '1991-06-12'),
(202243500693, 'Riswandi', 'Bekasi', 'L', '1990-10-08'),
(202243500694, 'Indar Hari', 'Bogor', 'L', '1990-12-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agung_2349_mk`
--

CREATE TABLE `agung_2349_mk` (
  `KD_MK` varchar(5) NOT NULL,
  `Nama_MataKuliah` varchar(30) NOT NULL,
  `SKS` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agung_2349_mk`
--

INSERT INTO `agung_2349_mk` (`KD_MK`, `Nama_MataKuliah`, `SKS`) VALUES
('KD123', 'Interaksi Manusia & Komputer', 3),
('KK020', 'Praktikum Sistem Basis Data', 1),
('KK021', 'Sistem Basis Data', 2),
('KK034', 'Manajemen Proyek', 3),
('KK077', 'Metode Numerik', 3),
('KU077', 'Ilmu Budaya Dasar', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agung_2349_mhs`
--
ALTER TABLE `agung_2349_mhs`
  ADD PRIMARY KEY (`NPM`);

--
-- Indeks untuk tabel `agung_2349_mk`
--
ALTER TABLE `agung_2349_mk`
  ADD PRIMARY KEY (`KD_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
