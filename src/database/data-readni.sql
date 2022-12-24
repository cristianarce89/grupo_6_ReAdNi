CREATE DATABASE  IF NOT EXISTS `data-readni` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `data-readni`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: data-readni
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
  `name` varchar(100) NOT NULL,
  `id_product` int DEFAULT NULL,
  PRIMARY KEY (`idCategory`),
  KEY `fk_id_product_idx` (`id_product`),
  CONSTRAINT `fk_id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'hombres',1),(2,'mujeres',2),(3,'niños',3);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `idColor` int NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`idColor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES (1,'azul'),(2,'rosado'),(3,'amarillo');
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
  `name` varchar(10) NOT NULL,
  `id_products` int NOT NULL,
  `id_colors` int NOT NULL,
  `id_sizes` int NOT NULL,
  PRIMARY KEY (`idMarket`),
  KEY `fk_id_products_idx` (`id_products`),
  KEY `fk_id_colors_idx` (`id_colors`),
  KEY `fk_id_sizes_idx` (`id_sizes`),
  CONSTRAINT `fk_id_colors` FOREIGN KEY (`id_colors`) REFERENCES `color` (`idColor`),
  CONSTRAINT `fk_id_products` FOREIGN KEY (`id_products`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `fk_id_sizes` FOREIGN KEY (`id_sizes`) REFERENCES `size` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES (1,'reebok',1,1,1),(2,'adidas',2,2,2),(3,'nike',3,3,3);
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
  `description` varchar(100) NOT NULL,
  `ranking` int NOT NULL,
  `priceAnt` int NOT NULL,
  `price` int NOT NULL,
  `discount` int NOT NULL,
  `market` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `size` int NOT NULL,
  `imagen` varchar(100) NOT NULL,
  PRIMARY KEY (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Tennis la maravilla del mundo version 1','son los mejores tennis fabricados con ultima tecnologia.',5,1500000,1450000,2,'reebok','azules','hombre',39,'https://i.postimg.cc/wxSMpF0t/blue.png'),(2,'Tennis la maravilla del mundo version 2','son los mejores tennis fabricados con ultima tecnologia',4,180000,150000,5,'adidas','rosados','mujer',37,'https://i.postimg.cc/WpDzCx6L/pink.png'),(3,'Tennis la maravilla del mundo version 3','son los mejores tennis fabricados con ultima tecnologia',3,120000,100000,5,'nike','amarillos','niños',34,'https://i.postimg.cc/Fs3RscBT/yellow.png'),(4,'Tennis la maravilla del mundo version 4','son los mejores tennis fabricados con ultima tecnologia',2,180000,150000,10,'reebok','azules','hombre',40,'https://i.postimg.cc/wxSMpF0t/blue.png');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color`
--

DROP TABLE IF EXISTS `product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_color` (
  `idProduct_color` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_color` int NOT NULL,
  PRIMARY KEY (`idProduct_color`),
  KEY `fk_id_productColor_product_idx` (`id_product`),
  KEY `fk_id_productColor_color_idx` (`id_color`),
  CONSTRAINT `fk_id_productColor_color` FOREIGN KEY (`id_color`) REFERENCES `color` (`idColor`),
  CONSTRAINT `fk_id_productColor_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color`
--

LOCK TABLES `product_color` WRITE;
/*!40000 ALTER TABLE `product_color` DISABLE KEYS */;
INSERT INTO `product_color` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_size` (
  `idProduct_size` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_size` int NOT NULL,
  PRIMARY KEY (`idProduct_size`),
  KEY `fk_productSize_product_idx` (`id_product`),
  KEY `fk_productSize_size_idx` (`id_size`),
  CONSTRAINT `fk_productSize_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `fk_productSize_size` FOREIGN KEY (`id_size`) REFERENCES `size` (`idSize`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,1,15),(2,2,13),(3,3,10);
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
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cellphone` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'juliana quimbay','juliLaMejor@gmail.com','3212345678','cra 9 N 8 37'),(2,'fabio cruz','cruz.fabio@gmail.com','3214567890','cra 3 N 4 99'),(3,'david diaz','diaz.david@gmail.com','3215678901','cll 15 N 9 28'),(4,'cristian arce','arce.cristian@susuerte.com','3216789012','cra 4 N 37 95');
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
  `id_user` int NOT NULL,
  `id_product` int NOT NULL,
  PRIMARY KEY (`idUser_product`),
  KEY `fk_productSize_product_idx` (`id_product`),
  KEY `fk_userProduct_user_idx` (`id_user`),
  CONSTRAINT `fk_userProduct_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`idProduct`),
  CONSTRAINT `fk_userProduct_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_product`
--

LOCK TABLES `user_product` WRITE;
/*!40000 ALTER TABLE `user_product` DISABLE KEYS */;
INSERT INTO `user_product` VALUES (1,4,1),(2,1,2),(3,2,3);
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

-- Dump completed on 2022-12-23 19:15:44
