-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- المزود: localhost
-- أنشئ في: 02 يوليو 2021 الساعة 18:49
-- إصدارة المزود: 5.1.53
--  PHP إصدارة: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- قاعدة البيانات: `student_database`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`Password`) VALUES
('123');

-- --------------------------------------------------------

--
-- بنية الجدول `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_no` int(50) NOT NULL AUTO_INCREMENT,
  `class_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`class_no`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- إرجاع أو استيراد بيانات الجدول `class`
--

INSERT INTO `class` (`class_no`, `class_Name`) VALUES
(1, 'one'),
(2, 'Two'),
(3, 'Three'),
(4, 'Four');

-- --------------------------------------------------------

--
-- بنية الجدول `class_sub`
--

CREATE TABLE IF NOT EXISTS `class_sub` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `class_Name` varchar(50) NOT NULL,
  `sub_name` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `sub_name` (`sub_name`),
  KEY `class_Name` (`class_Name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- إرجاع أو استيراد بيانات الجدول `class_sub`
--

INSERT INTO `class_sub` (`Id`, `class_Name`, `sub_name`) VALUES
(1, 'one', 'English'),
(2, 'one', 'Mathmitical');

-- --------------------------------------------------------

--
-- بنية الجدول `pass`
--

CREATE TABLE IF NOT EXISTS `pass` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `pass`
--

INSERT INTO `pass` (`Username`, `Password`) VALUES
('s', 'a'),
('school', 'school'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- بنية الجدول `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `Roll` int(10) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Class` int(20) NOT NULL,
  `Year` int(10) NOT NULL,
  `Birth_date` date NOT NULL,
  `Mobile_no` int(15) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `permanent` varchar(50) NOT NULL,
  `Present` varchar(50) NOT NULL,
  PRIMARY KEY (`Roll`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `student_info`
--

INSERT INTO `student_info` (`Roll`, `First_name`, `Last_name`, `Class`, `Year`, `Birth_date`, `Mobile_no`, `Sex`, `permanent`, `Present`) VALUES
(15001, 'Nouf', 'Salman', 1, 2021, '2015-11-22', 552255332, 'femal', 'Alreadh', 'Alreadh'),
(15002, 'Moshary', 'Asiri', 2, 2020, '2014-11-02', 554422111, 'male', 'Alreadh', 'Alreadh'),
(15003, 'Kamel', 'althobeet', 3, 2019, '2013-09-05', 555522255, 'male', 'Alreadh', 'Alreadh');

-- --------------------------------------------------------

--
-- بنية الجدول `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(50) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- إرجاع أو استيراد بيانات الجدول `subject`
--

INSERT INTO `subject` (`sub_id`, `sub_name`) VALUES
(1, 'English'),
(2, 'Mathmitical'),
(3, 'physical'),
(4, 'Arabic');

-- --------------------------------------------------------

--
-- بنية الجدول `teacher_info`
--

CREATE TABLE IF NOT EXISTS `teacher_info` (
  `Teachers_id` int(10) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `Last_name` varchar(20) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Birth_day` date NOT NULL,
  `Mobile_no` int(20) NOT NULL,
  `Sex` varchar(20) NOT NULL,
  `Permanent` varchar(50) NOT NULL,
  `Present` varchar(50) NOT NULL,
  PRIMARY KEY (`Teachers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `teacher_info`
--

INSERT INTO `teacher_info` (`Teachers_id`, `First_name`, `Last_name`, `Position`, `Birth_day`, `Mobile_no`, `Sex`, `Permanent`, `Present`) VALUES
(3002, 'Ahmed', 'Nasser', 'EnglishTeacher', '1988-05-04', 54455222, 'male', 'Jadah', 'Jadah'),
(3001, 'Rwan', 'Qassem', 'Manager', '1989-05-06', 558855885, 'female', 'Alradh', 'Alradh'),
(3003, 'Nader', 'ALi', 'Assistant', '1996-05-07', 555533322, 'male', 'Makah', 'Makah'),
(10055, 'mohamed', 'ahmed', 'teasher', '1998-12-01', 5552555, 'male', 'ksa', 'ksa');

-- --------------------------------------------------------

--
-- بنية الجدول `t_c_s`
--

CREATE TABLE IF NOT EXISTS `t_c_s` (
  `id_T_C_S` int(11) NOT NULL AUTO_INCREMENT,
  `tetcher` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  PRIMARY KEY (`id_T_C_S`),
  KEY `tetcher` (`tetcher`,`class`,`sub`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- إرجاع أو استيراد بيانات الجدول `t_c_s`
--

INSERT INTO `t_c_s` (`id_T_C_S`, `tetcher`, `class`, `sub`) VALUES
(1, 'Manob', 'one', 'English'),
(2, 'Manob', 'Three', 'English'),
(3, 'Tangila ', 'Two', 'Mathmitical'),
(4, 'Nadan', 'Two', 'physical'),
(5, 'mohamed', 'Two', 'Arabic');
