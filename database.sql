-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 01:34 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undermiami`
--
CREATE DATABASE
IF NOT EXISTS `undermiami` DEFAULT CHARACTER
SET utf8
COLLATE utf8_unicode_ci;
USE `undermiami`;

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists`
(
  `id` int
(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `genre` text COLLATE utf8_unicode_ci NOT NULL,
  `spotify_id` text COLLATE utf8_unicode_ci,
  `links_set` text COLLATE utf8_unicode_ci,
  `bio` text COLLATE utf8_unicode_ci,
  `profile_pic` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`,`name`, `genre`, `spotify_id`, `links_set`, `bio`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 'Hometown Losers', 'Pop Punk', '0', 'https://www.facebook.com/hometownlosers/', 'hhasf', 'HTL.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09');

-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti`
(
  `id` int
(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `artists_set` text COLLATE utf8_unicode_ci,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `graffiti`
--

INSERT INTO `graffiti` (`id`,`name`, `artists_set`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'dfafds', 'dog', 'aaamoto.png', '2017-09-30 14:52:21', '2017-09-30 14:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows`
(
  `id` int
(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `artists_set` text COLLATE utf8_unicode_ci NULL,
  `venue` text COLLATE utf8_unicode_ci NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `links` text COLLATE utf8_unicode_ci,
  `teaser` longtext COLLATE utf8_unicode_ci,
  `previewimage` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON
UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`,`name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(1, 'Oogie-Boogie @ The Fish House', 'Harvey,Stay For Tonight,Common Luck,Hometown Losers,TopTier,Happy Hour ', NULL, '2017-10-13 19:00:00', 'https://www.facebook.com/events/141867509746707/', 'Entrance is $7 if alone no costume $5 if youre in a costume ITS EP RELEASE TIME SONNNN Catch TopTier and Hometown Losers as they join forces to release their EPs at the same time! \r\n Lets pack this back room, invite your friends and family this is all ages!', 'OB@FH.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25');
INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(2, 'Rough Start EP Release, TopTier, Mascot, and more', 'TopTier, Mascot, One Last Embrace , Hometown Losers', 'OMalleys Sports Bar', '2017-10-08 19:00:00', 'https://www.facebook.com/events/483833228647577/ ', 'Event tickets at limitlessagency.comPresented by The Limitless Agency', 'RS@OM.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25');
INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(3, 'Hungover / Far Too Young / Top Tier / Common Luck / Odd Sweetheart', 'Hungover, Far Too Young, Top Tier, Common Luck , Odd Sweetheart', NULL , '2017-09-29 18:00:00', 'https://www.facebook.com/events/132267527413996/', 'Entrance is $5 Bringing the Hungover boys to the 305 for the second time!', 'FTY@HS.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25');
INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(4, 'Miami Jazz Jam & Theatre de Underground Open Mic', NULL, 'Churchhills Pub' , '2017-10-02 21:00:00', 'https://www.facebook.com/events/1902866149740447/', 'The Miami Jazz Jam is Miamis longest running jazz night. (Over 17 years!) This week features the Fernando Ulibarri group and surprise guests. Outback on the patio stage its Miamis most open minded open mic night, the Theatre de Underground hosted by Benjamin Shahoulian! Signup at 9pm. 18 and over only', 'MJJ@CH.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25');
INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(5, 'Weekly Open Mic Thurdays @ Vickeys FIU', NULL, 'Vickeys @FIU', '2017-10-05 21:00:00','https://www.facebook.com/events/1754094368251449/','Open mic event at Vickeys Bakery at FIU. Come early for sing up and enjoy a great night.','OM@VFIU.jpg','2017-09-30 15:41:25', '2017-09-30 15:41:25');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `addr` text COLLATE utf8_unicode_ci,
  `desc` text COLLATE utf8_unicode_ci,
  `social_link` text COLLATE utf8_unicode_ci,
  `image` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `lat`, `lon`, `addr`, `desc`, `social_link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Churchhills Pub', 25.8262506, -80.19170070000001, '5501 Northeast 2nd Avenue,Miami,FL,33127, Miami, FL 33127, United States', 'Since 1979 we have been your place for food, concerts, and sports! We are an 18 and over venue. Valid ID is required for entry. Outside drinks and food are not permitted. All bags are subject to search upon entry. Don’t drive drunk. Call a cab or use a car service like Uber or Lyft.', ' http: //www.churchillspub.com/', 'CH.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35');
INSERT INTO `venues` (`id`, `name`, `lat`, `lon`, `addr`, `desc`, `social_link`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Vickeys @ FIU', 25.7596208, -80.37439180000001, '10975 SW 17th St, Miami, FL 33165', 'A Vickets Bakery on campus. Eat and chill. Good food and relazing enviornemnt.', 'https://shop.fiu.edu/restaurants/vickycafe/index.html', 'VFIU.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35');
INSERT INTO `venues` (`id`, `name`, `lat`, `lon`, `addr`, `desc`, `social_link`, `image`, `created_at`, `updated_at`) VALUES
(3, 'OMalleys Sports Bar', 26.2469165, -80.20110239999997, '1406 SR 7, Margate, FL 33063','Easygoing pub with TVs, hearty bar fare & many types of beer, plus pool, bands & karaoke nights.' , 'https://www.omalleyssportsbar.com/', 'OM.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35');



--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
