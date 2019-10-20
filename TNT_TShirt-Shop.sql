-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 20, 2019 at 01:06 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TNT_TShirt-Shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetailes`
--

CREATE TABLE IF NOT EXISTS `OrderDetailes` (
  `ID` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `Product` varchar(255) NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL,
  `orderNumber` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `orderNumber`, `UserID`, `Price`) VALUES
(104, 123456789, 1234, 150),
(105, 113456789, 3321, 1500),
(106, 122456789, 1234, 300),
(107, 123256789, 7683, 450),
(108, 123446789, 1233, 100),
(109, 123455789, 4444, 500),
(110, 123456777, 5555, 150);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`) VALUES
(133, 'Jyoti', 'Ollarenshaw', 'jollarenshaw0@wikia.com', 'EyepxpnYjV'),
(134, 'Chaunce', 'Vatini', 'cvatini1@studiopress.com', 'iSNbZV'),
(135, 'Maurine', 'Gerardet', 'mgerardet2@boston.com', 'g9m0Yf'),
(136, 'Harri', 'Denniss', 'hdenniss3@twitpic.com', 'HJY8wAnQ9'),
(137, 'Nolie', 'Fabbri', 'nfabbri4@noaa.gov', 'y9Sjfx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `OrderDetailes`
--
ALTER TABLE `OrderDetailes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `OrderDetailes`
--
ALTER TABLE `OrderDetailes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
