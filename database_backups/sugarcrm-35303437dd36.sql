/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for Linux (x86_64)
--
-- Host: sdb-67.hosting.stackcp.net    Database: sugarcrm-35303437dd36
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
  `account_type` varchar(100) DEFAULT '1',
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
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('10ef6a4b-db0f-7029-b0c3-667082a33ba1','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Users','module',90,0),('11720414-8876-1f1c-021a-667082d36fe0','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Bugs','module',90,0),('1242d98b-3e8b-40e7-48dd-667082e3943b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Users','module',90,0),('12afc5c7-4643-fd87-d6c5-667082a691d2','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Users','module',90,0),('131eebc0-c627-6369-8304-667082853ecc','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Users','module',90,0),('17380cf9-57f8-88f5-42c7-6670823b751b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Bugs','module',90,0),('1c9b096d-a0f2-17da-57ef-667082cca622','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Bugs','module',90,0),('1de13fdb-1f18-457e-1aa6-667082f40848','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Project','module',89,0),('1e404b49-940b-4178-1561-667082de326d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Project','module',90,0),('1ea7038c-7a03-c7bb-3b4b-6670824f1b5c','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Project','module',90,0),('1efad64b-40e7-5e5a-b584-6670821d81a2','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Project','module',90,0),('1f514239-8693-798d-e468-667082070299','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Project','module',90,0),('1fac8999-9416-d0a1-d336-667082e81917','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Project','module',90,0),('1ff881fc-c0a1-4a48-2aad-667082849d27','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Project','module',90,0),('204a6ab9-5811-cf34-a7e5-6670822527b8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Project','module',90,0),('21110b7b-fc38-25b2-46a0-667082fdde1e','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Bugs','module',90,0),('27d302c6-8890-84f2-06a7-6670826a7fb6','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','ProjectTask','module',89,0),('2845b578-8b85-f0f1-9bb7-6670825e58c3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','ProjectTask','module',90,0),('28a836c6-6a20-2665-fbec-667082f77d41','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','ProjectTask','module',90,0),('2901e5fd-85f6-1c5d-2176-66708253999f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','ProjectTask','module',90,0),('29584dc4-0ed3-99c0-8e0a-667082aff9af','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','ProjectTask','module',90,0),('29600c2f-4e63-87de-85f3-667082b5a6e6','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Bugs','module',90,0),('29b3e831-c8b6-f941-77f0-667082db6805','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','ProjectTask','module',90,0),('2a1a36bd-50ed-cdb3-f7c0-667082b1a45b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','ProjectTask','module',90,0),('2a7a3be7-f09d-9958-7672-667082c6d093','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','ProjectTask','module',90,0),('2e430b23-c044-300d-3d35-667082fd330e','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Bugs','module',90,0),('312e17c8-d030-ac9e-7e49-6670825af0f7','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','EAPM','module',89,0),('319175a8-22b9-8c2a-a167-6670822c3805','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','EAPM','module',90,0),('31e66c88-e12c-c281-0018-667082727c38','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','EAPM','module',90,0),('3243f6ac-944d-9943-8ff2-6670825444d3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','EAPM','module',90,0),('3293639a-3b01-4650-ec43-667082d41444','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','EAPM','module',90,0),('32e399e4-3ea1-4614-e178-667082f4baa0','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','EAPM','module',90,0),('3332fcde-380f-7068-3a19-667082c07b75','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','EAPM','module',90,0),('33a2ff3c-3907-eba4-edc3-667082c06c99','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','EAPM','module',90,0),('33d202e5-a59a-3c8f-b59a-667082ac4166','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Bugs','module',90,0),('3475d957-4646-208b-65e2-667082747dc4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Campaigns','module',89,0),('352324f5-007e-4eb0-9810-6670826d0fe8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Campaigns','module',90,0),('3573078a-231e-56f4-2265-6670829162c7','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Campaigns','module',90,0),('35cb0843-c118-1e02-d2d8-6670827f860c','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Campaigns','module',90,0),('36730ccd-fa78-2a8a-678b-6670829d3df7','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Campaigns','module',90,0),('36eebc15-4a3a-7c3d-4da5-667082becdd5','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Campaigns','module',90,0),('37475ffe-ded7-70dd-01c0-667082ad2013','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Campaigns','module',90,0),('37d38e99-0e23-00d9-b629-6670825a059c','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Campaigns','module',90,0),('42f4f8de-6598-389a-ea38-667082fa3d9e','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','ProspectLists','module',89,0),('435f767c-87f1-3d3a-867c-667082473895','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','ProspectLists','module',90,0),('43dbd7e8-6ddf-32a4-5568-667082a502b8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','ProspectLists','module',90,0),('4430d114-38f6-b932-c80a-667082651ec4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','ProspectLists','module',90,0),('44abe242-f930-40c4-3a35-6670825b98e1','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','ProspectLists','module',90,0),('453b0698-210f-40c2-6749-667082d510a4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','ProspectLists','module',90,0),('45d1055a-d22e-18b3-6b79-667082372a2f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','ProspectLists','module',90,0),('4642eabf-6602-0c04-3334-667082724282','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','ProspectLists','module',90,0),('4c8bcabd-2bf1-0617-e6f9-66708277ae67','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Prospects','module',89,0),('4d0304c9-f40e-edf3-d06d-667082373e27','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Prospects','module',90,0),('4d53bbd3-2797-d369-dda0-667082d723ae','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Prospects','module',90,0),('4da3dca7-e8ee-7104-85de-667082cfdc32','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Prospects','module',90,0),('4e1fd89a-586e-12d4-8edd-667082e328f0','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Prospects','module',90,0),('4e7d0f91-554e-802b-9d21-667082a67239','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Prospects','module',90,0),('4ef2af59-18ca-c93a-2220-667082e494ed','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Prospects','module',90,0),('4f6c48fd-ec29-414a-911f-667082fbf0a8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Prospects','module',90,0),('5742041e-0e1d-3ca8-6e0b-6670821fa136','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','EmailMarketing','module',89,0),('57ae2b39-3d74-cc69-de05-667082552720','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','EmailMarketing','module',90,0),('5818176f-6ece-3196-da4a-6670821e61dd','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','EmailMarketing','module',90,0),('58743d0e-cf5c-7409-090f-667082fe1803','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','EmailMarketing','module',90,0),('58f6d0f9-6bb8-2b94-ac8e-6670825bf44b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','EmailMarketing','module',90,0),('59669abe-b18a-38fe-3608-667082c65c1d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','EmailMarketing','module',90,0),('59b4d492-99ce-4d1b-c86f-6670823ca744','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','EmailMarketing','module',90,0),('5a14f208-525e-a9eb-b118-667082230a48','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','EmailMarketing','module',90,0),('6f1808ec-d732-9c65-313b-66708215f4dd','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Documents','module',89,0),('75f809c0-402f-0e9d-5d1a-6670828f9f24','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Documents','module',90,0),('766bf156-8afa-70b8-7a8d-667082cba9da','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Contacts','module',89,0),('76ce9322-76c3-10de-1b75-6670827f102d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Contacts','module',90,0),('7b0402f6-7ee4-e179-2fc3-667082e7974d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Contacts','module',90,0),('7b9d18eb-5f2c-0f67-ca6b-66708220b5a7','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Contacts','module',90,0),('7c2fd4df-0472-55c5-4ac1-667082abe60e','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Contacts','module',90,0),('7ca61935-8d36-a174-9139-66708272b5d0','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Contacts','module',90,0),('7d1f578d-9beb-ad2b-2c05-667082462851','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Contacts','module',90,0),('7d99f98a-b74f-12b2-b354-66708268fcba','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Contacts','module',90,0),('8aa696b0-eea8-cdab-b9b0-6670821df89c','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Accounts','module',89,0),('8b068d3a-ae87-0480-f776-6670823faf62','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Accounts','module',90,0),('8b6b8704-a486-04c0-8f52-667082564a8f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Accounts','module',90,0),('8bbf9a4a-f604-cb7a-24b8-66708246740f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Accounts','module',90,0),('8c145248-32c0-2184-fe01-667082a8efaf','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Accounts','module',90,0),('8c67e1b2-bea0-8445-9c98-667082b97386','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Accounts','module',90,0),('8cb98176-bed6-763d-8b9e-6670822de3b6','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Accounts','module',90,0),('8d2126bb-9f2b-b3b1-7eb5-667082ce456b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Accounts','module',90,0),('97fc0eda-f88a-dfc9-fab2-667082bc1075','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Documents','module',90,0),('9c69fb2c-4fa6-b15b-dfc0-6670821bbe34','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Opportunities','module',89,0),('9cc47d0e-bc37-573a-599a-667082a6f282','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Opportunities','module',90,0),('9d10950f-feed-aa49-7c51-667082b2051d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Opportunities','module',90,0),('9d5a8af3-dcd2-923a-f2a9-667082dd838b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Opportunities','module',90,0),('9da5c91f-cf50-27b1-d4b3-6670826b3dba','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Opportunities','module',90,0),('9de70a9c-a6ae-ea9a-1b7e-6670826db167','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Documents','module',90,0),('9dec0c91-b407-1fa4-b4af-6670823e5e2b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Opportunities','module',90,0),('9e293759-4e0c-8b92-157c-667082ece1f4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Opportunities','module',90,0),('9e708fc8-e542-7c03-81ab-667082c56a6f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Opportunities','module',90,0),('a306094b-c8c2-745a-150b-667082eaa37d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Documents','module',90,0),('a7039bae-214a-48c8-9975-66708255f995','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','EmailTemplates','module',89,0),('a77e03da-578a-f04a-89d6-667082f6812a','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','EmailTemplates','module',90,0),('a79d038e-1a36-9eae-22d8-667082782341','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Documents','module',90,0),('a82aae43-cf5f-0725-6d57-667082b55327','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','EmailTemplates','module',90,0),('a8b67f9f-733d-e9cc-b76f-66708236d38f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','EmailTemplates','module',90,0),('a92afd0d-7e4c-aa7c-678f-66708225552b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','EmailTemplates','module',90,0),('a98f08e0-ea8f-01b8-99d0-6670821ca3ff','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','EmailTemplates','module',90,0),('aa18f9e2-6af2-2832-db56-667082af8aec','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','EmailTemplates','module',90,0),('aa9e4ec5-4574-9549-b668-66708279afbd','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','EmailTemplates','module',90,0),('ac200708-bce1-cbe6-2db5-667082c1cebf','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Documents','module',90,0),('b040d138-ceb1-1dbc-6f01-66708276dc44','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Notes','module',89,0),('b09877e0-4df3-b564-c3fc-667082c67f93','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Notes','module',90,0),('b0ae0952-62c9-4f2a-808e-667082343563','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Documents','module',90,0),('b0f677cb-ed8b-900b-a2ad-667082992424','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Notes','module',90,0),('b13006f2-4586-1286-84ed-667082d9ca9a','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Bugs','module',89,0),('b3d4cd4d-690e-6ee8-84a0-667082dda539','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Notes','module',90,0),('b42af4ed-50f5-753c-6476-667082bf50cb','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Notes','module',90,0),('b481836a-6995-d3a6-cf5f-667082087b87','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Notes','module',90,0),('b4c51cdc-7302-4a09-c542-667082d21e91','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Notes','module',90,0),('b50920aa-8bfa-400c-9460-66708235fece','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Notes','module',90,0),('be941c17-b047-a44f-74cc-66708294d8ba','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Calls','module',89,0),('bf06862c-3561-5d99-a4bc-667082b7f6ac','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Calls','module',90,0),('bf659e90-3ed5-d515-d836-66708259b3bd','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Calls','module',90,0),('bfc81ba2-90f9-ac56-68fe-667082df7740','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Calls','module',90,0),('c05525fb-c16d-c2e6-bfd9-6670820d16ce','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Calls','module',90,0),('c0bba3a7-d9a5-2de2-b734-6670827a2009','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Calls','module',90,0),('c121bb61-7740-2769-3b9b-66708247df7f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Calls','module',90,0),('c1721a00-bb8e-0401-9c3d-667082cfb917','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Calls','module',90,0),('c42b067d-3cee-4635-4301-667082162eb9','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Users','module',89,0),('c77aee57-c419-b4cc-b30f-667082b23cb5','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Emails','module',89,0),('c7c53e10-8b62-3e88-9896-6670825160d3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Emails','module',90,0),('c80229e1-b3be-bcd6-6fa6-6670820c0c32','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Emails','module',90,0),('c8664815-c1d6-65cf-67ab-667082e884e5','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Emails','module',90,0),('c8bd1497-d6ad-70da-23ea-6670821d989f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Emails','module',90,0),('c910e74a-17c9-5952-1a05-667082b50931','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Emails','module',90,0),('c97fbc26-6c6e-24bc-0ffc-667082145702','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Emails','module',90,0),('c9d48d7d-66fd-3c60-995d-667082e0ed30','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Emails','module',90,0),('caff0829-1dbf-979e-a53f-6670825a3420','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Users','module',90,0),('d159ea41-c6b6-7463-9425-6670829c1fa3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Meetings','module',89,0),('d1d248ea-0fe8-b626-c23a-6670824d3fa8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Meetings','module',90,0),('d251c2b0-4243-b4d7-c594-66708224f7df','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Meetings','module',90,0),('d2da7f7c-d8d6-0cf6-b29a-66708245a691','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Meetings','module',90,0),('d3458259-7d0d-a62b-12f2-6670821502e6','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Meetings','module',90,0),('d3cb2f11-ffea-cce3-06de-667082db1de2','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Meetings','module',90,0),('d430b5c3-217a-06b0-6c6e-667082c8499e','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Meetings','module',90,0),('d49791b6-d6c4-be5c-4713-667082576623','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Meetings','module',90,0),('d5060048-685e-0782-5b2a-667082998535','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Users','module',90,0),('db612d83-e1d1-72fb-30a6-6670823caa47','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Leads','module',89,0),('dbdcbf0d-07bf-f557-ca7b-667082a9fed3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Leads','module',90,0),('dc457735-3048-cc23-59e1-667082bbaf3b','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Leads','module',90,0),('dc53ca1e-0a74-cfeb-1aeb-6670827dc2e0','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Tasks','module',89,0),('dc9d3a73-d8cb-caae-9931-6670824c8e4c','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Leads','module',90,0),('dccce83e-aa9a-19cb-babf-667082d2a978','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Tasks','module',90,0),('dcf29b98-14a0-548f-33de-667082c1730d','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Leads','module',90,0),('dd3b26e4-ccae-e537-d758-667082bb4142','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Tasks','module',90,0),('dd4734fa-80c6-9aae-8231-667082222b24','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Leads','module',90,0),('dd9b9bb8-f1cb-0023-d9b1-6670829a0139','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Tasks','module',90,0),('dd9f3d55-a24d-31ef-af95-66708281fbce','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Leads','module',90,0),('ddf2e1d3-1f87-6b89-640e-667082dc2398','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Leads','module',90,0),('de0a8549-a865-011a-eac8-667082ba7c18','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Tasks','module',90,0),('de603853-d8cd-b7fe-6c31-667082a0f107','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Tasks','module',90,0),('deb24a1c-2c4f-b6fd-25b7-667082591761','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Tasks','module',90,0),('df0d8aa3-d288-c4b5-1559-6670823929ff','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Tasks','module',90,0),('df900492-9a76-3914-732a-667082c0e2d5','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Users','module',90,0),('e9999855-fd17-b935-0561-667082524146','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','access','Cases','module',89,0),('ea073ab5-95e1-e4dc-9715-66708263e5f2','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','view','Cases','module',90,0),('ea555d2f-fb0e-490a-fe3e-66708293cd7f','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','list','Cases','module',90,0),('ea9d533d-c89e-d0e2-1357-6670824ffcc4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','edit','Cases','module',90,0),('eaeac4a9-0c2d-bf1c-24a6-66708284d3d2','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','delete','Cases','module',90,0),('eb41bb63-c6f8-c65f-22d0-667082d7e6c4','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','import','Cases','module',90,0),('eb918a72-5c5c-cbd5-1375-6670823dc8f3','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','export','Cases','module',90,0),('ebdcfffc-1546-cc24-abce-667082a2bfa8','2024-06-17 18:38:59','2024-06-17 18:38:59','1','','massupdate','Cases','module',90,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SugarCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.17'),('MySettings','tab','Tjs='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('Update','CheckUpdates','automatic'),('system','name','SugarCRM'),('license','msg_admin',''),('license','msg_all',''),('license','last_validation','success'),('license','latest_versions','YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNi41LjIwIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA2LjUuMjAuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),('Update','last_check_date','1718650897'),('Update','last_check_version','6.5.20'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('SugarOutfitters','AIOC','YToyOntzOjg6Imxhc3RfcmFuIjtpOjE3MTg2NTA5NDI7czoxMToibGFzdF9yZXN1bHQiO2E6Mjp7czo3OiJzdWNjZXNzIjtiOjE7czo2OiJyZXN1bHQiO2E6MTp7czo5OiJ2YWxpZGF0ZWQiO2I6MTt9fX0='),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username',''),('proxy','password',''),('MySettings','disable_useredit','yes'),('MySettings','hide_subpanels','YTowOnt9');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('b9ace09b-2abf-56cf-7305-66708edf20a1','ba2df2da-9977-d739-c488-66708ed6277d','b744c825-d93c-e69a-2efd-66708ed99734','Users',1,0,'2024-06-17 19:28:38','2024-06-17 19:28:38',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('ba2df2da-9977-d739-c488-66708ed6277d','crmpruebas2024@gmail.com','CRMPRUEBAS2024@GMAIL.COM',0,0,'2024-06-17 19:28:38','2024-06-17 19:28:38',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('98260244-dbae-c87c-9ac2-6670823a1076','2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL),('a9b80015-e852-b640-bb8d-6670825d8927','2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('72121085-e984-4c3f-6f44-66708242ed16','system','system','1','SMTP','other','',25,'','',1,0),('bd6b073b-aa06-e8d0-9172-66708e0acfae','system','system-override','b744c825-d93c-e69a-2efd-66708ed99734','SMTP','other','',25,'smtp.gmail.com','GwZQoTh0BRucAr+TvpCzoQ==',1,0);
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
  `status` varchar(255) DEFAULT 'CALLING',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('10dd03c8-3767-47c5-4b81-66708fea9d09','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('111cce7c-e1e3-5949-e690-66708f484b6c','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('115de803-c2ed-cb24-0171-66708fb64661','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('11b9a8ed-e924-78a0-c66a-66708f4976a5','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('120b9a7e-56fb-3d72-38ef-66708f9cac8a','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('127f1c03-749e-f79c-685e-66708f6e8b97','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('1284f87e-ee41-1e4f-767b-66708fd256a2','zucker_reportcontainer_containers','ZuckerReportContainer','zucker_reportcontainer','id','ZuckerReportContainer','zucker_reportcontainer','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('12e75bcf-c38c-cccd-f0f1-66708fb2a90d','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('132484d4-b96e-f830-04f0-66708ff9df3b','zucker_reportcontainer_reports','ZuckerReportContainer','zucker_reportcontainer','id','ZuckerReports','zucker_report','container_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('132ac97d-80a1-2440-535b-66708f0f10f6','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('136501fa-df8a-3304-ad42-66708fe81367','zucker_reportcontainer_assigned_user','Users','users','id','ZuckerReportContainer','zucker_reportcontainer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('139d6e76-13dc-8808-7b5c-66708f5fb900','zucker_reportcontainer_modified_user','Users','users','id','ZuckerReportContainer','zucker_reportcontainer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('13d657f7-8807-cb53-a392-66708fbb7ff2','zucker_reportcontainer_created_by','Users','users','id','ZuckerReportContainer','zucker_reportcontainer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('19b63de8-d112-c8a0-8f1d-66708fb44e54','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a056a90-0947-5957-6eb1-66708f4517b6','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a49948a-ba9e-7b3b-90f3-66708fba3860','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1a8dfe71-0cff-3b60-cd36-66708fc014b3','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1af3ecbc-0eb0-ab40-3efc-66708fe7f774','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1b2dccdc-b4ea-8e59-0dd8-66708f4e03c4','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1b3b539e-a27c-9e50-6231-66708f5858d8','zucker_reporttemplate_assigned_user','Users','users','id','ZuckerReportTemplate','zucker_reporttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b65e08b-a548-5e5d-d24d-66708f32e55e','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1b9b173c-1c64-f02a-a8d5-66708ffb4267','zucker_reporttemplate_modified_user','Users','users','id','ZuckerReportTemplate','zucker_reporttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b9ef1dc-bb2b-5518-71e6-66708f22d8fd','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('1bd353d3-48d2-bbf8-27fd-66708f656791','zucker_reporttemplate_created_by','Users','users','id','ZuckerReportTemplate','zucker_reporttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bd88aae-80e1-fa3c-fdfb-66708f3f42f1','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c2709cb-9c2e-89be-4d39-66708f6faaec','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1cc408a6-c0ea-04b1-3389-66708fa9eb76','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1d463c3e-0984-fc3d-1cfc-66708f31c81b','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1da4992f-a0aa-e3bc-1a8e-66708f165365','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('1defcc51-5a23-c9fb-9425-66708f4db6bc','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('1f14b2fb-e215-bf1e-5794-66708f3736f6','zucker_wordtemplate_assigned_user','Users','users','id','ZuckerWordtemplate','zucker_wordtemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1fb2d881-b68d-1762-8e86-66708f069815','zucker_wordtemplate_modified_user','Users','users','id','ZuckerWordtemplate','zucker_wordtemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('203a1281-3f86-ea31-a1de-66708f90d2a2','zucker_wordtemplate_created_by','Users','users','id','ZuckerWordtemplate','zucker_wordtemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('223c01b9-a32b-a47d-4429-66708f86ae68','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2254e3e6-ae6e-06a8-873c-66708f8fcdc4','zucker_querytemplate_assigned_user','Users','users','id','ZuckerQueryTemplate','zucker_querytemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22c0437d-eff6-75b9-5fe9-66708f61b627','zucker_querytemplate_modified_user','Users','users','id','ZuckerQueryTemplate','zucker_querytemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('230c36d9-d6d2-9920-d40c-66708f06baa9','zucker_querytemplate_created_by','Users','users','id','ZuckerQueryTemplate','zucker_querytemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24ed15f2-357e-9e2d-568c-66708f856517','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24f1cf23-9a18-5dc7-a212-66708f8f6dc0','zucker_listingtemplate_assigned_user','Users','users','id','ZuckerListingTemplate','zucker_listingtemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25a13429-de2b-32d4-7cbe-66708f07ced2','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25de6dda-8da6-6d62-377d-66708f3ca510','zucker_listingtemplate_modified_user','Users','users','id','ZuckerListingTemplate','zucker_listingtemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('25f92fd5-c3d1-64f1-d6bd-66708f6c85e2','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('265913c0-fa3a-7986-07fa-66708fc5aea4','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26b401a9-ea25-7343-14da-66708f98cde6','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('274cb959-7f30-1cca-6bd4-66708f8859ea','zucker_listingtemplate_created_by','Users','users','id','ZuckerListingTemplate','zucker_listingtemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('28140472-075d-8e87-a2df-66708f0774aa','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a54e7dd-8894-620b-daf2-66708fdcf46c','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2ab60eae-97cf-97ae-92ed-66708f35bfa6','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2b0faa42-b1da-138a-03b0-66708f93b99f','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2b557e88-0859-4d85-38a4-66708ffc7db4','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2bb15378-c3f9-46c9-68b5-66708f5e9d4d','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('2bfaeca1-e9e9-81e8-172d-66708f296c89','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c3e26c1-1f26-f96f-486b-66708f96a620','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c53db88-eac6-6b64-41b0-66708f32e4a5','zucker_runnablereport_assigned_user','Users','users','id','ZuckerRunnableReport','zucker_runnablereport','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2c841f13-9b59-6b06-7ce6-66708fb86d43','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cba37f3-786e-cd22-129e-66708f06529d','zucker_runnablereport_modified_user','Users','users','id','ZuckerRunnableReport','zucker_runnablereport','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2cc794a1-8412-ed0d-22a5-66708faae876','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d081a8c-439e-5d7d-1f97-66708f26bbf8','zucker_runnablereport_created_by','Users','users','id','ZuckerRunnableReport','zucker_runnablereport','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30d83183-6977-60e1-cb03-66708f83ee6c','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('315406b7-b98c-d1ed-e0ff-66708fff9c5e','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('31a765c4-2c4a-2916-17d5-66708f361e8d','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('31f21c94-3590-9713-270c-66708fda4bf4','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('323a3d5b-7dc9-8114-c2b7-66708f6bd31a','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('32785776-206a-4a19-ec2e-66708f8b7d9a','phonecalls_modified_user','Users','users','id','PhoneCalls','phonecalls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32b3d6f6-931e-96e2-8efd-66708f153496','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32b4f284-2d15-c6fb-fe7b-66708faaef80','phonecalls_created_by','Users','users','id','PhoneCalls','phonecalls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3306ea6d-6d40-1e84-fd24-66708fc26da2','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('330f5a8e-9a9f-ae5d-9f0c-66708f739caf','phonecalls_assigned_user','Users','users','id','PhoneCalls','phonecalls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('334d7cca-38f7-3dec-03c4-66708f63720d','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3876854d-6685-c561-467a-66708fd999a5','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38bf9ab5-4e14-8195-bc70-66708ffd8257','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39039e6f-2c0d-c4b6-5afe-66708fa4ec15','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('393f0ed2-64c5-1baa-3cb0-66708fb4f93f','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('397dce60-ce4d-482e-6448-66708f00e3a1','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39d4d9a4-f684-c57e-6643-66708fa19092','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a198c13-ee7c-8648-3497-66708fe3986e','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a6c584a-fe6e-ab27-452f-66708f420892','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ac7e7af-f8d3-c0b3-89a7-66708feb6cba','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b0bbe02-dab0-11db-24b4-66708f7b088d','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b4d82f3-1dac-f450-50e6-66708f039ea3','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3ba56f43-f4ca-30fb-e00f-66708f238eca','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3be8f194-ccd9-3d28-29c3-66708f8dbc21','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3fba84aa-98af-4088-ba22-66708fd948a3','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('452b1d41-76dd-4b3c-43be-66708f701101','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4579bb3f-ad19-f2b1-82b2-66708f79590a','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45bfaed7-ab86-ca82-1e6d-66708f4b62b2','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('45fcfc7e-232f-3809-0585-66708f18859f','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('46396793-51e2-30c2-3509-66708f254eba','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('467bee71-fd9f-37ae-f0d5-66708f076ba2','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('46c3aaa1-1bbf-2ad0-4eed-66708f34a033','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4720aec9-6c62-64c6-d35d-66708fba6abe','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('47639734-2f82-f019-b2c9-66708fab4696','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('47acd176-f126-0499-7d17-66708fa1c322','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('47f1f1f5-d3cc-04d9-fb95-66708fb94f0e','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('4a6492e8-4926-b2d5-ddf9-66708f472557','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4ca937b9-10ee-7cf8-8117-66708fc78303','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5431e8c3-f867-e660-f87e-66708fb28de6','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('54755458-d592-5767-e562-66708fcf4b38','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('54b43723-4e9a-bb54-512f-66708fb1bd7f','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('54f421a9-c8e7-4c82-6bd1-66708fb544d9','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('5537339c-ed10-2ac8-ebc0-66708fac4c68','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('5587811d-e67c-ee10-f42d-66708f2a1fc8','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('55ca833c-84fa-3092-9bfa-66708f16c995','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('5609a5fc-14c0-aa78-75f0-66708f7f036c','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('5651544d-5a3a-d595-c9c9-66708f939bca','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('5695b4a5-bb66-a6fa-b239-66708f4fb8c3','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('571020c8-4f61-6335-99cd-66708fc3f5db','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('574c88b2-8596-6d1f-5ab9-66708fec05e2','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('576fc717-a15b-c151-9661-66708f6e560c','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('579f4e77-7a55-1d86-3191-66708f5feb62','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('57eb10a2-2948-157c-1990-66708f500245','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58038f3c-bba4-2277-10fb-66708f6f7e8e','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('585ba65e-cbf9-b805-9f01-66708fa5afdb','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('58a5255a-5a2a-9b25-5335-66708fc94074','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','schedulersjobs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58b8b281-19d3-8efc-b557-66708faf588f','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('5920ced4-5d54-5a9e-dcd8-66708f914eb6','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('59bc3cdf-43a7-b77a-27d3-66708fa2de9c','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('59fe13ab-1c5f-539c-bdcb-66708f10bfb9','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('5a632f59-4557-992b-ac47-66708f4a514d','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('5ae17265-0ee5-0aac-1d13-66708f98c98c','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('5b2b0d82-9e50-0cb3-2528-66708f385290','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('5b967c34-878c-6af6-5479-66708f8561d5','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('5c2300cd-60af-3195-d92e-66708f4b9fad','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('5cae6e24-3b19-1007-372a-66708f4379c2','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('5d21fca8-fd5e-f3c8-b97e-66708f27c04c','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('5d67438f-a9f9-7b11-391a-66708fa11376','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('5d9efb99-4836-20f9-4718-66708fed53b2','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('5de47405-3152-2ef5-a79e-66708f229f3a','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('5eaad205-ac88-1f1f-81da-66708fc2462b','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('5f17a488-81b2-e017-8a2e-66708f192d3f','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('5f98cc16-2ba3-bc89-ab1f-66708f33e52d','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('60ac2761-e654-ae7e-d9b4-66708fb8efec','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('610179b7-0426-c12e-afa0-66708ff58120','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61051fea-eff1-be86-5a3a-66708fdfc39d','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('6146d393-97dc-4de7-7cdd-66708f22c842','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('618ea307-f3e3-9c3e-f4d6-66708f42e352','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('61f9993e-cfe0-9c3e-6210-66708fd54503','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('6212f84e-c297-311a-579c-66708f737a92','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('62359556-4378-56f3-b686-66708fdaa348','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6277dda8-3c8b-8e45-f0f5-66708fed46f5','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6280970c-1ce6-06f2-5152-66708fe5ebb8','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('62b7f7f7-8630-7c69-b7dd-66708f97fca8','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('62ceb05e-ab9d-7f8a-6658-66708f839450','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('62f7f933-fdbb-1244-8b38-66708f3258b1','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('631df390-b422-65b7-d170-66708f66566d','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('6389c5c7-bacd-d8d6-1c69-66708f87ac19','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('63e02d06-478c-9f54-a3bc-66708fbe6de2','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('63edbddb-53b6-fe1a-d703-66708fce4394','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('64332e3b-d307-0e6b-7723-66708f8862f9','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('6443e3db-d8e0-4a60-b7be-66708f7ff1b1','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('64acbea8-8d8e-b8d6-1e62-66708ff19c3c','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('64ffab1c-ce43-fa62-9f32-66708fcdd59e','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('65b7f303-06a8-1528-a290-66708f82bc04','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('66394659-09d1-85bc-3146-66708f054a1c','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('667f7aa0-f2ad-6b88-a52b-66708ff9d08e','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('6b44ecc3-c1b2-13e2-2fd2-66708f432ee4','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6baa5c50-5eaf-e520-d16f-66708fa25fe9','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6bedd2aa-5545-9d69-5d5b-66708f798fe2','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6c3e8ee1-55b5-53d9-81cc-66708ffcba39','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('6c993da7-0bcd-0d5c-85ee-66708f50268d','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('6cdd36e5-c89e-fd7e-a93f-66708fa28375','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d27bf23-1163-487c-ad49-66708ffa38a4','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d951413-1d92-614b-8476-66708f683cab','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6ddbbc4f-b457-df04-c4f8-66708f9b2ce9','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6e241099-0b80-104d-df97-66708f3be8ca','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6e63c77d-8c4e-fe03-1aca-66708ff6e47e','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6eb1bd40-8322-7cd5-37b2-66708f7e1763','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('6ee8bb83-ff8a-eed4-8f77-66708f05d9a0','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6f1fef89-02e6-317e-2d05-66708f5609b4','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('6fcb0e97-29d8-125b-33ac-66708f41cc17','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauthkeys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('747a0e6e-b120-9080-cf93-66708fa42aee','oauthkeys_created_by','Users','users','id','OAuthKeys','oauthkeys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('74ee93bd-ed24-b2bb-0021-66708f6f046d','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('752ee09d-82b1-254b-1e5a-66708fbd23c1','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7567302f-da1a-691b-a254-66708fdba526','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('759de2f4-c9ed-5776-ebaa-66708ff98520','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('75da42d3-9d28-8f06-6195-66708f454e9d','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('760edc6a-e9d6-ad47-c708-66708f350cac','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('7645b6bc-a85b-3a3a-3ec1-66708f7ee4b4','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('767988a3-a6c8-a381-f823-66708ffd9863','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('76b49d82-eeb1-ad60-9a30-66708f83bb57','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76ec30d2-f4dd-add4-0392-66708fe5ecc9','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7723e939-672e-e1f5-4c36-66708f20446f','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b0c070e-2663-5442-febd-66708f06810d','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauthkeys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c72bec2-c717-1e38-1003-66708f8a7c1f','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ec300ec-b745-e819-b18b-66708f722fef','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8263345a-1d57-838f-55de-66708f392770','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82a01868-dd53-a8a2-b1bb-66708f8859f4','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82dc0cdf-85ec-81ba-35ff-66708fcb0f4d','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8695095c-1cc2-0b66-a73d-66708f7e6e19','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88891b1a-e50e-f10f-bc4a-66708f1de765','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88d2ad39-5140-bf32-d672-66708f50a9bd','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89366b8c-0e4f-44f7-a672-66708fedf1c3','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('89b074ae-23e2-bb80-d54f-66708fd7e1e5','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('8b1a02b4-acd7-594c-4339-66708f1e5e5d','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e5f462b-0451-c7d6-7e70-66708f75b36e','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ebf12c5-4e54-42a8-3fbd-66708fe61a8b','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f0fa810-50a8-21f2-c6eb-66708fe3d9e2','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f6509f2-dee8-6b42-f3f5-66708fd7c900','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('8f6bf746-a088-2f2d-53ad-66708f0716ae','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fcb12ee-a057-e582-a8d7-66708ffdfc7e','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('900eb4de-ccde-b45b-ed1f-66708fe0a111','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('904fd296-3d09-82a3-dfc8-66708febf185','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('9095c9a9-c356-13c3-6c11-66708fda735f','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('93d009d0-3e65-9776-b911-66708fac0e6f','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('991a0be2-e897-f46a-7d1e-66708f87c0fe','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99ac4f44-a570-4cea-e3f1-66708ff79c57','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a164d58-fc81-e820-f42a-66708fa212ce','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a5c8dec-1296-4d69-332f-66708fc75bb3','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9a9d277c-0052-de25-7237-66708f9b70fa','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('9c450c5d-a4c4-ac4e-ad1a-66708f4e9cbd','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d520e41-6a1d-607b-3b4b-66708f372844','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a0c005d2-e1f7-7d2e-e1cd-66708ff02e6f','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1770b1d-64ea-3d0d-7597-66708f013c8f','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a6c60fbb-e42b-7c36-0798-66708f4235cb','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('a6fa11fe-c995-299a-7e72-66708f9471e3','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a74a20c7-c354-ef09-64aa-66708fe062b4','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a796e6f6-612c-f800-83dd-66708feba1f1','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7e16044-c00b-2730-c31f-66708f579379','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab270c1b-43c1-c358-b554-66708f271b51','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('af140378-e515-7e31-0c43-66708f6e2115','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('b2e60463-1903-820b-13ec-66708f703279','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('d52618d8-c358-d34e-4cfb-66708f57e586','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d57afba7-ad4f-b82c-ef5b-66708fc25d5f','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d5c1402e-c87f-f480-2911-66708f0040f6','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d60eee11-6140-55ff-48e4-66708f70295d','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d81fc59b-a3fb-9689-cf51-66708f95e7a2','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfb70a9c-851b-9972-a8ed-66708f36e211','inv_inventario_modified_user','Users','users','id','INV_Inventario','inv_inventario','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dfde49d5-105a-4596-a650-66708f282284','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('e04bfc1d-3215-a5f8-2059-66708fa7f845','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('e3a165a1-d579-bc7e-7108-66708fc85e39','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e55b014c-349c-8aaa-9548-66708f4d8462','inv_inventario_created_by','Users','users','id','INV_Inventario','inv_inventario','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e91d005d-bb8b-e938-bd34-66708fbc0bdb','inv_inventario_assigned_user','Users','users','id','INV_Inventario','inv_inventario','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eabad363-3e8a-75a8-30f3-66708fd73e5c','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eaffcb18-ce13-5725-ca47-66708f00f9aa','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('eb36f0d8-fe78-29cb-a212-66708fb42e82','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('dd580a7e-8f29-a048-2eab-6670822bd4b3',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Prune Tracker Tables','function::trimTracker','2005-01-01 14:45:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1),('de32b054-4712-c341-e038-6670823f322d',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxes','2005-01-01 08:15:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('de951fda-db79-7de2-9492-6670822ba356',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2005-01-01 06:45:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('dee54dd2-559e-f16d-b9e9-667082ac0288',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2005-01-01 08:15:01','2020-12-31 23:59:59','0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('df45dcf8-5420-5faf-feb8-6670824cb9bd',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Prune Database on 1st of Month','function::pruneDatabase','2005-01-01 16:00:01','2020-12-31 23:59:59','0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('df9064e0-1183-ecaf-a778-66708249c450',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2008-01-01 09:30:01','2020-12-31 23:59:59','*::*::*::*::*',NULL,NULL,NULL,'Active',0),('dfda2a98-7043-08a0-e3a6-667082c749ff',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Clean Jobs Queue','function::cleanJobQueue','2012-01-01 12:30:01','2030-12-31 23:59:59','0::5::*::*::*',NULL,NULL,NULL,'Active',0),('e04e030f-9629-4f3e-3951-6670821b6443',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2012-01-01 19:45:01','2030-12-31 23:59:59','0::3::1::*::*',NULL,NULL,NULL,'Active',0),('e0c1e47a-8f6e-ad4d-0ba4-6670827e6c67',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Prune SugarFeed Tables','function::trimSugarFeeds','2005-01-01 14:15:01','2020-12-31 23:59:59','0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (7,'5ef5051c-069b-076b-21c9-66708f94f830','1','Users','b744c825-d93c-e69a-2efd-66708ed99734','Ronny Plaza','2024-06-17 19:31:49','detailview','ch52t2t3ip340b0ltmo4c2c8u6',1,0),(10,'b706bc9d-4afb-a31d-4986-6670900c8b86','1','Users','1','Administrator','2024-06-17 19:36:19','editview','ch52t2t3ip340b0ltmo4c2c8u6',1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('11fded8e-6cef-ee66-2d03-6670967f0950','ACLRoles2_ACLROLE',0,'2024-06-17 20:03:08','2024-06-17 20:03:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1fb7ca7b-9b6b-84c0-672d-667090d4ff44','global',0,'2024-06-17 19:36:28','2024-06-17 20:03:16','1','YTo3OntzOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czoyOiJ1dCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE3OiJBbWVyaWNhL0d1YXlhcXVpbCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO31zOjk6IkFDTFJvbGVzUSI7YTo4OntzOjY6Im1vZHVsZSI7czo4OiJBQ0xSb2xlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjc6Im9yZGVyQnkiO3M6MTI6IkRBVEVfRU5URVJFRCI7czo5OiJzb3J0T3JkZXIiO3M6NDoiREVTQyI7czoxMDoibmFtZV9iYXNpYyI7czowOiIiO3M6NjoiYnV0dG9uIjtzOjY6IkJ1c2NhciI7fX0='),('20cbf030-878c-4297-6746-66709035b4e5','Reports',0,'2024-06-17 19:36:28','2024-06-17 19:36:28','1','YToxOntzOjk6ImZhdm9yaXRlcyI7Tjt9'),('218e764d-668c-58a5-fb79-6670905c8108','Home',0,'2024-06-17 19:36:28','2024-06-17 19:37:29','1','YToyOntzOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo2OntpOjA7czozNjoiMTdhYTlkMDgtZTdlZi00YjVhLTY1YjYtNjY3MDg4MzQzOTIzIjtpOjE7czozNjoiMThmODc1NDUtZmQwNy01YWIwLTIxMTgtNjY3MDg4ZTBiNmI5IjtpOjI7czozNjoiMWE0NmVhYTgtOTA0Mi1kZjk5LTQ5ZWItNjY3MDg4NTRlZmNjIjtpOjM7czozNjoiMWIxNGNlNDMtNDY3MS00NzI5LTIwZDItNjY3MDg4MDNlNTc1IjtpOjQ7czozNjoiMWMzZTI2OWEtZDVhZS00ODQ3LTBiMjUtNjY3MDg4YjcyYmVjIjtpOjU7czozNjoiMWQ1Njc5YTEtOGZlMS04MWEzLTY0MmYtNjY3MDg4NzUzNDRiIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIxN2FkNzY1MS00Zjc0LTZhODctOTBlZS02NjcwODhjMTFlOWIiO2k6MTtzOjM2OiIxN2FlYWY2ZS05NWExLWJkMWMtMWYzNi02NjcwODhmY2MyYzciO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMiI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fXM6ODoiZGFzaGxldHMiO2E6ODp7czozNjoiMTdhYTlkMDgtZTdlZi00YjVhLTY1YjYtNjY3MDg4MzQzOTIzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJpRnJhbWVEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1MzoibW9kdWxlcy9Ib21lL0Rhc2hsZXRzL2lGcmFtZURhc2hsZXQvaUZyYW1lRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTo0OntzOjU6InRpdGxlIjtzOjE0OiJEZXNjdWJyYSBTdWdhciI7czozOiJ1cmwiO3M6MTQ6Ind3dy5zcmkuZ29iLmVjIjtzOjY6ImhlaWdodCI7aTozMTU7czoxMToiYXV0b1JlZnJlc2giO3M6MjoiMzAiO319czozNjoiMTdhZDc2NTEtNGY3NC02YTg3LTkwZWUtNjY3MDg4YzExZTliIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE2OiJTdWdhckZlZWREYXNobGV0IjtzOjY6Im1vZHVsZSI7czo5OiJTdWdhckZlZWQiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY0OiJtb2R1bGVzL1N1Z2FyRmVlZC9EYXNobGV0cy9TdWdhckZlZWREYXNobGV0L1N1Z2FyRmVlZERhc2hsZXQucGhwIjt9czozNjoiMTdhZWFmNmUtOTVhMS1iZDFjLTFmMzYtNjY3MDg4ZmNjMmM3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjEzOiJpRnJhbWVEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo0OiJIb21lIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1MzoibW9kdWxlcy9Ib21lL0Rhc2hsZXRzL2lGcmFtZURhc2hsZXQvaUZyYW1lRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTozOntzOjEwOiJ0aXRsZUxhYmVsIjtzOjIyOiJMQkxfREFTSExFVF9TVUdBUl9ORVdTIjtzOjM6InVybCI7czo0MToiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L25ld3MiO3M6NjoiaGVpZ2h0IjtpOjMxNTt9fXM6MzY6IjE4Zjg3NTQ1LWZkMDctNWFiMC0yMTE4LTY2NzA4OGUwYjZiOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjFhNDZlYWE4LTkwNDItZGY5OS00OWViLTY2NzA4ODU0ZWZjYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjFiMTRjZTQzLTQ2NzEtNDcyOS0yMGQyLTY2NzA4ODAzZTU3NSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWMzZTI2OWEtZDVhZS00ODQ3LTBiMjUtNjY3MDg4YjcyYmVjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YToxOntzOjEyOiJkYXRlX2VudGVyZWQiO2E6MDp7fX1zOjU6InRpdGxlIjtzOjExOiJNaXMgQ3VlbnRhcyI7czoxMToibXlJdGVtc09ubHkiO3M6NDoidHJ1ZSI7czoxMToiZGlzcGxheVJvd3MiO3M6MToiNSI7czoxNDoiZGlzcGxheUNvbHVtbnMiO2E6NDp7aTowO3M6NDoibmFtZSI7aToxO3M6Nzoid2Vic2l0ZSI7aToyO3M6MTI6InBob25lX29mZmljZSI7aTozO3M6MjM6ImJpbGxpbmdfYWRkcmVzc19jb3VudHJ5Ijt9czoxMToiYXV0b1JlZnJlc2giO3M6MTA6IjQyOTQ5NjcyOTUiO319czozNjoiMWQ1Njc5YTEtOGZlMS04MWEzLTY0MmYtNjY3MDg4NzUzNDRiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fX0='),('5123c355-79dd-cb4e-860b-6670882f287b','Home',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6IjE3YWE5ZDA4LWU3ZWYtNGI1YS02NWI2LTY2NzA4ODM0MzkyMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiIxN2FkNzY1MS00Zjc0LTZhODctOTBlZS02NjcwODhjMTFlOWIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiIxN2FlYWY2ZS05NWExLWJkMWMtMWYzNi02NjcwODhmY2MyYzciO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiMThmODc1NDUtZmQwNy01YWIwLTIxMTgtNjY3MDg4ZTBiNmI5IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWE0NmVhYTgtOTA0Mi1kZjk5LTQ5ZWItNjY3MDg4NTRlZmNjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMWIxNGNlNDMtNDY3MS00NzI5LTIwZDItNjY3MDg4MDNlNTc1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxYzNlMjY5YS1kNWFlLTQ4NDctMGIyNS02NjcwODhiNzJiZWMiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIxZDU2NzlhMS04ZmUxLTgxYTMtNjQyZi02NjcwODg3NTM0NGIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6IjE3YWE5ZDA4LWU3ZWYtNGI1YS02NWI2LTY2NzA4ODM0MzkyMyI7aToxO3M6MzY6IjE4Zjg3NTQ1LWZkMDctNWFiMC0yMTE4LTY2NzA4OGUwYjZiOSI7aToyO3M6MzY6IjFhNDZlYWE4LTkwNDItZGY5OS00OWViLTY2NzA4ODU0ZWZjYyI7aTozO3M6MzY6IjFiMTRjZTQzLTQ2NzEtNDcyOS0yMGQyLTY2NzA4ODAzZTU3NSI7aTo0O3M6MzY6IjFjM2UyNjlhLWQ1YWUtNDg0Ny0wYjI1LTY2NzA4OGI3MmJlYyI7aTo1O3M6MzY6IjFkNTY3OWExLThmZTEtODFhMy02NDJmLTY2NzA4ODc1MzQ0YiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiMTdhZDc2NTEtNGY3NC02YTg3LTkwZWUtNjY3MDg4YzExZTliIjtpOjE7czozNjoiMTdhZWFmNmUtOTVhMS1iZDFjLTFmMzYtNjY3MDg4ZmNjMmM3Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),('51e31559-98c6-a643-fdbd-6670882aeeb1','Home2_CALL',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('52437cd5-9601-f4c2-95e4-667088a4b387','Home2_MEETING',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('52a0ee91-c2ea-6fe2-6676-667088eef98c','Home2_OPPORTUNITY',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('53025ac9-3a4c-3a1d-4014-66708868b021','Home2_ACCOUNT',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5360cbf2-276f-b357-106c-66708850114a','Home2_LEAD',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('53b73e90-d8b2-a074-c250-66708889be41','Home2_SUGARFEED',1,'2024-06-17 19:02:18','2024-06-17 19:02:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('54c1cae8-d4c2-276c-6fcc-667090edcd49','Employees2_EMPLOYEE',1,'2024-06-17 19:35:31','2024-06-17 19:35:31','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('732877b6-78c9-061b-4bb3-667090732797','Home2_CALL',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('73904f9c-bf76-4eba-6727-66709038b476','Home2_MEETING',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('73f91518-c5da-0e2c-2f95-667090748605','Home2_OPPORTUNITY',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('746bb1e4-37ec-8064-998a-6670905b4141','Home2_ACCOUNT',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('74c07557-db7c-355e-7063-6670900d0f7b','Home2_LEAD',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7517e1fe-743f-ee01-ea16-667090660611','Home2_SUGARFEED',0,'2024-06-17 19:36:37','2024-06-17 19:36:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7aebe139-84d8-3ae5-21ba-66708846fcc4','ETag',1,'2024-06-17 19:02:17','2024-06-17 19:02:17','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('871401d3-7164-10ce-6f6d-66708d668894','Users2_USER',1,'2024-06-17 19:26:34','2024-06-17 19:26:34','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('975c3fbd-88cd-a38b-6f5d-667092289a71','Employees2_EMPLOYEE',0,'2024-06-17 19:47:18','2024-06-17 19:47:18','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bb089ccc-1ca8-739f-9ce4-66708ee5c73e','global',0,'2024-06-17 19:28:38','2024-06-17 19:28:38','b744c825-d93c-e69a-2efd-66708ed99734','YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6MjoiNjAiO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Mb25kb24iO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjE0OiJzbXRwLmdtYWlsLmNvbSI7czoxMzoibWFpbF9zbXRwcGFzcyI7czoxNjoiY3JtcHJ1ZWJhczIwMjQhISI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjY6Im1haWx0byI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiYmE5MjdkZTYtMDk4ZC1iNGM4LTNhMWQtNjY3MDhlMTE0YjMyIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7fQ=='),('cd6f4066-369b-2c79-5c89-667088357734','ACLRoles2_ACLROLE',1,'2024-06-17 19:03:33','2024-06-17 19:03:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('dbf542db-73c6-a5fd-cdc0-667082c060d7','global',1,'2024-06-17 18:38:59','2024-06-17 19:35:31','1','YToyODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImRiYWI0NGZiLWExMTQtNjI3Zi1hMGY2LTY2NzA4Mjk2YmJkMCI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMzoicmVtaW5kZXJfdGltZSI7aToxODAwO3M6MTI6Im1haWxtZXJnZV9vbiI7czoyOiJvbiI7czo4OiJ0aW1lem9uZSI7czoxNzoiQW1lcmljYS9HdWF5YXF1aWwiO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fX0=');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$YcP8QqhZ$QuXV4fmMfglm08qYkExo7/',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2024-06-17 18:38:59','2024-06-17 19:02:17','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0),('b744c825-d93c-e69a-2efd-66708ed99734','ronny.plaza','$1$EOYEBGTS$lYvXRxE43UCpZkhqFJUwT0',0,'2024-06-17 19:28:38',NULL,1,'Ronny','Plaza',1,0,1,'Norte','2024-06-17 19:28:38','2024-06-17 19:28:38','1','1','Licenciado','Sistemas','','0963720898','','','','Active','vernaza norte','Guayaquil','','Ecuador','090502',0,0,1,'Active','','','1',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES ('679e7a1d-ab49-13c1-ed45-66708f9aabf3',0,'2024-06-17 19:35:07','2024-06-17 19:35:07','1','1','Rebuild Relationships','4.0.0','4.0.0'),('706ecd72-cbc8-247e-e746-66708f1a276c',0,'2024-06-17 19:35:07','2024-06-17 19:35:07','1','1','Rebuild Extensions','4.0.0','4.0.0'),('f0997c4f-370e-23b6-9798-667082dce040',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','Chart Data Cache','3.5.1','3.5.1'),('f11a98eb-25e8-87cd-4a3e-667082c30a7f',0,'2024-06-17 18:38:59','2024-06-17 18:38:59','1','1','htaccess','3.5.1','3.5.1');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zucker_wordtemplates`
--

LOCK TABLES `zucker_wordtemplates` WRITE;
/*!40000 ALTER TABLE `zucker_wordtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `zucker_wordtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sugarcrm-35303437dd36'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-09  4:18:21
