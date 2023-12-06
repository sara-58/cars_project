-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2023 at 06:06 PM
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
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `tag_id` int(10) NOT NULL,
  `category_name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`tag_id`, `category_name`) VALUES
(2, 'Electronics'),
(3, 'Car'),
(4, 'Electronics'),
(5, 'Vehicle'),
(6, 'Family car'),
(9, 'Laptop'),
(10, 'Smartphone'),
(11, 'Kitchen'),
(12, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `img_id` int(10) NOT NULL,
  `img_date` date NOT NULL,
  `img_title` varchar(150) NOT NULL,
  `img_license` varchar(300) NOT NULL,
  `img_dimension` varchar(150) NOT NULL,
  `img_format` varchar(150) NOT NULL,
  `active` varchar(5) NOT NULL,
  `img_small` varchar(300) NOT NULL,
  `img_large` varchar(300) NOT NULL,
  `img_category` varchar(150) NOT NULL,
  `tag_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`img_id`, `img_date`, `img_title`, `img_license`, `img_dimension`, `img_format`, `active`, `img_small`, `img_large`, `img_category`, `tag_id`) VALUES
(2, '2023-08-07', 'BMW2', 'BMW2 is the best family car', '900x550', 'jpg', 'No', 'bmwfam.jpg', 'bmwfam-hq.jpg', 'Car', 3),
(3, '2023-06-01', 'Audi1', 'Audi1 is a perfect sport car', '500x850', 'jpg', 'Yes', 'audi.jpg', 'audi-hq.jpg', 'Car', 3),
(4, '2023-08-01', 'Audi2', 'Audi2 is a beautiful car', '600x400', 'jpg', 'Yes', 'audi2.jpg', 'audi2-hq.jpg', 'Car', 3),
(5, '2023-08-07', 'Audi 4x4', 'Audi 4x4 is a beautiful car', '900x550', 'jpg', 'Yes', 'audi44.jpg', 'audi44-hq.jpg', 'Car', 3),
(6, '2023-08-07', 'Ferrari', 'Ferrari is the best sport car for you', '750x500', 'jpg', 'Yes', 'ferrari.jpg', 'ferrari-hq.jpg', 'Car', 3),
(7, '2023-10-05', 'Lamborghini', ' Lamborghini is the best sport car for you', '500x850', 'jpg', 'Yes', 'lamborghini.jpg', 'Lamborghini-hq.jpg', 'Car', 3),
(10, '2023-07-29', 'Honor1', 'honor1 is a perfect smartphone for you', '800x600', 'jpg', 'Yes', 'mhonor1.jpg', 'mhonor1-hq.jpg', 'Smartphone', 10),
(13, '2023-07-29', 'Rolls3', 'Rolls3 is a perfect classic car for you', '750x500', 'jpg', 'Yes', 'rolls3.jpg', 'rolls3-hq.jpg', 'Car', 3),
(14, '2023-07-29', 'Toyota', 'toyota is a perfect 4x4 car for you', '750x500', 'jpg', 'No', 'toyota44.jpg', 'toyota44-hq.jpg', 'Car', 3),
(15, '2023-07-29', 'Mahindra', 'Mahindra is a perfect 4x4 car for you', '750x500', 'jpg', 'Yes', 'mahindra44.jpg', 'mahindra44-hq.jpg', 'Car', 3),
(16, '2023-05-18', 'Mercedes', 'Mercedes is a perfect classic car for you', '900x550', 'jpg', 'No', 'mercedes.jpg', 'mercedes-hq.jpg', 'Car', 3),
(17, '2023-05-18', 'Rolls2', 'Rolls2 is a perfect classic car for you', '900x550', 'jpg', 'Yes', 'rolls.jpg', 'rolls2-hq.jpg', 'Car', 3),
(18, '2023-03-14', 'Porsche', 'Porsche is a perfect sport car for you', '900x550', 'jpg', 'Yes', 'porsche.jpg', 'porsche-hq.jpg', 'Car', 3),
(19, '2023-05-14', 'Rolls1', 'Rolls1 is a perfect classic car for you', '800x600', 'jpg', 'Yes', 'rolls.jpg', 'rolls-hq.jpg', 'Car', 3),
(20, '2023-10-24', 'hp2', 'hp2 is the best laptop for you to use ', '800x600', 'jpg', 'Yes', 'lhp2.jpg', 'lhp2-hq.jpg', 'Laptop', 9),
(21, '2023-10-24', 'HP1', 'hp1 is the best laptop for you', '800x600', 'jpg', 'Yes', 'lhp1.jpg', 'lhp1-hq.jpg', 'Laptop', 9),
(22, '2023-10-24', 'Acer3', 'Acer3 is the Best laptop for you', '500x450', 'jpg', 'No', 'lacer3.jpg', 'lacer3-hq.jpg', 'Laptop', 9),
(23, '2023-10-10', 'apple3', 'apple3 is the Best laptop for you', '500x450', 'jpg', 'Yes', 'lapple3.jpg', 'lapple3-hq.jpg', 'Laptop', 9),
(24, '2023-10-10', 'apple2', 'apple2 is the Best laptop for you', '800x600', 'jpg', 'Yes', 'lapple2.jpg', 'lapple2-hq.jpg', 'Laptop', 9),
(29, '2023-10-25', 'Vaio1', 'Vaio1 is the best laptop for you', '500x350', 'jpg', 'No', 'lvaio1.jpg', 'lvaio1-hq.jpg', 'Laptop', 9),
(30, '2023-10-01', 'apple1', 'Apple1 is the best laptop for you', '500x850', 'jpg', 'Yes', 'lapple1.jpg', 'lapple1-hq.jpg', 'Laptop', 9),
(31, '2023-10-25', 'apple4', 'Apple4 is the best laptop for you', '500x850', 'jpg', 'Yes', 'lapple4.jpg', 'lapple4-hq.jpg', 'Laptop', 9),
(32, '2023-08-14', 'apple5', 'Apple5 is the best laptop for you', '500x850', 'jpg', 'Yes', 'lapple5.jpg', 'lapple5-hq.jpg', 'Laptop', 9),
(33, '2023-08-11', 'HP3', 'hp3 is the best laptop for you', '500x850', 'jpg', 'Yes', 'lhp3.jpg', 'lhp3-hq.jpg', 'Laptop', 9),
(34, '2023-06-08', 'HP4', 'hp4 is the best laptop for you', '750x600', 'jpg', 'Yes', 'lhp4.jpg', 'lhp4-hq.jpg', 'Laptop', 9),
(35, '2023-06-21', 'Predator1', 'Predator1 is the best laptop for you', '750x600', 'jpg', 'Yes', 'lpre1.jpg', 'lpre1-hq.jpg', 'Laptop', 9),
(36, '2023-06-05', 'Predator2', 'Predator2 is the best laptop for you', '500x850', 'jpg', 'Yes', 'lpre2.jpg', 'lpre2-hq.jpg', 'Laptop', 9),
(37, '2023-06-05', 'Honor2', 'Honor2 is the best smartphone for you', '600x400', 'jpg', 'Yes', 'mhonor2.jpg', 'mhonor2-hq.jpg', 'Smartphone', 10),
(38, '2023-06-19', 'Honor3', 'Honor3 is the best smartphone for you', '750x500', 'jpg', 'Yes', 'mhonor3.jpg', 'mhonor3-hq.jpg', 'Smartphone', 10),
(39, '2023-06-19', 'iPhone1', 'iPhone1 is the best smartphone for you', '800x600', 'jpg', 'Yes', 'miPhone1.jpg', 'miPhone1-hq.jpg', 'Smartphone', 10),
(40, '2023-04-17', 'iPhone2', 'iPhone2 is the best smartphone for you', '800x500', 'jpg', 'Yes', 'miPhone2.jpg', 'miPhone2-hq.jpg', 'Smartphone', 10),
(41, '2023-04-17', 'Lenovo1', 'Lenovo1 is the best smartphone for you', '600x400', 'jpg', 'Yes', 'mlenovo1.jpg', 'mlenovo1-hq.jpg', 'Smartphone', 10),
(42, '2023-04-28', 'Oppo1', 'Oppo1 is the best smartphone for you', '800x600', 'jpg', 'Yes', 'moppo1.jpg', 'moppo1-hq.jpg', 'Smartphone', 10),
(43, '2023-04-28', 'Oppo2', 'Oppo2 is the best smartphone for you', '500x700', 'jpg', 'Yes', 'moppo2.jpg', 'moppo2-hq.jpg', 'Smartphone', 10),
(44, '2023-04-28', 'Realme1', 'Realme1 is the best smartphone for you', '900x550', 'jpg', 'Yes', 'mrealme1.jpg', 'mrealme1-hq.jpg', 'Smartphone', 10),
(45, '2023-04-24', 'Samsung1', 'Samsung1 is the best smartphone for you', '900x550', 'jpg', 'No', 'msam1.jpg', 'msam1-hq.jpg', 'Smartphone', 10),
(46, '2023-02-06', 'Samsung2', 'Samsung2 is the best smartphone for you', '750x600', 'jpg', 'Yes', 'msam2.jpg', 'msam2-hq.jpg', 'Smartphone', 10),
(47, '2023-02-06', 'Sony1', 'Sony1 is the best smartphone for you', '800x600', 'jpg', 'Yes', 'msony1.jpg', 'msony1-hq.jpg', 'Smartphone', 10),
(48, '2023-02-06', 'Sony3', 'Sony3 is the best smartphone for you', '750x500', 'jpg', 'No', 'msony3.jpg', 'msony3-hq.jpg', 'Smartphone', 10),
(49, '2023-02-24', 'Xiamo2', 'Xiamo2 is the best smartphone for you', '800x600', 'jpg', 'No', 'mxiamo2.jpg', 'mxiamo2-hq.jpg', 'Smartphone', 10),
(50, '2023-02-02', 'Xiamo', 'Xiamo is the best smartphone for you', '500x850', 'jpg', 'Yes', 'mXiaomi.jpg', 'mXiaomi-hq.jpg', 'Smartphone', 10),
(72, '2023-08-07', 'Honda', 'Honda 4x4 is the best family for you', '900x550', 'jpg', 'Yes', 'honda44.jpg', 'honda-hq.jpg', 'Car', 3),
(73, '2023-08-07', 'JEEP', 'Jeep 4x4 is the best car for you', '750x500', 'jpg', 'Yes', 'jeep44.jpg', 'jeep44-hq.jpg', 'Car', 3),
(74, '2023-10-12', 'Acer1', 'Acer1 is the best laptop for you', '500x700', 'jpg', 'Yes', 'lacer1.jpg', 'lacer1-hq.jpg', 'Laptop', 9),
(76, '2023-10-28', 'Ford1', 'Ford 1 is a very comfortable car', '500x700', 'jpg', 'No', 'ford1.jpg', 'ford1-hq.jpg', 'Car', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(10) NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_title` varchar(150) NOT NULL,
  `active_meeting` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `meeting_date`, `meeting_title`, `active_meeting`) VALUES
(1, '2023-10-01', 'meeting1', 'yes'),
(2, '2023-10-08', 'meeting2', 'yes'),
(3, '2023-10-15', 'meeting3', 'yes'),
(4, '2023-10-22', 'meeting4', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `registeration_date` date NOT NULL DEFAULT current_timestamp(),
  `full_name` varchar(150) NOT NULL,
  `user_name` varchar(150) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `active` varchar(5) NOT NULL DEFAULT 'No',
  `meeting_date` date DEFAULT NULL,
  `user_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `registeration_date`, `full_name`, `user_name`, `user_email`, `active`, `meeting_date`, `user_password`) VALUES
