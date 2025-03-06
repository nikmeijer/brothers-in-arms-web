-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 05, 2025 at 10:39 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: brothers_in_arm
--

-- --------------------------------------------------------

--
-- Table structure for table contact
--

DROP TABLE IF EXISTS contact;
CREATE TABLE IF NOT EXISTS contact (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  fname varchar(100) NOT NULL,
  lname varchar(100) NOT NULL,
  comment varchar(500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table donors
--

DROP TABLE IF EXISTS donors;
CREATE TABLE IF NOT EXISTS donors (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  campaign varchar(500) NOT NULL,
  amount varchar(75) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table events
--

DROP TABLE IF EXISTS events;
CREATE TABLE IF NOT EXISTS `events` (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  description varchar(500) NOT NULL,
  ticket varchar(75) NOT NULL,
  date date NOT NULL,
  location varchar(200) NOT NULL,
  time varchar(100) NOT NULL,
  updates varchar(500) NOT NULL,
  about_event varchar(500) NOT NULL,
  note varchar(200) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table gallery
--

DROP TABLE IF EXISTS gallery;
CREATE TABLE IF NOT EXISTS gallery (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  images varchar(250) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table letters
--

DROP TABLE IF EXISTS letters;
CREATE TABLE IF NOT EXISTS letters (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  sender varchar(50) NOT NULL,
  date date NOT NULL,
  description varchar(500) NOT NULL,
  image varchar(250) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table news
--

DROP TABLE IF EXISTS news;
CREATE TABLE IF NOT EXISTS news (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(100) NOT NULL,
  description varchar(500) NOT NULL,
  date varchar(75) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
