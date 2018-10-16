-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB-6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_posts`
--

DROP TABLE IF EXISTS `user_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `post` varchar(2000) DEFAULT NULL,
  `publish_date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_posts`
--

LOCK TABLES `user_posts` WRITE;
/*!40000 ALTER TABLE `user_posts` DISABLE KEYS */;
INSERT INTO `user_posts` VALUES (1,'rohan','rohan@rohan.com','9876543211','blslkdjksjdk','2018-10-16 23:32:23'),(2,'Mridul GAin','mridul@rohan.com',NULL,'Hi there. I\'m moving from cosmofox.net to pomm.es. I\'m also trying a little different design.','2018-10-17 00:22:03'),(3,'Mridul GAin','mridul@rohan.com',NULL,'hi\r\nthis is\r\nmy second post.','2018-10-17 00:23:54'),(4,'hi','hi@rohan.com',NULL,'hi\\n\r\ntesting line break','2018-10-17 00:28:10'),(5,'hi','hi@rohan.com',NULL,'Twitter (/&#712;tw&#618;t&#601;r/) is an American online news and social networking service on which users post and interact with messages known as \"tweets\". Tweets were originally restricted to 140 characters, but on November 7, 2017, this limit was doubled for all languages except Chinese, Japanese, and Korean.[13] Registered users can post tweets, but those who are unregistered can only read them. Users access Twitter through its website interface, through Short Message Service (SMS) or mobile-device application software (\"app\").[14] Twitter, Inc. is based in San Francisco, California, and has more than 25 offices around the world.[15]\r\n\r\nTwitter was created in March 2006 by Jack Dorsey, Noah Glass, Biz Stone, and Evan Williams and launched in July of that year. The service rapidly gained worldwide popularity. In 2012, more than 100 million users posted 340 million tweets a day,[16] and the service handled an average of 1.6 billion search queries per day.[17][18][19] In 2013, it was one of the ten most-visited websites and has been described as \"the SMS of the Internet\".[20][21] As of 2016, Twitter had more than 319 million monthly active users.[10] Since 2015, and continuing into 2016 and future years, Twitter has also been the home of debates, and news covering Politics of the United States, especially during the 2016 U.S. presidential election, Brett Kavanaugh Supreme Court Nomination, and 2018 United States Midterms, with Twitter proved to be the largest source of breaking news on the day of the 2016 election, with 40 million election-related tweets sent by 10 p.m. (Eastern Time) that day.[22]\r\n','2018-10-17 00:29:40'),(6,'chaand','chaand@gmail.com',NULL,'1. users(username (pk), password, first_name, last_name, email);\r\n2. user_posts(post_id int auto_increment (pk), username(fk->users), Subject, body, publish_date auto_generate);\r\n3. topics(topic_id int auto_increment, topic_name(pk));\r\n4. tags(post_id(fk->posts),topic_id\r\n		pk=(post_id,topic_id));','2018-10-17 01:14:50');
/*!40000 ALTER TABLE `user_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(8) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin','Admin','Rohan','admin@rohan.com'),('rohan','rohan','gain','Rohan','2018-10-16 23:26:38'),('rohan2','rohan2','gain','Rohan','2018-10-16 23:26:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-17  1:24:43
