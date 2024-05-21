-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 06:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apnacab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(20) NOT NULL,
  `a_name` varchar(25) NOT NULL,
  `a_phone` int(10) NOT NULL,
  `a_address` varchar(50) NOT NULL,
  `a_email` varchar(30) NOT NULL,
  `admin_code` int(20) NOT NULL,
  `a_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `a_name`, `a_phone`, `a_address`, `a_email`, `admin_code`, `a_password`) VALUES
(1, 'Bedanta Nath', 2147483647, 'Nagaon', 'nathbedanta894@gmail.com', 6956, 'Bedanta@123'),
(2, 'Alok Sarma Bordoloi', 2147483647, 'Jorhat', 'alok@gmail.com', 6956, 'Alok@123'),
(3, 'Chandrani Bora', 2147483647, 'Jorhat', 'chandrani@gmail.com', 6956, 'Chandrani@123');

-- --------------------------------------------------------

--
-- Table structure for table `bill_payment`
--

CREATE TABLE `bill_payment` (
  `bill_id` int(10) NOT NULL,
  `ride_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `amount` varchar(10) DEFAULT NULL,
  `bill_date` date NOT NULL DEFAULT current_timestamp(),
  `name` varchar(50) NOT NULL,
  `card_number` int(20) NOT NULL,
  `expdate` int(10) NOT NULL,
  `cvv` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_payment`
--

INSERT INTO `bill_payment` (`bill_id`, `ride_id`, `customer_id`, `amount`, `bill_date`, `name`, `card_number`, `expdate`, `cvv`) VALUES
(29, 68, 15, '627', '2024-05-20', 'Bedanta Nath', 4000, 2, 659),
(30, 69, 15, '2150', '2024-05-20', 'Alok Sarma Bordoloi', 4100, 11, 256);

-- --------------------------------------------------------

--
-- Table structure for table `cab`
--

CREATE TABLE `cab` (
  `cab_id` int(11) NOT NULL,
  `license` varchar(20) NOT NULL,
  `registration_no` varchar(11) NOT NULL,
  `cab_name` varchar(11) NOT NULL,
  `cab_type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cab`
--

INSERT INTO `cab` (`cab_id`, `license`, `registration_no`, `cab_name`, `cab_type`) VALUES
(1, 'AS0120190000348', 'AS01R4456', 'swift dzire', 'car'),
(2, 'AS0120190000345', 'AS01R4457', 'suv', 'car'),
(3, 'AS0120200000342', 'AS01R4489', 'Brezza', 'car'),
(4, 'AS0320190000342', 'AS01R4457', 'Altro', 'car'),
(5, 'AS0920190000342', 'AS01D4957', 'Wagganer', 'car'),
(6, 'AS0120190000347', 'AS01E7450', 'SUV', 'car'),
(7, 'AS0520190000342', 'AS03Q6322', 'swift', 'car'),
(8, 'AS0120170000342', 'AS03P9812', 'swift', 'car'),
(9, 'MG0120190000342', 'AS03R4471', 'swift', 'car'),
(10, 'AS0620190000342', 'AS03R4422', 'swift', 'car'),
(11, 'AS0420190000342', 'AS03R1217', 'swift', 'car'),
(12, 'AS0120240000642', 'AS03R8857', 'swift', 'car'),
(13, 'AS0120190000342', 'AS01RD4365', 'SUV', 'Fortuner'),
(14, 'AS0120190000343', 'AS01RD4364', 'SUV', 'Bolero'),
(15, 'AS0220200001287', 'AS02R4365', 'SUV', 'THAR');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(20) NOT NULL,
  `c_name` varchar(25) DEFAULT NULL,
  `c_dob` date NOT NULL,
  `c_email_id` varchar(30) DEFAULT NULL,
  `c_phone_no` int(10) DEFAULT NULL,
  `c_gender` varchar(10) DEFAULT NULL,
  `c_password` varchar(25) DEFAULT NULL,
  `c_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `c_name`, `c_dob`, `c_email_id`, `c_phone_no`, `c_gender`, `c_password`, `c_address`) VALUES
