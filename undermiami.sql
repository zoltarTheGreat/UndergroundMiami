-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2017 at 04:20 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undermiami`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `genre` text COLLATE utf8_unicode_ci,
  `spotify_id` text COLLATE utf8_unicode_ci,
  `links_set` text COLLATE utf8_unicode_ci,
  `bio` text COLLATE utf8_unicode_ci,
  `profile_pic` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `genre`, `spotify_id`, `links_set`, `bio`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 'Hometown Losers', 'Pop Punk', '5sjCP7vD1G4rVev1wolTci', 'https://www.facebook.com/hometownlosers/', 'Just a shitty punk band from the greater Miami area. William Ramirez(Vocals), Jose Posada(Guitar), Yardley Dominguez(Guitar), Alejandro Abad(Bass), JP Hernandez(Drums)', 'HTL.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09'),
(2, 'Toptier', 'Pop-Punk', '0E4c3bUl6xhYUlc854FN8O', 'https://www.facebook.com/TopTierFL/', 'We are TopTier. An exciting four piece Pop-Punk band from Miami, FL. We throw in classic elements of the pop-punk sound mixed in brilliantly with a touch of hardcore & metal. Well bring a show that will surely have you on your feet, singing, clapping and jumping to our good vibe music. TopTier is: Bryant (B-ry) Perez(Drums), Christopher Tamez(Bass/Vocals), Charlie Naranjo(Lead Guitar), Felix Maldonado(Rhythm Guitar/Vocals)', 'TT.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09'),
(3, 'Happy Hour', 'Post-Hardcore', '6vNQcK5GY7IHShnGWsS3iD', 'https://www.facebook.com/HHbandfl/', 'Experimental Post-Hardcore from South Florida. for fans of: Dance Gavin Dance, A Lot Like Birds, Hail The Sun, Sianvar, Good Tiger, and Secret Band. Nate Promkul(Vocals), Eric Hidalgo(Guitar/Vocals), Theodore William-Michael Senft(Guitar), Jacob Muniz(Bass), David Alfaro(Drums)', 'HH.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09'),
(4, 'DJ Gio Andres', 'Tech House', NULL, 'https://djgioandres.com/', 'Miami native Gio Andres has created a name for himself as one of the youngest DJs on FM. His radio show "From Ibiza to Miami" aired for 2-years on Revolution 93.5 where Gio would showcase the best underground dance music from across the seas to his loyal listeners in Miami. Thanks to his passion for slanging his house and techno beats, he has performed at legendary Miami clubs such as Heart Nightclub, Shots Miami and Space Miami.', 'DJG.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09'),
(5, 'Yander Delgado', 'Techno', '3hTOgJZvpW18cjUY1xsl1m', 'https://www.beatport.com/artist/yander-delgado/383620', 'Aka Yander Delgado from Hilel & Yander. ALT2 is an alternative, an idea, an alternate ego composed with emotion and hard sounds.','YD.jpg', '2017-09-30 14:52:21', '2017-09-30 14:55:09');


-- --------------------------------------------------------

--
-- Table structure for table `graffiti`
--

CREATE TABLE `graffiti` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `artists_set` text COLLATE utf8_unicode_ci,
  `photo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `graffiti`
--

INSERT INTO `graffiti` (`id`, `name`, `artists_set`, `photo`, `lat`, `lon`, `created_at`, `updated_at`) VALUES
(1, 'kissing', 'Alex Senna', 'KAS.jpg', 25.797681, -80.198914, '2017-09-30 14:52:21', '2017-09-30 14:52:21'),
(2, 'fire dog', 'A Squid Called Sebastian', 'FDSS.jpg', 25.796681, -80.198594, '2017-09-30 14:52:21', '2017-09-30 14:52:21'),
(3, 'Eyes', 'Ahol Sniffs Glue', 'EASG.jpg', 25.798786, -80.198594, '2017-09-30 14:52:21', '2017-09-30 14:52:21');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `artists_set` text COLLATE utf8_unicode_ci,
  `venue` text COLLATE utf8_unicode_ci,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `links` text COLLATE utf8_unicode_ci,
  `teaser` longtext COLLATE utf8_unicode_ci,
  `previewimage` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `name`, `artists_set`, `venue`, `event_time`, `links`, `teaser`, `previewimage`, `created_at`, `updated_at`) VALUES
