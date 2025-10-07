-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: jewelry_workshop
-- ------------------------------------------------------
-- Server version  8.0.43

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

CREATE DATABASE IF NOT EXISTS `jewelry_workshop`
  DEFAULT CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;
USE `jewelry_workshop`;

--
-- Table structure for table admin
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin`
VALUES
(1,'99999999','Director General','Ricardo Alberto','ricardo.director@joyeria.com','3009999999',1),
(2,'10101010','Supervisora Taller','Martha Lucía','martha.supervisora@joyeria.com','3010101010',1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table asesor
--

DROP TABLE IF EXISTS `asesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asesor` (
  `id_asesor` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_asesor`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `asesor` WRITE;
/*!40000 ALTER TABLE `asesor` DISABLE KEYS */;
INSERT INTO `asesor`
VALUES
(1,'11111111','Sánchez Pérez','Laura Patricia','laura.sanchez@joyeria.com','3001111111',1),
(2,'22222222','Gómez Rivera','Juan Carlos','juan.gomez@joyeria.com','3002222222',1),
(3,'33333333','Rojas Mendez','Patricia Elena','patricia.rojas@joyeria.com','3003333333',1),
(4,'44444444','Delgado Torres','Miguel Ángel','miguel.delgado@joyeria.com','3004444444',0);
/*!40000 ALTER TABLE `asesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table cliente
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente`
VALUES
(1,'1234567890','García Rodríguez','María Isabel','maria.garcia@email.com','3201234567'),
(2,'9876543210','López Martínez','Carlos Eduardo','carlos.lopez@email.com','3159876543'),
(3,'5555555555','Hernández Silva','Ana Lucía','ana.hernandez@email.com','3145555555'),
(4,'1111111111','Ramírez Castro','Diego Alejandro','diego.ramirez@email.com','3111111111'),
(5,'2222222222','Torres Vega','Valentina','valentina.torres@email.com','3182222222'),
(6,'3333333333','Morales Jiménez','Roberto','roberto.morales@email.com','3173333333'),
(7,'4444444444','Vargas Ospina','Camila Andrea','camila.vargas@email.com','3124444444'),
(8,'6666666666','Castillo Ruiz','Andrés Felipe','andres.castillo@email.com','3166666666');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table pedido
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_asesor` int NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_id_cliente` (`id_cliente`),
  KEY `fk_id_asesor` (`id_asesor`),
  CONSTRAINT `fk_id_asesor` FOREIGN KEY (`id_asesor`) REFERENCES `asesor` (`id_asesor`),
  CONSTRAINT `fk_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `chk_pedido_estado` CHECK (`estado` IN ('Creado','Cotizado','Aprobado','Fabricacion','Entregado','Cancelado'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido`
VALUES
(1,1,1,'Anillo de compromiso en oro blanco con diamante de 1 quilate','Creado','2025-09-04 01:03:28'),
(2,2,2,'Pulsera personalizada con iniciales','Cotizado','2025-09-04 01:03:28'),
(3,3,3,'Collar en plata con incrustaciones de esmeralda','Aprobado','2025-09-04 01:03:28'),
(4,4,1,'Aretes de oro amarillo con perlas','Fabricacion','2025-09-04 01:03:28'),
(5,5,4,'Reloj de bolsillo en plata grabado','Entregado','2025-09-04 01:03:28');
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table diseno
--

DROP TABLE IF EXISTS `diseno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diseno` (
  `id_diseno` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `version` int NOT NULL,
  `archivo_url` varchar(100) NOT NULL,
  `notas` text,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_diseno`),
  KEY `fk_id_pedido` (`id_pedido`),
  CONSTRAINT `fk_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `diseno` WRITE;
/*!40000 ALTER TABLE `diseno` DISABLE KEYS */;
INSERT INTO `diseno`
VALUES
(1,1,1,'disenos/anillo_v1.png','Diseño inicial del anillo, falta definir medidas exactas','2025-09-04 01:13:42'),
(2,2,1,'disenos/pulsera_v1.png','Pulsera con diseño minimalista','2025-09-04 01:13:42'),
(3,3,1,'disenos/collar_v1.png','Collar inspirado en modelos antiguos','2025-09-04 01:13:42'),
(4,3,2,'disenos/collar_v2.png','Versión mejorada con mayor detalle en las incrustaciones','2025-09-04 01:13:42'),
(5,4,1,'disenos/aretes_v1.png','Aretes redondos clásicos','2025-09-04 01:13:42'),
(6,5,1,'disenos/anillo_v1.png','Diseño inicial del anillo, falta definir medidas exactas','2025-09-04 01:20:22');
/*!40000 ALTER TABLE `diseno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table cotizacion
--

DROP TABLE IF EXISTS `cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotizacion` (
  `id_cotizacion` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_diseno` int NOT NULL,
  `monto` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cotizacion`),
  KEY `fk_cotizacion_id_pedido` (`id_pedido`),
  KEY `fk_cotizacion_id_diseno` (`id_diseno`),
  CONSTRAINT `fk_cotizacion_id_diseno` FOREIGN KEY (`id_diseno`) REFERENCES `diseno` (`id_diseno`),
  CONSTRAINT `fk_cotizacion_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `chk_cotizacion_estado` CHECK (`estado` IN ('Enviada','Aprobada','Rechazada'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cotizacion` WRITE;
/*!40000 ALTER TABLE `cotizacion` DISABLE KEYS */;
INSERT INTO `cotizacion`
VALUES
(1,1,1,3500000,'Enviada','2025-09-04 01:21:04'),
(2,2,2,800000,'Aprobada','2025-09-04 01:21:04'),
(3,3,3,2200000,'Rechazada','2025-09-04 01:21:04'),
(4,3,4,2500000,'Enviada','2025-09-04 01:21:04'),
(5,4,5,1200000,'Aprobada','2025-09-04 01:21:04');
/*!40000 ALTER TABLE `cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table maestro
--

DROP TABLE IF EXISTS `maestro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maestro` (
  `id_maestro` int NOT NULL AUTO_INCREMENT,
  `cedula` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_maestro`),
  UNIQUE KEY `cedula` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `maestro` WRITE;
/*!40000 ALTER TABLE `maestro` DISABLE KEYS */;
INSERT INTO `maestro`
VALUES
(1,'55555555','Artesano Goldsmith','Pedro Antonio','pedro.artesano@joyeria.com','3005555555',1),
(2,'66666666','Orfebre Maestro','Carmen Rosa','carmen.orfebre@joyeria.com','3006666666',1),
(3,'77777777','Platero Experto','José Luis','jose.platero@joyeria.com','3007777777',1),
(4,'88888888','Diamantista Pro','Sofía Isabel','sofia.diamantista@joyeria.com','3008888888',1);
/*!40000 ALTER TABLE `maestro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table fabricacion
--

DROP TABLE IF EXISTS `fabricacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricacion` (
  `id_fabricacion` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `id_maestro` int NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_fabricacion`),
  KEY `fk_fabricacion_id_pedido` (`id_pedido`),
  KEY `fk_fabricacion_id_maestro` (`id_maestro`),
  CONSTRAINT `fk_fabricacion_id_maestro` FOREIGN KEY (`id_maestro`) REFERENCES `maestro` (`id_maestro`),
  CONSTRAINT `fk_fabricacion_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `chk_fabricacion_estado` CHECK (`estado` IN ('Planificado','En Proceso','Terminado'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `fabricacion` WRITE;
/*!40000 ALTER TABLE `fabricacion` DISABLE KEYS */;
INSERT INTO `fabricacion`
VALUES
(1,3,1,'Planificado','2025-08-01','2025-08-10','2025-09-04 01:21:36'),
(2,4,2,'En Proceso','2025-08-05','2025-08-20','2025-09-04 01:21:36'),
(3,5,3,'Terminado','2025-07-01','2025-07-15','2025-09-04 01:21:36');
/*!40000 ALTER TABLE `fabricacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table entrega
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id_entrega` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int NOT NULL,
  `responsable_entrega` int NOT NULL,
  `fecha_entrega` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `observaciones` text NOT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `fk_entrega_id_pedido` (`id_pedido`),
  KEY `fk_responsable_entrega` (`responsable_entrega`),
  CONSTRAINT `fk_entrega_id_pedido` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `fk_responsable_entrega` FOREIGN KEY (`responsable_entrega`) REFERENCES `asesor` (`id_asesor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega`
VALUES
(1,5,2,'2025-09-04 01:21:54','Entregado al cliente en tienda principal, cliente satisfecho'),
(2,4,1,'2025-09-04 01:21:54','Entrega parcial, pendiente ajuste en aretes'),
(3,2,3,'2025-09-04 01:21:54','Pedido retirado por cliente en sede secundaria');
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Finalización dump
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed 2025-10-02 11:02:37
