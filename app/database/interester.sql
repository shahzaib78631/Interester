/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.24 : Database - interester
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`interester` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `interester`;


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
  `image` longblob,
  PRIMARY KEY (`usr_id`),
  UNIQUE KEY `rollnumber` (`rollnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usr` */

insert  into `usr`(`usr_id`,`first_name`,`last_name`,`email`,`rollnumber`,`pass`,`created_at`,`image`) values 
(1,'Shahzaib','Ali','shahzaib78631@gmail.com','F16SW53','pakistan','2020-01-28 20:12:42',NULL),
(2,'Waqar','Lasan','adil.cn85@gmail.com','F16SW58','12345','2020-01-29 11:57:51',NULL);


/*Table structure for table `langs` */

DROP TABLE IF EXISTS `langs`;

CREATE TABLE `langs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `logo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `langs` */

insert  into `langs`(`id`,`name`,`logo`) values 
(1,'html','<svg viewBox=\"0 0 128 128\">\r\n                            <path fill=\"#E44D26\"\r\n                              d=\"M19.037 113.876l-10.005-112.215h109.936l-10.016 112.198-45.019 12.48z\"></path>\r\n                            <path fill=\"#F16529\" d=\"M64 116.8l36.378-10.086 8.559-95.878h-44.937z\"></path>\r\n                            <path fill=\"#EBEBEB\"\r\n                              d=\"M64 52.455h-18.212l-1.258-14.094h19.47v-13.762h-34.511l.33 3.692 3.382 37.927h30.799zM64 88.198l-.061.017-15.327-4.14-.979-10.975h-13.817l1.928 21.609 28.193 7.826.063-.017z\">\r\n                            </path>\r\n                            <path fill=\"#fff\"\r\n                              d=\"M63.952 52.455v13.763h16.947l-1.597 17.849-15.35 4.143v14.319l28.215-7.82.207-2.325 3.234-36.233.335-3.696h-3.708zM63.952 24.599v13.762h33.244l.276-3.092.628-6.978.329-3.692z\">\r\n                            </path>\r\n                          </svg>'),
(2,'java','<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#0074BD\" d=\"M47.617 98.12s-4.767 2.774 3.397 3.71c9.892 1.13 14.947.968 25.845-1.092 0 0 2.871 1.795 6.873 3.351-24.439 10.47-55.308-.607-36.115-5.969zM44.629 84.455s-5.348 3.959 2.823 4.805c10.567 1.091 18.91 1.18 33.354-1.6 0 0 1.993 2.025 5.132 3.131-29.542 8.64-62.446.68-41.309-6.336z\"></path><path fill=\"#EA2D2E\" d=\"M69.802 61.271c6.025 6.935-1.58 13.17-1.58 13.17s15.289-7.891 8.269-17.777c-6.559-9.215-11.587-13.792 15.635-29.58 0 .001-42.731 10.67-22.324 34.187z\"></path><path fill=\"#0074BD\" d=\"M102.123 108.229s3.529 2.91-3.888 5.159c-14.102 4.272-58.706 5.56-71.094.171-4.451-1.938 3.899-4.625 6.526-5.192 2.739-.593 4.303-.485 4.303-.485-4.953-3.487-32.013 6.85-13.743 9.815 49.821 8.076 90.817-3.637 77.896-9.468zM49.912 70.294s-22.686 5.389-8.033 7.348c6.188.828 18.518.638 30.011-.326 9.39-.789 18.813-2.474 18.813-2.474s-3.308 1.419-5.704 3.053c-23.042 6.061-67.544 3.238-54.731-2.958 10.832-5.239 19.644-4.643 19.644-4.643zM90.609 93.041c23.421-12.167 12.591-23.86 5.032-22.285-1.848.385-2.677.72-2.677.72s.688-1.079 2-1.543c14.953-5.255 26.451 15.503-4.823 23.725 0-.002.359-.327.468-.617z\"></path><path fill=\"#EA2D2E\" d=\"M76.491 1.587s12.968 12.976-12.303 32.923c-20.266 16.006-4.621 25.13-.007 35.559-11.831-10.673-20.509-20.07-14.688-28.815 8.548-12.834 32.229-19.059 26.998-39.667z\"></path><path fill=\"#0074BD\" d=\"M52.214 126.021c22.476 1.437 57-.8 57.817-11.436 0 0-1.571 4.032-18.577 7.231-19.186 3.612-42.854 3.191-56.887.874 0 .001 2.875 2.381 17.647 3.331z\"></path>\r\n</svg>'),
(3,'php','<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#6181B6\" d=\"M64 33.039c-33.74 0-61.094 13.862-61.094 30.961s27.354 30.961 61.094 30.961 61.094-13.862 61.094-30.961-27.354-30.961-61.094-30.961zm-15.897 36.993c-1.458 1.364-3.077 1.927-4.86 2.507-1.783.581-4.052.461-6.811.461h-6.253l-1.733 10h-7.301l6.515-34h14.04c4.224 0 7.305 1.215 9.242 3.432 1.937 2.217 2.519 5.364 1.747 9.337-.319 1.637-.856 3.159-1.614 4.515-.759 1.357-1.75 2.624-2.972 3.748zm21.311 2.968l2.881-14.42c.328-1.688.208-2.942-.361-3.555-.57-.614-1.782-1.025-3.635-1.025h-5.79l-3.731 19h-7.244l6.515-33h7.244l-1.732 9h6.453c4.061 0 6.861.815 8.402 2.231s2.003 3.356 1.387 6.528l-3.031 15.241h-7.358zm40.259-11.178c-.318 1.637-.856 3.133-1.613 4.488-.758 1.357-1.748 2.598-2.971 3.722-1.458 1.364-3.078 1.927-4.86 2.507-1.782.581-4.053.461-6.812.461h-6.253l-1.732 10h-7.301l6.514-34h14.041c4.224 0 7.305 1.215 9.241 3.432 1.935 2.217 2.518 5.418 1.746 9.39zM95.919 54h-5.001l-2.727 14h4.442c2.942 0 5.136-.29 6.576-1.4 1.442-1.108 2.413-2.828 2.918-5.421.484-2.491.264-4.434-.66-5.458-.925-1.024-2.774-1.721-5.548-1.721zM38.934 54h-5.002l-2.727 14h4.441c2.943 0 5.136-.29 6.577-1.4 1.441-1.108 2.413-2.828 2.917-5.421.484-2.491.264-4.434-.66-5.458s-2.772-1.721-5.546-1.721z\"></path>\r\n</svg>'),
(4,'python','<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#FFD845\" d=\"M49.33 62h29.159c8.117 0 14.511-6.868 14.511-15.019v-27.798c0-7.912-6.632-13.856-14.555-15.176-5.014-.835-10.195-1.215-15.187-1.191-4.99.023-9.612.448-13.805 1.191-12.355 2.181-14.453 6.751-14.453 15.176v10.817h29v4h-40.224000000000004c-8.484 0-15.914 5.108-18.237 14.811-2.681 11.12-2.8 17.919 0 29.53 2.075 8.642 7.03 14.659 15.515 14.659h9.946v-13.048c0-9.637 8.428-17.952 18.33-17.952zm-1.838-39.11c-3.026 0-5.478-2.479-5.478-5.545 0-3.079 2.451-5.581 5.478-5.581 3.015 0 5.479 2.502 5.479 5.581-.001 3.066-2.465 5.545-5.479 5.545zM122.281 48.811c-2.098-8.448-6.103-14.811-14.599-14.811h-10.682v12.981c0 10.05-8.794 18.019-18.511 18.019h-29.159c-7.988 0-14.33 7.326-14.33 15.326v27.8c0 7.91 6.745 12.564 14.462 14.834 9.242 2.717 17.994 3.208 29.051 0 7.349-2.129 14.487-6.411 14.487-14.834v-11.126h-29v-4h43.682c8.484 0 11.647-5.776 14.599-14.66 3.047-9.145 2.916-17.799 0-29.529zm-41.955 55.606c3.027 0 5.479 2.479 5.479 5.547 0 3.076-2.451 5.579-5.479 5.579-3.015 0-5.478-2.502-5.478-5.579 0-3.068 2.463-5.547 5.478-5.547z\"></path>\r\n</svg>'),
(5,'angular','<svg viewBox=\"0 0 128 128\">\r\n<path fill=\"#C4473A\" d=\"M52.864 64h23.28l-12.375-25.877zM63.81 1.026l-59.257 20.854 9.363 77.637 49.957 27.457 50.214-27.828 9.36-77.635-59.637-20.485zm-15.766 73.974l-7.265 18.176-13.581.056 36.608-81.079-.07-.153h-.064l.001-.133.063.133h.14100000000000001l.123-.274v.274h-.124l-.069.153 38.189 81.417-13.074-.287-8.042-18.58-17.173.082\"></path>\r\n</svg>');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `u_id` int(11) DEFAULT NULL,
  `p_name` varchar(20) DEFAULT NULL,
  `proficiency` int(1) DEFAULT NULL,
  KEY `p_id` (`u_id`),
  CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `languages` */

insert  into `languages`(`u_id`,`p_name`,`proficiency`) values 
(2,'html',0),
(1,'html',2);

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
  `s_id` int(11) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `proficiency` int(1) DEFAULT NULL,
  KEY `s_id` (`s_id`),
  CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `usr` (`usr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sports` */

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
