-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 05:09 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `admin_pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `choice_tag`
--

CREATE TABLE `choice_tag` (
  `post_id` int(11) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `choice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `post_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment_deleted` timestamp NULL DEFAULT NULL,
  `Comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `post_id` int(11) NOT NULL,
  `content_id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`post_id`, `content_id`, `link`) VALUES
(1, 1, 'post_contents/601271225.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `comment_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `comment_reply` varchar(500) NOT NULL,
  `usename` varchar(50) NOT NULL,
  `reply_deleted` timestamp NULL DEFAULT NULL,
  `reply_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_blog`
--

CREATE TABLE `user_blog` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `post` varchar(2600) NOT NULL,
  `likes_count` int(11) NOT NULL,
  `report_count` int(11) NOT NULL,
  `report_comment` varchar(500) DEFAULT NULL,
  `time_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_blog`
--

INSERT INTO `user_blog` (`user_id`, `user_name`, `post_id`, `title`, `post`, `likes_count`, `report_count`, `report_comment`, `time_date`, `blog_deleted`) VALUES
(1, 'JesiraSultana29329', 1, 'Activity diagram', 'something.....', 0, 0, NULL, '2018-11-20 05:19:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_choice`
--

CREATE TABLE `user_choice` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `choice` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_choice`
--

INSERT INTO `user_choice` (`user_id`, `user_name`, `choice_id`, `choice`) VALUES
(4, 'aaa', 1, 'Raw_Science'),
(4, 'aaa', 3, 'EEE'),
(6, 'ee40', 2, 'Computer_Science'),
(6, 'ee40', 3, 'EEE'),
(7, 'ee9', 1, 'Raw_Science'),
(9, 'asdasd39106', 2, 'Computer_Science');

-- --------------------------------------------------------

--
-- Table structure for table `user_suggestion`
--

CREATE TABLE `user_suggestion` (
  `user_id` int(11) NOT NULL,
  `suggestion` varchar(1000) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_suggestion`
--

INSERT INTO `user_suggestion` (`user_id`, `suggestion`, `date`) VALUES
(2, 'ddasdasdasdasdsadsadsadsa', '2018-04-21 02:26:02'),
(7, 'asddasdddsf', '2018-04-21 02:59:41');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `profile_pic` varchar(50) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `user_deleted` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `user_name`, `full_name`, `email`, `password`, `gender`, `profile_pic`, `occupation`, `phone_number`, `dob`, `user_deleted`) VALUES
(1, 'JesiraSultana29329', 'Jesira Sultana', 'ruhi.jesira@gmail.com', 'Jesira_1234567', 'female', 'propics/1240881568.jpg', 'student', '01975531175', '2018-11-06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `user_blog`
--
ALTER TABLE `user_blog`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_blog`
--
ALTER TABLE `user_blog`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
