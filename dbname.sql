-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,4,'Ta det lugnt'),(2,1,3,'RUUUUUN'),(3,4,5,'Du kommer fram till huset'),(4,5,6,'...'),(5,6,7,'GUN HER DOWN'),(6,6,8,'Försök kasta Greta mot häxan så du kan fly'),(7,8,9,'...'),(8,9,10,'SPRIIIING'),(9,9,12,'Göm dig'),(10,12,13,'En timme senare'),(11,13,11,'Du vaknar upp'),(12,10,11,'Du vaknar upp'),(13,11,14,'Kolla runt'),(14,14,15,'HJÄLP!!!!'),(15,14,16,'hjälp...'),(16,15,17,'Någon öppnar luckan'),(17,17,18,'...'),(18,14,19,''),(19,18,19,'häxan stänger luckan'),(20,19,20,'Du känner hur blodet blir varmare och inser att du är i en mikro'),(21,3,20,'aaaand dead'),(22,7,20,'du hoppar iväg men häxan kliver på dig'),(23,16,19,'...');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Du sitter uppe i ett träd när du hör ett skrik hemifrån '),(3,'Du inser att du är 10 meter upp i luften och är nu i fritt fall'),(4,'Ingen anledning att stressa upp sig (du går mot ljudets källa)'),(5,'Du  kommer hem och inser att det bara är Greta som försöker sjunga opera'),(6,'Då knackar någon på dörren. Du antar att det är din alkoholist som farsa som glömt nycklarna. Men just när du är påväg att öppna dörren så slås den upp och det är HÄXAN'),(7,'Du tar fram din knallpulver pistol och skjuter mot häxan som förvandlar dig till en groda '),(8,'kasta Greta mot häxan och hoppa ut genom fönstret själv'),(9,'Din plan fungerar och häxan tar fast Greta och du hinner undan men du vet att hon kommer börjar leta efter dig. '),(10,'Du springer för ditt liv tills du svimmar av utmattning'),(11,'Du vaknar upp och vet inte vars du är '),(12,'Du gömmer dig i matresterna och hoppas på det bästa'),(13,'Du bestämmer dig att börja leta efter din syster men just när du öppnar luckan så hör du en duns och det svartnar för ögorna'),(14,'Du ser ingenting i mörkret så du börjar känna dig fram.'),(15,'Du ropar efter hjälp'),(16,'Du viskar och se om någon annan är där utan att dra för mycket uppmärksamhet på dig.'),(17,'Det blir plötsligt ljust och du ser häxans hånfulla ansikte'),(18,'Hon säger \"men va trevligt du har äntligen vaknat  just när jag började bli hungrig \"'),(19,'Du hör ett hummande ljud och sedan märker hur det börjar bli varmare och varmare '),(20,'THE END');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-06 18:46:05
