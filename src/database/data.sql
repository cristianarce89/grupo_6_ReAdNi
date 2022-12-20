-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: data
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `id_markets` int NOT NULL,
  PRIMARY KEY (`idCategory`),
  KEY `id_markets` (`id_markets`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_markets`) REFERENCES `market` (`idMarket`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (14,'hombre',1),(15,'hombre',2),(16,'hombre',3),(17,'mujer',1),(18,'mujer',2),(19,'mujer',3),(20,'niño',1),(21,'niño',2),(22,'niño',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `idCity` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`idCity`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'bogota'),(2,'medellin'),(3,'bucaramanga'),(4,'cali'),(5,'santamarta'),(6,'ibague'),(7,'villavicencio'),(8,'manizales'),(9,'pasto'),(10,'popayan');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `idColor` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'azul'),(2,'amarillo'),(3,'verde'),(4,'fucsia'),(5,'blanco'),(6,'negro'),(7,'rojo'),(8,'gris'),(9,'rosado'),(10,'morado');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `market` (
  `idMarket` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_colors` int NOT NULL,
  PRIMARY KEY (`idMarket`),
  KEY `id_colors` (`id_colors`),
  CONSTRAINT `market_ibfk_1` FOREIGN KEY (`id_colors`) REFERENCES `color` (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (1,'reebok',1),(2,'adidas',2),(3,'nike',3);
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idProduct` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `ranking` int NOT NULL,
  `price` int NOT NULL,
  `discounts` int NOT NULL,
  `id_markets` int NOT NULL,
  `id_categories` int NOT NULL,
  `id_sizes` int NOT NULL,
  `description` varchar(50) NOT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `priceAnt` int DEFAULT NULL,
  `id_color` int NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `id_markets` (`id_markets`),
  KEY `id_categories` (`id_categories`),
  KEY `id_sizes` (`id_sizes`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_markets`) REFERENCES `market` (`idMarket`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_categories`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`id_sizes`) REFERENCES `size` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (31,'Tennis reebok maravilla version 1',5,150000,0,1,14,15,'los mejores tenis del mundo','https://i.postimg.cc/wxSMpF0t/blue.png',200000,6),(32,'Tennis adidas maravilla version 2',2,70000,2,2,15,13,'los mejores tenis del mundo','https://i.postimg.cc/WpDzCx6L/pink.png',100000,2),(33,'Tennis nike maravilla version 3',4,90000,10,3,16,4,'los mejores tenis del mundo','https://i.postimg.cc/Fs3RscBT/yellow.png',140000,3),(34,'Tennis reebok universo version 1',3,180000,10,1,17,16,'los mejores tenis del mundo','https://i.postimg.cc/wxSMpF0t/blue.png',250000,4),(35,'Tennis adidas universo version 2',5,190000,8,2,18,17,'los mejores tenis del mundo','https://i.postimg.cc/WpDzCx6L/pink.png',300000,5),(36,'Tennis nike universo version 3',5,200000,7,3,19,5,'los mejores tenis del mundo','https://i.postimg.cc/Fs3RscBT/yellow.png',310000,7),(37,'Tennis reebok galaxy version 1',5,300000,2,1,20,18,'los mejores tenis del mundo','https://i.postimg.cc/wxSMpF0t/blue.png',380000,8),(38,'Tennis adidas galaxy version 2',5,250000,0,2,21,14,'los mejores tenis del mundo','https://i.postimg.cc/WpDzCx6L/pink.png',320000,9),(39,'Tennis nike galaxy version 3',4,130000,10,3,22,2,'los mejores tenis del mundo','https://i.postimg.cc/Fs3RscBT/yellow.png',190000,1),(40,'Tennis nike jordan version xx',5,400000,5,3,14,20,'los mejores tenis del mundo','https://i.postimg.cc/wxSMpF0t/blue.png',500000,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `idProduct_size` int NOT NULL AUTO_INCREMENT,
  `id_products` int NOT NULL,
  `id_sizes` int NOT NULL,
  PRIMARY KEY (`idProduct_size`),
  KEY `id_products` (`id_products`),
  KEY `id_sizes` (`id_sizes`),
  CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `product_size_ibfk_2` FOREIGN KEY (`id_sizes`) REFERENCES `size` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,31,1),(2,32,4),(3,33,8),(4,34,7),(5,35,9),(6,36,10),(7,37,20),(8,38,11),(9,39,12),(10,40,19);
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `idSize` int NOT NULL AUTO_INCREMENT,
  `number` int NOT NULL,
  PRIMARY KEY (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,25),(2,26),(3,27),(4,28),(5,29),(6,30),(7,31),(8,32),(9,33),(10,34),(11,35),(12,36),(13,37),(14,38),(15,39),(16,40),(17,41),(18,42),(19,43),(20,44);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cellphone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `id_cities` int NOT NULL,
  PRIMARY KEY (`idUser`),
  KEY `id_cities` (`id_cities`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_cities`) REFERENCES `city` (`idCity`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'andres cortes','andrescortes@gmail.com','3101120192','calle 1 carrera 2 23-23',1),(2,'jhon florez','jhon florez@gmail.com','3111823456','calle 10 carrera 12 3-03',2),(3,'diego rojas','diegorojas@gmail.com','3129834728','calle 12 carrera 23 5-27',3),(4,'maria sarmiento','mariasarmiento@gmail.com','3139283710','calle 4 carrera 23 9-45',4),(5,'johany serna','johanyserna@gmail.com','3210129814','calle 52 carrera 5 90-87',5),(6,'sandra mejia','sandramejia@gmail.com','3308739820','calle 8 carrera 74 62-06',6),(7,'carlos rios','carlosrios@gmail.com','3012010028','calle 43 carrera 98 1-46',7),(8,'sara perea','saraperea@gmail.com','3159827682','calle 2 carrera 6 78-78',8),(9,'aide ramirez','aideramirez@gmail.com','3165476739','calle 65 carrera 1 63-97',9),(10,'david bustamante','davidbustamante@gmail.com','3108901273','calle 35 carrera 95 4-22',10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_product`
--

DROP TABLE IF EXISTS `user_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_product` (
  `idUser_product` int NOT NULL AUTO_INCREMENT,
  `id_products` int NOT NULL,
  `id_users` int NOT NULL,
  PRIMARY KEY (`idUser_product`),
  KEY `id_products` (`id_products`),
  KEY `id_users` (`id_users`),
  CONSTRAINT `user_product_ibfk_1` FOREIGN KEY (`id_products`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `user_product_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product`
--

LOCK TABLES `user_product` WRITE;
/*!40000 ALTER TABLE `user_product` DISABLE KEYS */;
INSERT INTO `user_product` VALUES (1,31,3),(2,32,4),(3,33,5),(4,34,6),(5,35,7),(6,36,8),(7,37,9),(8,38,10),(9,39,1),(10,40,2);
/*!40000 ALTER TABLE `user_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-19 11:45:19
