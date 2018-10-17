-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2018 at 06:54 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dade_student`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `code` varchar(7) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `professor_id_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`code`, `name`, `description`, `professor_id_fk`) VALUES
('HES0101', 'chemistry_1', 'Introduction of chemistry', 9),
('HSI0101', 'history_1', 'Introduction of history', 3),
('HTM0101', 'html_1', 'Introduction of html', 6),
('JAV0101', 'java_1', 'Introduction of java', 10),
('JOU0101', 'journalism_1', 'Introduction of journalism', 4),
('MAT0101', 'physics_1', 'Introduction of mathmatics', 5),
('MED0101', 'medicine_1', 'Introduction of medicine', 2),
('MUS0101', 'music_1', 'Introduction of musical intrument', 7),
('PHY0101', 'physics_1', 'Introduction of physics', 1),
('SQL0101', 'mysql_1', 'Introduction of sql', 8);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` enum('SCIENCE','HUMANITIES','MUSIC','JOURNALISM','HISTORY','MEDICINE') NOT NULL,
  `tenure` tinyint(1) NOT NULL,
  `date_started_work` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`id`, `name`, `department`, `tenure`, `date_started_work`) VALUES
(1, 'Dr. sawkat hasan', 'SCIENCE', 1, '2017-12-01'),
(2, 'Dr. matin voiya', 'SCIENCE', 0, '2017-12-11'),
(3, 'Dr. john alexis', 'MEDICINE', 1, '2017-12-12'),
(4, 'Dr. kamrul hasan', 'MEDICINE', 0, '2017-12-21'),
(5, 'Dr. dulal hasan', 'HISTORY', 1, '2017-12-20'),
(6, 'Dr. belalayet rahman', 'MUSIC', 1, '2017-12-30'),
(7, 'Dr. rabeya aktar', 'HUMANITIES', 0, '2017-12-25'),
(8, 'Dr. shetu das', 'JOURNALISM', 1, '2017-12-18'),
(9, 'Dr. nila rahman', 'HUMANITIES', 1, '2017-12-13'),
(10, 'Dr toma rahman', 'MUSIC', 1, '2017-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('CURRENT','WAITTING','PASSED','FAILED') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `date_of_birth`, `date_of_register`, `status`) VALUES
(1, 'Kevon', '2001-11-01', '2018-07-04 18:57:34', 'CURRENT'),
(2, 'Annalise', '2000-01-12', '2017-12-26 18:30:32', 'PASSED'),
(3, 'Lucie', '2002-10-09', '2018-07-31 18:13:56', 'PASSED'),
(4, 'Kaley', '2002-11-25', '2017-10-24 03:08:14', 'FAILED'),
(5, 'Camille', '2002-12-06', '2018-06-22 11:08:50', 'CURRENT'),
(6, 'Stefanie', '2000-04-19', '2017-11-12 01:04:21', 'PASSED'),
(7, 'Ferne', '2001-06-28', '2017-10-31 22:00:17', 'CURRENT'),
(8, 'Santos', '2001-07-04', '2018-08-17 22:25:34', 'WAITTING'),
(9, 'Aurelie', '2002-01-17', '2018-03-19 05:45:41', 'CURRENT'),
(10, 'Jana', '2002-09-09', '2018-06-14 18:16:41', 'FAILED'),
(11, 'Geraldine', '2001-11-20', '2017-10-17 23:22:00', 'FAILED'),
(12, 'Gerald', '2001-01-12', '2018-06-29 11:12:45', 'CURRENT'),
(13, 'Janessa', '2001-04-25', '2018-05-06 08:23:01', 'PASSED'),
(14, 'Estel', '2000-01-30', '2018-04-08 22:41:41', 'WAITTING'),
(15, 'Ewell', '2002-05-14', '2018-06-06 14:50:35', 'WAITTING'),
(16, 'Hipolito', '2002-11-18', '2018-03-25 19:46:35', 'WAITTING'),
(17, 'Ambrose', '2000-11-24', '2018-07-13 14:40:10', 'WAITTING'),
(18, 'Linwood', '2001-07-05', '2018-05-28 11:57:41', 'WAITTING'),
(19, 'Kayley', '2001-02-09', '2018-08-01 23:51:26', 'PASSED'),
(20, 'Dameon', '2002-12-10', '2018-01-09 15:48:37', 'PASSED'),
(21, 'Burnice', '2001-10-20', '2018-03-24 00:11:44', 'FAILED'),
(22, 'Daren', '2000-07-07', '2018-08-15 02:29:37', 'CURRENT'),
(23, 'Jessyca', '2002-09-07', '2017-12-07 19:16:13', 'FAILED'),
(24, 'Bessie', '2000-03-25', '2017-12-04 21:36:18', 'CURRENT'),
(25, 'Kathlyn', '2002-02-03', '2018-07-16 04:55:12', 'CURRENT'),
(26, 'Natalie', '2002-06-02', '2018-08-02 03:49:41', 'FAILED'),
(27, 'Vincenza', '2001-09-19', '2018-03-21 06:06:54', 'CURRENT'),
(28, 'Aleen', '2000-11-19', '2017-11-13 21:56:59', 'PASSED'),
(29, 'Jairo', '2002-09-16', '2017-12-20 11:51:13', 'FAILED'),
(30, 'Matilda', '2001-12-01', '2018-02-26 08:25:51', 'PASSED'),
(31, 'Toby', '2000-11-16', '2018-01-14 06:19:59', 'WAITTING'),
(32, 'Henri', '2000-03-08', '2018-08-12 15:05:16', 'CURRENT'),
(33, 'Kendra', '2002-07-18', '2018-05-18 19:52:21', 'FAILED'),
(34, 'Simone', '2002-02-13', '2018-01-27 17:45:36', 'WAITTING'),
(35, 'Tyrel', '2002-06-27', '2018-04-03 15:45:37', 'FAILED'),
(36, 'Abby', '2000-06-12', '2018-08-04 19:15:29', 'WAITTING'),
(37, 'Kristina', '2000-08-18', '2018-06-27 01:02:24', 'CURRENT'),
(38, 'Nelson', '2001-03-29', '2018-02-06 06:35:48', 'WAITTING'),
(39, 'Arnold', '2002-06-15', '2018-05-09 03:09:39', 'FAILED'),
(40, 'Fiona', '2001-08-17', '2018-04-12 11:26:46', 'PASSED'),
(41, 'Gloria', '2002-08-22', '2018-06-22 22:31:44', 'PASSED'),
(42, 'Eldred', '2001-01-24', '2018-01-07 21:55:36', 'FAILED'),
(43, 'Alexis', '2001-11-08', '2018-02-02 03:50:19', 'WAITTING'),
(44, 'Betty', '2002-06-28', '2018-08-25 13:31:41', 'FAILED'),
(45, 'Heidi', '2000-11-10', '2018-01-06 20:21:53', 'PASSED'),
(46, 'Leonora', '2001-01-18', '2018-06-19 13:37:27', 'CURRENT'),
(47, 'Abelardo', '2000-02-05', '2018-10-02 00:59:45', 'CURRENT'),
(48, 'Jayme', '2000-05-12', '2017-11-06 06:54:34', 'CURRENT'),
(49, 'Amos', '2000-11-11', '2018-09-20 13:44:06', 'CURRENT'),
(50, 'Bridget', '2000-08-15', '2018-01-19 16:50:23', 'WAITTING'),
(51, 'Lionel', '2001-06-17', '2017-11-08 18:02:11', 'FAILED'),
(52, 'Ernesto', '2000-11-15', '2018-06-03 23:04:37', 'CURRENT'),
(53, 'Nedra', '2001-11-20', '2018-08-07 18:34:15', 'FAILED'),
(54, 'Hazle', '2002-02-24', '2018-03-26 11:54:41', 'PASSED'),
(55, 'Roxanne', '2001-04-12', '2018-09-16 06:31:47', 'WAITTING'),
(56, 'Brady', '2001-12-20', '2018-03-11 04:31:07', 'FAILED'),
(57, 'Johathan', '2001-05-16', '2018-03-01 21:31:27', 'CURRENT'),
(58, 'Ismael', '2002-09-23', '2018-10-04 16:14:34', 'WAITTING'),
(59, 'Maximo', '2002-06-12', '2017-11-26 02:41:56', 'WAITTING'),
(60, 'Tremaine', '2001-03-25', '2018-09-24 21:34:57', 'FAILED');

-- --------------------------------------------------------

--
-- Table structure for table `students_classes`
--

CREATE TABLE `students_classes` (
  `id` int(11) NOT NULL,
  `students_id_fk` int(11) NOT NULL,
  `classes_id_fk` char(7) NOT NULL,
  `professor_id_fk` int(11) NOT NULL,
  `date_class_started` date NOT NULL,
  `date_class_end` date NOT NULL,
  `grade` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students_classes`
