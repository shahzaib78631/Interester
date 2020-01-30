/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.24 : Database - filter-web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`filter-web` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `filter-web`;

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `languages` */

insert  into `languages`(`p_id`,`p_name`) values 
(1,'C'),
(2,'C++'),
(3,'C#'),
(4,'Java'),
(5,'PLSQL'),
(7,'Android (Java+XML)'),
(8,'Android (Kotlin+XML)'),
(9,'Android (on Flutter)'),
(10,'Assembly'),
(11,'.NET'),
(12,'BASH scripting'),
(13,'BATCH Scripting'),
(14,'MATLAB Scripting'),
(15,'Python'),
(16,'JavaScript'),
(17,'PHP'),
(18,'SQL'),
(19,'Mongo');

/*Table structure for table `question_table` */

DROP TABLE IF EXISTS `question_table`;

CREATE TABLE `question_table` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `question_table` */

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `roles` */

/*Table structure for table `social_id` */

DROP TABLE IF EXISTS `social_id`;

CREATE TABLE `social_id` (
  `usr_id` int(11) DEFAULT NULL,
  `fb` varchar(30) DEFAULT NULL,
  `linked_in` varchar(30) DEFAULT NULL,
  `github` varchar(30) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  CONSTRAINT `social_id_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `social_id` */

/*Table structure for table `sports` */

DROP TABLE IF EXISTS `sports`;

CREATE TABLE `sports` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sports` */

/*Table structure for table `usr` */

DROP TABLE IF EXISTS `usr`;

CREATE TABLE `usr` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `rollnumber` varchar(8) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `rollnumber` (`rollnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr` */

/*Table structure for table `usr_access` */

DROP TABLE IF EXISTS `usr_access`;

CREATE TABLE `usr_access` (
  `usr_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `usr_access_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`),
  CONSTRAINT `usr_access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr_access` */

/*Table structure for table `usr_ans_table` */

DROP TABLE IF EXISTS `usr_ans_table`;

CREATE TABLE `usr_ans_table` (
  `usr_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `usr_ans_table_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`),
  CONSTRAINT `usr_ans_table_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `question_table` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr_ans_table` */

/*Table structure for table `usr_lang` */

DROP TABLE IF EXISTS `usr_lang`;

CREATE TABLE `usr_lang` (
  `usr_id` int(11) DEFAULT NULL,
  `lang` varchar(20) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  CONSTRAINT `usr_lang_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr_lang` */

/*Table structure for table `usr_sports` */

DROP TABLE IF EXISTS `usr_sports`;

CREATE TABLE `usr_sports` (
  `usr_id` int(11) DEFAULT NULL,
  `sports` varchar(20) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  CONSTRAINT `usr_sports_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr_sports` */

/*Table structure for table `usr_tech` */

DROP TABLE IF EXISTS `usr_tech`;

CREATE TABLE `usr_tech` (
  `usr_id` int(11) DEFAULT NULL,
  `tech` varchar(20) DEFAULT NULL,
  KEY `usr_id` (`usr_id`),
  CONSTRAINT `usr_tech_ibfk_1` FOREIGN KEY (`usr_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usr_tech` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
