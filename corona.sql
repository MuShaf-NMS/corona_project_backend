-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: corona
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `bio_siswa`
--

DROP TABLE IF EXISTS `bio_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bio_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_siswa` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_siswa`
--

LOCK TABLES `bio_siswa` WRITE;
/*!40000 ALTER TABLE `bio_siswa` DISABLE KEYS */;
INSERT INTO `bio_siswa` VALUES (1,'1d5dc7ff-649a-4199-8dc3-535c9291f135','siswa','siswa','L','Lombok','Lombok','2020-07-01','9379179710','vlkahjoihih@cjpoj.com','2020-07-23 18:16:27','2020-07-23 18:16:27','d63dbc91-b77b-424d-afc7-3f8891780088'),(3,'a049955b-ab14-43df-abd1-3b5457c6eeda','siswa2','siswa2','L','Lombok','Lombok','2020-07-01','89165619709','vpojopj@voj.com','2020-07-24 15:24:55','2020-07-24 15:24:55','efc69cb9-0029-4eec-81f3-b9310e096d91'),(4,'887c4be1-964d-4c65-8531-7e7bedd7dfc1','siswi','siswi','P','Lombok','Lombok','2020-07-01','09875982','poajjp@ksnlk.com','2020-07-29 09:09:37','2020-07-29 09:09:37','98f263df-8839-4df4-8b3b-5c273be64972');
/*!40000 ALTER TABLE `bio_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bio_user`
--

DROP TABLE IF EXISTS `bio_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bio_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `jk` varchar(1) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_user`
--

LOCK TABLES `bio_user` WRITE;
/*!40000 ALTER TABLE `bio_user` DISABLE KEYS */;
INSERT INTO `bio_user` VALUES (16,'3591d02f-7e95-4678-8364-22cbf8e26c54','Muhammad Shafa','superadmin','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-01 21:40:16','2020-07-01 21:40:16','67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b'),(17,'507ae00a-6042-4693-bc4e-e0fb7546807c','superadmin1','superadmin1','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-15 12:05:10','2020-07-15 17:19:31','34928e60-0498-4477-971e-24fd03fc6759'),(29,'e37a69a3-f422-454e-8b1b-bbb3c71c0bb9','admin1','admin1','P','Lombok','Lombok','2020-07-01','092759079502','cnopqhfohoi@ljo.com','2020-07-24 21:06:46','2020-07-24 21:14:43','8d8edf52-ffe1-4aa3-92fe-e1789ff7b074'),(30,'ae23c014-5d2a-403e-be1d-c4d0e2ffba0b','admin2','admin2','P','Lombok','Lombok','2020-07-01','2097502752','jpofjpofjqo@fajo.com','2020-07-24 21:17:20','2020-07-24 23:35:04','b5fe3989-664f-4ff6-92fe-40e394ce923c'),(31,'73c5678b-4b85-4255-8f58-5a7bee194c92','admin','admin','L','Lombok','Lombok','2020-07-01','20859270957','iuphafhh@ovwnio.com','2020-07-26 17:19:41','2020-07-26 17:19:41','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(32,'a4727d87-2fef-4c52-b927-c28d46cb474f','admin3','admin3','P','Lombok','Lombok','2020-07-01','2070727572','pwhfphp@psohfp.com','2020-07-27 10:20:40','2020-07-27 10:20:40','f63ae939-a172-4f22-9b84-1d586e6e7f0e'),(33,'d6e690f6-1f91-445b-8a08-75fbf0f851d2','admin5','admin5','P','Lombok','Lombok','2020-07-01','947027972','paojopp@pajpo.com','2020-07-29 22:44:20','2020-07-29 22:44:20','80365438-b28c-4895-8443-6f5901cab965');
/*!40000 ALTER TABLE `bio_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `black_list_token`
--

DROP TABLE IF EXISTS `black_list_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `black_list_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jti` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_list_token`
--

