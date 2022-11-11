-- MySQL dump 10.13  Distrib 5.7.38, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.7.38-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrador` (
  `ID` int(5) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Administrador@prueba.com','8ht1710gs'),(2,'Administrador2@prueba.uy','gd17dg18');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arbitro`
--

DROP TABLE IF EXISTS `arbitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arbitro` (
  `ID` int(5) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arbitro`
--

LOCK TABLES `arbitro` WRITE;
/*!40000 ALTER TABLE `arbitro` DISABLE KEYS */;
INSERT INTO `arbitro` VALUES (1,'Pitana'),(2,'Collina');
/*!40000 ALTER TABLE `arbitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atienee`
--

DROP TABLE IF EXISTS `atienee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `atienee` (
  `IDEvento` int(5) NOT NULL,
  `IDArbitro` int(5) NOT NULL,
  PRIMARY KEY (`IDEvento`,`IDArbitro`),
  KEY `IDArbitro` (`IDArbitro`),
  CONSTRAINT `atienee_ibfk_1` FOREIGN KEY (`IDEvento`) REFERENCES `evento` (`ID`),
  CONSTRAINT `atienee_ibfk_2` FOREIGN KEY (`IDArbitro`) REFERENCES `arbitro` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atienee`
--

LOCK TABLES `atienee` WRITE;
/*!40000 ALTER TABLE `atienee` DISABLE KEYS */;
/*!40000 ALTER TABLE `atienee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccontienee`
--

DROP TABLE IF EXISTS `ccontienee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccontienee` (
  `IDCompetencia` int(5) NOT NULL,
  `IDEvento` int(5) NOT NULL,
  PRIMARY KEY (`IDCompetencia`,`IDEvento`),
  KEY `IDEvento` (`IDEvento`),
  CONSTRAINT `ccontienee_ibfk_1` FOREIGN KEY (`IDCompetencia`) REFERENCES `competencia` (`ID`),
  CONSTRAINT `ccontienee_ibfk_2` FOREIGN KEY (`IDEvento`) REFERENCES `evento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccontienee`
--

LOCK TABLES `ccontienee` WRITE;
/*!40000 ALTER TABLE `ccontienee` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccontienee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competencia`
--

DROP TABLE IF EXISTS `competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competencia` (
  `ID` int(5) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Lugar` varchar(25) DEFAULT NULL,
  `Tipo` varchar(25) DEFAULT NULL,
  `Imagen` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competencia`
--

LOCK TABLES `competencia` WRITE;
/*!40000 ALTER TABLE `competencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consagracionesd`
--

DROP TABLE IF EXISTS `consagracionesd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consagracionesd` (
  `IDDeportista` int(5) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `year` int(10) NOT NULL,
  PRIMARY KEY (`IDDeportista`),
  CONSTRAINT `consagracionesd_ibfk_1` FOREIGN KEY (`IDDeportista`) REFERENCES `deportista` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consagracionesd`
--

LOCK TABLES `consagracionesd` WRITE;
/*!40000 ALTER TABLE `consagracionesd` DISABLE KEYS */;
/*!40000 ALTER TABLE `consagracionesd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consagracionese`
--

DROP TABLE IF EXISTS `consagracionese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consagracionese` (
  `IDEquipo` int(5) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Year` int(5) DEFAULT NULL,
  PRIMARY KEY (`IDEquipo`),
  CONSTRAINT `consagracionese_ibfk_1` FOREIGN KEY (`IDEquipo`) REFERENCES `equipo` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consagracionese`
--

LOCK TABLES `consagracionese` WRITE;
/*!40000 ALTER TABLE `consagracionese` DISABLE KEYS */;
/*!40000 ALTER TABLE `consagracionese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deporte`
--

DROP TABLE IF EXISTS `deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deporte` (
  `ID` int(5) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Imagen` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deporte`
--

LOCK TABLES `deporte` WRITE;
/*!40000 ALTER TABLE `deporte` DISABLE KEYS */;
INSERT INTO `deporte` VALUES (1,'Fubol','INF/img/temp/fubol.png'),(2,'Tenis','INF/img/temp/Tenis.png'),(3,'CSGO','INF/img/temp/CSGO.png');
/*!40000 ALTER TABLE `deporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deportista`
--

DROP TABLE IF EXISTS `deportista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deportista` (
  `IDParte` int(5) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Foto` varchar(25) NOT NULL,
  `FechaDeNacimiento` date NOT NULL,
  PRIMARY KEY (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deportista`
--

LOCK TABLES `deportista` WRITE;
/*!40000 ALTER TABLE `deportista` DISABLE KEYS */;
INSERT INTO `deportista` VALUES (1,'Messi','zz/mm/ooo','1989-08-02'),(2,'Maradona','zz/ggg/b','2009-01-01');
/*!40000 ALTER TABLE `deportista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dintegrae`
--

DROP TABLE IF EXISTS `dintegrae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dintegrae` (
  `IDDeportista` int(5) NOT NULL,
  `IDEquipo` int(5) NOT NULL,
  PRIMARY KEY (`IDDeportista`,`IDEquipo`),
  KEY `IDEquipo` (`IDEquipo`),
  CONSTRAINT `dintegrae_ibfk_1` FOREIGN KEY (`IDDeportista`) REFERENCES `deportista` (`IDParte`),
  CONSTRAINT `dintegrae_ibfk_2` FOREIGN KEY (`IDEquipo`) REFERENCES `equipo` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dintegrae`
--

LOCK TABLES `dintegrae` WRITE;
/*!40000 ALTER TABLE `dintegrae` DISABLE KEYS */;
/*!40000 ALTER TABLE `dintegrae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dpracticad`
--

DROP TABLE IF EXISTS `dpracticad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dpracticad` (
  `IDDeportista` int(5) NOT NULL,
  `IDDeporte` int(5) NOT NULL,
  PRIMARY KEY (`IDDeportista`),
  CONSTRAINT `dpracticad_ibfk_1` FOREIGN KEY (`IDDeportista`) REFERENCES `deportista` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dpracticad`
--

LOCK TABLES `dpracticad` WRITE;
/*!40000 ALTER TABLE `dpracticad` DISABLE KEYS */;
/*!40000 ALTER TABLE `dpracticad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epracticadeporte`
--

DROP TABLE IF EXISTS `epracticadeporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epracticadeporte` (
  `IDDeporte` int(5) NOT NULL,
  `IDEquipo` int(5) NOT NULL,
  PRIMARY KEY (`IDDeporte`,`IDEquipo`),
  KEY `IDEquipo` (`IDEquipo`),
  CONSTRAINT `epracticadeporte_ibfk_1` FOREIGN KEY (`IDDeporte`) REFERENCES `deporte` (`ID`),
  CONSTRAINT `epracticadeporte_ibfk_2` FOREIGN KEY (`IDEquipo`) REFERENCES `equipo` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epracticadeporte`
--

LOCK TABLES `epracticadeporte` WRITE;
/*!40000 ALTER TABLE `epracticadeporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `epracticadeporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipo` (
  `IDParte` int(5) NOT NULL,
  `Logo` varchar(25) NOT NULL,
  `FechaDeCreacion` date NOT NULL,
  PRIMARY KEY (`IDParte`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`IDParte`) REFERENCES `parte` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `ID` int(5) NOT NULL,
  `Hora` time NOT NULL,
  `Fecha` date NOT NULL,
  `Lugar` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (1,'20:00:00','2022-11-11','Mercadito'),(2,'13:30:00','2023-01-01','Luna Park');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parte`
--

DROP TABLE IF EXISTS `parte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parte` (
  `ID` int(5) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Pais` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `parte_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `deportista` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte`
--

LOCK TABLES `parte` WRITE;
/*!40000 ALTER TABLE `parte` DISABLE KEYS */;
/*!40000 ALTER TABLE `parte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pparticipae`
--

DROP TABLE IF EXISTS `pparticipae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pparticipae` (
  `IDParte` int(5) NOT NULL,
  `IDEvento` int(5) NOT NULL,
  PRIMARY KEY (`IDParte`,`IDEvento`),
  KEY `IDEvento` (`IDEvento`),
  CONSTRAINT `pparticipae_ibfk_1` FOREIGN KEY (`IDParte`) REFERENCES `parte` (`ID`),
  CONSTRAINT `pparticipae_ibfk_2` FOREIGN KEY (`IDEvento`) REFERENCES `evento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pparticipae`
--

LOCK TABLES `pparticipae` WRITE;
/*!40000 ALTER TABLE `pparticipae` DISABLE KEYS */;
/*!40000 ALTER TABLE `pparticipae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidad`
--

DROP TABLE IF EXISTS `publicidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicidad` (
  `ID` int(5) NOT NULL,
  `Grupo` varchar(25) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Imagen` varchar(255) DEFAULT NULL,
  `Tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidad`
--

LOCK TABLES `publicidad` WRITE;
/*!40000 ALTER TABLE `publicidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado`
--

DROP TABLE IF EXISTS `resultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resultado` (
  `IDParte` int(5) NOT NULL,
  `IDEvento` int(5) NOT NULL,
  `Tiempo` int(25) NOT NULL,
  `Puntaje` int(255) NOT NULL,
  PRIMARY KEY (`IDParte`,`IDEvento`),
  KEY `IDEvento` (`IDEvento`),
  CONSTRAINT `resultado_ibfk_1` FOREIGN KEY (`IDParte`) REFERENCES `pparticipae` (`IDParte`),
  CONSTRAINT `resultado_ibfk_2` FOREIGN KEY (`IDEvento`) REFERENCES `evento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado`
--

LOCK TABLES `resultado` WRITE;
/*!40000 ALTER TABLE `resultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uconsumep`
--

DROP TABLE IF EXISTS `uconsumep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uconsumep` (
  `IDUsuario` int(5) NOT NULL,
  `IDPublicidad` int(5) NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDPublicidad`),
  KEY `IDPublicidad` (`IDPublicidad`),
  CONSTRAINT `uconsumep_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `uconsumep_ibfk_2` FOREIGN KEY (`IDPublicidad`) REFERENCES `publicidad` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uconsumep`
--

LOCK TABLES `uconsumep` WRITE;
/*!40000 ALTER TABLE `uconsumep` DISABLE KEYS */;
/*!40000 ALTER TABLE `uconsumep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `ID` int(5) NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `Telefono` int(35) NOT NULL,
  `EsPremium` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'user1','user@email.com','sgd19dv',93764074,1),(2,'user','user@user.com','user',94140231,0),(3,'name','name@correo.com','gsiug8172vhgs1',91532742,0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ususcribeac`
--

DROP TABLE IF EXISTS `ususcribeac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ususcribeac` (
  `IDUsuario` int(5) NOT NULL,
  `IDCompetencia` int(5) NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDCompetencia`),
  KEY `IDCompetencia` (`IDCompetencia`),
  CONSTRAINT `ususcribeac_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `ususcribeac_ibfk_2` FOREIGN KEY (`IDCompetencia`) REFERENCES `competencia` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ususcribeac`
--

LOCK TABLES `ususcribeac` WRITE;
/*!40000 ALTER TABLE `ususcribeac` DISABLE KEYS */;
/*!40000 ALTER TABLE `ususcribeac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ususcribead`
--

DROP TABLE IF EXISTS `ususcribead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ususcribead` (
  `IDUsuario` int(5) NOT NULL,
  `IDDeportista` int(5) NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDDeportista`),
  KEY `IDDeportista` (`IDDeportista`),
  CONSTRAINT `ususcribead_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `ususcribead_ibfk_2` FOREIGN KEY (`IDDeportista`) REFERENCES `deportista` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ususcribead`
--

LOCK TABLES `ususcribead` WRITE;
/*!40000 ALTER TABLE `ususcribead` DISABLE KEYS */;
/*!40000 ALTER TABLE `ususcribead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ususcribeae`
--

DROP TABLE IF EXISTS `ususcribeae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ususcribeae` (
  `IDUsuario` int(5) NOT NULL,
  `IDEquipo` int(5) NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDEquipo`),
  KEY `IDEquipo` (`IDEquipo`),
  CONSTRAINT `ususcribeae_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `ususcribeae_ibfk_2` FOREIGN KEY (`IDEquipo`) REFERENCES `equipo` (`IDParte`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ususcribeae`
--

LOCK TABLES `ususcribeae` WRITE;
/*!40000 ALTER TABLE `ususcribeae` DISABLE KEYS */;
/*!40000 ALTER TABLE `ususcribeae` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ususcribeaev`
--

DROP TABLE IF EXISTS `ususcribeaev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ususcribeaev` (
  `IDUsuario` int(5) NOT NULL,
  `IDEvento` int(5) NOT NULL,
  PRIMARY KEY (`IDUsuario`,`IDEvento`),
  KEY `IDEvento` (`IDEvento`),
  CONSTRAINT `ususcribeaev_ibfk_1` FOREIGN KEY (`IDUsuario`) REFERENCES `usuario` (`ID`),
  CONSTRAINT `ususcribeaev_ibfk_2` FOREIGN KEY (`IDEvento`) REFERENCES `evento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ususcribeaev`
--

LOCK TABLES `ususcribeaev` WRITE;
/*!40000 ALTER TABLE `ususcribeaev` DISABLE KEYS */;
/*!40000 ALTER TABLE `ususcribeaev` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-16 14:59:02
