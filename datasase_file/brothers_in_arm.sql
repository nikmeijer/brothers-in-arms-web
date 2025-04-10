-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2025 at 12:08 PM
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
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  email varchar(300) NOT NULL,
  mobile int NOT NULL,
  message varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table contact
--

INSERT INTO contact (id, name, email, mobile, message) VALUES
(8, 'Akamjot Singh', 'akamjot312@gmail.com', 2147483647, 'gg'),
(9, 'Akamjot Singh', 'akamjot312@gmail.com', 2147483647, 'gg');

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
  offer varchar(300) NOT NULL,
  date varchar(50) NOT NULL,
  location varchar(200) NOT NULL,
  time varchar(100) NOT NULL,
  poster varchar(300) NOT NULL,
  updates varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  video varchar(100) NOT NULL,
  about_event varchar(500) NOT NULL,
  note varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  about_event_more varchar(300) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table events
--

INSERT INTO events (id, title, description, ticket, offer, date, location, time, poster, updates, video, about_event, note, about_event_more) VALUES
(1, 'Diwali Dhamaka', 'Welcome to the news and events section of the Brothers in Arms Memorial! Stay updated on our latest events, memorials, and news regarding our fallen heroes. Join us in honoring their legacy and sacrifices.', 'Adults – $40 ; Children – Age 5 to 12 – $25 ; Children – Age 0 to 4 – Free', 'Tickets purchased before Oct 28th will be entered in draw with a chance to win an Apple Ipad.', '2025-November-10, Sunday', 'Centennial Hall, London, ON.', '5:00 pm to 6:00 pm', 'event.png', 'Tickets for Diwali Dhamaka 2024 at Centennial Hall, on Sunday, November 10th are presently 80% sold.\nFireworks will light up the skies over Downtown London.\nCheck out Dinner Menu from our trusted Dining partner since 2013.\nOur entertainment partner includes\nCommunity Performers including Classical, Folk from various regions and Bollywood art forms.\nProfessional performers include:\nCanada’s Premier Bollywood Dance Academy “Bollywood Dance School Canada”\nHi-energy and vibrant dancers from  Borderless Dance \nVibrant Bhangra Performers from SIFAT Canada\nWatch our promo Diwali video to check what’s in store, including some of the service work in the community.\nGratitude to our sponsors and supporters listed below. ', 'event_video.mp4', 'Tickets for Diwali Dhamaka 2024 at Centennial Hall, on Sunday, November 10th are presently 80% sold.\r\nFireworks will light up the skies over Downtown London.\r\nCheck out Dinner Menu from our trusted Dining partner since 2013.\r\nOur entertainment partner includes\r\nCommunity Performers including Classical, Folk from various regions and Bollywood art forms.\r\nProfessional performers include:\r\nCanada’s Premier Bollywood Dance Academy “Bollywood Dance School Canada”\r\nHi-energy and vibrant dancers from  ', 'SOLD OUT event since 2012. Hence get your tickets ONLINE at our website quickly, for early bird pricing of tickets, dinner time of your preference & for the best seats in the house.\r\n\r\nTICKETS ARE AVAILABLE.', 'Our events are run entirely by volunteers and have always been blessed to have an inspired army of volunteers. If you would like to volunteer at this event or prior to the event, please send us an email at srishti@srishticanada.org');

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

--
-- Dumping data for table gallery
--

INSERT INTO gallery (id, images) VALUES
(1, 'galleryimg_1'),
(2, 'galleryimg_2'),
(3, 'galleryimg_3'),
(4, 'galleryimg_4'),
(5, 'galleryimg_5'),
(6, 'galleryimg_6');

-- --------------------------------------------------------

--
-- Table structure for table letters
--

DROP TABLE IF EXISTS letters;
CREATE TABLE IF NOT EXISTS letters (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  sender varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  date varchar(100) NOT NULL,
  description varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table letters
--

INSERT INTO letters (id, sender, date, description) VALUES
(1, 'A wounded Sikh soldier for the British-Indian army', '18 January, 1915', '“Tell my mother not to go wandering madly because her son, my brother, is dead. To be born and to die is God\'s order. Some day we must die, sooner or later, and if I die here, who will remember me? It is a fine thing to die far from home. A saint said this, and, as he was a good man, it must be true.”'),
(2, 'A wounded Sikh to his brother', '21 January, 1915', '“The battle is beginning and the men are dying like maggots. No one can count them - not in thousands but in hundreds of thousands of thousands. No one can count them”'),
(3, 'Lieut. D. Lynn Dudley to his friend', '18 January, 1918', '\"Any person who went through that Passchendale Advance can safely say we went through more mud and shell fire, than was ever experienced in this God-forsaken hole called Europe.\"\n\nAlthough we went through a great many hardships, it is impossible to imagine what the Germans had to contend with. They were in a great deal more mud and water than we, and it was simply impossible for man or beast to live under shell fire. The ground we advanced over was simply one mass of dead \'Hunies\' so you will have some idea of the number of men they lost. One prisoner who was captured said the Germans thought the Canadians were superhuman, and would not face them at all. It certainly looked like it, they way they disappeared when we started after them.');

-- --------------------------------------------------------

--
-- Table structure for table news
--

DROP TABLE IF EXISTS news;
CREATE TABLE IF NOT EXISTS news (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  image varchar(300) NOT NULL,
  title varchar(100) NOT NULL,
  description varchar(500) NOT NULL,
  date varchar(75) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table news
--

INSERT INTO news (id, image, title, description, date) VALUES
(1, 'youth_internship.png', 'Youth Internship', 'Srishti Foundation – Canada is offering four International Youth internships this summer, in 4 locations across 2 countries – India and Trinidad & Tobago. The fourth location this year is in the scenic hills\n\n', 'November 20, 2023'),
(2, 'raksha_bandhan.png', 'Raksha Bandhan', 'On 22nd August 2024, the auspicious festival of Raksha Bandhan, was celebrated with  London Police at their Head Quarters.\nChildren applied tilak, tied Rakhis and offered Mithai to Police Officer', 'November 20, 2023'),
(3, 'diwali_dhamaka.png', 'Diwali Dhamaka ', 'Diwali or Deepavali, which means a row of lights, is the biggest and most popular ancient festival of our Dharmic traditions. Celebrated by Hindus, Sikhs, and Jains', 'November 20, 2023'),
(4, 'chinmaya_mission.png', 'Chinmaya Mission\'s', 'When: Friday February 21, 6pm to Sunday February 23, 12:00pm\nWhere: The Oakwood Resort, South Huron, Ontario\nWhat: We get so caught up in the hectic whirlwind of our lives that we sometimes forget what family is all about. The purpose of this retreat is to spend QUALITY time learning and growing with your immediate family and of course your Chinmaya Mission family.', 'November 20, 2023'),
(5, 'indian_culter.png', 'Indian Cultural Connection', '30 children between ages of 5 and 12 attended the India Cultural Connection camp 2014, from 11 August to Friday 15 August, from 9:00am to 4:00pm at Central Secondary School on Waterloo and Dufferin. Click HERE for pictures from 2014 camp.', 'November 20,2023'),
(6, 'sports_youth.png', 'Sports for Underprivileged Youth', 'In partnership with Kidsport Ontario,  the Canadian Tire Jumpstart program and donors from the Indo-Canadian community in London, we were able to raise $2,350 to fund this program with London Athletic Canadian F.C.\r\n', 'November 20,2024');

-- --------------------------------------------------------

--
-- Table structure for table user
--

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS `user` (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(100) NOT NULL,
  password varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table user
--

INSERT INTO user (id, username, password) VALUES
(1, 'username', 'password');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