(1, 'Oogie-Boogie @ The Fish House', 'Harvey,Stay For Tonight,Common Luck,Hometown Losers,TopTier,Happy Hour ', NULL, '2017-10-13 19:00:00', 'https://www.facebook.com/events/141867509746707/', 'Entrance is $7 if alone no costume $5 if youre in a costume ITS EP RELEASE TIME SONNNN Catch TopTier and Hometown Losers as they join forces to release their EPs at the same time! \r\n Lets pack this back room, invite your friends and family this is all ages!', 'OB@FH.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25'),
(2, 'Rough Start EP Release, TopTier, Mascot, and more', 'TopTier, Mascot, One Last Embrace , Hometown Losers', 'OMalleys Sports Bar', '2017-10-08 19:00:00', 'https://www.facebook.com/events/483833228647577/ ', 'Event tickets at limitlessagency.comPresented by The Limitless Agency', 'RS@OM.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25'),
(3, 'Hungover / Far Too Young / Top Tier / Common Luck / Odd Sweetheart', 'Hungover, Far Too Young, Top Tier, Common Luck , Odd Sweetheart', NULL, '2017-09-29 18:00:00', 'https://www.facebook.com/events/132267527413996/', 'Entrance is $5 Bringing the Hungover boys to the 305 for the second time!', 'FTY@HS.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25'),
(4, 'Miami Jazz Jam & Theatre de Underground Open Mic', NULL, 'Churchhills Pub', '2017-10-02 21:00:00', 'https://www.facebook.com/events/1902866149740447/', 'The Miami Jazz Jam is Miamis longest running jazz night. (Over 17 years!) This week features the Fernando Ulibarri group and surprise guests. Outback on the patio stage its Miamis most open minded open mic night, the Theatre de Underground hosted by Benjamin Shahoulian! Signup at 9pm. 18 and over only', 'MJJ@CH.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25'),
(5, 'Weekly Open Mic Thurdays @ Vickeys FIU', NULL, 'Vickeys @FIU', '2017-10-05 21:00:00', 'https://www.facebook.com/events/1754094368251449/', 'Open mic event at Vickeys Bakery at FIU. Come early for sing up and enjoy a great night.', 'OM@VFIU.jpg', '2017-09-30 15:41:25', '2017-09-30 15:41:25');

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
  `description` text COLLATE utf8_unicode_ci,
  `social_link` text COLLATE utf8_unicode_ci,
  `image` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `lat`, `lon`, `addr`, `description`, `social_link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Churchhills Pub', 25.8262506, -80.19170070000001, '5501 Northeast 2nd Avenue,Miami,FL,33127, Miami, FL 33127, United States', 'Since 1979 we have been your place for food, concerts, and sports! We are an 18 and over venue. Valid ID is required for entry. Outside drinks and food are not permitted. All bags are subject to search upon entry. Dont drive drunk. Call a cab or use a car service like Uber or Lyft.', ' http://www.churchillspub.com/', 'CH.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35'),
(2, 'Vickeys @ FIU', 25.7596208, -80.37439180000001, '10975 SW 17th St, Miami, FL 33165', 'A Vickets Bakery on campus. Eat and chill. Good food and relazing enviornemnt.', 'https://shop.fiu.edu/restaurants/vickycafe/index.html', 'VFIU.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35'),
(3, 'OMalleys Sports Bar', 26.2469165, -80.20110239999997, '1406 SR 7, Margate, FL 33063', 'Easygoing pub with TVs, hearty bar fare & many types of beer, plus pool, bands & karaoke nights.', 'https://www.omalleyssportsbar.com/', 'OM.jpg', '2017-09-30 15:16:35', '2017-09-30 15:16:35');

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