(1, '2023-10-11', 'Mohamed Adel', 'm.adel', 'm.adel@gmail.com', 'No', '2023-10-01', '98765'),
(2, '2023-10-11', 'Ahmed Yasser', 'a.yasser', 'a.yasser@gmail.com', 'Yes', NULL, '89652'),
(3, '2023-10-11', 'Sara Mohamed', 's.mohamed', 's.mohamed@gmail.com', 'No', '2023-10-15', '12345'),
(8, '2023-10-11', 'Salma Reda', 'salma', 'salma@gmail.com', 'Yes', NULL, '692244'),
(12, '2023-10-11', 'Karim Mohamed', 'kimo', 'kimo@gmail.com', 'Yes', NULL, '45699'),
(13, '2023-10-12', 'Reem Tarek', 'hij.lks', 'reemo@gmail.com', 'Yes', NULL, '2222'),
(14, '2023-10-13', 'Ahmed Hassan', 'ahmed22', 'a.hassan@gmail.com', 'Yes', NULL, '852233'),
(15, '2023-10-13', 'Lina Hmadi', 'lina11', 'lina11@gmail.com', 'No', '2023-10-22', '022563'),
(16, '2023-10-13', 'Karma Ali', 'koko', 'koko@gmail.com', 'Yes', NULL, '71236'),
(17, '2023-10-13', 'Ahmed Mostafa', 'ahmed22', 'ahmed89@gmail.com', 'Yes', NULL, '862211'),
(18, '2023-10-13', 'Reem Tarek', 'reemo', 'reemo@gmail.com', 'Yes', NULL, '962445'),
(19, '2023-10-13', 'Muaz Hamdi', 'mozo55', 'mozo55@gmail.com', 'No', '2023-10-08', '25874'),
(20, '2023-10-13', 'Mohamed Ahmed', 'mohamed43', 'mohamed43@gmail.com', 'Yes', NULL, '863456'),
(21, '2023-10-13', 'Ziad Hamdi', 'zozo55', 'zozo55@gmail.com', 'No', '2023-10-01', '5845'),
(22, '2023-10-13', 'Radwa Elsherbiny', 'Radwa21', 'radwa@gmail.com', 'Yes', NULL, '585223'),
(23, '2023-10-19', 'Mahmoud Abdelaal', 'mahmoud34', 'mahmoud43@gmail.com', 'Yes', NULL, '23659');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`img_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `meeting_date` (`meeting_date`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `meeting_date` (`meeting_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `tag_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `img_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `category` (`tag_id`);

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `meeting_ibfk_1` FOREIGN KEY (`meeting_date`) REFERENCES `users` (`meeting_date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
