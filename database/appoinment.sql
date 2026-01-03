-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 08:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appoinment`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE `bloodgroup` (
  `bg_id` int(11) NOT NULL,
  `bg_name` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
(1, 'O+'),
(2, 'O-'),
(3, 'AB+'),
(4, 'AB-'),
(5, 'A+'),
(6, 'A-'),
(7, 'B+'),
(8, 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(22) NOT NULL,
  `dname` varchar(22) NOT NULL,
  `userid` int(22) NOT NULL,
  `dcontact` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `fee` varchar(22) NOT NULL,
  `pname` varchar(22) NOT NULL,
  `pcontact` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `address` varchar(22) NOT NULL,
  `dates` date NOT NULL,
  `tyme` varchar(22) NOT NULL,
  `payment` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `dname`, `userid`, `dcontact`, `expertise`, `fee`, `pname`, `pcontact`, `email`, `address`, `dates`, `tyme`, `payment`) VALUES
(15, 'Md. Azharul Islam', 1009, '01521470368', 'Cardiologist', '800', 'mamun', '01521470368', 'mamun@gmail.com', 'Rangpur', '2018-07-26', '11.00am', 'Rocket'),
(16, 'Dr. Badol Miah', 1004, '01949389983', 'Kedney', '700', 'mamun', '01521470368', 'mamun@gmail.com', 'Dinajpur', '2018-07-20', '11.00am', 'bKask'),
(17, 'Dr. Azharul Islam', 1002, '01764761919', 'Medicine', '500', 'azad', '01521470368', 'azad.ece13@gmail.com', 'Rangpur', '2018-07-26', '03.00pm', 'bKask'),
(18, 'Dr. Badol Miah', 1004, '01949389983', 'Kedney', '700', 'dezazad', 'dezazad', 'devloperazad.hstu@gmai', 'Dinajpur', '2018-07-07', '11.00am', 'Rocket');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(22) NOT NULL,
  `cat` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat`) VALUES
(1, 'Medicine'),
(2, 'Heart'),
(3, 'Bone'),
(4, 'Kedney'),
(5, 'Cardiologist'),
(6, 'Plastic Surgeon'),
(7, 'General Physician'),
(8, 'Neurologist');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(15) NOT NULL,
  `comment` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `firstname`, `lastname`, `email`, `comment`) VALUES
(1, 'Azharul', 'Islam', 'azad.ece13@gmai', 'My comment is getting successful.'),
(2, 'zahid', 'hasan', 'hasan@gmail.com', 'good job');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doc_id` int(22) NOT NULL,
  `doctor_id` varchar(22) NOT NULL,
  `name` varchar(22) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(14) NOT NULL,
  `email` varchar(22) NOT NULL,
  `expertise` varchar(22) NOT NULL,
  `id` int(11) NOT NULL,
  `fee` varchar(111) NOT NULL,
  `userid` varchar(22) NOT NULL,
  `password` varchar(200) NOT NULL,
  `pic` varchar(111) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doc_id`, `doctor_id`, `name`, `address`, `contact`, `email`, `expertise`, `id`, `fee`, `userid`, `password`, `pic`) VALUES
