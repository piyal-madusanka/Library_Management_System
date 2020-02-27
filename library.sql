-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 09:16 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'imalka', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `book_register`
--

CREATE TABLE `book_register` (
  `id` int(11) NOT NULL,
  `access_no` varchar(100) NOT NULL,
  `book_name` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `edition` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `num_of_copy` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `children_register`
--

CREATE TABLE `children_register` (
  `id` int(11) NOT NULL,
  `children_id` varchar(250) NOT NULL,
  `name` varchar(100) NOT NULL,
  `regi_date` varchar(50) DEFAULT NULL,
  `date_expire` varchar(50) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `gardian_name` varchar(100) NOT NULL,
  `gar_contact_num` int(11) NOT NULL,
  `gar_nic` varchar(100) NOT NULL,
  `gar_email` varchar(100) NOT NULL,
  `gar_address` varchar(100) NOT NULL,
  `gar_position` varchar(100) NOT NULL,
  `gar_gender` varchar(50) NOT NULL,
  `birth_day` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `children_register`
--

INSERT INTO `children_register` (`id`, `children_id`, `name`, `regi_date`, `date_expire`, `gender`, `gardian_name`, `gar_contact_num`, `gar_nic`, `gar_email`, `gar_address`, `gar_position`, `gar_gender`, `birth_day`) VALUES
(5, 'c0001', 'ffdf', 'Jan 2, 2020', 'Jan 2, 2020', 'male', 'fdfdfd', 164646, 'fdfdfd', 'fdfdf', 'fdfd', 'fdfd', 'male', 'Jan 1, 2020'),
(6, 'c0002', 'rerere', 'Jan 10, 2020', 'Jan 2, 2020', 'female', 'erere', 44444, '555', 'fdf', 'fdfd', 'fdf', 'male', 'Jan 9, 2020'),
(7, 'c0003', 'dsds', 'Jan 2, 2020', 'Jan 9, 2020', 'female', 'dsds', 22, '222', 'dc', 'cxc', 'cxc', 'male', 'Jan 8, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `donater`
--

CREATE TABLE `donater` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donater`
--

INSERT INTO `donater` (`id`, `name`, `nic`, `contact`, `email`, `address`) VALUES
(1, 'Mrnuwan', '44444', 5555, 'dsdsds', 'dsdsds'),
(2, 'Mr dddf', 'dfd', 155, 'fdfdf', 'fdfdfd');

-- --------------------------------------------------------

--
-- Table structure for table `elder_register`
--

CREATE TABLE `elder_register` (
  `id` int(11) NOT NULL,
  `elder_id` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nic` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `email` varchar(250) NOT NULL,
  `d_registration` varchar(100) DEFAULT NULL,
  `d_expire` varchar(100) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `access_number_1` varchar(100) NOT NULL,
  `access_number_2` varchar(100) NOT NULL,
  `book_name_01` varchar(100) NOT NULL,
  `book_name_02` varchar(100) NOT NULL,
  `category_1` varchar(100) NOT NULL,
  `category_2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `elder_register`
--

INSERT INTO `elder_register` (`id`, `elder_id`, `name`, `nic`, `address`, `contact`, `email`, `d_registration`, `d_expire`, `gender`, `access_number_1`, `access_number_2`, `book_name_01`, `book_name_02`, `category_1`, `category_2`) VALUES
(8, 'e0001', 'yasas pankaja', '34522269v', ',no : 6 ,waligama,mathara', 782564562, 'yasas@gmail.com', NULL, NULL, 'male', '01', '02', 'gamperaliya', 'madol duwa', '12', '13'),
(9, 'e0002', 'chamli lorance', '930025654v', 'uyanwaththa , mathara ', 775620369, 'chamli@gmail.com', NULL, NULL, 'male', '03', '04', 'yuganthaya', 'kaluwara gedara', '12', '12');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `name`, `birthday`, `nic`, `address`, `contact`, `email`, `gender`) VALUES
(1, 'ST001', 'ruwan', 'Jan 10, 2020', 'sasa', 'asa', 2322, 'dsds', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`id`, `username`, `password`) VALUES
(1, 'madusanka', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `nic`, `contact`, `email`, `company`, `address`) VALUES
(1, 'Mr nuwan', 'cc', 12234, 'fdfd', 'dfdfdfd', 'fdfd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_register`
--
ALTER TABLE `book_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `children_register`
--
ALTER TABLE `children_register`
  ADD PRIMARY KEY (`id`,`children_id`);

--
-- Indexes for table `donater`
--
ALTER TABLE `donater`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elder_register`
--
ALTER TABLE `elder_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `book_register`
--
ALTER TABLE `book_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `children_register`
--
ALTER TABLE `children_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `donater`
--
ALTER TABLE `donater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `elder_register`
--
ALTER TABLE `elder_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `staff_login`
--
ALTER TABLE `staff_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
