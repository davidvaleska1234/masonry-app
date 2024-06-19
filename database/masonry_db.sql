-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masonry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_role` varchar(255) NOT NULL,
  `encryption_key` varbinary(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`admin_id`, `admin_username`, `admin_pass`, `admin_role`, `encryption_key`) VALUES
(1, 'Admin', 'NBqrvy4YLPf9nfHpAUdh9m9HbHVraGpnUHdXemNlelBjR0c3QU0zME50YXczaWVQNXdJVTlhWkJ2c0kwVGhoT1JOTXBuTEs0dWU1aTJlTkVWSjFrZjhJeHp2blYxN3JrSC9iZVZnPT0=', 'admin', 0xda7f5e97987f543d57ff67f3654233fb381b87970ca1fe3987131ae2cbc08975);

-- --------------------------------------------------------

--
-- Table structure for table `application_tbl`
--

CREATE TABLE `application_tbl` (
  `application_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `application_image` varchar(255) NOT NULL,
  `application_title` varchar(255) NOT NULL,
  `application_description` text NOT NULL,
  `application_link` varchar(255) NOT NULL,
  `application_color` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_tbl`
--

INSERT INTO `application_tbl` (`application_id`, `admin_id`, `application_image`, `application_title`, `application_description`, `application_link`, `application_color`, `created_at`) VALUES
(13, 1, 'img/uploads/house.jpg', 'Modern Contemporary Home', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste, labore rerum veritatis dolor deleniti', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#ff6161', '2024-06-19 08:59:52'),
(14, 1, 'img/uploads/pexels-meike-664865296-25881122.jpg', 'Modern Contemporary Home', 'Lorem ipsum', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#a27171', '2024-06-19 09:00:48'),
(15, 1, 'img/uploads/img5.jpg', 'Modern Contemporary Home', 'Dog, (Canis lupus familiaris), domestic mammal of the family Canidae (order Carnivora). It is a subspecies of the gray wolf (Canis lupus) and is related to foxes and jackals. The dog is one of the two most ubiquitous and most popular domestic animals in t', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#7ed2d7', '2024-06-19 09:01:49'),
(16, 1, 'img/uploads/contemporary.jpg', 'Modern Contemporary Home', 'Dog, (Canis lupus familiaris), domestic mammal of the family Canidae (order Carnivora). It is a subspecies of the gray wolf (Canis lupus) and is related to foxes and jackals. The dog is one of the two most ubiquitous and most popular domestic animals in t', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#50dc5a', '2024-06-19 09:02:28'),
(17, 1, 'img/uploads/pexels-kateryna-tsurik-505461005-26289411.jpg', 'Modern Women', 'Adjectives are powerful tools for describing people, and when it comes to describing women, the choices of words we use can have a big impact on how we perceive and treat them. In this blog post, we will explore some adjectives that can be used to describ', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#f2968c', '2024-06-19 09:10:00'),
(18, 1, 'img/uploads/pexels-bilalfurkankosar-21914541.jpg', 'Modern Contemporary Home', 'When we try to find the right word to describe someone, we think about their abilities and the word that could represent a person who possesses those abilities. For example, when we say that&quot; My best friend is resourceful.&quot; I help you understand that my friend has a lot of knowledge and she can come up with creative solutions. Here is a list of words to help you describe other women based on their abilities.\r\nWhen it comes to describing strong women, there are countless words that can be used to highlight their unique qualities and strengths. Here are some examples of words that can be used to describe strong women:', 'https://www.moving.com/tips/what-is-a-contemporary-home/', '#d9ec79', '2024-06-19 09:21:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `application_tbl`
--
ALTER TABLE `application_tbl`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `application_tbl_ibfk1` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `application_tbl`
--
ALTER TABLE `application_tbl`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application_tbl`
--
ALTER TABLE `application_tbl`
  ADD CONSTRAINT `application_tbl_ibfk1` FOREIGN KEY (`admin_id`) REFERENCES `admin_tbl` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
