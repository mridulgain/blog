-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_comments`
--

DROP TABLE IF EXISTS `user_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_comments` (
  `post_id` varchar(9) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `comment` varchar(1000) DEFAULT NULL,
  `publish_date` varchar(30) DEFAULT NULL,
  `publish_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_comments`
--

LOCK TABLES `user_comments` WRITE;
/*!40000 ALTER TABLE `user_comments` DISABLE KEYS */;
INSERT INTO `user_comments` VALUES ('7','hi',NULL,'bye','2018-10-23','17:26:51'),('7','lkdlks',NULL,'gu','2018-10-23','17:27:57'),('8','nnhg',NULL,'hghg','2018-10-23','17:33:46'),('8','dkl@gmail.com',NULL,'mx','2018-10-30','11:51:18'),('9','ndsk',NULL,'ksdlk','2018-10-30','11:58:50'),('9','zzzzzz',NULL,'kjkds','2018-10-30','11:59:01');
/*!40000 ALTER TABLE `user_comments` ENABLE KEYS */;
UNLOCK TABLES;

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
  `heading` varchar(80) DEFAULT NULL,
  `sub_heading` varchar(150) DEFAULT NULL,
  `post` mediumtext,
  `publish_date` varchar(30) DEFAULT NULL,
  `publish_time` varchar(30) DEFAULT NULL,
  `theme` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_posts`
--

