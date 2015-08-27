-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Ago 19, 2015 alle 14:20
-- Versione del server: 5.6.21
-- Versione PHP: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prisma_paas_dev_1.6`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Action`
--

CREATE TABLE IF NOT EXISTS `Action` (
  `actionId` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(45) DEFAULT NULL,
  `defaultAction` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `actionId` (`actionId`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dump dei dati per la tabella `Action`
--

INSERT INTO `Action` (`actionId`, `description`, `name`, `defaultAction`) VALUES
(1, 'Send an email', 'EMAIL_SEND', 1),
(2, 'Create a new email account\r\n', 'EMAIL_ACCOUNT_CREATE', 1),
(3, 'Read account data ', 'EMAIL_ACCOUNT_READ', 1),
(4, 'Delete an account ', 'EMAIL_ACCOUNT_DELETE', 0),
(5, 'List the email account data for a workgroup', 'EMAIL_ACCOUNT_LIST', 1),
(6, 'Edit the email account data for a workgroup', 'EMAIL_ACCOUNT_EDIT_CREDENTIALS', 1),
(7, 'Read SMS Enabled/Disabled status for a workgroup', 'SMS_STATUS_READ', 1),
(8, 'Enable/disable the SMS service for a workgroup', 'SMS_STATUS_EDIT', 0),
(9, 'List sent SMS for a workgroup', 'SMS_LIST', 1),
(10, 'Send a SMS for a workgroup', 'SMS_SEND', 1),
(11, 'Read billing data for SMS service for a workgroup', 'SMS_BILLING_READ', 1),
(12, 'Read the configurations of the notifications for thresholds for a workgroup', 'SMS_NOTIFICATIONS_READ', 1),
(13, 'Edit the configurations of the notifications for thresholds for a workgroup', 'SMS_NOTIFICATIONS_EDIT', 1),
(14, 'List the certificates for a workgroup', 'CA_LIST', 1),
(15, 'Create a certificate for a workgroup', 'CA_CREATE', 1),
(16, 'Delete a certificate for a workgroup', 'CA_REVOKE', 0),
(17, 'Read a certificate data for a workgroup', 'CA_READ', 1),
(18, 'List the IaaS Keys for a workgroup', 'KEY_LIST', 1),
(19, 'Read one IaaS Key for a workgroup', 'KEY_READ', 1),
(20, 'Create a IaaS Key for a workgroup', 'KEY_CREATE', 1),
(21, 'Delete a IaaS Key for a workgroup', 'KEY_DELETE', 0),
(22, 'List the IaaS Images for a workgroup', 'IMAGE_LIST', 1),
(23, 'Read the information of a IaaS Image for a workgroup', 'IMAGE_READ', 1),
(24, 'Create a new IaaS Image for a workgroup', 'IMAGE_CREATE', 1),
(25, 'Delete a IaaS Image for a workgroup', 'IMAGE_DELETE', 0),
(26, 'List all IaaS Networks for a workgroup', 'NETWORK_LIST', 1),
(27, 'Read the information of a IaaS Network for a workgroup', 'NETWORK_READ', 1),
(28, 'Create a new IaaS Network for a workgroup', 'NETWORK_CREATE', 1),
(29, 'Delete a IaaS Network for a workgroup', 'NETWORK_DELETE', 0),
(30, 'List all IaaS Object Storages for a workgroup', 'OBJ_STORAGE_LIST', 1),
(31, 'Read the information of a IaaS Object Storage for a workgroup', 'OBJ_STORAGE_READ', 1),
(32, 'Create a new IaaS Object Storage for a workgroup', 'OBJ_STORAGE_CREATE', 1),
(33, 'Delete a IaaS Object Storage for a workgroup', 'OBJ_STORAGE_DELETE', 0),
(34, 'List all PaaS Services for a workgroup', 'PAAS_SVC_LIST', 1),
(35, 'Read the information of a PaaS Service for a workgroup', 'PAAS_SVC_READ', 1),
(36, 'Create a new PaaS Service for a workgroup', 'PAAS_SVC_CREATE', 1),
(37, 'Delete a PaaS Service for a workgroup', 'PAAS_SVC_DELETE', 0),
(38, 'Update a PaaS Service for a workgroup', 'PAAS_SVC_UPDATE', 1),
(45, 'Add a membership for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_ADD', 0),
(47, 'List the applications for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_APPLICATION_LIST', 0),
(48, 'Add a referent for a Workgroup', 'ACCOUNTING_WG_REFERENT_ADD', 0),
(49, 'Approve a membership for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_APPROVE', 0),
(50, 'Unapprove a membership for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_UNAPPROVE', 0),
(51, 'List the approved memberships for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_APPROVED_LIST', 0),
(52, 'List the memberships for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_LIST', 1),
(53, 'Read a membership for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_READ', 1),
(54, 'Read the WG Privilege for a membership of a Workgroup', 'ACCOUNTING_WG_PRIVILEGE_READ', 1),
(55, 'Update the WG Privilege for a membership of a Workgroup', 'ACCOUNTING_WG_PRIVILEGE_UPDATE', 0),
(56, 'Read a WG information', 'ACCOUNTING_WG_READ', 1),
(57, 'Delete a referent for a Workgroup', 'ACCOUNTING_WG_REFERENT_DELETE', 0),
(58, 'List the referents for a Workgroup', 'ACCOUNTING_WG_REFERENT_LIST', 1),
(59, 'Remove a membership for a Workgroup', 'ACCOUNTING_WG_MEMBERSHIP_REMOVE', 0),
(60, 'Update a Workgroup', 'ACCOUNTING_WG_UPDATE', 0),
(61, 'Delete a user from a Workgroup', 'ACCOUNTING_WG_USER_DELETE', 0),
(62, 'Liste the users of a Workgroup', 'ACCOUNTING_WG_USER_LIST', 1),
(63, 'Update the monitoring information for a VM for a Workgroup', 'VM_MONITORING_UPDATE', 1),
(64, 'Delete a VM for a Workgroup', 'VM_DELETE', 0),
(65, 'Restart a VM for a Workgroup', 'VM_RESTART', 1),
(66, 'Start a VM for a Workgroup', 'VM_START', 1),
(67, 'Stop a VM for a Workgroup', 'VM_STOP', 1),
(68, 'Create a private app for a Workgroup', 'APP_REPO_PRIVATE_APPS_CREATE', 1),
(69, 'Read a private app for a Workgroup', 'APP_REPO_PRIVATE_APPS_READ', 1),
(70, 'Restart a PaaS Service for a Workgroup', 'PAAS_SVC_RESTART', 1),
(71, 'Start a PaaS Service for a Workgroup', 'PAAS_SVC_START', 1),
(72, 'Stop a PaaS Service for a Workgroup', 'PAAS_SVC_STOP', 1),
(73, 'Disable a user for the SMS service for a Workgroup', 'SMS_DISABLE_USER', 0),
(74, 'Edit the token for the SMS service for a Workgroup', 'SMS_TOKEN_EDIT', 1),
(75, 'Read the token for the SMS service for a Workgroup', 'SMS_TOKEN_READ', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `AllocationPool`
--

CREATE TABLE IF NOT EXISTS `AllocationPool` (
  `AllocationPoolsID` bigint(20) NOT NULL AUTO_INCREMENT,
  `end` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `IaasSubnetID` bigint(20) NOT NULL,
  PRIMARY KEY (`AllocationPoolsID`),
  UNIQUE KEY `AllocationPoolsID` (`AllocationPoolsID`),
  KEY `FKF51BB93C4A6DD558` (`IaasSubnetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `APPaaSAppFileHistory`
--

CREATE TABLE IF NOT EXISTS `APPaaSAppFileHistory` (
  `APPaaSAppFileHistoryID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `APPaaSEnvironmentID` bigint(20) NOT NULL,
  `APPaaSAppFileID` bigint(20) NOT NULL,
  PRIMARY KEY (`APPaaSAppFileHistoryID`),
  UNIQUE KEY `APPaaSAppFileHistoryID` (`APPaaSAppFileHistoryID`),
  KEY `FKC9E3F5C91B0A2E89` (`APPaaSEnvironmentID`),
  KEY `FKC9E3F5C92ABE42D2` (`APPaaSAppFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `APPaaSEnvironment`
--

CREATE TABLE IF NOT EXISTS `APPaaSEnvironment` (
  `APPaaSEnvironmentID` bigint(20) NOT NULL,
  `serverType` varchar(64) NOT NULL,
  `APPaaSID` bigint(20) NOT NULL,
  `currentAppFile_ApplicationRepositoryEntryID` bigint(20) NOT NULL,
  PRIMARY KEY (`APPaaSEnvironmentID`),
  UNIQUE KEY `APPaaSEnvironmentID` (`APPaaSEnvironmentID`),
  KEY `FKDEDA3C21F915AA3A` (`currentAppFile_ApplicationRepositoryEntryID`),
  KEY `FKDEDA3C21E22F47D7` (`APPaaSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `ApplicationRepositoryEntry`
--

CREATE TABLE IF NOT EXISTS `ApplicationRepositoryEntry` (
  `ApplicationRepositoryEntryID` bigint(20) NOT NULL AUTO_INCREMENT,
  `applicationName` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL,
  `description` varchar(2048) NOT NULL,
  `fileName` varchar(256) NOT NULL,
  `filePath` varchar(1024) NOT NULL,
  `fileSize` int(11) NOT NULL,
  `shared` bit(1) NOT NULL,
  `tag` varchar(45) NOT NULL,
  `UserAccountID` bigint(20) NOT NULL,
  `WorkgroupID` bigint(20) NOT NULL,
  PRIMARY KEY (`ApplicationRepositoryEntryID`),
  UNIQUE KEY `ApplicationRepositoryEntryID` (`ApplicationRepositoryEntryID`),
  KEY `FKA63FBFF81D187BE9` (`UserAccountID`),
  KEY `FKA63FBFF88BCD9FA1` (`WorkgroupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `AtomicService`
--

CREATE TABLE IF NOT EXISTS `AtomicService` (
  `atomicServiceID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `label` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  PRIMARY KEY (`atomicServiceID`),
  UNIQUE KEY `atomicServiceID` (`atomicServiceID`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dump dei dati per la tabella `AtomicService`
--

INSERT INTO `AtomicService` (`atomicServiceID`, `description`, `label`, `name`, `type`) VALUES
(1, NULL, 'metriche del SO', 'iaas', 'SO'),
(2, NULL, 'VMaaS', 'vmaas', 'VM_LINUX'),
(3, NULL, 'MySQL', 'mysql', 'DB_MySQL'),
(4, NULL, 'Apache Web Server', 'apache', 'WS_APACHE_HTTPD'),
(5, NULL, 'Servizio PostGreSQL', 'postgresql', 'DB_POSTGRE'),
(6, NULL, 'Servizio RabbitMQ', 'rabbitmq', 'MQ_RABBITMQ'),
(7, NULL, 'Proxy davanti ai servizi', 'apache', 'LB_APACHE'),
(8, NULL, 'Servizio tomcat', 'tomcat', 'AS_TOMCAT'),
(9, NULL, 'Proxy', 'haproxy', 'LB_HAPROXY'),
(10, NULL, 'Client di Pentaho', 'x2go', 'RD_X2GO'),
(11, NULL, 'Server Pentaho', 'pentaho', 'EX_PENTAHO');

-- --------------------------------------------------------

--
-- Struttura della tabella `AtomicService_has_Metric`
--

CREATE TABLE IF NOT EXISTS `AtomicService_has_Metric` (
  `atomicServiceID` bigint(20) NOT NULL,
  `metricID` bigint(20) NOT NULL,
  PRIMARY KEY (`atomicServiceID`,`metricID`),
  KEY `FKADC6688AEABF182C` (`atomicServiceID`),
  KEY `FKADC6688A2F1289BE` (`metricID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `AtomicService_has_Metric`
--

INSERT INTO `AtomicService_has_Metric` (`atomicServiceID`, `metricID`) VALUES
(2, 1),
(3, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 6),
(5, 7),
(6, 8),
(6, 9),
(7, 4),
(7, 5),
(8, 11),
(8, 12),
(9, 13),
(9, 14),
(10, 17),
(11, 15),
(11, 16),
(11, 18);

-- --------------------------------------------------------

--
-- Struttura della tabella `AuthToken`
--

CREATE TABLE IF NOT EXISTS `AuthToken` (
  `tokenID` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `expiresAt` datetime NOT NULL,
  `session` tinyint(4) NOT NULL,
  `userAccountId` bigint(20) NOT NULL,
  PRIMARY KEY (`tokenID`),
  UNIQUE KEY `tokenID` (`tokenID`),
  KEY `FKCDE855111D187BE9` (`userAccountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `BIaaS`
--

CREATE TABLE IF NOT EXISTS `BIaaS` (
  `BIaaSID` bigint(20) NOT NULL,
  `backupEnabled` bit(1) NOT NULL,
  `backupInterval` int(11) DEFAULT NULL,
  `configurationVariant` varchar(128) DEFAULT NULL,
  `productType` varchar(128) NOT NULL,
  `productVersion` varchar(128) NOT NULL,
  `verticalScalingEnabled` bit(1) NOT NULL,
  `verticalScalingMaxDiskSize` int(11) DEFAULT NULL,
  `verticalScalingMaxFlavor` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`BIaaSID`),
  UNIQUE KEY `BIaaSID` (`BIaaSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `CloudifyInstance`
--

CREATE TABLE IF NOT EXISTS `CloudifyInstance` (
  `CloudifyInstanceID` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` varchar(255) NOT NULL,
  `IaaSTenantID` bigint(20) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  `iaaSTenant` tinyblob,
  PRIMARY KEY (`CloudifyInstanceID`),
  KEY `FK8488B67CD2F498B7` (`IaaSZoneID`),
  KEY `FK8488B67C5CEC1A33` (`IaaSTenantID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Configuration`
--

CREATE TABLE IF NOT EXISTS `Configuration` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Configuration`
--

INSERT INTO `Configuration` (`key`, `value`) VALUES
('availability_zone_infn', 'Nova'),
('iaas_flavor', 'Small (1 VCPU, 1 GB di Ram, 10 GB di Hard Disk ) - Medium (2 VCPU, 4 GB di Ram, 20 GB di Hard Disk) - Large (4 VCPU, 8 GB di Ram, 20 GB di Hard Disk)'),
('iaas_profile', 'Bronze (Overbooking 2) - Silver (Overbooking 1.5) - Gold (Overbooking 1)'),
('monitoring_test', 'test'),
('paas_appaas_application_server', 'Tomcat - Glassfish - Jboss'),
('paas_appaas_server_servertype', 'Application Server - Web Server'),
('paas_appaas_web_server', 'Apache HTTP'),
('paas_biaas_pentaho_database', 'MySQL 5.1 - MySQL 5.0 - PostGreSQL 9.1'),
('paas_biaas_pentaho_volume', '16 GB - 32 GB - 64 GB - 128 GB'),
('paas_dbaas_backup', 'Nessun Backup - Giornaliero - Settimanale - Mensile'),
('paas_dbaas_dbms', 'MySQL - PostgreSQL'),
('paas_load_balancing', '1 Istanza - 2 Istanze - 3 Istanze - 4 Istanze'),
('paas_rabbit_versions', 'RabbitMQ 3.4.0 (Erlang 14B04)'),
('uploadFileSize', '100000000');

-- --------------------------------------------------------

--
-- Struttura della tabella `DBaaS`
--

CREATE TABLE IF NOT EXISTS `DBaaS` (
  `DBaaSID` bigint(20) NOT NULL,
  `backupEnabled` bit(1) NOT NULL,
  `backupInterval` int(11) DEFAULT NULL,
  `diskEncryptionEnabled` bit(1) NOT NULL,
  `diskSize` int(11) NOT NULL,
  `productType` varchar(128) NOT NULL,
  `productVersion` varchar(128) NOT NULL,
  `verticalScalingEnabled` bit(1) NOT NULL,
  `verticalScalingMaxDiskSize` int(11) DEFAULT NULL,
  `verticalScalingMaxFlavor` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`DBaaSID`),
  UNIQUE KEY `DBaaSID` (`DBaaSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `DNSNameServer`
--

CREATE TABLE IF NOT EXISTS `DNSNameServer` (
  `DNSNameServersID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `IaasSubnetID` bigint(20) NOT NULL,
  PRIMARY KEY (`DNSNameServersID`),
  UNIQUE KEY `DNSNameServersID` (`DNSNameServersID`),
  KEY `FK427F2F974A6DD558` (`IaasSubnetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `DNSRecord`
--

CREATE TABLE IF NOT EXISTS `DNSRecord` (
  `DNSRecordID` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` varchar(255) NOT NULL,
  `domainName` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `DNSZoneID` bigint(20) NOT NULL,
  `PaaSServiceID` bigint(20) NOT NULL,
  PRIMARY KEY (`DNSRecordID`),
  KEY `FKC119B6BAFC34E0B7` (`PaaSServiceID`),
  KEY `FKC119B6BAD0344575` (`DNSZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `DNSZone`
--

CREATE TABLE IF NOT EXISTS `DNSZone` (
  `DNSZoneID` bigint(20) NOT NULL AUTO_INCREMENT,
  `apiType` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dnsServerURL` varchar(255) NOT NULL,
  `domainName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DNSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `DNSZone_PrismaZone`
--

CREATE TABLE IF NOT EXISTS `DNSZone_PrismaZone` (
  `dnsZones_DNSZoneID` bigint(20) NOT NULL,
  `prismaZones_PrismaZoneID` bigint(20) NOT NULL,
  PRIMARY KEY (`dnsZones_DNSZoneID`,`prismaZones_PrismaZoneID`),
  KEY `FKB5125356BDFF6D7B` (`prismaZones_PrismaZoneID`),
  KEY `FKB512535667D00934` (`dnsZones_DNSZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `ejbcaCost`
--

CREATE TABLE IF NOT EXISTS `ejbcaCost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `certificateSN` varchar(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSAvailabilityZone`
--

CREATE TABLE IF NOT EXISTS `IaaSAvailabilityZone` (
  `IaaSAvailabilityZoneID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSAvailabilityZoneID`),
  KEY `FK6FD9F11D2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;


-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSEnvironment`
--

CREATE TABLE IF NOT EXISTS `IaaSEnvironment` (
  `IaaSEnvironmentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL,
  `adminUsername` varchar(255) NOT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `identityURL` varchar(255) NOT NULL,
  `identityVersion` varchar(255) NOT NULL,
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`IaaSEnvironmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSFlavor`
--

CREATE TABLE IF NOT EXISTS `IaaSFlavor` (
  `IaaSFlavorID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`IaaSFlavorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `IaaSFlavor`
--

INSERT INTO `IaaSFlavor` (`IaaSFlavorID`, `description`, `name`) VALUES
(1, 'Small (1 VCPU, 1 GB di Ram, 10 GB di Hard Disk)', 'small'),
(2, 'Medium (2 VCPU, 4 GB di Ram, 20 GB di Hard Disk)', 'medium'),
(3, 'Large (4 VCPU, 8 GB di Ram, 20 GB di Hard Disk)', 'large');

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSHost`
--

CREATE TABLE IF NOT EXISTS `IaaSHost` (
  `IaaSHostID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  `IaaSTenantID` bigint(20) DEFAULT NULL,
  `IaaSAvailabilityZoneID` bigint(20) DEFAULT NULL,
  `IaaSImageID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IaaSHostID`),
  KEY `FK54AC5C125CEC1A33` (`IaaSTenantID`),
  KEY `FK54AC5C12D2F498B7` (`IaaSZoneID`),
  KEY `FK54AC5C12343DE4D` (`IaaSImageID`),
  KEY `FK54AC5C12EBB09BCD` (`IaaSAvailabilityZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSHost_has_IaaSKey`
--

CREATE TABLE IF NOT EXISTS `IaaSHost_has_IaaSKey` (
  `IaaSHost_IaaSHostID` bigint(20) NOT NULL,
  `iaasKeys_IaaSKeyID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSHost_IaaSHostID`,`iaasKeys_IaaSKeyID`),
  KEY `FK5DD9F163C1CB041C` (`IaaSHost_IaaSHostID`),
  KEY `FK5DD9F16388CBA794` (`iaasKeys_IaaSKeyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSHost_has_IaaSNetwork`
--

CREATE TABLE IF NOT EXISTS `IaaSHost_has_IaaSNetwork` (
  `IaaSHost_has_IaaSNetworkID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ipAddress` varchar(32) NOT NULL,
  `IaaSHostID` bigint(20) NOT NULL,
  `IaaSNetworkID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSHost_has_IaaSNetworkID`),
  UNIQUE KEY `IaaSNetworkID` (`IaaSNetworkID`,`IaaSHostID`),
  KEY `FKB1908B32ECF2F833` (`IaaSNetworkID`),
  KEY `FKB1908B32B437ADAF` (`IaaSHostID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSImage`
--

CREATE TABLE IF NOT EXISTS `IaaSImage` (
  `IaaSImageID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `shared` tinyint(1) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  `IaaSTenantID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IaaSImageID`),
  KEY `FK40EC10315CEC1A33` (`IaaSTenantID`),
  KEY `FK40EC1031D2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSKey`
--

CREATE TABLE IF NOT EXISTS `IaaSKey` (
  `IaaSKeyID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fingerprint` varchar(255) NOT NULL,
  `paasServiceKey` tinyint(1) NOT NULL,
  `publicKey` text NOT NULL,
  `reference` varchar(255) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  `IaaSTenantID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IaaSKeyID`),
  KEY `FKC0AAC2B55CEC1A33` (`IaaSTenantID`),
  KEY `FKC0AAC2B5D2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSNetwork`
--

CREATE TABLE IF NOT EXISTS `IaaSNetwork` (
  `IaaSNetworkID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adminStateUp` varchar(255) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `floatingIP` tinyint(1) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `routerExternal` varchar(255) NOT NULL,
  `shared` tinyint(1) NOT NULL,
  `status` varchar(255) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  `IaaSTenantID` bigint(20) DEFAULT NULL,
  `openstackId` varchar(255) DEFAULT NULL,
  `tenantId` varchar(255) DEFAULT NULL,
  `workgroupID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSNetworkID`),
  KEY `FKB21463845CEC1A33` (`IaaSTenantID`),
  KEY `FKB2146384D2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSQoSProfile`
--

CREATE TABLE IF NOT EXISTS `IaaSQoSProfile` (
  `IaaSQoSProfileID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`IaaSQoSProfileID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `IaaSQoSProfile`
--

INSERT INTO `IaaSQoSProfile` (`IaaSQoSProfileID`, `description`, `name`) VALUES
(1, 'Bronze (Overbooking 2)', 'bronze'),
(2, 'Silver (Overbooking 1.5)', 'silver'),
(3, 'Gold (Overbooking 1)', 'gold');

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSSecurityGroup`
--

CREATE TABLE IF NOT EXISTS `IaaSSecurityGroup` (
  `IaasSecurityGroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `VMaaSID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaasSecurityGroupID`),
  UNIQUE KEY `IaasSecurityGroupID` (`IaasSecurityGroupID`),
  KEY `FKC41447F5839EFBCB` (`VMaaSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSSecurityGroupRule`
--

CREATE TABLE IF NOT EXISTS `IaaSSecurityGroupRule` (
  `IaasSecurityGroupPortID` bigint(20) NOT NULL AUTO_INCREMENT,
  `direction` varchar(3) DEFAULT NULL,
  `securityGroup_securityGroupID` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `portEnd` int(11) DEFAULT NULL,
  `portStart` int(11) DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `remote` varchar(255) DEFAULT NULL,
  `IaasSecurityGroupID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaasSecurityGroupPortID`),
  UNIQUE KEY `IaasSecurityGroupPortID` (`IaasSecurityGroupPortID`),
  KEY `FK903C509151126196` (`IaasSecurityGroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSSubnet`
--

CREATE TABLE IF NOT EXISTS `IaaSSubnet` (
  `IaasSubnetID` bigint(20) NOT NULL AUTO_INCREMENT,
  `cidr` varchar(255) DEFAULT NULL,
  `enableDHCP` bit(1) DEFAULT NULL,
  `gatewayIp` varchar(255) DEFAULT NULL,
  `ipVersion` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `openstackId` varchar(255) DEFAULT NULL,
  `IaasNetworkID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaasSubnetID`),
  UNIQUE KEY `IaasSubnetID` (`IaasSubnetID`),
  KEY `FKEE17B747ECF2F833` (`IaasNetworkID`),
  KEY `FKEE17B7474530E194` (`IaasNetworkID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSTenant`
--

CREATE TABLE IF NOT EXISTS `IaaSTenant` (
  `IaaSTenantID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `core` tinyint(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `IaaSEnvironmentID` bigint(20) NOT NULL,
  `workgroupID` bigint(20) DEFAULT NULL,
  `cloudifyInstanceID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IaaSTenantID`),
  KEY `FKEEF05C941794C4BD` (`IaaSEnvironmentID`),
  KEY `FKEEF05C948BCD9FA1` (`workgroupID`),
  KEY `FKEEF05C9487B73A2A` (`IaaSEnvironmentID`),
  KEY `FKEEF05C94B6BB6016` (`cloudifyInstanceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IaaSZone`
--

CREATE TABLE IF NOT EXISTS `IaaSZone` (
  `IaaSZoneID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `IaaSType` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `managementNetworkEnabled` tinyint(1) NOT NULL,
  `monitoringPillarBaseURL` varchar(255) NOT NULL,
  `privateNetworksEnabled` tinyint(1) NOT NULL,
  `repositoryBaseURL` varchar(255) NOT NULL,
  `IaaSEnvironmentID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSZoneID`),
  KEY `FK54B48A161794C4BD` (`IaaSEnvironmentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `IdentityProvider`
--

CREATE TABLE IF NOT EXISTS `IdentityProvider` (
  `identityProviderID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `entityID` varchar(2048) NOT NULL,
  `modifiedAt` datetime NOT NULL,
  `organizationID` bigint(20) NOT NULL,
  PRIMARY KEY (`identityProviderID`),
  UNIQUE KEY `identityProviderID` (`identityProviderID`),
  KEY `FK220580EF2DFD6779` (`organizationID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `IdentityProvider`
--

INSERT INTO `IdentityProvider` (`identityProviderID`, `createdAt`, `entityID`, `modifiedAt`, `organizationID`) VALUES
(1, '2014-10-11 12:01:45', 'IDP1', '2014-10-11 12:01:45', 1),
(2, '2014-10-21 09:24:03', 'https://prisma-idp.cloud.ba.infn.it/simplesaml/saml2/idp/metadata.php', '2014-10-21 09:24:03', 1),
(3, '2014-10-27 10:27:52', 'http://ststest-replynet.reply.it/adfs/services/trust', '2014-10-27 10:27:52', 2),
(4, '2014-11-04 14:27:03', 'https://idp.infn.it/saml2/idp/metadata.php', '2014-11-04 14:27:03', 3),
(5, '2014-11-07 09:04:18', 'http://sielte-idp.sielte.it/adfs/services/trust', '2014-11-07 09:20:43', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `LRT`
--

CREATE TABLE IF NOT EXISTS `LRT` (
  `LRTID` bigint(20) NOT NULL AUTO_INCREMENT,
  `completedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `instanceId` bigint(20) DEFAULT NULL,
  `lastPendingWorkItemId` bigint(20) DEFAULT NULL,
  `name` varchar(512) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `result_EventID` bigint(20) DEFAULT NULL,
  `userAccountID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`LRTID`),
  UNIQUE KEY `LRTID` (`LRTID`),
  KEY `FK1278E1D187BE9` (`userAccountID`),
  KEY `FK1278E936DC7A0` (`result_EventID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=217 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `LRTEvent`
--

CREATE TABLE IF NOT EXISTS `LRTEvent` (
  `EventID` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` longtext NOT NULL,
  `eventType` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `LRTID` bigint(20) NOT NULL,
  PRIMARY KEY (`EventID`),
  UNIQUE KEY `EventID` (`EventID`),
  KEY `FK5BF2E3ACBF1D3B56` (`LRTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Metric`
--

CREATE TABLE IF NOT EXISTS `Metric` (
  `metricID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `label` varchar(128) NOT NULL,
  `measurementUnit` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `purpose` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`metricID`),
  UNIQUE KEY `metricID` (`metricID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dump dei dati per la tabella `Metric`
--

INSERT INTO `Metric` (`metricID`, `description`, `label`, `measurementUnit`, `name`, `purpose`) VALUES
(1, NULL, 'ssh connection', 'bit', 'VMaaSSSHAvailable', 2),
(2, NULL, 'MYSQLProcessRunning', 'bit', 'MYSQLProcessRunning', 2),
(3, NULL, 'MYSQLPortListening', 'bit', 'MYSQLPortListening', 2),
(4, NULL, 'APACHEProcessRunning', 'bit', 'APACHEProcessRunning', 2),
(5, NULL, 'APACHEPortListening', 'bit', 'APACHEPortListening', 2),
(6, NULL, 'POSTGRESQLProcessRunning', 'bit', 'POSTGRESQLProcessRunning', 2),
(7, NULL, 'POSTGRESQLPortListening', 'bit', 'POSTGRESQLPortListening', 2),
(8, NULL, 'RABBITMQProcessRunning', 'bit', 'RABBITMQProcessRunning', 2),
(9, NULL, 'RABBITMQPortListening', 'bit', 'RABBITMQPortListening', 2),
(11, NULL, 'TOMCATProcessRunning', 'bit', 'TOMCATProcessRunning', 2),
(12, NULL, 'TOMCATPortListening', 'bit', 'TOMCATPortListening', 2),
(13, NULL, 'HAPROXYProcessRunning', 'bit', 'HAPROXYProcessRunning', 2),
(14, NULL, 'HAPROXYPortListening', 'bit', 'HAPROXYPortListening', 2),
(15, NULL, 'PENTAHOProcessRunning', 'bit', 'PENTAHOProcessRunning', 2),
(16, NULL, 'PENTAHOPortListening', 'bit', 'PENTAHOPortListening', 2),
(17, NULL, 'X2GOsshAvalilable', 'bit', 'X2GOsshAvalilable', 2),
(18, NULL, 'PENTAHOPostgresqlProcessRunning', 'bit', 'PENTAHOPostgresqlProcessRunning', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `MQaaS`
--

CREATE TABLE IF NOT EXISTS `MQaaS` (
  `QueueaaSID` bigint(20) NOT NULL,
  `productType` varchar(128) NOT NULL,
  `productVersion` varchar(128) NOT NULL,
  PRIMARY KEY (`QueueaaSID`),
  UNIQUE KEY `QueueaaSID` (`QueueaaSID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSAvailabilityZone`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSAvailabilityZone` (
  `IaaSAvailabilityZoneID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSAvailabilityZoneID`),
  KEY `FKFD443E4FEBB09BCD` (`IaaSAvailabilityZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSEnvironment`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSEnvironment` (
  `IaaSEnvironmentID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSEnvironmentID`),
  KEY `FK6769F26B1794C4BD` (`IaaSEnvironmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Struttura della tabella `OpenStackIaaSHost`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSHost` (
  `IaaSHostID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSHostID`),
  KEY `FK16696850B437ADAF` (`IaaSHostID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSImage`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSImage` (
  `IaaSImageID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSImageID`),
  KEY `FKB6D08BB3343DE4D` (`IaaSImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSKey`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSKey` (
  `IaaSKeyID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSKeyID`),
  KEY `FK8D1C36B7D469B655` (`IaaSKeyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSNetwork`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSNetwork` (
  `IaaSNetworkID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSNetworkID`),
  KEY `FK40C80686ECF2F833` (`IaaSNetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSTenant`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSTenant` (
  `IaaSTenantID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSTenantID`),
  KEY `FK359B51525CEC1A33` (`IaaSTenantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `OpenStackIaaSZone`
--

CREATE TABLE IF NOT EXISTS `OpenStackIaaSZone` (
  `IaaSZoneID` bigint(20) NOT NULL,
  PRIMARY KEY (`IaaSZoneID`),
  KEY `FK16719654D2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Struttura della tabella `Organization`
--

CREATE TABLE IF NOT EXISTS `Organization` (
  `organizationID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `description` longtext NOT NULL,
  `logoURI` varchar(2083) DEFAULT NULL,
  `modifiedAt` datetime NOT NULL,
  `name` varchar(45) NOT NULL,
  `websiteLabel` varchar(100) DEFAULT NULL,
  `websiteURI` varchar(2083) DEFAULT NULL,
  PRIMARY KEY (`organizationID`),
  UNIQUE KEY `organizationID` (`organizationID`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `OrganizationReferent`
--

CREATE TABLE IF NOT EXISTS `OrganizationReferent` (
  `organizationReferentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `Organization_organizationID` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationReferentID`),
  UNIQUE KEY `organizationReferentID` (`organizationReferentID`),
  KEY `FK8B37EEDE6A1C7C05` (`Organization_organizationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSDeployment`
--

CREATE TABLE IF NOT EXISTS `PaaSDeployment` (
  `PaaSDeploymentID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `PaaSType` varchar(256) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `OPTLOCK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`PaaSDeploymentID`),
  UNIQUE KEY `PaaSDeploymentID` (`PaaSDeploymentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSDeploymentService`
--

CREATE TABLE IF NOT EXISTS `PaaSDeploymentService` (
  `PaaSDeploymentServiceID` bigint(20) NOT NULL AUTO_INCREMENT,
  `currentInstances` int(11) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `plannedInstances` int(11) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `type` varchar(256) NOT NULL,
  `OPTLOCK` bigint(20) DEFAULT NULL,
  `PaaSDeploymentID` bigint(20) NOT NULL,
  PRIMARY KEY (`PaaSDeploymentServiceID`),
  UNIQUE KEY `PaaSDeploymentServiceID` (`PaaSDeploymentServiceID`),
  KEY `FKD742788D38BEFD93` (`PaaSDeploymentID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSDeploymentServiceInstance`
--

CREATE TABLE IF NOT EXISTS `PaaSDeploymentServiceInstance` (
  `PaaSDeploymentServiceInstanceID` bigint(20) NOT NULL AUTO_INCREMENT,
  `instanceId` varchar(45) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `OPTLOCK` bigint(20) DEFAULT NULL,
  `IaaSHostID` bigint(20) DEFAULT NULL,
  `PaaSDeploymentServiceID` bigint(20) NOT NULL,
  `hostId` longtext,
  `privateIP` varchar(32) DEFAULT NULL,
  `publicIP` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`PaaSDeploymentServiceInstanceID`),
  UNIQUE KEY `PaaSDeploymentServiceInstanceID` (`PaaSDeploymentServiceInstanceID`),
  KEY `FK57EC9442B437ADAF` (`IaaSHostID`),
  KEY `FK57EC9442AF0971AD` (`PaaSDeploymentServiceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSService`
--

CREATE TABLE IF NOT EXISTS `PaaSService` (
  `PaaSServiceID` bigint(20) NOT NULL AUTO_INCREMENT,
  `availabilityZone` varchar(128) DEFAULT NULL,
  `certificatePath` varchar(256) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `description` varchar(2048) NOT NULL,
  `domainName` varchar(255) DEFAULT NULL,
  `errorDescription` varchar(45) DEFAULT NULL,
  `IaaSFlavor` varchar(256) DEFAULT NULL,
  `lastUpdateFromMonitoring` datetime DEFAULT NULL,
  `loadBalancingInstances` int(11) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `notificationEmail` varchar(256) DEFAULT NULL,
  `operation` varchar(45) DEFAULT NULL,
  `productSpecificParameterType` varchar(255) DEFAULT NULL,
  `productSpecificParameters` longblob,
  `publicVisibility` bit(1) NOT NULL,
  `QoS` varchar(64) DEFAULT NULL,
  `secureConnectionEnabled` bit(1) DEFAULT NULL,
  `securityGroup` varchar(45) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `OPTLOCK` bigint(20) NOT NULL,
  `PaaSDeploymentID` bigint(20) DEFAULT NULL,
  `PrismaZoneID` bigint(20) NOT NULL,
  `userAccountID` bigint(20) NOT NULL,
  `workgroupID` bigint(20) NOT NULL,
  PRIMARY KEY (`PaaSServiceID`),
  UNIQUE KEY `PaaSServiceID` (`PaaSServiceID`),
  KEY `FKCCB7B3521D187BE9` (`userAccountID`),
  KEY `FKCCB7B35238BEFD93` (`PaaSDeploymentID`),
  KEY `FKCCB7B352F874543` (`PrismaZoneID`),
  KEY `FKCCB7B3528BCD9FA1` (`workgroupID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSServiceEndpoint`
--

CREATE TABLE IF NOT EXISTS `PaaSServiceEndpoint` (
  `PaaSServiceEndpointID` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` varchar(32) NOT NULL,
  `uri` varchar(256) NOT NULL,
  `PaaSServiceID` bigint(20) NOT NULL,
  PRIMARY KEY (`PaaSServiceEndpointID`),
  UNIQUE KEY `PaaSServiceEndpointID` (`PaaSServiceEndpointID`),
  KEY `FKE8E1C307FC34E0B7` (`PaaSServiceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PaaSServiceEvent`
--

CREATE TABLE IF NOT EXISTS `PaaSServiceEvent` (
  `EventID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `details` longtext NOT NULL,
  `type` varchar(32) NOT NULL,
  `verbose` longtext,
  `PaaSServiceID` bigint(20) NOT NULL,
  PRIMARY KEY (`EventID`),
  UNIQUE KEY `EventID` (`EventID`),
  KEY `FK91111268FC34E0B7` (`PaaSServiceID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=757 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `PrismaZone`
--

CREATE TABLE IF NOT EXISTS `PrismaZone` (
  `PrismaZoneID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `IaaSZoneID` bigint(20) NOT NULL,
  PRIMARY KEY (`PrismaZoneID`),
  UNIQUE KEY `IaaSZoneID` (`IaaSZoneID`),
  KEY `FK7BB6892CD2F498B7` (`IaaSZoneID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `Privilege`
--

CREATE TABLE IF NOT EXISTS `Privilege` (
  `privilegeID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`privilegeID`),
  UNIQUE KEY `privilegeID` (`privilegeID`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `Privilege`
--

INSERT INTO `Privilege` (`privilegeID`, `description`, `name`) VALUES
(1, 'Workgroup user', 'WG_USER'),
(2, 'Workgroup administrator', 'WG_ADMIN');

-- --------------------------------------------------------

--
-- Struttura della tabella `Privilege_allows_Action`
--

CREATE TABLE IF NOT EXISTS `Privilege_allows_Action` (
  `actionId` bigint(20) NOT NULL,
  `privilegeId` bigint(20) NOT NULL,
  PRIMARY KEY (`privilegeId`,`actionId`),
  KEY `FK2F4970BDF638B25D` (`actionId`),
  KEY `FK2F4970BD56350C27` (`privilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `Privilege_allows_Action`
--

INSERT INTO `Privilege_allows_Action` (`actionId`, `privilegeId`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 2),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(45, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 1),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 1),
(56, 2),
(57, 2),
(58, 1),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 2),
(74, 2),
(75, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `Role`
--

CREATE TABLE IF NOT EXISTS `Role` (
  `roleID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleID`),
  UNIQUE KEY `roleID` (`roleID`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `name_2` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `Role`
--

INSERT INTO `Role` (`roleID`, `description`, `name`) VALUES
(1, 'Prisma standard user.', 'PRISMA_USER'),
(2, 'Prisma Admin', 'PRISMA_ADMIN');

-- --------------------------------------------------------

--
-- Struttura della tabella `Threashold`
--

CREATE TABLE IF NOT EXISTS `Threashold` (
  `threasholdID` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `label` varchar(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `severity` int(11) DEFAULT NULL,
  `metricID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threasholdID`),
  UNIQUE KEY `threasholdID` (`threasholdID`),
  KEY `FK310D2A782F1289BE` (`metricID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dump dei dati per la tabella `Threashold`
--

INSERT INTO `Threashold` (`threasholdID`, `description`, `label`, `name`, `severity`, `metricID`) VALUES
(1, 'verifica il processo', 'ssh test', 'SSHAvailable', 3, 1),
(2, 'verifica se il la porta risponde', 'MysqlPortListening', 'MysqlPortListening', 3, 3),
(3, 'verifica se il processo è running', 'MysqlProcessRunning', 'MysqlProcessRunning', 3, 2),
(4, 'verifica il processo', 'ApacheProcessRunning', 'ApacheProcessRunning', 3, 4),
(5, 'verifica porta in ascolto', 'ApachePortListening', 'ApachePortListening', 3, 5),
(6, 'PostgresqlPortListening', 'PostgresqlPortListening', 'PostgresqlPortListening', 3, 7),
(7, 'PostgresqlProcessRunning', 'PostgresqlProcessRunning', 'PostgresqlProcessRunning', 3, 6),
(8, 'RabbitMQProcessRunning', 'RabbitMQProcessRunning', 'RabbitMQProcessRunning', 3, 8),
(9, 'RabbitMQPortListening', 'RabbitMQPortListening', 'RabbitMQPortListening', 3, 9),
(11, 'TomcatProcessRunning', 'TomcatProcessRunning', 'TomcatProcessRunning', 3, 11),
(12, 'TomcatPortListening', 'TomcatPortListening', 'TomcatPortListening', 3, 12),
(13, 'HAProxyProcessRunning', 'HAProxyProcessRunning', 'HAProxyProcessRunning', 3, 13),
(14, 'HAProxyPortListening', 'HAProxyPortListening', 'HAProxyPortListening', 3, 14),
(15, 'PentahoProcessRunning', 'PentahoProcessRunning', 'PentahoProcessRunning', 3, 15),
(16, 'PentahoPortListening', 'PentahoPortListening', 'PentahoPortListening', 3, 16),
(17, 'x2goSSHAvalilable', 'x2goSSHAvalilable', 'x2goSSHAvalilable', 3, 17),
(18, 'PentahoPostgresqlProcessRunning', 'PentahoPostgresqlProcessRunning', 'PentahoPostgresqlProcessRunning', 3, 18);

-- --------------------------------------------------------

--
-- Struttura della tabella `UserAccess`
--

CREATE TABLE IF NOT EXISTS `UserAccess` (
  `userAccessID` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` datetime NOT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `userAccountID` bigint(20) NOT NULL,
  PRIMARY KEY (`userAccessID`),
  UNIQUE KEY `userAccessID` (`userAccessID`),
  KEY `FKB60A252F1D187BE9` (`userAccountID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `UserAccount`
--

CREATE TABLE IF NOT EXISTS `UserAccount` (
  `userAccountID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `enabledAt` datetime DEFAULT NULL,
  `modifiedAt` datetime NOT NULL,
  `nameIdOnIdentityProvider` varchar(45) NOT NULL,
  `suspended` bit(1) NOT NULL,
  `suspendedAt` datetime DEFAULT NULL,
  `identityProviderID` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `userProfileId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userAccountID`),
  UNIQUE KEY `userAccountID` (`userAccountID`),
  UNIQUE KEY `identityProviderID` (`identityProviderID`,`nameIdOnIdentityProvider`),
  KEY `FKB3F13C281CC8BE1` (`userProfileId`),
  KEY `FKB3F13C2AADCC45D` (`roleId`),
  KEY `FKB3F13C2A28B9DAF` (`identityProviderID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dump dei dati per la tabella `UserAccount`
--

INSERT INTO `UserAccount` (`userAccountID`, `createdAt`, `email`, `enabled`, `enabledAt`, `modifiedAt`, `nameIdOnIdentityProvider`, `suspended`, `suspendedAt`, `identityProviderID`, `roleId`, `userProfileId`) VALUES
(1, '2014-10-11 14:02:18', 'admin@admin.admin', b'1', NULL, '2015-07-31 09:57:42', 'admin', b'0', NULL, 1, 2, 1);
-- --------------------------------------------------------

--
-- Struttura della tabella `UserAccountConfirmation`
--

CREATE TABLE IF NOT EXISTS `UserAccountConfirmation` (
  `userAccountConfirmationID` bigint(20) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime NOT NULL,
  `expiresOn` datetime NOT NULL,
  `token` varchar(45) NOT NULL,
  `valid` bit(1) NOT NULL,
  `userAccountID` bigint(20) NOT NULL,
  PRIMARY KEY (`userAccountConfirmationID`),
  UNIQUE KEY `userAccountConfirmationID` (`userAccountConfirmationID`),
  UNIQUE KEY `token` (`token`),
  UNIQUE KEY `token_2` (`token`),
  KEY `FK246F61171D187BE9` (`userAccountID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `UserAccount_has_Workgroup`
--

CREATE TABLE IF NOT EXISTS `UserAccount_has_Workgroup` (
  `userAccountID` bigint(20) NOT NULL,
  `workgroupID` bigint(20) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `lastActiveWorkgroup` tinyint(1) NOT NULL,
  `workgroupReferent` tinyint(1) NOT NULL,
  `privilegeID` bigint(20) DEFAULT NULL,
  `approvedBy_userAccountID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userAccountID`,`workgroupID`),
  KEY `FK35DFD0CC1D187BE9` (`userAccountID`),
  KEY `FK35DFD0CC75798EB8` (`approvedBy_userAccountID`),
  KEY `FK35DFD0CC56350C27` (`privilegeID`),
  KEY `FK35DFD0CC8BCD9FA1` (`workgroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `UserAccount_has_Workgroup`
--

INSERT INTO `UserAccount_has_Workgroup` (`userAccountID`, `workgroupID`, `approved`, `lastActiveWorkgroup`, `workgroupReferent`, `privilegeID`, `approvedBy_userAccountID`) VALUES
(1, 1, 1, 1, 1, 2, 2);
-- --------------------------------------------------------

--
-- Struttura della tabella `UserProfile`
--

CREATE TABLE IF NOT EXISTS `UserProfile` (
  `userAccountID` bigint(20) NOT NULL,
  `avatarURI` varchar(2083) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `emailRef` varchar(100) NOT NULL,
  `employer` varchar(100) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `modifiedAt` datetime NOT NULL,
  `nationality` varchar(45) NOT NULL,
  `personalPhone` varchar(45) DEFAULT NULL,
  `taxcode` varchar(16) NOT NULL,
  `workPhone` varchar(45) DEFAULT NULL,
  `userProfileId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userAccountID`),
  UNIQUE KEY `userAccountID` (`userAccountID`),
  KEY `FK3EFA133E57819C8C` (`userProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `UserProfile`
--

INSERT INTO `UserProfile` (`userAccountID`, `avatarURI`, `createdAt`, `emailRef`, `employer`, `firstName`, `lastName`, `middleName`, `modifiedAt`, `nationality`, `personalPhone`, `taxcode`, `workPhone`, `userProfileId`) VALUES
(1, '/public/data/img/accounting/noavatar.png', '2014-10-17 11:26:46', 'superadmin@superadmin.superadmin', 'Organization', 'Prisma', 'Admin', 'Antonio', '2015-08-07 20:24:35', '', '3335599666', '', '6589966332', NULL);
-- --------------------------------------------------------

--
-- Struttura della tabella `UserProfileImage`
--

CREATE TABLE IF NOT EXISTS `UserProfileImage` (
  `userProfileId` bigint(20) NOT NULL,
  `imageBlob` blob,
  PRIMARY KEY (`userProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `virtual_domains`
--

CREATE TABLE IF NOT EXISTS `virtual_domains` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `virtual_users`
--

CREATE TABLE IF NOT EXISTS `virtual_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `virtual_domain_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `user_prisma_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `VMaaS`
--

CREATE TABLE IF NOT EXISTS `VMaaS` (
  `VMaaSID` bigint(20) NOT NULL,
  `horizontalScaling` int(11) DEFAULT NULL,
  `horizontalScalingEnabled` bit(1) NOT NULL,
  `volumeSize` int(11) NOT NULL,
  `IaaSImageID` bigint(20) NOT NULL,
  `IaaSKeyID` bigint(20) NOT NULL,
  `imageName` varchar(255) DEFAULT NULL,
  `keyPairName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VMaaSID`),
  UNIQUE KEY `VMaaSID` (`VMaaSID`),
  KEY `FK4E05E1CD469B655` (`IaaSKeyID`),
  KEY `FK4E05E1C343DE4D` (`IaaSImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `VMaaS_has_IaaSNetwork`
--

CREATE TABLE IF NOT EXISTS `VMaaS_has_IaaSNetwork` (
  `VMaaSID` bigint(20) NOT NULL,
  `IaaSNetworkID` bigint(20) NOT NULL,
  PRIMARY KEY (`VMaaSID`,`IaaSNetworkID`),
  KEY `FKF423393CECF2F833` (`IaaSNetworkID`),
  KEY `FKF423393C839EFBCB` (`VMaaSID`),
  KEY `FKF423393C4530E194` (`IaaSNetworkID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `Workgroup`
--

CREATE TABLE IF NOT EXISTS `Workgroup` (
  `workgroupID` bigint(20) NOT NULL AUTO_INCREMENT,
  `approved` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `description` longtext,
  `label` varchar(45) DEFAULT NULL,
  `modifiedAt` datetime NOT NULL,
  `organizationID` bigint(20) NOT NULL,
  `approvedBy_userAccountID` bigint(20) DEFAULT NULL,
  `createdBy_userAccountID` bigint(20) NOT NULL,
  `iaasTenantId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workgroupID`),
  UNIQUE KEY `workgroupID` (`workgroupID`),
  KEY `FKB8E211EE75798EB8` (`approvedBy_userAccountID`),
  KEY `FKB8E211EE2DFD6779` (`organizationID`),
  KEY `FKB8E211EE577624E9` (`createdBy_userAccountID`),
  KEY `FKB8E211EE33E734A6` (`iaasTenantId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `Workgroup`
--

INSERT INTO `Workgroup` (`workgroupID`, `approved`, `createdAt`, `description`, `label`, `modifiedAt`, `organizationID`, `approvedBy_userAccountID`, `createdBy_userAccountID`, `iaasTenantId`) VALUES
(1, 1, '2014-10-11 14:02:39', 'The test workgroup', 'PrismaDemo', '2015-08-14 10:21:35', 1, 1, 1, NULL);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `IaaSSubnet`
--
ALTER TABLE `IaaSSubnet`
  ADD CONSTRAINT `FKEE17B7474530E194` FOREIGN KEY (`IaasNetworkID`) REFERENCES `IaaSNetwork` (`IaaSNetworkID`);

--
-- Limiti per la tabella `IaaSTenant`
--
ALTER TABLE `IaaSTenant`
  ADD CONSTRAINT `FKEEF05C9487B73A2A` FOREIGN KEY (`IaaSEnvironmentID`) REFERENCES `IaaSEnvironment` (`IaaSEnvironmentID`),
  ADD CONSTRAINT `FKEEF05C94B6BB6016` FOREIGN KEY (`cloudifyInstanceID`) REFERENCES `CloudifyInstance` (`CloudifyInstanceID`);

--
-- Limiti per la tabella `UserAccess`
--
ALTER TABLE `UserAccess`
  ADD CONSTRAINT `FKB60A252F1D187BE9` FOREIGN KEY (`userAccountID`) REFERENCES `UserAccount` (`userAccountID`);

--
-- Limiti per la tabella `UserProfile`
--
ALTER TABLE `UserProfile`
  ADD CONSTRAINT `FK3EFA133E57819C8C` FOREIGN KEY (`userProfileId`) REFERENCES `UserProfileImage` (`userProfileId`);

--
-- Limiti per la tabella `UserProfileImage`
--
ALTER TABLE `UserProfileImage`
  ADD CONSTRAINT `UserProfileImage_ibfk_1` FOREIGN KEY (`userProfileId`) REFERENCES `UserProfile` (`userAccountID`);

--
-- Limiti per la tabella `VMaaS_has_IaaSNetwork`
--
ALTER TABLE `VMaaS_has_IaaSNetwork`
  ADD CONSTRAINT `FKF423393C4530E194` FOREIGN KEY (`IaaSNetworkID`) REFERENCES `IaaSNetwork` (`IaaSNetworkID`);

--
-- Limiti per la tabella `Workgroup`
--
ALTER TABLE `Workgroup`
  ADD CONSTRAINT `FKB8E211EE33E734A6` FOREIGN KEY (`iaasTenantId`) REFERENCES `IaaSTenant` (`IaaSTenantID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
