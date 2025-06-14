-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Jun 2025 pada 14.08
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multi_user`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `jurusan` enum('S1 Sistem Informasi','S1 Teknik Informatika','D3 Sistem Informasi') NOT NULL,
  `jk` enum('Laki - Laki','Perempuan') NOT NULL,
  `Semester` varchar(2) NOT NULL,
  `catatan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `kelas`, `jurusan`, `jk`, `Semester`, `catatan`) VALUES
(1, '18083000158', 'Dessya Christianita Effendi', 'F', 'S1 Sistem Informasi', 'Perempuan', '7', 'TEST'),
(2, '18083000851', 'Otsuka Ryouma', 'A', 'S1 Teknik Informatika', 'Laki - Laki', '7', 'Konnichiwa'),
(3, '18083000231', 'Jerome Polin', 'C', 'S1 Teknik Informatika', 'Laki - Laki', '7', 'Halo teman teman!'),
(5, '18083000001', 'Kim Namjoon', 'F', 'S1 Teknik Informatika', 'Laki - Laki', '7', 'Test catatan'),
(6, '18083000125', 'Veronica Ayu', 'H', 'D3 Sistem Informasi', 'Perempuan', '5', 'Jangan lupa follow ig aku UwU'),
(7, '18083000157', 'Muhammad Naiki', 'G', 'D3 Sistem Informasi', 'Laki - Laki', '5', 'Tugas telah terkumpulkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `level`) VALUES
(1, 'adminfti', 'admin', 'madridista', 'admin'),
(2, 'Dessya Christianita Effendi', 'dessya', 'dessya12', 'mahasiswa'),
(3, 'Otsuka Ryouma', 'otsuka', 'otsuka26', 'mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
