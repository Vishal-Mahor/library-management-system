-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2021 at 10:28 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publication` varchar(255) NOT NULL,
  `year` int(255) NOT NULL,
  `edition` int(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publication`, `year`, `edition`, `subject`, `quantity`) VALUES
(1, 'disrete mathematics 1', 'rosen', 'Mc graw hill ', 1852, 7, 'maths', 120),
(2, 'java the complete reference', 'schildt', 'Mc graw hill', 1999, 9, 'java ', 100);

-- --------------------------------------------------------

--
-- Table structure for table `deletedbooks`
--

CREATE TABLE `deletedbooks` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedbooks`
--

INSERT INTO `deletedbooks` (`id`, `title`, `author`, `year`) VALUES
(12345, 'java', 'vishal', 1999);

-- --------------------------------------------------------

--
-- Table structure for table `issuereturn`
--

CREATE TABLE `issuereturn` (
  `bookid` int(255) NOT NULL,
  `booktitle` varchar(255) NOT NULL,
  `bookauthor` varchar(255) NOT NULL,
  `bookpublication` varchar(255) NOT NULL,
  `studentid` int(255) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `email`, `password`) VALUES
('test', 'test@gmail.com', '12345'),
('test', 'fghjk', '4562'),
('fhgjk', 'rdfgvhbnj', 'dtfhbjn');

-- --------------------------------------------------------

--
-- Table structure for table `studentaccount`
--

CREATE TABLE `studentaccount` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `residentphone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `mothername` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `foccupation` varchar(255) NOT NULL,
  `moccupation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentaccount`
--

INSERT INTO `studentaccount` (`id`, `name`, `education`, `institute`, `qualification`, `mobile`, `email`, `residentphone`, `address`, `fathername`, `mothername`, `fmobile`, `foccupation`, `moccupation`) VALUES
(2, 'vishal mahor', 'University', 'lovely professional university', 'B.Tech (CSE)', '9889285127', 'vishal123456mahor@gmail.com', '6392216105', '118, out side sainyer gate jhansi', 'mahendra mahor', 'Rani mahor', '8887962613', 'Doctor', 'sweet home maker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deletedbooks`
--
ALTER TABLE `deletedbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studentaccount`
--
ALTER TABLE `studentaccount`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347;

--
-- AUTO_INCREMENT for table `studentaccount`
--
ALTER TABLE `studentaccount`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
