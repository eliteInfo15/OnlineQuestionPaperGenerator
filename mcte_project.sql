-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 22, 2018 at 01:15 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcte_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `change_request`
--

DROP TABLE IF EXISTS `change_request`;
CREATE TABLE IF NOT EXISTS `change_request` (
  `instructor_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`instructor_id`),
  KEY `instructor_id` (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(50) NOT NULL,
  `cduration` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `cname`, `cduration`) VALUES
(12, 'JENE', 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_semester`
--

DROP TABLE IF EXISTS `course_semester`;
CREATE TABLE IF NOT EXISTS `course_semester` (
  `cid` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  KEY `cid` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_semester`
--

INSERT INTO `course_semester` (`cid`, `semester`) VALUES
(12, 1),
(12, 2),
(12, 3),
(12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `course_subject`
--

DROP TABLE IF EXISTS `course_subject`;
CREATE TABLE IF NOT EXISTS `course_subject` (
  `cid` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  KEY `cid` (`cid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_subject`
--

INSERT INTO `course_subject` (`cid`, `semester`, `sid`) VALUES
(12, 1, 40),
(12, 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `instructor_id` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` varchar(12) DEFAULT NULL,
  `mobile` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`instructor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `fname`, `lname`, `gender`, `mobile`, `city`, `rank`, `email`, `date_of_birth`) VALUES
('Instructor_mcte@1', 'Abhishek', 'sharna', 'male', '7878787878', 'indore', 'staff', 'abhishekpurohit89@gmail.com', '1111-11-11'),
('Instructor_mcte@2', 'ram', 'lalu', 'male', '07000221871', 'dewas', 'teacher', 'abhishekpurohit89@gmail.com', '1111-11-11'),
('Instructor_mcte@3', 'rohan', 'sharma', 'male', '987654321', 'ujjain', 'dean', 'aa@dd', '2018-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_skills`
--

DROP TABLE IF EXISTS `instructor_skills`;
CREATE TABLE IF NOT EXISTS `instructor_skills` (
  `instructor_id` varchar(50) NOT NULL,
  `sid` int(11) NOT NULL,
  KEY `instructor_id` (`instructor_id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor_skills`
--

INSERT INTO `instructor_skills` (`instructor_id`, `sid`) VALUES
('Instructor_mcte@1', 39),
('Instructor_mcte@2', 40),
('Instructor_mcte@3', 39),
('Instructor_mcte@3', 40);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `role`) VALUES
('admin@mcte', 'admin123', 'admin'),
('Instructor_mcte@1', 'popo', 'instructor'),
('Instructor_mcte@2', 'popo', 'instructor'),
('Instructor_mcte@3', 'qwert', 'instructor');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(1000) NOT NULL,
  `marks` float NOT NULL,
  `level` varchar(50) NOT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`qid`, `value`, `marks`, `level`, `category`) VALUES
(20, 'what\\\\r\\\\n is function?', 2, 'medium', 3),
(21, 'what is time CHAR(13)+CHAR(10) complexity of for loop?', 2, 'low', 3),
(22, 'what is the use of return statement?', 2, 'low', 3),
(23, 'what is difference between call by value and reference?', 3, 'medium', 4),
(24, 'which is correct?\r\nA). 1\r\nB). 2\r\nC). 3\r\nD). 7', 1, 'medium', 1),
(25, 'which is wrong?\nA). 23\nB). 34\nC). 22\nD). 21', 1, 'low', 1),
(26, 'what is right?\nA).11\nB). 10\nC). 09\nD). 07', 1, 'high', 1),
(27, 'what is definition?\nA). abc\nB). def\nC). pqr\nD). qqq', 1, 'high', 1),
(28, 'why python is used? Write its features.', 3, 'medium', 4),
(29, 'python is released in _______', 1, 'medium', 2),
(30, 'how is following correct?\nA). 0\nB). 1\nC). 2\nD). 3', 1, 'medium', 1),
(31, 'which is correct for dictionary\nA). data structure\nB). loop\nC). function\nD). statement', 1, 'medium', 1),
(32, 'which version is latest?\nA). 5\nB). 2\nC). 3\nD). 1', 1, 'medium', 1),
(33, 'sdsdhsdhd?\nA). 1\nB). 2', 1, 'high', 1),
(34, 'what is while?\nA). loop\nB). arrray\nC). function', 1, 'high', 1),
(35, 'which is finite?\nA. 1\nB. 2\n', 1, 'high', 1),
(36, 'fill this______________', 1, 'medium', 2),
(37, 'fill in that___________', 1, 'medium', 2),
(38, 'fill_________', 1, 'high', 2),
(39, 'fill in this blank_____', 1, 'high', 2),
(40, 'hello ____ is sample', 1, 'high', 2),
(41, '____ lorem ipsum', 1, 'high', 2),
(42, 'lorem demo______', 1, 'high', 2),
(43, 'dummy text lorem______', 1, 'medium', 2),
(44, 'greater is _______', 1, 'medium', 2),
(45, 'hello demo_____', 1, 'low', 2),
(46, 'pyhton is _____', 1, 'low', 2),
(47, 'demo fill in_____', 1, 'low', 2),
(48, 'very very easy_______', 1, 'low', 2),
(49, 'black ________', 1, 'low', 2),
(50, 'what is data type?', 2, 'low', 3),
(51, 'python is compiled or interpreted?', 2, 'low', 3),
(52, 'how is  return type specified for functions', 2, 'low', 3),
(53, 'write differences between for and while loop', 2, 'low', 3),
(54, 'wap to print 10 numbers', 2, 'low', 3),
(55, 'wap to check even or odd', 2, 'low', 3),
(56, 'wap to check vowel or consonant', 2, 'low', 3),
(57, 'wap to print hello 10 times using function', 2, 'low', 3),
(58, 'wap to print fibonacci series.', 2, 'high', 3),
(59, 'wap to check prime numbers', 2, 'high', 3),
(60, 'wap to print prime numbers from 1 to 100', 2, 'low', 3),
(61, 'wap to print factorial', 2, 'high', 3),
(62, 'wap to print star pattern', 2, 'high', 3),
(63, 'wap to print all dictionary elements', 2, 'high', 3),
(64, 'wap to print array diagonal elements', 2, 'high', 3),
(65, 'wap to convert binary to decimal', 2, 'high', 3),
(66, 'wap to swap max and min element in dictionary', 2, 'high', 3),
(67, 'a', 3, 'high', 4),
(68, 'bb', 3, 'high', 4),
(69, 'mmm', 3, 'high', 4),
(70, 'huuu\\\\n\\\\ruuu', 3, 'high', 4),
(71, 'A is correct?\\n\r\nA). 11\r\nB). 12', 1, 'medium', 1),
(73, '_____ final', 1, 'medium', 2),
(74, 'write short note on functions', 3, 'high', 4),
(75, 'Which is write for call by value?\nA). aaaa\nB). cccc\nC). ddddd\nD). eeee', 1, 'high', 1),
(76, ',,,,,hhhhh', 2, 'low', 3),
(77, ',,,,,hhhhh', 2, 'low', 3),
(78, ',,,,,hhhhh', 2, 'low', 3),
(79, ',,,,,hhhhh', 2, 'low', 3),
(80, ',,,,,hhhhh', 2, 'low', 3),
(81, ',,,,,hhhhh', 2, 'low', 3),
(82, ',,,,,hhhhh', 2, 'low', 3),
(83, ',,,,,hhhhh', 2, 'low', 3),
(84, ',,,,,hhhhh', 2, 'low', 3),
(85, ',,,,,hhhhh', 2, 'low', 3),
(86, ',,,,,hhhhh', 2, 'low', 3),
(87, 'llll', 2, 'medium', 3),
(88, '_____jjijjjiiiiiii', 1, 'low', 2),
(89, 'what is kkkkk?\ni) A\nii) B', 1, 'high', 1),
(90, 'hhahhaa  SHdhsfd ?', 2, 'low', 3),
(91, 'hhhhhh______', 1, 'medium', 2),
(92, 'what is hello world?', 5, 'high', 5),
(93, 'what is difference between c and python?', 5, 'high', 5),
(94, 'what is medium of communication?', 5, 'medium', 5),
(95, 'what is low level and high level language', 3, 'low', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `sname`) VALUES
(39, 'java'),
(40, 'python');

-- --------------------------------------------------------

--
-- Table structure for table `subject_unit`
--

DROP TABLE IF EXISTS `subject_unit`;
CREATE TABLE IF NOT EXISTS `subject_unit` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  KEY `sid` (`sid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_unit`
--

INSERT INTO `subject_unit` (`sid`, `uid`) VALUES
(39, 24),
(39, 23),
(40, 29),
(40, 28),
(40, 27);

-- --------------------------------------------------------

--
-- Table structure for table `subject_unit_questions`
--

DROP TABLE IF EXISTS `subject_unit_questions`;
CREATE TABLE IF NOT EXISTS `subject_unit_questions` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  KEY `sid` (`sid`),
  KEY `uid` (`uid`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_unit_questions`
--

INSERT INTO `subject_unit_questions` (`sid`, `uid`, `qid`) VALUES
(40, 29, 20),
(40, 28, 21),
(40, 29, 22),
(40, 29, 23),
(40, 28, 24),
(40, 27, 25),
(40, 28, 26),
(40, 27, 27),
(40, 27, 28),
(40, 29, 29),
(40, 29, 30),
(40, 28, 31),
(40, 27, 32),
(40, 28, 33),
(40, 28, 34),
(40, 29, 35),
(40, 29, 36),
(40, 27, 37),
(40, 29, 38),
(40, 29, 39),
(40, 28, 40),
(40, 29, 41),
(40, 28, 42),
(40, 27, 43),
(40, 28, 44),
(40, 29, 45),
(40, 28, 46),
(40, 27, 47),
(40, 28, 48),
(40, 28, 49),
(40, 28, 50),
(40, 27, 51),
(40, 29, 52),
(40, 28, 53),
(40, 27, 54),
(40, 27, 55),
(40, 28, 56),
(40, 29, 57),
(40, 28, 58),
(40, 28, 59),
(40, 28, 60),
(40, 28, 61),
(40, 28, 62),
(40, 28, 63),
(40, 28, 64),
(40, 28, 65),
(40, 28, 66),
(40, 28, 67),
(40, 28, 68),
(40, 29, 69),
(40, 29, 70),
(40, 28, 71),
(40, 29, 73),
(40, 28, 74),
(40, 29, 75),
(40, 29, 76),
(40, 29, 77),
(40, 29, 78),
(40, 29, 79),
(40, 29, 80),
(40, 29, 81),
(40, 29, 82),
(40, 29, 83),
(40, 29, 84),
(40, 29, 85),
(40, 29, 86),
(40, 29, 87),
(40, 29, 88),
(40, 29, 89),
(40, 28, 90),
(40, 28, 91),
(40, 28, 92),
(40, 29, 93),
(40, 29, 94),
(40, 29, 95);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
CREATE TABLE IF NOT EXISTS `unit` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `unumber` int(11) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`uid`, `uname`, `unumber`) VALUES
(23, 'object oriented', 2),
(24, 'multithreading', 3),
(25, 'polynomials', 1),
(26, 'integration', 2),
(27, 'intro', 1),
(28, 'loops', 2),
(29, 'function', 3);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `change_request`
--
ALTER TABLE `change_request`
  ADD CONSTRAINT `change_request_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `course_semester`
--
ALTER TABLE `course_semester`
  ADD CONSTRAINT `course_semester_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`) ON DELETE CASCADE;

--
-- Constraints for table `course_subject`
--
ALTER TABLE `course_subject`
  ADD CONSTRAINT `course_subject_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_subject_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE;

--
-- Constraints for table `instructor_skills`
--
ALTER TABLE `instructor_skills`
  ADD CONSTRAINT `instructor_skills_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE,
  ADD CONSTRAINT `instructor_skills_ibfk_2` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_unit`
--
ALTER TABLE `subject_unit`
  ADD CONSTRAINT `subject_unit_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_unit_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `unit` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_unit_questions`
--
ALTER TABLE `subject_unit_questions`
  ADD CONSTRAINT `subject_unit_questions_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `question` (`qid`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_unit_questions_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `subject` (`sid`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_unit_questions_ibfk_3` FOREIGN KEY (`uid`) REFERENCES `unit` (`uid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