(1, 'Bedanta', '2024-03-06', 'jason@gmail.com', 2147483647, 'm', 'jecMca@12', 'Nagaon'),
(2, 'Alok Sharma Bardoloi', '2024-03-09', 'alok@gmail.com', 2147483647, 'm', '$2y$10$Z.rvHNvJleOnHaROUI', 'Jorhat'),
(3, 'Ram Lal', '2024-03-01', 'ram@gmail.com', 2147483647, 'm', '123Aa@3g1', 'malow ali '),
(5, 'test', '2024-03-03', 'test@test.com', 2147483647, 'f', 'Test@123', 'Ghy'),
(6, 'Demo2', '2024-03-04', 'demo2@demo.com', 2147483647, 'f', '$2y$10$MEQv2n7lQZ3hWaXg9v', 'Demo'),
(7, 'Tiku Das', '2024-03-06', 'tiku@gmail.com', 2147483647, 'm', NULL, 'Tinisukia'),
(9, 'Tina', '2002-02-22', 'jason1@gmail.com', 2147483647, 'f', 'Asdf@123', 'jiugt'),
(10, 'Prem Prashad Ji', '2024-03-01', 'premji@gmail.com', 2147483647, 'm', 'Prem@123', 'Jorhat'),
(11, 'Abinash Borah', '1990-04-16', 'abinash@gmail.com', 2147483647, 'm', 'Abinash@123', 'Jorhat'),
(13, 'Bedanta Hunt', '2002-09-08', 'bedanta100@gmail.com', 2147483647, 'm', 'Bedanta@123', 'Ghy'),
(14, 'Deep Ekka', '2024-05-01', 'deep@gmail.com', 2147483647, 'm', 'Deep@123', 'Jorhat'),
(15, 'Alok Sarmah ', '2024-05-03', 'alok7001@gmail.com', 2147483647, 'm', 'alok123456A', 'malow ali');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `diver_id` int(10) NOT NULL,
  `cab_id` int(11) DEFAULT NULL,
  `diver_name` varchar(25) DEFAULT NULL,
  `d_dob` date NOT NULL,
  `d_email` varchar(20) NOT NULL,
  `d_password` varchar(25) DEFAULT NULL,
  `d_phone_no` int(10) DEFAULT NULL,
  `d_address` varchar(50) NOT NULL,
  `d_gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`diver_id`, `cab_id`, `diver_name`, `d_dob`, `d_email`, `d_password`, `d_phone_no`, `d_address`, `d_gender`) VALUES
(1, 1, 'Sri hori', '2024-03-01', 'hori@gmail.com', 'Asdf@123', 2147483647, 'Amla', 'm'),
(2, 2, 'Arijit Sing', '2023-07-05', 'arijit@gmail.com', 'Arijit@123', 2147483647, 'Gyji', 'm'),
(3, 5, 'Abhinab Baruah', '2006-02-05', 'abhinab@gmail.com', 'Abhinab@123', 2147483647, 'Shivsagar', 'm'),
(4, NULL, 'Nicolas', '2024-05-22', 'nico@gmail.com', 'Nicolas@123', 2147483647, 'Baksa', 'm'),
(5, 14, 'Bedanta', '2024-05-25', 'bedan@gmail.com', 'Bedan@123', 2147483647, 'Nagaon', 'm'),
(6, 15, 'Jason Hunt', '2022-06-14', 'jasonhunt@gmail.com', 'Jason@123', 2147483647, 'Nagaon', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rid` int(10) NOT NULL,
  `gst` int(10) NOT NULL,
  `per_km` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rid`, `gst`, `per_km`) VALUES
(1, 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ride`
--

CREATE TABLE `ride` (
  `ride_id` int(10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `diver_id` int(10) DEFAULT NULL,
  `diver_name` varchar(30) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `pickuptime` varchar(10) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `no_of_patengers` int(11) NOT NULL,
  `car_no` varchar(20) DEFAULT NULL,
  `amount` int(7) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `ride_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ride`
--

INSERT INTO `ride` (`ride_id`, `customer_id`, `diver_id`, `diver_name`, `source`, `destination`, `pickuptime`, `r_status`, `no_of_patengers`, `car_no`, `amount`, `date`, `ride_status`) VALUES
(68, 15, 2, 'Arijit Sing', 'Shivsagar Town', 'JEC, Jorhat', '09:40', 'approved', 3, 'AS01R4457', 627, '2024-05-20', 'completed'),
(69, 15, 2, 'Arijit Sing', 'ADP College, Nagaon', 'Jorhat Town', '07:00', 'approved', 6, 'AS01R4457', 2150, '2024-05-20', 'On the way'),
(70, 15, 2, 'Arijit Sing', 'Mariaoni, Jorhat', 'Jorhat Town', '15:53', 'cancelled', 5, 'AS01R4457', 112, '2024-05-20', 'On the way');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bill_payment`
--
ALTER TABLE `bill_payment`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `ride_id` (`ride_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cab`
--
ALTER TABLE `cab`
  ADD PRIMARY KEY (`cab_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`diver_id`),
  ADD KEY `cab_id` (`cab_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `ride`
--
ALTER TABLE `ride`
  ADD PRIMARY KEY (`ride_id`),
  ADD KEY `driver_id` (`diver_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill_payment`
--
ALTER TABLE `bill_payment`
  MODIFY `bill_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `cab`
--
ALTER TABLE `cab`
  MODIFY `cab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `diver_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ride`
--
ALTER TABLE `ride`
  MODIFY `ride_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_payment`
--
ALTER TABLE `bill_payment`
  ADD CONSTRAINT `bill_payment_ibfk_1` FOREIGN KEY (`ride_id`) REFERENCES `ride` (`ride_id`),
  ADD CONSTRAINT `bill_payment_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `cab_id` FOREIGN KEY (`cab_id`) REFERENCES `cab` (`cab_id`);

--
-- Constraints for table `ride`
--
ALTER TABLE `ride`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `driver_id` FOREIGN KEY (`diver_id`) REFERENCES `driver` (`diver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
