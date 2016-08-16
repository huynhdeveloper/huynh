-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2016 at 11:29 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen`
--

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `like` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `like`, `passive`, `created_at`, `updated_at`) VALUES
(12, '267814590231158', '12345', '2016-05-11 11:03:44', '0000-00-00 00:00:00'),
(11, '2678145902311584444', '1234567', '2016-05-11 11:03:44', '2016-05-26 04:27:04'),
(10, '1234567', '23456', '2016-05-11 09:03:52', '2016-05-26 05:02:49'),
(16, '123', '123', '2016-05-26 02:50:50', '0000-00-00 00:00:00'),
(18, 'vvvd', 'bfdb', '2016-05-26 04:27:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cloud_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `cloud_id`, `updated_at`, `created_at`) VALUES
(4, 'Samsung Black', 'APA91bHKMcrEbtSBaZz7J7dv-czWVAezw9blp1SEjiPEUCqIbu_Ai6re7kM7IdqGILp-MxxHb1UqzJZ6fZEZLAoZUxKx4s1Er6wLpD2FtWoaQu0HfPF-ZoPaiESz44kRf-VLHmDQPxYpHN9Z09Vdvj7GCYPK9m8Rog', '2016-05-09 09:27:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `like` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `like`, `passive`, `status`, `created_at`, `updated_at`) VALUES
(3, 'ngocduc', '4', 6, '2016-05-25 10:07:13', '2016-05-25 10:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `device` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `device`, `content`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Samsung White', 'Test', 1, '2016-05-09 07:13:42', '0000-00-00 00:00:00'),
(2, 'SamSung White', 'wewqewq', 0, '2016-05-09 09:01:00', '2016-05-09 09:01:00'),
(3, 'SamSung White', 'Nguyen Le Huynh', 0, '2016-05-09 09:01:45', '2016-05-09 09:01:45'),
(4, 'SamSung White', 'dsadas', 0, '2016-05-09 09:05:41', '2016-05-09 09:05:41'),
(5, 'SamSung White', 'dwewqe', 0, '2016-05-09 09:08:54', '2016-05-09 09:08:54'),
(6, 'SamSung White', 'qweeqwe', 0, '2016-05-09 09:09:15', '2016-05-09 09:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `unlikes`
--

CREATE TABLE `unlikes` (
  `id` int(11) NOT NULL,
  `unlike` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passive` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unlikes`
--

INSERT INTO `unlikes` (`id`, `unlike`, `passive`, `created_at`, `updated_at`) VALUES
(1, 'yes', 'phac', '2016-05-25 09:21:13', '2016-05-26 07:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` int(11) NOT NULL DEFAULT '0',
  `is_admin` int(11) NOT NULL DEFAULT '0',
  `pwd` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `name`, `gender`, `created_at`, `updated_at`, `deleted`, `is_admin`, `pwd`) VALUES
(4, 'dnduc456@gmail.com', 'doanngocduc hhh fgdd', 'male', '2016-05-26 03:12:38', '2016-05-30 07:57:37', 1, 0, '1d4e2ca356bb0474689637a47a1f7476'),
(12, 'Huynh Huynh', 'ngocduc', 'male', '2016-05-26 03:16:14', '2016-05-26 03:16:14', 1, 0, '202cb962ac59075b964b07152d234b70'),
(13, 'huynhcntt2009@gmail.com', 'Huynh Le', 'male', '2016-05-24 02:06:00', '2016-06-06 00:04:02', 1, 0, '202cb962ac59075b964b07152d234b70'),
(15, '23456', 'ngocduc', 'fsdghjk', '2016-05-24 02:41:00', '2016-05-24 02:41:00', 0, 1, '202cb962ac59075b964b07152d234b70'),
(27, 'asda', 'dsda', 'male ', '2016-05-24 03:41:02', '0000-00-00 00:00:00', 0, 0, '202cb962ac59075b964b07152d234b70'),
(16, 'ldsakjlksajdla', '', '', '2016-05-24 02:06:05', '0000-00-00 00:00:00', 0, 0, '202cb962ac59075b964b07152d234b70'),
(30, 'doanngocduc@gmail.com', 'doanngocduc hhh fgdd', 'male', '2016-05-26 03:12:19', '2016-05-26 03:12:19', 1, 0, '202cb962ac59075b964b07152d234b70'),
(19, '1', '1', '0', '2016-05-24 02:06:08', '0000-00-00 00:00:00', 0, 1, '202cb962ac59075b964b07152d234b70'),
(11, '3', '222', 'Male', '2016-05-24 02:06:18', '2016-05-26 04:19:16', 1, 0, '202cb962ac59075b964b07152d234b70'),
(29, 'manh@gmail.com', 'manh', 'male ', '2016-05-24 03:35:23', '0000-00-00 00:00:00', 0, 0, ''),
(23, 'manh@gmail.com', 'manh', 'male ', '2016-05-24 03:35:23', '0000-00-00 00:00:00', 0, 0, ''),
(31, 'Huynh Huynh', 'ngocduc', 'male', '2016-05-24 02:36:49', '2016-05-24 02:36:49', 0, 0, ''),
(32, 'huynhcntt2009@gmail.com', 'Huynh Le', 'male', '2016-05-24 02:06:00', '2016-05-10 09:38:25', 0, 0, ''),
(33, '23456', 'ngocduc', 'male', '2016-05-24 02:41:00', '2016-05-31 08:35:30', 1, 0, ''),
(34, 'asda', 'dsda', 'male ', '2016-05-24 03:41:02', '2016-05-31 08:35:32', 1, 0, ''),
(35, 'ldsakjlksajdla', '', '', '2016-05-24 02:06:05', '2016-06-05 13:40:42', 1, 0, ''),
(36, '1', '1', '0', '2016-05-24 02:06:08', '0000-00-00 00:00:00', 0, 0, ''),
(37, '3', '4', 'Male', '2016-05-24 02:06:18', '0000-00-00 00:00:00', 0, 0, ''),
(54, '123123', '456456', 'male', '2016-05-26 03:29:30', '2016-05-26 03:29:55', 0, 0, ''),
(55555, 'fdsbsdwe', 'btrn', ' ghg', '2016-05-26 03:35:32', '0000-00-00 00:00:00', 0, 0, ''),
(55556, 'zxcv', 'zxcv', 'male', '2016-05-26 03:43:54', '0000-00-00 00:00:00', 0, 0, ''),
(55557, 'mnbv', 'mnbv', 'female', '2016-05-26 03:47:54', '2016-05-26 04:58:38', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unlikes`
--
ALTER TABLE `unlikes`
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
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `unlikes`
--
ALTER TABLE `unlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55558;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
