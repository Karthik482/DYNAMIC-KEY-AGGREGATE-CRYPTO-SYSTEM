-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema key_agg
--

CREATE DATABASE IF NOT EXISTS key_agg;
USE key_agg;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(45) NOT NULL default '',
  `id` varchar(45) NOT NULL default '',
  `files` varchar(45) NOT NULL default '',
  `time_` varchar(45) NOT NULL default '',
  `status_` varchar(45) NOT NULL default '',
  `user` varchar(45) NOT NULL default ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`name`,`id`,`files`,`time_`,`status_`,`user`) VALUES 
 ('filedlg3','933','1016','2014-11-27 15:28:20','No','admin'),
 ('lasttest.txt','529','112','2014-11-27 15:30:44','No','admin'),
 ('en.txt','708','8','2014-11-27 17:30:40','No','admin'),
 ('en.txt','3437716','8','2014-11-27 17:36:10','parthiban','admin'),
 ('28th.txt','4ppjmgz3sh7bmct','16','2014-11-28 17:35:49','parthiban','admin'),
 ('finaltest.txt','4ppjmgz3sh7bmct','232','2014-11-28 18:33:44','pubkeyfordown','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `fileshare`
--

DROP TABLE IF EXISTS `fileshare`;
CREATE TABLE `fileshare` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userid` varchar(45) NOT NULL default '',
  `publickey_` varchar(45) NOT NULL default '',
  `aggrekey_` varchar(45) NOT NULL default '',
  `filename_` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fileshare`
--

/*!40000 ALTER TABLE `fileshare` DISABLE KEYS */;
INSERT INTO `fileshare` (`id`,`userid`,`publickey_`,`aggrekey_`,`filename_`) VALUES 
 (8,'parthy','parthiban','4ppjmgz3sh7bmct','28th.txt'),
 (9,'parthy','parthiban','4ppjmgz3sh7bmct','28th.txt'),
 (10,'parthy','No','529','lasttest.txt'),
 (11,'jp','pubkeyfordown','4ppjmgz3sh7bmct','finaltest.txt');
/*!40000 ALTER TABLE `fileshare` ENABLE KEYS */;


--
-- Definition of table `user_reg`
--

DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(45) NOT NULL default '',
  `name` varchar(45) NOT NULL default '',
  `password` varchar(45) NOT NULL default '',
  `mail` varchar(45) NOT NULL default '',
  `phoneno` varchar(45) NOT NULL default '',
  `ustatus` varchar(45) NOT NULL default '',
  `likes` varchar(45) NOT NULL default '',
  `location` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reg`
--

/*!40000 ALTER TABLE `user_reg` DISABLE KEYS */;
INSERT INTO `user_reg` (`id`,`username`,`name`,`password`,`mail`,`phoneno`,`ustatus`,`likes`,`location`) VALUES 
 (1,'a','a','a','a@gmail.com','1234567890','yes','a','a'),
 (2,'parthy','parthiban','123','parthiban.bluish@gmail.com','1234567890','yes','music','pondicherry'),
 (3,'jp','jp info tech','jp','jpstudcorner@gmail.com','1234567890','yes','iee','pondicherry');
/*!40000 ALTER TABLE `user_reg` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
