-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (x86_64)
--
-- Host: 127.0.0.1    Database: phpdemo_mysql_db
-- ------------------------------------------------------
-- Server version	5.7.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `department`, `sort`) VALUES (1,'Office of the Dean and University Librarian',1),(2,'Community Relations and Events',10),(3,'Creative',3),(4,'Financial Administration',4),(5,'Human Resources',5),(6,'Access Services',6),(7,'Collection Strategies',7),(8,'Acquisitions',8),(9,'Special Collections',9),(10,'Web and Application Development',2);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `email`, `supervisor_id`, `department_id`, `title`, `sort`) VALUES (1,'Bucky','Chadburn','bchadburn0@comcast.net',0,1,'Dean',1),(2,'Tuckie','Bilbrey','tbilbrey1@soundcloud.com',1,1,'Associate Dean',18),(3,'Darsey','Curwood','dcurwood2@storify.com',1,1,'Associate Dean',17),(4,'Lauritz','Chestnut','lchestnut3@bandcamp.com',1,1,'Associate Dean',16),(5,'Lizzy','Woodes','lwoodes4@1688.com',1,1,'Associate Dean',15),(6,'Heddi','Kinchlea','hkinchlea5@mayoclinic.com',1,1,'Associate Dean',14),(7,'Felicle','Antal','fantal6@scribd.com',1,1,'Associate Dean',13),(8,'Zeb','Morson','zmorson7@com.com',1,1,'Associate Dean',12),(9,'Beaufort','Nolli','bnolli8@blogs.com',1,1,'Associate Dean',11),(10,'Skipton','Gherardelli','sgherardelli9@sphinn.com',1,1,'Associate Dean',19),(11,'Robinette','Ash','rasha@sphinn.com',1,1,'Associate Dean',10),(12,'Gaspard','Brahms','gbrahmsb@chron.com',2,2,'Head, Community Relations and Events',1),(13,'Davis','Powton','dpowtonc@phpbb.com',12,2,'Librarian',2),(14,'Gabriela','Houldcroft','ghouldcroftd@theguardian.com',1,1,'Associate Dean',8),(15,'Chariot','de Courcy','cdecourcye@yelp.com',1,1,'Associate Dean',7),(16,'Guinevere','Creed','gcreedf@ycombinator.com',1,1,'Associate Dean',6),(17,'Jacki','Papes','jpapesg@google.de',1,1,'Associate Dean',5),(18,'Katey','Baguley','kbaguleyh@mit.edu',1,1,'Associate Dean',4),(19,'Tabbatha','Syversen','tsyverseni@nih.gov',1,1,'Associate Dean',3),(20,'Glen','Probate','gprobatej@slashdot.org',1,1,'Associate Dean',9),(21,'Tomasine','Dowthwaite','tdowthwaitek@weather.com',3,3,'Head, Creative',10),(22,'Jany','Jefferies','jjefferiesl@ning.com',21,3,'Associate Professor',9),(23,'Wilmar','Dunton','wduntonm@netvibes.com',21,3,'Associate Professor',1),(24,'Camella','Jaynes','cjaynesn@theguardian.com',21,3,'Associate Professor',2),(25,'Uri','Arkow','uarkowo@wsj.com',21,3,'Librarian',3),(26,'Grayce','Addis','gaddisp@hc360.com',21,3,'Librarian',4),(27,'Ulrick','Tettersell','utettersellq@biglobe.ne.jp',21,3,'Associate Professor',8),(28,'Gianni','Birtwisle','gbirtwisler@wsj.com',21,3,'Associate Professor',5),(29,'Ric','Mathissen','rmathissens@twitpic.com',21,3,'Librarian',6),(30,'Sybilla','Storcke','sstorcket@cmu.edu',21,3,'Librarian',7),(31,'Byrom','Wraighte','bwraighteu@mail.ru',4,4,'Head, Financial Administration',10),(32,'Norine','Wakelin','nwakelinv@youtu.be',31,4,'Librarian',9),(33,'Hastie','Beckmann','hbeckmannw@amazonaws.com',31,4,'Associate Professor',8),(34,'Kaia','Driffe','kdriffex@shareasale.com',31,4,'Librarian',7),(35,'Gawain','Calderon','gcalderony@time.com',31,4,'Associate Professor',1),(36,'Lazaro','Yokelman','lyokelmanz@quantcast.com',31,4,'Librarian',6),(37,'Margarete','Leishman','mleishman10@angelfire.com',31,4,'Associate Professor',5),(38,'Jervis','Soldan','jsoldan11@mapquest.com',31,4,'Associate Professor',4),(39,'Sydney','Alecock','salecock12@google.cn',31,4,'Associate Professor',3),(40,'Manuel','Abramsky','mabramsky13@github.io',31,4,'Librarian',2),(41,'Babita','Espadas','bespadas14@wordpress.org',5,5,'Head, Human Resources',5),(42,'Gilbertine','Minchindon','gminchindon15@tinypic.com',41,5,'Librarian',6),(43,'Karalee','Strahan','kstrahan16@yahoo.com',41,5,'Librarian',7),(44,'Burr','Scrowby','bscrowby17@telegraph.co.uk',41,5,'Associate Professor',8),(45,'Marcie','Alvin','malvin18@google.com.hk',41,5,'Librarian',9),(46,'Johna','Donhardt','jdonhardt19@creativecommons.org',41,5,'Associate Professor',10),(47,'Conant','Theobalds','ctheobalds1a@devhub.com',41,5,'Associate Professor',11),(48,'Melvyn','MacCafferky','mmaccafferky1b@clickbank.net',41,5,'Librarian',2),(49,'Cornela','Handrick','chandrick1c@examiner.com',41,5,'Associate Professor',3),(50,'Koral','Liebermann','kliebermann1d@youtube.com',41,5,'Associate Professor',4),(51,'Corty','Broadbury','cbroadbury1e@skype.com',6,6,'Head, Access Services',4),(52,'Enrichetta','Jenteau','ejenteau1f@flavors.me',51,6,'Librarian',9),(53,'Britta','Evered','bevered1g@hud.gov',51,6,'Associate Professor',10),(54,'Gwenni','Sleany','gsleany1h@shutterfly.com',51,6,'Associate Professor',1),(55,'Cary','Vince','cvince1i@gmpg.org',51,6,'Librarian',2),(56,'Waverly','Reary','wreary1j@businesswire.com',51,6,'Librarian',8),(57,'Isaac','Kloska','ikloska1k@seattletimes.com',51,6,'Librarian',7),(58,'Leo','Iffe','liffe1l@discuz.net',51,6,'Librarian',6),(59,'Berky','Hudel','bhudel1m@virginia.edu',51,6,'Associate Professor',5),(60,'Ivy','Piddington','ipiddington1n@bigcartel.com',51,6,'Associate Professor',3),(61,'Rudolfo','Kirtley','rkirtley1o@abc.net.au',7,7,'Head, Collection Strategies',10),(62,'Whitaker','Gruby','wgruby1p@dmoz.org',61,7,'Associate Professor',9),(63,'Gianina','Vargas','gvargas1q@squidoo.com',61,7,'Librarian',8),(64,'Luke','Linch','llinch1r@is.gd',61,7,'Librarian',1),(65,'Brennen','Giberd','bgiberd1s@globo.com',61,7,'Associate Professor',7),(66,'Gene','Maylard','gmaylard1t@lulu.com',61,7,'Librarian',6),(67,'Klarrisa','Belle','kbelle1u@cam.ac.uk',61,7,'Associate Professor',5),(68,'Dyna','Bonafant','dbonafant1v@printfriendly.com',61,7,'Librarian',4),(69,'Amii','Itzkin','aitzkin1w@slate.com',61,7,'Librarian',3),(70,'Desiri','Schultheiss','dschultheiss1x@ihg.com',61,7,'Librarian',2),(71,'Isabelita','Kearney','ikearney1y@java.com',8,8,'Head, Acquisitions',9),(72,'Paula','Merali','pmerali1z@mapquest.com',71,8,'Associate Professor',8),(73,'Henri','Clynman','hclynman20@omniture.com',71,8,'Librarian',7),(74,'Shellie','Fagan','sfagan21@lycos.com',71,8,'Associate Professor',11),(75,'Trstram','Scolland','tscolland22@yale.edu',71,8,'Associate Professor',6),(76,'Carly','Aymes','caymes23@ucoz.ru',71,8,'Associate Professor',5),(77,'Drucie','Winham','dwinham24@cdc.gov',71,8,'Librarian',1),(78,'Abagael','Beane','abeane25@senate.gov',71,8,'Librarian',2),(79,'Lucky','Esson','lesson26@umich.edu',71,8,'Librarian',3),(80,'Danna','Oglevie','doglevie27@squidoo.com',71,8,'Librarian',4),(81,'Gerhard','Calfe','gcalfe28@taobao.com',9,9,'Head, Special Collections',10),(82,'Barris','Aloshikin','baloshikin29@vistaprint.com',81,9,'Librarian',9),(83,'Abbey','Beveridge','abeveridge2a@discovery.com',81,9,'Librarian',8),(84,'Agnola','Forsdicke','aforsdicke2b@google.com.hk',81,9,'Associate Professor',7),(85,'Freddy','Dreelan','fdreelan2c@weather.com',81,9,'Associate Professor',6),(86,'Jacqui','Pendlington','jpendlington2d@msu.edu',81,9,'Associate Professor',5),(87,'Bond','Skym','bskym2e@virginia.edu',81,9,'Librarian',1),(88,'Amalie','Jiles','ajiles2f@spiegel.de',81,9,'Librarian',4),(89,'Melisenda','Edgett','medgett2g@hubpages.com',81,9,'Associate Professor',3),(90,'Andeee','Galfour','agalfour2h@engadget.com',81,9,'Associate Professor',2),(91,'Gizela','Tracy','gtracy2i@theatlantic.com',10,10,'Head, Web and Application Development',2),(92,'Marita','Arthur','marthur2j@biglobe.ne.jp',91,10,'Developer',3),(93,'Melita','Shields','mshields2k@google.nl',91,10,'Designer',4),(94,'Hyacintha','Darrach','hdarrach2l@yahoo.com',91,10,'Librarian',5),(95,'Tuckie','Coyett','tcoyett2m@businessweek.com',91,10,'Developer',6),(96,'Luce','Mintoft','lmintoft2n@kickstarter.com',91,10,'Designer',7),(97,'Tamiko','Dronsfield','tdronsfield2o@hubpages.com',91,10,'Associate Professor',8),(98,'Merrili','Lamprey','mlamprey2p@slashdot.org',91,10,'Developer',9),(99,'Obadias','Martinho','omartinho2q@soundcloud.com',91,10,'Designer',10),(100,'Hilton','Perett','hperett2r@facebook.com',91,10,'Librarian',11);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 15:24:00
