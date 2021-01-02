-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 06:39 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'a1cb608a30fc2883eed0831dcf25f260', '2020-12-23 22:36:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(9, 24, 'closed', 'Idk', '2020-12-23 16:50:59'),
(10, 25, 'in process', 'death', '2020-12-23 17:26:11'),
(11, 26, 'closed', 'okay', '2020-12-23 17:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `complaintType`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(24, 18101257, 'General Query', 'Regarding gradesheet', 'how to do what T.T', '', '2020-12-23 16:44:02', 'closed', '2020-12-23 16:50:59'),
(25, 18101257, 'General Query', 'Finals', 'How to pass? T.T', '', '2020-12-23 17:13:13', 'in process', '2020-12-23 17:26:11'),
(26, 18101257, ' Complaint', 'Bullying', 'I have been bullied T.T', '', '2020-12-23 17:13:31', 'closed', '2020-12-23 17:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(51, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-21 19:15:28', '', 0),
(52, 2, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-21 19:15:35', '', 1),
(53, 2, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 12:46:59', '', 1),
(54, 2, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 16:05:22', '23-12-2020 12:20:18 AM', 1),
(55, 2, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:05:57', '23-12-2020 12:40:26 AM', 1),
(56, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:11:49', '', 0),
(57, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:11:55', '', 0),
(58, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:13:30', '', 0),
(59, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:17:17', '', 0),
(61, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:38:21', '', 0),
(62, 0, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:39:51', '', 0),
(63, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 19:41:47', '23-12-2020 01:37:24 AM', 1),
(64, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-22 20:13:17', '23-12-2020 01:43:25 AM', 1),
(66, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:06:41', '', 1),
(67, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:08:05', '23-12-2020 08:08:41 PM', 1),
(68, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:27:26', '', 1),
(69, 18101256, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:42:00', '', 1),
(70, 18101257, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:43:54', '23-12-2020 08:45:31 PM', 1),
(72, 18101257, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 14:47:32', '23-12-2020 08:53:18 PM', 1),
(74, 18101257, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 15:50:12', '', 1),
(75, 18101257, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 16:43:23', '', 1),
(76, 18101257, 'fzahin.FZ@gmail.com', 0x3a3a3100000000000000000000000000, '2020-12-23 17:12:49', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `class` varchar(11) DEFAULT NULL,
  `rollNo` int(8) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `section` varchar(100) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `class`, `rollNo`, `address`, `section`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(18101257, 'Fabliha Zahin', 'fzahin.FZ@gmail.com', 'c65d7bd70fe3e5e3a2f3de681edc193d', 12345678910, '11', 18101256, 'Dhanmondi', 'cygy', NULL, '2020-12-23 14:43:44', '2020-12-23 16:20:34', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18101258;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
