CREATE DATABASE  IF NOT EXISTS `pi_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `pi_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pi_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(250) NOT NULL,
  `mail` varchar(250) NOT NULL,
  `contrasenia` varchar(250) NOT NULL,
  `dni` int(11) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `fotoPerfil` varchar(250) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (15,'pruebalogin','pruebalogin@login.com','$2a$10$eMz6EFLr1/YtSdtjJ2qfOOONX85w9/PXFM4/L6/UwCNSjxMMITuV6',46647592,'2024-06-03','https://i.pinimg.com/736x/b7/35/8c/b7358cda72f4d4f32fb11a98fed5d8f0.jpg','2024-06-13 00:21:15','2024-06-23 18:07:04','2024-06-13 00:21:15'),(17,'usuario','usuario2@gmail.com','$2a$10$eMkZkRRLopr6AqmtrHB8xenJa6YUwezxj4OPimq2GNQ6bAE7o6E3G',16161616,'2024-06-03','https://laseleccionargentina.com/wp-content/uploads/2023/05/La-Seleccion-Argentina-Julian-Alvarez-768x922.png','2024-06-21 14:10:37','2024-06-23 18:09:45','2024-06-21 14:10:37'),(18,'holaa','hola@hola.com','$2a$10$p3nqesaZfZrerruAy2roQOMzcubJllp/KKfX1L1LEJY7zXSR2Lf.G',8199494,'2024-06-04','https://tmssl.akamaized.net/images/foto/galerie/cristiano-ronaldo-manchester-united-1636635187-74572.jpg?lm=1636635200','2024-06-23 16:13:53','2024-06-24 17:57:59','2024-06-23 16:13:53');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 22:55:31
