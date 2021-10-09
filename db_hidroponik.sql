-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2021 at 05:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hidroponik`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontrolnutiris`
--

CREATE TABLE `kontrolnutiris` (
  `id` int(11) NOT NULL,
  `kontrolnutrisi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monitoringkelembapan`
--

CREATE TABLE `monitoringkelembapan` (
  `id` int(11) NOT NULL,
  `kelembapan` float NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoringkelembapan`
--

INSERT INTO `monitoringkelembapan` (`id`, `kelembapan`, `tanggal`, `jam`) VALUES
(1, 68, '2021-10-04', '20:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `monitoringnutrisi`
--

CREATE TABLE `monitoringnutrisi` (
  `id` int(11) NOT NULL,
  `nutrisi` float NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoringnutrisi`
--

INSERT INTO `monitoringnutrisi` (`id`, `nutrisi`, `tanggal`, `jam`) VALUES
(1, 750, '2021-10-04', '21:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `monitoringsuhuair`
--

CREATE TABLE `monitoringsuhuair` (
  `id` int(11) NOT NULL,
  `suhuair` float NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoringsuhuair`
--

INSERT INTO `monitoringsuhuair` (`id`, `suhuair`, `tanggal`, `jam`) VALUES
(1, 33, '2021-10-05', '21:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `monitoringsuhuudara`
--

CREATE TABLE `monitoringsuhuudara` (
  `id` int(11) NOT NULL,
  `suhuudara` float NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoringsuhuudara`
--

INSERT INTO `monitoringsuhuudara` (`id`, `suhuudara`, `tanggal`, `jam`) VALUES
(1, 29, '2021-10-04', '22:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `monitoringvolumeair`
--

CREATE TABLE `monitoringvolumeair` (
  `id` int(11) NOT NULL,
  `volumeair` float NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monitoringvolumeair`
--

INSERT INTO `monitoringvolumeair` (`id`, `volumeair`, `tanggal`, `jam`) VALUES
(1, 77, '2021-10-05', '21:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `prediksi`
--

CREATE TABLE `prediksi` (
  `seri` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `namapenanam` varchar(100) NOT NULL,
  `jenistanaman` varchar(100) NOT NULL,
  `jumlahtanaman` int(11) NOT NULL,
  `tglsemai` date NOT NULL,
  `prediksiparalon` date NOT NULL,
  `prediksipanen` date NOT NULL,
  `estimasipenjualan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prediksi`
--

INSERT INTO `prediksi` (`seri`, `id`, `namapenanam`, `jenistanaman`, `jumlahtanaman`, `tglsemai`, `prediksiparalon`, `prediksipanen`, `estimasipenjualan`) VALUES
(1, 5, 'raka', 'Kangkung', 30, '2021-09-30', '2021-10-07', '2021-10-21', 30000),
(3, 5, 'jono', 'Kangkung', 20, '2021-09-30', '2021-10-07', '2021-10-21', 20000),
(4, 1, 'dadung', 'Pakcoy', 30, '2021-09-30', '2021-10-07', '2021-11-04', 150000),
(17, 1, 'rima', 'Kangkung', 30, '2021-10-01', '2021-10-08', '2021-10-22', 30000),
(18, 5, 'sukma', 'Kangkung', 3, '2021-10-04', '2021-10-11', '2021-10-25', 3000),
(19, 5, 'krisna', 'Pakcoy', 70, '2021-10-04', '2021-10-11', '2021-11-08', 350000),
(20, 1, 'rindaman', 'Pakcoy', 30, '2021-10-10', '2021-10-17', '2021-11-14', 150000),
(21, 1, 'crows', 'Pakcoy', 60, '2021-10-06', '2021-10-13', '2021-11-10', 300000),
(22, 1, 'nanda', 'Pakcoy', 100, '2021-10-04', '2021-10-11', '2021-11-08', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`) VALUES
(1, 'hary', '$2y$10$CJnndzmCuRjw3dcc8gZjFu61wglQE.qci6aJk2Zbw91ABcB8YWSL2'),
(2, 'maulia', '$2y$10$8G8GEzo706rp/f7GfSW2HOs8esOMIm0GqE6OWDMw0GOZxPUHYhQyO'),
(3, 'rizky', '$2y$10$jGMkdTtICnmBJVOlGrlI7.5qH1WQ1orxq8jwo3xiGWJmXyFQo9Bau'),
(4, 'akub', '$2y$10$bg19xS8Yt11uz3BXhLSeLOWS9EM0Y59.1WOBvucfRf/aXOPoXsjzi'),
(5, 'fany', '$2y$10$n0MxSGLD4BWohY3jmsDy3OSwpAzSTM6QDWXW9uTkDE8FxnYdk4Icq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontrolnutiris`
--
ALTER TABLE `kontrolnutiris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoringkelembapan`
--
ALTER TABLE `monitoringkelembapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoringnutrisi`
--
ALTER TABLE `monitoringnutrisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoringsuhuair`
--
ALTER TABLE `monitoringsuhuair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoringsuhuudara`
--
ALTER TABLE `monitoringsuhuudara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monitoringvolumeair`
--
ALTER TABLE `monitoringvolumeair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prediksi`
--
ALTER TABLE `prediksi`
  ADD PRIMARY KEY (`seri`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontrolnutiris`
--
ALTER TABLE `kontrolnutiris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monitoringkelembapan`
--
ALTER TABLE `monitoringkelembapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monitoringnutrisi`
--
ALTER TABLE `monitoringnutrisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monitoringsuhuair`
--
ALTER TABLE `monitoringsuhuair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `monitoringsuhuudara`
--
ALTER TABLE `monitoringsuhuudara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `monitoringvolumeair`
--
ALTER TABLE `monitoringvolumeair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prediksi`
--
ALTER TABLE `prediksi`
  MODIFY `seri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
