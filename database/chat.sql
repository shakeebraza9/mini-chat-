-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 08:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `test.chat`
--

CREATE TABLE `test.chat` (
  `__id` int(4) NOT NULL,
  `sesId` varchar(255) DEFAULT NULL,
  `user` varchar(64) DEFAULT NULL,
  `room_name` varchar(128) DEFAULT NULL,
  `__login` datetime DEFAULT NULL,
  `__logout` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test.rooms`
--

CREATE TABLE `test.rooms` (
  `__id` int(4) NOT NULL,
  `room_name` varchar(128) NOT NULL,
  `creator` varchar(64) NOT NULL,
  `no_of_users` int(3) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test.chat`
--
ALTER TABLE `test.chat`
  ADD PRIMARY KEY (`__id`);

--
-- Indexes for table `test.rooms`
--
ALTER TABLE `test.rooms`
  ADD PRIMARY KEY (`__id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test.chat`
--
ALTER TABLE `test.chat`
  MODIFY `__id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test.rooms`
--
ALTER TABLE `test.rooms`
  MODIFY `__id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
