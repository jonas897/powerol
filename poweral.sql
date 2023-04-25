-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2023 at 01:26 PM
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
-- Database: `poweral`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `Make` varchar(255) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Reg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `First_Name` int(11) NOT NULL,
  `Last_Name` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phonenumner` int(11) NOT NULL,
  `Adress` varchar(255) NOT NULL,
  `PostCode` int(11) NOT NULL,
  `City` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Pris` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `material_in_projekt`
--

CREATE TABLE `material_in_projekt` (
  `id` int(11) NOT NULL,
  `User_fr` int(11) NOT NULL,
  `Date` date NOT NULL,
  `m_fk` int(11) NOT NULL,
  `p_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projekt`
--

CREATE TABLE `projekt` (
  `id` int(11) NOT NULL,
  `Date_Start` date NOT NULL,
  `Date_Deadline` date NOT NULL,
  `Headline` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Customer_fk` int(11) NOT NULL,
  `Car_fk` int(11) NOT NULL,
  `Status_fk` int(11) NOT NULL,
  `Creater_fk` int(11) NOT NULL,
  `Material_Used_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `p_status`
--

CREATE TABLE `p_status` (
  `id` int(11) NOT NULL,
  `Status_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table_role`
--

CREATE TABLE `table_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_role`
--

INSERT INTO `table_role` (`role_id`, `role_name`, `role_level`) VALUES
(1, 'user', 1),
(2, 'admin', 5);

-- --------------------------------------------------------

--
-- Table structure for table `table_status`
--

CREATE TABLE `table_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_status`
--

INSERT INTO `table_status` (`status_id`, `status_name`) VALUES
(1, 'active'),
(2, 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `u_password` varchar(256) NOT NULL,
  `u_firstname` varchar(255) NOT NULL,
  `u_lastname` varchar(255) NOT NULL,
  `u_email` varchar(255) NOT NULL,
  `u_role_fk` int(11) NOT NULL,
  `u_status_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`u_id`, `u_name`, `u_password`, `u_firstname`, `u_lastname`, `u_email`, `u_role_fk`, `u_status_fk`) VALUES
(1, 'matte', 'matheus2014', 'matheus', 'käld', 'm.stenkald@gmail.com', 0, 0),
(3, 'jonas', 'Nummenpää', 'jonneboi', 'jonas@gmail.com', '$2y$10$wMZ1/hfHp8czLPdvQm2Tb.4lKomYw/pBpGABShR.c3tYc7V/yyqBO', 0, 0),
(5, 'jonas', 'Nummenpää', 'jonneboi', 'jonas@gmail.com', '$2y$10$3cr/577avaAu2IjLAXulfeCyL0NCOxjoSKjFoP9N5DWfni2fHcr8q', 0, 0),
(6, 'suni', 'suni', 'suniboi', 'suni@gmail.com', '$2y$10$eR7J8TrcAr4TrTtmKBD5euRADa0ddWdkffx7bMi4Apcy92OYaITuO', 0, 0),
(7, 'Henrik', 'karlsson', 'henkkoboi', 'henrik.karlsson@gmail.com', '$2y$10$85soAhN2/z8q5azj2/hjt.negjlfJ6s0YPHUTSEDqH0VLon0b0CDe', 0, 0),
(8, 'Henrik', 'karlsson', 'henkkoboi', 'henrik.karlsson@gmail.com', '$2y$10$Bqo5cdFansLV4iDe0vM.9ewDxx2XRKaIn3C6zLGFp6n3lI65.9LxO', 0, 0),
(9, 'Henrik', 'karlsson', 'henkkoboi', 'henrik.karlsson@gmail.com', '$2y$10$haeY2tc6qVAMiZLM711a1e3CtqJPv7NYi4OctZzIerIQBIAOGoZ7S', 0, 0),
(10, 'Henrik', 'karlsson', 'henkkoboi', 'henrik.karlsson@gmail.com', '$2y$10$QhG.LsplVPr65HPBoQh61.9lggdZSWhGDfKWUBlSXUdmP4FFmNh8W', 0, 0),
(11, 'dsa', 'dsa', 'dsa', 'dsa@dsa.dsa', '$2y$10$pCfnK6lokldi1tqvS5GtaejxfBG2fcZQfpxgd4RUNdPgvWg02d93u', 0, 0),
(12, 'jessica', 'björn', 'jessso', 'jessicabjorn@gmail.com', '$2y$10$yUlIQjpvijusy0swgawFoOS4CHOIWGsbXORgsSPUuqNevvCK5bj4q', 0, 0),
(14, 'pellekalle', '$2y$10$5xB1Ld/cxOnArMa9MBGvnuVCnqgm5hGciXhYtVfCsD7UWJFwvjDfS', 'pelle', 'pelle', 'pellekalle@gmail.com', 2, 1),
(15, 'abc', '$2y$10$xSWpKQ4.tDuSiQv6I9Pwhu7rBy7Gj/YMAudoVMULboiWaI3tTIyHm', 'ad', 'asd', 'abc@gmail.com', 1, 1),
(16, 'amiar', '$2y$10$oZ.mqRpUqXiLYrT1tHq3Iez1b/2H65DTjIL63WFuf6IDXacwk4LIi', 'ami', 'ami', 'ami@gmail.com', 1, 1),
(17, 'matheus', '$2y$10$lvcRK3yDH6CMmQh4HSx.juqPWgeWko/UQd6mo0HSWoADBjgVY3hju', 'matheus', 'm', 'matheus@gmaio.com', 2, 1),
(18, '12', '$2y$10$BxJTwHcTDQ0puwGKroCa.uxF2kK/Pz8ZMS7rLTGoOLvkB60dH6hie', '12', '12', 'm.stenkald@gmail.com', 2, 1),
(19, '15', '$2y$10$G7GFW4QoH.cV4VLD/o0hve4/BHnWz1mukL6n/Guhy3g9w7KwSdyB2', '15', '15', 'fefe15@gger.com', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `work_houres`
--

CREATE TABLE `work_houres` (
  `id` int(11) NOT NULL,
  `u_fk` int(11) NOT NULL,
  `p_fk` int(11) NOT NULL,
  `Houres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_in_projekt`
--
ALTER TABLE `material_in_projekt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projekt`
--
ALTER TABLE `projekt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_status`
--
ALTER TABLE `p_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_role`
--
ALTER TABLE `table_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `table_status`
--
ALTER TABLE `table_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `work_houres`
--
ALTER TABLE `work_houres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `material_in_projekt`
--
ALTER TABLE `material_in_projekt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projekt`
--
ALTER TABLE `projekt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_status`
--
ALTER TABLE `p_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `table_role`
--
ALTER TABLE `table_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_status`
--
ALTER TABLE `table_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_user`
--
ALTER TABLE `table_user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `work_houres`
--
ALTER TABLE `work_houres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
