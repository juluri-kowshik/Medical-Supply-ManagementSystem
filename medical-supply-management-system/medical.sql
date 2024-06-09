-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 04:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `addmp`
--

CREATE TABLE `addmp` (
  `sno` int(11) NOT NULL,
  `medicine` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addmp`
--

INSERT INTO `addmp` (`sno`, `medicine`) VALUES
(1, 'Dolo 650'),
(2, 'Carpel 250 mg'),
(3, 'Azythromycin 500'),
(4, 'Azythromycin 250'),
(5, 'Rantac 300'),
(6, 'Omez'),
(7, 'Okacet'),
(8, 'Paracetomol');

-- --------------------------------------------------------

--
-- Table structure for table `addpd`
--

CREATE TABLE `addpd` (
  `sno` int(11) NOT NULL,
  `product` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpd`
--

INSERT INTO `addpd` (`sno`, `product`) VALUES
(1, 'stethoscope'),
(2, 'scissor'),
(3, 'magnifier'),
(4, 'first aid kid'),
(5, 'weighhing scale'),
(6, 'syringe'),
(7, 'face mask'),
(8, 'clutches');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `action` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `mid`, `action`, `date`) VALUES
(8, 6873, ' INSERTED', '2023-11-01 22:23:12'),
(9, 6873, ' UPDATED', '2023-11-01 22:31:52'),
(10, 5673, ' INSERTED', '2023-11-01 22:35:17'),
(11, 6873, ' INSERTED', '2023-11-01 22:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `medicines` varchar(500) NOT NULL,
  `products` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `amount`, `name`, `medicines`, `products`, `email`, `mid`) VALUES
(4, 700, 'karri venkatesh', 'dolo 650', 'scissiors, first aid kit', 'vkarri4@gitam.in', '6873'),
(5, 400, 'tharun', 'rantac 300', 'face mask', 'tbolaula@gitam.in', '5673'),
(6, 50, 'krishna', 'dolo', '', 'uobulupu@gitam.in', '6873');

--
-- Triggers `medicines`
--
DELIMITER $$
CREATE TRIGGER `Delete` BEFORE DELETE ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,OLD.mid,' DELETED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Insert` AFTER INSERT ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,NEW.mid,' INSERTED',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Update` AFTER UPDATE ON `medicines` FOR EACH ROW INSERT INTO Logs VALUES(null,NEW.mid,' UPDATED',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `mid` int(11) NOT NULL,
  `medical_name` varchar(100) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`mid`, `medical_name`, `owner_name`, `phone_no`, `address`) VALUES
(5673, 'sri rama medicals', 'pavan', '7702227652', 'Police Quarters road, Vishalakshi Nagar , VISHAKAP'),
(6873, 'GIMSR MEDICALS', 'GITAM', '0891266756', 'GANDHI ROAD ENDADA RUSHIKONDA 530045');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addmp`
--
ALTER TABLE `addmp`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `addpd`
--
ALTER TABLE `addpd`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`mid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addmp`
--
ALTER TABLE `addmp`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `addpd`
--
ALTER TABLE `addpd`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6874;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
