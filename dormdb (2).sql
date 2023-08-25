-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 10:08 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dormdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_data`
--

CREATE TABLE `admin_data` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_data`
--

INSERT INTO `admin_data` (`first_name`, `last_name`, `username`, `password`, `email`) VALUES
('Boss', 'Admin', 'boss', '12345', 'bossadmin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dorm_data`
--

CREATE TABLE `dorm_data` (
  `dorm_id` int(10) UNSIGNED NOT NULL,
  `dorm_name` text NOT NULL,
  `dorm_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dorm_data`
--

INSERT INTO `dorm_data` (`dorm_id`, `dorm_name`, `dorm_address`) VALUES
(1, 'RS Dormitory Manila', 'Trio de Villa Residences, Baguio, Benguet'),
(2, 'RS Dormitory Baguio', 'Trio Haunted House, Baguio, Benguet'),
(3, 'RS Dormitory Quezon City', 'Novaliches, Quezon City');

-- --------------------------------------------------------

--
-- Table structure for table `log_data`
--

CREATE TABLE `log_data` (
  `log_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `log_status` varchar(3) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_data`
--

INSERT INTO `log_data` (`log_id`, `student_id`, `log_status`, `time`, `date`) VALUES
(1, 1, 'in', '2022-11-30 20:55:22', '2022-12-02'),
(4, 2, 'in', '2022-12-02 13:33:10', '2022-12-02'),
(5, 3, 'in', '2022-12-02 13:33:32', '2022-12-02'),
(6, 4, 'out', '2022-12-14 13:33:35', '0000-00-00'),
(7, 5, 'out', '2022-12-02 13:34:32', '2022-12-02'),
(8, 6, 'in', '2022-12-02 13:34:46', '2022-12-03'),
(9, 7, 'in', '2022-12-02 13:34:56', '2022-12-13'),
(11, 2, 'in', '2022-12-02 13:35:40', '2022-12-02'),
(12, 1, 'in', '2023-01-06 05:07:15', '0000-00-00'),
(13, 1, 'out', '2023-01-06 05:50:51', '0000-00-00'),
(14, 1, 'in', '2023-01-06 05:50:57', '0000-00-00'),
(15, 1, 'out', '2023-01-06 06:28:18', '0000-00-00'),
(16, 1, 'in', '2023-01-06 06:28:23', '0000-00-00'),
(17, 1, 'out', '2023-01-06 06:29:10', '0000-00-00'),
(18, 1, 'in', '2023-01-06 06:29:43', '0000-00-00'),
(19, 1, 'out', '2023-01-06 06:30:23', '0000-00-00'),
(20, 1, 'in', '2023-01-06 06:30:28', '0000-00-00'),
(21, 1, 'out', '2023-01-06 06:34:55', '0000-00-00'),
(22, 1, 'in', '2023-01-06 06:35:00', '0000-00-00'),
(23, 1, 'out', '2023-01-06 06:42:04', '0000-00-00'),
(24, 1, 'in', '2023-01-06 06:43:28', '0000-00-00'),
(25, 1, 'out', '2023-01-06 06:43:31', '0000-00-00'),
(26, 1, 'in', '2023-01-06 06:43:35', '0000-00-00'),
(27, 1, 'out', '2023-01-06 06:47:36', '0000-00-00'),
(28, 1, 'in', '2023-01-06 06:48:39', '0000-00-00'),
(29, 1, 'out', '2023-01-06 06:54:23', '0000-00-00'),
(30, 1, 'in', '2023-01-06 06:54:28', '0000-00-00'),
(31, 1, 'out', '2023-01-06 07:01:47', '0000-00-00'),
(32, 1, 'in', '2023-01-06 07:01:52', '0000-00-00'),
(33, 1, 'out', '2023-01-06 07:03:36', '0000-00-00'),
(34, 1, 'in', '2023-01-06 07:03:40', '0000-00-00'),
(35, 1, 'out', '2023-01-06 08:10:34', '0000-00-00'),
(36, 27, 'in', '2023-01-06 08:11:46', '0000-00-00'),
(37, 27, 'out', '2023-01-06 08:14:55', '0000-00-00'),
(38, 0, 'out', '2023-01-06 08:19:28', '0000-00-00'),
(39, 1, 'out', '2023-01-06 08:44:29', '0000-00-00'),
(40, 30, 'in', '2023-01-06 08:44:36', '0000-00-00'),
(41, 1, 'out', '2023-01-06 08:46:08', '0000-00-00'),
(42, 30, 'in', '2023-01-06 08:46:17', '0000-00-00'),
(43, 30, 'out', '2023-01-06 08:48:17', '0000-00-00'),
(44, 31, 'in', '2023-01-06 08:48:54', '0000-00-00'),
(45, 31, 'out', '2023-01-06 09:05:00', '0000-00-00'),
(46, 1, 'in', '2023-01-06 09:05:05', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_data`
--

CREATE TABLE `payment_data` (
  `pay_id` int(10) UNSIGNED NOT NULL,
  `date_paid` date NOT NULL,
  `amount` float NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `modeOfPayment` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_data`
--

INSERT INTO `payment_data` (`pay_id`, `date_paid`, `amount`, `first_name`, `last_name`, `modeOfPayment`) VALUES
(1, '2022-12-20', 5000, '', '', ''),
(2, '2022-12-20', 5000, '', '', ''),
(3, '2022-12-20', 5000, '', '', ''),
(4, '2022-12-20', 5000, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `room_data`
--

CREATE TABLE `room_data` (
  `room_id` int(10) UNSIGNED NOT NULL,
  `room_name` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `available_beds` int(10) NOT NULL,
  `room_occupants` int(10) NOT NULL,
  `dorm_id` int(10) UNSIGNED NOT NULL,
  `status` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_data`
--

INSERT INTO `room_data` (`room_id`, `room_name`, `price`, `available_beds`, `room_occupants`, `dorm_id`, `status`, `description`, `image`) VALUES
(29, 'Room M1', 5000, 5, 0, 1, 'Available', 'This affordable and conveniently located accommodation offers a clean, secure and cozy one bedroom with an ensuite hot shower, a 32\" flatscreen TV with cable, airconditioning, a personal refrigerator, an electric kettle and an electronic safe. In addition, there is free wifi and 24 hour reception. It is also close to Avenue and Century City Malls.', 'IMG-63b5e535acd7e6.35393204.png'),
(30, 'Room M2', 5250, 5, 0, 1, 'Available', 'This room is suitable for people on a budget, featuring a private room with a kitchenette, a bathroom, a 32-inch smart TV with streaming capabilities, a window to the hallway, but no view of the street.', 'IMG-63b5e69c58c939.92953209.png'),
(31, 'Room M3', 10000, 2, 0, 1, 'Available', 'The room is decorated in a way to make it inviting and comfortable, allowing guests to relax and stream Netflix with the provided wifi.', 'IMG-63b5e71fb18891.22389309.png'),
(32, 'Room M4', 6500, 3, 0, 1, 'Available', 'We transformed an old commercial building into four individual, no-frills, loft-style apartments that are available for self-catering. Free wifi is available so that occupants can surf the web and watch Netflix. These lofts are most suitable for students, reviewers, overseas Filipino workers (whether they are on vacation or working on their papers), those studying for board or bar exams, couples, and individuals visiting the Manila area for either business or leisure.', 'IMG-63b5e7abc68cf6.03369299.png'),
(33, 'Room M5', 6500, 3, 0, 1, 'Available', 'This bedroom comes with a Queen size (60\") mattress and linen, two fresh towels per guest, basic toiletries (soap and shampoo), an iron and ironing board, a 43\" Smart TV with a variety of SD/HD channels and Netflix, 20 Mbps WIFI internet, a local landline for making and receiving calls, and light cooking equipment such as an induction stove, mini-refrigerator, microwave, toaster, rice cooker, coffee press, water heater, and dinnerware. Additionally, there are lots of food options nearby.', 'IMG-63b5e99041c741.49710053.png'),
(34, 'Room B1', 12500, 2, 0, 2, 'Available', 'This hotel room is the perfect place to relax and unwind after a long day. It features a comfortable queen-size bed, lush carpets, and a large window that looks out onto a peaceful garden. You\'ll have access to a flat-screen TV, mini-fridge, and complimentary Wi-Fi. The room also has a private bathroom with a tub/shower combination and complimentary toiletries.', 'IMG-63b5ea308d0311.03458013.png'),
(35, 'Room B2', 232322, 3, 3, 2, 'Available', 'adasdaasdsasadasd', 'IMG-63b7a7169bd895.08128769.png'),
(36, 'Marinduque', 232322, 5, 0, 3, 'Available', 'asdadasdadasdasdasadasda', 'IMG-63b7a821230f22.09115417.png');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` char(1) NOT NULL,
  `birth_date` date NOT NULL,
  `age` int(3) NOT NULL,
  `contact_number` varchar(13) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `home_address` varchar(250) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`student_id`, `first_name`, `last_name`, `sex`, `birth_date`, `age`, `contact_number`, `email_address`, `home_address`, `password`) VALUES
(1, 'Marwin', 'Matic', 'M', '2001-12-16', 20, '09199566238', 'marwinmatic@gmail.com', 'Pacdal, Baguio, Benguet', '12345'),
(2, 'Deangelo', 'Enriquez', 'M', '2002-04-10', 20, '09612727145', 'deangeloenriquez@gmail.com', 'Ina Mansion, Baguio, Benguet', '12345'),
(3, 'Achilles', 'Zubia', 'M', '2002-12-09', 21, '09111111111', 'achilleszubia@gmail.com', 'Ina Mansion, Baguio, Benguet', '12345'),
(4, 'John', 'Latigay', 'M', '2004-12-06', 20, '09612727145', 'johnlatigay@gmail.com', 'Ina Mansion, Baguio, Benguet', '12345'),
(5, 'Marc', 'Dimacuha', 'M', '2003-08-20', 19, '09111111111', 'marcdimacuha@gmail.com', 'Kisad Bahay, Baguio, Benguet', '12345'),
(6, 'Jeremy', 'Jimenez', 'M', '2002-04-10', 20, '09138474837', 'jeremyjimenez@gmail.com', 'Amsing, Baguio, Benguet', '12345'),
(7, 'Carlo', 'Bawa', 'M', '2000-02-29', 21, '09612727145', 'carlobawa@gmail.com', 'Military Cutoff, Baguio, Benguet', '12345'),
(8, 'Jolo', 'Ramos', 'M', '2004-12-14', 21, '09123456784', 'joloramos@gmail.com', 'Amsing Adoption Center, Baguio, Benguet', '12345'),
(9, 'Jan', 'Roxanne', 'F', '2002-08-21', 20, '09612727145', 'janroxanne@gmail.com', 'Military Cutoff, Baguio, Benguet', '12345'),
(23, 'Marwin', 'Matic', 'M', '2022-12-06', 34, '09199566238', 'marwinmati@gmail.com', 'Fuel Matic Gas Station, Brgy. Caybunga,', 'inamansion'),
(24, 'Marwin', 'Matic', 'M', '2022-12-06', 34, '09199566238', 'marwinmati@gmail.com', 'Fuel Matic Gas Station, Brgy. Caybunga,', 'inamansion'),
(25, 'Marwin', 'Matic', 'O', '2022-12-13', 23, '09199566238', 'adasda@gmail.com', 'Fuel Matic Gas Station, Brgy. Caybunga,', 'nope'),
(26, 'Marwina', 'Matic', 'F', '2022-12-19', 23, '09199566238', 'fadasd@gma', 'Fuel Matic Gas Station, Brgy. Caybunga,', 'adsaadsa'),
(30, 'Mama', 'Mama', 'O', '2023-01-11', 232, '09199566238', 'mama@gmail.com', 'adasdasda', '12345'),
(31, 'Dean', 'Gelo', 'M', '2023-01-20', 23, '09199566238', 'dean@gmail.com', 'adasdasa', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student_dorm_data`
--

CREATE TABLE `student_dorm_data` (
  `student_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `dorm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_dorm_data`
--

INSERT INTO `student_dorm_data` (`student_id`, `room_id`, `dorm_id`) VALUES
(30, 32, 1),
(31, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_log_data`
--

CREATE TABLE `student_log_data` (
  `student_id` int(11) NOT NULL,
  `last_login` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_logins` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_log_data`
--

INSERT INTO `student_log_data` (`student_id`, `last_login`, `total_logins`) VALUES
(1, '2023-01-06 09:05:05', 15),
(2, '2022-12-10 15:06:10', 4),
(3, '2022-12-10 15:06:45', 20),
(4, '2022-12-10 15:06:50', 23),
(5, '2022-12-10 15:07:02', 13),
(6, '2022-12-10 15:07:08', 123),
(7, '2022-12-10 15:07:11', 4131),
(8, '2022-12-10 15:07:20', 12),
(9, '2022-12-10 15:07:23', 32),
(27, '2023-01-06 08:11:46', 1),
(30, '2023-01-06 08:46:17', 2),
(31, '2023-01-06 08:48:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_stay_data`
--

CREATE TABLE `student_stay_data` (
  `student_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_stay_data`
--

INSERT INTO `student_stay_data` (`student_id`, `start_date`, `end_date`) VALUES
(30, '2023-01-19', '2023-01-17'),
(31, '2023-01-25', '2023-01-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dorm_data`
--
ALTER TABLE `dorm_data`
  ADD PRIMARY KEY (`dorm_id`);

--
-- Indexes for table `log_data`
--
ALTER TABLE `log_data`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `payment_data`
--
ALTER TABLE `payment_data`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `room_data`
--
ALTER TABLE `room_data`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_dorm_id` (`dorm_id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_dorm_data`
--
ALTER TABLE `student_dorm_data`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `dorm_id` (`dorm_id`);

--
-- Indexes for table `student_log_data`
--
ALTER TABLE `student_log_data`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `student_stay_data`
--
ALTER TABLE `student_stay_data`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dorm_data`
--
ALTER TABLE `dorm_data`
  MODIFY `dorm_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_data`
--
ALTER TABLE `log_data`
  MODIFY `log_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `payment_data`
--
ALTER TABLE `payment_data`
  MODIFY `pay_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_data`
--
ALTER TABLE `room_data`
  MODIFY `room_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_dorm_data`
--
ALTER TABLE `student_dorm_data`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_log_data`
--
ALTER TABLE `student_log_data`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `student_stay_data`
--
ALTER TABLE `student_stay_data`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room_data`
--
ALTER TABLE `room_data`
  ADD CONSTRAINT `room_data_ibfk_1` FOREIGN KEY (`dorm_id`) REFERENCES `dorm_data` (`dorm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
