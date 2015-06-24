-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2015 at 07:51 AM
-- Server version: 5.5.43-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `iac_spring_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `deadline` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `company`, `details`, `email`, `deadline`) VALUES
(1, 'Software Developer', 'Therap Services Ltd', 'Work as Technical Lead of Java/Web projects and take responsibility for designing entire application architecture based on requirements, creating base code and standardizing all technical principles.\r\nHave experience in designing project common lib/framework for client side using SCSS, Less and jQuery or MVVM framework to improve project quality and productivity.\r\nHave experience in designing flow of testing phase and documenting to inform project standards to developers.', 'therap@gmail.com', '13 July, 2015'),
(2, 'Copywriter', 'Sekai Lab', 'Work as Technical Lead of Java/Web projects and take responsibility for designing entire application architecture based on requirements, creating base code and standardizing all technical principles.\r\nHave experience in designing project common lib/framework for client side using SCSS, Less and jQuery or MVVM framework to improve project quality and productivity.\r\nHave experience in designing flow of testing phase and documenting to inform project standards to developers.', 'sekai-lab@gmail.com', '12 August, 2015'),
(3, 'shovon', 'sekai', 'ola ola', 'shovon@mgail.com', '12 ajasda');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
