-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2020 at 01:13 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xploitfree`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `content_name` varchar(255) DEFAULT NULL,
  `head_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `head_id` (`head_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `content_name`, `head_id`) VALUES
(1, 'Dive into HTML5', 1),
(2, 'Introduction', 1),
(3, 'HTML5 Elements', 1),
(4, 'Headings', 1),
(5, 'Paragraphs', 1),
(6, 'Links', 1),
(7, 'Images', 1),
(8, 'Tables', 1),
(9, 'List', 1),
(10, 'Forms', 1),
(11, 'Dive into CSS3', 2),
(12, 'Introduction', 2),
(13, 'CSS Components', 2),
(14, 'CSS Classes', 2),
(15, 'Introduction', 3),
(16, 'Variables', 3),
(17, 'Functions', 3),
(18, 'JS Form Validation', 3),
(19, 'Cookies', 3),
(20, 'Local Storage', 3),
(21, 'Get Post methods', 4),
(22, 'PHP Super Global variables', 4),
(23, 'PHP OOP', 4),
(24, 'Ways of XSS attacks and Preventions', 4),
(25, 'CSRF attack and Preventions', 4),
(26, 'SQL Injection and Preventions', 4),
(27, 'PHP filters', 4),
(28, 'PHP form Handling', 4),
(29, 'PHP form Filtering', 4),
(30, 'Working with database', 4),
(31, 'PHP URL Validation', 4),
(32, 'Http and Https (SSL certificate)', 4),
(33, 'Session', 4),
(34, 'Data encryption and decryption', 4),
(35, 'Deployment of website', 4);

-- --------------------------------------------------------

--
-- Table structure for table `content_heads`
--

DROP TABLE IF EXISTS `content_heads`;
CREATE TABLE IF NOT EXISTS `content_heads` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `head_name` varchar(500) DEFAULT NULL,
  `training_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `training_id` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_heads`
--

INSERT INTO `content_heads` (`id`, `head_name`, `training_id`) VALUES
(1, 'HTML5', 1),
(2, 'CSS3', 1),
(3, 'Javascript', 1),
(4, 'PHP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `features_of_training`
--

DROP TABLE IF EXISTS `features_of_training`;
CREATE TABLE IF NOT EXISTS `features_of_training` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(500) DEFAULT NULL,
  `training_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `training_id` (`training_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features_of_training`
--

INSERT INTO `features_of_training` (`id`, `feature_name`, `training_id`) VALUES
(1, 'Learn Html5, CSS3, Javascript, PHP', 1),
(2, 'Develop Secure Website', 1),
(3, 'Live Deployment', 1),
(4, 'Get Certification', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

DROP TABLE IF EXISTS `trainings`;
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(5000) NOT NULL,
  `training_url` varchar(255) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `cp` int(20) DEFAULT NULL,
  `sp` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `name`, `description`, `training_url`, `img_url`, `cp`, `sp`) VALUES
(1, 'Secure Web Development', 'Today, anyone can build a website easily, but students or practitiones forget a major concern in the industry, i.e to make their website secure. Secure not in terms of validating data, but in the terms of cybersecurity.Yes, have you ever heard about OWASP\'s Top 10 vulnerablities, go and search for it. You will come to know how the websites get attacted by hackers to steal your confidential data and harm your digital presence.Dont worry, we\'ve got your back. Attend the workshop and get to know how to build a secured website, deploy it on server, attack and prevent your website.', 'trainingtemplate?id=1', './images/web-training.jpg', 800, 500),
(2, 'Secure Android Development', 'Today, anyone can build a website easily, but students or practitiones forget a major concern in the industry, i.e to make their website secure. Secure not in terms of validating data, but in the terms of cybersecurity.Yes, have you ever heard about OWASP\'s Top 10 vulnerablities, go and search for it. You will come to know how the websites get attacted by hackers to steal your confidential data and harm your digital presence.Dont worry, we\'ve got your back. Attend the workshop and get to know how to build a secured website, deploy it on server, attack and prevent your website.', 'trainingtemplate?id=2', './images/android-training.jpg', 800, 500),
(3, 'Ethical Hacking', 'Today, anyone can build a website easily, but students or practitiones forget a major concern in the industry, i.e to make their website secure. Secure not in terms of validating data, but in the terms of cybersecurity.Yes, have you ever heard about OWASP\'s Top 10 vulnerablities, go and search for it. You will come to know how the websites get attacted by hackers to steal your confidential data and harm your digital presence.Dont worry, we\'ve got your back. Attend the workshop and get to know how to build a secured website, deploy it on server, attack and prevent your website.', 'trainingtemplate?id=3', './images/hacking-training.jpg', 800, 500);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`head_id`) REFERENCES `content_heads` (`id`);

--
-- Constraints for table `content_heads`
--
ALTER TABLE `content_heads`
  ADD CONSTRAINT `content_heads_ibfk_1` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`);

--
-- Constraints for table `features_of_training`
--
ALTER TABLE `features_of_training`
  ADD CONSTRAINT `features_of_training_ibfk_1` FOREIGN KEY (`training_id`) REFERENCES `trainings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
