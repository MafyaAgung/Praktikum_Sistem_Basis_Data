-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2023 pada 19.31
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
-- Database: `agung_p7_2349`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `Kd_Pelajaran` varchar(7) NOT NULL,
  `Nama_Pelajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`Kd_Pelajaran`, `Nama_Pelajaran`) VALUES
('KDP_015', 'PKN'),
('KDP_023', 'Matematika'),
('KDP_025', 'IPA Terpadu'),
('KDP_030', 'Bahasa Inggris'),
('KDP_033', 'Bahasa Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `NIS` bigint(12) NOT NULL,
  `Kehadiran` int(3) NOT NULL,
  `Nilai_UTS` int(3) NOT NULL,
  `Nilai_UAS` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`NIS`, `Kehadiran`, `Nilai_UTS`, `Nilai_UAS`) VALUES
(2003251, 80, 80, 90),
(2003252, 60, 60, 90),
(2003253, 70, 60, 60),
(2003254, 80, 90, 70),
(2003255, 90, 70, 80),
(2003256, 70, 60, 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `NIS` bigint(12) NOT NULL,
  `Nama_Siswa` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Telp_WaliMurid` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`NIS`, `Nama_Siswa`, `Alamat`, `Telp_WaliMurid`) VALUES
(2003251, 'Budi', 'JAK-SEL', '081202200111'),
(2003252, 'Nadia', 'JAK-BAR', '088807779919'),
(2003253, 'Nanda', 'JAK-UT', '087888009911'),
(2003254, 'Ratna', 'JAK-TIM', '087733311222'),
(2003255, 'Ningsih', 'JAK-PUS', '082222040099'),
(2003256, 'Bobi', 'JAK-SEL', '085623232333');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`Kd_Pelajaran`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NIS`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
