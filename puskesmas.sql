-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 19, 2017 at 06:17 AM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `puskesmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `kontak_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_admin`, `kontak_admin`) VALUES
('admin1', 'admin1', 'Rengki Mc Carthy', 'Ojan15ti'),
('admin2', 'admin2', 'Ojan Johansberg', 'rengki15ti');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `regis_obat` varchar(100) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` varchar(100) NOT NULL,
  `harga_obat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`regis_obat`, `nama_obat`, `jenis_obat`, `harga_obat`) VALUES
('', 'Opii Pulv', 'N', '50000'),
('123', 'paracetamol', 'K', '2500'),
('124', 'Bodrex', 'B', '900'),
('125', 'Bodrexin', 'B', '780'),
('126', 'SanaFlu', 'B', '2000'),
('127', 'Asam Femenamat', 'T', '1200'),
('128', 'Rinos', 'T', '5000'),
('151', 'Rhino', 'Keras', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `pustu`
--

CREATE TABLE `pustu` (
  `id_pustu` int(100) NOT NULL,
  `nama_pustu` varchar(100) NOT NULL,
  `alamat_pustu` varchar(100) NOT NULL,
  `kontak_pustu` varchar(100) NOT NULL,
  `password_pustu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pustu`
--

INSERT INTO `pustu` (`id_pustu`, `nama_pustu`, `alamat_pustu`, `kontak_pustu`, `password_pustu`) VALUES
(1, 'pustu 1', 'jalan satu', '0812', 'pustu1'),
(2, 'pustu 2', 'jlaan dua', '0815', 'pustu2'),
(3, 'pustu 3', 'jalan satu', '0812', 'pustu3'),
(4, 'pustu 4', 'jlaan dua', '0815', 'pustu4'),
(5, 'pustu 5', 'jalan tiga', '0987', 'pustu5'),
(6, 'pustu 6', 'jalan empat', '0999', 'pustu6'),
(7, 'pustu 7', 'jalan tiga', '0987', 'pustu7');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(100) NOT NULL,
  `id_pustu` int(100) NOT NULL,
  `regis_obat` varchar(100) NOT NULL,
  `jumlah_stok` int(100) NOT NULL,
  `exp_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `id_pustu`, `regis_obat`, `jumlah_stok`, `exp_date`) VALUES
(2, 3, '123', 12, '2-8-2020'),
(5, 5, '124', 5, '8-6-2020'),
(12, 1, '124', 240, '24-8-2020'),
(17, 1, '124', 123, '12-12-2029'),
(18, 6, '129', 123, '12-12-2028'),
(19, 1, '123', 20, '25-1-2025'),
(21, 1, '125', 10000, '10-09-2030');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(100) NOT NULL,
  `id_pustu` int(100) NOT NULL,
  `regis_obat` varchar(100) NOT NULL,
  `pengurangan_stok` int(100) NOT NULL,
  `sisa_stok` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pustu`, `regis_obat`, `pengurangan_stok`, `sisa_stok`) VALUES
(1, 1, '124', 500, 1000),
(2, 1, '124', 200, 300),
(3, 1, '124', 20, 280),
(4, 1, '124', 30, 270),
(5, 1, '124', 20, 250),
(6, 1, '124', 1, 249),
(7, 1, '124', 9, 240),
(8, 1, '123', 30, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`regis_obat`);

--
-- Indexes for table `pustu`
--
ALTER TABLE `pustu`
  ADD PRIMARY KEY (`id_pustu`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD KEY `id_pustu` (`id_pustu`) USING BTREE,
  ADD KEY `regis_obat` (`regis_obat`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pustu`
--
ALTER TABLE `pustu`
  MODIFY `id_pustu` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `stok`
--
ALTER TABLE `stok`
  ADD CONSTRAINT `stok_ibfk_1` FOREIGN KEY (`id_pustu`) REFERENCES `pustu` (`id_pustu`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