--

INSERT INTO `students_classes` (`id`, `students_id_fk`, `classes_id_fk`, `professor_id_fk`, `date_class_started`, `date_class_end`, `grade`) VALUES
(1, 44, 'HES0101', 9, '2018-06-25', '2018-07-15', '87'),
(2, 34, 'HSI0101', 7, '2018-04-24', '2018-06-17', '82'),
(3, 58, 'HTM0101', 7, '2018-01-06', '2018-06-20', '78'),
(4, 25, 'MUS0101', 4, '2018-04-21', '0000-00-00', 'null'),
(5, 33, 'JOU0101', 6, '2018-08-18', '2018-09-18', 'null'),
(6, 6, 'MAT0101', 2, '2018-05-25', '2018-06-18', '60'),
(7, 40, 'MED0101', 10, '2018-03-23', '2018-04-13', '79'),
(8, 39, 'MUS0101', 3, '2018-02-11', '2018-03-11', 'null'),
(9, 50, 'PHY0101', 1, '2018-03-21', '2018-04-13', '97'),
(10, 28, 'SQL0101', 3, '2018-04-05', '2018-05-15', '61'),
(11, 40, 'HES0101', 7, '2018-03-16', '2018-04-11', '94'),
(12, 20, 'HSI0101', 6, '2018-08-20', '2017-12-13', '95'),
(13, 57, 'HTM0101', 9, '2018-01-01', '2018-01-26', '88'),
(14, 24, 'JAV0101', 4, '2018-09-06', '2018-10-14', '75'),
(15, 1, 'JOU0101', 4, '2018-08-14', '0000-00-00', 'null'),
(16, 57, 'MAT0101', 7, '2018-03-13', '2018-04-19', '98'),
(17, 59, 'MED0101', 10, '2018-06-15', '2018-07-15', 'null'),
(18, 55, 'MUS0101', 9, '2018-07-19', '2018-08-19', 'null'),
(19, 32, 'PHY0101', 9, '2018-01-05', '2018-02-05', 'null'),
(20, 51, 'SQL0101', 10, '2018-03-02', '2018-04-10', '70'),
(21, 2, 'HES0101', 7, '2018-07-19', '2018-08-17', '88'),
(22, 57, 'HSI0101', 7, '2018-09-21', '2018-10-11', '67'),
(23, 30, 'HTM0101', 6, '2018-10-15', '0000-00-00', 'null'),
(24, 37, 'JAV0101', 9, '2018-03-23', '2018-04-23', 'null'),
(25, 40, 'JOU0101', 1, '2018-10-11', '0000-00-00', 'null'),
(26, 53, 'MAT0101', 5, '2018-02-21', '2018-03-16', '97'),
(27, 16, 'MED0101', 9, '2018-05-04', '2018-06-04', 'null'),
(28, 7, 'MUS0101', 5, '2018-05-16', '2018-06-20', '73'),
(29, 57, 'PHY0101', 1, '2018-05-17', '2018-06-07', '67'),
(30, 12, 'SQL0101', 6, '2018-07-01', '2018-08-02', '80'),
(31, 39, 'HES0101', 8, '2018-05-09', '0000-00-00', 'null'),
(32, 19, 'HSI0101', 10, '2018-06-18', '2018-07-23', '85'),
(33, 7, 'HTM0101', 3, '2018-04-13', '2018-05-12', '99'),
(34, 37, 'JAV0101', 9, '2018-07-07', '0000-00-00', 'null'),
(35, 6, 'JOU0101', 3, '2018-02-14', '2018-03-09', '97'),
(36, 60, 'MAT0101', 3, '2018-06-07', '2018-07-09', '66'),
(37, 13, 'MED0101', 4, '2018-09-23', '2018-04-23', '87'),
(38, 28, 'MUS0101', 1, '2018-04-21', '2018-05-19', '91'),
(39, 15, 'PHY0101', 8, '2018-02-01', '2018-03-12', '91'),
(40, 11, 'SQL0101', 8, '2018-08-24', '2018-01-20', '80'),
(41, 60, 'HES0101', 6, '2018-01-24', '2018-02-16', '100'),
(42, 22, 'HSI0101', 9, '2017-12-23', '0000-00-00', 'null'),
(43, 12, 'HTM0101', 7, '2018-02-06', '2018-02-18', '70'),
(44, 48, 'JAV0101', 3, '2018-10-07', '0000-00-00', 'null'),
(45, 9, 'JOU0101', 6, '2018-09-17', '0000-00-00', 'null'),
(46, 57, 'MAT0101', 6, '2018-04-15', '2018-05-25', '78'),
(47, 12, 'MED0101', 10, '2018-04-27', '2018-05-27', '81'),
(48, 52, 'MUS0101', 5, '2018-01-09', '2018-02-09', 'null'),
(49, 24, 'PHY0101', 5, '2018-04-20', '2018-05-10', '61'),
(50, 9, 'SQL0101', 1, '2018-02-15', '2018-03-07', '99'),
(51, 58, 'HES0101', 2, '2018-10-09', '0000-00-00', 'null'),
(52, 47, 'HSI0101', 4, '2018-03-10', '2018-07-01', '60'),
(53, 43, 'MAT0101', 5, '2018-03-31', '0000-00-00', 'null'),
(54, 44, 'JAV0101', 1, '2018-06-27', '2018-07-21', '75'),
(55, 48, 'JOU0101', 1, '2018-01-09', '2018-02-13', '99'),
(56, 6, 'MAT0101', 3, '2018-07-09', '2018-08-12', '62'),
(57, 51, 'MED0101', 4, '2018-02-24', '2018-03-24', 'null'),
(58, 60, 'MUS0101', 7, '2018-06-25', '2018-07-06', '61'),
(59, 10, 'PHY0101', 6, '2018-09-25', '0000-00-00', 'null'),
(60, 12, 'PHY0101', 2, '2018-06-22', '2018-07-24', '65'),
(61, 41, 'HES0101', 9, '2018-01-21', '2018-02-21', 'null'),
(62, 30, 'HSI0101', 10, '2018-05-29', '2018-06-08', '97'),
(63, 48, 'HTM0101', 9, '2018-05-31', '2018-06-30', 'null'),
(64, 4, 'JAV0101', 8, '2018-02-25', '0000-00-00', 'null'),
(65, 50, 'JOU0101', 6, '2018-03-15', '2018-04-15', 'null'),
(66, 60, 'MAT0101', 8, '2018-09-10', '2017-10-24', '86'),
(67, 38, 'MED0101', 9, '2017-10-31', '0000-00-00', 'null'),
(68, 50, 'MUS0101', 3, '2018-10-09', '0000-00-00', 'null'),
(69, 9, 'PHY0101', 4, '2017-12-24', '2018-01-24', 'null'),
(70, 59, 'SQL0101', 4, '2018-05-09', '2018-08-13', '94'),
(71, 33, 'HES0101', 3, '2018-02-20', '2018-03-10', '60'),
(72, 23, 'HSI0101', 8, '2018-08-12', '2017-09-12', '66'),
(73, 10, 'HTM0101', 2, '2018-08-03', '2018-09-10', '76'),
(74, 12, 'JAV0101', 4, '2018-05-03', '2018-06-28', '100'),
(75, 55, 'JOU0101', 4, '2018-05-30', '0000-00-00', 'null'),
(76, 53, 'MAT0101', 4, '2018-01-06', '2018-02-06', 'null'),
(77, 26, 'MED0101', 3, '2018-08-18', '2018-09-27', '95'),
(78, 12, 'MUS0101', 2, '2018-03-09', '2018-04-08', '98'),
(79, 23, 'PHY0101', 8, '2018-07-14', '2018-08-27', '74'),
(80, 13, 'SQL0101', 7, '2018-01-06', '2018-10-15', '79'),
(81, 12, 'HES0101', 7, '2018-03-16', '2018-04-11', '98'),
(82, 12, 'MAT0101', 2, '2018-05-25', '2018-06-18', '90'),
(83, 12, 'JOU0101', 6, '2018-08-18', '2018-09-18', '85'),
(84, 12, 'HSI0101', 7, '2018-04-24', '2018-06-17', '92');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_classes`
--
ALTER TABLE `students_classes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `students_classes`
--
ALTER TABLE `students_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
