-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2018 at 11:05 PM
-- Server version: 10.1.34-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chanter`
--

-- --------------------------------------------------------

--
-- Table structure for table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `titleFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `titleDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `chapeauFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `chapeauDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `textFR` text COLLATE utf8_bin,
  `textDE` text COLLATE utf8_bin,
  `refPicture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Articles`
--

INSERT INTO `Articles` (`id`, `titleFR`, `titleDE`, `chapeauFR`, `chapeauDE`, `textFR`, `textDE`, `refPicture`, `createdAt`, `updatedAt`, `PersonId`, `CategoryId`) VALUES
(1, 'Articel1', 'Artikel1', 'chapeau fr', 'chapeau de', 'du texte en fr ca peut etre tres long', 'deutscher text, ist ein bischen kurzer als fr', 'article1.jpg', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `categoryFR` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `categoryDE` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `categoryFR`, `categoryDE`, `createdAt`, `updatedAt`) VALUES
(1, 'Page', 'Seite', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'News', 'News', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Evenement', 'Event', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Choirs`
--

CREATE TABLE `Choirs` (
  `id` int(11) NOT NULL,
  `choirName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `otherType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `yearOfCreation` date DEFAULT NULL,
  `chEglise` tinyint(1) DEFAULT NULL,
  `chGospel` tinyint(1) DEFAULT NULL,
  `memberfc` tinyint(1) DEFAULT NULL,
  `entryfc` date DEFAULT NULL,
  `entryGroup` date DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ChoirTypeId` int(11) DEFAULT NULL,
  `GroupeId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `LocalityId` int(11) DEFAULT NULL,
  `UscmemberId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Choirs`
--

INSERT INTO `Choirs` (`id`, `choirName`, `address1`, `address2`, `website`, `otherType`, `yearOfCreation`, `chEglise`, `chGospel`, `memberfc`, `entryfc`, `entryGroup`, `remarks`, `createdAt`, `updatedAt`, `ChoirTypeId`, `GroupeId`, `LanguageId`, `LocalityId`, `UscmemberId`) VALUES
(1, 'test1', 'test1', NULL, 'test.com', NULL, '2018-10-19', NULL, NULL, 1, NULL, NULL, NULL, '2018-10-19 00:00:00', '2018-10-19 00:00:00', NULL, NULL, NULL, 1, NULL),
(2, 'Choeur chanter.ch', 'Rue de là 32', NULL, 'chanter.ch/', 'de quoi ?', '2000-01-01', 1, 1, 1, '1991-01-01', '1991-01-01', 'Des remarques', '2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1, 1, 1, 1),
(3, 'Choeur perdu', 'Rue du perdu', NULL, 'perdu.com', NULL, '2010-01-01', 0, 0, 0, NULL, NULL, NULL, '2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 1, 2, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ChoirTypes`
--

CREATE TABLE `ChoirTypes` (
  `id` int(11) NOT NULL,
  `choirType` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `ChoirTypes`
--

INSERT INTO `ChoirTypes` (`id`, `choirType`, `createdAt`, `updatedAt`) VALUES
(1, 'Adulte', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Jeunes', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Comities`
--

CREATE TABLE `Comities` (
  `id` int(11) NOT NULL,
  `comityName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Comities`
--

INSERT INTO `Comities` (`id`, `comityName`, `createdAt`, `updatedAt`) VALUES
(1, 'Comite FCC', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Comite FCVS', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Comity_Person`
--

CREATE TABLE `Comity_Person` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `ComityId` int(11) NOT NULL,
  `PersonId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Comity_Person`
--

INSERT INTO `Comity_Person` (`createdAt`, `updatedAt`, `ComityId`, `PersonId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Functions`
--

CREATE TABLE `Functions` (
  `id` int(11) NOT NULL,
  `functionName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Functions`
--

INSERT INTO `Functions` (`id`, `functionName`, `createdAt`, `updatedAt`) VALUES
(1, 'President', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Director', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Genders`
--

CREATE TABLE `Genders` (
  `id` int(11) NOT NULL,
  `genderName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Genders`
--

INSERT INTO `Genders` (`id`, `genderName`, `createdAt`, `updatedAt`) VALUES
(1, 'Female', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Male', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Other', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Groupes`
--

CREATE TABLE `Groupes` (
  `id` int(11) NOT NULL,
  `groupName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Groupes`
--

INSERT INTO `Groupes` (`id`, `groupName`, `createdAt`, `updatedAt`) VALUES
(1, 'Groupe1', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Languages`
--

CREATE TABLE `Languages` (
  `id` int(11) NOT NULL,
  `language` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Languages`
--

INSERT INTO `Languages` (`id`, `language`, `createdAt`, `updatedAt`) VALUES
(1, 'Français', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Deutsch', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Localities`
--

CREATE TABLE `Localities` (
  `id` int(11) NOT NULL,
  `localityName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `npa` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Localities`
--

INSERT INTO `Localities` (`id`, `localityName`, `npa`, `createdAt`, `updatedAt`) VALUES
(1, 'Sion', 1950, '2018-10-19 00:00:00', '2018-10-19 00:00:00'),
(2, 'Sierre', 3960, '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Conthey', 1964, '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `People`
--

CREATE TABLE `People` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `adress2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phoneprof` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `GenderId` int(11) DEFAULT NULL,
  `LanguageId` int(11) DEFAULT NULL,
  `LocalityId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `People`
--

INSERT INTO `People` (`id`, `lastname`, `firstname`, `birthdate`, `address1`, `adress2`, `phone`, `phoneprof`, `fax`, `email`, `mobile`, `lastupdate`, `username`, `createdAt`, `updatedAt`, `GenderId`, `LanguageId`, `LocalityId`) VALUES
(1, 'Doe', 'John', '1991-12-12', 'Rue de la rue 23', NULL, '0233216546', '1234567890', '1234567890', 'john@doe.com', '1234567890', '2018-10-02 00:00:00', 'johndoe', '2018-10-03 00:00:00', '2018-10-03 00:00:00', 1, 1, 1),
(2, 'Mely', 'Emilie', '1989-01-01', 'Rue de la dixence 13', NULL, '', NULL, NULL, 'donotcont@me', '0777777777', NULL, 'user1', '2018-10-07 00:00:00', '2018-10-07 00:00:00', 3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Person_Chorus`
--

CREATE TABLE `Person_Chorus` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) NOT NULL,
  `ChoirId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Person_Chorus`
--

INSERT INTO `Person_Chorus` (`createdAt`, `updatedAt`, `PersonId`, `ChoirId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Roles`
--

CREATE TABLE `Roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Roles`
--

INSERT INTO `Roles` (`id`, `roleName`, `createdAt`, `updatedAt`) VALUES
(1, 'Administrator', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, 'Chef Federation des choeurs', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(3, 'Responsable cantonal', '2018-10-24 00:00:00', '2018-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Role_Person`
--

CREATE TABLE `Role_Person` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `PersonId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Role_Person`
--

INSERT INTO `Role_Person` (`createdAt`, `updatedAt`, `PersonId`, `RoleId`) VALUES
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 1, 1),
('2018-10-24 00:00:00', '2018-10-24 00:00:00', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Uscmembers`
--

CREATE TABLE `Uscmembers` (
  `id` int(11) NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dateEntry` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Uscmembers`
--

INSERT INTO `Uscmembers` (`id`, `password_hash`, `dateEntry`, `createdAt`, `updatedAt`) VALUES
(1, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2017-10-02', '2018-10-24 00:00:00', '2018-10-24 00:00:00'),
(2, '$2a$04$jgq50olE1RGhdBx1/iG/z.7tkCHtjwm9HNFkWpJ3dTonW.bOgQ/cy', '2015-10-02', '2018-10-18 00:00:00', '2018-10-24 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `PersonId` (`PersonId`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Choirs`
--
ALTER TABLE `Choirs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ChoirTypeId` (`ChoirTypeId`),
  ADD KEY `GroupeId` (`GroupeId`),
  ADD KEY `LanguageId` (`LanguageId`),
  ADD KEY `LocalityId` (`LocalityId`),
  ADD KEY `UscmemberId` (`UscmemberId`);

--
-- Indexes for table `ChoirTypes`
--
ALTER TABLE `ChoirTypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comities`
--
ALTER TABLE `Comities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comity_Person`
--
ALTER TABLE `Comity_Person`
  ADD PRIMARY KEY (`ComityId`,`PersonId`),
  ADD KEY `PersonId` (`PersonId`);

--
-- Indexes for table `Functions`
--
ALTER TABLE `Functions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Genders`
--
ALTER TABLE `Genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Groupes`
--
ALTER TABLE `Groupes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Languages`
--
ALTER TABLE `Languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Localities`
--
ALTER TABLE `Localities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `People`
--
ALTER TABLE `People`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `GenderId` (`GenderId`),
  ADD KEY `LanguageId` (`LanguageId`),
  ADD KEY `LocalityId` (`LocalityId`);

--
-- Indexes for table `Person_Chorus`
--
ALTER TABLE `Person_Chorus`
  ADD PRIMARY KEY (`PersonId`,`ChoirId`),
  ADD KEY `ChoirId` (`ChoirId`);

--
-- Indexes for table `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Role_Person`
--
ALTER TABLE `Role_Person`
  ADD PRIMARY KEY (`PersonId`,`RoleId`),
  ADD KEY `RoleId` (`RoleId`);

--
-- Indexes for table `Uscmembers`
--
ALTER TABLE `Uscmembers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Choirs`
--
ALTER TABLE `Choirs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ChoirTypes`
--
ALTER TABLE `ChoirTypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Comities`
--
ALTER TABLE `Comities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Functions`
--
ALTER TABLE `Functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Genders`
--
ALTER TABLE `Genders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Groupes`
--
ALTER TABLE `Groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Languages`
--
ALTER TABLE `Languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Localities`
--
ALTER TABLE `Localities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `People`
--
ALTER TABLE `People`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Roles`
--
ALTER TABLE `Roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Uscmembers`
--
ALTER TABLE `Uscmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Articles`
--
ALTER TABLE `Articles`
  ADD CONSTRAINT `Articles_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `People` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Articles_ibfk_2` FOREIGN KEY (`CategoryId`) REFERENCES `Categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Choirs`
--
ALTER TABLE `Choirs`
  ADD CONSTRAINT `Choirs_ibfk_1` FOREIGN KEY (`ChoirTypeId`) REFERENCES `ChoirTypes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_2` FOREIGN KEY (`GroupeId`) REFERENCES `Groupes` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_3` FOREIGN KEY (`LanguageId`) REFERENCES `Languages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_4` FOREIGN KEY (`LocalityId`) REFERENCES `Localities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `Choirs_ibfk_5` FOREIGN KEY (`UscmemberId`) REFERENCES `Uscmembers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Comity_Person`
--
ALTER TABLE `Comity_Person`
  ADD CONSTRAINT `Comity_Person_ibfk_1` FOREIGN KEY (`ComityId`) REFERENCES `Comities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Comity_Person_ibfk_2` FOREIGN KEY (`PersonId`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `People`
--
ALTER TABLE `People`
  ADD CONSTRAINT `People_ibfk_1` FOREIGN KEY (`GenderId`) REFERENCES `Genders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `People_ibfk_2` FOREIGN KEY (`LanguageId`) REFERENCES `Languages` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `People_ibfk_3` FOREIGN KEY (`LocalityId`) REFERENCES `Localities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Person_Chorus`
--
ALTER TABLE `Person_Chorus`
  ADD CONSTRAINT `Person_Chorus_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Person_Chorus_ibfk_2` FOREIGN KEY (`ChoirId`) REFERENCES `Choirs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Role_Person`
--
ALTER TABLE `Role_Person`
  ADD CONSTRAINT `Role_Person_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `People` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Role_Person_ibfk_2` FOREIGN KEY (`RoleId`) REFERENCES `Roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
