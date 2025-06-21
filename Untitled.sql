-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: bizzcount
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DiscoveryCalls`
--

DROP TABLE IF EXISTS `DiscoveryCalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DiscoveryCalls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `referralSource` varchar(255) DEFAULT NULL,
  `message` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiscoveryCalls`
--

LOCK TABLES `DiscoveryCalls` WRITE;
/*!40000 ALTER TABLE `DiscoveryCalls` DISABLE KEYS */;
INSERT INTO `DiscoveryCalls` VALUES (1,'Raj','Choudhary','softgenic.raj123@gmail.com','9110189245','softgenic ind. pvt. ltd','Apoorv','i\'m a software devloper','2025-06-13 11:20:38','2025-06-13 11:20:38'),(2,'Mahima','Choudhary','softgenic.raj123@gmail.com','9110189245','softgenic ind. pvt. ltd','Apoorv','i\'m a software devloper','2025-06-13 11:21:31','2025-06-13 11:21:31'),(3,'Pooja','Choudhary','softgenic.raj123@gmail.com','9110189245','softgenic ind. pvt. ltd','Apoorv','i\'m a software devloper','2025-06-13 11:21:58','2025-06-13 11:21:58'),(4,'Ragni','Choudhary','softgenic.raj123@gmail.com','9110189245','softgenic ind. pvt. ltd','Apoorv','i\'m a software devloper','2025-06-13 11:22:18','2025-06-13 11:22:18'),(5,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:46:45','2025-06-13 12:46:45'),(6,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:47:32','2025-06-13 12:47:32'),(7,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:50:47','2025-06-13 12:50:47'),(8,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:52:06','2025-06-13 12:52:06'),(9,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:52:33','2025-06-13 12:52:33'),(10,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:53:10','2025-06-13 12:53:10'),(11,'Apoorv','Kumar','raj02@gmail.com','76572356','hhgj','hjjhjk','yfj,hbnkmnm,nbcvdgdydfhjjmkklugyuttyrtewweqqew','2025-06-13 12:53:40','2025-06-13 12:53:40'),(12,'Raj','Choudhary','softgenic.raj143@gmail.com','76572356','zx zxccz','cv bfdd','dfdbf','2025-06-13 13:31:34','2025-06-13 13:31:34'),(13,'Raj444','Choudhary','vidharthmktg@gmail.com','76572356','hhgj','cv bfdd','   gghjkllkml','2025-06-16 11:44:40','2025-06-16 11:44:40'),(14,'swati','singh','vidharthmktg@gmail.com','76572356','hkjjsdksdk;Lsd','sbvhjknkasjl/ax/kl','xbasjknjks/sklskas;la;l,a','2025-06-16 17:43:20','2025-06-16 17:43:20'),(15,'Raj','Choudhary','softgenic.raj143@gmail.com','76572356','testing','testing','testing','2025-06-19 16:50:50','2025-06-19 16:50:50'),(16,'Raj','Choudhary','softgenic.raj143@gmail.com','76572356','testing','testing','testing','2025-06-19 16:50:53','2025-06-19 16:50:53'),(17,'SWATI','MEHATA','vidharthmktg@gmail.com','76572356','TESTING','TESTING','HMLMLKSNKSDLKLKSDLMS','2025-06-19 17:32:22','2025-06-19 17:32:22'),(18,'SWATI','MEHATA','vidharthmktg@gmail.com','76572356','TESTING','TESTING','HMLMLKSNKSDLKLKSDLMS','2025-06-19 17:32:25','2025-06-19 17:32:25'),(19,'Raj','Choudhary','raj02@gmail.com','76572356','zx zxccz','cv bfdd','FERFDVD','2025-06-19 17:34:33','2025-06-19 17:34:33');
/*!40000 ALTER TABLE `DiscoveryCalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `blog_link` varchar(255) DEFAULT NULL,
  `blog_url` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Grant Thornton UAE to join multinational platform led by Grant Thornton Advisors LLC','https://www.linkedin.com/posts/bizzcountsolutions_global-corporate-tax-rate-activity-7229963322798809088-fYXR/?utm_source=share&utm_medium=member_desktop&rcm=ACoAADttx44Bt3oXHMQFq2YEAbjbncbr466INoQ','1749733888926-computer-glass-men.webp','2025-06-12 13:11:28','2025-06-12 13:11:28'),(2,'Grant Thornton UAE to join multinational platform led by Grant Thornton Advisors LLC','https://www.linkedin.com/posts/bizzcountsolutions_global-corporate-tax-rate-activity-7229963322798809088-fYXR/?utm_source=share&utm_medium=member_desktop&rcm=ACoAADttx44Bt3oXHMQFq2YEAbjbncbr466INoQ','1749736566393-Screen Shot 2025-06-12 at 4.48.33 PM.png','2025-06-12 13:56:06','2025-06-12 13:56:06'),(3,'Grant Thornton UAE to join multinational platform led by Grant Thornton Advisors LLC','https://www.linkedin.com/posts/bizzcountsolutions_global-corporate-tax-rate-activity-7229963322798809088-fYXR/?utm_source=share&utm_medium=member_desktop&rcm=ACoAADttx44Bt3oXHMQFq2YEAbjbncbr466INoQ','1749736605466-Screen Shot 2025-06-12 at 4.48.33 PM.png','2025-06-12 13:56:45','2025-06-12 13:56:45'),(4,'desp- Funding the Future: Why Businesses in the UAE Must Act Now on Capital Strategy','https://www.linkedin.com/posts/bizzcountsolutions_bizzcountsolutions-fundraisingadvisory-corporatefinance-activity-7337504538112802817-AsIV?utm_source=share&utm_medium=member_desktop&rcm=ACoAAFtiZksBbdxfmzQ9Fb8JXr2Fp1-Ce5USFeA','1749746070801-device.png','2025-06-12 16:34:30','2025-06-12 16:34:30'),(7,'swati ','https://www.linkedin.com/posts/linkedin_find-your-next-job-on-linkedin-httpslnkdin-activity-6706879785492115456-wAkN?utm_source=share&utm_medium=member_desktop&rcm=ACoAADttx44Bt3oXHMQFq2YEAbjbncbr466INoQ','1750094993390-thumbnail.png','2025-06-16 17:29:53','2025-06-16 17:29:53');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-21 17:22:47
