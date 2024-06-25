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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUsuario` int(10) unsigned NOT NULL,
  `fotoProducto` varchar(250) NOT NULL,
  `nombreProducto` varchar(250) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (23,15,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScPzf3q5lM78wzW_-CC8L27JVSw0qKvANCqg&s','camiseta inter miami','camiseta inter miami rosa','2024-06-20 17:47:34','2024-06-20 17:47:34','2024-06-20 17:47:34'),(25,15,'https://www.stockcenter.com.ar/on/demandware.static/-/Sites-365-dabra-catalog/default/dw43e15003/products/NI_CD4232-456/NI_CD4232-456-1.JPG','camiseta Barcelona','camiceta barca ','2024-06-20 19:55:20','2024-06-20 19:55:20','2024-06-20 19:55:20'),(26,15,'https://tirolibreuy.com/cdn/shop/files/iji.jpg?v=1686774792','camiseta real madrid','real madrid','2024-06-20 19:57:28','2024-06-20 19:57:28','2024-06-20 19:57:28'),(27,15,'https://www.thunderinternacional.com/cdn/shop/files/AenrzpwhHFetcNW.jpg?v=1698159217','Camiseta Borussia dortmund','borussia dortmund','2024-06-20 19:58:30','2024-06-20 19:58:30','2024-06-20 19:58:30'),(28,15,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVTkM0aowQxWRS4cI5KH-yanxGLosowAzqLg&s','camiseta atletico Madrid','atletico Madrid','2024-06-20 19:59:16','2024-06-20 19:59:16','2024-06-20 19:59:16'),(29,15,'https://afaar.vtexassets.com/arquivos/ids/156638/IP8400_FC_eCom.jpg?v=638459540536700000','camiseta argentina','camiseta argentina','2024-06-20 20:00:05','2024-06-20 20:00:05','2024-06-20 20:00:05'),(30,15,'https://tiendariver.vteximg.com.br/arquivos/ids/170836-500-500/HT3679_1.png?v=638412018605830000','camiseta river plate','river','2024-06-20 20:00:45','2024-06-20 20:00:45','2024-06-20 20:00:45'),(31,15,'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/43b3d5dca79c4970ba7d510045536008_9366/Camiseta_Titular_Boca_Juniors_23-24_Azul_IV1922_01_laydown.jpg','Boca Junniors','boca','2024-06-20 20:01:32','2024-06-20 20:01:32','2024-06-20 20:01:32'),(32,15,'https://acdn.mitiendanube.com/stores/002/292/348/products/captura-de-pantalla-2023-06-04-0204341-a278b2e2070e839a5d16858551066499-640-0.jpeg','PSG','psg','2024-06-20 20:02:25','2024-06-20 20:02:25','2024-06-20 20:02:25'),(33,15,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0rAVb8KPesyb8mohZVmzGUI_4UjvcKJAFcg&s','Brasil','Brasil','2024-06-20 20:06:50','2024-06-20 20:06:50','2024-06-20 20:06:50'),(35,15,'https://newsport.vtexassets.com/arquivos/ids/18695432-800-auto?v=638445490112700000&width=800&height=auto&aspect=true','Bayern  Munich','bayern','2024-06-20 20:08:26','2024-06-20 20:08:26','2024-06-20 20:08:26'),(38,17,'https://down-cl.img.susercontent.com/file/cl-11134201-23030-l8cqck6mr9nv74https://down-cl.img.susercontent.com/file/cl-11134201-23030-l8cqck6mr9nv74','AC Milan','AC Milan','2024-06-21 18:46:15','2024-06-21 18:46:15','2024-06-21 18:46:15'),(40,15,'https://www.aisope.com.ar/images/HZQM/NDBH0001_7.jpg','Camiseta Alemania','Camiseta Alemania','2024-06-21 18:56:18','2024-06-21 18:56:18','2024-06-21 18:56:18'),(41,15,'https://acdn.mitiendanube.com/stores/001/312/744/products/qwaresrysrydtuyi1-dd8a28d9122ae57eff16816729453146-640-0.png','Camiseta Italia','Seleccion de italia','2024-06-22 01:00:03','2024-06-22 21:00:54','2024-06-22 01:00:03'),(42,15,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJsAUap-Mc4KzOYXunsOY_HbQoYhtwFfo-1w&s','Manchester City','Camiseta city','2024-06-22 01:42:12','2024-06-22 01:42:12','2024-06-22 01:42:12'),(46,18,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTwVa9PfDmfvzdlmIYJoiq9avvNVsqU1wnqw&shttps://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTwVa9PfDmfvzdlmIYJoiq9avvNVsqU1wnqw&s','España','editado','2024-06-23 20:34:39','2024-06-24 21:26:14','2024-06-23 20:34:39');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 22:55:32
