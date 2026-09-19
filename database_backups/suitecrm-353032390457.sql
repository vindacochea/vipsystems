/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for Linux (x86_64)
--
-- Host: sdb-62.hosting.stackcp.net    Database: suitecrm-353032390457
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
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
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
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('d8bd72c4-aacc-fde0-e38a-64e4f13264ce','Ronny Plaza','2023-08-22 17:34:59','2023-08-22 17:34:59','1','1','Ingreso de paciente por problemas en tercer molar',0,'1','Customer','Healthcare','800','','Vernaza Norte','Guayaquil','Guayas','090502','Ecuador',NULL,'042596400',NULL,'http://branwares.com',NULL,'1',NULL,'Vernaza Norte','Guayaquil','Guayas','090502','Ecuador','',NULL,'');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('d8bd72c4-aacc-fde0-e38a-64e4f13264ce',0.00000000,0.00000000,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('11630d97-6547-519b-66fb-64d9821d2547','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','jjwg_Areas','module',90,0),('12f208ce-5191-887c-5ca8-64d982d19360','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','FP_Event_Locations','module',90,0),('13f1771b-a21f-4879-beaa-64d982dbc818','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Calls','module',89,0),('14a40f36-aa61-b8a5-7c64-64d982c07c86','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Calls_Reschedule','module',89,0),('14ce7218-a39d-289b-5eb3-64d98229531c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Calls','module',90,0),('1541fa7a-0722-26de-251f-64d98218899d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Calls_Reschedule','module',90,0),('15ccccb0-43e1-3d9f-5566-64d982d426b0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Calls','module',90,0),('15ce42e1-2749-2368-f36b-64d982f28b2d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Calls_Reschedule','module',90,0),('166a573b-f266-3c05-6507-64d9821a5ee7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Calls','module',90,0),('1681bbda-c73e-193d-6b1e-64d982be29c1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Calls_Reschedule','module',90,0),('16f2a597-7399-af39-b637-64d982da3224','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Calls','module',90,0),('17187702-ddc6-e847-66bd-64d982fbe7a6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Calls_Reschedule','module',90,0),('1770307b-b4cb-be03-854c-64d982afbd50','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Calls','module',90,0),('17aaf1de-2978-4501-ca68-64d98257c4f9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Calls_Reschedule','module',90,0),('17ebd29b-e7f6-58e0-66eb-64d9827d77ce','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Calls','module',90,0),('1835014b-2647-b7d2-0f5a-64d982b04c8e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','EmailTemplates','module',90,0),('18606004-c0f5-168b-b442-64d982c25bb7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Calls_Reschedule','module',90,0),('186e434a-b934-6cb8-b665-64d9828b0745','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Calls','module',90,0),('18d793a4-102e-293d-f314-64d982aeb0d7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOD_Index','module',89,0),('18f052c9-ce91-d6da-7016-64d982a0d015','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Calls_Reschedule','module',90,0),('196244ff-9f40-46c8-9d88-64d98264bb68','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOD_Index','module',90,0),('1a07bf03-67a3-3f76-fd8d-64d98267f316','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOD_Index','module',90,0),('1a9a8cae-7ef2-c9dc-0b46-64d9829803f9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOD_Index','module',90,0),('1b0ff740-5935-9921-defd-64d982035dc7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOD_Index','module',90,0),('1b8d017a-e8c9-ce06-d5da-64d982271394','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','jjwg_Areas','module',90,0),('1b8e8cb3-0976-bde2-6598-64d98240dc05','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOD_Index','module',90,0),('1c181107-e26d-0af4-5df4-64d982271d3c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOD_Index','module',90,0),('1c6c04bd-73d4-2fd3-e13d-64d98216d51f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','FP_Event_Locations','module',90,0),('1cadc828-596a-9456-15f0-64d98284e05f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOD_Index','module',90,0),('1efffed8-ee7d-bfab-5413-64d9826c0d05','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Emails','module',89,0),('1f3206a5-a167-29a1-e697-64d982039109','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','SecurityGroups','module',89,0),('1f7f5ac5-670e-04e9-032d-64d98264a64f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Emails','module',90,0),('1fc7b59b-4328-8230-a82b-64d982cceb9a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','SecurityGroups','module',90,0),('1ff80d8a-b655-65eb-7a7c-64d982006e11','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Emails','module',90,0),('20447c45-e9e1-1796-0f57-64d9826c5660','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','SecurityGroups','module',90,0),('20550e1e-9ec5-5dab-5dab-64d9826493bb','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','EmailTemplates','module',90,0),('20b7b616-00c1-7db4-be35-64d98237c381','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Emails','module',90,0),('20e9168f-7fde-abbc-8da4-64d982348a7c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','SecurityGroups','module',90,0),('217d64ed-ff37-138e-b1c8-64d982e1c19b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Emails','module',90,0),('2197e18b-d0b6-fbbf-575e-64d982ff3cd0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','SecurityGroups','module',90,0),('21f9d41a-6bd9-2872-6541-64d982c228cf','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Emails','module',90,0),('22233c2c-3ab7-37f4-aa27-64d9824cafff','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','SecurityGroups','module',90,0),('2276732f-a821-9de9-b6e6-64d9822ef176','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Emails','module',90,0),('229c935f-4b1e-11ed-f4d1-64d98249e0f5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','SecurityGroups','module',90,0),('230aa3ab-1737-596a-6534-64d982982d84','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Emails','module',90,0),('23135ee3-0de2-23d1-25bc-64d98213717f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','SecurityGroups','module',90,0),('248106b6-5a5a-52fd-06a7-64d98215e470','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','FP_Event_Locations','module',90,0),('25ddd045-c2ef-0467-e73b-64d9821caf0d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOP_Case_Events','module',89,0),('26815086-c756-d29c-8e29-64d9820ea999','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOP_Case_Events','module',90,0),('27192618-98e7-5c23-6779-64d98201d4d7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOP_Case_Events','module',90,0),('2735081c-b4ff-e3ab-ef0e-64d98277af71','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','jjwg_Areas','module',90,0),('27a6a5f6-8cc8-cf7d-0320-64d9828f5385','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOP_Case_Events','module',90,0),('28130b21-e4f5-aed7-898e-64d98279450a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','EmailTemplates','module',90,0),('28335251-bdd7-4369-f3b3-64d982059c61','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOP_Case_Events','module',90,0),('28c01ed2-8e84-a392-26ac-64d9822d42d2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOP_Case_Events','module',90,0),('2927d8f6-6e98-cc2a-52c7-64d982938920','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','OutboundEmailAccounts','module',89,0),('294a4791-ea7e-1541-b0a3-64d982c62dc9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOP_Case_Events','module',90,0),('29d88a9f-c4f1-848e-62f1-64d982136c8b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','OutboundEmailAccounts','module',90,0),('29fe4520-4169-ca4d-235b-64d982f831ac','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOP_Case_Events','module',90,0),('2a5c518d-f920-a7f7-24e7-64d982b74346','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Meetings','module',89,0),('2a8db44c-e26c-0147-7619-64d98251933e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','OutboundEmailAccounts','module',90,0),('2ae13603-4945-2c15-02cd-64d982a0fcf0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Meetings','module',90,0),('2b26564f-aa81-20e2-d854-64d982f64a06','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','OutboundEmailAccounts','module',90,0),('2b5def04-0ce7-4589-81b1-64d9826ead95','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Meetings','module',90,0),('2bc2f811-84e9-78ec-d327-64d982061345','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','OutboundEmailAccounts','module',90,0),('2bd60896-c239-7642-37e7-64d982f85d28','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','FP_Event_Locations','module',90,0),('2c0825ec-1712-50b2-3843-64d9829d7f1a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Meetings','module',90,0),('2c44c92b-43ae-5969-518d-64d982886e55','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','OutboundEmailAccounts','module',90,0),('2cb17210-1f4e-6013-5c22-64d982fda8fd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Meetings','module',90,0),('2cb91e90-66a8-c127-f3a9-64d9827dfbae','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','OutboundEmailAccounts','module',90,0),('2d2c9bf7-7743-8ca1-4350-64d982c7ff10','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','OutboundEmailAccounts','module',90,0),('2d3e7e69-5411-c107-0915-64d9821cc010','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Meetings','module',90,0),('2dbc6ba2-fbcc-c6cf-daed-64d982269a7c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Meetings','module',90,0),('2e7848ef-6865-9ae0-5186-64d98203ddd7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Meetings','module',90,0),('3083039f-e62b-94c8-7dc3-64d982743f76','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','EmailTemplates','module',90,0),('32aa0d09-a6cc-f3b6-fb89-64d98283b602','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','jjwg_Areas','module',90,0),('33680c31-4e6a-24a5-6d6c-64d982346dcd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOP_Case_Updates','module',89,0),('339139eb-a057-aae1-b997-64d9825df918','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','ExternalOAuthConnection','module',89,0),('3414438a-53ce-5759-73d6-64d9820103dd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOP_Case_Updates','module',90,0),('343f5cac-776b-efbc-f97a-64d98282eee9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Tasks','module',89,0),('34589407-15f7-97ef-1e57-64d982bacd98','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','ExternalOAuthConnection','module',90,0),('34b2f8c2-86d0-ece8-6e90-64d982a1df74','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOP_Case_Updates','module',90,0),('34d7525c-e7fd-6778-f324-64d9824fd47b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Tasks','module',90,0),('35200d75-8b45-2d56-49da-64d9827e6dd6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','ExternalOAuthConnection','module',90,0),('3552dc4c-c39b-b582-618e-64d9825d048e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Tasks','module',90,0),('35559414-3d50-edad-3b90-64d982f4fdf1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOP_Case_Updates','module',90,0),('35930186-d8f7-2d41-221d-64d98248676d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','FP_Event_Locations','module',90,0),('35a3e575-c18a-8d31-0f4d-64d9828027df','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','ExternalOAuthConnection','module',90,0),('35c7a7f0-db17-e00d-59a7-64d982e5898a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Tasks','module',90,0),('35fe9fda-411d-e572-0dc7-64d9827b2f97','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOP_Case_Updates','module',90,0),('362ce10e-eca3-804b-15ee-64d982747b24','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','ExternalOAuthConnection','module',90,0),('366d7e76-1b63-3f27-5120-64d982fcd03e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Tasks','module',90,0),('36938cc2-85a8-1c0b-c56a-64d982ea7218','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOP_Case_Updates','module',90,0),('36b10359-9c1b-0f98-09e7-64d982f726fd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','ExternalOAuthConnection','module',90,0),('36ec5572-9eb1-9fff-2657-64d982cc3928','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Leads','module',90,0),('37132eee-ccda-0354-64bf-64d98274abab','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Tasks','module',90,0),('3730d5d7-3f2d-51fc-1e5e-64d982e6e360','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','ExternalOAuthConnection','module',90,0),('37381e09-b406-b449-94d9-64d982e0806e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOP_Case_Updates','module',90,0),('37b3919e-af47-0b15-ce19-64d9825104e4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','ExternalOAuthConnection','module',90,0),('37bee780-a65d-3dab-b579-64d9827863da','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Tasks','module',90,0),('37f7a62b-c3fa-e253-dbd5-64d9827c4856','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOP_Case_Updates','module',90,0),('38590981-e008-c4d2-b27c-64d982e051b8','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','EmailTemplates','module',90,0),('386eb4ae-f157-d770-e27e-64d9828089a1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Tasks','module',90,0),('39ba593c-9d37-f00c-da14-64d98220b121','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Leads','module',90,0),('3a4b0114-120f-d759-3176-64d982491b5e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Leads','module',90,0),('3ba852d5-cd1b-52d5-b88f-64d9825223b9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Leads','module',90,0),('3c1ea10e-e6a6-ef3a-e661-64d982a95e29','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Leads','module',90,0),('3c9d229a-048f-da50-f8e4-64d9823a99a3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Leads','module',90,0),('3ced3d5f-8791-d00d-bddf-64d9820abca0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','ExternalOAuthProvider','module',89,0),('3d16c192-1819-8afa-ceef-64d9826b1715','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Leads','module',90,0),('3d7fe50a-77f0-767e-b817-64d98267e3ab','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','ExternalOAuthProvider','module',90,0),('3dc70f18-d840-5c64-ac41-64d98244139a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','jjwg_Areas','module',90,0),('3e042208-0caf-0f1f-6de7-64d98252a91d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','ExternalOAuthProvider','module',90,0),('3e84cd7e-4b1c-e995-022a-64d982798eea','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','ExternalOAuthProvider','module',90,0),('3ebe0bfa-a69f-a3e0-37c3-64d982daf811','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','FP_Event_Locations','module',90,0),('3effa6b4-16cc-7c29-678c-64d98218596a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','ExternalOAuthProvider','module',90,0),('3fb9df0e-11bb-f507-c3b8-64d9822ff188','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','ExternalOAuthProvider','module',90,0),('402309bf-d2f8-4d30-0e36-64d982f920c0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','EmailTemplates','module',90,0),('407633c9-2d3c-460d-3b8b-64d98238cf75','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','ExternalOAuthProvider','module',90,0),('4107a018-4258-b40f-87c2-64d982ecc0df','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','ExternalOAuthProvider','module',90,0),('4191e82f-b0b9-534d-e16d-64d9822a9dc6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOR_Reports','module',89,0),('42a1ef4d-a5a0-3aee-647a-64d9825ad6d3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOR_Reports','module',90,0),('437f5175-199b-7936-16c8-64d982a24631','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOR_Reports','module',90,0),('448dc822-adbd-8d45-fb2f-64d982963685','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOR_Reports','module',90,0),('4512934b-b94c-c964-6a29-64d982f4ca4e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOR_Reports','module',90,0),('458e39a1-70da-c41c-87b2-64d982e81814','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOR_Reports','module',90,0),('460ab431-35f3-7b0d-3536-64d982ebcdbd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOR_Reports','module',90,0),('4689e81c-6808-fa9e-e75e-64d982a37372','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOR_Reports','module',90,0),('468ff14c-b46e-6a2f-95a0-64d982b607fa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Cases','module',89,0),('47282a79-1ae9-21b4-7ecb-64d982738bb5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','TemplateSectionLine','module',89,0),('474804b0-abf8-de20-754c-64d982204cd4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Cases','module',90,0),('47870fa5-a93c-6ff3-9a91-64d982d9380a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','FP_Event_Locations','module',90,0),('47ea53db-b8d2-d138-6245-64d9822039e2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Cases','module',90,0),('481160a4-aae8-7809-bd83-64d982d8e4f0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','TemplateSectionLine','module',90,0),('486337fd-acc3-608a-5b4e-64d98264d65b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Cases','module',90,0),('48c0ad37-e44e-d1b5-25d6-64d9824fc504','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','TemplateSectionLine','module',90,0),('491881c3-cef0-8ca1-6a1c-64d982a6c087','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Cases','module',90,0),('493fdf5b-2365-c998-3aa5-64d98289d95e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','TemplateSectionLine','module',90,0),('494c0c75-e818-2ea5-3b86-64d9823aa85e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','EmailTemplates','module',90,0),('4985363b-5105-477f-cbc2-64d982c49df0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Cases','module',90,0),('49bd6480-ff92-d6c7-8285-64d982a732d8','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','TemplateSectionLine','module',90,0),('4a076e88-08ac-c8a1-31c3-64d9820fbcad','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Cases','module',90,0),('4a356b1d-2513-0903-dc66-64d98213dd63','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','TemplateSectionLine','module',90,0),('4a770431-5a89-c7e3-b8cc-64d9823bcb75','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Cases','module',90,0),('4ab0cc89-9a11-deb3-a1ff-64d982f97666','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','TemplateSectionLine','module',90,0),('4b4233a3-f417-0d20-8693-64d982d4f4b8','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','TemplateSectionLine','module',90,0),('4cd13754-db7f-ded3-4ef0-64d9826246c4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Alerts','module',89,0),('4d8c3c71-9c6b-5438-24de-64d982d267ae','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Alerts','module',90,0),('4e12e3aa-c15a-73b0-f1f1-64d98253af19','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Alerts','module',90,0),('4e90595a-8f5e-bf19-fade-64d982530735','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Alerts','module',90,0),('4efcab4c-d554-1c5d-ead5-64d98221e7ac','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Alerts','module',90,0),('4f83cf2c-4262-a08e-d1a1-64d9827ed724','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Alerts','module',90,0),('50061391-206c-2b59-b305-64d982ba395e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Alerts','module',90,0),('5089acef-aacf-ecf0-88d1-64d982829918','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Alerts','module',90,0),('54b3be47-deed-0fb8-3e42-64d9823fbc8c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Bugs','module',89,0),('554eb81b-bac5-be96-3bec-64d98210f080','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Bugs','module',90,0),('55df46f5-f97d-753f-6e6f-64d98245b9b4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Bugs','module',90,0),('5648b800-bb73-d45a-6c3a-64d9828920b2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Bugs','module',90,0),('56d5e883-548f-ec75-7df6-64d982d368ca','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Bugs','module',90,0),('5762e7e5-b3a8-b0a8-3a47-64d9824db530','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Bugs','module',90,0),('57e87001-23b0-8075-b270-64d982e4f1e7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Bugs','module',90,0),('58596571-947b-0fb9-bcda-64d982020a33','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Documents','module',89,0),('585c0539-8055-a41c-6766-64d982177674','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Bugs','module',90,0),('593ad14a-e3eb-cb26-ff72-64d9827e0250','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Documents','module',90,0),('593f8018-c987-0d3e-3f08-64d98247957b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','SurveyResponses','module',89,0),('59d32f69-1fec-a798-c1e3-64d9820189c3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','SurveyResponses','module',90,0),('59fa6336-a44c-1dd9-facc-64d982186db9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Documents','module',90,0),('5a68f3b8-5168-0a53-d0c6-64d98208af45','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','SurveyResponses','module',90,0),('5af10c41-15f2-bf92-c578-64d98245e9d7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','SurveyResponses','module',90,0),('5afeee7b-9005-3cfe-dc4a-64d9827bcd76','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Documents','module',90,0),('5b7026dd-aff6-dd70-0e81-64d982a8d563','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','SurveyResponses','module',90,0),('5bd549e1-de0e-bb7e-b79d-64d982d48f81','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Documents','module',90,0),('5bf78df3-4187-ec95-d13f-64d982344076','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','SurveyResponses','module',90,0),('5c1fd9fd-3783-bb61-6463-64d9823589f9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOR_Scheduled_Reports','module',89,0),('5c9a8cae-66b7-a8f8-0722-64d98239b87e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Documents','module',90,0),('5ca18489-5a21-ac0e-b0c7-64d9827240b7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','SurveyResponses','module',90,0),('5cc7a73c-b7cc-c285-8d0b-64d9829029a5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOR_Scheduled_Reports','module',90,0),('5d43df09-9e56-6a80-4249-64d982a9fcf3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','SurveyResponses','module',90,0),('5d66836e-cb10-6b5e-730a-64d982bceb56','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOR_Scheduled_Reports','module',90,0),('5d9c32e0-9cae-282b-5384-64d982a2b684','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Documents','module',90,0),('5e00d788-4489-aec5-5e6d-64d98234b0a2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOR_Scheduled_Reports','module',90,0),('5e4d3f8e-6315-210e-a8ff-64d982a881aa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Documents','module',90,0),('5e9074f7-dc5a-a089-f198-64d9829374da','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOR_Scheduled_Reports','module',90,0),('5f1f0cfc-01e6-2d2d-8120-64d982810e0f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOR_Scheduled_Reports','module',90,0),('5fb361fc-3f3e-b98a-6d05-64d98253b924','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOR_Scheduled_Reports','module',90,0),('60468b67-5ff5-f68a-6411-64d982cd294d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('629519db-49ef-e981-f284-64d9828cc36a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Users','module',89,0),('633a0335-9df7-ebb1-224f-64d9829fe761','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Users','module',90,0),('63cba385-8e94-0041-fe3b-64d982d9eda1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Users','module',90,0),('647e6733-8a6c-86bc-9a06-64d982474f35','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Users','module',90,0),('64a2f3d1-d893-d494-6738-64d982f17b20','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Surveys','module',89,0),('6515c4b2-f2ea-fd7b-f820-64d9822d7c8b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Users','module',90,0),('654d0d1e-cb48-8ae5-ca5c-64d9824c1397','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Surveys','module',90,0),('6606de8b-63e3-6252-e404-64d98215a516','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Users','module',90,0),('6607236b-8d89-37be-832a-64d9823429e5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Surveys','module',90,0),('6649b3c9-74da-6607-8d01-64d982aca787','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_Contracts','module',89,0),('66972a3a-f0a2-fa5b-f85f-64d982bb37e3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Users','module',90,0),('6713113e-53a5-1bf9-bd5a-64d982c0f5d7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Surveys','module',90,0),('67181922-595c-4ee8-1f43-64d982e71f21','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Users','module',90,0),('671a24fa-f86a-7086-43e8-64d982b5ef47','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_Contracts','module',90,0),('67b24bff-dbc1-b3d9-ec24-64d9821e316d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_Contracts','module',90,0),('684e0a86-dcf2-7fad-7422-64d982ee96ab','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_Contracts','module',90,0),('68e671fc-c007-3df1-787f-64d98264fc21','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Surveys','module',90,0),('68ffc89b-71a9-6264-9d3c-64d9827d7714','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_Contracts','module',90,0),('69de5a24-97d6-ecbc-a988-64d982cc48ed','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Surveys','module',90,0),('69ee9400-26c8-9712-d2f4-64d982edf24e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_Contracts','module',90,0),('6acd646e-c0bb-2e65-e94a-64d9821cdd44','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Surveys','module',90,0),('6aec1200-188d-721d-8b65-64d982c849dd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_Contracts','module',90,0),('6b696e59-f833-3169-a4a3-64d98272272a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Surveys','module',90,0),('6bc8df21-9489-305b-7f9b-64d9826ed4a2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_Contracts','module',90,0),('700446f0-63ab-ca7e-3095-64d982cb5748','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Project','module',89,0),('70de777d-c37a-d5d3-2ab2-64d982c6f727','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Project','module',90,0),('70f00e40-1f86-340d-fcdb-64d982b7a048','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','jjwg_Areas','module',90,0),('7169a2d9-2763-17c6-7eef-64d982cb798c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Project','module',90,0),('71d2065d-cdb3-c097-751b-64d98262c8b2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Project','module',90,0),('72449345-cabb-964c-e689-64d982d5a8a2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Project','module',90,0),('7278f68a-8869-27e5-c6b7-64d982d43399','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','SurveyQuestionResponses','module',89,0),('72b9ff2f-8f5e-37f6-dff6-64d982bea543','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Project','module',90,0),('730a39b5-671c-cd70-6a61-64d9823ec147','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','SurveyQuestionResponses','module',90,0),('73399e79-f160-d522-d07c-64d98292f69a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Project','module',90,0),('73a9e61c-c7c3-df41-0e3f-64d9825efd9c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','SurveyQuestionResponses','module',90,0),('73bdba3c-6c9a-2c8f-2d40-64d982f7d9b6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Project','module',90,0),('74321829-f9d5-c7c4-5d59-64d982aac186','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','SurveyQuestionResponses','module',90,0),('74b95fc0-f733-4432-93c8-64d9824ccced','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','SurveyQuestionResponses','module',90,0),('758b53ac-3392-dbfd-d850-64d982060f5c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_Invoices','module',89,0),('75b0fb0c-c8f8-88bb-e908-64d982e9eeb2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','SurveyQuestionResponses','module',90,0),('761a2251-34d7-3ef1-a595-64d9825dd932','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_Invoices','module',90,0),('769532e6-650e-838b-fe65-64d98242f8ef','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_Invoices','module',90,0),('76aebe69-c0ab-c6c3-ee0e-64d982a2d533','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','SurveyQuestionResponses','module',90,0),('7705c3f1-da1e-74be-fd65-64d9824946ea','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_Invoices','module',90,0),('77561764-e62a-9f38-99d7-64d982ba3c74','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','SurveyQuestionResponses','module',90,0),('7792622a-a9e5-db1e-158a-64d9825e62c3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_Invoices','module',90,0),('782b05bd-d823-dc51-54bc-64d982943baf','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_Invoices','module',90,0),('78d1a524-acef-aad0-2bb4-64d98287badf','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_Invoices','module',90,0),('79643dbc-38cb-c660-607a-64d982a0ea6f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_Invoices','module',90,0),('79e69300-382c-1b02-3543-64d9829949dd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','ProjectTask','module',89,0),('7a7e5321-7fc0-3974-711b-64d9820afa75','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','ProjectTask','module',90,0),('7b1398d1-9854-38dd-bc2c-64d9824c9929','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','ProjectTask','module',90,0),('7ba93770-eb56-abd7-1d11-64d982a0a71f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','InboundEmail','module',89,0),('7bacf000-a6ef-45b5-eb96-64d9829798d0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','ProjectTask','module',90,0),('7c3afbaf-aa13-5fcc-adbf-64d982c8973b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','ProjectTask','module',90,0),('7c53af75-7d48-4a72-aaa9-64d9826549c6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','InboundEmail','module',90,0),('7cb0b722-3bc7-687e-7374-64d982ff903a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','ProjectTask','module',90,0),('7cf8ca95-9e2e-163b-e3ef-64d982da1cb4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','InboundEmail','module',90,0),('7d201253-e747-2cd8-ae75-64d9820e645e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','ProjectTask','module',90,0),('7d91b819-6bf0-b98c-1ebc-64d982e9b20f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','InboundEmail','module',90,0),('7e0a0a7a-c6be-f22f-c6c5-64d9825ef912','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','ProjectTask','module',90,0),('7e2b0ea3-0017-ee1d-b549-64d982813da7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','InboundEmail','module',90,0),('7eca8c6c-e1fe-15e9-9a3d-64d98256e736','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','InboundEmail','module',90,0),('7f786013-d836-de4b-0624-64d982495be7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','InboundEmail','module',90,0),('8011d2a2-6763-9433-0cf0-64d98221643e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','InboundEmail','module',90,0),('811c3225-9b1b-13fb-ced3-64d982281d2d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','SurveyQuestions','module',89,0),('8219cb30-e92d-48c4-6a74-64d98201c364','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','SurveyQuestions','module',90,0),('82cbcffc-cfa5-75af-66da-64d982a12459','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','SurveyQuestions','module',90,0),('83483006-1337-654e-0283-64d9829b8871','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_PDF_Templates','module',89,0),('837308c4-8036-1128-9883-64d9824b418b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','SurveyQuestions','module',90,0),('83f70a0f-8f99-3fad-45db-64d982302802','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_PDF_Templates','module',90,0),('843b3696-3182-0539-1897-64d98250d975','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','SurveyQuestions','module',90,0),('84c5b9b1-6cc6-dc07-7db1-64d982cb74c9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_PDF_Templates','module',90,0),('84d880ed-63eb-8bc5-b7bc-64d98278ea77','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','SurveyQuestions','module',90,0),('857e0118-5011-667c-7d0a-64d982c22c70','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','SurveyQuestions','module',90,0),('85ad283c-a294-2c4b-5a6d-64d9820eafa9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_PDF_Templates','module',90,0),('85da64a0-c005-c8b6-351f-64d982ff9e18','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Campaigns','module',89,0),('86836b79-7998-5929-38e8-64d982d7456a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Campaigns','module',90,0),('868c5bd6-3119-5fb7-c8de-64d9823dc971','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','SurveyQuestions','module',90,0),('86da4e16-0261-92a4-1fd6-64d9821db587','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_PDF_Templates','module',90,0),('86fd031d-62bc-b83e-8f7c-64d9827c5e1f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Leads','module',89,0),('871feae1-2850-105a-4cf4-64d9827b5740','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Campaigns','module',90,0),('87ab8937-0c70-9653-3243-64d982d5ab30','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_PDF_Templates','module',90,0),('87ba2c97-8e34-4705-ca1c-64d9821b7dfa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Campaigns','module',90,0),('882e2e5d-2edd-aac1-7781-64d982c81b39','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Campaigns','module',90,0),('883fe0b0-a4db-839c-d1db-64d982a31c45','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_PDF_Templates','module',90,0),('8896c18c-bfda-19c4-5615-64d98266f067','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Campaigns','module',90,0),('88c1a055-bc6b-8b6f-2f88-64d982f4cfe7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_PDF_Templates','module',90,0),('892acbfb-17e6-439c-2176-64d982703f13','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Campaigns','module',90,0),('89be2de7-cf19-b49d-f75c-64d9829c4845','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Campaigns','module',90,0),('8f32e5f1-19d3-3a76-55bd-64d98294cb9d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Spots','module',89,0),('8fda52fc-a057-d75e-7a93-64d982c26b45','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','SurveyQuestionOptions','module',89,0),('8fdac678-0e04-d93a-7a38-64d9820d37a0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Spots','module',90,0),('90096425-c61b-5cdb-ac01-64d9827f8e31','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_Product_Categories','module',89,0),('907a73ba-41a3-83ad-7ee8-64d982ea088f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Spots','module',90,0),('90c5b4f2-20ff-2131-7ecd-64d982fd75b9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_Product_Categories','module',90,0),('91187f8f-f593-1589-548f-64d9826e6f84','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','SurveyQuestionOptions','module',90,0),('911d8368-2f7c-35f8-b84e-64d98216e300','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Spots','module',90,0),('916c8e04-7ab6-9b9a-afe1-64d982eee3f3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_Product_Categories','module',90,0),('91c1f418-3e37-ec25-af6e-64d9828810e2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Spots','module',90,0),('921bbd3f-874f-7aab-ef1d-64d98281220f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_Product_Categories','module',90,0),('92618a71-10bf-7b0e-b647-64d9821540cc','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Spots','module',90,0),('92724496-59c3-2ead-7318-64d982d212df','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','SurveyQuestionOptions','module',90,0),('92c2147b-11e4-2a9c-3943-64d98241c36f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_Product_Categories','module',90,0),('932ceb30-8208-d36e-323f-64d982980023','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','SurveyQuestionOptions','module',90,0),('934a644f-0696-5634-79c9-64d98225cc82','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','ProspectLists','module',89,0),('93561cb1-d4ce-b34f-dfc6-64d982d6cd00','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_Product_Categories','module',90,0),('93f55577-6ee1-2f5b-c23f-64d9821b4966','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_Product_Categories','module',90,0),('93fa39bc-3b91-fd0c-cf81-64d9824f2e83','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','ProspectLists','module',90,0),('94514444-3a15-44da-b9de-64d982bfc374','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','SurveyQuestionOptions','module',90,0),('94948267-4416-a414-e07b-64d982bf0c23','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_Product_Categories','module',90,0),('949a25f5-328c-3bbb-5b38-64d98261e385','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','ProspectLists','module',90,0),('9518de15-cc1d-f6f9-f0f1-64d982d3327d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','ProspectLists','module',90,0),('958c57f5-2df8-78d8-0857-64d982dc8e1d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Spots','module',90,0),('95bae5cc-9f95-5da2-6716-64d982e10235','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','ProspectLists','module',90,0),('95d941b1-1445-975d-9499-64d982ca499c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','SurveyQuestionOptions','module',90,0),('96311ea6-97fd-07ee-d318-64d982091c53','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Spots','module',90,0),('96363d79-823d-1682-e242-64d982fc3e44','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','ProspectLists','module',90,0),('9694152b-aab9-9bf0-1a4f-64d982277e04','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','SurveyQuestionOptions','module',90,0),('96ac810d-44d0-45f2-6a83-64d9829a1d45','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','ProspectLists','module',90,0),('9742979c-c3ac-53d0-9d7b-64d9829e4d11','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','ProspectLists','module',90,0),('98a0ca21-ca6e-9418-87cd-64d982270132','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','SurveyQuestionOptions','module',90,0),('9aac03a8-1e45-78f9-d97b-64d9821b8e86','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Notes','module',89,0),('9b48e458-cc91-18a6-d183-64d9821d0de6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_Products','module',89,0),('9c044880-e637-a428-cc1b-64d982ae2f2e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_Products','module',90,0),('9cdfe4ed-80c9-ff52-d03f-64d982be15bd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_Products','module',90,0),('9d61bdb4-8674-4b42-fa77-64d982f9564b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_Products','module',90,0),('9de876c2-0cdf-d644-4584-64d982a34597','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_Products','module',90,0),('9e18a1c0-ba72-cbfe-4693-64d982361497','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Prospects','module',89,0),('9e806e85-7cdc-17d0-1ca3-64d982e0864e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_Products','module',90,0),('9eedf720-3f3e-98e7-72ac-64d9822fd0aa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Prospects','module',90,0),('9f1f4baf-3a7d-66ad-3689-64d9826a7bf5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_Products','module',90,0),('9f6840f6-1920-d54d-5cc9-64d98263aa40','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Prospects','module',90,0),('9fac9157-e57c-9e5e-4a3c-64d9826b422b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_Products','module',90,0),('9ff92f8c-6cb6-55f1-bf7a-64d9822db131','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Prospects','module',90,0),('a091ab81-e6e1-89fb-2d42-64d982fd5de0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Prospects','module',90,0),('a1210dea-e5f4-f586-1618-64d98228442d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Prospects','module',90,0),('a1470086-243f-ca39-e969-64d982a6bd61','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','jjwg_Address_Cache','module',89,0),('a18697ad-bf6e-6aa5-5a0b-64d98288cce7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Prospects','module',90,0),('a1ef03e6-d24f-eec3-8be6-64d982e28e3a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Prospects','module',90,0),('a3300651-c364-851d-6936-64d982fe7b48','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Notes','module',90,0),('a3800196-9c51-357e-46c1-64d9822315d4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','FP_Event_Locations','module',89,0),('a3f2fa7e-0e83-c7fc-152e-64d982faee5c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','EAPM','module',89,0),('a4aacc1a-0c29-5c8c-11a0-64d9826600e3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','EAPM','module',90,0),('a53688fe-b73b-59ec-9736-64d9827ff7f4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','EAPM','module',90,0),('a5ae3e8d-aaeb-258b-5dcb-64d9826459d9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','EAPM','module',90,0),('a62159ac-1117-5f81-65f1-64d9823abbf2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','EAPM','module',90,0),('a6b8230b-8b39-bd80-fdca-64d982d07c0c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','EAPM','module',90,0),('a7350cdb-e92c-a581-dfd1-64d982faf0a6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','EAPM','module',90,0),('a7d97917-f0ac-d4c0-c241-64d9829cc7b3','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','EAPM','module',90,0),('a82da721-8f62-4267-afc8-64d98298a8b5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','EmailMarketing','module',89,0),('a8b30926-9450-50da-0a49-64d98214c669','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','EmailMarketing','module',90,0),('a92e2a38-cab1-9032-87ee-64d982ba0248','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','EmailMarketing','module',90,0),('a9aa7fb1-5b22-66fe-d9d5-64d982697ebe','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','EmailMarketing','module',90,0),('aa1f1fa9-c73f-ca85-fac8-64d982d38a11','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','EmailMarketing','module',90,0),('aae0062f-3c82-2800-69fe-64d982e89478','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Notes','module',90,0),('ab1890d8-210d-3f3b-122a-64d9820ad4eb','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','EmailMarketing','module',90,0),('aba7d67d-b394-475e-11ff-64d98256907d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','EmailMarketing','module',90,0),('ac1da2bc-bcd6-72f7-3e8a-64d98274fbbb','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','EmailMarketing','module',90,0),('ac9b0488-218c-eaab-8e56-64d98205822a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOD_IndexEvent','module',89,0),('ad8801a5-c257-8070-403b-64d982c0bb41','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','jjwg_Address_Cache','module',90,0),('b203261f-59f3-704a-3c71-64d982a39ec1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOS_Quotes','module',89,0),('b2b48af7-5aaf-abde-b715-64d9824e2bf0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOS_Quotes','module',90,0),('b329059b-4c0d-538f-03d8-64d98214c87f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Notes','module',90,0),('b36975fd-b11d-2948-d80e-64d982742608','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOS_Quotes','module',90,0),('b414974e-ea30-f5a0-24ea-64d982119086','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOS_Quotes','module',90,0),('b4a1315f-1e25-31c7-7733-64d9821a6202','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AM_ProjectTemplates','module',89,0),('b4c538bd-a9f7-e726-b541-64d9828f5e16','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOS_Quotes','module',90,0),('b53d92f0-1b88-eaa8-64fd-64d982b2a009','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AM_ProjectTemplates','module',90,0),('b56131fe-aa1b-54c2-ca46-64d9822abb81','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOS_Quotes','module',90,0),('b5c6f75f-525f-27ea-f53a-64d982c4e6c5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AM_ProjectTemplates','module',90,0),('b5dcc294-4277-ec68-432b-64d982f2663f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOS_Quotes','module',90,0),('b6030f5f-f2d5-71a4-16e7-64d982fec9b4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOD_IndexEvent','module',90,0),('b64a4306-342d-bd01-fbe8-64d982a553e1','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AM_ProjectTemplates','module',90,0),('b65bc9e5-fb0a-9f90-27f2-64d982228f15','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOS_Quotes','module',90,0),('b6cad9ea-d6c9-977e-9028-64d982efd4e6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AM_ProjectTemplates','module',90,0),('b755682a-5994-a648-77b1-64d982ed0473','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AM_ProjectTemplates','module',90,0),('b7df5411-63a9-ba2c-306e-64d982e66d95','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AM_ProjectTemplates','module',90,0),('b863042d-af88-1424-9fa7-64d982643cf9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AM_ProjectTemplates','module',90,0),('b9290bab-f215-e3b8-985e-64d982d17842','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','jjwg_Address_Cache','module',90,0),('bc30078e-5fad-64f4-2ff4-64d982f8e9a4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Notes','module',90,0),('bef1019a-c655-fa1a-dab1-64d982093a1e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOD_IndexEvent','module',90,0),('bfb22012-53ac-2af5-29d9-64d982a384d5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Contacts','module',89,0),('c022948d-2e40-f50b-7fe2-64d98256c6ab','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Contacts','module',90,0),('c07d6135-a796-088f-9c53-64d9828c3775','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AM_TaskTemplates','module',89,0),('c0c5e880-e6b2-3ff3-f903-64d982418b8d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Contacts','module',90,0),('c1194394-b591-3591-741f-64d982b29e5d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AM_TaskTemplates','module',90,0),('c1467fb1-e287-7652-6315-64d982629033','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Contacts','module',90,0),('c18dc132-49a7-b933-8c75-64d9824dde03','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AM_TaskTemplates','module',90,0),('c1bd2894-bc00-d658-ecf1-64d982f128ad','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Contacts','module',90,0),('c201a409-7bcb-9ab7-e7e2-64d9821850ae','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AM_TaskTemplates','module',90,0),('c21e4d03-850b-922c-d46c-64d982af2635','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOW_WorkFlow','module',89,0),('c22837a4-b7e9-e54c-5353-64d982f13813','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Contacts','module',90,0),('c2966979-a507-dcce-295b-64d982900312','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AM_TaskTemplates','module',90,0),('c297e67a-0a43-0c7d-98f9-64d982e8d09a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Contacts','module',90,0),('c2d26692-50b7-6b26-5188-64d982b013dc','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOW_WorkFlow','module',90,0),('c3020bcf-2baa-426f-acca-64d982d43133','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Contacts','module',90,0),('c30b4e62-751a-2a35-c4e2-64d982348008','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AM_TaskTemplates','module',90,0),('c37c5a0d-12c9-e67c-12e1-64d982e796b4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AM_TaskTemplates','module',90,0),('c3a3e5f3-36f1-eecd-4806-64d982fa36f0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOW_WorkFlow','module',90,0),('c415db7d-b563-300e-b760-64d9822dfe4e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AM_TaskTemplates','module',90,0),('c4350a62-6fae-d6bb-f4c5-64d9821d4318','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Notes','module',90,0),('c457c591-58b0-c942-5328-64d9825fadd0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOW_WorkFlow','module',90,0),('c48f02a9-99f9-2a05-4dee-64d982ad8a6b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','jjwg_Address_Cache','module',90,0),('c4f0287c-e5b9-2afc-fd9a-64d982a93bc6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOW_WorkFlow','module',90,0),('c57272e1-bcf4-a7b1-1cbd-64d982dad596','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOW_WorkFlow','module',90,0),('c6193e05-094b-f345-8707-64d982b35969','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOW_WorkFlow','module',90,0),('c6a93f35-8965-9b48-a47c-64d98259479e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOW_WorkFlow','module',90,0),('c88109e2-204c-1a97-3d29-64d9825e2547','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOD_IndexEvent','module',90,0),('cd64273c-a542-4664-4a08-64d982f5d986','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOW_Processed','module',89,0),('ce0b5669-210f-ce64-a75e-64d982cdbbfa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('ce261ea5-c06c-95eb-ff3b-64d982b0f90e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOW_Processed','module',90,0),('ce890ee9-7f85-ebac-e587-64d982b5db5c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','jjwg_Address_Cache','module',90,0),('ce96a5d5-9722-46f7-4df0-64d982646a74','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('cebd6894-b4dc-3dcf-1ea3-64d982db2c70','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOW_Processed','module',90,0),('cef7091d-47b4-e6e9-16df-64d982d0c855','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Notes','module',90,0),('cf0a75eb-2575-eb11-74f0-64d98224c739','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('cf767011-3b9f-c706-a321-64d982550bce','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('cf822c4e-2fbf-efd8-9f19-64d982a23582','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOW_Processed','module',90,0),('d00d5ce5-f3a8-5910-ed0d-64d982fd505e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('d03e4325-1180-dd73-83cb-64d98211e581','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOW_Processed','module',90,0),('d094506b-3560-02c9-5cb8-64d982c2a7fe','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('d0ceb4ae-df28-3861-7ad7-64d9822524b7','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOW_Processed','module',90,0),('d130ba0e-5a56-709a-0c79-64d982396fd2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('d178ef99-929a-c7a4-254a-64d982126134','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOW_Processed','module',90,0),('d1df6a35-c453-f191-29cc-64d982cc510e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('d21f00d7-f983-860e-464b-64d98269e128','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOW_Processed','module',90,0),('d2b103bd-1b7d-45ad-cb46-64d9821addec','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOD_IndexEvent','module',90,0),('d71c0f23-a7fb-2fa0-f746-64d982ef946d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Accounts','module',89,0),('d7925ef3-c1d9-6a9a-99b3-64d9826fdbbc','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Accounts','module',90,0),('d7c73bb1-50c7-5873-f39d-64d982318c54','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','AOK_KnowledgeBase','module',89,0),('d8196a68-74a6-6f61-16bf-64d9829dbd89','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Accounts','module',90,0),('d881b39e-9453-cbd1-89a6-64d982b00e35','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Accounts','module',90,0),('d8988243-9395-efd5-b0da-64d9829711a5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','AOK_KnowledgeBase','module',90,0),('d8b10418-b57e-7b56-9417-64d982505615','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','jjwg_Address_Cache','module',90,0),('d90d06fe-40d7-54b2-8a81-64d9825fc11a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','AOK_KnowledgeBase','module',90,0),('d9310556-7619-67ad-8fcc-64d9822aca97','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Notes','module',90,0),('d93ccbd0-04ac-b328-a6a8-64d9823a9920','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Accounts','module',90,0),('d97db654-35bd-1db8-45ba-64d982599e9d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','AOK_KnowledgeBase','module',90,0),('d9f4ebc5-e1f7-28c2-4f6a-64d982d9da63','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','AOK_KnowledgeBase','module',90,0),('da1580cd-531c-a8c8-0b9f-64d9828639e6','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Accounts','module',90,0),('da976730-3e9d-464c-39c4-64d98244363f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOK_KnowledgeBase','module',90,0),('db079a11-d3e6-ad57-cac0-64d982613204','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Accounts','module',90,0),('db3fe8b8-c600-367f-9fa5-64d9826c1456','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOK_KnowledgeBase','module',90,0),('db940e73-e61f-201a-53c5-64d982cf4d64','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','AOD_IndexEvent','module',90,0),('dbeef364-88e1-6b99-a7d2-64d982be51b9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOK_KnowledgeBase','module',90,0),('dc01ce72-3861-cdf5-893f-64d982b2807c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Accounts','module',90,0),('dc2fe179-9cba-60f6-546a-64d982f61946','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','jjwg_Maps','module',89,0),('dcde8425-0ada-16f4-9686-64d982558522','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','jjwg_Maps','module',90,0),('dd8f6fbc-10ad-9ab8-3d79-64d982f8cb6c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','jjwg_Maps','module',90,0),('de3c7119-a85f-40c1-8f9b-64d982bc8fcf','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','jjwg_Maps','module',90,0),('ded152f1-23e7-caf0-eb54-64d9820d072e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','jjwg_Maps','module',90,0),('df638023-5dbf-fef5-11e7-64d9828855e9','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','jjwg_Maps','module',90,0),('dfedf8d7-ec41-2f4e-286e-64d982976f6f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','jjwg_Maps','module',90,0),('e0745833-9367-e195-fb17-64d982a7fbbf','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','jjwg_Maps','module',90,0),('e2470bb4-75e4-9157-dca8-64d982356928','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','jjwg_Address_Cache','module',90,0),('e4070d8a-0de0-1aea-542b-64d982af76fd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','AOD_IndexEvent','module',90,0),('e800054f-8b5b-bb92-844e-64d982057d7f','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','EmailTemplates','module',89,0),('e81cc473-bbe4-46fa-2b4a-64d9829c4c87','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','jjwg_Markers','module',89,0),('e887672c-8c09-efd8-2faf-64d98292635c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','Opportunities','module',89,0),('e89a62a6-87a8-6053-c12d-64d98228559d','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','jjwg_Markers','module',90,0),('e93dd4d2-5323-f55f-3238-64d9820ae2ca','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','Opportunities','module',90,0),('e944c060-2505-0719-2265-64d982e25ec4','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','jjwg_Markers','module',90,0),('e9cbb9ab-0727-2938-7747-64d98290ea98','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','Opportunities','module',90,0),('e9d1bf00-6114-9252-9a13-64d98216d5e2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','jjwg_Markers','module',90,0),('ea470642-3f24-dfaf-10d1-64d982e1fd45','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','Opportunities','module',90,0),('ea50e33f-36b5-2028-5fe3-64d9821f4ce8','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','jjwg_Markers','module',90,0),('eabe56aa-70f0-e64d-baff-64d982211b78','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','Opportunities','module',90,0),('eaf7694c-def1-7ca9-503b-64d982d39b52','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','jjwg_Markers','module',90,0),('eb35f48b-e06e-ecff-8cf3-64d9820c4884','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','Opportunities','module',90,0),('eb8cd002-b20d-b14e-9c61-64d982cc1351','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','jjwg_Markers','module',90,0),('eba408a3-c3d8-4e50-91f3-64d982b29e3b','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','jjwg_Address_Cache','module',90,0),('eba8613e-63af-505c-ed92-64d982b18bdb','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','FP_events','module',89,0),('ebae5c6a-44fb-fe3e-bb5f-64d982fe9733','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','Opportunities','module',90,0),('ec2151c8-ce47-ae07-f7fb-64d982e7c969','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','FP_events','module',90,0),('ec230930-b430-2d9f-b44a-64d9827b8000','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','Opportunities','module',90,0),('ec2cb27e-00b6-1727-02b2-64d982ebe73a','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','jjwg_Markers','module',90,0),('ec8fcbf5-7a87-7fc7-b4d3-64d982719702','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','list','FP_events','module',90,0),('ecfa4348-0783-dee2-6cb9-64d98251a87e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','edit','FP_events','module',90,0),('ed5700f6-17f5-ecdf-1539-64d982a726ae','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','AOD_IndexEvent','module',90,0),('ed6778f8-7702-d179-d0d6-64d9827d127c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','delete','FP_events','module',90,0),('edd69b09-7756-dab9-83c8-64d9826dcb3e','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','import','FP_events','module',90,0),('ee47a6ba-d763-13b6-6ddf-64d98291f624','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','export','FP_events','module',90,0),('eec31623-772a-57e1-8bba-64d982332126','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','massupdate','FP_events','module',90,0),('f3108b6a-3ac4-fb79-96c5-64d9821084e2','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','access','jjwg_Areas','module',89,0),('f3d2a6f8-b40b-cc98-2e38-64d982817c46','2023-08-14 01:26:31','2023-08-14 01:26:31','1','','view','jjwg_Areas','module',90,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_audit` (
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
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `am_tasktemplates_audit` (
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
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2023-08-22 14:46:39','2023-08-22 14:46:39',NULL,NULL,NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aod_index_audit` (
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
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('14aa5263-e2d6-3798-21e2-64e4f1c2500f','Ronny Plaza','2023-08-22 17:35:00','2023-08-22 17:35:00','1','1',NULL,0,NULL,NULL,1,'d8bd72c4-aacc-fde0-e38a-64e4f13264ce','Accounts'),('35b0b3b1-4b70-b05c-c214-64e4f2725d09','Separar Cita Odontologica','2023-08-22 17:36:48','2023-08-22 17:36:48','1','1',NULL,0,NULL,NULL,1,'21e95c3c-b62e-14cb-8349-64e4f289f7b5','Tasks'),('58baa3a7-90dd-7b94-b03c-64e4f27e23ea','TPLINK TPL0074 - RE315 Datasheet.pdf','2023-08-22 17:39:00','2023-08-22 17:39:00','1','1',NULL,0,NULL,NULL,1,'ce9ac145-2f17-f7fd-5c30-64e4f235857c','DocumentRevisions'),('6c5220ac-68f2-9624-4718-64e4f221899a','ficha clinica','2023-08-22 17:39:01','2023-08-22 17:39:01','1','1',NULL,0,NULL,NULL,1,'c945e01b-a4d2-a567-67ec-64e4f2fd0e51','Documents'),('83032c1c-3aae-9422-2320-64e4f2504dcb','TPLINK TPL0074 - RE315 Datasheet.pdf','2023-08-22 17:39:40','2023-08-22 17:39:40','1','1',NULL,0,NULL,NULL,1,'2d59b551-1552-ad35-c7a3-64e4f2102c27','DocumentRevisions'),('90838e89-f4c9-6075-a784-64e4f22b8d23','ficha clinica','2023-08-22 17:39:40','2023-08-22 17:39:40','1','1',NULL,0,NULL,NULL,1,'2980387d-9779-5647-8f43-64e4f251de7d','Documents');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aod_indexevent_audit` (
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
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
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
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_audit` (
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
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_events_audit` (
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
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aop_case_updates_audit` (
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
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_reports_audit` (
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
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_audit` (
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
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_invoices_audit` (
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
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_line_item_groups_audit` (
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
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` longtext DEFAULT NULL,
  `pdffooter` longtext DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_pdf_templates_audit` (
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
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_product_categories_audit` (
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
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_audit` (
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
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_products_quotes_audit` (
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
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_audit` (
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
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  `run_on_import` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `aow_workflow_audit` (
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
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `calls_reschedule_audit` (
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
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `tracker_name` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `name` varchar(255) DEFAULT NULL,
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
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTozMzp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjEwOiJBT1NfUXVvdGVzIjtpOjY7czo4OiJDYWxlbmRhciI7aTo3O3M6OToiRG9jdW1lbnRzIjtpOjg7czo2OiJFbWFpbHMiO2k6OTtzOjU6IlNwb3RzIjtpOjEwO3M6OToiQ2FtcGFpZ25zIjtpOjExO3M6NToiQ2FsbHMiO2k6MTI7czo4OiJNZWV0aW5ncyI7aToxMztzOjU6IlRhc2tzIjtpOjE0O3M6NToiTm90ZXMiO2k6MTU7czoxMjoiQU9TX0ludm9pY2VzIjtpOjE2O3M6MTM6IkFPU19Db250cmFjdHMiO2k6MTc7czo1OiJDYXNlcyI7aToxODtzOjk6IlByb3NwZWN0cyI7aToxOTtzOjEzOiJQcm9zcGVjdExpc3RzIjtpOjIwO3M6NzoiUHJvamVjdCI7aToyMTtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtpOjIyO3M6MTY6IkFNX1Rhc2tUZW1wbGF0ZXMiO2k6MjM7czo5OiJGUF9ldmVudHMiO2k6MjQ7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtpOjI1O3M6MTI6IkFPU19Qcm9kdWN0cyI7aToyNjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtpOjI3O3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtpOjI4O3M6MTE6IkFPUl9SZXBvcnRzIjtpOjI5O3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtpOjMwO3M6Mjk6IkFPS19Lbm93bGVkZ2VfQmFzZV9DYXRlZ29yaWVzIjtpOjMxO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtpOjMyO3M6NzoiU3VydmV5cyI7fQ=='),('portal','on','0'),('tracker','Tracker','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','0');
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
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
INSERT INTO `document_revisions` VALUES ('2d59b551-1552-ad35-c7a3-64e4f2102c27','Documento Creado','2980387d-9779-5647-8f43-64e4f251de7d','','Sugar','','2023-08-22 17:39:40','1','TPLINK TPL0074 - RE315 Datasheet.pdf','pdf','application/pdf','1',0,'2023-08-22 17:39:40'),('ce9ac145-2f17-f7fd-5c30-64e4f235857c','Documento Creado','c945e01b-a4d2-a567-67ec-64e4f2fd0e51','','Sugar','','2023-08-22 17:39:00','1','TPLINK TPL0074 - RE315 Datasheet.pdf','pdf','application/pdf','1',0,'2023-08-22 17:39:00');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES ('2980387d-9779-5647-8f43-64e4f251de7d','2023-08-22 17:39:40','2023-08-22 17:39:40','1','1','Se guarda la ficha clinica del paciente',0,'1','ficha clinica','','Sugar','','2023-08-22',NULL,'Knowledege Base','','Active','2d59b551-1552-ad35-c7a3-64e4f2102c27','',NULL,0,''),('c945e01b-a4d2-a567-67ec-64e4f2fd0e51','2023-08-22 17:39:00','2023-08-22 17:39:00','1','1','Se guarda la ficha clinica del paciente',0,NULL,'ficha clinica','','Sugar','','2023-08-22',NULL,'Knowledege Base',NULL,'Active','ce9ac145-2f17-f7fd-5c30-64e4f235857c',NULL,NULL,0,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
INSERT INTO `documents_accounts` VALUES ('606b9deb-7808-b8fb-b28c-64e4f205d928','2023-08-22 17:39:00',0,'c945e01b-a4d2-a567-67ec-64e4f2fd0e51','d8bd72c4-aacc-fde0-e38a-64e4f13264ce'),('87ae3071-e004-ea73-a8a3-64e4f26b11b5','2023-08-22 17:39:40',0,'2980387d-9779-5647-8f43-64e4f251de7d','d8bd72c4-aacc-fde0-e38a-64e4f13264ce');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('d8cfa360-1f28-3441-e770-64e4f115dc81','d931a26b-424d-81c2-a708-64e4f1dcdba7','d8bd72c4-aacc-fde0-e38a-64e4f13264ce','Accounts',1,0,'2023-08-22 17:34:59','2023-08-22 17:34:59',0);
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
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('d931a26b-424d-81c2-a708-64e4f1dcdba7','proyectos@branwares.com','PROYECTOS@BRANWARES.COM',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2023-08-22 17:34:59','2023-08-22 17:34:59',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_addresses_audit` (
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
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('2050d29c-4dc5-9508-f974-64d982bcfcad','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('21611889-073f-d385-33bd-64d982ff9fdd','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('2235aab4-72e6-807a-708c-64d98260c6d0','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('3fc66405-8e84-cae0-a771-64d98259a6df','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,'system'),('41614041-68aa-d8b5-f6e1-64d982f9cf52','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('42b63ffd-fb33-3611-2813-64d98251fa53','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,'system'),('4b03823e-d0bb-375f-6a54-64d982c79e1c','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('4c248ffe-86fb-3cf3-913a-64d98218bed5','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('54fba302-290a-1846-b000-64d9825e5263','2013-05-24 14:31:45','2023-08-14 01:26:31','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','\n<p>Dear $contact_name,</p>\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\n<p>$fp_events_description</p>\n<p>If you would like to accept this invititation please click accept.</p>\n<p> $fp_events_link or $fp_events_link_declined</p>\n<p>Yours Sincerely,</p>\n',0,NULL,NULL,'system'),('e0f4e45a-7a08-b06a-8828-64d98205ebaa','2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>',0,NULL,NULL,'system');
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
  `related_confirm_opt_in` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`),
  KEY `idx_email_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_connections`
--

DROP TABLE IF EXISTS `external_oauth_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_connections` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `client_id` varchar(32) DEFAULT NULL,
  `client_secret` varchar(32) DEFAULT NULL,
  `token_type` varchar(32) DEFAULT NULL,
  `expires_in` varchar(32) DEFAULT NULL,
  `access_token` text DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `external_oauth_provider_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_connections`
--

LOCK TABLES `external_oauth_connections` WRITE;
/*!40000 ALTER TABLE `external_oauth_connections` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_oauth_providers`
--

DROP TABLE IF EXISTS `external_oauth_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `external_oauth_providers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `connector` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` text DEFAULT NULL,
  `url_authorize` varchar(255) DEFAULT NULL,
  `authorize_url_options` text DEFAULT NULL,
  `url_access_token` varchar(255) DEFAULT NULL,
  `extra_provider_params` text DEFAULT NULL,
  `get_token_request_grant` varchar(255) DEFAULT 'authorization_code',
  `get_token_request_options` text DEFAULT NULL,
  `refresh_token_request_grant` varchar(255) DEFAULT 'refresh_token',
  `refresh_token_request_options` text DEFAULT NULL,
  `access_token_mapping` varchar(255) DEFAULT 'access_token',
  `expires_in_mapping` varchar(255) DEFAULT 'expires_in',
  `refresh_token_mapping` varchar(255) DEFAULT 'refresh_token',
  `token_type_mapping` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_oauth_providers`
--

LOCK TABLES `external_oauth_providers` WRITE;
/*!40000 ALTER TABLE `external_oauth_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `external_oauth_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2023-08-14 01:26:31',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2023-08-14 01:26:31',0,0,0,0,1,'true','8','','','');
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
  `name` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_audit` (
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
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_audit` (
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
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `connection_string` varchar(255) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT 143,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `sentFolder` varchar(255) DEFAULT NULL,
  `trashFolder` varchar(255) DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `move_messages_to_trash_after_import` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `auth_type` varchar(255) DEFAULT 'basic',
  `protocol` varchar(255) DEFAULT 'imap',
  `is_ssl` tinyint(1) DEFAULT 0,
  `distribution_user_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `create_case_template_id` char(36) DEFAULT NULL,
  `external_oauth_connection_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_address_cache_audit` (
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
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_areas_audit` (
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
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_audit` (
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
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jjwg_markers_audit` (
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
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `reminder_time` int(11) DEFAULT -1,
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
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) DEFAULT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `reply_to_name` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'SMTP',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '25',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('48140ed5-8b19-3c76-311f-64d982be1ce5','system','system','1',NULL,NULL,NULL,NULL,NULL,'SMTP','other','','25','','',1,'0',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_email_audit` (
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
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
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
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
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
  `relationship_type` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `name` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
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
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('11bfdb5f-d961-65b8-76bc-64e4d3d7315f','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11f88571-43bf-5055-a214-64e4d3d6d11e','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1226444d-addb-8545-a729-64e4d3a78dff','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1252c39c-3af4-94b2-61f7-64e4d34f817d','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16b5de89-fbf0-28cd-2b97-64e4d34376f8','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('16e56865-c355-0a83-9848-64e4d3cb79a2','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('17071ddd-6a6a-55d3-2253-64e4d3183ee2','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1734846e-8c60-6662-438f-64e4d3eba8b5','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1766c4d5-3d1c-87de-54ea-64e4d32abb18','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('1af9ea9a-a96a-5082-a0a4-64e4d3a27971','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b210b88-e739-6502-93d6-64e4d398f33d','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b493ad2-dd46-8010-d410-64e4d3257c89','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b6a7979-f503-30e9-0d97-64e4d323e3fb','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('1b9620f0-f97f-4811-8ccb-64e4d3437a6d','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bbc2b47-edf0-b34b-be8f-64e4d37d602c','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bdd2985-f01d-39bc-d902-64e4d3d0b77f','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1dc008ab-a084-8f8d-973e-64e4d3ec801e','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f26708e-4da5-0784-4bbc-64e4d32a9688','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f562e32-2cfa-d447-c21c-64e4d3c9d6d5','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('216c0008-d661-7307-8969-64e4d37ef730','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2291d9f8-e71e-6b5f-dae4-64e4d34172a9','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22bcb4b9-4608-c799-0440-64e4d30802d5','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22e1c55b-27a6-4d43-5a25-64e4d3f15594','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('235f006c-e5a7-c777-6257-64e4d3fb551d','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('239dd1aa-1fb9-38d8-ab4b-64e4d3f17c06','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('23c73b19-72ed-b76b-b5e2-64e4d3f6b74e','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('23ed3a3c-eb90-b4c3-3b40-64e4d36296e1','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('24192609-3211-d2b4-e8fc-64e4d36e3c96','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('242d0603-7d39-e4ec-5e1d-64e4d3d781e0','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2440cc9b-c9a0-6148-919e-64e4d30c0110','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('2468f3c3-447d-7a7b-3312-64e4d39d496f','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2490abcd-d8c9-d954-ff9c-64e4d349218b','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('24b2f9b4-7ad1-51db-bf23-64e4d3e45ee1','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('24dcbd4a-1b66-5557-ec35-64e4d3cd4574','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('25026b01-2240-9cae-1f1d-64e4d38cc81b','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('252be122-58a7-3f50-b81c-64e4d3ee8719','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('25544495-80e3-7818-ca8e-64e4d39d92da','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('2667a562-70d4-fd14-f399-64e4d3c97aa7','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26984853-7b5e-94f8-3e98-64e4d37c615b','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26e4077f-a351-5a99-373a-64e4d3dd7184','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('29840813-6bc1-6eb5-649d-64e4d3626b5a','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('2ae8c170-cfff-4e44-28d4-64e4d39930c0','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b181625-0693-8604-2bc8-64e4d3e2f97c','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b404806-4289-b67f-abf2-64e4d314699e','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b42ee53-4af0-2aca-a67c-64e4d3d4597d','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b69791f-5142-c32b-8ef1-64e4d318f52f','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('2b6a2ea8-959a-2bca-4173-64e4d348eb5e','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b870fc4-7e32-095a-6778-64e4d34cc793','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('2b8c70f2-2274-7d03-172e-64e4d3e44e40','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('2b9014c5-83a2-6ee2-cd10-64e4d3d9969d','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2bb383f9-7d88-bdf8-825b-64e4d3df6f69','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2bda6079-6fc8-bf6c-acb2-64e4d3d48901','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2bfc7ce5-1f15-efd1-6ae8-64e4d343c1f0','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2c2ffc63-057d-353d-02db-64e4d3f7f83c','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2c5a8b22-d7a4-5ecd-9593-64e4d335c630','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('301af703-ba85-8d71-8e62-64e4d3891c72','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30484e37-8111-ab07-afd6-64e4d3e2d1dd','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('306ba606-2d77-30c6-f7f9-64e4d39437c4','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30951b1f-ceab-3c65-906f-64e4d363eba9','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('30cc1fcd-02e4-4d06-d2d2-64e4d3eb7b9b','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('30f68a15-8f83-adff-de8a-64e4d38b27a8','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('3119af38-2535-a256-fa5f-64e4d32b02c1','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('3135f862-a11b-4d03-44d3-64e4d3ff7c09','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('314191c0-f19d-95c4-aa4c-64e4d3afd688','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('3166595d-e2d2-d6d1-575d-64e4d3619dc3','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('316fc713-0258-0790-5b1d-64e4d3984a33','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('319f4628-80f9-bf32-7faf-64e4d38ef5b9','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31a8b35a-b70a-5d3a-13d4-64e4d37fb034','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('31d8ffc9-f8f1-591e-e0fe-64e4d3078697','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('320aadbf-10d4-4fb1-afe2-64e4d35393c8','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('3239c12a-93d4-5516-57c3-64e4d3585198','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('3260fc65-d2b2-7207-f62d-64e4d3543def','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('328b01f2-64c9-274c-80db-64e4d324581e','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('32b9920a-efa4-bfa5-d320-64e4d3bc61e3','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('32e607b0-30e6-309a-9fba-64e4d32b7fb0','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('330fbfe8-3941-f47b-9d49-64e4d309ab5b','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('338de1a0-4d76-3b5f-006a-64e4d3275bee','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33b5c8e8-9f19-6d4c-667f-64e4d31a6f48','users_users_password_link','Users','users','id',NULL,'users_signatures','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33d5f1e7-cce4-e89d-572b-64e4d3266e23','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('34012158-1885-00da-9f33-64e4d38db8cf','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('3572f9c0-01e7-8920-4507-64e4d367ec6d','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35a46bd4-fc7d-b94d-3e14-64e4d36af3a2','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35cead7b-36d3-bdb6-d22a-64e4d35cd58e','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35d74ca8-fe4e-1233-fbbf-64e4d31348a2','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35fe3072-50f2-64c1-4746-64e4d35d3bb5','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('360cc963-5a43-0e62-1d41-64e4d335d698','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('362b0306-bba3-3f83-cc5b-64e4d3837ada','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('363afc38-3fdf-db38-9035-64e4d3fc9df0','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3667fd29-1e72-8a69-a60d-64e4d3e1e054','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('369805af-ff74-fa5a-f69f-64e4d3165bad','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36bfe53b-91d8-dd3a-e6b9-64e4d3d21e19','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a127b3d-7c93-a9cc-c614-64e4d3b566ae','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('3a573b02-c36f-8e86-1988-64e4d3f77160','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3a82c3c1-e903-4699-f425-64e4d3240748','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3aa671db-5360-cb31-bca7-64e4d3ed32af','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3ad27690-d4b9-e7f3-41dc-64e4d30f258d','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3ae0683c-4752-bc23-4d3c-64e4d3e3a21f','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3aff0c4a-e6c9-5b10-4bc3-64e4d3e659cf','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3b105515-0ba0-83ba-4e55-64e4d3aaface','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b246839-f8e5-8f5a-736a-64e4d31a2fff','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b3e03a1-f17e-33cc-fcb6-64e4d3be8213','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b520219-8e10-ea74-a245-64e4d39aa361','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b64e17c-2f52-d6fb-cdc0-64e4d35141c8','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('3b8ddc99-ea39-ea83-9424-64e4d3a44db2','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3be9bbc9-180e-3240-787c-64e4d37e6fe5','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f12fb5b-db79-34dc-8fb4-64e4d31689ec','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f41d3d2-93eb-e5d7-21c9-64e4d3a53c77','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f6c9698-bde6-c29f-a4db-64e4d3a5de4f','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f92029a-e09f-b59b-404a-64e4d3885436','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('3fbbee06-26cd-787e-a79b-64e4d35b12fc','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('400950a0-0bb3-d1b9-5b78-64e4d3824a39','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('4039d8bc-c71b-1d35-5cf1-64e4d3be3c5c','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('4064e6a5-7c7d-f7e9-c588-64e4d3a1c36e','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('408894cb-cf92-bae1-94ca-64e4d3a691b1','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('40b0a4a8-ffff-8504-a020-64e4d30fbfba','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('40db3a92-d8a7-42db-d08b-64e4d35e5cd6','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('40fee15f-bc33-29b2-5d3a-64e4d33ff3e0','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('412a4ec8-5d05-38c1-f2f3-64e4d3cee4d2','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('415615c9-0a9a-df21-0e67-64e4d3dc3eb5','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('43cf3c68-c080-60d3-aeff-64e4d3716a14','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('440ca748-fc09-7ec6-8244-64e4d3e1ca21','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('443344d3-2cc1-268a-7d88-64e4d32d734d','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('445fcc2a-ae40-205a-118d-64e4d3aa1b1a','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('448b3bf4-adb0-f37e-a2d5-64e4d3fde36c','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4541b540-4f9a-ae4d-ee08-64e4d3c13472','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('456b2ddc-648a-1e23-47d5-64e4d3ab681a','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45948ba0-df23-dfb8-0964-64e4d3ba86f5','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45ba0966-1801-d7fa-8749-64e4d35363df','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('45e02ad6-d60b-8032-93d6-64e4d3730358','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4607d09a-1cc6-d626-8c87-64e4d35260eb','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4628f751-2410-4b98-a60e-64e4d37d9846','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46553605-e9db-b24e-b73f-64e4d3fbd9ea','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('467fec2e-4834-18e1-f438-64e4d361f118','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('46c97b84-d914-3b2c-54de-64e4d3c25bac','campaign_notes','Campaigns','campaigns','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Campaigns',0,0),('4730102a-6dd8-3834-8bef-64e4d3474f8c','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4756d391-55aa-3eb8-6709-64e4d368a60e','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47804696-971f-9df2-ac60-64e4d3b119b1','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47a5e94e-05ad-4a47-f9d5-64e4d302d919','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47ca34d0-751f-8003-56eb-64e4d3e3222d','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47f333f3-d434-eec2-c649-64e4d36a6818','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('487e2531-973c-9dfe-32dd-64e4d31fc02d','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48b3c70d-6795-fdcb-ddba-64e4d39cab8f','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48d94ae5-7ce1-1b17-fecb-64e4d31ed908','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49000296-c929-20a0-cbce-64e4d3e7e022','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b613b72-69a2-664e-7804-64e4d3eb33cb','prospectlists_assigned_user','Users','users','id','ProspectLists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b91555e-6499-e50f-c2d8-64e4d33a4c13','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('4ccc84cb-45f1-fdcd-e838-64e4d35e822d','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4cfbf83d-3fe1-86fc-6aeb-64e4d376ab5f','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d238b57-0f13-aaa3-fe22-64e4d34aba8c','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d49c259-c18b-ab3d-fa2e-64e4d36298b4','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fec58a0-b827-f230-4023-64e4d3c5b006','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('501a6bbc-f07e-a85d-75be-64e4d38814f2','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50418f9a-dfb5-10e4-6379-64e4d32ebd30','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50655a13-2e42-2871-1564-64e4d382a050','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('508e4714-b6cf-0810-3348-64e4d35bf863','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('50bd3853-f5c9-e6a4-c52f-64e4d3bab43f','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('50e4f1fb-4246-97d8-3584-64e4d365f329','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5111a0e9-205f-44b8-bd78-64e4d398e747','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('513d8431-1d31-8598-9eae-64e4d37db033','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('5148bc17-b10f-42aa-2e2b-64e4d39ff00f','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('515db0b6-b651-2f7e-fe73-64e4d3d55a04','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('517b8d47-50df-54f4-da48-64e4d38082de','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51804337-67fc-59b8-3797-64e4d36c219c','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('519fba4a-43ab-18ab-3d4d-64e4d38ac17a','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('51a3da0c-570f-5093-6e62-64e4d303195d','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51d126ba-f903-ef91-3766-64e4d38f3bb8','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('51fea942-dc5f-be42-c8cb-64e4d35e95b4','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('522d5b9f-8a78-2a85-5d13-64e4d37bc269','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55969c61-dab2-7525-4389-64e4d360cc45','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('55c6ffb3-5070-ab38-1662-64e4d38bad78','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56006247-c56e-d270-82ff-64e4d3e51f0b','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56469295-3181-e312-d23d-64e4d3989364','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57fc0b19-a4a3-8319-ea45-64e4d355388b','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a1e2393-d90b-2b6f-379f-64e4d380df3b','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a83d242-9113-dc93-17e0-64e4d3227b8f','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ad5e4b5-8654-6540-d800-64e4d339c2bd','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b166353-e84d-a5b7-201d-64e4d34c136f','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('5b422dc4-44c3-a244-82ad-64e4d3396aae','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b6d16e5-33a9-dc94-c910-64e4d3891d93','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bc19a3c-079b-cad4-0373-64e4d36bfd16','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f458a29-e816-fb61-5b5f-64e4d3ae2041','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5f754645-7b0e-abd5-755d-64e4d330c6bb','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60068b71-2349-04e1-96b3-64e4d365363b','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('603a304c-d32c-99c5-d340-64e4d3a26080','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60682212-5a99-fe35-1208-64e4d375472e','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60c599d7-eeee-ab99-f765-64e4d3aa093d','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62f17fcf-6a7b-cce7-1a3c-64e4d3fcdafc','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('633d3195-2e78-d632-5187-64e4d351d022','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('65d2a8b9-3b7a-ea12-1a6d-64e4d349e7e2','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6617e4e1-39fb-513d-fee7-64e4d31ad79c','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('665b2c3c-b88a-18f8-9806-64e4d345c327','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('668db5c0-7df8-a023-aaa0-64e4d313a32a','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('66be0027-aa8c-7f85-cf56-64e4d39a2bc6','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('6750b77a-1fc9-c3e3-de43-64e4d35069c9','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('67765949-5d15-3e9d-5e17-64e4d3cf4fd3','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67979843-c9c2-babb-777e-64e4d314e6d9','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67bf5ad1-9c9f-12bc-16a8-64e4d36e566e','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67e7a57a-5bd9-2feb-8e70-64e4d307cda3','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6808d84f-1ede-fd0c-40d1-64e4d33375fb','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('684b0958-f4ba-9a04-f3cb-64e4d3d56ed9','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('685d6f1b-2820-1ce9-23ea-64e4d3a55463','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('687cdf3f-4546-7d11-8ed3-64e4d32c74aa','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6897f0b6-f59f-ab04-009e-64e4d331eefd','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('68af9340-170a-9eac-dfc8-64e4d3d686e2','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68d33788-2efc-c678-885e-64e4d3a48c1d','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68d993cd-c3f3-0666-ee60-64e4d352a868','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('690bb096-2e59-7931-4cd3-64e4d3210fee','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('693aa5f3-b200-0c6e-0fa3-64e4d39fde4e','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('6953086c-9a4c-269d-3b74-64e4d3f749dd','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6966eada-56b1-4766-d48f-64e4d366884c','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('698f6ef7-c6c2-0320-e0db-64e4d339e502','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('698fcf3a-8e51-2929-f13d-64e4d3fea44a','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('69bd2eee-7e03-78ef-17a6-64e4d3c10c23','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('69d3e6f4-4551-c0fb-b2be-64e4d3e75ccb','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69ebc358-7ba8-92bb-59f1-64e4d3aaeb8a','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('6a1ae6d7-a18f-e5aa-e352-64e4d3717edb','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('6a4319a6-95c6-e4f5-d771-64e4d31c3d24','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('6e84a682-04ee-13e6-0701-64e4d3ae71e1','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6eb12eb4-d7d5-1ffe-757f-64e4d3a12c6e','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f24033b-18f2-7dc1-22e8-64e4d3e33584','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f94292d-f1bd-b254-f92e-64e4d3b61b4e','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7034b046-d34e-afa1-2e68-64e4d37cd341','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('70601a45-b155-3dca-d9de-64e4d33ffdb4','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7093478f-a8f7-ae62-a780-64e4d38dcdf9','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70c0acab-cacf-ceef-54b0-64e4d3994093','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70f93299-918c-ddcd-7042-64e4d3e4328b','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('7124ed10-db29-c7f8-9b69-64e4d31443f2','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('71587978-2be2-21ec-b6ac-64e4d3b64212','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('7185169e-84b9-dc3f-742f-64e4d34fdf2a','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71b3686f-7a87-fced-2c5a-64e4d3637884','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71dad366-2825-13a9-b2af-64e4d3185912','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('720f0ffe-f3b2-a565-752f-64e4d3e9d556','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('72470220-324f-9ff7-2a8b-64e4d33e76f4','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('724b357c-27ac-afa7-80fb-64e4d3b9a792','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('727da3ef-40af-92af-c7a9-64e4d3abcdde','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('72b24245-424e-5a88-85ee-64e4d3c39f6f','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('72e87534-2178-e208-c0af-64e4d3388fda','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('731437c4-0348-d1eb-b567-64e4d3f60b70','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('73485103-c053-0753-e60c-64e4d3c225f7','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73706ee1-41ac-95dc-72e1-64e4d35ee3e0','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('73a70d15-3410-94c0-90e3-64e4d3290422','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74743dee-4d12-3016-918b-64e4d3aa0971','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74a98e8a-7c62-2e51-87b8-64e4d3e059ce','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74d426e4-d7b7-7e3c-5389-64e4d3fcfdcf','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74f85fd8-5864-504b-def9-64e4d3f6f86a','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('76d80cf6-e93a-df34-ac9f-64e4d3abb1a3','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78eba36d-9cd0-5589-03c6-64e4d3904668','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('791ffa36-5dc0-7cf2-e327-64e4d36aff74','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('794def82-d2d6-af28-eb5c-64e4d3734ff7','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a266cc1-afbc-91ee-3409-64e4d3fa5e59','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a602d27-9b3a-2ab3-356c-64e4d3941b60','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7a969451-d026-9544-7ccb-64e4d3cc6c33','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ac795e7-d879-fee3-cb46-64e4d37c17e0','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('7aed28bb-8184-4f19-2f3e-64e4d35b4474','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7b158235-26fb-9f61-0b81-64e4d360fe68','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7b45a8fd-43eb-1b06-3d4c-64e4d30694eb','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7b76cd47-7e69-80db-67cd-64e4d3b49749','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7b994249-dab3-2ef4-9174-64e4d33cd041','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7bc02cfe-7196-d330-45b1-64e4d3c9fd00','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7beadc30-391b-b34b-bd23-64e4d38466ec','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c11e3fe-1229-d7b6-0b19-64e4d3602581','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c39b25c-cf25-6799-6c26-64e4d3fe57d5','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c5a8c88-4db0-165b-f60c-64e4d397fd7e','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cd97e20-364a-d68c-58f6-64e4d353de8f','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d32647e-0ae8-681c-2d41-64e4d3ad4f0f','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d609908-791a-8adc-1ea1-64e4d3f90bc8','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('803c2db4-a1f5-02c4-8ad9-64e4d3cb7c68','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('806f9b2c-1c81-1b99-fba5-64e4d3464018','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80de32c2-22a8-2872-e40a-64e4d3664348','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8126352d-41ba-86fe-e67e-64e4d38fc562','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('814f9ce0-09e5-8b2e-0465-64e4d3197347','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84a68656-7675-824f-d5c2-64e4d3c3bf9e','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84d9734a-6032-5ff6-159b-64e4d30f5110','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('850c06de-4f7d-eebc-a4c1-64e4d3997f84','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('853ea2af-1ecb-6efb-ed18-64e4d3c93ded','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('855e2337-9b5c-5bef-afbb-64e4d3ecca53','securitygroups_outboundemailaccounts','SecurityGroups','securitygroups','id','OutboundEmailAccounts','outbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','OutboundEmailAccounts',0,0),('85937e5e-4572-5fcf-c437-64e4d39228b6','outbound_email_owner_user','Users','users','id','OutboundEmailAccounts','outbound_email','user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85bc2f71-a990-c2d5-cb09-64e4d3ca1349','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85e3a764-b38f-ae0d-eb36-64e4d38d2198','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86143a6e-783a-bc27-9dac-64e4d341d33a','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89230423-8f88-d3bc-54a7-64e4d38a40d4','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8953f47e-328b-8f4e-8d53-64e4d3abed26','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89805f80-062b-4224-f005-64e4d33c0704','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8992a4f4-f6f9-fe42-a850-64e4d3e57eae','externaloauthconnection_modified_user','Users','users','id','ExternalOAuthConnection','external_oauth_connections','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89aa35c7-378f-6ac9-1059-64e4d3aa6852','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('89c921ed-13d2-1236-4944-64e4d38f4d90','externaloauthconnection_created_by','Users','users','id','ExternalOAuthConnection','external_oauth_connections','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89d444c5-5c4f-e832-af00-64e4d3663556','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('89f61fdb-3dda-0f17-27f7-64e4d37f727e','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89f64ece-577b-a31b-e40e-64e4d3b849ff','securitygroups_externaloauthconnection','SecurityGroups','securitygroups','id','ExternalOAuthConnection','external_oauth_connections','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthConnection',0,0),('8a3782ac-c6cd-f0a2-06a2-64e4d386d900','external_oauth_connections_external_oauth_providers','ExternalOAuthProvider','external_oauth_providers','id','ExternalOAuthConnection','external_oauth_connections','external_oauth_provider_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ca9354a-2cd4-793e-1cbf-64e4d3f02504','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8cd9ac37-9ac1-d3af-83b9-64e4d3f97b99','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d06b43b-4426-7222-44da-64e4d39b4dd8','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d29c6ce-0827-969e-c9f1-64e4d35920cb','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('8d586565-8f1a-0849-9755-64e4d3bc7a49','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8d858454-a360-58af-4ee9-64e4d3d66074','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('8dac52cb-1f6d-35c5-3ee5-64e4d383ff6a','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('8dd88400-82dd-a3a8-1b48-64e4d30bf129','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('8e087841-5b82-9af3-dc6a-64e4d3b9b048','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('8e299270-4d50-5e2b-ead7-64e4d35cc279','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('8eebc284-46d2-df53-9235-64e4d3224008','externaloauthprovider_modified_user','Users','users','id','ExternalOAuthProvider','external_oauth_providers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f200960-c59b-927f-ca91-64e4d3b51d26','externaloauthprovider_created_by','Users','users','id','ExternalOAuthProvider','external_oauth_providers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f48e8db-1abe-a3b2-ed2a-64e4d35beae0','securitygroups_externaloauthprovider','SecurityGroups','securitygroups','id','ExternalOAuthProvider','external_oauth_providers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ExternalOAuthProvider',0,0),('92667c20-f3e8-879b-f935-64e4d37066ef','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92931e8d-a885-2c6e-cf23-64e4d37c0d12','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92ba7f68-b23b-cf7c-09f1-64e4d32d4342','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92d772c3-4c03-0ffc-b64c-64e4d3318a04','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92df2fbf-4fe4-a22f-75ed-64e4d3d2bf6f','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('93032e0e-d2d3-d591-190b-64e4d3228ddf','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('9307a440-27cf-563f-a46d-64e4d3f72091','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('969c8769-cb0e-259c-1646-64e4d33a69eb','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96d28c38-3ec9-15cc-e1bc-64e4d32de548','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96f70524-69a4-5d42-c260-64e4d33c3e81','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97adc788-8c45-1f00-0c99-64e4d3bcdab4','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97de2fe7-85cf-c020-72fa-64e4d3a59858','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('980ef8a8-f69c-f7f9-641b-64e4d36e85c2','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('983df1e3-97b4-6f2c-64ed-64e4d394831c','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('9864c600-75f1-e69a-69b0-64e4d3f4ef6b','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a46e42a-cd65-9a52-1901-64e4d3cfdd40','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a7360b3-211e-8218-2cf7-64e4d32ec582','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a9d43a1-97e0-2e82-18d7-64e4d39a0774','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ad26c63-badb-96fb-c25d-64e4d3722c04','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e8a84d2-1c2b-dc7e-7fd6-64e4d3a09de7','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9eba1f1a-2f34-afc1-cf93-64e4d3780b6a','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9ee28544-e963-0058-95ee-64e4d37d70cb','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f053964-64b0-3411-81fd-64e4d3327f14','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('9f2d7266-57e5-4690-5069-64e4d3065284','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f57a330-c5f8-e2a4-c834-64e4d3e47d58','surveyresponses_contacts','Contacts','contacts','id','SurveyResponses','surveyresponses','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f80aeec-e9e4-3188-74bb-64e4d3de9a20','surveyresponses_accounts','Accounts','accounts','id','SurveyResponses','surveyresponses','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1c4b8f5-908a-7976-61ca-64e4d3bc1286','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1f0af74-b66c-9fe7-a29a-64e4d3187346','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a21e71ea-33f2-c80b-6ac3-64e4d3a45154','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a358ec04-7ea7-05bd-c859-64e4d3c4139c','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a38857d4-4c51-1758-937c-64e4d3dc1fc6','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3b88718-3dcd-f8d9-e571-64e4d3f621cc','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3df9b85-435a-f805-406c-64e4d3bf48ef','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('a40a4592-de2c-c2df-04bb-64e4d3d04846','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4349364-a4a2-a25d-3423-64e4d38e81df','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a456f330-8e83-9db6-7f7a-64e4d3acd0f2','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7a2d2e2-c13e-f53b-d307-64e4d3898813','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7d05561-d9b2-0b0e-6528-64e4d30c6ae6','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7f885f5-e1b2-9625-49e3-64e4d35e3a1e','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8207305-f8e3-7f17-7288-64e4d3209c84','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8211f2b-7566-03ff-8667-64e4d33c38c9','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('a84a2728-186d-c658-e0be-64e4d3439dfc','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8501b65-e64d-b7c7-680a-64e4d3d0189a','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a87d82ae-311e-ef2b-905e-64e4d372c09d','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8a58526-5093-4af2-9344-64e4d3a95e76','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('a9909fca-9e45-b09d-0b8f-64e4d3e3c800','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acd4b4cb-9072-dc96-d455-64e4d3eccee9','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad111305-ed51-4759-d841-64e4d348358f','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad3be1e8-e3e2-edce-331a-64e4d319bd9f','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad60797c-9080-b249-0f06-64e4d3472db2','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('ad8a27b9-c7fa-314c-e041-64e4d351b9be','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('adb547b7-9ac4-faa2-302a-64e4d3fc0185','surveyquestions_surveyquestionresponses','SurveyQuestions','surveyquestions','id','SurveyQuestionResponses','surveyquestionresponses','surveyquestion_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1430e34-b5c6-3782-075b-64e4d3e22323','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b17aef0e-60d8-a021-7120-64e4d337d16c','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1b5c477-846c-f66b-28bd-64e4d3a816c9','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1e32366-a8f2-8a90-3c73-64e4d37daae8','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('b54cbe61-4c94-4feb-49fa-64e4d329be8c','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('b57c12d0-801a-c047-4372-64e4d329d52b','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('b5ad9426-3520-f2ea-8d28-64e4d3a26966','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('b5e16e5d-2f1e-bdcc-85ef-64e4d3642975','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('b61dcd17-187f-c687-99a5-64e4d3f5037b','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('b6551c4f-7291-71d1-b347-64e4d32ae68a','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('b682425e-fe6f-9876-625d-64e4d364aa77','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('b6adaf81-294b-0ee9-cc7d-64e4d3e455ba','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('b6de7721-c951-e77d-ee66-64e4d3259db2','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('b70c0a51-8c91-6d35-ced2-64e4d3aa4e62','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('b7287d66-5737-fcf9-c97c-64e4d320a0d3','securitygroups_inboundemail','SecurityGroups','securitygroups','id','InboundEmail','inbound_email','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','InboundEmail',0,0),('b7499457-e64f-b83c-4b5e-64e4d36055da','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('b758eb30-54fa-397c-b199-64e4d331570e','inbound_emails_distribution_user','Users','users','id','InboundEmail','inbound_email','distribution_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b777bcc0-ed4c-7eb1-0cec-64e4d302b9d1','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('b782ecf7-a112-32a6-f85f-64e4d3aa404e','inbound_emails_autoreply_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7a4ea71-cbfe-44a1-f3d2-64e4d3e2143e','inbound_emails_case_email_templates','EmailTemplates','email_templates','id','InboundEmail','inbound_email','create_case_template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7c06d21-656b-3d1a-6fe9-64e4d3266a15','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('b7ca724b-3ba1-dbe5-19e9-64e4d310b0a2','inbound_emails_external_oauth_connections','ExternalOAuthConnection','external_oauth_connections','id','InboundEmail','inbound_email','external_oauth_connection_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7efcfbb-825c-6138-9f0a-64e4d3c81155','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('b7f593dc-a2f7-1bdd-e50f-64e4d301db8e','inbound_outbound_email_accounts','OutboundEmailAccounts','outbound_email','id','InboundEmail','inbound_email','outbound_email_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8217c28-dc65-e949-9654-64e4d3ad1f52','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('b8227183-5dfa-650b-30da-64e4d32674e8','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('b84fcd6b-8155-02fa-3674-64e4d3d2e081','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('b866d916-9657-f90e-dce1-64e4d332ea44','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('b8916f8f-8abb-6684-fac3-64e4d39c4197','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('b8c38ea8-f48a-c555-a62c-64e4d37362b5','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('b8f996d0-1156-0561-88a1-64e4d3277186','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('b9248438-44ef-9bd6-bdb1-64e4d37076b8','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('b952318e-9cfa-8554-e9cf-64e4d3dc771c','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('b982424e-c758-52f9-3ecc-64e4d3126ea6','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('b9b3631a-72f4-b9c1-7b06-64e4d360c9c1','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('b9d9a530-07b0-53f6-f88f-64e4d3b6dee5','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('ba53e537-d15b-20b8-8c0b-64e4d3ca90c3','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('bab23a92-1f2a-d955-4c1e-64e4d357a393','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('bada8f93-0e9b-3b52-b30a-64e4d39cd91d','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('bb05d605-fb3a-1583-1118-64e4d35e4d81','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('bb3327ee-053b-0529-08b4-64e4d3b8e2b2','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('bb594d56-5708-b84b-d14a-64e4d310beb4','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('bb646046-0db3-e03a-1125-64e4d35ff5ba','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb872c30-45e4-d59d-500b-64e4d3d7ce2e','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('bbb501f4-45ca-2340-f039-64e4d3250dcb','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('bbe2f8e5-7c52-3253-409d-64e4d352a056','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('bc13aa6a-b89e-05f5-9649-64e4d3df2a99','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('bc42b995-4b60-2608-6fb2-64e4d3e0fd44','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('bcac932a-5189-cae2-5cdc-64e4d3d4696f','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('bd19d707-1d40-9e7c-a37b-64e4d3c0254f','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('bd478026-02f6-7541-7911-64e4d380dc3c','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('bd790955-37b0-bcf7-8347-64e4d3a805bb','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('bda440de-bee4-7780-cfc9-64e4d31f988d','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('bdcff7e5-41c2-b59c-7ab3-64e4d3c23482','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('bdfbefae-9a95-7fda-c532-64e4d32ec992','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('be29492f-5415-daac-1d9b-64e4d3a70486','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('be6d5615-9903-5ce2-1614-64e4d3db68f6','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('bea197fd-8b56-9024-4bc1-64e4d33ce5fd','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('bed6c29d-a57b-ff96-03d2-64e4d3178713','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('bf038abf-bd11-1c9d-c204-64e4d3e8a1ea','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('bf2681b8-a2ac-d4e5-b1e7-64e4d35e2093','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('bf52ead9-7755-0586-bc29-64e4d39b5dc2','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('bf841434-5fbd-aa0c-ee07-64e4d39f5bd0','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('bfbb38b1-80f1-e705-1c73-64e4d3119bac','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('bfe8c8e2-833e-0bdc-38ab-64e4d3cfc5a2','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('c01667dc-3659-56aa-993a-64e4d3bc89cb','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('c04099d7-1723-5466-fbe3-64e4d39ac682','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('c07136e8-7912-99e9-4bd6-64e4d39a615e','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('c0a40973-2894-b6d6-8079-64e4d30b443f','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('c0d2af99-010d-f174-91e6-64e4d3baefe5','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('c1040027-b51d-b8e1-b322-64e4d3f2f881','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c10705f7-fb82-7488-d164-64e4d3ca4a82','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('c12d40ba-787e-fef5-b6d3-64e4d3d3517f','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('c133d293-9c35-0963-c7c6-64e4d3c480e8','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c15a1eda-964d-67c0-219e-64e4d33abd50','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('c15c3d08-ed4b-edf9-f2d8-64e4d3d9fc6e','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1810f47-2f31-2a15-da0a-64e4d3ed04e8','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('c185f4e5-e820-f8ab-28fa-64e4d3e7e1f8','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('c1ad18e2-a3d6-7d2e-06e4-64e4d3f7f47a','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('c1e06fac-7a8c-1b57-8a28-64e4d3856924','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('c2bf7cf4-9644-dfc8-c275-64e4d347a3cf','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('c2ea9ab3-dace-59fb-98b3-64e4d3ef402f','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('c32e5a90-2917-4693-c0b0-64e4d3062dbe','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('c35701a9-5ee6-2ee4-bb84-64e4d3c73fb4','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('c44c64af-b439-a731-ee9f-64e4d3be95ac','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c479d0af-e136-b410-2aec-64e4d3ddf253','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c79ed08b-db69-3ed3-9887-64e4d3ec27d2','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7c8d16a-09fe-d114-1414-64e4d3284dd0','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7f4dcdf-8504-346a-c37e-64e4d3e8b5ee','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cbf5d040-e04e-57e4-1b38-64e4d3b09cb0','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc2354c2-38a5-5508-f13e-64e4d306d215','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc4a01b0-8add-7d67-37d7-64e4d3d7b2dd','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cfc50275-f2f7-f8d8-ed1d-64e4d304bc57','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cff21301-1ad0-a6fb-acfc-64e4d3251383','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0162d62-5c5a-7c8f-c314-64e4d320fbe5','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d161532d-01c5-fbe5-bae2-64e4d379f634','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d184d8ae-5bca-5eb2-fb6b-64e4d3368a8f','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d4feee11-a513-31e3-58cd-64e4d3bff698','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d52a4968-3517-28a2-a63d-64e4d389b1c5','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d556e210-c8b7-0746-b29d-64e4d318dcd0','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9408c6c-a5eb-fe11-df4e-64e4d3520c1a','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d96c5c69-9688-d939-501d-64e4d38161cb','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d990b70e-5de2-1cf5-c53c-64e4d3caa4df','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da7f0108-8d14-1566-5c49-64e4d35d64c8','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc03bde3-645b-e1d3-f278-64e4d39d8bb2','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc30090a-79b2-47f7-55b0-64e4d3f4a1d7','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc5be10c-0944-f1bd-3bc4-64e4d30af342','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('de240b41-33db-ebca-8d17-64e4d3efb4f5','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfc4e929-678c-49d6-1d0c-64e4d33f51c5','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dff34470-a016-4560-62b5-64e4d375b669','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e01edcb6-7ad9-4d63-9a04-64e4d37d6d4c','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e15b0335-ba32-8df9-3cbd-64e4d3ef1da7','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e41e9c59-92b5-b24f-dd55-64e4d319ce6e','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e44ac6bc-580f-454b-2e68-64e4d3fb932d','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e478e0b0-ce85-3d1b-a199-64e4d34e692e','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e4aadac7-5529-6af1-0286-64e4d33be981','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('e8086e43-1a3b-f8e8-8620-64e4d3f491d3','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e842fdb0-556c-feaf-1574-64e4d32aefea','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e86dd11a-2d49-62a4-9572-64e4d3fd97c5','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ebfb2e58-4802-c38f-14cc-64e4d3bafcd2','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec250f7e-60bb-f0f8-33d6-64e4d398a335','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ec4e534c-da5a-4280-f4b6-64e4d363954b','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0a61c72-77e2-d576-948d-64e4d3438517','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f0d9b2cb-a261-f85f-0946-64e4d30519fe','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f1163e48-b8f6-5b27-d06c-64e4d30771f4','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f14e2ba0-dbc3-6488-0983-64e4d3ec5d81','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('102d7b30-9e50-1387-a65f-64d9820f6463',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 09:00:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('10e79538-9b99-c150-477f-64d982d3662b',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 09:30:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('116fc500-da85-b9e8-74db-64d98261a275',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 18:30:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('11ffd087-e073-1384-2946-64d982a7128a',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 07:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('1285e90e-4f9d-33b5-df9a-64d98221df34',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 14:00:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('130f31de-dcef-1106-fe80-64d9822a5e86',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 12:00:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('1395e631-b336-85d1-9288-64d982973faa',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 09:00:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('143ed844-f8db-935d-411f-64d98221d941',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 19:30:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0),('c28006f6-b4a1-91b9-e6d2-64d982f179f6',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 16:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('cbe205b9-655d-fb33-c954-64d9825be330',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 06:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('d5850773-3fa7-0b18-f83e-64d98204de79',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 09:45:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('de6808c5-6a46-2664-0b92-64d982ba0ad2',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 16:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('eb7106fa-470a-a380-77cd-64d98294762d',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 12:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('f75b0e9d-e043-f62d-4e2a-64d982df9dca',0,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 15:30:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_audit` (
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
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
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
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_audit` (
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
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestionresponses_audit` (
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
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestions_audit` (
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
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyresponses_audit` (
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
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'LBL_DRAFT',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveys_audit` (
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
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES ('21e95c3c-b62e-14cb-8349-64e4f289f7b5','Separar Cita Odontologica','2023-08-22 17:36:48','2023-08-22 17:36:48','1','1','Separar Cita Odontologica, por problemas en las muelas de juicio',0,'1','In Progress',1,'2023-08-25 12:00:00',1,'2023-08-25 09:00:00','Accounts','d8bd72c4-aacc-fde0-e38a-64e4f13264ce','','High');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (3,'1851704a-fce6-2994-9f0d-64e4f29ea07e','1','Accounts','d8bd72c4-aacc-fde0-e38a-64e4f13264ce','Ronny Plaza','2023-08-22 17:39:41','detailview','0a030809ff2814f7e7c3a5bb5e4e39c4',1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('8266885a-2b7b-e055-6e05-64e4eee57ef0','upload/upgrades/langpack/SuiteCRM core (es-ES).zip','8fc2da552a0109f0816a0ef845704bdc','langpack','installed','7.11.18.01','Spanish (Spain)','Traducción: www.crowdin.com/project/suitecrmtranslations','es_ES','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNToiU3BhbmlzaCAoU3BhaW4pIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NzoiVHJhZHVjY2nDs246IHd3dy5jcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjY6ImF1dGhvciI7czoxODoiQ29tdW5pZGFkIFN1aXRlQ1JNIjtzOjc6InZlcnNpb24iO3M6MTA6IjcuMTEuMTguMDEiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDIwLTExLTA3Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJlc19FUyI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2023-08-22 17:19:28',1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
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
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$2y$10$c6tgUbVCff0BEP1g/CWbWeQnscvhQR9Vhmt0RXI4GE1nNCrp3mvBW',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2023-08-14 01:26:31','2023-08-14 01:26:31','1','1','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `keyhash` varchar(255) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'suitecrm-353032390457'
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
