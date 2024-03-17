-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2018 at 05:28 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_breed`
--

CREATE TABLE `tbl_breed` (
  `breed_id` int(8) NOT NULL,
  `breed_name` varchar(20) NOT NULL,
  `type_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_breed`
--

INSERT INTO `tbl_breed` (`breed_id`, `breed_name`, `type_id`) VALUES
(1, 'Husky', 1),
(2, 'Persian', 2),
(3, 'Bulldog', 1),
(4, 'Askal', 1),
(5, 'Siamese', 2),
(6, 'Chicken', 4),
(7, 'frog', NULL),
(8, 'Cockroach', NULL),
(9, 'Pikachu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `Gender_ID` int(8) NOT NULL,
  `Gender_title` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gender`
--

INSERT INTO `tbl_gender` (`Gender_ID`, `Gender_title`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_owner`
--

CREATE TABLE `tbl_owner` (
  `owner_id` int(8) NOT NULL,
  `owner_name` varchar(20) DEFAULT NULL,
  `owner_age` int(2) NOT NULL,
  `Gender_ID` int(8) NOT NULL,
  `owner_address` varchar(30) NOT NULL,
  `owner_civilStatus` varchar(30) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_owner`
--

INSERT INTO `tbl_owner` (`owner_id`, `owner_name`, `owner_age`, `Gender_ID`, `owner_address`, `owner_civilStatus`, `date_added`) VALUES
(1, 'Anna', 15, 1, 'Puan', 'single', '0000-00-00 00:00:00'),
(2, 'Kyle', 21, 1, 'Matina', 'single', '0000-00-00 00:00:00'),
(3, 'John', 22, 1, 'Matina', 'Deceased', '0000-00-00 00:00:00'),
(4, 'Juan', 22, 1, 'Matina', 'single', '0000-00-00 00:00:00'),
(5, 'Fatima', 22, 1, 'Matina', 'single', '0000-00-00 00:00:00'),
(6, 'Celeste', 26, 1, 'Bankerohan', 'Married', '0000-00-00 00:00:00'),
(7, 'Francis', 15, 1, 'Obrero', 'Deceased', '0000-00-00 00:00:00'),
(8, 'Jave', 34, 1, 'Bajada', 'Married', '0000-00-00 00:00:00'),
(9, 'Jeffrey', 57, 1, 'bankerohan', 'Married', '0000-00-00 00:00:00'),
(10, 'Vince', 13, 1, 'Obrero', 'Divorce', '0000-00-00 00:00:00'),
(11, 'Eugene', 16, 1, 'Buhangin', 'single', '0000-00-00 00:00:00'),
(12, 'Rona', 33, 1, 'Toril', 'Divorce', '0000-00-00 00:00:00'),
(13, 'Thelmo', 20, 1, 'Toril', 'Widowed', '0000-00-00 00:00:00'),
(14, 'Connie', 12, 1, 'Bankerohan', 'Widowed', '0000-00-00 00:00:00'),
(15, 'Mart', 16, 1, 'Bajada', 'single', '0000-00-00 00:00:00'),
(16, 'Mart', 21, 1, 'Bajada', 'single', '0000-00-00 00:00:00'),
(17, 'Melyn', 24, 1, 'Bajada', 'single', '0000-00-00 00:00:00'),
(18, 'Botchoy', 50, 1, 'Boulevard', 'single', '0000-00-00 00:00:00'),
(19, 'Chester', 29, 1, 'Buhangin', 'single', '0000-00-00 00:00:00'),
(21, 'Paul', 29, 1, 'Buhangin', 'single', '0000-00-00 00:00:00'),
(22, 'Frank', 39, 1, 'Buhangin', 'single', '0000-00-00 00:00:00'),
(23, 'Frank', 93, 1, 'Blvd', 'single', '0000-00-00 00:00:00'),
(24, 'Mel', 99, 1, 'Maa', 'single', '0000-00-00 00:00:00'),
(25, 'Justin', 100, 1, 'Maa', 'Married', '0000-00-00 00:00:00'),
(26, 'Shane', 10, 1, 'Maa', 'Married', '0000-00-00 00:00:00'),
(27, 'April', 12, 1, 'Maa', 'Married', '0000-00-00 00:00:00'),
(28, 'Mary', 18, 1, 'Ma-a', 'Married', '0000-00-00 00:00:00'),
(29, 'Marky', 85, 1, 'Gravahan', 'Widowed', '0000-00-00 00:00:00'),
(30, 'Raphy', 22, 1, 'Alaska', 'single', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet`
--

CREATE TABLE `tbl_pet` (
  `pet_id` int(8) NOT NULL,
  `owner_id` int(8) DEFAULT NULL,
  `pet_name` varchar(20) NOT NULL,
  `pet_age` int(2) NOT NULL,
  `pet_gender` int(8) NOT NULL,
  `pet_price` double(12,2) NOT NULL,
  `pet_color` varchar(20) NOT NULL,
  `pet_breed` int(8) NOT NULL,
  `status_id` int(8) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pet`
--

INSERT INTO `tbl_pet` (`pet_id`, `owner_id`, `pet_name`, `pet_age`, `pet_gender`, `pet_price`, `pet_color`, `pet_breed`, `status_id`, `date_added`) VALUES
(1000, NULL, 'scarlet', 10, 2, 12343.00, 'red', 5, 4, '2018-04-27 08:38:04'),
(1001, 1, 'Anjun', 13, 2, 1221.34, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1002, 2, 'Christ', 12, 2, 2342.23, 'orange', 4, 1, '2018-04-27 05:41:14'),
(1003, 5, 'Dianne', 18, 1, 1345.13, 'red', 3, 1, '2018-04-27 05:41:14'),
(1004, 21, 'Roldan', 28, 2, 435.10, 'blue', 5, 1, '2018-04-27 05:41:14'),
(1005, 13, 'April', 28, 2, 5435.10, 'orange', 6, 1, '2018-04-27 05:41:14'),
(1006, 24, 'Shedi', 58, 2, 5435.10, 'Dirty Black', 5, 1, '2018-04-27 05:41:14'),
(1007, 29, 'Diana', 58, 1, 5435.10, 'brown', 3, 1, '2018-04-27 05:41:14'),
(1008, 19, 'Rhunick', 12, 2, 1435.10, 'Dirty Black', 6, 1, '2018-04-27 05:41:14'),
(1010, 19, 'Rhunick', 12, 2, 1435.10, 'blue', 2, 2, '2018-04-27 05:41:14'),
(1011, 16, 'Louie', 8, 2, 435.10, 'red', 3, 1, '2018-04-27 05:41:14'),
(1012, 15, 'Nepthalie', 35, 1, 785.10, 'Brown', 3, 1, '2018-04-27 05:41:14'),
(1013, 14, 'Jairah', 15, 2, 7385.10, 'Sky Green', 6, 1, '2018-04-27 05:41:14'),
(1014, 5, 'Sigrid', 25, 1, 5325.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1015, 2, 'Yvonne', 5, 2, 8325.10, 'Sky Green', 2, 1, '2018-04-27 05:41:14'),
(1016, 4, 'Melanie', 3, 2, 825.10, 'Black', 3, 1, '2018-04-27 05:41:14'),
(1017, 7, 'Philip', 6, 2, 85.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1018, 12, 'Michael', 13, 2, 185.10, 'white', 4, 1, '2018-04-27 05:41:14'),
(1019, 23, 'Jeff', 23, 1, 585.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1020, 3, 'Gabriel', 3, 2, 55.10, 'blue', 3, 2, '2018-04-27 05:41:14'),
(1021, 11, 'Lloyd', 12, 1, 15.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1022, 15, 'Floro', 2, 1, 135.10, 'red', 1, 1, '2018-04-27 05:41:14'),
(1023, 1, 'Tahir', 1, 2, 235.10, 'brown', 5, 1, '2018-04-27 05:41:14'),
(1024, 21, 'Krizia', 4, 1, 152.10, 'blue', 1, 1, '2018-04-27 05:41:14'),
(1025, 2, 'Angelou', 3, 1, 23215.10, 'blue', 1, 1, '2018-04-27 05:41:14'),
(1026, 4, 'Lolivy', 6, 1, 3215.10, 'brown', 1, 1, '2018-04-27 05:41:14'),
(1027, 1, 'Gem', 32, 1, 565.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1028, 4, 'jim', 6, 2, 3215.10, 'blue', 4, 1, '2018-04-27 05:41:14'),
(1029, 1, 'Kenneth', 7, 1, 215.10, 'Rainbow', 1, 1, '2018-04-27 05:41:14'),
(1030, 2, 'Jr', 5, 2, 1215.15, 'Gray', 5, 1, '2018-04-27 05:41:14'),
(1031, 2, 'Francis', 5, 1, 4515.10, 'blue', 1, 1, '2018-04-27 05:41:14'),
(1032, 5, 'Billy', 15, 1, 987.10, 'brown', 3, 1, '2018-04-27 05:41:14'),
(1033, 1, 'Alfred', 25, 1, 1987.10, 'pink', 3, 1, '2018-04-27 05:41:14'),
(1034, 1, 'Bien', 5, 2, 1987.10, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1035, 7, 'Cyril', 4, 2, 3987.10, 'red', 6, 1, '2018-04-27 05:41:14'),
(1036, 19, 'martzl', 12, 1, 3123.34, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1037, 1, 'karding', 34, 2, 21.00, 'Black', 4, 1, '2018-04-27 05:41:14'),
(1038, 1, 'dasd', 23, 1, 43423.00, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1039, 14, 'ddsa', 3, 1, 34.00, 'Gray', 1, 1, '2018-04-27 05:41:14'),
(1040, 1, 'sdfs', 342, 2, 4242.00, 'Gray', 5, 1, '2018-04-27 05:41:14'),
(1041, 1, 'fsdfs', 344, 2, 56.00, 'orange', 3, 1, '2018-04-27 05:41:14'),
(1042, 1, 'ffds', 43, 1, 534.00, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1043, 1, 'da', 23, 2, 2342.00, 'orange', 4, 1, '2018-04-27 05:41:14'),
(1044, 18, 'baste', 21, 1, 500.00, 'blue', 3, 1, '2018-04-27 05:41:14'),
(1045, 18, 'kyle', 23, 2, 4535.00, 'blue', 4, 1, '2018-04-27 05:41:14'),
(1046, 1, 'Chris', 3, 2, 342.00, 'Black', 6, 2, '2018-04-27 05:41:14'),
(1047, 1, 'Evans', 4, 1, 23432.00, 'Black', 1, 1, '2018-04-27 05:41:14'),
(1048, 3, 'Luphy', 12, 1, 23231.90, 'Green', 3, 1, '2018-04-27 05:41:14'),
(1049, 10, 'Sandara', 12, 1, 23231.90, 'Green', 3, 1, '2018-04-27 05:41:14'),
(1050, 11, 'Liza', 16, 2, 5231.90, 'Violet', 5, 1, '2018-04-27 05:41:14'),
(1051, NULL, 'Vision', 45, 1, 3424.00, 'blue', 9, 4, '2018-04-27 08:36:18'),
(1052, NULL, 'Thor', 2, 1, 5343.00, 'black', 8, 1, '2018-04-27 08:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(8) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`) VALUES
(1, 'Active'),
(2, 'Inactive'),
(3, 'Lost'),
(4, 'Borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `type_id` int(8) NOT NULL,
  `type_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`type_id`, `type_name`) VALUES
(1, 'Dog'),
(2, 'Cat'),
(3, 'Crocodile'),
(4, 'Bird'),
(5, 'lizard'),
(6, 'Frog');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_breed`
--
ALTER TABLE `tbl_breed`
  ADD PRIMARY KEY (`breed_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  ADD PRIMARY KEY (`Gender_ID`);

--
-- Indexes for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  ADD PRIMARY KEY (`owner_id`),
  ADD KEY `Gender_ID` (`Gender_ID`);

--
-- Indexes for table `tbl_pet`
--
ALTER TABLE `tbl_pet`
  ADD PRIMARY KEY (`pet_id`),
  ADD KEY `owner_id` (`owner_id`),
  ADD KEY `pet_breed` (`pet_breed`),
  ADD KEY `pet_gender` (`pet_gender`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_breed`
--
ALTER TABLE `tbl_breed`
  MODIFY `breed_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_gender`
--
ALTER TABLE `tbl_gender`
  MODIFY `Gender_ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `type_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_breed`
--
ALTER TABLE `tbl_breed`
  ADD CONSTRAINT `tbl_breed_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tbl_type` (`type_id`);

--
-- Constraints for table `tbl_owner`
--
ALTER TABLE `tbl_owner`
  ADD CONSTRAINT `tbl_owner_ibfk_1` FOREIGN KEY (`Gender_ID`) REFERENCES `tbl_gender` (`Gender_ID`);

--
-- Constraints for table `tbl_pet`
--
ALTER TABLE `tbl_pet`
  ADD CONSTRAINT `tbl_pet_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `tbl_owner` (`owner_id`),
  ADD CONSTRAINT `tbl_pet_ibfk_2` FOREIGN KEY (`pet_gender`) REFERENCES `tbl_gender` (`Gender_ID`),
  ADD CONSTRAINT `tbl_pet_ibfk_3` FOREIGN KEY (`pet_breed`) REFERENCES `tbl_breed` (`breed_id`),
  ADD CONSTRAINT `tbl_pet_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`status_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