LOCK TABLES `user_posts` WRITE;
/*!40000 ALTER TABLE `user_posts` DISABLE KEYS */;
INSERT INTO `user_posts` VALUES (10,'Press Trust Of India',NULL,NULL,'After #MeToo Post and Police Complaint, FIR Filed Against Actor Arjun Sarja','Actor Sruthi Hariharan had accused Sarja of \"lewd and completely unprofessional behaviour\" with her during the shooting for a bilingual film in 2016.','<p><b>Bengaluru:</b>&nbsp;A case of attempt to outrage the modesty of a woman\r\n has been slapped against popular film actor Arjun Sarja on a complaint \r\nby multi-lingual actor Sruthi Hariharan.</p>\r\n<p>Hariharan, who has essayed roles in several Kannada films, in a post \r\non her Facebook page praising the ?#Metoo? movement, had last week \r\naccused Sarja of ?lewd and completely unprofessional behaviour? with her\r\n during the shooting for a bilingual film in 2016.</p>\r\n<p>Sruthi?s complaint with the Cubbon Park police came a day after the \r\nKarnataka Film Chamber of Commerce (KFCC)?s attempt to bring about a \r\nconciliation between the two actors failed.</p>\r\n<p>?Based on a complaint from Sruthi Hariharan, we have registered a \r\ncase under Sections 354 354A, 506 and 509 of theIPC. The main content of\r\n it is that he misbehaved with her. We will investigate all the aspects \r\nmentioned in the complaint,? DCP (Central Bengaluru) D. Devaraj told \r\nreporters.</p><p>Section 354 relates to assault or criminal force to woman with intent\r\n to outrage her modesty, 506 to punishment for criminal intimidation and\r\n 509 to word, gesture or act intended to insult the modesty of a woman.</p>\r\n<p>The actress has also mentioned the manager and two others as the \r\nwitnesses, Devaraj said, adding, ?We will inquire with them too.?</p>\r\n<p>Sruthi has alleged that Sarja had sexually abused her since 2015.</p>\r\n<p>The actress recalled one incident in December 2015 when she was \r\ntravelling with her team to her house in her car and Sarja followed her \r\nin his vehicle.</p>\r\n<p>When the vehicles stopped at a traffic signal, he passed a sexually explicit comment, she alleged.</p>\r\n<p>The actress further stated that the #MeToo movement gave her strength to share her story with people.</p>\r\n<p>After Sruthi?s Facebook post last week, Sarja had told a TV channel \r\nthat he has great respect for women right from his childhood and that he\r\n was never involved in any incident that disrespected women or \r\nembarrassed them.</p>\r\n<p>He had also said he respects ?#metoo? and values it, but cautioned against its misuse.</p>\r\n<p>Sarja had also said that he has shared screen space with 60-70 \r\nactresses in the 150 movies he has acted in and has a good relationship \r\nwith all of them.</p>\r\n<p>Days after Sruthi?s charge, Sarja on Thursday filed a Rs 5 defamation suit against her in a city court.</p>\r\n<p>?There is no question of compromise because the pain is intense. Not \r\nonly me, but my family, friends and above all, my fans in Karnataka, \r\nAndhra Pradesh and Tamil Nadu are deeply hurt.</p>\r\n\r\n<p>?I don?t want others to be sacrificed like this,? Sarja had said after the KFCC?s failed patch-up efforts.</p>\r\n<p>?We have gone to court. You will come to know in the coming days who \r\nare behind this campaign against me,? Sarja had said after the meeting.</p>','2018-10-30','12:55:54','images.jpg'),(11,'The Wire Staff',NULL,NULL,'#MeToo: IISc Forces Senior Professor Giridhar Madras Into Compulsory Retirement','Madras is listed among the top 1% of scientists by a research platform.','<p><strong>New Delhi:</strong> An IISc professor listed in the top 1% \r\nof&nbsp;scientists by research platform ISI Web of Knowledge, Giridhar \r\nMadras, has been asked to take ?compulsory retirement? after the \r\ninstitute investigated allegations of sexual harassment levelled against\r\n him.</p>\r\n<p>The professor has been identified as Giridhar Madras and was working \r\nwith the institute?s chemical engineering department. He has been \r\nassociated with the IISc since 1998. The Bangalore-based institute?s \r\ngoverning council recommended that disciplinary action be taken against \r\nhim, <a target=\"_blank\" href=\"https://indianexpress.com/article/india/metoo-iisc-shows-door-to-top-professor-on-charges-of-sexual-harassment-5424490/\">according to the <em>Indian Express</em></a>.</p>\r\n<p>The governing council?s recommendations followed the internal \r\ncomplaints committee?s investigation into allegations of sexual \r\nharassment made by a PhD student who was being guided by Madras.</p>\r\n<p>Madras?s profile has also been taken down from the IISc website. <a target=\"_blank\" href=\"https://web.archive.org/web/20180404235928/http://chemeng.iisc.ac.in/chemeweb/faculty_giridhar.htm\">An archived version of his profile</a>\r\n states that the professor?s work focuses on reaction kinetics. It lists\r\n three areas of research: reaction with macromolecules, catalytic \r\nreactions and reactions and separations in supercritical fluids.</p>\r\n<p><ins>Also Read: <a target=\"_blank\" href=\"https://thewire.in/education/indian-sciences-metoo-moment-remains-caged-in-lattice-of-lopsided-relations\">Indian Science?s #MeToo Moment Remains Caged in Lattice of Lopsided Relations</a></ins></p>\r\n<p>The professor is an alumnus of IIT-Madras and has been the recipient \r\nof several awards, including Shanti Swarup Bhatnagar award in 2009, \r\nwhich is CSIR?s most prestigious award. Madras has also received the \r\nJ.C. Bose National Fellowship, and the IISc award for excellence in \r\nresearch, <em>Indian Express</em> reported.</p>\r\n<p>Madras obtained his PhD from the US. He started teaching at the \r\nUniversity of California in the US. He was described as ?greatly \r\ncontributing to the development of the chemical engineering field?? \r\nsince 1994 and has been highly cited for his research work.</p>\r\n<p>Last week, the <a target=\"_blank\" href=\"https://economictimes.indiatimes.com/news/politics-and-nation/metoo-post-allegation-top-academic-of-iisc-set-to-quit/articleshow/66210328.cms\"><em>Economic Times</em></a>\r\n had reported that Madras?s scientific work has ?resulted in more than \r\n500 publications, 15,000 citations and an h-index of 55, the highest \r\namong all engineering faculty in India?.</p>\r\n<p>Action was taken against the professor under the service rules of the\r\n Central government (Rule 11 of Central Civil Services Classification \r\nControl and Appeal Rules), which also governs disciplinary action \r\nagainst IISc employees for sexual harassment, disciplinary action \r\nincludes removal and dismissal from service among the most stringent \r\npenalties in cases where sexual harassment is proven.</p>\r\n<p>In its <a target=\"_blank\" href=\"https://www.iisc.ac.in/wp-content/uploads/2017/08/IISc_-ASH-Policy_-2017.pdf\">2017 policy statement on preventing and prohibiting sexual harassment</a>\r\n at the workplace, IISc states that it ?believes that all its students \r\ndeserve an education without fear from discrimination and sexual \r\nharassment, in order for their education to be more effective and \r\nvaluable?.</p>\r\n<p><br></p><br>','2018-10-30','13:00:42','images.jpg'),(12,'Cynthia Stephen',NULL,NULL,'The NGO Sector Systematically Silences Dalit, Tribal and Bahujan Voices','While the nation is in the #MeToo movement\'s grip, Dalit women are not speaking up against their oppressors. ','<p>All the media time and reams of newsprint documenting the various \r\n#MeToo revelations in India will not make up for the decades of silence \r\nimposed upon women and girls who were subject to sexual harassment at \r\nhome, at work and in educational institutions.</p>\r\n<p>Civil society groups have been at the forefront of social change in \r\nthe area of gender and NGOs have been important stakeholders. Needless \r\nto say, there have been black sheep in the NGO sector as well, just as \r\nthere are in the rest of society. Mari Marcel Thekaekara <a target=\"_blank\" href=\"https://theprint.in/opinion/metoo-movement-should-not-spare-indian-ngo-heroes-and-i-am-speaking-out/133169/\">accused one well-known NGO activist in an article</a>.</p>\r\n<p>Even though I cannot claim that I was at the receiving end of sexual \r\nharassment, I can surely say that I paid a heavy personal price for \r\nspeaking up against sexist and misogynist behaviour in some of the \r\nplaces I worked. Also, one needs to see this in the light of the subtle \r\nand not-so-subtle casteism one encounters in the sector.</p>\r\n<p>As NGO work shed its focus on volunteerism and began to acquire \r\n?professionalism? in the wake of globalisation in the 1990s, there was \r\nan influx of foreign funding agencies which increased the need for \r\nprofessional social workers whose curricula needed project and financial\r\n management skills more than people?s issues, development and policy \r\nanalysis, which used to be the forte of social workers during the 70s \r\nand 80s.</p><p>I joined the sector as a communications person in the 80s, during an \r\nexciting period. But much of this euphoria was because of my innocence&nbsp;?\r\n or ignorance, as it could be called. Over the years, I became \r\nexperienced and of course moved up the ladder, a little slowed down by \r\nmotherhood, which happened at a critical time career-wise, and by other \r\npersonal setbacks.</p>\r\n<p>So when, in 2004, I successfully passed an interview and written test\r\n for my first post as a director in an NGO, I was thrilled and excited \r\nby the challenging work and its scope, ideal for me, a multi-tasker and \r\npolymath. It was also the first job I had been able to land which was in\r\n line with my training, experience and skills. I often wondered at this,\r\n because peers who entered the field around the same time as I, with \r\nless training and capacities, had become directors much before me and \r\ndrew double or triple of my salary. I had often attended interviews for \r\nsenior positions and was shortlisted, but almost always found someone \r\nelse being preferred.</p><br>','2018-10-30','13:03:13','images.jpg'),(13,'Rohini Nair ',NULL,NULL,'Tata ends contract with Suhel Seth after #MeToo charges.','Brand consultant Suhel Seth\'s services have been terminated by Tata Sons following him being called out in the #MeToo movement, Tata Sons said.','The marketing expert and writer has featured in four accounts on \r\nTwitter: one, an anonymous narrative, and three others, by filmmaker and\r\n entrepreneur Natashja Rathore, by journalist Mandakini Gahlot, writer \r\nIshita Yadav and model Diandra Soares.\r\n<p>Sources at Tata Sons said they have not engaged with Seth since the \r\n#MeToo allegations broke out against him on Twitter. They said they \r\ncould not immediately cancel Seth\'s contract as it was signed with an \r\nagency, Counselage. His contract was to officially end on 30 November, \r\n2018. However, the organisation decided to terminate it before that.</p>\r\n<p><em>Firstpost</em> reached out to Seth but he did not respond to the \r\nthe calls. A text message has been sent. Until the time of publication, \r\nthere was no reply from Seth.&nbsp;<em>CNBC-TV18</em> tweeted this morning that Seth\'s contract has been terminated.</p><p>n an official message, Tata Sons said: Counselage\'s contract with Tata Sons will end on 30 November 2018.\r\n</p><blockquote><p>Seth was hired as a consultant by Tata Sons. He did not have to attend office but would come in occasionally, sources told <em>Firstpost</em>.\r\n \"We have many consultants for various sectors. Seth was one such \r\nconsultant. He would come to the office only when his services were \r\nrequired. Else like other consultants, he would be in touch with whoever\r\n reached out to him.\"</p></blockquote>\r\n<p>When the allegations first broke out, <em>Firstpost</em> reached out \r\nTata Sons to know if they would retain Seth\'s services, the spokesperson\r\n said: \"Tata Group is committed to promoting a safe workplace for women.\r\n We have noted the recent reports regarding Seth in the media. We are \r\nlooking into the issue and will decide on a further course of action in \r\nthis regard.\"</p>','2018-10-30','13:06:12','images.jpg');
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
INSERT INTO `users` VALUES ('admin','admin','Admin','Rohan','admin@rohan.com');
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

-- Dump completed on 2018-10-30 13:53:45
