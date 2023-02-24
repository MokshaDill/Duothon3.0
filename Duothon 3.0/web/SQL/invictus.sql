-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 09:16 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invictus`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `ID` varchar(10) NOT NULL,
  `Drug_Name` varchar(20) NOT NULL,
  `Manufacturer` varchar(30) NOT NULL,
  `Supplier` varchar(30) NOT NULL,
  `NDC` varchar(30) NOT NULL,
  `Explaration_Date` datetime NOT NULL,
  `Quantity` int(10) NOT NULL,
  `Unit_Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`ID`, `Drug_Name`, `Manufacturer`, `Supplier`, `NDC`, `Explaration_Date`, `Quantity`, `Unit_Price`) VALUES
('100', 'Coamoxiclave', 'USAntibitics', 'sun pharmaceutical', '43598-003-51-600', '2023-02-23 13:29:32', 50, 72),
('101', 'Losartan Pottacium', 'Zudus Cadila', 'Sunshine pharmaceutical', '60505-3160-0', '2023-02-20 13:39:05', 20, 46);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `Pharmacy_Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Pharmacy_Licence_Number` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`Pharmacy_Licence_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