(9, '6', 'Dr. Abul Kalam', 'Multan', '+8801976564536', 'abulkalam@gmail.com', 'Heart', 6, '5007', '1111', '12345', 'renal-calculi-62-638.jpg'),
(11, '11', 'Md. Azharul Islam', 'Multan', '01764761919', 'azad.ece13@gmail.com', 'Bone', 0, '800', '1012', '12345', 'doctor1.jpg'),
(12, '11', 'Azharul Islam', 'Multan', '01764761919', 'azad.ece13@gmail.com', 'Kedney', 0, '800', '1011', '12345', 'doctor5.jpg'),
(17, '', 'Md. Azharul Islam', 'Multan', '01764761919', 'hasan@gmail.com', 'Medicine', 0, '600', '1015', '12345', 'header3.jpg'),
(18, '6', 'Dr. Abul Kalam', 'Karachi', '+8801976564536', 'abulkalam@gmail.com', 'Heart', 6, '5007', '1111', '123456', 'renal-calculi-62-638.jpg'),
(19, '11', 'Md. Azharul Islam', 'Karachi', '01764761919', 'azad.ece13@gmail.com', 'Bone', 0, '800', '1012', '12345', 'doctor1.jpg'),
(20, '11', 'Azharul Islam', 'Karachi', '01764761919', 'azad.ece13@gmail.com', 'Kedney', 0, '800', '1011', '12345', 'doctor5.jpg'),
(22, '', 'Md. Azharul Islam', 'Karachi', '01764761919', 'hasan@gmail.com', 'Medicine', 0, '600', '1015', '12345', 'header3.jpg'),
(23, '6', 'Dr. Abul Kalam', 'Lahore', '+8801976564536', 'abulkalam@gmail.com', 'Heart', 6, '5007', '1111', '12345', 'renal-calculi-62-638.jpg'),
(24, '11', 'Md. Azharul Islam', 'Lahore', '01764761919', 'azad.ece13@gmail.com', 'Bone', 0, '800', '1012', '12345', 'doctor1.jpg'),
(25, '11', 'Azharul Islam', 'Lahore', '01764761919', 'azad.ece13@gmail.com', 'Kedney', 0, '800', '1011', '12345', 'doctor5.jpg'),
(27, '', 'Md. Azharul Islam', 'Islamabad', '01764761919', 'hasan@gmail.com', 'Medicine', 0, '600', '1015', '12345', 'header3.jpg'),
(28, '6', 'Dr. Abul Kalam', 'Islamabad', '+8801976564536', 'abulkalam@gmail.com', 'Heart', 6, '5007', '1111', '12345', 'renal-calculi-62-638.jpg'),
(29, '11', 'Md. Azharul Islam', 'Islamabad', '01764761919', 'azad.ece13@gmail.com', 'Bone', 0, '800', '1012', '12345', 'doctor1.jpg'),
(30, '11', 'Azharul Islam', 'Islamabad', '01764761919', 'azad.ece13@gmail.com', 'Kedney', 0, '800', '1011', '12345', 'doctor5.jpg'),
(32, '', 'Md. Azharul Islam', 'Lahore', '01764761919', 'hasan@gmail.com', 'Medicine', 0, '600', '1015', '12345', 'header3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(22) NOT NULL,
  `feedback` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `feedback`) VALUES
(3, 'hmad@gmail.com', 'hello world\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `age` varchar(22) NOT NULL,
  `contact` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `bgroup` varchar(22) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `age`, `contact`, `address`, `bgroup`, `email`, `password`) VALUES
(1, 'Md. Azharul Islam', '21', '01746314882', 'Dinajpur', 'O+', 'azad.ece13@gmail.com', '1234'),
(3, 'test name', '22', '01765674567', 'Dinajpur', 'AB-', 'test1@gmail.com', '123'),
(9, 'akbar', '34', '03340183098', 'akbar multan', 'B+', 'akbar@gmail.com', '123456'),
(10, 'ali ali', '34', '878686876868', 'ali shah', 'B+', 'ali@gmail.com', '123456'),
(11, 'saad', '25', '89897987979', 'saad house', 'B+', 'saad@gmail.com', '123456'),
(12, 'aslam awan', '45', '980980980809', 'aslam house', 'B+', 'aslam@gmail.com', '123456'),
(14, 'ahmad hassan', '24', '87987979797', 'ismail colony', 'B+', 'hmad@gmail.com', '654321');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `type`) VALUES
('admin', 'admin', 'admin'),
('admin', '123456', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `type`) VALUES
('admin', '123456', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  ADD PRIMARY KEY (`bg_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodgroup`
--
ALTER TABLE `bloodgroup`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doc_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
