-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2020 at 05:27 PM
-- Server version: 10.1.44-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocs_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(11) NOT NULL,
  `user_name` varchar(128) NOT NULL,
  `pass_word` varchar(128) NOT NULL,
  `date_created` varchar(128) NOT NULL,
  `date_expired` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `server_buy`
--

CREATE TABLE `server_buy` (
  `id` int(11) NOT NULL,
  `ip_add` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `buttontitle` varchar(128) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `run` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `server_buy`
--

INSERT INTO `server_buy` (`id`, `ip_add`, `title`, `buttontitle`, `description`, `price`, `run`) VALUES
(1, '45.77.168.49', 'Trial Account 1 Day', 'Trial', 'You will get trial for 1 Day with custom username made by server. Enjoy the free trial!!', 0, '/server/trial'),
(2, '45.77.168.49', '1 Month Account', '1Month', '1 Month Premium Account that you can enjoy to use Premium SSH and SSL Connection', 0, '/server/onemonth'),
(3, '45.77.168.49', '2 Month Account', '2Month', '2 Month Premium Account that you can enjoy to use Premium SSH and SSL Connection', 0, '/server/twomonth'),
(4, '45.77.168.49', '3 Month Account', '3Month', '3 Month Premium Account that you can enjoy to use Premium SSH and SSL Connection', 0, '/server/threemonth'),
(5, '45.77.168.49', '6 Month Account', '6Month', '6 Month Premium Account that you can enjoy to use Premium SSH and SSL Connection', 0, '/server/sixmonth'),
(6, '45.77.168.49', '1 Year Account', '1Year', '12 Month Premium Account that you can enjoy to use Premium SSH and SSL Connection', 0, '/server/oneyear');

-- --------------------------------------------------------

--
-- Table structure for table `server_list`
--

CREATE TABLE `server_list` (
  `id` int(11) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `root` varchar(128) NOT NULL,
  `pass` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `image` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `role_id`, `is_active`, `date_created`, `credit`) VALUES
(20, 'Khairul Amin Bin Suhaimi', 'kaselurk92@gmail.com', '$2y$10$zR9SKuEnW32xKNLE2XfmNOtZnn3Fyz9umarCcZoCntmDXMgZucNGi', 'AR.png', 1, 1, 1592339507, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(6, 2, 2),
(12, 1, 3),
(14, 1, 6),
(15, 2, 6),
(16, 1, 7),
(17, 1, 8),
(18, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(6, 'Server');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Dealer');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa fw fa-user-cog', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(6, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(7, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(9, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(10, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(12, 6, 'Server', 'server/server', 'fas fa-fw fa-server', 1),
(13, 6, 'Client', 'server/client', 'fas fa-fw fa-user-plus', 0),
(14, 1, 'Reload Token', 'admin/reload', 'fas fa-fw fa-retweet', 0),
(15, 2, 'Credit Reload', 'user/reload', 'fas fa-fw fa-sync', 0),
(16, 3, 'Server Management', 'menu/subserver', 'fas fa-fw fa-database', 1),
(17, 6, 'Download Config', 'server/config', 'fas fa-fw fa-download', 0),
(18, 6, 'Client List', 'server/list_client', 'fas fa-fw fa-user-plus', 1),
(19, 6, 'User Online', 'server/useronline', 'fas fa-fw fa-user-minus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(15, 'kaselurk@xkx.me', 'PyJkkUuGzNBjKubes1Wjndg6MKmWJE7a+Vs5Zqfy1NY=', 1592342136),
(16, 'khairulamin_suhaimi@yahoo.com', 'hy/YlVgI0+kGktBDMH9moYI2n7puOEeDjyR5CSokdjs=', 1592596226),
(17, 'kaselurk@xkx.me', 'mmZHRuFgbsH74/pnAHbfe6n0H19R6F97/2mv/JaY7I0=', 1592596233);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_buy`
--
ALTER TABLE `server_buy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_list`
--
ALTER TABLE `server_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `server_buy`
--
ALTER TABLE `server_buy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `server_list`
--
ALTER TABLE `server_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
