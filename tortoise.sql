-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2014 at 04:25 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tortoise`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment`
--

CREATE TABLE IF NOT EXISTS `attachment` (
  `attachmentId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `letterId` mediumint(8) unsigned NOT NULL,
  `fileName` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `fileSize` varchar(30) NOT NULL,
  PRIMARY KEY (`attachmentId`),
  KEY `letterId` (`letterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `contactId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(8) unsigned NOT NULL,
  `FirstName` varchar(500) NOT NULL,
  `LastName` varchar(500) NOT NULL,
  `cellPhone` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `groups` varchar(30) NOT NULL,
  `shared` binary(1) NOT NULL,
  PRIMARY KEY (`contactId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `grouppermission`
--

CREATE TABLE IF NOT EXISTS `grouppermission` (
  `groupPermissionId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupId` mediumint(8) unsigned NOT NULL,
  `permissionId` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`groupPermissionId`),
  KEY `permissionId` (`permissionId`),
  KEY `groupId` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `groupId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupName` varchar(30) NOT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE IF NOT EXISTS `letter` (
  `letterId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userTitle` mediumint(8) unsigned NOT NULL,
  `userId` mediumint(8) unsigned NOT NULL,
  `parentLetterId` mediumint(8) unsigned DEFAULT NULL,
  `LetterNumber` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `fromUser` varchar(30) NOT NULL,
  `toUser` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `mainText` varchar(30) NOT NULL,
  `attachment` varchar(30) DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `hasAttachment` binary(1) NOT NULL,
  `eghdam` varchar(30) NOT NULL,
  PRIMARY KEY (`letterId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `permissionId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) NOT NULL,
  PRIMARY KEY (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE IF NOT EXISTS `receivers` (
  `receiverId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(8) unsigned NOT NULL,
  `LetterId` mediumint(8) unsigned NOT NULL,
  `receiverType` varchar(100) NOT NULL,
  `viewed` binary(1) NOT NULL,
  PRIMARY KEY (`receiverId`),
  KEY `userId` (`userId`),
  KEY `LetterId` (`LetterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE IF NOT EXISTS `title` (
  `titleid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  PRIMARY KEY (`titleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` char(40) NOT NULL,
  `FirstName` varchar(500) NOT NULL,
  `LastName` varchar(500) NOT NULL,
  `signature` varchar(500) DEFAULT NULL,
  `createDate` datetime NOT NULL,
  `meliCode` varchar(10) NOT NULL,
  `cellPhone` varchar(11) DEFAULT NULL,
  `birthDate` varchar(30) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `successor` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `FirstName`, `LastName`, `signature`, `createDate`, `meliCode`, `cellPhone`, `birthDate`, `address`, `lastLogin`, `successor`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'علیرضا', 'کاظمی', NULL, '0000-00-00 00:00:00', '23', '123', '13', '13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usergroup`
--

CREATE TABLE IF NOT EXISTS `usergroup` (
  `UserGroupId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `groupId` mediumint(8) unsigned NOT NULL,
  `userId` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`UserGroupId`),
  KEY `groupId` (`groupId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE IF NOT EXISTS `userpermission` (
  `UserPermissionId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `UserId` mediumint(8) unsigned NOT NULL,
  `PermissionId` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`UserPermissionId`),
  KEY `UserId` (`UserId`),
  KEY `PermissionId` (`PermissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usertitle`
--

CREATE TABLE IF NOT EXISTS `usertitle` (
  `TitleId` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userId` mediumint(8) unsigned NOT NULL,
  `userTitleId` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`userTitleId`),
  KEY `TitleId` (`TitleId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachment`
--
ALTER TABLE `attachment`
  ADD CONSTRAINT `attachment_ibfk_1` FOREIGN KEY (`letterId`) REFERENCES `letter` (`letterId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grouppermission`
--
ALTER TABLE `grouppermission`
  ADD CONSTRAINT `grouppermission_ibfk_1` FOREIGN KEY (`permissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grouppermission_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `letter`
--
ALTER TABLE `letter`
  ADD CONSTRAINT `letter_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receivers`
--
ALTER TABLE `receivers`
  ADD CONSTRAINT `receivers_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receivers_ibfk_2` FOREIGN KEY (`LetterId`) REFERENCES `letter` (`letterId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usergroup`
--
ALTER TABLE `usergroup`
  ADD CONSTRAINT `usergroup_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `groups` (`groupId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usergroup_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD CONSTRAINT `userpermission_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userpermission_ibfk_2` FOREIGN KEY (`PermissionId`) REFERENCES `permission` (`permissionId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usertitle`
--
ALTER TABLE `usertitle`
  ADD CONSTRAINT `usertitle_ibfk_1` FOREIGN KEY (`TitleId`) REFERENCES `title` (`titleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usertitle_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
