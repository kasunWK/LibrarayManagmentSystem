-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 01, 2023 at 05:02 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libmng`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(15) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` int UNSIGNED NOT NULL,
  `security_ques` varchar(45) NOT NULL,
  `answer` varchar(25) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `name`, `password`, `security_ques`, `answer`) VALUES
('kalpanie', 'kalpanie', 123, 'What is your mother toungue?', 'sinhala');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` int UNSIGNED NOT NULL,
  `publisher` varchar(35) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `name`, `edition`, `publisher`, `price`, `stock`) VALUES
(293, 'Biology', 1, 'Nandadasa', 1500, 3),
(320, 'Divine Comedy', 1, 'Dante', 2750, 1),
(327, 'Ape Gama', 1, 'Martin Wickramasingha', 800, 5),
(343, 'Sahithya Rasaswadaya', 1, 'Karuna Samaranayaka', 850, 3),
(347, 'The Art of Computer Programming', 1, 'Donald Knuth', 5350, 1),
(405, 'Gamperaliya', 1, 'Martin Wickramesingha', 750, 1),
(456, 'Born Digital', 2, 'John Palfrey', 9000, 2),
(471, 'Ben Hur', 1, 'Lewis Wallace', 100, 1),
(548, 'How to Design Programs', 1, ' Matthias Felleisen', 8350, 1),
(570, 'Concrete Mathematics', 3, 'Ronald Graham', 5000, 2),
(594, 'Introduction to Algorithms', 1, 'Thomas H.Coreman', 7250, 2),
(670, 'Agni Veena', 2, 'Kazi Nasrul Islam', 100, 2),
(752, 'Araliya', 1, 'Nimala Disanayaka', 400, 2),
(831, 'Adventures of Tom Sawyer', 1, 'Mark Twain', 900, 3),
(889, 'Geethanjalee', 1, 'Rabindra Nath Tagore', 1800, 3),
(900, 'Delusions of Gender', 4, 'Cordelia Fine', 6700, 2),
(992, 'Rana Bima Osse Nandikadal', 1, 'Sarath Gunarathna', 5600, 5);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
CREATE TABLE IF NOT EXISTS `issue` (
  `book_id` int UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` int UNSIGNED NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  `stu_id` int UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(25) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `doi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`book_id`, `b_name`, `edition`, `publisher`, `price`, `stock`, `stu_id`, `s_name`, `f_name`, `course`, `branch`, `year`, `semister`, `doi`) VALUES
(807, 'Science', 1, 'Kalpanie', 500, 1, 334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', '2023-07-30'),
(807, 'Science', 1, 'Kalpanie', 500, 0, 334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', '2023-07-30'),
(807, 'Science', 1, 'Kalpanie', 500, 1, 334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', '2023-07-30'),
(405, 'Gamperaliya', 1, 'Martin Wickramesingha', 750, 1, 589, 'thisarani', 'Rathnayaka', 'BSc', 'Kandy', '2nd', '2nd', '2023-07-25'),
(405, 'Gamperaliya', 1, 'Martin Wickramesingha', 750, 1, 334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd', '2023-07-26'),
(752, 'Araliya', 1, 'Nimala Disanayaka', 400, 3, 615, 'thanuja', 'Karu', 'BSc', 'Kandy', '1st', '1st', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `returntbl`
--

DROP TABLE IF EXISTS `returntbl`;
CREATE TABLE IF NOT EXISTS `returntbl` (
  `stu_id` int UNSIGNED NOT NULL,
  `s_name` varchar(25) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  `book_id` int UNSIGNED NOT NULL,
  `b_name` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `publisher` varchar(25) NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `stock` int UNSIGNED NOT NULL,
  `doi` date NOT NULL,
  `doreturn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `fathers_name` varchar(25) NOT NULL,
  `course` varchar(15) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `year` varchar(15) NOT NULL,
  `semister` varchar(15) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `fathers_name`, `course`, `branch`, `year`, `semister`) VALUES
(1, '', '', 'BSc', '', '1st', '1st'),
(334, 'adrian', 'arnulfo', 'BBA', 'bear branch', '4th', '2nd'),
(589, 'thisarani', 'Rathnayaka', 'BSc', 'Kandy', '2nd', '2nd'),
(615, 'thanuja', 'Karu', 'BSc', 'Kandy', '1st', '1st');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
