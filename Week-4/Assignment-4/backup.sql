-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: assignment
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` int DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (9,'Judith Mitchell','Agreement water federal mother require.','Scene as thank eye act option same think. Eight partner manage nice effect former.'),(8,'Jeffrey Banks','Approach traditional sister despite something decade.','Authority field point American ago executive.'),(9,'Judith Mitchell','Blood per film.','Plan us federal skill hard. This number should movement young feel. Play understand eight build letter democratic.'),(10,'Neil Fernandez MD','Commercial energy now far community.','Charge bit shake clear spring young study. Table coach perform source happen.'),(5,'Shaun Phillips','Cup car usually quality.','Defense city reveal create. Expert TV institution military rich better. Paper theory partner property ok human manage.'),(4,'Christopher Vaughn','Director one everybody opportunity general cut.','Social against skill course join own politics. Its child little opportunity size front. Sense including since ok will cultural.'),(7,'Isabella Henderson','Either media town oil nor leader.','Four police stand.'),(3,'Larry Jefferson','Election boy trade young live candidate ground there.','Sound adult some station program. Catch father early compare itself writer gas. Computer site certain worker. Situation wonder high community candidate.'),(9,'Judith Mitchell','Expect church several various sit.','History information group west open with.'),(9,'Judith Mitchell','Explain door to detail.','Military anyone rise career kid class prevent. Prove second will. We southern customer worker knowledge or.'),(2,'Brittany Wilson','Explain instead trial national job leave thus.','Scene lot him year stock. Data health coach determine. Key gas economic apply however.'),(8,'Jeffrey Banks','Fall exist machine.','Save upon stand walk wall. Little sign low behind. Same hand we soldier real real condition see.'),(8,'Jeffrey Banks','Financial work agreement station employee quite think.','Thank voice home provide.'),(6,'Jessica Moore','Idea entire record key.','Yourself lay church different. Sense he cut than stuff money. Find consumer occur daughter study machine final store.'),(4,'Christopher Vaughn','In argue crime fish and think.','Physical staff security I huge ago water cultural. Truth player with attorney. Campaign hear man behind follow.'),(7,'Isabella Henderson','Local share son determine.','Include admit item through. Arrive pattern his hope walk rule. Difference form major family ball opportunity.'),(6,'Jessica Moore','Manager management idea great.','Within practice produce term use next three society. Never majority world them minute country defense.'),(1,'Bonnie Rangel','Measure research matter special.','Receive half should feel environment defense large.'),(1,'Bonnie Rangel','Memory line picture subject.','Phone continue chair organization couple draw sound grow. Stage talk better hold pattern daughter share chance. Future lose seat type dinner.'),(5,'Shaun Phillips','National language development his.','Arrive approach key down plan. Enter race end medical turn administration action.'),(2,'Brittany Wilson','News book bring decade growth.','Pressure company blue. Group talk sport large before so put.'),(3,'Larry Jefferson','Notice participant series industry country a morning.','Say conference moment I. Want as size us. According high far machine dog my.'),(6,'Jessica Moore','One population such month everyone traditional.','White drug attention positive race condition marriage huge. Someone street bed else art past. Hot interest particularly.'),(4,'Christopher Vaughn','Open office whom base toward.','Military accept Congress. Hope much world soon daughter stage indicate.'),(5,'Shaun Phillips','Respond pull why protect.','Rather good yourself customer. Girl parent foot board hold.'),(8,'Jeffrey Banks','Security expect ever all deal model place.','Century middle choose bed develop. Culture never dream long expect source alone.'),(5,'Shaun Phillips','Smile plant upon painting young tend decide.','Watch word executive change thus star team. His of lead. International away individual together. Let sure scientist today.'),(3,'Larry Jefferson','Team whole may program measure paper dark.','Support with despite job key answer.'),(9,'Judith Mitchell','Until bad live here none possible inside.','Number important citizen nothing plan major away accept. Coach live that sometimes pretty. Yes level international write plan.'),(7,'Isabella Henderson','Wide step baby explain often.','On career test staff well. Section finally condition establish building animal.');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'shawnlawson@example.net','jONwbNok$0'),(2,'lopezmichael@example.net','%6GrByy#cW'),(3,'ernestlawrence@example.org','c#P9MCp%uG'),(4,'samuel99@example.org','U0_cCWw1%s'),(5,'margaretwagner@example.com','QnX3eGB^_5'),(6,'crystalgarcia@example.org','lM8IaB(J!!'),(7,'xevans@example.net','no0NCliQ^y'),(8,'amandaturner@example.org','M@1UmOUFpX'),(9,'michael89@example.com','(foPSWZc25'),(10,'mary03@example.com','9p15tERt)+');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-23 20:58:57
