-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 09:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `data dosen`
--

CREATE TABLE `data dosen` (
  `no` int(11) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `kode_dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data dosen`
--

INSERT INTO `data dosen` (`no`, `nama_dosen`, `kode_dosen`) VALUES
(1, 'Wangsit Supeno, SE, MM', 'WSS'),
(2, 'Anggi Puspita Sari, ST', 'APR'),
(3, 'Harsih Rianto, S.Kom, M.Kom', 'HHR'),
(4, 'Agung Suprianto, M.Ak', 'GSP'),
(5, 'Achmad Baroqah Pohan', 'ABQ'),
(6, 'Rani, S.Pd, MM', 'RXA'),
(7, 'Yunita, M.Kom', 'YNT');

-- --------------------------------------------------------

--
-- Table structure for table `data mahasiswa`
--

CREATE TABLE `data mahasiswa` (
  `no` int(10) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `nim` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data mahasiswa`
--

INSERT INTO `data mahasiswa` (`no`, `nama_mahasiswa`, `nim`) VALUES
(1, 'Adelia Agustine', 19220295),
(2, 'Muhammad Rifqi Muthidhane Thamzil', 19220931),
(3, 'Muhamad Zidane Setiawan', 19220968),
(4, 'Muhammad Ghozali Matondang', 19221195),
(5, 'Rien Nurul Aini Cahayu', 19221331),
(6, 'Muhammad Izharul Haq', 19221443);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal matakuliah`
--

CREATE TABLE `jadwal matakuliah` (
  `no` int(11) NOT NULL,
  `matakuliah` varchar(255) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal matakuliah`
--

INSERT INTO `jadwal matakuliah` (`no`, `matakuliah`, `nama_dosen`, `sks`) VALUES
(1, 'Character Building', 'Wangsit Supeno, SE, MM', 3),
(2, 'Sistem Operasi', 'Anggi Puspita Sari, ST', 3),
(3, 'Pemodelan Sistem Berorientasi Objek', 'Harsih Rianto, S.Kom, M.Kom', 4),
(4, 'Akuntansi Dasar Dan Praktik', 'Agung Suprianto, M.Ak', 3),
(5, 'Web Programming 2', 'Achmad Baroqah Pohan, M.Kom', 4),
(6, 'Statistika', 'Rani, S.Pd, MM', 3),
(7, 'Sistem Informasi Manajemen', 'Yunita, M.Kom', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data dosen`
--
ALTER TABLE `data dosen`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `data mahasiswa`
--
ALTER TABLE `data mahasiswa`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `jadwal matakuliah`
--
ALTER TABLE `jadwal matakuliah`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data dosen`
--
ALTER TABLE `data dosen`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data mahasiswa`
--
ALTER TABLE `data mahasiswa`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jadwal matakuliah`
--
ALTER TABLE `jadwal matakuliah`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
