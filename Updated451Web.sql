-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: ix.cs.uoregon.edu    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Address` (
  `address_id` varchar(45) NOT NULL,
  `User_id` int NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `fk_Address_User_idx` (`User_id`),
  CONSTRAINT `fk_Address_User` FOREIGN KEY (`User_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES ('1',1,'5172 Hisa Ave, 48291, Gunna, TX','Gunna','5172 Hisa Ave','TX'),('10',10,'1213 Cardi Pl, 77889, Bobery, NY','Bobery','1213 Cardi Pl','NY'),('11',11,'1415 Travis St, 99001, Scott, TX','Scott','1415 Travis St','TX'),('12',12,'1617 Chance Blvd, 22334, Uber, IL','Uber','1617 Chance Blvd','IL'),('13',13,'1819 Kanye Rd, 44556, West, IL','West','1819 Kanye Rd','IL'),('14',14,'2021 Frank Blvd, 66778, Ocean, CA','Ocean','2021 Frank Blvd','CA'),('15',15,'2223 Tyler St, 88990, Creator, CA','Creator','2223 Tyler St','CA'),('2',2,'292 Junfer St, 90444, Offset, MI','Offset','292 Junfer St','MI'),('3',3,'7645 Migos Blvd, 67890, Quavo, GA','Quavo','7645 Migos Blvd','GA'),('4',4,'1234 Lil St, 56789, Wayne, LA','Wayne','1234 Lil St','LA'),('5',5,'4567 Carter Rd, 54321, JayZ, NY','JayZ','4567 Carter Rd','NY'),('6',6,'8910 Drake Dr, 09876, Toronto, ON','Toronto','8910 Drake Dr','ON'),('7',7,'2345 Kendrick Ln, 11223, Lamar, CA','Lamar','2345 Kendrick Ln','CA'),('8',8,'6789 Snoop Ave, 33445, Dogg, CA','Dogg','6789 Snoop Ave','CA'),('9',9,'1011 Nicki Ct, 55667, Minaj, NY','Minaj','1011 Nicki Ct','NY');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `ssn` char(9) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'John Smither','730-444-5920','243456781',6000.00),(2,'Tam Johansen','540-241-5392','243456782',4000.00),(3,'Jenniffer Shava','971-484-5230','223456783',3000.00),(4,'Rosena Quencidala','551-444-4291','28345784',4000.00),(5,'Yaya Yao','913-537-5101','204358872',5500.00),(6,'Alex Dorgensen','580-666-1958','294866786',9000.00),(7,'Fiona Mondoza','720-446-1638','295456787',7000.00),(8,'Sheila Philips','521-888-5062','293456788',8000.00),(9,'Hank Kush','551-999-5857','253456789',9000.00),(10,'Olivia Ulysis','630-101-5267','239446435',7300.00),(11,'Emanuel Cooper','971-222-4758','297940041',9400.00),(12,'Yazmin Quinn','544-239-4987','265594369',4500.00),(13,'Lane Chilisen','701-842-5720','241438854',6500.00),(14,'Veronica Zhang','503-184-8247','204384655',4500.00),(15,'Mike Bonida','694-942-9145','275535831',5300.00);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Manufacturer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES (1,'Sunrise','GuangDong'),(2,'Tabia','SuZhou'),(3,'TheBabyGhost','Eugene'),(4,'TheQueen','Portland'),(5,'JumpingMoney','NewYork');
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(45) DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `User_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_Order_User1_idx` (`User_id`),
  CONSTRAINT `fk_Order_User1` FOREIGN KEY (`User_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (1,'Credit','2023-01-01 10:00:00',35.00,1),(2,'Debit','2023-01-02 11:00:00',70.00,2),(3,'Cash','2023-01-03 12:00:00',105.00,3),(4,'Credit','2023-01-04 13:00:00',105.00,3),(5,'Debit','2023-01-05 14:00:00',70.00,3),(6,'Cash','2023-01-06 15:00:00',35.00,4),(7,'Credit','2023-01-07 16:00:00',35.00,7),(8,'Debit','2023-01-08 17:00:00',390.00,7),(9,'Cash','2023-01-09 18:00:00',130.00,9),(10,'Credit','2023-01-10 19:00:00',65.00,10),(11,'Debit','2023-01-11 20:00:00',65.25,11),(12,'Cash','2023-01-12 21:00:00',65.00,12),(13,'Credit','2023-01-13 22:00:00',130.00,12),(14,'Debit','2023-01-14 20:15:00',65.00,12),(15,'Cash','2023-01-15 16:03:00',130.00,15);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_items`
--

DROP TABLE IF EXISTS `Order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order_items` (
  `Order_order_id` int NOT NULL,
  `Product_id` int NOT NULL,
  `quanity` int DEFAULT NULL,
  PRIMARY KEY (`Order_order_id`,`Product_id`),
  KEY `fk_Order_items_Product1_idx` (`Product_id`),
  CONSTRAINT `fk_Order_items_Order1` FOREIGN KEY (`Order_order_id`) REFERENCES `Order` (`order_id`),
  CONSTRAINT `fk_Order_items_Product1` FOREIGN KEY (`Product_id`) REFERENCES `Product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_items`
--

LOCK TABLES `Order_items` WRITE;
/*!40000 ALTER TABLE `Order_items` DISABLE KEYS */;
INSERT INTO `Order_items` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,3),(5,5,2),(6,6,1),(7,7,1),(8,8,6),(9,9,2),(10,10,1),(11,11,1),(12,12,1),(13,13,2),(14,14,1),(15,15,2);
/*!40000 ALTER TABLE `Order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `order` varchar(45) DEFAULT NULL,
  `Manufacturer_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Product_Manufacturer1_idx` (`Manufacturer_id`),
  CONSTRAINT `fk_Product_Manufacturer1` FOREIGN KEY (`Manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (1,'The BabyGhost Shirt Classic','The BabyGhost Classic graphic t-shirt with cotton material and puff print, orginal graphic in center',35.00,NULL,NULL,1),(2,'The BabyGhost Shirt Light','The BabyGhost Classic graphic t-shirt with cotton material and puff print, lighter formed graphic in center',35.00,NULL,NULL,2),(3,'The BabyGhost Shirt Blue','The BabyGhost Classic graphic t-shirt with cotton material and puff print, blue blendered graphic in center',35.00,NULL,NULL,3),(4,'The Boy Shirt grey','Grey color The Boy graphic t-shirt with cotton material and puff print, orginal graphic in center',35.00,NULL,NULL,4),(5,'The Boy Shirt Pink','Pink color The Boy graphic t-shirt with cotton material and puff print, orginal graphic in center',35.00,NULL,NULL,5),(6,'The Boy Shirt cream','Cream color The Boy graphic t-shirt with cotton material and puff print, orginal graphic in center',35.00,NULL,NULL,1),(7,'The Boy Shirt Purple','Purple color The Boy graphic t-shirt with cotton material and puff print, orginal graphic in center',35.00,NULL,NULL,2),(8,'Signature Series Ice Age Hoodie','Hot pink hoodie with The BabyGhost Logos, cotton and polyester material with embroidery designs',65.00,NULL,NULL,3),(9,'Signature Series Ice Age Sweatpants','Hot pink sweatpants with The BabyGhost Logos, cotton and polyester material with embroidery designs',65.00,NULL,NULL,4),(10,'Oil Paint Series Ice Age Hoodie','Blue and white hoodie with cut and stitch panels',65.00,NULL,NULL,5),(11,'Oil Paint Series Ice Age Sweatpants','Blue and white sweatpants with cut and stitch panels',65.25,NULL,NULL,1),(12,'Oil Paint Series Cream Pie Hoodie','Cream and grey hoodie with cut and stitch panels',65.00,NULL,NULL,2),(13,'Oil Paint Series Cream Pie Sweatpants','Cream and grey sweatpants with cut and stitch panels',65.00,NULL,NULL,3),(14,'Wukong Series Midnight Sweatpants','Dark brown hoodie with light grey embroidery logos and puff print cloud designs',65.00,NULL,NULL,4),(15,'Wukong Series Midnight Hoodie','Dark brown sweatpants with light grey embroidery logos and puff print cloud designs',65.00,NULL,NULL,5);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stock` (
  `Product_id` int NOT NULL,
  `Store_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `bulk_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Product_id`,`Store_id`),
  KEY `fk_Stock_Store1_idx` (`Store_id`),
  CONSTRAINT `fk_Stock_Product` FOREIGN KEY (`Product_id`) REFERENCES `Product` (`id`),
  CONSTRAINT `fk_Stock_Store` FOREIGN KEY (`Store_id`) REFERENCES `Store` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES (1,1,25,10.00),(2,2,20,10.00),(3,3,10,10.00),(4,4,25,10.00),(5,5,15,10.00),(6,1,14,10.00),(7,1,0,10.00),(7,2,0,10.00),(7,3,0,10.00),(7,4,0,10.00),(7,5,0,10.00),(8,3,25,25.00),(9,4,20,25.00),(10,5,18,25.00),(11,1,5,25.00),(12,2,2,25.00),(13,3,8,25.00),(14,4,9,25.00),(15,5,12,25.00);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Store`
--

DROP TABLE IF EXISTS `Store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `platform` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Store_Employee1_idx` (`manager_id`),
  CONSTRAINT `fk_Store_Employee1` FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Store`
--

LOCK TABLES `Store` WRITE;
/*!40000 ALTER TABLE `Store` DISABLE KEYS */;
INSERT INTO `Store` VALUES (1,'instagram','1900 Yamason St, OR, United States','730-423-5365',1),(2,'tiktok','1590 Kiyon St, ShangHai, China','983-156-6623',5),(3,'shopify','3800 Boston St, Texas, United States','532-672-3577',1),(4,'amazon','6471 Hallen Ave, OR, United States','461-952-0056',4),(5,'facebook','831 Veron Ave, OR, United States','548-522-1475',5);
/*!40000 ALTER TABLE `Store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Jasen Quandevo','971-482-9056','JaSenQ1','uef29148jrf0'),(2,'Alina Mendez','222-382-5722','AliMen2','pwd2456abc'),(3,'Brandon Lee','333-482-1837','BranLee3','myp@ssw0rd3'),(4,'Chloe Smith','444-592-2648','ChloSmi4','4passw0rd$'),(5,'David Johnson','555-502-4859','DavJoh5','dav!john5pw'),(6,'Ella Fitzgerald','666-612-2930','EllaFit6','EllaPa$$wd6'),(7,'Frank Miller','777-722-3741','FranMil7','Fr4nkM!ll7'),(8,'Grace Hopper','888-832-4562','GraHop8','Gr4c3H0pp8'),(9,'Hank Schrader','999-942-5373','HanSch9','HanSchr9der'),(10,'Ivy Wilson','101-052-6184','IvyWil10','Iv!Wils0n10'),(11,'Jack Black','111-162-7935','JacBla11','JacBl@ck11'),(12,'Karen Gillan','222-272-8646','KarGil12','K@renG12pw'),(13,'Liam Neeson','333-382-9357','LiaNee13','L!amN13son'),(14,'Mila Kunis','222-244-4444','MilKun14','Mil@Kun14pw'),(15,'Nina Dobrev','111-777-3333','NinDob15','NinaD15obv');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 15:27:14
