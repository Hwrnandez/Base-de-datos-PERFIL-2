-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_libroexpress_rodas_andres
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_clientes`
--

DROP TABLE IF EXISTS `tb_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_clientes` (
  `id_cliente` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_cliente` varchar(50) NOT NULL,
  `email_cliente` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clientes`
--

LOCK TABLES `tb_clientes` WRITE;
/*!40000 ALTER TABLE `tb_clientes` DISABLE KEYS */;
INSERT INTO `tb_clientes` VALUES ('054a1f72-d695-11ee-968f-00ff6156afaa','pacheco','mapache@gmail.com','1223-8966'),('054b1bf1-d695-11ee-968f-00ff6156afaa','rodas','rodas@gmail.com','1267-8966'),('054c23de-d695-11ee-968f-00ff6156afaa','andy','andy@gmail.com','1262-8966'),('054d043e-d695-11ee-968f-00ff6156afaa','dom','dom@gmail.com','1220-8966'),('054de4a5-d695-11ee-968f-00ff6156afaa','joel','joel@gmail.com','1832-8966'),('054ed555-d695-11ee-968f-00ff6156afaa','villegas','villegas@gmail.com','1245-8566'),('054ffced-d695-11ee-968f-00ff6156afaa','fernado','fernado@gmail.com','1245-8916'),('0550f32b-d695-11ee-968f-00ff6156afaa','dylan','dylan@gmail.com','1245-8968'),('0551eba5-d695-11ee-968f-00ff6156afaa','lennyn','lennyn@gmail.com','3561-8966'),('0552b452-d695-11ee-968f-00ff6156afaa','josue','josue@gmail.com','6623-8966'),('055397fa-d695-11ee-968f-00ff6156afaa','juan','juan@gmail.com','1245-2425'),('05543b38-d695-11ee-968f-00ff6156afaa','pablo','pablo@gmail.com','1245-'),('0554f907-d695-11ee-968f-00ff6156afaa','guillermo','guillermo@gmail.com','1245-3453'),('0555c666-d695-11ee-968f-00ff6156afaa','gerardo','gerardo@gmail.com','1245-34543'),('05567d00-d695-11ee-968f-00ff6156afaa','burgos','burgos@gmail.com','1245-89665');
/*!40000 ALTER TABLE `tb_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_detalles_prestamos`
--

DROP TABLE IF EXISTS `tb_detalles_prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_detalles_prestamos` (
  `id_detalle_prestamo` varchar(36) NOT NULL DEFAULT uuid(),
  `id_prestamo` varchar(36) DEFAULT NULL,
  `id_libro` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id_detalle_prestamo`),
  KEY `fk_prestamo_detalle` (`id_prestamo`),
  KEY `fk_prestamo_libro` (`id_libro`),
  CONSTRAINT `fk_prestamo_detalle` FOREIGN KEY (`id_prestamo`) REFERENCES `tb_prestamos` (`id_prestamo`),
  CONSTRAINT `fk_prestamo_libro` FOREIGN KEY (`id_libro`) REFERENCES `tb_libros` (`id_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_detalles_prestamos`
--

LOCK TABLES `tb_detalles_prestamos` WRITE;
/*!40000 ALTER TABLE `tb_detalles_prestamos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_detalles_prestamos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_generos_libros`
--

DROP TABLE IF EXISTS `tb_generos_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_generos_libros` (
  `id_genero_libro` varchar(36) NOT NULL DEFAULT uuid(),
  `nombre_genero_libro` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_genero_libro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_generos_libros`
--

LOCK TABLES `tb_generos_libros` WRITE;
/*!40000 ALTER TABLE `tb_generos_libros` DISABLE KEYS */;
INSERT INTO `tb_generos_libros` VALUES ('119f0755-d695-11ee-968f-00ff6156afaa','drama'),('11a2ee71-d695-11ee-968f-00ff6156afaa','accion'),('11a3dffa-d695-11ee-968f-00ff6156afaa','novela'),('11a4ba4b-d695-11ee-968f-00ff6156afaa','bibia'),('11a5f070-d695-11ee-968f-00ff6156afaa','kDrama'),('11a6d675-d695-11ee-968f-00ff6156afaa','anime'),('11a7aa02-d695-11ee-968f-00ff6156afaa','chime'),('11a89c3b-d695-11ee-968f-00ff6156afaa','comedia'),('11a93a8d-d695-11ee-968f-00ff6156afaa','comedia romantica'),('11aa0eba-d695-11ee-968f-00ff6156afaa','manga'),('11aac6aa-d695-11ee-968f-00ff6156afaa','catolicos'),('11ab6a74-d695-11ee-968f-00ff6156afaa','cristianos'),('11ac1586-d695-11ee-968f-00ff6156afaa','cultara'),('11acb190-d695-11ee-968f-00ff6156afaa','educion'),('11ad5f98-d695-11ee-968f-00ff6156afaa','drama turco');
/*!40000 ALTER TABLE `tb_generos_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_libros`
--

DROP TABLE IF EXISTS `tb_libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_libros` (
  `id_libro` varchar(36) NOT NULL DEFAULT uuid(),
  `titulo_libro` varchar(50) NOT NULL,
  `anio_publicacion` int(11) NOT NULL,
  `id_genero_libro` varchar(36) DEFAULT NULL,
  `estado` enum('Disponible','Prestado') DEFAULT NULL,
  PRIMARY KEY (`id_libro`),
  KEY `fk_libro_genero` (`id_genero_libro`),
  CONSTRAINT `fk_libro_genero` FOREIGN KEY (`id_genero_libro`) REFERENCES `tb_generos_libros` (`id_genero_libro`),
  CONSTRAINT `chk_anio_publicacion` CHECK (`anio_publicacion` > 0 and `anio_publicacion` < 2025)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_libros`
--

LOCK TABLES `tb_libros` WRITE;
/*!40000 ALTER TABLE `tb_libros` DISABLE KEYS */;
INSERT INTO `tb_libros` VALUES ('8ef74f24-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8ef83710-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8ef8d4a7-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8ef923d9-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8ef97f55-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8ef9ff67-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efa51b9-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efabe4b-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efafd00-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efbab84-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efbf261-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('8efc2dde-d696-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible'),('969dc6c7-d697-11ee-968f-00ff6156afaa','3 cerditos',2002,'11a2ee71-d695-11ee-968f-00ff6156afaa','Disponible'),('969f31e3-d697-11ee-968f-00ff6156afaa','Potter2',2003,'11a3dffa-d695-11ee-968f-00ff6156afaa','Disponible'),('969fe4dd-d697-11ee-968f-00ff6156afaa','Potter3',2004,NULL,'Prestado'),('96a0bb72-d697-11ee-968f-00ff6156afaa','Potter4',2005,'11a5f070-d695-11ee-968f-00ff6156afaa','Disponible'),('96a169fc-d697-11ee-968f-00ff6156afaa','Potter5',2006,'11a5f070-d695-11ee-968f-00ff6156afaa','Prestado'),('96a25c25-d697-11ee-968f-00ff6156afaa','Potter6',2007,'11a6d675-d695-11ee-968f-00ff6156afaa','Disponible'),('afa7f0b9-d697-11ee-968f-00ff6156afaa','romeo y julieta8',2008,'11a93a8d-d695-11ee-968f-00ff6156afaa','Disponible'),('b5b55aef-d697-11ee-968f-00ff6156afaa','caperucita la tiene roja',2005,'11a89c3b-d695-11ee-968f-00ff6156afaa','Prestado'),('b5b6e9e4-d697-11ee-968f-00ff6156afaa','ciencias naturales',2004,'11aac6aa-d695-11ee-968f-00ff6156afaa','Disponible'),('b5b81e92-d697-11ee-968f-00ff6156afaa','matematicas',2012,'11ac1586-d695-11ee-968f-00ff6156afaa','Disponible'),('b5b9c07e-d697-11ee-968f-00ff6156afaa','el gato negro',2014,'11ac1586-d695-11ee-968f-00ff6156afaa','Disponible'),('b5ba420d-d697-11ee-968f-00ff6156afaa','los 7 enanitos',1800,'11ac1586-d695-11ee-968f-00ff6156afaa','Prestado'),('b5bafe5d-d697-11ee-968f-00ff6156afaa','cenicienta',2009,'11ac1586-d695-11ee-968f-00ff6156afaa','Prestado'),('b5bb89c0-d697-11ee-968f-00ff6156afaa','winnie poo',2016,'11ac1586-d695-11ee-968f-00ff6156afaa','Disponible'),('c48a8001-d695-11ee-968f-00ff6156afaa','Potter',2000,'119f0755-d695-11ee-968f-00ff6156afaa','Disponible');
/*!40000 ALTER TABLE `tb_libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_prestamos`
--

DROP TABLE IF EXISTS `tb_prestamos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_prestamos` (
  `id_prestamo` varchar(36) NOT NULL DEFAULT uuid(),
  `id_cliente` varchar(36) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  `estado` enum('Activo','inactivo') DEFAULT NULL,
  PRIMARY KEY (`id_prestamo`),
  KEY `fk_prestamos_cliente` (`id_cliente`),
  CONSTRAINT `fk_prestamos_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_prestamos`
--

LOCK TABLES `tb_prestamos` WRITE;
/*!40000 ALTER TABLE `tb_prestamos` DISABLE KEYS */;
INSERT INTO `tb_prestamos` VALUES ('1aaabdb6-d695-11ee-968f-00ff6156afaa','054a1f72-d695-11ee-968f-00ff6156afaa','2024-01-01','2024-01-15','Activo'),('1aae01b1-d695-11ee-968f-00ff6156afaa','054b1bf1-d695-11ee-968f-00ff6156afaa','2024-01-02','2024-01-08','Activo'),('1ab1c716-d695-11ee-968f-00ff6156afaa','054c23de-d695-11ee-968f-00ff6156afaa','2024-01-15','2024-01-30','Activo'),('1ab2a581-d695-11ee-968f-00ff6156afaa','054d043e-d695-11ee-968f-00ff6156afaa','2024-01-03','2024-01-15','Activo'),('1ab34ea4-d695-11ee-968f-00ff6156afaa','054de4a5-d695-11ee-968f-00ff6156afaa','2024-01-05','2024-01-30','Activo'),('1ab3e2b5-d695-11ee-968f-00ff6156afaa','054ed555-d695-11ee-968f-00ff6156afaa','2024-01-06','2024-01-30','Activo'),('1ab4ab10-d695-11ee-968f-00ff6156afaa','054ffced-d695-11ee-968f-00ff6156afaa','2024-01-19','2024-01-30','Activo'),('1ab553a1-d695-11ee-968f-00ff6156afaa','0550f32b-d695-11ee-968f-00ff6156afaa','2024-02-01','2024-02-15','Activo'),('1ab5d8b7-d695-11ee-968f-00ff6156afaa','0551eba5-d695-11ee-968f-00ff6156afaa','2024-02-02','2024-02-15','Activo'),('1ab67b3e-d695-11ee-968f-00ff6156afaa','0552b452-d695-11ee-968f-00ff6156afaa','2024-02-03','2024-02-15','Activo'),('1ab7390d-d695-11ee-968f-00ff6156afaa','055397fa-d695-11ee-968f-00ff6156afaa','2024-02-04','2024-02-15','Activo'),('1ab7cdb3-d695-11ee-968f-00ff6156afaa','05543b38-d695-11ee-968f-00ff6156afaa','2024-02-05','2024-02-15','Activo'),('1ab8889a-d695-11ee-968f-00ff6156afaa','0554f907-d695-11ee-968f-00ff6156afaa','2024-02-06','2024-02-15','Activo'),('1ab99a64-d695-11ee-968f-00ff6156afaa','0555c666-d695-11ee-968f-00ff6156afaa','2024-02-07','2024-02-15','Activo'),('1aba6206-d695-11ee-968f-00ff6156afaa','05567d00-d695-11ee-968f-00ff6156afaa','2024-02-08','2024-02-15','Activo');
/*!40000 ALTER TABLE `tb_prestamos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER actualizar_existencias
AFTER INSERT ON tb_prestamos
FOR EACH ROW
BEGIN
UPDATE tb_libros
SET estado = 'Prestado'
WHERE id_libro = tb_detalles_prestamos.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-28 19:28:42
