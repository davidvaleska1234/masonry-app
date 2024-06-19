-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 04:18 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `application_description` varchar(255) NOT NULL,
  `application_link` varchar(255) NOT NULL,
  `application_color` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_tbl`
--

INSERT INTO `application_tbl` (`application_id`, `admin_id`, `application_image`, `application_title`, `application_description`, `application_link`, `application_color`, `created_at`) VALUES
(1, 1, 'img/uploads/img1.jfif', 'Brick Paneling System: Transform Your Space', 'Explore the timeless elegance of brick paneling and discover how it can breathe new life into any interior or exterior. Our site offers a comprehensive guide on various brick paneling styles, installation techniques, and maintenance tips.', 'https://oldmillbuildingproducts.com', '#9ebe5b', '2024-06-19 02:04:55'),
(2, 1, 'img/uploads/img1.jfif', 'Stone Veneer Panel System: Elevate Your Décor', 'Dive into the world of stone veneer panels and uncover a myriad of design possibilities for your home or office. From rustic charm to modern sophistication, our site provides in-depth insights into the versatility and durability of stone veneer.', 'https://oldmillbuildingproducts.com', '#3eacd0', '2024-06-19 02:05:59'),
(3, 1, 'img/uploads/img1.jfif', 'Faux Brick Wall Panel System: The Art of Authenticity', 'Immerse yourself in the authenticity of faux brick wall panels. Our site is your go-to resource for understanding the craftsmanship behind faux brick, offering guidance on selecting the perfect style and achieving flawless installation.', 'https://oldmillbuildingproducts.com', '#9ebe5b', '2024-06-19 02:07:25'),
(4, 1, 'img/uploads/img1.jfif', 'Sustainable Masonry Panel Solutions: Go Green with Panels', 'Embrace sustainability without compromising on style with our range of eco-friendly masonry panels. Explore innovative materials and construction techniques that minimize environmental impact while maximizing aesthetic appeal.', 'https://oldmillbuildingproducts.com', '#3eacd0', '2024-06-19 02:08:19'),
(5, 1, 'img/uploads/img1.jfif', 'Brick Cladding System: Timeless Beauty, Modern Application', 'Discover the enduring allure of brick cladding and its contemporary applications. Our site is dedicated to showcasing the versatility of brick, from classic reds to trendy whites, and providing expert advice on integrating brick cladding into your design.', 'https://oldmillbuildingproducts.com', '#9ebe5b', '2024-06-19 02:09:15'),
(6, 1, 'img/uploads/img1.jfif', 'Cultured Stone Panel System: Redefining Elegance', 'Redefine elegance with cultured stone panels. Our site offers a comprehensive look into the world of cultured stone, including design inspirations, installation guides, and maintenance tips to help you achieve a luxurious finish in any space.', 'https://oldmillbuildingproducts.com', '#3eacd0', '2024-06-19 02:10:12'),
(7, 1, 'img/uploads/img1.jfif', 'Brick Effect Wall Panels: Timeless Charm, Effortless Installation', 'Experience the timeless charm of brick with the ease of installation provided by brick effect wall panels. Our site is your ultimate destination for exploring the latest trends, tips, and tricks for incorporating brick textures into your interior design e', 'https://oldmillbuildingproducts.com', '#9ebe5b', '2024-06-19 02:11:26'),
(8, 1, 'img/uploads/img1.jfif', 'Modern Masonry: Innovative Panel Solutions', 'Step into the future of masonry with our collection of innovative panel solutions. From sleek, minimalist designs to bold, statement-making styles, our site showcases the latest advancements in masonry technology and design.', 'https://oldmillbuildingproducts.com', '#3eacd0', '2024-06-19 02:12:06');

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
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
