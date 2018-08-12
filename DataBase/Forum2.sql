/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.0.7-beta-nt : Database - forum
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`forum` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `forum`;

/*Table structure for table `answertable` */

DROP TABLE IF EXISTS `answertable`;

CREATE TABLE `answertable` (
  `answer` varchar(1000) NOT NULL,
  `questionno` int(20) default NULL,
  `uid` varchar(20) default NULL,
  PRIMARY KEY  (`answer`),
  UNIQUE KEY `Secondary` (`answer`),
  KEY `FK_answertable` (`questionno`),
  CONSTRAINT `FK_answertable` FOREIGN KEY (`questionno`) REFERENCES `questiontable` (`questionno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answertable` */

insert  into `answertable`(`answer`,`questionno`,`uid`) values ('dot.net is a oo programming language. By:-dev',16,'dev'),('java is secure,oop,portable language. By:-deep',15,'deep'),('more than one device are connected. By:-deep',18,'deep'),('one object use the property of another. By:-deep',17,'deep');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `uid` varchar(35) NOT NULL,
  `paswd` varchar(20) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY  (`uid`),
  CONSTRAINT `FK_login` FOREIGN KEY (`uid`) REFERENCES `register` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`uid`,`paswd`,`type`) values ('deep','12',2),('dev','0987654',2),('hemu','123',1);

/*Table structure for table `questiontable` */

DROP TABLE IF EXISTS `questiontable`;

CREATE TABLE `questiontable` (
  `questionno` int(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `uid` varchar(20) default NULL,
  PRIMARY KEY  (`questionno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `questiontable` */

insert  into `questiontable`(`questionno`,`question`,`uid`) values (15,'what is java?By:-dev','dev'),(16,'what is Dot.net programming? By:-prabhat','prabhat'),(17,'what is inheritance? By:-dev','dev'),(18,'what is Networking? By:-dev','dev'),(19,'what is System Architecture? By:-deep','deep');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `Name` char(20) NOT NULL,
  `UserId` varchar(23) NOT NULL,
  `Password` varchar(23) NOT NULL,
  `Dob` date NOT NULL,
  `Sex` char(7) NOT NULL,
  `HintQuest` varchar(50) NOT NULL,
  `HntAns` varchar(50) NOT NULL,
  `Branch` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Mobno` varchar(20) NOT NULL default '',
  PRIMARY KEY  (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`Name`,`UserId`,`Password`,`Dob`,`Sex`,`HintQuest`,`HntAns`,`Branch`,`Address`,`Email`,`Mobno`) values ('deepak chaturvedi','deep','12','1988-07-11','M','What is your Pet name?','dog','CSE','23-vijaynagar,indore.','deep@gmail.com','9098776543'),('devendra sigh jhala','dev','098','1987-03-22','M','What is your Nick name?','devu','CSE','45-slice B-vijaynagar,indore.','dev@yahoo.co.in','9098665456'),('hemendra yadav','hemu','123','1988-03-03','M','What is your Hobby ?','dance','CSE','8-ambikapuri,indore','hy@gmail.com','2147483647');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;