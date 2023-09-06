CREATE DATABASE  IF NOT EXISTS `colegio` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `colegio`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: colegio
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `idAlumnos` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) COLLATE utf8mb3_spanish_ci NOT NULL,
  `apellido` varchar(60) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`idAlumnos`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` VALUES (1,'Juan','Perez');
INSERT INTO `alumnos` VALUES (2,'Pedro','Rodriguez');
INSERT INTO `alumnos` VALUES (3,'Lucas','Velandia');

--
-- Table structure for table `calificaciones`
--

DROP TABLE IF EXISTS `calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones` (
  `idCalificaciones` int NOT NULL AUTO_INCREMENT,
  `idAlumnos` int NOT NULL,
  `idMaterias` int NOT NULL,
  `nota` float NOT NULL,
  `bimestre` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idCalificaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones`
--

INSERT INTO `calificaciones` VALUES (1,1,1,3.2,1);
INSERT INTO `calificaciones` VALUES (2,1,2,5,1);
INSERT INTO `calificaciones` VALUES (3,1,3,4,1);
INSERT INTO `calificaciones` VALUES (4,2,1,1.7,1);
INSERT INTO `calificaciones` VALUES (5,2,2,4.5,1);
INSERT INTO `calificaciones` VALUES (6,2,3,3.1,1);
INSERT INTO `calificaciones` VALUES (7,3,1,4,1);
INSERT INTO `calificaciones` VALUES (8,3,2,5,1);
INSERT INTO `calificaciones` VALUES (9,3,3,1,1);

--
-- Table structure for table `datos_personales`
--

DROP TABLE IF EXISTS `datos_personales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_personales` (
  `idDatos_Personales` int NOT NULL AUTO_INCREMENT,
  `idAlumnos` int NOT NULL,
  `direccion` varchar(200) COLLATE utf8mb3_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL,
  `acudiente` varchar(200) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`idDatos_Personales`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_personales`
--

INSERT INTO `datos_personales` VALUES (1,1,'Calle 198','3005454','Maria Forero');
INSERT INTO `datos_personales` VALUES (2,2,'Carrera 28 # 80 - 35','2704162','Bernardo Garcia');
INSERT INTO `datos_personales` VALUES (3,3,'Transversal 50 - 35 int 20 bl 3','315894565','Jose Garcia');

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `idMaterias` int NOT NULL AUTO_INCREMENT,
  `nombre_Materia` varchar(45) COLLATE utf8mb3_spanish_ci NOT NULL,
  `profesor` varchar(200) COLLATE utf8mb3_spanish_ci NOT NULL,
  PRIMARY KEY (`idMaterias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

INSERT INTO `materias` VALUES (1,'Matematicas','Rodolfo');
INSERT INTO `materias` VALUES (2,'Geografia','Christian');
INSERT INTO `materias` VALUES (3,'Ingles','Rosario');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
