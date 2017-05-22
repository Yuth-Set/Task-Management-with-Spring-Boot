-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2017 at 09:14 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_boot_taskdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_tasks`
--

CREATE TABLE `t_tasks` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `finished` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_tasks`
--

INSERT INTO `t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES
(4, 'ddsFdsf', 'ddSDsdASDa', '2017-05-22 11:48:14', b'0'),
(5, 'ff ff', 'ff ff', '2017-05-19 17:31:31', b'0'),
(6, 'ddd', 'dddd', '2017-05-19 17:31:48', b'1'),
(7, 'adsfadf', 'afasdf', '2017-05-19 17:31:54', b'0'),
(8, 'afdasdf', 'ddasd', '2017-05-19 17:32:01', b'0'),
(9, 'afda', 'asasd', '2017-05-19 17:32:11', b'0'),
(10, 'ytretwrt', 'rtwert', '2017-05-19 17:32:16', b'0'),
(11, 'tywt', 'etyet', '2017-05-19 17:32:21', b'0'),
(12, 'tywt', 'etyet', '2017-05-19 17:37:51', b'0'),
(13, 'uuuuuu', 'uuuuuuuuu', '2017-05-22 08:37:01', b'1'),
(14, 'gsfdgs', 'sdfgsdfgs', '2017-05-22 11:30:10', b'0'),
(15, 'gdfgsdfgs', 'gsdfgsdfgs', '2017-05-22 11:30:45', b'1'),
(17, 'zcxvzxc', 'zxcvz', '2017-05-22 11:52:48', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_tasks`
--
ALTER TABLE `t_tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_tasks`
--
ALTER TABLE `t_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