LOCK TABLES `black_list_token` WRITE;
/*!40000 ALTER TABLE `black_list_token` DISABLE KEYS */;
INSERT INTO `black_list_token` VALUES (1,'114fddef-ba26-4b0e-912a-cc92f298bf34'),(2,'e5bf39a0-a667-4f69-b2ca-a6a80d10a424'),(3,'1f88fcaf-87de-4e6e-bbf5-30403211038f'),(4,'dec6460e-9fed-49e2-ad19-568c364ae7eb'),(5,'8ffb5666-bb49-4156-8084-eb137a848248'),(6,'3e14ea12-5249-423c-bdd9-514d4c210cd2'),(7,'fbe5cf20-adcd-40c9-a0b7-d7dd5e727167'),(8,'d8ddfff6-4b59-44ba-8f61-aebce10bd184'),(9,'9bb69475-bb46-4351-b81f-edfeff34dd44'),(10,'e8b41d3d-54a3-41d4-ab57-f54b4eb2a174'),(11,'4e46d22c-8ae4-4da7-bf97-32945e1703df'),(12,'1c2747ce-1fd3-4638-9b7d-f40c0b3b31d0'),(13,'8c250d3b-6753-410a-9cfc-2180475ead13'),(14,'2739bcd8-282b-4571-b7bc-e654e705bc52'),(15,'c01f0dcd-7afa-44e9-966f-3603f8e58b92'),(16,'3888e60c-5b94-4e59-b3ce-dec1b88b4023'),(17,'bc03c864-950f-4d1a-a669-4c92ac430b64'),(18,'dc894543-7b5d-45de-a8fe-ebb50859d018'),(19,'b3cf192f-ccba-4b51-8377-aed6503cdedc'),(20,'9fef6a64-e689-49a0-832e-6ada1b1bcc7a'),(21,'8649c183-e49d-4b14-b92a-c9f76dc449c6'),(22,'09994f96-f928-44f1-a6b5-0b28a6116d59'),(23,'867987d3-ed16-4ce8-91fe-42a2e0816e30'),(24,'c199a194-fd4c-4f41-ada6-131914fb3bd1'),(25,'aba55cff-bce8-4143-9dab-f8984f78fee9'),(26,'74df185b-623f-4271-bb45-f60fb6d665b7'),(27,'48bdb980-e040-48df-92af-fbdb6ad8abf9'),(28,'08c57c05-a635-4b95-80e3-e84258ca4785'),(29,'57407742-8add-44a0-9b57-e13cc0889cf4'),(30,'0bc9e27d-2b3d-4a47-a8c9-89830ce62269'),(31,'8f162bd6-2844-4af7-97d7-bae6063598e6'),(32,'0671a2e4-2f63-42a6-94a8-8f46566894b2'),(33,'6e9271de-27a8-4035-9022-8a32a2926a52'),(34,'c38d5153-9607-481a-9775-a3d702fbc8f2'),(35,'bbfcaf7d-db11-427c-8e95-9715f2a743da'),(36,'32d4a982-dd01-409e-8771-1ecb4ec2cba6'),(37,'a7aee25f-1ef1-418a-b9b3-0d4e6b7ab8f5'),(38,'093ae614-210c-468b-bcea-a4eecb862ab5'),(39,'ee455bfe-f1a7-4cc9-8f58-da73f55ee3c3'),(40,'0a1badf7-d5ce-41e6-9f1f-2b20feb658ee'),(41,'0e5d0c07-b2b5-4a4b-932e-a468bdf792a5'),(42,'9a2e9d8d-a481-4b79-9e46-302caabaaca8'),(43,'56ee98ca-4b6f-4302-b0da-7a382455e34f'),(44,'4d2c8d09-5f17-4039-8cd9-c688cb78a378'),(45,'61bd6d27-24de-4d9a-952f-2b16360a6f7c'),(46,'eac3fa5d-addf-4015-96f1-d2f7f70372d4'),(47,'14271ee3-ccac-413a-a48e-0ecde62b44e1'),(48,'11c97b50-0cfd-46c4-a16a-51a0eab57f17'),(49,'9060c2d9-6243-4bce-ab98-f662e51c531f'),(50,'15f0f3ae-85e8-4f1a-bd72-58cb702ff057'),(51,'0fcf1e8c-58dd-4443-9485-8206cc1912da'),(52,'63b7e9f4-d7d4-4322-aa6f-2b851cf1b746'),(53,'44e50c18-a7af-498c-876d-c345a79cae2d'),(54,'d0ce2996-89c1-4faf-a687-0378dd7881fa'),(55,'844753c5-f04f-489f-aed9-9c3c7c0448ce'),(56,'3fca91c5-5c7c-4b4f-bdec-4b8efde73ff4'),(57,'33d224a0-0c3c-4b1e-baea-5f66227455ba'),(58,'8abeb191-ce0a-4f2a-b3c6-62ec79b2d2de'),(59,'4bf0cd86-b55e-4c51-b100-0acd6cf476ef'),(60,'bf804a79-7973-435b-8635-0ffde438c669'),(61,'5f162ce8-3528-4c0f-a549-369b77edfd16'),(62,'c2179a40-d60c-4e0a-a211-7efc7959af75'),(63,'4393775e-077d-4ee8-9302-c003e8c39922'),(64,'02504c8c-96fd-4e48-bc69-e6017b53498d'),(65,'d32e00d4-0671-43c8-9552-fc115ae2a147'),(66,'47ea4e5a-6d52-4353-875c-297da738915e'),(67,'06ffb729-bd42-41c7-aaf8-68824374b7dd'),(68,'0a80469f-ec41-4378-ab5e-d771bfc6dd45'),(69,'568f7035-fe57-4b87-ba43-ff696b042be6'),(70,'72a0bd93-af60-4fe3-b50e-742e6bb23820'),(71,'7be8de71-d2d2-4036-a9ea-ca17807d2ad1'),(72,'806f35c7-3fa5-47ac-8b76-b391bbe0e1ef'),(73,'c14a4821-7b0e-4b39-b0d6-ade1e9ff8f77'),(74,'c0a93f8a-61e2-4b62-9c8a-c0d2ed6472c5'),(75,'990417a5-2526-47ba-a601-a3c173c343f0'),(76,'0edd09b3-9b92-4d6d-b01c-6ccfcf1b2a5e'),(77,'60d44efb-06ed-47ac-84bc-f4bfcda5da0c'),(78,'b4e85471-bb85-407e-bd9d-3634555f279a'),(79,'1c806885-4536-4de9-8fe9-8b74b6091895'),(80,'53bac1fd-5d41-4653-9c00-3be348c1ff1f'),(81,'625e9a2b-b1fa-4675-ad5b-bc5c25bceaa7'),(82,'7e4782f0-7a00-402a-b691-2e4c1b923738'),(83,'07470b41-ff25-4155-a1cb-c20fdfb78b58'),(84,'0eb5b7e4-4924-4f10-aa8e-2fddd9f5949a'),(85,'810c9050-3c97-471c-b9be-ec230a8bf397'),(86,'a457eed5-2bd1-41ef-9d5f-706109404786'),(87,'87006536-7a30-4fdb-bbe3-f3c02ab153a6'),(88,'ecdd15b1-ccad-4c06-a68a-b263a4284942'),(89,'6cb21fa5-a453-47dd-8c87-261b682cf9d1'),(90,'6c601daa-6dcd-4c1f-bdea-ea1fd23f2318'),(91,'a1531346-a037-4d10-80aa-f7b26ec14728'),(92,'db33a468-51ac-47ff-9d20-1df5083df856'),(93,'3dab6cf4-337b-425c-b6ee-c7d19f4fef4c'),(94,'c219a4a1-252c-43a8-8609-f15beea6a1dd'),(95,'a8d76f59-a0b0-4152-b324-442b1086bec7'),(96,'535a6f9c-a3f8-4c94-9ef1-a3fb224237ce'),(97,'0d3c5fe9-ac50-4c53-b5b4-f066c358143e'),(98,'9983ae6e-6ffe-4b7a-994b-1c99b6c196d0'),(99,'fbc8f339-3fdf-44bd-bd86-542895ac98cb'),(100,'55f114b4-5fcd-4c2e-9932-63c9b0324560'),(101,'337b3537-6b40-4948-8807-45a3a8aaa33d'),(102,'39ea8cc3-ff3a-4093-a377-e9704bee6787'),(103,'c95e7f26-87e5-4a18-8529-cb7cd58051f8'),(104,'1bb097b4-5876-44b9-809c-383de3c6dd10'),(105,'002de913-2c39-415c-b71b-54ed28ca7563'),(106,'e30851af-d3c0-4f43-a762-1a2a655b57c6'),(107,'7e33dbb5-8745-4602-8226-6497db076b68'),(108,'d959bd8f-a075-4432-aaef-dac7cd7db652'),(109,'d45db568-2d1f-4918-ab7e-102d4a104c2a'),(110,'324301da-b39c-419c-935a-f464388391bb'),(111,'67f71299-3a62-4e29-bc90-a56f8af52a40'),(112,'bf1b2e72-0e2a-43f0-95ef-55704c6d369f'),(113,'3ef807f1-4a92-415d-a7ea-56bb590bea64'),(114,'0ebdd5fa-950e-4628-a153-5521f47dbbbe'),(115,'3e920d5f-56be-4006-a46c-4fbf41307faf'),(116,'3b5ac739-9aa4-4649-a8ef-ed508428aa7b'),(117,'089d296b-e786-436a-997a-67da04e9d2f0'),(118,'dd05fc31-e50d-4a51-9956-45307e9f13f2'),(119,'0e52105d-0cc3-4e20-8eb6-c5f75a82417a'),(120,'0a7abdfa-7526-4abd-98fa-6cb6d9892b78'),(121,'52fed01c-d6f9-47bc-97a4-ddabe9eb6718'),(122,'c9ccc9b3-3c87-4fcd-b88c-3a54f7114c1f'),(123,'742dee7b-5959-479b-b134-5cd437ea3867'),(124,'462358f9-adbb-46e9-85e3-c697ac88c6f4'),(125,'2fc71c24-25d3-42f9-b1d3-9ef01902fa08'),(126,'07730a10-7a4a-43cd-bbc9-c8008ef261d3'),(127,'ab83f672-9a91-42e8-94ca-186f008b0188'),(128,'3244d8cd-e97b-4a00-b654-e23c9184e60a'),(129,'e07be22a-4182-4aaf-abf5-db11bf1739ac'),(130,'17f49cac-4539-4e97-a4a3-de84a6eeeb87'),(131,'402f1373-acd9-44fa-bf3c-d082e24ada53'),(132,'627a4d40-d87b-4dea-8f15-1098730561a3'),(133,'6b597802-455d-4108-b2b4-9afb4c622d4d'),(134,'429bda2c-ea77-438c-b4d6-f6d6c7cdefbb'),(135,'600dcccc-3e67-4805-bfc2-1d9b3692697b'),(136,'6a75f582-a041-4262-8717-36e0196a9608'),(137,'f8b04cf7-f478-412b-9f9d-055c9feb5f71'),(138,'608a3ad3-46f7-4450-ae64-9896206711ee'),(139,'760093ea-85f8-4647-9703-f5a9293e1a1b'),(140,'b07cae3c-60b8-4ba1-83d7-50262400a13a'),(141,'4184acfe-ec20-4702-8144-adb131844ec6'),(142,'d28ea909-6253-43d0-9f11-dfe58d0ab358'),(143,'fdc61c51-e89f-4e99-b9bb-f446b866fbfb'),(144,'424e3a77-3388-4d5a-aea9-e27fc76d04a7'),(145,'b7cdca55-b6e7-4ad8-ae10-c3c8235ba101'),(146,'0015c596-54d8-433c-9182-821980eefcfb'),(147,'9c28bc52-d7d9-4872-ba6c-818ad1b83303'),(148,'3da47892-4f2a-45e0-b76a-28585c6a8bd2'),(149,'7b54e422-86a9-48cb-8678-7940d533f354'),(150,'ce58df8f-e627-497d-8e70-46904729ef45'),(151,'378705ab-f1b2-450d-aa4c-a75e33bd4f7a'),(152,'48066362-b0ca-462d-808e-edea51d5cd5d'),(153,'47eebc4c-2a14-4ace-b33b-10c1afe80def'),(154,'d013efb3-7947-403b-b971-2afab499a79e'),(155,'27df8903-2dc7-4b83-b331-3a4a22507252'),(156,'7268b770-29f6-4667-9685-d608dbe1170c'),(157,'0d393b41-3c6f-4b1c-9eaa-f1b690a19ab6'),(158,'0feb2047-1625-4a64-95c9-11e17d80ace5'),(159,'658b7860-c3d1-4ca9-8469-be1d85a84bc0'),(160,'5846d204-4333-4f42-9e4a-4c7e357042ba'),(161,'7bd87880-2c41-405b-a8d8-e7479bd75395'),(162,'72994df1-e638-4275-8854-9afedfc72dfa'),(163,'04572d98-ddf6-40df-8a5a-e1914893c5e6'),(164,'e7dfb0c6-ba5b-4631-8dcb-9c31fba3c8a0'),(165,'79b89e99-0122-4e4f-bbce-c36d14dd2634'),(166,'cdcf2eeb-92a4-41ae-833e-4ea0265654a9'),(167,'cd2ba78a-3bc2-4208-957f-e3038c1524e0'),(168,'ad570823-a0d0-40d1-a4ec-532875217f6c'),(169,'50caba6e-f966-4364-b6b0-855e0b29b548'),(170,'5d8293fa-f436-4941-ae5a-e2f63e2b50a3'),(171,'57d4a32b-b422-45f6-8dcc-3bff645163ea'),(172,'c4b29f3d-5e59-422d-b48e-240e71e6c430'),(173,'531956c5-e443-4de0-ac5f-e81143c28a6b'),(174,'678d7e1b-fd80-40cd-a690-76812c68e0e0'),(175,'c7c87c0f-9b64-43fc-af36-0996506ea5e6'),(176,'9f998f0a-56f7-408b-9527-9eac7ad9f1e5'),(177,'6dfba24b-1619-4c07-bdda-d551acd5646c'),(178,'ae76ed92-cbee-40f9-a1b5-c50da4b5604b'),(179,'f6f1277c-62d6-4467-81fa-e424e02f5dd9'),(180,'24169f03-bed2-4e28-a693-612e415bba0b'),(181,'1d47eeb7-8110-4c89-b2f8-e7817c3f103a'),(182,'2a6ebd50-c1ff-461a-bf08-0b1e4c443e71'),(183,'52f46d5b-a72f-47ba-981a-035a93026444'),(184,'5cfb7dec-9c62-4e94-8ecb-a50d29d09811'),(185,'944376cc-23ca-4c9a-ac20-b429c8b8a90a'),(186,'656a7a71-5708-43f3-9a66-088f6ba86ae4'),(187,'9fa038e3-fa45-410b-8571-299d60feab71'),(188,'9f59f035-4400-4c38-9434-ac73800baf48'),(189,'f29c33ff-a3fc-4574-8350-45b93592bd7a'),(190,'04a9e055-67c4-4406-895a-94843d6e3544'),(191,'32ee655a-6f74-4eb4-a1c4-05cda4ad4c00'),(192,'f1d31f94-d65e-42cc-911c-dc22d0e843bf'),(193,'edd00728-810f-4a61-95d9-78043c3a25e8'),(194,'533b7b8a-9350-4621-aa82-193a4654e353'),(195,'78021cc4-d584-4259-b001-bb91704386e1'),(196,'32f7dbf2-dccd-483d-95b1-e4f860f948fd'),(197,'aaa88e3e-5449-4502-a79f-48077496a2a4'),(198,'7c34e1d6-1c62-4d8c-96b7-5784efab0e8e'),(199,'431a1b7c-c786-4593-a935-97ed5425334e'),(200,'67fda8e9-f3c0-49a4-b40b-be7424033472'),(201,'0503bb1b-9927-4897-b02e-695dc4424af3'),(202,'16e732c4-19d4-42a9-81aa-48074b49b9bd'),(203,'80b3b1b2-d10a-4435-8b17-e26cf941135a'),(204,'bcf5f228-fc17-4a31-ba0d-ae9de86feea2'),(205,'1aa9b40c-1b17-4597-bbdc-81946d16a166'),(206,'3b55c34e-94ac-4af2-a9dd-8aaa1bc018e3'),(207,'72513c32-717c-456e-a3ab-d28f93c99999'),(208,'90ea59fd-7299-4d6d-aff8-8bc6b9841ee2'),(209,'cf877609-1eea-4113-84bc-538d330d8d7e'),(210,'6d261b89-2989-46ce-8fc3-c00574b64b34'),(211,'ac9b1622-5966-4e89-9cdc-2b0b9c301b01'),(212,'4eea3093-e0ac-438e-a72d-99b06a11746d'),(213,'a0d2c392-7df8-4344-85a3-8daab2a8a2cb'),(214,'f4d31abf-e9a9-42aa-ac1a-fead4d96f552'),(215,'c72ae646-7727-4170-9084-37f33b261985'),(216,'236a31c1-c6ff-4ae3-b6b1-82dfa370d071'),(217,'86ec424c-e099-4b72-ad5a-672df84d1e5b'),(218,'1d4fe3bc-59ac-460c-b9df-f576da9f817c'),(219,'5b27bad2-e1a7-4862-b7f9-543c54ccc74d'),(220,'7af84be4-bfe9-4ed4-a535-d17d3dd41f96'),(221,'a6821f5f-546c-4c7c-812e-40505fa78b56'),(222,'3c21b15f-b21d-4d9d-aa91-20e67fd864a7'),(223,'d2e3fc88-c711-473d-80db-8c6b85b4837b'),(224,'4463f118-9268-4531-b16f-1e661b1e5d94'),(225,'15c80d61-16b2-49c6-af67-119b0645d61b'),(226,'3bb5de81-c45a-4cce-a184-c7e971ff7b0e'),(227,'08983b18-72d6-40b2-86c8-5ecf302a0075'),(228,'b2b6bdb3-aec9-4c38-a90a-3e452dca84a6'),(229,'47c77acf-58ad-4d81-925c-8476b211e991'),(230,'a475aed0-b24c-453d-8ac3-7e59461e65d6'),(231,'d2ac799b-baf1-4d2e-82c2-8dae52c54170'),(232,'4806f49d-a0fd-42f3-8aeb-4492e3fb36cd'),(233,'1d280a64-21f9-404f-8dc6-d0e8e8621f44'),(234,'695953c6-8064-49c0-bb2f-9261793a37e0'),(235,'401de67c-f593-4222-811b-d25b7eac545c'),(236,'1d66a58b-3022-4be4-b1c5-fcc5922dd5a0'),(237,'b9fd1572-7d66-4145-b759-98c0a96027a6'),(238,'b6377abb-aec5-4e7e-ba01-b7c03977721b'),(239,'c6cffd9f-7abd-4fcf-aa36-e48a5a1a4317'),(240,'9642897f-b6ee-479d-8d3f-b63a3e76f0fb'),(241,'20508b62-7ff8-4be9-85b6-ff6e0cebd6cf'),(242,'b9c7a897-a540-4aca-8d09-3e18f938ad81'),(243,'bbd584ef-218b-468d-8319-7448030a6ef6'),(244,'315830d1-2866-4d10-ada3-b9bbfbd8ea90'),(245,'4a715383-b211-42ab-bab9-d234fff6c3d3'),(246,'892d2301-7a53-4ee3-9f52-59e7ee141d24'),(247,'3802dbe0-53f9-44a5-b7a9-2a136197564e'),(248,'e7b22fc5-579d-48b4-abba-edf2774d3b20'),(249,'9226b4df-b559-40a9-a28d-5af0a94e0e50'),(250,'2533b41c-1e15-4f97-80e9-17e830c51758'),(251,'90f87046-3a18-43a4-ac6a-57efc1a42337'),(252,'359f3962-5ec5-45fb-acc7-53f8c164ce14'),(253,'6c841fe0-1e17-4e5b-94ad-059be8700832'),(254,'d0692b10-fd8f-43f6-acb3-7e2cb4e95328'),(255,'fcbd4bd2-dbfd-4809-bc9e-d1b5a82e3be4'),(256,'078e1a16-d161-42e9-9e31-695c5a025ac1'),(257,'5f7db26f-ed80-4c8f-9779-cc20242919dd'),(258,'98e613e9-80d7-414d-90e0-81862479f6e3'),(259,'bc116105-bf26-42f3-9df2-b570e8ec935b'),(260,'6b623478-e14d-44e1-9246-98ee5854d5fb'),(261,'0c46d733-5acf-4e8d-b3fa-6a55cfefa54d'),(262,'5ff219e8-6fc8-4d3a-bdfd-e716ec8cdf06'),(263,'a286c9b5-504d-47c4-a699-2bc12b4c5e24'),(264,'28ca7ee1-5721-46a4-8d79-36b910c18b28'),(265,'8c901ff2-2e6c-4400-8994-e3ffac62fc88'),(266,'630fb6ba-ef86-46cd-9b41-197a875716f9'),(267,'6bfb0f41-f7f0-4fad-b88b-caad3d683484'),(268,'b493e6bc-c9ed-496c-99ef-eb10227b675e'),(269,'8dd82a06-653e-4d86-bb1b-6fa52d8e9841'),(270,'fef46973-bd7e-44f6-ab2d-1ed4cec61163'),(271,'317ac031-fd61-40ee-bbe7-827c2e99cf4a'),(272,'c40452fc-be75-4096-aab6-d71da4f05655'),(273,'b033dc16-4639-4da2-a94d-93f7949d3f64'),(274,'1dda7797-8f6d-4b86-bcb7-b5c67c79dc37'),(275,'31684e7b-9e94-4a82-890e-f0e8c8afa0ef'),(276,'a615ec41-d5fc-47f1-96f4-ed0195120ec3'),(277,'f8d3bccd-3e9f-4f9a-bb2a-0c385e1d9638'),(278,'a5f803bd-be90-42b3-a81a-25362f4b210d'),(279,'d72dd226-9a21-4f13-bf6b-c01a795d8fd3'),(280,'1e0453d2-ccd0-47d5-8dde-f42ec0b30925'),(281,'f1a01013-445b-40c8-bd74-6ad9e858517b'),(282,'495e797a-1748-453c-9312-92e71fd7a7e3'),(283,'f8a274b6-d727-414f-86f7-951021a13941'),(284,'cec3b1db-cd01-405f-8c74-5ab44cf8a8f3'),(285,'fbcf2d7a-a467-4d9a-a7d3-b51ef990c3ed'),(286,'dcf12f83-93ce-4b3f-8a4c-327c380c69fb'),(287,'c4175560-dc73-4feb-a917-e58a98f6ecbc'),(288,'10e79859-26d1-4747-87a6-1027aec2a46a'),(289,'0d5aa0ea-704d-48af-85b8-e45f5a3556c1'),(290,'08ffeb6d-2258-4ad1-a62f-0c13debdd586'),(291,'b2e37913-b89a-4230-8d2d-218902ebb654'),(292,'3159b2d2-d1e3-458c-aabf-061d9b0466f1'),(293,'b94d961a-7582-422f-b8c8-70d6b2ce1b47'),(294,'51c0df4b-0a7c-42f7-85c7-04a306278d63'),(295,'7e23487d-981b-4b83-af23-c7de51dc54ca'),(296,'197e6630-794d-4d6c-9582-1e46429f98cb'),(297,'81b2ba71-c7fd-42d0-81cc-2f49111f298d'),(298,'93e23299-a2e8-4d13-b124-3ad778a0f21b'),(299,'c2cc7ec2-a044-4784-be07-812f748711f7'),(300,'a65dc90e-034c-4324-be77-2ca5230d45c0'),(301,'5f9a36ed-d937-4fd3-911b-7e14b3e679f2'),(302,'1af54c05-ce6b-4fbd-b758-cd0d917a5634'),(303,'268ad1e7-8f3a-47d9-bb18-5be86f641108'),(304,'07f3253f-ad3c-4b64-9d23-2be4dfe883f6'),(305,'bb4728e3-b3c3-454e-a572-d76898df0acf'),(306,'158b5b1c-2bda-407f-85a9-e1f1d784c975'),(307,'0c5fc9d0-9445-49f3-998a-9e6e96f1133b'),(308,'779cfc2a-4ac8-432c-a176-1ae40b1e8413'),(309,'bb44428c-d510-4f0d-89d9-dae0f3c666fc'),(310,'5b56a59c-a921-48c2-98e3-670db6992b8e'),(311,'aec03675-cc50-41ea-80ba-9c043a3db23e'),(312,'0dc7a3e5-bdce-42fd-856f-175e06b1ea2b'),(313,'0b3697ff-9f99-4df4-b8b2-a1488c43bb1e'),(314,'a272c928-b37d-4190-8ed2-2981f25ecefb'),(315,'17690867-08c1-4c39-abe7-a6a1ceeecba3'),(316,'8320b7a1-492e-4258-8009-b8ec95b8e5df'),(317,'eddd9dcd-951b-45a5-a5bc-b4fec9313974'),(318,'d04163de-a4da-4b94-97ec-e274e7aeec94'),(319,'909e4963-5990-41fb-9e8c-8e2d4dff5bc7'),(320,'079964e3-0e37-4ff2-bb55-43b5b2ab5a32'),(321,'171d2508-9ed8-4ec8-b1ca-d535872ee775'),(322,'6416a7d2-9286-41cd-98fc-fc8457bb7657'),(323,'ce1b86f2-a099-4373-aa32-93512e9df019'),(324,'5f107340-18ed-4e8d-a2eb-c856982875ff'),(325,'90cf4879-d76d-45b2-ae19-d31e39634237'),(326,'bbb34678-1b3d-4724-abeb-0416e2cdfe1c'),(327,'e5015055-4a9c-4f75-8e79-72c87725ed8d'),(328,'5e821265-11fa-49af-a486-d69aa8120e52'),(329,'97f1894a-165d-469f-b928-8b4c6e6b0a19'),(330,'ccb964a9-8597-462c-978f-048503e94a5d'),(331,'17224c83-29ea-43d2-9c8c-c62bf24899e8'),(332,'7c6c1c62-39ba-454f-bb9a-ec2afa330c5b'),(333,'be83a862-9c59-430f-90b7-781f10894799'),(334,'9d4349d0-eeac-4397-9f98-6c15f6143364'),(335,'b68c472e-b0d2-4b1f-86fc-462e57f917e7'),(336,'7e255371-d522-471b-a6c4-61974b43a5c1'),(337,'8c16aebb-bc4a-40e3-b941-713d12c533aa'),(338,'4d2da157-88e7-481c-97c4-ec3fb5377821'),(339,'ba0aac01-f5f0-4e0e-bc96-1aeb43567f3b'),(340,'c85e724a-43a0-4d35-8674-d91b400409d3'),(341,'88734fd6-d4d2-451b-b572-f9e34166f63f'),(342,'6b6bdb16-8ca3-4639-a9f6-ae528cc77d61'),(343,'f3364403-962b-402b-bd82-80ab62101fca'),(344,'90816537-c082-4d1a-ba73-8fc2596bca47'),(345,'64a02746-f8ff-40c6-9c5e-01352e89e265'),(346,'e36fcc73-8236-44e2-9ebf-c508a0e544f2'),(347,'9a0ce195-a666-421f-bb18-0059fe488eb1'),(348,'f0272c3b-be9a-4c23-aa7d-a933b521823d'),(349,'9bf3be95-7456-4523-9831-9ec039f60e55'),(350,'f1ad150e-444f-41cd-86ef-be68adfafe40'),(351,'84f95926-cd09-44df-ac69-85a14cf5b506'),(352,'c0f69550-30f7-4f18-8a3c-b9b756fc6cba'),(353,'11a0847b-dde9-4efc-b728-d882a3deba20'),(354,'68e6bc40-ffaf-4d58-9dbc-dc4adb838237'),(355,'87758b1d-4c84-4123-a39f-dc676e2d0238'),(356,'19d506fc-9564-4749-aba4-552d5d21cd7a'),(357,'0244b7ea-c96f-49bd-8faf-0c08ad23de9d'),(358,'ccf9f537-0f4e-40f5-9200-32b6da6a9ced'),(359,'8adda39f-96e8-4b9f-a2ab-454a19ccd1d1'),(360,'0b836c04-51c1-4a7f-92d3-8fb376fd1452'),(361,'151f7b98-0001-4cae-8b83-66432a8752ef'),(362,'f6c6057c-55c4-4d7c-9c93-1c1a832d2b9f'),(363,'74fdc9ce-b721-4de7-ae49-0c96a53f1320'),(364,'333a7fa5-fe0b-481f-8db9-008ecde7e50a'),(365,'f2c6b6c4-d6a7-431a-8255-215116be5b05'),(366,'1e48adfd-6c0b-484b-b77f-97b78fbe4c5f'),(367,'55962eb0-765b-4417-92c7-653518452860'),(368,'8632b419-c38e-42b8-a118-7a633e5eb75c'),(369,'dee739c4-c972-44c2-81fb-4fbd5d6d6f29'),(370,'a2160392-309e-4421-ba9f-4ce5ac5e2ef2'),(371,'f3b819b6-c7bc-457f-bded-a2ddb148f715'),(372,'83279892-2f1e-47a9-820a-923c47329483'),(373,'f0fba9f9-e9ed-48a9-ace0-2ee21d291171'),(374,'10cb0d8c-cc78-48b0-83c2-c87549cce2e6'),(375,'5db2e1cf-22eb-419f-853a-ac097f202a93'),(376,'5ac3c741-836a-465e-8de2-82f63cc45f48'),(377,'39f8079c-7e28-4fd5-8cce-d3e2fca799a5'),(378,'a256543b-890f-4e39-a14c-dc6f3f8ce6a4'),(379,'a03a42cb-2ed3-4add-8722-fc79b879935e'),(380,'e5220c31-dc1c-482d-ad21-257931e42bf1'),(381,'db164a4b-c67a-4e6f-97fd-86e990f5cf26'),(382,'4e5594c4-4a0f-49ab-b757-8eb08e3fcec5'),(383,'25a33a4f-1289-4e34-8105-9c400f936735'),(384,'eb0fc109-af88-4238-ba74-f2e341df5086'),(385,'0ee9de80-9021-485e-9d24-428ce07b0533'),(386,'62c91518-1121-4e4f-b47d-396da478caa5'),(387,'8f6b175d-301f-4273-95cb-cc0f9d9d9139'),(388,'bcf4a239-aa38-45ba-a9b8-55cb4297a5b7'),(389,'46181e4c-1503-4975-90d1-a061c9260d3d'),(390,'14b3fc58-14a7-4e8c-bf5f-6103243da1c6'),(391,'bfc0e71b-4971-4564-a5a7-07a3945694e9'),(392,'7b0ce3c8-84c4-4d00-8083-8f3a19be309f'),(393,'2d4cfd31-fe76-4ffb-9f35-ccf745ced66a'),(394,'8129fe58-300b-4bef-a518-052f94afee7d');
/*!40000 ALTER TABLE `black_list_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `kelas` int(3) DEFAULT NULL,
  `label` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'6d666b6d-4285-43f0-a5d5-121d354abdc4',1,'B'),(2,'45f6fe99-95a2-4aab-bbd6-7dbb014630b7',1,'A'),(3,'c7feed61-3748-4546-b4f5-6c7240944c8f',2,'A'),(4,'050dce9f-e60f-49ca-ab76-9efedaf71e3c',2,'B'),(5,'c909346d-7108-44e6-8af9-aa002ae25c3f',3,'B'),(6,'9b840e28-b76c-41b0-9114-3629e5ae6345',3,'A'),(7,'8b37fb3f-886e-4739-8ded-27b6b6437aa9',1,'C'),(8,'90e77d04-e121-426d-a7fb-0fa05d1ef0d7',4,'A'),(9,'974c2d8e-659a-4774-a674-2d226bee8d33',4,'B'),(10,'1682b7de-54dc-4e59-8ea7-a4e2a18442cc',5,'A'),(11,'022f7fda-1500-4351-80e2-a993ec9d905d',5,'B'),(12,'7bbb3e4a-8d19-4af3-b825-2ef8d53603f8',6,'A'),(13,'7381818c-0f91-4a66-aa84-8b34f98590de',6,'B'),(14,'ce323344-0f53-420f-9ee1-68b1bc0a0eea',7,'A'),(15,'4c7cf374-b08a-462b-8881-94968aa56e2e',7,'B'),(16,'e21b3062-2236-4cb1-99ae-31fd726c731c',8,'A'),(17,'4882a5a9-b26e-4bd0-8e2f-c286ad5b7200',8,'B'),(18,'95930a13-65d4-4ad4-9e1f-83d6b9ff56dc',9,'A'),(19,'f23e70c5-8085-4454-9da0-0e06285707b1',9,'B'),(20,'027b82e6-88c4-4e9c-b0fd-50e2b6a91ea6',10,'A'),(21,'292cf793-890c-4632-98dc-15661cb3a2a0',10,'B'),(22,'de1d2723-5973-4f7e-9de8-7b69e9ea72c9',11,'A'),(23,'061fb77e-5952-47d0-9403-71c66dc20152',11,'B'),(24,'93e53fa0-4816-4e88-8976-ada9443d6674',12,'A');
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapel`
--

DROP TABLE IF EXISTS `mapel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapel`
--

LOCK TABLES `mapel` WRITE;
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` VALUES (1,'21dd3e21-d56e-4092-a759-b40b0f6800f4','Matematika'),(2,'ce5e9f3b-6840-420f-b06e-57452bc81796','Bahasa Inggris'),(3,'ccf3ae86-4db5-4128-b9e0-96ca9474970f','Bahasa Indonesia');
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `guru` varchar(100) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `uuid_mapel` varchar(255) DEFAULT NULL,
  `materi` varchar(255) DEFAULT NULL,
  `isi` mediumtext,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
INSERT INTO `materi` VALUES (1,'8079b26b-0996-43ae-b840-b2dbeaed95e3','admin1','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','Kata','Kata kata','https://youtube.com','2020-07-25 10:08:59','2020-07-25 14:25:45','8d8edf52-ffe1-4aa3-92fe-e1789ff7b074'),(2,'20ac3f29-a7df-4cfe-83fe-312f04a67e66','admin','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','Penjumlahan','1 + 1 = 2','https://www.youtube.com/embed/oipGtudiBGA','2020-07-26 17:21:57','2020-07-29 09:03:13','558540ef-032b-4e02-90bb-0dd94d24d9c1');
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mc_soal`
--

DROP TABLE IF EXISTS `mc_soal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mc_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid_soal` varchar(255) DEFAULT NULL,
  `opsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_soal`
--

LOCK TABLES `mc_soal` WRITE;
/*!40000 ALTER TABLE `mc_soal` DISABLE KEYS */;
INSERT INTO `mc_soal` VALUES (1,'b262fc9b-c874-4116-ad11-4e1805c5eba6','Kata'),(2,'b262fc9b-c874-4116-ad11-4e1805c5eba6','Kati'),(3,'b262fc9b-c874-4116-ad11-4e1805c5eba6','Katu'),(4,'b262fc9b-c874-4116-ad11-4e1805c5eba6','Kate'),(5,'b262fc9b-c874-4116-ad11-4e1805c5eba6','Kato'),(6,'0f556fed-a192-4856-aca1-3bb9188616f3','def'),(7,'0f556fed-a192-4856-aca1-3bb9188616f3','ghi'),(8,'0f556fed-a192-4856-aca1-3bb9188616f3','jkl'),(9,'0f556fed-a192-4856-aca1-3bb9188616f3','mno'),(10,'0f556fed-a192-4856-aca1-3bb9188616f3','pqr'),(11,'87f5917f-82ec-4eb3-86ad-7a95a644d1cf','2'),(12,'87f5917f-82ec-4eb3-86ad-7a95a644d1cf','3'),(13,'87f5917f-82ec-4eb3-86ad-7a95a644d1cf','4'),(14,'87f5917f-82ec-4eb3-86ad-7a95a644d1cf','5'),(15,'87f5917f-82ec-4eb3-86ad-7a95a644d1cf','6'),(16,'b18744a3-6341-4cc8-ac97-8c0a1cbd2b7c','2'),(17,'b18744a3-6341-4cc8-ac97-8c0a1cbd2b7c','3'),(18,'b18744a3-6341-4cc8-ac97-8c0a1cbd2b7c','4'),(19,'b18744a3-6341-4cc8-ac97-8c0a1cbd2b7c','5'),(20,'b18744a3-6341-4cc8-ac97-8c0a1cbd2b7c','6'),(21,'b6bf412d-af40-4780-907c-6b06194463b5','4'),(22,'b6bf412d-af40-4780-907c-6b06194463b5','5'),(23,'b6bf412d-af40-4780-907c-6b06194463b5','6'),(24,'b6bf412d-af40-4780-907c-6b06194463b5','7'),(25,'b6bf412d-af40-4780-907c-6b06194463b5','8'),(26,'bb19fa95-6550-473c-a3fc-80224a97d5a0','5'),(27,'bb19fa95-6550-473c-a3fc-80224a97d5a0','6'),(28,'bb19fa95-6550-473c-a3fc-80224a97d5a0','7'),(29,'bb19fa95-6550-473c-a3fc-80224a97d5a0','8'),(30,'bb19fa95-6550-473c-a3fc-80224a97d5a0','9'),(31,'09223c07-50c9-4f9f-8b17-56663d38f80b','12'),(32,'09223c07-50c9-4f9f-8b17-56663d38f80b','13'),(33,'09223c07-50c9-4f9f-8b17-56663d38f80b','14'),(34,'09223c07-50c9-4f9f-8b17-56663d38f80b','15'),(35,'09223c07-50c9-4f9f-8b17-56663d38f80b','16'),(36,'fa5ed8eb-ae75-4b95-a436-d58d8e944f52','18'),(37,'fa5ed8eb-ae75-4b95-a436-d58d8e944f52','19'),(38,'fa5ed8eb-ae75-4b95-a436-d58d8e944f52','20'),(39,'fa5ed8eb-ae75-4b95-a436-d58d8e944f52','21'),(40,'fa5ed8eb-ae75-4b95-a436-d58d8e944f52','22'),(41,'c9b922b4-ceef-401c-bfa0-88ca97109e60','20'),(42,'c9b922b4-ceef-401c-bfa0-88ca97109e60','21'),(43,'c9b922b4-ceef-401c-bfa0-88ca97109e60','22'),(44,'c9b922b4-ceef-401c-bfa0-88ca97109e60','23'),(45,'c9b922b4-ceef-401c-bfa0-88ca97109e60','24'),(46,'328c7ce9-663d-4269-a8be-c47a8e5732f2','25'),(47,'328c7ce9-663d-4269-a8be-c47a8e5732f2','26'),(48,'328c7ce9-663d-4269-a8be-c47a8e5732f2','27'),(49,'328c7ce9-663d-4269-a8be-c47a8e5732f2','28'),(50,'328c7ce9-663d-4269-a8be-c47a8e5732f2','29'),(51,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','2'),(52,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','3'),(53,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','4'),(54,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','5'),(55,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','6'),(56,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','4'),(57,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','5'),(58,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','6'),(59,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','7'),(60,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','8'),(61,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','5'),(62,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','6'),(63,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','7'),(64,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','8'),(65,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','9'),(66,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','12'),(67,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','13'),(68,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','14'),(69,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','15'),(70,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','16'),(71,'ff98d4a3-2758-45df-95a9-2d98c620b01e','16'),(72,'ff98d4a3-2758-45df-95a9-2d98c620b01e','17'),(73,'ff98d4a3-2758-45df-95a9-2d98c620b01e','18'),(74,'ff98d4a3-2758-45df-95a9-2d98c620b01e','19'),(75,'ff98d4a3-2758-45df-95a9-2d98c620b01e','20'),(76,'8656f999-f99d-494d-ada1-c5204c902e5c','16'),(77,'8656f999-f99d-494d-ada1-c5204c902e5c','17'),(78,'8656f999-f99d-494d-ada1-c5204c902e5c','18'),(79,'8656f999-f99d-494d-ada1-c5204c902e5c','19'),(80,'8656f999-f99d-494d-ada1-c5204c902e5c','20'),(81,'f9109a77-f101-403c-9310-63223834491d','25'),(82,'f9109a77-f101-403c-9310-63223834491d','26'),(83,'f9109a77-f101-403c-9310-63223834491d','27'),(84,'f9109a77-f101-403c-9310-63223834491d','28'),(85,'f9109a77-f101-403c-9310-63223834491d','29');
/*!40000 ALTER TABLE `mc_soal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengampu`
--

DROP TABLE IF EXISTS `pengampu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengampu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid_user` varchar(255) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `uuid_mapel` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengampu`
--

LOCK TABLES `pengampu` WRITE;
/*!40000 ALTER TABLE `pengampu` DISABLE KEYS */;
INSERT INTO `pengampu` VALUES (2,'80bc8ec2-c0bf-4aad-b021-5b1b0f81424c','6d666b6d-4285-43f0-a5d5-121d354abdc4',NULL,'2020-07-23 18:01:53'),(5,'8d8edf52-ffe1-4aa3-92fe-e1789ff7b074','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','2020-07-24 21:14:43'),(21,'b8c66234-ad03-4d29-9894-7742492bcb0e','ce323344-0f53-420f-9ee1-68b1bc0a0eea','21dd3e21-d56e-4092-a759-b40b0f6800f4','2020-07-24 21:55:03'),(31,'b5fe3989-664f-4ff6-92fe-40e394ce923c','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','2020-07-24 23:35:04'),(32,'558540ef-032b-4e02-90bb-0dd94d24d9c1','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','2020-07-26 17:19:41'),(33,'f63ae939-a172-4f22-9b84-1d586e6e7f0e','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ce5e9f3b-6840-420f-b06e-57452bc81796','2020-07-27 10:20:40'),(34,'80365438-b28c-4895-8443-6f5901cab965','6d666b6d-4285-43f0-a5d5-121d354abdc4','21dd3e21-d56e-4092-a759-b40b0f6800f4','2020-07-29 22:44:20');
/*!40000 ALTER TABLE `pengampu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'d63dbc91-b77b-424d-afc7-3f8891780088','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','siswa','$pbkdf2-sha256$29000$I0ToXcuZE8KYs/b.vxfC.A$Uxmm4W15Ys5KpUhhHd8QJUFlaCSEcRTtYuROo98iyrI','2020-07-23 18:16:27','2020-07-23 18:16:27'),(3,'efc69cb9-0029-4eec-81f3-b9310e096d91','6d666b6d-4285-43f0-a5d5-121d354abdc4','siswa2','$pbkdf2-sha256$29000$YqwVgpAyBiDknPN.jxEixA$DfUBHariadHZ5SRNwdy5t16m7Y3FE2qjPeTTUmCNvw4','2020-07-24 15:24:55','2020-07-24 15:24:55'),(4,'98f263df-8839-4df4-8b3b-5c273be64972','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','siswi','$pbkdf2-sha256$29000$R4hxzjln7J1Tytl7j1EK4Q$6WX8ibBrH2NEhop9HhtAxviMqGhBwXt0cZdmpfhN2Ew','2020-07-29 09:09:37','2020-07-29 09:09:37');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skor`
--

DROP TABLE IF EXISTS `skor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `uuid_siswa` varchar(255) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `uuid_mapel` varchar(255) DEFAULT NULL,
  `uuid_materi` varchar(255) DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  `skor` int(3) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skor`
--

LOCK TABLES `skor` WRITE;
/*!40000 ALTER TABLE `skor` DISABLE KEYS */;
INSERT INTO `skor` VALUES (1,'dd7c0923-3601-48d1-aa33-d69c61cdb0fe','d63dbc91-b77b-424d-afc7-3f8891780088','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','558540ef-032b-4e02-90bb-0dd94d24d9c1',11,'2020-07-29 09:10:24');
/*!40000 ALTER TABLE `skor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soal`
--

DROP TABLE IF EXISTS `soal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `uuid_mapel` varchar(255) DEFAULT NULL,
  `uuid_materi` varchar(255) DEFAULT NULL,
  `soal` text,
  `kunci_jawaban` varchar(50) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  `tampil` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soal`
--

LOCK TABLES `soal` WRITE;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` VALUES (1,'b262fc9b-c874-4116-ad11-4e1805c5eba6','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','8079b26b-0996-43ae-b840-b2dbeaed95e3','Kata kata kata','Kata',1,1,'2020-07-25 17:08:10','2020-07-25 17:08:10','8d8edf52-ffe1-4aa3-92fe-e1789ff7b074'),(11,'d8823f49-aa59-4413-92b6-373e4fb3cd8d','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','1 + 1 = ...','2',1,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(12,'b0e1d7da-2f97-48a8-99cf-f5c236b4700c','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','2 + 2 = ...','4',1,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(13,'12a9fe89-40d7-41b7-a6f9-5255cc2d47ed','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','2 + 3 = ...','5',1,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(14,'6b8b8dd6-5f3a-4a33-8671-e375d412ce7f','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','7 + 5 = ...','12',1,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(15,'ff98d4a3-2758-45df-95a9-2d98c620b01e','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','9 + 7','16',2,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(16,'8656f999-f99d-494d-ada1-c5204c902e5c','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','11 + 5 = ...','16',2,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1'),(17,'f9109a77-f101-403c-9310-63223834491d','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','21dd3e21-d56e-4092-a759-b40b0f6800f4','20ac3f29-a7df-4cfe-83fe-312f04a67e66','12 + 13 = ...','25',3,1,'2020-07-26 17:44:14','2020-07-26 17:44:14','558540ef-032b-4e02-90bb-0dd94d24d9c1');
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `superadmin` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b','superadmin','$pbkdf2-sha256$29000$eg9hDIGw9r5XqtW6t7Z2jg$Rw3W2FvAyZHAklDwCbzPeHeQE9qO8WMX8T1CXZLfxzA',1,'2020-07-01 21:40:16','2020-07-01 21:40:16'),(10,'34928e60-0498-4477-971e-24fd03fc6759','superadmin1','$pbkdf2-sha256$29000$GsOY03qv1VpLqbU2JiSkVA$bgjQmjsNLyr.XbKhqNUuLn31sZCt1oDQjZZZBNOszC8',1,'2020-07-15 12:05:10','2020-07-15 12:05:10'),(20,'8d8edf52-ffe1-4aa3-92fe-e1789ff7b074','admin1','$pbkdf2-sha256$29000$670XgnDO2bv3vreW8l4rBQ$yXc5oQyXRg/9m8vziX2HgawIUa.jfDypLurx68tcvEc',0,'2020-07-24 21:06:46','2020-07-24 21:06:46'),(21,'b5fe3989-664f-4ff6-92fe-40e394ce923c','admin2','$pbkdf2-sha256$29000$UCplDMHYWyslxBhjjHFuTQ$wfXaDrgzsW12j80wAyd6F5yc6ENb85s19k8hkiYVJqI',0,'2020-07-24 21:17:20','2020-07-24 23:35:04'),(22,'558540ef-032b-4e02-90bb-0dd94d24d9c1','admin','$pbkdf2-sha256$29000$8r63lrJ2LiUEoLS2NoZwLg$SbORb2yq/PoKvaIEdEHcBez/uUYRoAE0i2jJs.FrpHo',0,'2020-07-26 17:19:41','2020-07-26 17:19:41'),(23,'f63ae939-a172-4f22-9b84-1d586e6e7f0e','admin3','$pbkdf2-sha256$29000$gvA.Zwzh/F9LKQWAsDZGaA$A9EAoDJJIRnErvggPqyrxtB7sEUJOMSsK9QQTXiaTmo',0,'2020-07-27 10:20:40','2020-07-27 10:20:40'),(24,'80365438-b28c-4895-8443-6f5901cab965','admin5','$pbkdf2-sha256$29000$eg/BOIfQGuOck1IqJaR0Lg$f7ysqMidmfEUhcb2wBjeD2iR9qbELMGVNW.p5Q0jZmw',0,'2020-07-29 22:44:20','2020-07-29 22:44:20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-01 15:48:47
