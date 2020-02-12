/*
SQLyog Professional v12.09 (64 bit)
MySQL - 10.4.8-MariaDB : Database - interester
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`interester` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `interester`;

/*Table structure for table `about_students` */

DROP TABLE IF EXISTS `about_students`;

CREATE TABLE `about_students` (
  `glasses` int(1) DEFAULT NULL,
  `hours_social` varchar(20) DEFAULT NULL,
  `hours_study` varchar(20) DEFAULT NULL,
  `roll_number` varchar(8) NOT NULL,
  PRIMARY KEY (`roll_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `about_students` */

insert  into `about_students`(`glasses`,`hours_social`,`hours_study`,`roll_number`) values (1,'0-2','0','f16sw35'),(1,'0-2','0','f16sw38'),(0,'2-4','0','f16sw58');

/*Table structure for table `interests_questions` */

DROP TABLE IF EXISTS `interests_questions`;

CREATE TABLE `interests_questions` (
  `question_number` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `interests_questions` */

insert  into `interests_questions`(`question_number`,`question`) values (1,'I CAN SERVE MYSELF IN FOLLOWING SPORTS'),(2,'MARK YOUR LEVEL'),(3,'DO YOU HAVE COMMUNICATION, PRESENTATION AND DEBATING SKILLS\r\n'),(4,'WILL YOU HAPPILY CONTRIBUTE IN SOCIAL EVENTS AT DEPARTMENTAL OR UNIVERSITY LEVEL?\r\n'),(5,'ARE ARE A MEMBER OF SOFTWARE ENGINEERING SOCIETY\r\n');

/*Table structure for table `opinion_answers` */

DROP TABLE IF EXISTS `opinion_answers`;

CREATE TABLE `opinion_answers` (
  `opinion_id` int(10) NOT NULL,
  `OPTIONS` varchar(100) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `opinion_id` (`opinion_id`),
  CONSTRAINT `opinion_answers_ibfk_1` FOREIGN KEY (`opinion_id`) REFERENCES `opinion_question` (`opinion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `opinion_answers` */

insert  into `opinion_answers`(`opinion_id`,`OPTIONS`,`id`) values (1,'Teachers favour only those who have high GPA in class',2),(1,'Mobile phone addiction',3),(1,'I can better learn at home/coaching center',4),(1,'Lectures are not interactive and interesting at all\r\n',5),(2,'I have a fear of marks deduction',6),(2,'I believe they won\'t take survey respondents seriously',7),(2,'Negative responses often escalate teachers temper rather than bringing any improvement',8),(2,'When someone is honest about his opinion one must not feel hesitation\r\n',9);

/*Table structure for table `opinion_question` */

DROP TABLE IF EXISTS `opinion_question`;

CREATE TABLE `opinion_question` (
  `opinion_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`opinion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `opinion_question` */

insert  into `opinion_question`(`opinion_id`,`question`) values (1,'Why i remain physically present yet meantally absent in class'),(2,'Why i show hesitation/irritation when it comes to teachers evaluation');

/*Table structure for table `student_opinion` */

DROP TABLE IF EXISTS `student_opinion`;

CREATE TABLE `student_opinion` (
  `roll_number` varchar(8) NOT NULL,
  `opinion_id` int(10) NOT NULL,
  `OPTIONS` varchar(100) NOT NULL,
  PRIMARY KEY (`roll_number`,`opinion_id`,`OPTIONS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_opinion` */

insert  into `student_opinion`(`roll_number`,`opinion_id`,`OPTIONS`) values ('f16sw38',1,'Teachers favour only those who have high GPA in class'),('f16sw38',2,'When someone is honest about his opinion one must not feel hesitation\r\n'),('f16sw58',1,'Mobile phone addiction'),('f16sw58',2,'Negative responses often escalate teachers temper rather than bringing any improvement');

/*Table structure for table `student_teacher_opinion` */

DROP TABLE IF EXISTS `student_teacher_opinion`;

CREATE TABLE `student_teacher_opinion` (
  `roll_number` varchar(8) NOT NULL,
  `choosen_answer` varchar(50) NOT NULL,
  `question_number` int(10) NOT NULL,
  PRIMARY KEY (`roll_number`,`choosen_answer`,`question_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `student_teacher_opinion` */

insert  into `student_teacher_opinion`(`roll_number`,`choosen_answer`,`question_number`) values ('f16sw38','Along with lectures tell how students future will ',3),('f16sw38','Lenient in marking',2),('f16sw38','Sir Naeem',1),('f16sw58','Along with lectures tell how students future will ',3),('f16sw58','Enrichment activities for students to further unde',2),('f16sw58','Sir Zubair',1),('f16sw60','Sir Naeem ',1);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `name` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  `roll_number` varchar(8) NOT NULL,
  PRIMARY KEY (`roll_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `students` */

insert  into `students`(`name`,`password`,`roll_number`) values ('Usama','12345','f16sw38'),('Shahid','12345','f16sw39'),('Mehak','12345','f16sw40'),('Mehak2','12345','f16sw41'),('Multan','12345','f16sw45'),('Sultan','12345','f16sw55'),('Waqar','12323','f16sw58');

/*Table structure for table `students_interests_responses` */

DROP TABLE IF EXISTS `students_interests_responses`;

CREATE TABLE `students_interests_responses` (
  `roll_number` varchar(8) NOT NULL,
  `question_number` int(10) NOT NULL,
  `choosen_answer` varchar(100) NOT NULL,
  PRIMARY KEY (`roll_number`,`question_number`,`choosen_answer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `students_interests_responses` */

insert  into `students_interests_responses`(`roll_number`,`question_number`,`choosen_answer`) values ('',0,''),('f16sw38',1,'Cricket'),('f16sw38',2,'2'),('f16sw38',3,'0'),('f16sw38',4,'0'),('f16sw38',5,'0'),('f16sw58',1,'table tennis'),('f16sw58',2,'3'),('f16sw58',3,'1'),('f16sw58',4,'0'),('f16sw58',5,'0');

/*Table structure for table `teachers` */

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `teachers` */

insert  into `teachers`(`id`,`name`) values (1,'Sir Mohsin'),(2,'Sir Zubair'),(3,'Sir Junaid'),(4,'Sir Naeem'),(5,'Sir Qasim '),(6,'Ma\'am Isma'),(7,'Ma\'am Shafia'),(8,'Ma\'am Hira Noman');

/*Table structure for table `teachers_answers` */

DROP TABLE IF EXISTS `teachers_answers`;

CREATE TABLE `teachers_answers` (
  `question` int(10) NOT NULL,
  `options` varchar(50) NOT NULL,
  PRIMARY KEY (`question`,`options`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `teachers_answers` */

insert  into `teachers_answers`(`question`,`options`) values (1,'Sir Naeem'),(2,'Enrichment activities for students to further unde'),(2,'Friendly class environment and listen to our probl'),(2,'Lenient in marking'),(3,'Along with lectures tell how students future will '),(3,'I think they have enough burden already'),(3,'Must linked themself with organizaion\'s current ch'),(3,'Presented the lesson by connecting it with the war');

/*Table structure for table `teachers_question` */

DROP TABLE IF EXISTS `teachers_question`;

CREATE TABLE `teachers_question` (
  `question_number` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `teachers_question` */

insert  into `teachers_question`(`question_number`,`question`) values (1,'Select Your Favourite Teacher'),(2,'What is so special about your favourite teacher'),(3,'I think teachers needs to bring improvement in');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
