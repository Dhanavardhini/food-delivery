-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `addfood`
--

CREATE TABLE `addfood` (
  `id` int(11) NOT NULL,
  `FoodName` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addfood`
--

INSERT INTO `addfood` (`id`, `FoodName`, `Price`, `Description`, `Image`) VALUES
(14, 'ChickenShawarma', '100', 'delicious', 'Uploads/shawarmastock.jpg'),
(15, 'DOSA', '70', 'delicious', 'Uploads/Dosa.jpg'),
(16, 'Idly', '10', 'so soft ', 'Uploads/idly.jpg'),
(17, 'Dosa', '70', 'crispy', 'Uploads/Dosa.jpg'),
(18, 'Idly', '10', 'so soft', 'Uploads/idly.jpg'),
(19, 'ChickenBriyani', '250', 'DELICIOUS', 'Uploads/ChickenBriyani.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adduser`
--

CREATE TABLE `adduser` (
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirmpassword` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adduser`
--

INSERT INTO `adduser` (`Username`, `Email`, `Password`, `Confirmpassword`, `Address`, `Contact`) VALUES
('Heaman', 'Heaman@gmail.com', '12345', '12345', 'kumbakonam', '986732150'),
('Ziongeorge', 'Zion@gmail.com', '123', '123', 'kumbakonam', '986732150'),
('Hafsa', 'Hafsa@gmail.com', 'abc', 'abc', 'Thirunageswaram', '986732150'),
('Sita', 'Sita@gmail.com', 'abc', 'abc', 'kumbakonam', '9867321501');

-- --------------------------------------------------------

--
-- Table structure for table `food_counts`
--

CREATE TABLE `food_counts` (
  `id` int(11) NOT NULL,
  `userCount` int(11) DEFAULT NULL,
  `vegCount` int(11) DEFAULT NULL,
  `nonVegCount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_counts`
--

INSERT INTO `food_counts` (`id`, `userCount`, `vegCount`, `nonVegCount`) VALUES
(1, 3, 0, 0),
(2, 3, 0, 0),
(3, 3, 5, 2),
(4, 3, 5, 2),
(5, 3, 5, 2),
(6, 3, 5, 2),
(7, 3, 1, 1),
(8, 3, 1, 1),
(9, 3, 1, 1),
(10, 3, 1, 1),
(11, 3, 1, 1),
(12, 3, 1, 1),
(13, 3, 1, 2),
(14, 3, 1, 2),
(15, 3, 2, 2),
(16, 3, 2, 2),
(17, 3, 2, 1),
(18, 3, 2, 1),
(19, 3, 2, 1),
(20, 3, 2, 1),
(21, 3, 2, 1),
(22, 3, 2, 1),
(23, 3, 2, 1),
(24, 3, 2, 1),
(25, 3, 2, 2),
(26, 3, 2, 2),
(27, 4, 2, 2),
(28, 4, 2, 2),
(29, 4, 2, 2),
(30, 4, 2, 2),
(31, 4, 2, 2),
(32, 4, 2, 2),
(33, 4, 2, 2),
(34, 4, 2, 2),
(35, 4, 1, 2),
(36, 4, 1, 2),
(37, 4, 1, 2),
(38, 4, 1, 2),
(39, 4, 1, 2),
(40, 4, 1, 2),
(41, 4, 1, 2),
(42, 4, 1, 2),
(43, 4, 1, 2),
(44, 4, 1, 2),
(45, 4, 1, 2),
(46, 4, 1, 2),
(47, 4, 1, 2),
(48, 4, 1, 2),
(49, 4, 1, 2),
(50, 4, 1, 2),
(51, 4, 1, 2),
(52, 4, 1, 2),
(53, 4, 1, 2),
(54, 4, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `OrderName` int(255) NOT NULL,
  `Price` int(255) NOT NULL,
  `Quantity` int(255) NOT NULL,
  `Total` int(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `placeorder`
--

CREATE TABLE `placeorder` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `orderNames` text DEFAULT NULL,
  `orderQuantities` text DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Processing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `placeorder`
--

INSERT INTO `placeorder` (`id`, `username`, `address`, `phone`, `orderNames`, `orderQuantities`, `totalAmount`, `date`, `status`) VALUES
(6, 'Heaman', 'north street,kumbakonam', '807654321', 'ChickenBriyani,Idly', 'ChickenBriyani-2,Idly-5', 410.00, '2024-11-26', 'Completed'),
(7, 'Sita', 'Kumbakonam', '956789021', 'Idly,Dosa', 'Idly-5,Dosa-6', 470.00, '2024-11-26', 'Completed'),
(8, 'Heaman', 'KUMBAKONAM', '998564321', 'ChickenShawarma,ChickenBriyani', 'ChickenShawarma-2,ChickenBriyani-1', 450.00, '2024-11-26', 'Completed'),
(9, 'Ziongeorge', 'Kumbakonam', '9944397600', 'DOSA,Idly', 'DOSA-1,Idly-1', 80.00, '2024-12-04', 'Completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addfood`
--
ALTER TABLE `addfood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_counts`
--
ALTER TABLE `food_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placeorder`
--
ALTER TABLE `placeorder`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addfood`
--
ALTER TABLE `addfood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `food_counts`
--
ALTER TABLE `food_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `placeorder`
--
ALTER TABLE `placeorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
