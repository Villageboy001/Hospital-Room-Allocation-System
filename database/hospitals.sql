-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2020 at 10:43 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitals`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Username`, `Password`, `Date_create`) VALUES
(1, 'admin', 'kabiru', '2020-02-14 16:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `Bed_No` int(11) NOT NULL,
  `Bed_Name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `capacity` varchar(100) NOT NULL,
  `Bed_Id` varchar(11) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `image5` varchar(100) NOT NULL,
  `Date_Admitted` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`Bed_No`, `Bed_Name`, `description`, `capacity`, `Bed_Id`, `image1`, `image2`, `image3`, `image4`, `image5`, `Date_Admitted`) VALUES
(3, 'village boy', 'kabiru', '10', '3', 'IMG_20171106_152955.jpg', 'IMG_20171106_170258.jpg', 'IMG_20171114_113922.jpg', 'IMG_20171124_110748.jpg', 'IMG_20171124_111031.jpg', '2020-02-17 12:18:08'),
(4, 'Programmer ', 'This is special room for Programmers ', '20', '4', 'A2.jpg', 'A3.jpg', 'A7.jpg', 'A8.jpg', 'BlueStacks_2019.08.10_08.34.05.56.jpg', '2020-02-17 22:00:16'),
(6, 'kabiru adesina', 'this the room jare', '4', '2', 'BlueStacks_2020.01.06_22.22.44.56.jpg', 'BlueStacks_2020.01.06_22.23.12.51.jpg', 'A10.jpg', 'A10.jpg', 'A8.jpg', '2020-02-17 22:05:52'),
(7, 'Adebayo Medinah', 'This is intensive room for rich patient', '2', '4', 's3.jpg', 's4.jpg', 'img1.jpg', 'img2.jpg', 'img8.jpg', '2020-02-19 08:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `bedding`
--

CREATE TABLE `bedding` (
  `ID` int(11) NOT NULL,
  `room` varchar(100) DEFAULT NULL,
  `patient_id` varchar(100) DEFAULT NULL,
  `Patient` varchar(100) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Status` int(15) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bedding`
--

INSERT INTO `bedding` (`ID`, `room`, `patient_id`, `Patient`, `Address`, `Status`, `Date`) VALUES
(9, '3', 'vb@oka.com', '', '', 4, '2020-02-19 08:53:18'),
(10, '4', NULL, NULL, NULL, 1, '2020-02-17 18:16:31'),
(11, '2', NULL, NULL, NULL, 1, '2020-02-17 22:05:52'),
(12, '4', NULL, NULL, NULL, 1, '2020-02-19 08:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `ID` int(11) NOT NULL,
  `Room` varchar(100) NOT NULL,
  `Date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`ID`, `Room`, `Date_created`) VALUES
(1, 'Male', '2020-02-15 16:54:15'),
(2, 'Female', '2020-02-16 10:23:29'),
(3, 'Children', '2020-02-16 10:23:37'),
(4, 'Intensive', '2020-02-16 10:23:48'),
(5, 'Emergency', '2020-02-16 10:23:58'),
(6, 'Discharged', '2020-02-16 10:24:15'),
(7, 'Reception', '2020-02-16 10:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `Mobile` int(15) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Blood` varchar(3) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Date Register` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Last_Update` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Full_Name`, `Address`, `City`, `dob`, `Mobile`, `Email`, `Blood`, `Category`, `Password`, `Date Register`, `Last_Update`) VALUES
(4, 'OLUOKUN KABIRU ADESINA', 'Akaje compound ', 'ISEYIN, Oyo State', '2020-02-02', 2147483647, 'vb@oka.com', 'A+', 'Female', 'oka', '2020-02-16 10:37:03', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`Bed_No`);

--
-- Indexes for table `bedding`
--
ALTER TABLE `bedding`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `Bed_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bedding`
--
ALTER TABLE `bedding`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
