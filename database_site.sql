-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 04:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_button`
--

CREATE TABLE `action_button` (
  `user_id` int(11) NOT NULL,
  `whatsapp_enable` tinyint(1) NOT NULL,
  `whatsapp_number` bigint(10) NOT NULL,
  `whatsapp_message` varchar(200) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `button_text` varchar(10) NOT NULL,
  `button_type` varchar(10) NOT NULL,
  `visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `additional_info`
--

CREATE TABLE `additional_info` (
  `ai_name` varchar(50) NOT NULL,
  `date_time_stamp` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `analytics`
--

CREATE TABLE `analytics` (
  `user_id` int(11) NOT NULL,
  `device_category` varchar(20) NOT NULL,
  `share` varchar(30) NOT NULL,
  `main_action` varchar(20) NOT NULL,
  `whatsapp_share` varchar(30) NOT NULL,
  `whatsapp_btn` varchar(20) NOT NULL,
  `unique_views` bigint(10) NOT NULL,
  `views` bigint(10) NOT NULL,
  `save_contact_btn` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `user_id` int(11) NOT NULL,
  `school` varchar(50) NOT NULL,
  `degree` varchar(30) NOT NULL,
  `end_year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `user_id` int(11) NOT NULL,
  `images` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabs`
--

CREATE TABLE `tabs` (
  `user_id` int(11) NOT NULL,
  `portfolio_visible` tinyint(1) NOT NULL,
  `portfolio_tab_name` varchar(20) NOT NULL,
  `publish_tab` tinyint(1) NOT NULL,
  `contact_visible` tinyint(1) NOT NULL,
  `contact_tab_more` varchar(50) NOT NULL,
  `edu_visible` tinyint(1) NOT NULL,
  `exp_visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `gender` text NOT NULL,
  `reg_date` varchar(30) NOT NULL,
  `last_login_date` varchar(30) NOT NULL,
  `last_login_ip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `email`, `password`, `mobile_no`, `gender`, `reg_date`, `last_login_date`, `last_login_ip`) VALUES
(1, 'Priyank Harjilawala', 'abc@def.com', '12345678', 1234567890, 'Male', '1-1-2022', '1-1-2022', '127.0.0.1'),
(2, 'pkh', 'xyz@gmail.com', '123456', 999, 'Male', '10/10/2021', '10/10/2021', '10/10/2021'),
(3, 'aaa', 'ppp@ppp.com', '123', 999, 'Female', '10/10/2021', '10/10/2021', '10/10/2021'),
(4, 'www', 'iii@iii.com', '789', 999, 'Male', '01/05/2022 05:55:17 pm', '01/05/2022 05:55:17 pm', '10/10/2021'),
(5, 'pppp', 'qqq@qqq.com', '123', 999, 'Female', '01/05/2022 06:06:59 pm', '01/05/2022 06:06:59 pm', '10/10/2021'),
(6, 'pppp12', 'qqq@', '123', 999, 'Female', '01/05/2022 06:07:38 pm', '01/05/2022 06:07:38 pm', '10/10/2021'),
(7, '', '', '', 0, '', '01/05/2022 06:31:53 pm', '01/05/2022 06:31:53 pm', '10/10/2021'),
(8, '', '', '', 0, '', '01/05/2022 06:41:43 pm', '01/05/2022 06:41:43 pm', '10/10/2021'),
(9, '', '', '', 0, '', '01/05/2022 06:45:40 pm', '01/05/2022 06:45:40 pm', '10/10/2021'),
(10, '', '', '', 0, '', '01/05/2022 06:47:38 pm', '01/05/2022 06:47:38 pm', '10/10/2021');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `user_id` int(11) NOT NULL,
  `heading` varchar(20) NOT NULL,
  `banner_image` varchar(1000) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `color_theme` varchar(20) NOT NULL,
  `back_color` varchar(20) NOT NULL,
  `photo_logo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `work_exp`
--

CREATE TABLE `work_exp` (
  `user_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `start_date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL,
  `currently_working` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_button`
--
ALTER TABLE `action_button`
  ADD KEY `user_action_btn` (`user_id`);

--
-- Indexes for table `additional_info`
--
ALTER TABLE `additional_info`
  ADD KEY `user_info_id` (`user_id`);

--
-- Indexes for table `analytics`
--
ALTER TABLE `analytics`
  ADD KEY `user_analytics` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD KEY `user_contact` (`user_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD KEY `user_education` (`user_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD KEY `portfolio_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `work_exp`
--
ALTER TABLE `work_exp`
  ADD KEY `work_exp_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action_button`
--
ALTER TABLE `action_button`
  ADD CONSTRAINT `user_action_btn` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `additional_info`
--
ALTER TABLE `additional_info`
  ADD CONSTRAINT `user_info_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `analytics`
--
ALTER TABLE `analytics`
  ADD CONSTRAINT `user_analytics` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `user_contact` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `user_education` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_information`
--
ALTER TABLE `user_information`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `work_exp`
--
ALTER TABLE `work_exp`
  ADD CONSTRAINT `work_exp_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
