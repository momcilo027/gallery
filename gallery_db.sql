-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2020 at 09:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(9, 5, 'TestAuthor', '111'),
(11, 5, 'TestAuthor', '333');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(255) NOT NULL,
  `alternate_text` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`) VALUES
(5, 'Not a LAMBO', 'caption try', 'some desc', 'images-1.jpg', 'alt text', 'image/jpeg', 28947),
(6, 'Black CAMARO', '', '', 'images-2.jpg', '', 'image/jpeg', 18578),
(7, 'LAMBO', '', '', 'images-16.jpg', '', 'image/jpeg', 21133),
(8, 'test', '', '', '_large_image_1.jpg', '', 'image/jpeg', 479843),
(9, '123', '', '', 'images-3.jpg', '', 'image/jpeg', 18096),
(10, '333', '', '', 'images-19.jpg', '', 'image/jpeg', 22792),
(11, '111', '', '', 'images-6.jpg', '', 'image/jpeg', 21886),
(12, '222', '', '', '_large_image_2.jpg', '', 'image/jpeg', 309568),
(13, '444', '', '', '_large_image_3.jpg', '', 'image/jpeg', 165053),
(14, '555', '', '', 'images-4.jpg', '', 'image/jpeg', 23270),
(15, '3213', '', '', 'images-9.jpg', '', 'image/jpeg', 21108),
(16, 'Cool Title12321', '', '', 'images-26.jpg', '', 'image/jpeg', 21802),
(17, 'Data Entry Professional', '', '', 'images-36.jpg', '', 'image/jpeg', 21672),
(18, '5454', '', '', 'images-33.jpg', '', 'image/jpeg', 16855);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(1, 'test', '123', 'fn_test', 'ln_test', '3605.jpg'),
(19, 'Example_UN', 'Example_PW', 'Example_FN', 'Example_LN', ''),
(28, 'ARR_UN', 'ARR_PW', 'ARR_FN', 'ARR_LN', ''),
(29, '25_UN', '25_PW', '25_FN', '25_LN', 'yoga_PNG142.png'),
(30, 'clean_UN', 'clean_PW', 'clean_FN', 'clean_LN', ''),
(31, 'photoClass_UN', 'photoClass_PW', 'photoClass_FN', 'photoClass_LN', ''),
(37, 'UN_addUser', 'PW_addUser', 'FN_addUser', 'LN_addUser', 'tumblr_oz0ngdnGAo1vo6vclo2_250.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
