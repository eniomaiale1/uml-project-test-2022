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
INSERT INTO `staff` (`id`, `first_name`, `last_name`, `email`, `supervisor_id`, `department_id`, `title`, `sort`) VALUES (1,'Bucky','Chadburn','bchadburn0@comcast.net',0,1,'Automation Specialist II',1),(2,'Tuckie','Bilbrey','tbilbrey1@soundcloud.com',1,1,'Nuclear Power Engineer',18),(3,'Darsey','Curwood','dcurwood2@storify.com',1,1,'Research Assistant I',17),(4,'Lauritz','Chestnut','lchestnut3@bandcamp.com',1,1,'Software Test Engineer IV',16),(5,'Lizzy','Woodes','lwoodes4@1688.com',1,1,'Cost Accountant',15),(6,'Heddi','Kinchlea','hkinchlea5@mayoclinic.com',1,1,'Nurse Practicioner',14),(7,'Felicle','Antal','fantal6@scribd.com',1,1,'Project Manager',13),(8,'Zeb','Morson','zmorson7@com.com',1,1,'Geological Engineer',12),(9,'Beaufort','Nolli','bnolli8@blogs.com',1,1,'Programmer Analyst III',11),(10,'Skipton','Gherardelli','sgherardelli9@sphinn.com',1,1,'Clinical Specialist',19),(11,'Robinette','Ash','rasha@sphinn.com',1,1,'VP Accounting',10),(12,'Gaspard','Brahms','gbrahmsb@chron.com',2,2,'Nurse',2),(13,'Davis','Powton','dpowtonc@phpbb.com',2,2,'Automation Specialist II',1),(14,'Gabriela','Houldcroft','ghouldcroftd@theguardian.com',1,1,'Pharmacist',8),(15,'Chariot','de Courcy','cdecourcye@yelp.com',1,1,'Product Engineer',7),(16,'Guinevere','Creed','gcreedf@ycombinator.com',1,1,'Computer Systems Analyst II',6),(17,'Jacki','Papes','jpapesg@google.de',1,1,'VP Marketing',5),(18,'Katey','Baguley','kbaguleyh@mit.edu',1,1,'Structural Engineer',4),(19,'Tabbatha','Syversen','tsyverseni@nih.gov',1,1,'Research Associate',3),(20,'Glen','Probate','gprobatej@slashdot.org',1,1,'Systems Administrator II',9),(21,'Tomasine','Dowthwaite','tdowthwaitek@weather.com',3,3,'Automation Specialist II',10),(22,'Jany','Jefferies','jjefferiesl@ning.com',3,3,'Research Associate',9),(23,'Wilmar','Dunton','wduntonm@netvibes.com',3,3,'Developer I',1),(24,'Camella','Jaynes','cjaynesn@theguardian.com',3,3,'Dental Hygienist',2),(25,'Uri','Arkow','uarkowo@wsj.com',3,3,'Nurse Practicioner',3),(26,'Grayce','Addis','gaddisp@hc360.com',3,3,'Software Consultant',4),(27,'Ulrick','Tettersell','utettersellq@biglobe.ne.jp',3,3,'Financial Advisor',8),(28,'Gianni','Birtwisle','gbirtwisler@wsj.com',3,3,'Help Desk Technician',5),(29,'Ric','Mathissen','rmathissens@twitpic.com',3,3,'Nuclear Power Engineer',6),(30,'Sybilla','Storcke','sstorcket@cmu.edu',3,3,'Human Resources Manager',7),(31,'Byrom','Wraighte','bwraighteu@mail.ru',4,4,'VP Marketing',10),(32,'Norine','Wakelin','nwakelinv@youtu.be',4,4,'Analog Circuit Design manager',9),(33,'Hastie','Beckmann','hbeckmannw@amazonaws.com',4,4,'Desktop Support Technician',8),(34,'Kaia','Driffe','kdriffex@shareasale.com',4,4,'Environmental Specialist',7),(35,'Gawain','Calderon','gcalderony@time.com',4,4,'Human Resources Assistant II',1),(36,'Lazaro','Yokelman','lyokelmanz@quantcast.com',4,4,'Actuary',6),(37,'Margarete','Leishman','mleishman10@angelfire.com',4,4,'Teacher',5),(38,'Jervis','Soldan','jsoldan11@mapquest.com',4,4,'Quality Control Specialist',4),(39,'Sydney','Alecock','salecock12@google.cn',4,4,'Programmer III',3),(40,'Manuel','Abramsky','mabramsky13@github.io',4,4,'Business Systems Development Analyst',2),(41,'Babita','Espadas','bespadas14@wordpress.org',5,5,'Electrical Engineer',5),(42,'Gilbertine','Minchindon','gminchindon15@tinypic.com',5,5,'Marketing Manager',6),(43,'Karalee','Strahan','kstrahan16@yahoo.com',5,5,'Research Associate',7),(44,'Burr','Scrowby','bscrowby17@telegraph.co.uk',5,5,'VP Sales',8),(45,'Marcie','Alvin','malvin18@google.com.hk',5,5,'Internal Auditor',9),(46,'Johna','Donhardt','jdonhardt19@creativecommons.org',5,5,'Senior Cost Accountant',10),(47,'Conant','Theobalds','ctheobalds1a@devhub.com',5,5,'Media Manager II',11),(48,'Melvyn','MacCafferky','mmaccafferky1b@clickbank.net',5,5,'Pharmacist',2),(49,'Cornela','Handrick','chandrick1c@examiner.com',5,5,'Database Administrator I',3),(50,'Koral','Liebermann','kliebermann1d@youtube.com',5,5,'Systems Administrator I',4),(51,'Corty','Broadbury','cbroadbury1e@skype.com',6,6,'Administrative Assistant IV',4),(52,'Enrichetta','Jenteau','ejenteau1f@flavors.me',6,6,'Cost Accountant',9),(53,'Britta','Evered','bevered1g@hud.gov',6,6,'Associate Professor',10),(54,'Gwenni','Sleany','gsleany1h@shutterfly.com',6,6,'Environmental Specialist',1),(55,'Cary','Vince','cvince1i@gmpg.org',6,6,'Librarian',2),(56,'Waverly','Reary','wreary1j@businesswire.com',6,6,'Payment Adjustment Coordinator',8),(57,'Isaac','Kloska','ikloska1k@seattletimes.com',6,6,'VP Quality Control',7),(58,'Leo','Iffe','liffe1l@discuz.net',6,6,'Product Engineer',6),(59,'Berky','Hudel','bhudel1m@virginia.edu',6,6,'Structural Engineer',5),(60,'Ivy','Piddington','ipiddington1n@bigcartel.com',6,6,'Product Engineer',3),(61,'Rudolfo','Kirtley','rkirtley1o@abc.net.au',7,7,'Analyst Programmer',10),(62,'Whitaker','Gruby','wgruby1p@dmoz.org',7,7,'Biostatistician III',9),(63,'Gianina','Vargas','gvargas1q@squidoo.com',7,7,'VP Marketing',8),(64,'Luke','Linch','llinch1r@is.gd',7,7,'Registered Nurse',1),(65,'Brennen','Giberd','bgiberd1s@globo.com',7,7,'Legal Assistant',7),(66,'Gene','Maylard','gmaylard1t@lulu.com',7,7,'Director of Sales',6),(67,'Klarrisa','Belle','kbelle1u@cam.ac.uk',7,7,'Research Assistant II',5),(68,'Dyna','Bonafant','dbonafant1v@printfriendly.com',7,7,'Accountant II',4),(69,'Amii','Itzkin','aitzkin1w@slate.com',7,7,'Tax Accountant',3),(70,'Desiri','Schultheiss','dschultheiss1x@ihg.com',7,7,'Assistant Professor',2),(71,'Isabelita','Kearney','ikearney1y@java.com',8,8,'Tax Accountant',9),(72,'Paula','Merali','pmerali1z@mapquest.com',8,8,'Systems Administrator IV',8),(73,'Henri','Clynman','hclynman20@omniture.com',8,8,'Assistant Manager',7),(74,'Shellie','Fagan','sfagan21@lycos.com',8,8,'Nuclear Power Engineer',11),(75,'Trstram','Scolland','tscolland22@yale.edu',8,8,'Human Resources Manager',6),(76,'Carly','Aymes','caymes23@ucoz.ru',8,8,'Payment Adjustment Coordinator',5),(77,'Drucie','Winham','dwinham24@cdc.gov',8,8,'Nurse',1),(78,'Abagael','Beane','abeane25@senate.gov',8,8,'Systems Administrator III',2),(79,'Lucky','Esson','lesson26@umich.edu',8,8,'Human Resources Assistant I',3),(80,'Danna','Oglevie','doglevie27@squidoo.com',8,8,'Executive Secretary',4),(81,'Gerhard','Calfe','gcalfe28@taobao.com',9,9,'Registered Nurse',10),(82,'Barris','Aloshikin','baloshikin29@vistaprint.com',9,9,'Automation Specialist II',9),(83,'Abbey','Beveridge','abeveridge2a@discovery.com',9,9,'Assistant Professor',8),(84,'Agnola','Forsdicke','aforsdicke2b@google.com.hk',9,9,'VP Product Management',7),(85,'Freddy','Dreelan','fdreelan2c@weather.com',9,9,'Paralegal',6),(86,'Jacqui','Pendlington','jpendlington2d@msu.edu',9,9,'Nurse Practicioner',5),(87,'Bond','Skym','bskym2e@virginia.edu',9,9,'Project Manager',1),(88,'Amalie','Jiles','ajiles2f@spiegel.de',9,9,'Research Assistant II',4),(89,'Melisenda','Edgett','medgett2g@hubpages.com',9,9,'Engineer III',3),(90,'Andeee','Galfour','agalfour2h@engadget.com',9,9,'Compensation Analyst',2),(91,'Gizela','Tracy','gtracy2i@theatlantic.com',10,10,'Administrative Officer',2),(92,'Marita','Arthur','marthur2j@biglobe.ne.jp',10,10,'VP Accounting',3),(93,'Melita','Shields','mshields2k@google.nl',10,10,'Research Assistant III',4),(94,'Hyacintha','Darrach','hdarrach2l@yahoo.com',10,10,'Operator',5),(95,'Tuckie','Coyett','tcoyett2m@businessweek.com',10,10,'Junior Executive',6),(96,'Luce','Mintoft','lmintoft2n@kickstarter.com',10,10,'Payment Adjustment Coordinator',7),(97,'Tamiko','Dronsfield','tdronsfield2o@hubpages.com',10,10,'Senior Quality Engineer',8),(98,'Merrili','Lamprey','mlamprey2p@slashdot.org',10,10,'Executive Secretary',9),(99,'Obadias','Martinho','omartinho2q@soundcloud.com',10,10,'Senior Quality Engineer',10),(100,'Hilton','Perett','hperett2r@facebook.com',10,10,'Recruiter',11);
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

-- Dump completed on 2022-10-21 11:57:33
