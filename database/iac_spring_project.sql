-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2015 at 03:23 PM
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
-- Table structure for table `authorities`
--

CREATE TABLE IF NOT EXISTS `authorities` (
  `username` varchar(60) NOT NULL,
  `authority` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin', 'ROLE_ADMIN'),
('saikat', 'ROLE_GENERAL'),
('shovon', 'ROLE_ADMIN');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `company`, `details`, `email`, `deadline`) VALUES
(1, 'Software Developer', 'Therap Services Ltd', 'Work as Technical Lead of Java/Web projects and take responsibility for designing entire application architecture based on requirements, creating base code and standardizing all technical principles.\r\nHave experience in designing project common lib/framework for client side using SCSS, Less and jQuery or MVVM framework to improve project quality and productivity.\r\nHave experience in designing flow of testing phase and documenting to inform project standards to developers.', 'therap@gmail.com', '13 July, 2015'),
(2, 'Copywriter', 'Sekai Lab', 'Work as Technical Lead of Java/Web projects and take responsibility for designing entire application architecture based on requirements, creating base code and standardizing all technical principles.\r\nHave experience in designing project common lib/framework for client side using SCSS, Less and jQuery or MVVM framework to improve project quality and productivity.\r\nHave experience in designing flow of testing phase and documenting to inform project standards to developers.', 'sekai-lab@gmail.com', '12 August, 2015'),
(3, 'shovon', 'sekai', 'ola ola', 'shovon@mgail.com', '12 ajasda'),
(4, 'New Title', 'Another Company', 'This is a new job.', 'newjob@gmail.com', '13 New Month, Old Year');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `enabled`) VALUES
('admin', 'f1c9da7a2275388fed1bb612e9559d85b56c5321d3694d7979c71691cfc2a319b2c8f899893a97e9', 'admin@gmail.com', 1),
('saikat', '8c9e4fe6dce0c580004acc411b492465683ca5b3ca1df4060085e1cba7c53a5a87d2a4012442bc75', 'saikat@hotmail.com', 1),
('shovon', 'aa66099c2480e96252e4e08477934c5fb59be1ac3d0514fcfe3b0c2d76a4e6e1621ab51824320f6d', 'shovon990@hotmail.com', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
