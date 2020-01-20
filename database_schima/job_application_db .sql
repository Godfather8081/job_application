-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 20, 2020 at 06:44 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_application_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_tb`
--

CREATE TABLE `applicant_tb` (
  `applicant_id` int(10) NOT NULL,
  `applicant_firstname` varchar(30) NOT NULL,
  `applicant_lastname` varchar(20) NOT NULL,
  `applicant_address` varchar(80) NOT NULL,
  `applicant_email` varchar(50) NOT NULL,
  `applicant_city` varchar(20) NOT NULL,
  `applicant_phoneno` varchar(15) NOT NULL,
  `applicant_state` varchar(20) NOT NULL,
  `applicant_gen` varchar(8) NOT NULL,
  `applicant_relationship` varchar(20) NOT NULL,
  `applicant_dob` varchar(20) NOT NULL,
  `applicant_workexp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant_tb`
--

INSERT INTO `applicant_tb` (`applicant_id`, `applicant_firstname`, `applicant_lastname`, `applicant_address`, `applicant_email`, `applicant_city`, `applicant_phoneno`, `applicant_state`, `applicant_gen`, `applicant_relationship`, `applicant_dob`, `applicant_workexp`) VALUES
(6, 'vatsal', 'patel', '                    dfdgfgfddff', 'vatsal8081', 'ahmedabad', '9104243444', 'Maharastra', 'male', 'single', '1997-09-21', 'Compny Name : dfDesignationdfFrom : fddTo :dfd'),
(7, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'es, ba, 2019, 2019, self, dev, 2019, 2020, , , , '),
(8, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'es, ba, 2019, 2019, self, dev, 2019, 2020, , , , '),
(9, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'es, ba, 2019, 2019, self, dev, 2019, 2020, , , , '),
(10, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'es, ba, 2019, 2019, self, dev, 2019, 2020, , , , '),
(11, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'espark, ba, 2019, 2019, self, dev, 2020, 2020, , , , '),
(12, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'espark, ba, 2019, 2019, self, dev, 2020, 2020, , , , '),
(13, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'espark, ba, 2019, 2019, self, dev, 2020, 2020, , , , '),
(14, 'vatsal', 'patel', '28 arvachin cluster house bopal ahmedabad', 'vatsalpatel8081@gmail.com', 'ahmedabad', '09104243444', 'Gujarat', 'male', 'single', '1997-09-21', 'espark, ba, 2019, 2019, self, dev, 2020, 2020, , , , '),
(15, 'vatsal', 'patel', '                    28 arvachin', 'vatsal8081', 'ahmedabad', '9104243444', 'Maharastra', 'male', 'single', '21-9-1997', 'espark, 2, 2019, 2019, , , , , , , , '),
(16, 'kena', 'shah', '                    ', 'kenashah@gmail.com', 'ah', '8569856982', 'Maharastra', 'male', 'single', '', ', , , , , , , , , , , '),
(17, 'kena', 'shah', 'hotel grand hayat ni baju ni jupdi', 'kenashah@gmail.com', 'ahmedabad', '8569856982', 'Maharastra', 'male', 'single', '6-12-1998', 'espark, ba, 2019, 2019, , , , , , , , ');

-- --------------------------------------------------------

--
-- Table structure for table `education_tb`
--

CREATE TABLE `education_tb` (
  `edu_id` int(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `ssc` varchar(200) NOT NULL,
  `hsc` varchar(200) NOT NULL,
  `bachlor` varchar(200) NOT NULL,
  `master` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_tb`
--

