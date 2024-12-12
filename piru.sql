-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 05:31 AM
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
-- Database: `piru`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `UserID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`UserID`, `username`, `password`, `email`, `role`) VALUES
(1, 'himaic', 'salamic', 'ic@kwikkiangie.ac.id', 'user'),
(2, 'himaasta', 'salamasta', 'hima.akuntansi@kwikkiangie.ac.id', 'user'),
(3, 'ricky', 'salamrtu', 'ricky.rugrebregt@kwikkiangie.ac.id', 'admin'),
(4, 'wiwin', 'salamrektordua', 'wiwin.prastio@kwikkiangie.ac.id', 'admin'),
(5, 'budi', 'salamrektorsatu', 'budi.widyo@kwikkiangie.ac.id', 'admin'),
(6, 'joko', 'pembinaic', 'joko.susilo@kwikkiangie.ac.id', 'admin'),
(7, 'imam', 'pembinaimaji', 'imam@kwikkiangie.ac.id', 'admin'),
(8, 'sylvia', 'pembinahimabi', 'sylvia.rosalina@kwikkiangie.ac.id', 'admin'),
(9, 'hanif', 'pembinaasta', 'hanif.ismail@kwikkiangie.ac.id', 'admin'),
(10, 'abdul', 'pembinahimamen', 'abdullah.rakhman@kwikkiangie.ac.id', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `borrowings`
--

CREATE TABLE `borrowings` (
  `BorrowID` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `room` varchar(255) NOT NULL,
  `participants` int(11) NOT NULL,
  `equipments` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `spembina` tinyint(1) DEFAULT NULL,
  `sricky` tinyint(1) DEFAULT NULL,
  `sbudi` tinyint(1) DEFAULT NULL,
  `swiwin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowings`
--

INSERT INTO `borrowings` (`BorrowID`, `date`, `name`, `activity`, `time`, `room`, `participants`, `equipments`, `username`, `spembina`, `sricky`, `sbudi`, `swiwin`) VALUES
(1, '2024-06-13', 'Ken', 'Study Jam 7 Learning Path Machine Learning GDSC', '13:30:00', 'd4', 30, '-', 'himaasta', 1, NULL, 1, 0),
(3, '2024-06-05', 'Ivander', 'Rapat Asisten Dosen', '17:00:00', '2.5', 10, 'Mic', 'himaic', NULL, NULL, NULL, NULL),
(4, '2024-06-05', 'Alea', 'Senam Bersama ( Campus Visit )', '07:00:00', '2.10', 40, 'Speaker', 'himaic', NULL, NULL, NULL, NULL),
(5, '2024-06-04', 'Gelalio', 'Interview GDSC', '15:30:00', '2.5', 40, 'Meja dan Kursi', 'himaic', NULL, NULL, NULL, NULL),
(6, '2024-06-06', 'Jay', 'Campus Visit DBB', '16:00:00', '2.2', 100, '', 'himaic', 0, NULL, 1, NULL),
(8, '2024-06-09', 'Kane', 'Rapat FGI', '07:00:00', '2.6', 60, '-', 'himaic', NULL, NULL, NULL, NULL),
(9, '2024-06-28', 'Valencia', 'Rapat BPM', '11:30:00', '1.6', 30, '-', 'himaic', NULL, NULL, NULL, NULL),
(10, '2024-06-20', 'Cia Melati', 'Event BPM', '13:45:00', '2.4', 80, 'Mic', 'himaic', NULL, NULL, NULL, NULL),
(11, '2024-12-05', 'Sarah', 'Rapat', '14:10:00', '1.10', 40, '-', 'himaic', NULL, NULL, NULL, NULL),
(12, '2024-12-12', 'Aya', 'Rapat IC', '12:15:00', '2.5', 30, 'AC', 'himaic', NULL, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`BorrowID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `BorrowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
