/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for Linux (x86_64)
--
-- Host: shareddb-l.hosting.stackcp.net    Database: sugarcrm-393902d5
-- ------------------------------------------------------
-- Server version	10.6.18-MariaDB-log

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
-- Table structure for table `CRMH_ENVIO`
--

DROP TABLE IF EXISTS `CRMH_ENVIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMH_ENVIO` (
  `CRMENV_secuencia` decimal(15,0) DEFAULT NULL,
  `CRMENV_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMENV_fechaemisio` varchar(25) DEFAULT NULL,
  `CRMENV_tipo` smallint(6) DEFAULT NULL,
  `CRMENV_destino` varchar(1000) DEFAULT NULL,
  `CRMENV_mensaje` varchar(5000) DEFAULT NULL,
  `CRMENV_asunto` varchar(1000) DEFAULT NULL,
  `CRMENV_fecejec` varchar(25) DEFAULT NULL,
  `CRMENV_operadora` varchar(15) DEFAULT NULL,
  `CRMENV_reintentos` decimal(5,0) DEFAULT NULL,
  `CRMENV_estado` varchar(1) DEFAULT NULL,
  `CRMENV_prioridad` decimal(15,0) DEFAULT NULL,
  `CRMENV_path1` varchar(100) DEFAULT NULL,
  `CRMENV_path2` varchar(100) DEFAULT NULL,
  `CRMENV_usuario` varchar(50) DEFAULT NULL,
  `CRMENV_password` varchar(50) DEFAULT NULL,
  `CRMENV_inicio` varchar(1) DEFAULT NULL,
  `CRMENV_finalizar` varchar(1) DEFAULT NULL,
  `CRMENV_error` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CRMENV_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMH_ENVIO`
--

LOCK TABLES `CRMH_ENVIO` WRITE;
/*!40000 ALTER TABLE `CRMH_ENVIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMH_ENVIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMH_RECIBE`
--

DROP TABLE IF EXISTS `CRMH_RECIBE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMH_RECIBE` (
  `CRMENV_secuencia` decimal(15,0) NOT NULL,
  `CRMENV_origen` varchar(40) DEFAULT NULL,
  `CRMENV_mensaje` varchar(2000) DEFAULT NULL,
  `CRMENV_asunto` varchar(30) DEFAULT NULL,
  `CRMENV_tipo` smallint(6) DEFAULT NULL,
  `CRMENV_fecharecepcio` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMH_RECIBE`
--

LOCK TABLES `CRMH_RECIBE` WRITE;
/*!40000 ALTER TABLE `CRMH_RECIBE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMH_RECIBE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMMR_CLTEXGRUPO`
--

DROP TABLE IF EXISTS `CRMMR_CLTEXGRUPO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMMR_CLTEXGRUPO` (
  `CRMCLI_codigo` decimal(18,0) NOT NULL,
  `CRMGCL_codigo` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMMR_CLTEXGRUPO`
--

LOCK TABLES `CRMMR_CLTEXGRUPO` WRITE;
/*!40000 ALTER TABLE `CRMMR_CLTEXGRUPO` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMMR_CLTEXGRUPO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMMR_GRUPOCLTE`
--

DROP TABLE IF EXISTS `CRMMR_GRUPOCLTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMMR_GRUPOCLTE` (
  `CRMGCL_codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMGCL_descripcio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CRMGCL_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMMR_GRUPOCLTE`
--

LOCK TABLES `CRMMR_GRUPOCLTE` WRITE;
/*!40000 ALTER TABLE `CRMMR_GRUPOCLTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMMR_GRUPOCLTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_CABTAREA`
--

DROP TABLE IF EXISTS `CRMM_CABTAREA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_CABTAREA` (
  `CRMCIA_secuencia` decimal(5,0) NOT NULL,
  `CRMCIA_descripcio` varchar(50) DEFAULT NULL,
  `CRMCIA_fechaemisio` varchar(20) DEFAULT NULL,
  `CRMCIA_tipo` varchar(1) DEFAULT NULL,
  `CRMCIA_horainicio` varchar(8) DEFAULT NULL,
  `CRMCIA_cadacuanto` smallint(6) DEFAULT NULL,
  `CRMCIA_semlunes` varchar(1) DEFAULT NULL,
  `CRMCIA_semmartes` varchar(1) DEFAULT NULL,
  `CRMCIA_semmiercoles` varchar(1) DEFAULT NULL,
  `CRMCIA_semjueves` varchar(1) DEFAULT NULL,
  `CRMCIA_semviernes` varchar(1) DEFAULT NULL,
  `CRMCIA_semsabado` varchar(1) DEFAULT NULL,
  `CRMCIA_semdomingo` varchar(1) DEFAULT NULL,
  `CRMCIA_menenero` varchar(1) DEFAULT NULL,
  `CRMCIA_menfebrero` varchar(1) DEFAULT NULL,
  `CRMCIA_menmarzo` varchar(1) DEFAULT NULL,
  `CRMCIA_menabril` varchar(1) DEFAULT NULL,
  `CRMCIA_menmayo` varchar(1) DEFAULT NULL,
  `CRMCIA_menjunio` varchar(1) DEFAULT NULL,
  `CRMCIA_menjulio` varchar(1) DEFAULT NULL,
  `CRMCIA_menagosto` varchar(1) DEFAULT NULL,
  `CRMCIA_menseptiembre` varchar(1) DEFAULT NULL,
  `CRMCIA_menoctubre` varchar(1) DEFAULT NULL,
  `CRMCIA_mennovimbre` varchar(1) DEFAULT NULL,
  `CRMCIA_mendiciembre` varchar(1) DEFAULT NULL,
  `CRMCIA_iniciaejecucion` varchar(20) DEFAULT NULL,
  `CRMCIA_ultejecucion` varchar(20) DEFAULT NULL,
  `CRMCIA_estado` varchar(2) DEFAULT NULL,
  `CRMCIA_finejecucion` varchar(20) DEFAULT NULL,
  `CRMCIA_horafin` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`CRMCIA_secuencia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_CABTAREA`
--

LOCK TABLES `CRMM_CABTAREA` WRITE;
/*!40000 ALTER TABLE `CRMM_CABTAREA` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_CABTAREA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_CENTRALSMS`
--

DROP TABLE IF EXISTS `CRMM_CENTRALSMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_CENTRALSMS` (
  `CRMSMS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMSMS_OPERADORA` varchar(20) DEFAULT NULL,
  `CRMSMS_CODCENTRAL` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CRMSMS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_CENTRALSMS`
--

LOCK TABLES `CRMM_CENTRALSMS` WRITE;
/*!40000 ALTER TABLE `CRMM_CENTRALSMS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_CENTRALSMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_CLIENTE`
--

DROP TABLE IF EXISTS `CRMM_CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_CLIENTE` (
  `CRMCLT_codigo` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMCLT_relacional` varchar(50) DEFAULT NULL,
  `CRMCLT_adicional1` varchar(50) DEFAULT NULL,
  `CRMCLT_adicional2` varchar(50) DEFAULT NULL,
  `CRMCLT_nombre` varchar(50) DEFAULT NULL,
  `CRMCLT_telefono` varchar(50) DEFAULT NULL,
  `CRMCLT_celular` varchar(50) DEFAULT NULL,
  `CRMCLT_email` varchar(50) DEFAULT NULL,
  `CRMCLT_netsend` varchar(50) DEFAULT NULL,
  `CRMCLT_operadora` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CRMCLT_codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_CLIENTE`
--

LOCK TABLES `CRMM_CLIENTE` WRITE;
/*!40000 ALTER TABLE `CRMM_CLIENTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_CONFIGURACION`
--

DROP TABLE IF EXISTS `CRMM_CONFIGURACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_CONFIGURACION` (
  `id_secuencia` bigint(20) NOT NULL AUTO_INCREMENT,
  `parametro` varchar(20) DEFAULT NULL,
  `valor` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_secuencia`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_CONFIGURACION`
--

LOCK TABLES `CRMM_CONFIGURACION` WRITE;
/*!40000 ALTER TABLE `CRMM_CONFIGURACION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_CONFIGURACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_DETTAREA`
--

DROP TABLE IF EXISTS `CRMM_DETTAREA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_DETTAREA` (
  `CRMCIA_secuencia` decimal(5,0) NOT NULL,
  `CRMDTA_tipo` smallint(6) DEFAULT NULL,
  `CRMDTA_origen` varchar(1) DEFAULT NULL,
  `CRMDTA_destino` varchar(250) DEFAULT NULL,
  `CRMDTA_mensaje` varchar(5000) DEFAULT NULL,
  `CRMDTA_asunto` varchar(1000) DEFAULT NULL,
  `CRMDTA_usuario` varchar(20) DEFAULT NULL,
  `CRMDTA_clave` varchar(20) DEFAULT NULL,
  `CRMDTA_host` varchar(100) DEFAULT NULL,
  `CRMDTA_puerto` decimal(3,0) DEFAULT NULL,
  `CRMDTA_path1` varchar(300) DEFAULT NULL,
  `CRMDTA_path2` varchar(300) DEFAULT NULL,
  `CRMDTA_inicio` varchar(1) DEFAULT NULL,
  `CRMDTA_finalizar` varchar(1) DEFAULT NULL,
  `CRMDTA_error` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_DETTAREA`
--

LOCK TABLES `CRMM_DETTAREA` WRITE;
/*!40000 ALTER TABLE `CRMM_DETTAREA` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_DETTAREA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_INTERPRETA`
--

DROP TABLE IF EXISTS `CRMM_INTERPRETA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_INTERPRETA` (
  `CRMM_tipo` smallint(6) DEFAULT NULL,
  `CRMM_transaccion` varchar(100) DEFAULT NULL,
  `CRMM_parametro` varchar(100) DEFAULT NULL,
  `CRMM_execute` varchar(2000) DEFAULT NULL,
  `CRMM_numparam` smallint(6) DEFAULT NULL,
  `CRMM_separador` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_INTERPRETA`
--

LOCK TABLES `CRMM_INTERPRETA` WRITE;
/*!40000 ALTER TABLE `CRMM_INTERPRETA` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_INTERPRETA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMM_OPCIONES`
--

DROP TABLE IF EXISTS `CRMM_OPCIONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMM_OPCIONES` (
  `CRMENV_secuencia` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMENV_tipo` decimal(3,0) NOT NULL,
  `CRMENV_valor` varchar(5) NOT NULL,
  `CRMENV_descripcion` varchar(25) NOT NULL,
  PRIMARY KEY (`CRMENV_secuencia`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMM_OPCIONES`
--

LOCK TABLES `CRMM_OPCIONES` WRITE;
/*!40000 ALTER TABLE `CRMM_OPCIONES` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMM_OPCIONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMT_ENVIO`
--

DROP TABLE IF EXISTS `CRMT_ENVIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMT_ENVIO` (
  `CRMENV_secuencia` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMENV_fechaemisio` varchar(20) DEFAULT NULL,
  `CRMENV_tipo` smallint(6) DEFAULT NULL,
  `CRMENV_destino` varchar(1000) DEFAULT NULL,
  `CRMENV_mensaje` varchar(5000) DEFAULT NULL,
  `CRMENV_asunto` varchar(1000) DEFAULT NULL,
  `CRMENV_operadora` decimal(3,0) DEFAULT NULL,
  `CRMENV_reintentos` decimal(5,0) DEFAULT NULL,
  `CRMENV_path1` varchar(100) DEFAULT NULL,
  `CRMENV_path2` varchar(100) DEFAULT NULL,
  `CRMENV_usuario` varchar(50) DEFAULT NULL,
  `CRMENV_password` varchar(50) DEFAULT NULL,
  `CRMENV_inicio` varchar(1) DEFAULT NULL,
  `CRMENV_finalizar` varchar(1) DEFAULT NULL,
  `CRMENV_error` varchar(1) DEFAULT NULL,
  `CRMENV_prioridad` decimal(15,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CRMENV_secuencia`)
) ENGINE=MyISAM AUTO_INCREMENT=62298245 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMT_ENVIO`
--

LOCK TABLES `CRMT_ENVIO` WRITE;
/*!40000 ALTER TABLE `CRMT_ENVIO` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMT_ENVIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CRMT_RECIBE`
--

DROP TABLE IF EXISTS `CRMT_RECIBE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CRMT_RECIBE` (
  `CRMENV_secuencia` bigint(20) NOT NULL AUTO_INCREMENT,
  `CRMENV_origen` varchar(40) DEFAULT NULL,
  `CRMENV_mensaje` varchar(5000) DEFAULT NULL,
  `CRMENV_asunto` varchar(30) DEFAULT NULL,
  `CRMENV_tipo` smallint(6) DEFAULT NULL,
  `CRMENV_fecharecepcio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CRMENV_secuencia`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CRMT_RECIBE`
--

LOCK TABLES `CRMT_RECIBE` WRITE;
/*!40000 ALTER TABLE `CRMT_RECIBE` DISABLE KEYS */;
/*!40000 ALTER TABLE `CRMT_RECIBE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Test`
--

DROP TABLE IF EXISTS `Test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Test` (
  `id` varchar(120) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `usuario` varchar(120) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Test`
--

LOCK TABLES `Test` WRITE;
/*!40000 ALTER TABLE `Test` DISABLE KEYS */;
/*!40000 ALTER TABLE `Test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(100) DEFAULT NULL,
  `industry` varchar(100) DEFAULT '1',
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(13) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `old` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `telefono_alter1_c` varchar(255) DEFAULT NULL,
  `telefono_alter2_c` varchar(255) DEFAULT NULL,
  `tipo_empresa_c` varchar(100) DEFAULT NULL,
  `tipo_cliente_c` varchar(100) DEFAULT 'Ninguno',
  `celular_c` varchar(15) DEFAULT NULL,
  `fecha_cumple_c` date DEFAULT NULL,
  `email2_c` varchar(255) DEFAULT NULL,
  `email3_c` varchar(255) DEFAULT NULL,
  `email4_c` varchar(255) DEFAULT NULL,
  `parroquia_city_c` varchar(100) DEFAULT NULL,
  `parroquia_state_c` varchar(100) DEFAULT NULL,
  `parroquia_postalcode_c` varchar(20) DEFAULT NULL,
  `parroquia_country_c` varchar(100) DEFAULT NULL,
  `parroquia_c` varchar(255) DEFAULT NULL,
  `region_c` varchar(100) DEFAULT NULL,
  `zona_c` varchar(100) DEFAULT NULL,
  `ciudad_c` varchar(100) DEFAULT NULL,
  `canton_c` varchar(100) DEFAULT NULL,
  `direccion_c` varchar(100) DEFAULT NULL,
  `pais_c` varchar(100) DEFAULT NULL,
  `contribuyente_c` varchar(100) DEFAULT NULL,
  `provincia_c` varchar(100) DEFAULT NULL,
  `forma_pago_sri_c` varchar(100) DEFAULT '1',
  `policy_credit_c` varchar(100) DEFAULT '15',
  `requisitos_para_cobros_c` varchar(255) DEFAULT NULL,
  `rankin_2014_c` varchar(255) DEFAULT NULL,
  `rankin_2015_c` varchar(255) DEFAULT NULL,
  `rankin_2016_c` varchar(255) DEFAULT NULL,
  `rankin_2017_c` varchar(255) DEFAULT NULL,
  `rankin_2018_c` varchar(255) DEFAULT NULL,
  `pac_2019_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `rankin_pac_2019_c` varchar(255) DEFAULT NULL,
  `rankin_2022_c` varchar(255) DEFAULT NULL,
  `rankin_2021_c` varchar(255) DEFAULT NULL,
  `anio_ranking_c` text DEFAULT NULL,
  `rankings_c` text DEFAULT NULL,
  `anio_pac_c` text DEFAULT NULL,
  `pacs_c` text DEFAULT NULL,
  `contactos_actualizados_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_vs_pac_1_c`
--

DROP TABLE IF EXISTS `accounts_vs_pac_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_vs_pac_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `accounts_vs_pac_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_vs_pac_1vs_pac_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_vs_pac_1_ida1` (`accounts_vs_pac_1accounts_ida`),
  KEY `accounts_vs_pac_1_alt` (`accounts_vs_pac_1vs_pac_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_vs_pac_1_c`
--

LOCK TABLES `accounts_vs_pac_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_vs_pac_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_vs_pac_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_vs_ranking_1_c`
--

DROP TABLE IF EXISTS `accounts_vs_ranking_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_vs_ranking_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `accounts_vs_ranking_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_vs_ranking_1vs_ranking_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_vs_ranking_1_ida1` (`accounts_vs_ranking_1accounts_ida`),
  KEY `accounts_vs_ranking_1_alt` (`accounts_vs_ranking_1vs_ranking_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_vs_ranking_1_c`
--

LOCK TABLES `accounts_vs_ranking_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_vs_ranking_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_vs_ranking_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT 60,
  `email_reminder_time` int(11) DEFAULT 60,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_cstm`
--

DROP TABLE IF EXISTS `calls_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_cstm` (
  `id_c` char(36) NOT NULL,
  `phone_account_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_cstm`
--

LOCK TABLES `calls_cstm` WRITE;
/*!40000 ALTER TABLE `calls_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL,
  KEY `idx_config_cat` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','ronny.plaza@celco.com.ec'),('notify','fromname','Ronny Plaza'),('notify','send_by_default','1'),('notify','on','0'),('notify','send_from_assigning_user','2'),('info','sugar_version','6.5.17'),('MySettings','tab','YToyMTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6OToiUHJvc3BlY3RzIjtzOjk6IlByb3NwZWN0cyI7czo3OiJQcm9qZWN0IjtzOjc6IlByb2plY3QiO3M6NDoiQnVncyI7czo0OiJCdWdzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjEzOiJQcm9zcGVjdExpc3RzIjtzOjEzOiJQcm9zcGVjdExpc3RzIjtzOjEzOiJadWNrZXJSZXBvcnRzIjtzOjEzOiJadWNrZXJSZXBvcnRzIjtzOjEwOiJQaG9uZUNhbGxzIjtzOjEwOiJQaG9uZUNhbGxzIjtzOjE0OiJJTlZfSW52ZW50YXJpbyI7czoxNDoiSU5WX0ludmVudGFyaW8iO30='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Leads','1'),('Update','CheckUpdates','automatic'),('system','name','CelcoCRM'),('license','msg_admin',''),('license','msg_all',''),('license','last_validation','success'),('license','latest_versions','YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNi41LjIwIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA2LjUuMjAuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),('Update','last_check_date','1718401290'),('system','adminwizard','1'),('notify','allow_default_outbound','2'),('MySettings','hide_subpanels','YTowOnt9'),('captcha','on','0'),('captcha','public_key',''),('captcha','private_key',''),('ldap','hostname',''),('ldap','port',''),('ldap','base_dn',''),('ldap','login_filter',''),('ldap','bind_attr',''),('ldap','login_attr',''),('ldap','group_dn',''),('ldap','group_name',''),('ldap','group_user_attr',''),('ldap','group_attr',''),('ldap','admin_user',''),('ldap','admin_password',''),('ldap','auto_create_users','0'),('ldap','enc_key',''),('system','ldap_enabled','0'),('ldap','group_attr_req_dn','0'),('ldap','group','0'),('ldap','authentication','0'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username',''),('proxy','password',''),('massemailer','campaign_emails_per_run','200'),('massemailer','tracking_entities_location_type','1'),('massemailer','tracking_entities_location','https://vipsystems.site'),('massemailer','email_copy','2'),('MySettings','disable_useredit','no'),('Update','last_check_version','6.5.20'),('SugarOutfitters','AIOC','YToyOntzOjg6Imxhc3RfcmFuIjtpOjE2ODg2NDk4MTM7czoxMToibGFzdF9yZXN1bHQiO2E6Mjp7czo3OiJzdWNjZXNzIjtiOjE7czo2OiJyZXN1bHQiO2E6MTp7czo5OiJ2YWxpZGF0ZWQiO2I6MTt9fX0=');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `cargo_c` varchar(255) DEFAULT NULL,
  `actualizado_c` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `body_html` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1052449 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_inventario`
--

DROP TABLE IF EXISTS `inv_inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_inventario` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT 'ups',
  `subcategoria` varchar(100) DEFAULT 'ups',
  `capacidad` varchar(100) DEFAULT '500va',
  `modelo` varchar(100) DEFAULT 'delta',
  `stock_uio` int(255) DEFAULT NULL,
  `stock_gye` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_inventario`
--

LOCK TABLES `inv_inventario` WRITE;
/*!40000 ALTER TABLE `inv_inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inv_inventario_audit`
--

DROP TABLE IF EXISTS `inv_inventario_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inv_inventario_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_inv_inventario_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inv_inventario_audit`
--

LOCK TABLES `inv_inventario_audit` WRITE;
/*!40000 ALTER TABLE `inv_inventario_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `inv_inventario_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT 60,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT 0,
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` int(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('b8b0b778-2552-de28-bd23-666cb1ce2e18','system','system','1','SMTP','other','',25,'','',1,0);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonecalls`
--

DROP TABLE IF EXISTS `phonecalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonecalls` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `direction` varchar(255) DEFAULT NULL,
  `phone_master` varchar(32) DEFAULT NULL,
  `phone_slave` varchar(32) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `talk_start` datetime DEFAULT NULL,
  `talk_duration` varchar(11) DEFAULT '0',
  `online_duration` int(11) DEFAULT 0,
  `file_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_date_entered` (`date_entered`,`online`),
  KEY `idx_direction` (`direction`),
  KEY `idx_phone_master` (`phone_master`),
  KEY `idx_phone_slave` (`phone_slave`),
  KEY `idx_parent` (`parent_type`,`parent_id`),
  KEY `idx_online` (`online`),
  KEY `idx_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonecalls`
--

LOCK TABLES `phonecalls` WRITE;
/*!40000 ALTER TABLE `phonecalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phonecalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phonecalls_audit`
--

DROP TABLE IF EXISTS `phonecalls_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phonecalls_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_phonecalls_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phonecalls_audit`
--

LOCK TABLES `phonecalls_audit` WRITE;
/*!40000 ALTER TABLE `phonecalls_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `phonecalls_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms`
--

DROP TABLE IF EXISTS `sms_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms` (
  `id` char(36) NOT NULL,
  `name` varchar(15) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `estado` varchar(100) DEFAULT 'Pendiente',
  `celular` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms`
--

LOCK TABLES `sms_sms` WRITE;
/*!40000 ALTER TABLE `sms_sms` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_accounts_c`
--

DROP TABLE IF EXISTS `sms_sms_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_ac2d2fsms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_acd27fccounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_accounts_alt` (`sms_sms_ac2d2fsms_sms_ida`,`sms_sms_acd27fccounts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_accounts_c`
--

LOCK TABLES `sms_sms_accounts_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_accounts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_audit`
--

DROP TABLE IF EXISTS `sms_sms_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  KEY `idx_sms_sms_primary` (`id`),
  KEY `idx_sms_sms_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_audit`
--

LOCK TABLES `sms_sms_audit` WRITE;
/*!40000 ALTER TABLE `sms_sms_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_cases_c`
--

DROP TABLE IF EXISTS `sms_sms_cases_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_cases_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_cac5dbsms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_ca9ca3escases_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_cases_alt` (`sms_sms_cac5dbsms_sms_ida`,`sms_sms_ca9ca3escases_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_cases_c`
--

LOCK TABLES `sms_sms_cases_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_cases_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_cases_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_contacts_c`
--

DROP TABLE IF EXISTS `sms_sms_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_cobf04sms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_cod877ontacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_contacts_alt` (`sms_sms_cobf04sms_sms_ida`,`sms_sms_cod877ontacts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_contacts_c`
--

LOCK TABLES `sms_sms_contacts_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_leads_c`
--

DROP TABLE IF EXISTS `sms_sms_leads_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_leads_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_le1858sms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_le3dc2dsleads_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_leads_alt` (`sms_sms_le1858sms_sms_ida`,`sms_sms_le3dc2dsleads_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_leads_c`
--

LOCK TABLES `sms_sms_leads_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_leads_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_leads_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_opportunities_c`
--

DROP TABLE IF EXISTS `sms_sms_opportunities_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_opportunities_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_op3632sms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_op9e41unities_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_opportunities_alt` (`sms_sms_op3632sms_sms_ida`,`sms_sms_op9e41unities_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_opportunities_c`
--

LOCK TABLES `sms_sms_opportunities_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_opportunities_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_opportunities_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_sms_project_c`
--

DROP TABLE IF EXISTS `sms_sms_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_sms_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `sms_sms_prd905sms_sms_ida` varchar(36) DEFAULT NULL,
  `sms_sms_prd28fproject_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sms_sms_project_alt` (`sms_sms_prd905sms_sms_ida`,`sms_sms_prd28fproject_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_sms_project_c`
--

LOCK TABLES `sms_sms_project_c` WRITE;
/*!40000 ALTER TABLE `sms_sms_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `sms_sms_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`),
  KEY `idx_sgrfeed_rmod_rid_date` (`related_module`,`related_id`,`date_entered`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_ref`
--

DROP TABLE IF EXISTS `tab_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_ref` (
  `id` varchar(90) DEFAULT NULL,
  `descripcion` varchar(90) DEFAULT NULL,
  `bean` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_ref`
--

LOCK TABLES `tab_ref` WRITE;
/*!40000 ALTER TABLE `tab_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `tab_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=MyISAM AUTO_INCREMENT=1867581 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('1eafbe95-8b3e-79c6-cf94-650b53ff1489','AOS_Invoices2_AOS_INVOICES',0,'2023-09-20 20:16:35','2023-09-20 20:16:35','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('95ea1e59-6ce8-d1ab-9188-64e4d3105c45','Accounts2_ACCOUNT',0,'2023-08-22 15:24:57','2023-08-22 15:24:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('965c2ee9-664b-e4a0-efdd-64e4ce2d5dcc','Home2_LEAD_61cf35e0-914c-5e05-bac7-64e4ce4f5679',0,'2023-08-22 15:03:19','2023-08-22 15:03:19','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a7030364-3876-8806-3840-64d9825590b8','global',0,'2023-08-14 01:26:31','2023-09-20 20:16:35','1','YToyNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjlhZDgwZTYyLTc2MDAtYTk2Ni1lMDJlLTY0ZDk4MjJmNGI1MSI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjg6InRpbWV6b25lIjtzOjEzOiJFdXJvcGUvTG9uZG9uIjtzOjI6InV0IjtzOjE6IjEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBvcnQiO3M6MjoiMjUiO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjA6IiI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mzoib2ZmIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czoxOiIxIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MTtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjQ6IlRvZG8iO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTM6IkFPU19JbnZvaWNlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),('b04d0520-3923-b18c-030d-64d98284c246','GoogleSync',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('beedc1ce-b937-1ab5-a837-64e4cea916e9','Home',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjVhYjJlNTRlLWU3NDUtY2ZhOC1mZTA4LTY0ZTRjZTgzNzZhYyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjVjMTIxZmE1LTcxMTItNTA2My1iYWJhLTY0ZTRjZTBkMTdlMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVlMTE2MjM0LTIzMDktZjFhMi03MjhhLTY0ZTRjZWE5YjdlMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjVmNGIxM2ZmLTQwN2YtN2Q4MC1iMjZhLTY0ZTRjZWU0MzY3MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjBhYTMzNDQtMzI1ZS0yZTYxLTNiZGQtNjRlNGNlMDU2NDczIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNjFjZjM1ZTAtOTE0Yy01ZTA1LWJhYzctNjRlNGNlNGY1Njc5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI1YzEyMWZhNS03MTEyLTUwNjMtYmFiYS02NGU0Y2UwZDE3ZTAiO2k6MTtzOjM2OiI1ZTExNjIzNC0yMzA5LWYxYTItNzI4YS02NGU0Y2VhOWI3ZTMiO2k6MjtzOjM2OiI1ZjRiMTNmZi00MDdmLTdkODAtYjI2YS02NGU0Y2VlNDM2NzMiO2k6MztzOjM2OiI2MGFhMzM0NC0zMjVlLTJlNjEtM2JkZC02NGU0Y2UwNTY0NzMiO2k6NDtzOjM2OiI2MWNmMzVlMC05MTRjLTVlMDUtYmFjNy02NGU0Y2U0ZjU2NzkiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjVhYjJlNTRlLWU3NDUtY2ZhOC1mZTA4LTY0ZTRjZTgzNzZhYyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('c0ce8031-d1eb-5319-b477-64e4ce5cc4df','Home2_CALL',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c26e9d84-624f-cd65-36e4-64e4ce1837a9','Home2_MEETING',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c4200c7b-4bad-1b0d-dc7e-64e4ce9e3251','Home2_OPPORTUNITY',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c5d79d15-af0d-9548-4b93-64e4cec17c3b','Home2_ACCOUNT',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c7d26e8d-ce80-b3e8-a0cd-64e4ce5b5ec2','Home2_LEAD',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c96e299a-ad82-dcb8-234e-64e4ceb3461c','Home2_SUGARFEED',0,'2023-08-22 15:03:11','2023-08-22 15:03:11','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('d43ab9ea-2a96-11ef-b765-801844f3db4b','admin','750dc595f2567bafc411a812178fb542',0,NULL,NULL,1,'Administrator','',1,0,1,NULL,'2024-06-14 22:41:16','2024-06-14 22:41:16','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_cstm`
--

DROP TABLE IF EXISTS `users_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `cti_ext_c` varchar(255) DEFAULT NULL,
  `cti_inbound_c` tinyint(1) DEFAULT NULL,
  `cti_outbound_c` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_cstm`
--

LOCK TABLES `users_cstm` WRITE;
/*!40000 ALTER TABLE `users_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vs_pac`
--

DROP TABLE IF EXISTS `vs_pac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vs_pac` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `anio` varchar(100) DEFAULT '2023',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vs_pac`
--

LOCK TABLES `vs_pac` WRITE;
/*!40000 ALTER TABLE `vs_pac` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_pac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vs_pac_audit`
--

DROP TABLE IF EXISTS `vs_pac_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vs_pac_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vs_pac_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vs_pac_audit`
--

LOCK TABLES `vs_pac_audit` WRITE;
/*!40000 ALTER TABLE `vs_pac_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_pac_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vs_ranking`
--

DROP TABLE IF EXISTS `vs_ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vs_ranking` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `anio` varchar(100) DEFAULT '2023',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vs_ranking`
--

LOCK TABLES `vs_ranking` WRITE;
/*!40000 ALTER TABLE `vs_ranking` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vs_ranking_audit`
--

DROP TABLE IF EXISTS `vs_ranking_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `vs_ranking_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vs_ranking_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vs_ranking_audit`
--

LOCK TABLES `vs_ranking_audit` WRITE;
/*!40000 ALTER TABLE `vs_ranking_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `vs_ranking_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_report`
--

DROP TABLE IF EXISTS `zr2_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zr2_report` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_report`
--

LOCK TABLES `zr2_report` WRITE;
/*!40000 ALTER TABLE `zr2_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportcontainer`
--

DROP TABLE IF EXISTS `zr2_reportcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zr2_reportcontainer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportcontainer`
--

LOCK TABLES `zr2_reportcontainer` WRITE;
/*!40000 ALTER TABLE `zr2_reportcontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameter`
--

DROP TABLE IF EXISTS `zr2_reportparameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zr2_reportparameter` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `friendly_name` varchar(255) DEFAULT NULL,
  `default_name` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `range_name` varchar(255) DEFAULT NULL,
  `range_options` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameter`
--

LOCK TABLES `zr2_reportparameter` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reportparameterlink`
--

DROP TABLE IF EXISTS `zr2_reportparameterlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zr2_reportparameterlink` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `bind_to_module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reportparameterlink`
--

LOCK TABLES `zr2_reportparameterlink` WRITE;
/*!40000 ALTER TABLE `zr2_reportparameterlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reportparameterlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zr2_reporttemplate`
--

DROP TABLE IF EXISTS `zr2_reporttemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zr2_reporttemplate` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `export_as` varchar(255) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zr2_reporttemplate`
--

LOCK TABLES `zr2_reporttemplate` WRITE;
/*!40000 ALTER TABLE `zr2_reporttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `zr2_reporttemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_listingtemplatefilter`
--

DROP TABLE IF EXISTS `zucker_listingtemplatefilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_listingtemplatefilter` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `listing_template_id` char(36) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `comparator` varchar(255) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_listingtemplatefilter`
--

LOCK TABLES `zucker_listingtemplatefilter` WRITE;
/*!40000 ALTER TABLE `zucker_listingtemplatefilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_listingtemplatefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_listingtemplateorder`
--

DROP TABLE IF EXISTS `zucker_listingtemplateorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_listingtemplateorder` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `listing_template_id` char(36) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_listingtemplateorder`
--

LOCK TABLES `zucker_listingtemplateorder` WRITE;
/*!40000 ALTER TABLE `zucker_listingtemplateorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_listingtemplateorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_listingtemplates`
--

DROP TABLE IF EXISTS `zucker_listingtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_listingtemplates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mainmodule` varchar(255) DEFAULT NULL,
  `filtertype` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `customwhere1` text DEFAULT NULL,
  `customwhere2` text DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_listingtemplates`
--

LOCK TABLES `zucker_listingtemplates` WRITE;
/*!40000 ALTER TABLE `zucker_listingtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_listingtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_querytemplates`
--

DROP TABLE IF EXISTS `zucker_querytemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_querytemplates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sql1` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_querytemplates`
--

LOCK TABLES `zucker_querytemplates` WRITE;
/*!40000 ALTER TABLE `zucker_querytemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_querytemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_report`
--

DROP TABLE IF EXISTS `zucker_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_report` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) NOT NULL,
  `created_by` char(36) DEFAULT NULL,
  `container_id` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `published` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_report`
--

LOCK TABLES `zucker_report` WRITE;
/*!40000 ALTER TABLE `zucker_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_reportcontainer`
--

DROP TABLE IF EXISTS `zucker_reportcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_reportcontainer` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_reportcontainer`
--

LOCK TABLES `zucker_reportcontainer` WRITE;
/*!40000 ALTER TABLE `zucker_reportcontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_reportcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_reportmodulelink`
--

DROP TABLE IF EXISTS `zucker_reportmodulelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_reportmodulelink` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `parameterlink_id` char(36) NOT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_reportmodulelink`
--

LOCK TABLES `zucker_reportmodulelink` WRITE;
/*!40000 ALTER TABLE `zucker_reportmodulelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_reportmodulelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_reportparameterlink`
--

DROP TABLE IF EXISTS `zucker_reportparameterlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_reportparameterlink` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `parameter_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_reportparameterlink`
--

LOCK TABLES `zucker_reportparameterlink` WRITE;
/*!40000 ALTER TABLE `zucker_reportparameterlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_reportparameterlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_reportparameters`
--

DROP TABLE IF EXISTS `zucker_reportparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_reportparameters` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `friendly_name` varchar(255) DEFAULT NULL,
  `default_name` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `range_name` varchar(255) DEFAULT NULL,
  `range_options` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_reportparameters`
--

LOCK TABLES `zucker_reportparameters` WRITE;
/*!40000 ALTER TABLE `zucker_reportparameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_reportparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_reporttemplates`
--

DROP TABLE IF EXISTS `zucker_reporttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_reporttemplates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `export_as` varchar(255) DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_reporttemplates`
--

LOCK TABLES `zucker_reporttemplates` WRITE;
/*!40000 ALTER TABLE `zucker_reporttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_reporttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_runnablereport`
--

DROP TABLE IF EXISTS `zucker_runnablereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_runnablereport` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `report_result_type` text DEFAULT NULL,
  `nextrun` datetime DEFAULT NULL,
  `schedule_interval` varchar(255) DEFAULT NULL,
  `lastlog` text DEFAULT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_runnablereport`
--

LOCK TABLES `zucker_runnablereport` WRITE;
/*!40000 ALTER TABLE `zucker_runnablereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_runnablereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zucker_wordtemplates`
--

DROP TABLE IF EXISTS `zucker_wordtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `zucker_wordtemplates` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `querytemplate_id` char(36) NOT NULL,
  `team_id` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_wordtemplates`
--

LOCK TABLES `zucker_wordtemplates` WRITE;
/*!40000 ALTER TABLE `zucker_wordtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_wordtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sugarcrm-393902d5'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-09  4:18:20