INSERT INTO `education_tb` (`edu_id`, `applicant_id`, `ssc`, `hsc`, `bachlor`, `master`) VALUES
(1, 9, 'guj, 2010, 70', 'guj, 2011, 75', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.27'),
(2, 10, 'guj, 2010, 70', 'guj, 2011, 75', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.27'),
(3, 11, 'guj, 2011, 80', 'guj, 2012, 85', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.23'),
(4, 12, 'guj, 2011, 80', 'guj, 2012, 85', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.23'),
(5, 13, 'guj, 2011, 80', 'guj, 2012, 85', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.23'),
(6, 14, 'guj, 2011, 80', 'guj, 2012, 85', 'bca, gtu, 2014, 8.00', 'mca, gtu, 2019, 8.23'),
(7, 15, 'guj, 2010, 80', 'guj, 2012, 85', 'bca, gtu, 2015, 8', 'mca, gtu, 2019, 8.25'),
(8, 16, ', , ', ', , ', ', , , ', ', , , '),
(9, 17, 'guj, 2011, 80', 'guj, 2014, 90', 'bca, gtu, 2015, 8', 'mca, gtu, 2019, 8.85');

-- --------------------------------------------------------

--
-- Table structure for table `job_application_tb`
--

CREATE TABLE `job_application_tb` (
  `app_id` int(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `app_designation` varchar(20) NOT NULL,
  `app_refrences` varchar(255) NOT NULL,
  `app_prafrence` varchar(30) NOT NULL,
  `app_ectc` varchar(20) NOT NULL,
  `app_cctc` varchar(20) NOT NULL,
  `app_department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_application_tb`
--

INSERT INTO `job_application_tb` (`app_id`, `applicant_id`, `app_designation`, `app_refrences`, `app_prafrence`, `app_ectc`, `app_cctc`, `app_department`) VALUES
(1, 11, '', 'sahil, 8000406525, friend, , , ', 'goregau', '200000', '100000', 'development'),
(2, 12, '', 'sahil, 8000406525, friend, , , ', 'goregau', '200000', '100000', 'development'),
(3, 13, '', 'sahil, 8000406525, friend, , , ', 'goregau', '200000', '100000', 'development'),
(4, 14, '', 'sahil, 8000406525, friend, , , ', 'goregau', '200000', '100000', 'development'),
(5, 15, 'ba', 'abc, 69854875845, friend, , , ', 'satalite', '200000', '100000', 'development'),
(6, 16, 'ba', ', , , , , ', 'goregau', '', '', 'development'),
(7, 17, 'ba', 'abc, 9546854868, friend, , , ', 'goregau', '200000', '100000', 'development');

-- --------------------------------------------------------

--
-- Table structure for table `language_tb`
--

CREATE TABLE `language_tb` (
  `language_id` int(10) NOT NULL,
  `language_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language_tb`
--

INSERT INTO `language_tb` (`language_id`, `language_name`) VALUES
(1, 'Hindi'),
(2, 'English'),
(3, 'Gujarati');

-- --------------------------------------------------------

--
-- Table structure for table `preferloc_tb`
--

CREATE TABLE `preferloc_tb` (
  `prefer_id` int(10) NOT NULL,
  `prefer_name` varchar(40) NOT NULL,
  `state_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferloc_tb`
--

INSERT INTO `preferloc_tb` (`prefer_id`, `prefer_name`, `state_id`) VALUES
(1, 'satalite', 1),
(2, 'goregau', 2);

-- --------------------------------------------------------

--
-- Table structure for table `state_tb`
--

CREATE TABLE `state_tb` (
  `state_id` int(10) NOT NULL,
  `state_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_tb`
--

INSERT INTO `state_tb` (`state_id`, `state_name`) VALUES
(1, 'Gujarat'),
(2, 'Maharastra');

-- --------------------------------------------------------

--
-- Table structure for table `technology_tb`
--

CREATE TABLE `technology_tb` (
  `technology_id` int(10) NOT NULL,
  `technology_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technology_tb`
--

INSERT INTO `technology_tb` (`technology_id`, `technology_name`) VALUES
(1, 'PHP'),
(2, 'Python'),
(3, 'Laraval'),
(4, 'SQL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicant_tb`
--
ALTER TABLE `applicant_tb`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `education_tb`
--
ALTER TABLE `education_tb`
  ADD PRIMARY KEY (`edu_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `job_application_tb`
--
ALTER TABLE `job_application_tb`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `language_tb`
--
ALTER TABLE `language_tb`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `preferloc_tb`
--
ALTER TABLE `preferloc_tb`
  ADD PRIMARY KEY (`prefer_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `state_tb`
--
ALTER TABLE `state_tb`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `technology_tb`
--
ALTER TABLE `technology_tb`
  ADD PRIMARY KEY (`technology_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applicant_tb`
--
ALTER TABLE `applicant_tb`
  MODIFY `applicant_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `education_tb`
--
ALTER TABLE `education_tb`
  MODIFY `edu_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_application_tb`
--
ALTER TABLE `job_application_tb`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `language_tb`
--
ALTER TABLE `language_tb`
  MODIFY `language_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `preferloc_tb`
--
ALTER TABLE `preferloc_tb`
  MODIFY `prefer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state_tb`
--
ALTER TABLE `state_tb`
  MODIFY `state_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technology_tb`
--
ALTER TABLE `technology_tb`
  MODIFY `technology_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education_tb`
--
ALTER TABLE `education_tb`
  ADD CONSTRAINT `education_tb_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `applicant_tb` (`applicant_id`);

--
-- Constraints for table `job_application_tb`
--
ALTER TABLE `job_application_tb`
  ADD CONSTRAINT `job_application_tb_ibfk_1` FOREIGN KEY (`applicant_id`) REFERENCES `applicant_tb` (`applicant_id`);

--
-- Constraints for table `preferloc_tb`
--
ALTER TABLE `preferloc_tb`
  ADD CONSTRAINT `preferloc_tb_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `state_tb` (`state_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
