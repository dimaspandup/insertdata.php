-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataprodi`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(10) NOT NULL,
  `judul_buku` varchar(20) NOT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `deskripsi`) VALUES
(1, 'Organisasi', 'Kepemimpinan Manajement dan Organisai'),
(3, 'Pele', 'Sepak Bola'),
(6, 'Bantengan', 'Bantengan Nuswantoro'),
(9, 'Syech Subakir', 'Legenda Agama Islam Ditanah Jawa');

-- --------------------------------------------------------

--
-- Table structure for table `detail_peminjaman_buku`
--

CREATE TABLE `detail_peminjaman_buku` (
  `id_detail_peminjaman_buku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_peminjaman_buku`
--

INSERT INTO `detail_peminjaman_buku` (`id_detail_peminjaman_buku`, `id_peminjaman_buku`, `id_buku`, `qty`) VALUES
(1, 5, 1, 1),
(2, 6, 1, 1),
(3, 7, 1, 1),
(4, 8, 1, 1),
(5, 9, 1, 1),
(6, 10, 1, 1),
(7, 11, 1, 1),
(8, 12, 1, 1),
(9, 13, 1, 1),
(10, 14, 1, 1),
(12, 16, 1, 1),
(13, 17, 1, 1),
(14, 18, 1, 1),
(15, 19, 1, 1),
(16, 20, 1, 1),
(17, 21, 1, 1),
(18, 22, 1, 1),
(19, 22, 1, 1),
(20, 23, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(20) NOT NULL,
  `angkatan` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`, `angkatan`) VALUES
(1, 'Sistem Informasi', 2021),
(2, 'Teknik Elektro', 2020),
(3, 'Ilmu Komunikasi', 2020),
(4, 'Bahasa Inggris', 2021),
(5, 'Akuntansi', 2020),
(6, 'Ekonomi', 2020),
(7, 'Teknik Elektro', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `username`, `password`, `id_jurusan`) VALUES
(2, 'Dimas Pandu', '2002-10-29', 'L', 'Dusun Meduran', 'Dimas', 'Dimas', 1),
(4, 'Puspita Sari', '2000-11-07', 'P', 'Kota Batu', 'Puspita', 'Puspita', 3),
(8, 'Dewi', '2001-07-22', 'P', 'Karang Ploso', 'Dewi', 'Dewi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_buku`
--

CREATE TABLE `peminjaman_buku` (
  `id_peminjaman_buku` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman_buku`
--

INSERT INTO `peminjaman_buku` (`id_peminjaman_buku`, `tanggal_pinjam`, `id_mhs`, `tanggal_kembali`) VALUES
(5, '2021-12-06', 2, '2021-12-11'),
(6, '2021-12-06', 2, '2021-12-11'),
(7, '2021-12-06', 2, '2021-12-11'),
(8, '2021-12-06', 2, '2021-12-11'),
(9, '2021-12-06', 2, '2021-12-11'),
(10, '2021-12-06', 2, '2021-12-11'),
(11, '2021-12-06', 2, '2021-12-11'),
(12, '2021-12-13', 2, '2021-12-18'),
(13, '2021-12-13', 2, '2021-12-18'),
(14, '2021-12-13', 2, '2021-12-18'),
(15, '2021-12-13', 2, '2021-12-18'),
(16, '2021-12-13', 2, '2021-12-18'),
(17, '2021-12-13', 2, '2021-12-18'),
(18, '2021-12-22', 4, '0000-00-00'),
(19, '2021-12-22', 4, '0000-00-00'),
(20, '2021-12-22', 4, '0000-00-00'),
(21, '2021-12-22', 2, '0000-00-00'),
(22, '2021-12-22', 2, '0000-00-00'),
(23, '2021-12-22', 8, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian_buku`
--

CREATE TABLE `pengembalian_buku` (
  `id_pengembalianbuku` int(11) NOT NULL,
  `id_peminjaman_buku` int(11) NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengembalian_buku`
--

INSERT INTO `pengembalian_buku` (`id_pengembalianbuku`, `id_peminjaman_buku`, `tanggal_pengembalian`, `denda`) VALUES
(1, 21, '2021-12-22', 110000),
(2, 21, '2021-12-22', 110000),
(3, 21, '2021-12-22', 110000),
(4, 21, '2021-12-22', 110000),
(5, 5, '2021-12-22', 55000),
(6, 6, '2021-12-22', 55000),
(7, 6, '2021-12-22', 55000),
(8, 6, '2021-12-22', 55000),
(9, 6, '2021-12-22', 55000),
(10, 6, '2021-12-22', 55000),
(11, 7, '2021-12-22', 55000),
(12, 8, '2021-12-22', 55000),
(13, 15, '2021-12-22', 20000),
(14, 12, '2021-12-22', 20000),
(15, 22, '2021-12-22', 110000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `detail_peminjaman_buku`
--
ALTER TABLE `detail_peminjaman_buku`
  ADD PRIMARY KEY (`id_detail_peminjaman_buku`),
  ADD KEY `id_peminjaman_buku` (`id_peminjaman_buku`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  ADD PRIMARY KEY (`id_peminjaman_buku`),
  ADD KEY `id_mhs` (`id_mhs`);

--
-- Indexes for table `pengembalian_buku`
--
ALTER TABLE `pengembalian_buku`
  ADD PRIMARY KEY (`id_pengembalianbuku`),
  ADD KEY `id_peminjaman_buku` (`id_peminjaman_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `detail_peminjaman_buku`
--
ALTER TABLE `detail_peminjaman_buku`
  MODIFY `id_detail_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  MODIFY `id_peminjaman_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pengembalian_buku`
--
ALTER TABLE `pengembalian_buku`
  MODIFY `id_pengembalianbuku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_peminjaman_buku`
--
ALTER TABLE `detail_peminjaman_buku`
  ADD CONSTRAINT `detail_peminjaman_buku_ibfk_1` FOREIGN KEY (`id_peminjaman_buku`) REFERENCES `peminjaman_buku` (`id_peminjaman_buku`),
  ADD CONSTRAINT `detail_peminjaman_buku_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);

--
-- Constraints for table `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  ADD CONSTRAINT `peminjaman_buku_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`);

--
-- Constraints for table `pengembalian_buku`
--
ALTER TABLE `pengembalian_buku`
  ADD CONSTRAINT `pengembalian_buku_ibfk_1` FOREIGN KEY (`id_peminjaman_buku`) REFERENCES `peminjaman_buku` (`id_peminjaman_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
