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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_siswa`
--

LOCK TABLES `bio_siswa` WRITE;
/*!40000 ALTER TABLE `bio_siswa` DISABLE KEYS */;
INSERT INTO `bio_siswa` VALUES (1,'1d5dc7ff-649a-4199-8dc3-535c9291f135','siswa','siswa','L','Lombok','Lombok','2020-07-01','9379179710','vlkahjoihih@cjpoj.com','2020-07-23 18:16:27','2020-07-23 18:16:27','d63dbc91-b77b-424d-afc7-3f8891780088'),(3,'a049955b-ab14-43df-abd1-3b5457c6eeda','siswa2','siswa2','L','Lombok','Lombok','2020-07-01','89165619709','vpojopj@voj.com','2020-07-24 15:24:55','2020-07-24 15:24:55','efc69cb9-0029-4eec-81f3-b9310e096d91');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_user`
--

LOCK TABLES `bio_user` WRITE;
/*!40000 ALTER TABLE `bio_user` DISABLE KEYS */;
INSERT INTO `bio_user` VALUES (16,'3591d02f-7e95-4678-8364-22cbf8e26c54','Muhammad Shafa','superadmin','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-01 21:40:16','2020-07-01 21:40:16','67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b'),(17,'507ae00a-6042-4693-bc4e-e0fb7546807c','superadmin1','superadmin1','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-15 12:05:10','2020-07-15 17:19:31','34928e60-0498-4477-971e-24fd03fc6759'),(29,'e37a69a3-f422-454e-8b1b-bbb3c71c0bb9','admin1','admin1','P','Lombok','Lombok','2020-07-01','092759079502','cnopqhfohoi@ljo.com','2020-07-24 21:06:46','2020-07-24 21:14:43','8d8edf52-ffe1-4aa3-92fe-e1789ff7b074'),(30,'ae23c014-5d2a-403e-be1d-c4d0e2ffba0b','admin2','admin2','P','Lombok','Lombok','2020-07-01','2097502752','jpofjpofjqo@fajo.com','2020-07-24 21:17:20','2020-07-24 23:35:04','b5fe3989-664f-4ff6-92fe-40e394ce923c');
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
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_list_token`
--

LOCK TABLES `black_list_token` WRITE;
/*!40000 ALTER TABLE `black_list_token` DISABLE KEYS */;
INSERT INTO `black_list_token` VALUES (1,'114fddef-ba26-4b0e-912a-cc92f298bf34'),(2,'e5bf39a0-a667-4f69-b2ca-a6a80d10a424'),(3,'1f88fcaf-87de-4e6e-bbf5-30403211038f'),(4,'dec6460e-9fed-49e2-ad19-568c364ae7eb'),(5,'8ffb5666-bb49-4156-8084-eb137a848248'),(6,'3e14ea12-5249-423c-bdd9-514d4c210cd2'),(7,'fbe5cf20-adcd-40c9-a0b7-d7dd5e727167'),(8,'d8ddfff6-4b59-44ba-8f61-aebce10bd184'),(9,'9bb69475-bb46-4351-b81f-edfeff34dd44'),(10,'e8b41d3d-54a3-41d4-ab57-f54b4eb2a174'),(11,'4e46d22c-8ae4-4da7-bf97-32945e1703df'),(12,'1c2747ce-1fd3-4638-9b7d-f40c0b3b31d0'),(13,'8c250d3b-6753-410a-9cfc-2180475ead13'),(14,'2739bcd8-282b-4571-b7bc-e654e705bc52'),(15,'c01f0dcd-7afa-44e9-966f-3603f8e58b92'),(16,'3888e60c-5b94-4e59-b3ce-dec1b88b4023'),(17,'bc03c864-950f-4d1a-a669-4c92ac430b64'),(18,'dc894543-7b5d-45de-a8fe-ebb50859d018'),(19,'b3cf192f-ccba-4b51-8377-aed6503cdedc'),(20,'9fef6a64-e689-49a0-832e-6ada1b1bcc7a'),(21,'8649c183-e49d-4b14-b92a-c9f76dc449c6'),(22,'09994f96-f928-44f1-a6b5-0b28a6116d59'),(23,'867987d3-ed16-4ce8-91fe-42a2e0816e30'),(24,'c199a194-fd4c-4f41-ada6-131914fb3bd1'),(25,'aba55cff-bce8-4143-9dab-f8984f78fee9'),(26,'74df185b-623f-4271-bb45-f60fb6d665b7'),(27,'48bdb980-e040-48df-92af-fbdb6ad8abf9'),(28,'08c57c05-a635-4b95-80e3-e84258ca4785'),(29,'57407742-8add-44a0-9b57-e13cc0889cf4'),(30,'0bc9e27d-2b3d-4a47-a8c9-89830ce62269'),(31,'8f162bd6-2844-4af7-97d7-bae6063598e6'),(32,'0671a2e4-2f63-42a6-94a8-8f46566894b2'),(33,'6e9271de-27a8-4035-9022-8a32a2926a52'),(34,'c38d5153-9607-481a-9775-a3d702fbc8f2'),(35,'bbfcaf7d-db11-427c-8e95-9715f2a743da'),(36,'32d4a982-dd01-409e-8771-1ecb4ec2cba6'),(37,'a7aee25f-1ef1-418a-b9b3-0d4e6b7ab8f5'),(38,'093ae614-210c-468b-bcea-a4eecb862ab5'),(39,'ee455bfe-f1a7-4cc9-8f58-da73f55ee3c3'),(40,'0a1badf7-d5ce-41e6-9f1f-2b20feb658ee'),(41,'0e5d0c07-b2b5-4a4b-932e-a468bdf792a5'),(42,'9a2e9d8d-a481-4b79-9e46-302caabaaca8'),(43,'56ee98ca-4b6f-4302-b0da-7a382455e34f'),(44,'4d2c8d09-5f17-4039-8cd9-c688cb78a378'),(45,'61bd6d27-24de-4d9a-952f-2b16360a6f7c'),(46,'eac3fa5d-addf-4015-96f1-d2f7f70372d4'),(47,'14271ee3-ccac-413a-a48e-0ecde62b44e1'),(48,'11c97b50-0cfd-46c4-a16a-51a0eab57f17'),(49,'9060c2d9-6243-4bce-ab98-f662e51c531f'),(50,'15f0f3ae-85e8-4f1a-bd72-58cb702ff057'),(51,'0fcf1e8c-58dd-4443-9485-8206cc1912da'),(52,'63b7e9f4-d7d4-4322-aa6f-2b851cf1b746'),(53,'44e50c18-a7af-498c-876d-c345a79cae2d'),(54,'d0ce2996-89c1-4faf-a687-0378dd7881fa'),(55,'844753c5-f04f-489f-aed9-9c3c7c0448ce'),(56,'3fca91c5-5c7c-4b4f-bdec-4b8efde73ff4'),(57,'33d224a0-0c3c-4b1e-baea-5f66227455ba'),(58,'8abeb191-ce0a-4f2a-b3c6-62ec79b2d2de'),(59,'4bf0cd86-b55e-4c51-b100-0acd6cf476ef'),(60,'bf804a79-7973-435b-8635-0ffde438c669'),(61,'5f162ce8-3528-4c0f-a549-369b77edfd16'),(62,'c2179a40-d60c-4e0a-a211-7efc7959af75'),(63,'4393775e-077d-4ee8-9302-c003e8c39922'),(64,'02504c8c-96fd-4e48-bc69-e6017b53498d'),(65,'d32e00d4-0671-43c8-9552-fc115ae2a147'),(66,'47ea4e5a-6d52-4353-875c-297da738915e'),(67,'06ffb729-bd42-41c7-aaf8-68824374b7dd'),(68,'0a80469f-ec41-4378-ab5e-d771bfc6dd45'),(69,'568f7035-fe57-4b87-ba43-ff696b042be6'),(70,'72a0bd93-af60-4fe3-b50e-742e6bb23820'),(71,'7be8de71-d2d2-4036-a9ea-ca17807d2ad1'),(72,'806f35c7-3fa5-47ac-8b76-b391bbe0e1ef'),(73,'c14a4821-7b0e-4b39-b0d6-ade1e9ff8f77'),(74,'c0a93f8a-61e2-4b62-9c8a-c0d2ed6472c5'),(75,'990417a5-2526-47ba-a601-a3c173c343f0'),(76,'0edd09b3-9b92-4d6d-b01c-6ccfcf1b2a5e'),(77,'60d44efb-06ed-47ac-84bc-f4bfcda5da0c'),(78,'b4e85471-bb85-407e-bd9d-3634555f279a'),(79,'1c806885-4536-4de9-8fe9-8b74b6091895'),(80,'53bac1fd-5d41-4653-9c00-3be348c1ff1f'),(81,'625e9a2b-b1fa-4675-ad5b-bc5c25bceaa7'),(82,'7e4782f0-7a00-402a-b691-2e4c1b923738'),(83,'07470b41-ff25-4155-a1cb-c20fdfb78b58'),(84,'0eb5b7e4-4924-4f10-aa8e-2fddd9f5949a'),(85,'810c9050-3c97-471c-b9be-ec230a8bf397'),(86,'a457eed5-2bd1-41ef-9d5f-706109404786'),(87,'87006536-7a30-4fdb-bbe3-f3c02ab153a6'),(88,'ecdd15b1-ccad-4c06-a68a-b263a4284942'),(89,'6cb21fa5-a453-47dd-8c87-261b682cf9d1'),(90,'6c601daa-6dcd-4c1f-bdea-ea1fd23f2318'),(91,'a1531346-a037-4d10-80aa-f7b26ec14728'),(92,'db33a468-51ac-47ff-9d20-1df5083df856'),(93,'3dab6cf4-337b-425c-b6ee-c7d19f4fef4c'),(94,'c219a4a1-252c-43a8-8609-f15beea6a1dd'),(95,'a8d76f59-a0b0-4152-b324-442b1086bec7'),(96,'535a6f9c-a3f8-4c94-9ef1-a3fb224237ce'),(97,'0d3c5fe9-ac50-4c53-b5b4-f066c358143e'),(98,'9983ae6e-6ffe-4b7a-994b-1c99b6c196d0'),(99,'fbc8f339-3fdf-44bd-bd86-542895ac98cb'),(100,'55f114b4-5fcd-4c2e-9932-63c9b0324560'),(101,'337b3537-6b40-4948-8807-45a3a8aaa33d'),(102,'39ea8cc3-ff3a-4093-a377-e9704bee6787'),(103,'c95e7f26-87e5-4a18-8529-cb7cd58051f8'),(104,'1bb097b4-5876-44b9-809c-383de3c6dd10'),(105,'002de913-2c39-415c-b71b-54ed28ca7563'),(106,'e30851af-d3c0-4f43-a762-1a2a655b57c6'),(107,'7e33dbb5-8745-4602-8226-6497db076b68'),(108,'d959bd8f-a075-4432-aaef-dac7cd7db652'),(109,'d45db568-2d1f-4918-ab7e-102d4a104c2a'),(110,'324301da-b39c-419c-935a-f464388391bb'),(111,'67f71299-3a62-4e29-bc90-a56f8af52a40'),(112,'bf1b2e72-0e2a-43f0-95ef-55704c6d369f'),(113,'3ef807f1-4a92-415d-a7ea-56bb590bea64'),(114,'0ebdd5fa-950e-4628-a153-5521f47dbbbe'),(115,'3e920d5f-56be-4006-a46c-4fbf41307faf'),(116,'3b5ac739-9aa4-4649-a8ef-ed508428aa7b'),(117,'089d296b-e786-436a-997a-67da04e9d2f0'),(118,'dd05fc31-e50d-4a51-9956-45307e9f13f2'),(119,'0e52105d-0cc3-4e20-8eb6-c5f75a82417a'),(120,'0a7abdfa-7526-4abd-98fa-6cb6d9892b78'),(121,'52fed01c-d6f9-47bc-97a4-ddabe9eb6718'),(122,'c9ccc9b3-3c87-4fcd-b88c-3a54f7114c1f'),(123,'742dee7b-5959-479b-b134-5cd437ea3867'),(124,'462358f9-adbb-46e9-85e3-c697ac88c6f4'),(125,'2fc71c24-25d3-42f9-b1d3-9ef01902fa08'),(126,'07730a10-7a4a-43cd-bbc9-c8008ef261d3'),(127,'ab83f672-9a91-42e8-94ca-186f008b0188'),(128,'3244d8cd-e97b-4a00-b654-e23c9184e60a'),(129,'e07be22a-4182-4aaf-abf5-db11bf1739ac'),(130,'17f49cac-4539-4e97-a4a3-de84a6eeeb87'),(131,'402f1373-acd9-44fa-bf3c-d082e24ada53'),(132,'627a4d40-d87b-4dea-8f15-1098730561a3'),(133,'6b597802-455d-4108-b2b4-9afb4c622d4d'),(134,'429bda2c-ea77-438c-b4d6-f6d6c7cdefbb'),(135,'600dcccc-3e67-4805-bfc2-1d9b3692697b'),(136,'6a75f582-a041-4262-8717-36e0196a9608'),(137,'f8b04cf7-f478-412b-9f9d-055c9feb5f71'),(138,'608a3ad3-46f7-4450-ae64-9896206711ee'),(139,'760093ea-85f8-4647-9703-f5a9293e1a1b'),(140,'b07cae3c-60b8-4ba1-83d7-50262400a13a'),(141,'4184acfe-ec20-4702-8144-adb131844ec6'),(142,'d28ea909-6253-43d0-9f11-dfe58d0ab358'),(143,'fdc61c51-e89f-4e99-b9bb-f446b866fbfb'),(144,'424e3a77-3388-4d5a-aea9-e27fc76d04a7'),(145,'b7cdca55-b6e7-4ad8-ae10-c3c8235ba101'),(146,'0015c596-54d8-433c-9182-821980eefcfb'),(147,'9c28bc52-d7d9-4872-ba6c-818ad1b83303'),(148,'3da47892-4f2a-45e0-b76a-28585c6a8bd2'),(149,'7b54e422-86a9-48cb-8678-7940d533f354'),(150,'ce58df8f-e627-497d-8e70-46904729ef45'),(151,'378705ab-f1b2-450d-aa4c-a75e33bd4f7a'),(152,'48066362-b0ca-462d-808e-edea51d5cd5d'),(153,'47eebc4c-2a14-4ace-b33b-10c1afe80def'),(154,'d013efb3-7947-403b-b971-2afab499a79e'),(155,'27df8903-2dc7-4b83-b331-3a4a22507252'),(156,'7268b770-29f6-4667-9685-d608dbe1170c'),(157,'0d393b41-3c6f-4b1c-9eaa-f1b690a19ab6'),(158,'0feb2047-1625-4a64-95c9-11e17d80ace5'),(159,'658b7860-c3d1-4ca9-8469-be1d85a84bc0'),(160,'5846d204-4333-4f42-9e4a-4c7e357042ba'),(161,'7bd87880-2c41-405b-a8d8-e7479bd75395'),(162,'72994df1-e638-4275-8854-9afedfc72dfa'),(163,'04572d98-ddf6-40df-8a5a-e1914893c5e6'),(164,'e7dfb0c6-ba5b-4631-8dcb-9c31fba3c8a0'),(165,'79b89e99-0122-4e4f-bbce-c36d14dd2634'),(166,'cdcf2eeb-92a4-41ae-833e-4ea0265654a9'),(167,'cd2ba78a-3bc2-4208-957f-e3038c1524e0'),(168,'ad570823-a0d0-40d1-a4ec-532875217f6c'),(169,'50caba6e-f966-4364-b6b0-855e0b29b548'),(170,'5d8293fa-f436-4941-ae5a-e2f63e2b50a3'),(171,'57d4a32b-b422-45f6-8dcc-3bff645163ea'),(172,'c4b29f3d-5e59-422d-b48e-240e71e6c430'),(173,'531956c5-e443-4de0-ac5f-e81143c28a6b'),(174,'678d7e1b-fd80-40cd-a690-76812c68e0e0'),(175,'c7c87c0f-9b64-43fc-af36-0996506ea5e6'),(176,'9f998f0a-56f7-408b-9527-9eac7ad9f1e5'),(177,'6dfba24b-1619-4c07-bdda-d551acd5646c'),(178,'ae76ed92-cbee-40f9-a1b5-c50da4b5604b'),(179,'f6f1277c-62d6-4467-81fa-e424e02f5dd9'),(180,'24169f03-bed2-4e28-a693-612e415bba0b'),(181,'1d47eeb7-8110-4c89-b2f8-e7817c3f103a'),(182,'2a6ebd50-c1ff-461a-bf08-0b1e4c443e71'),(183,'52f46d5b-a72f-47ba-981a-035a93026444'),(184,'5cfb7dec-9c62-4e94-8ecb-a50d29d09811'),(185,'944376cc-23ca-4c9a-ac20-b429c8b8a90a'),(186,'656a7a71-5708-43f3-9a66-088f6ba86ae4'),(187,'9fa038e3-fa45-410b-8571-299d60feab71'),(188,'9f59f035-4400-4c38-9434-ac73800baf48'),(189,'f29c33ff-a3fc-4574-8350-45b93592bd7a'),(190,'04a9e055-67c4-4406-895a-94843d6e3544'),(191,'32ee655a-6f74-4eb4-a1c4-05cda4ad4c00'),(192,'f1d31f94-d65e-42cc-911c-dc22d0e843bf'),(193,'edd00728-810f-4a61-95d9-78043c3a25e8'),(194,'533b7b8a-9350-4621-aa82-193a4654e353'),(195,'78021cc4-d584-4259-b001-bb91704386e1'),(196,'32f7dbf2-dccd-483d-95b1-e4f860f948fd'),(197,'aaa88e3e-5449-4502-a79f-48077496a2a4'),(198,'7c34e1d6-1c62-4d8c-96b7-5784efab0e8e'),(199,'431a1b7c-c786-4593-a935-97ed5425334e'),(200,'67fda8e9-f3c0-49a4-b40b-be7424033472'),(201,'0503bb1b-9927-4897-b02e-695dc4424af3'),(202,'16e732c4-19d4-42a9-81aa-48074b49b9bd'),(203,'80b3b1b2-d10a-4435-8b17-e26cf941135a'),(204,'bcf5f228-fc17-4a31-ba0d-ae9de86feea2'),(205,'1aa9b40c-1b17-4597-bbdc-81946d16a166'),(206,'3b55c34e-94ac-4af2-a9dd-8aaa1bc018e3'),(207,'72513c32-717c-456e-a3ab-d28f93c99999'),(208,'90ea59fd-7299-4d6d-aff8-8bc6b9841ee2'),(209,'cf877609-1eea-4113-84bc-538d330d8d7e'),(210,'6d261b89-2989-46ce-8fc3-c00574b64b34'),(211,'ac9b1622-5966-4e89-9cdc-2b0b9c301b01'),(212,'4eea3093-e0ac-438e-a72d-99b06a11746d'),(213,'a0d2c392-7df8-4344-85a3-8daab2a8a2cb'),(214,'f4d31abf-e9a9-42aa-ac1a-fead4d96f552'),(215,'c72ae646-7727-4170-9084-37f33b261985'),(216,'236a31c1-c6ff-4ae3-b6b1-82dfa370d071'),(217,'86ec424c-e099-4b72-ad5a-672df84d1e5b'),(218,'1d4fe3bc-59ac-460c-b9df-f576da9f817c'),(219,'5b27bad2-e1a7-4862-b7f9-543c54ccc74d'),(220,'7af84be4-bfe9-4ed4-a535-d17d3dd41f96'),(221,'a6821f5f-546c-4c7c-812e-40505fa78b56'),(222,'3c21b15f-b21d-4d9d-aa91-20e67fd864a7'),(223,'d2e3fc88-c711-473d-80db-8c6b85b4837b'),(224,'4463f118-9268-4531-b16f-1e661b1e5d94'),(225,'15c80d61-16b2-49c6-af67-119b0645d61b'),(226,'3bb5de81-c45a-4cce-a184-c7e971ff7b0e'),(227,'08983b18-72d6-40b2-86c8-5ecf302a0075'),(228,'b2b6bdb3-aec9-4c38-a90a-3e452dca84a6'),(229,'47c77acf-58ad-4d81-925c-8476b211e991'),(230,'a475aed0-b24c-453d-8ac3-7e59461e65d6'),(231,'d2ac799b-baf1-4d2e-82c2-8dae52c54170'),(232,'4806f49d-a0fd-42f3-8aeb-4492e3fb36cd'),(233,'1d280a64-21f9-404f-8dc6-d0e8e8621f44'),(234,'695953c6-8064-49c0-bb2f-9261793a37e0'),(235,'401de67c-f593-4222-811b-d25b7eac545c'),(236,'1d66a58b-3022-4be4-b1c5-fcc5922dd5a0'),(237,'b9fd1572-7d66-4145-b759-98c0a96027a6'),(238,'b6377abb-aec5-4e7e-ba01-b7c03977721b'),(239,'c6cffd9f-7abd-4fcf-aa36-e48a5a1a4317'),(240,'9642897f-b6ee-479d-8d3f-b63a3e76f0fb'),(241,'20508b62-7ff8-4be9-85b6-ff6e0cebd6cf'),(242,'b9c7a897-a540-4aca-8d09-3e18f938ad81'),(243,'bbd584ef-218b-468d-8319-7448030a6ef6'),(244,'315830d1-2866-4d10-ada3-b9bbfbd8ea90'),(245,'4a715383-b211-42ab-bab9-d234fff6c3d3'),(246,'892d2301-7a53-4ee3-9f52-59e7ee141d24'),(247,'3802dbe0-53f9-44a5-b7a9-2a136197564e'),(248,'e7b22fc5-579d-48b4-abba-edf2774d3b20'),(249,'9226b4df-b559-40a9-a28d-5af0a94e0e50'),(250,'2533b41c-1e15-4f97-80e9-17e830c51758'),(251,'90f87046-3a18-43a4-ac6a-57efc1a42337'),(252,'359f3962-5ec5-45fb-acc7-53f8c164ce14'),(253,'6c841fe0-1e17-4e5b-94ad-059be8700832'),(254,'d0692b10-fd8f-43f6-acb3-7e2cb4e95328'),(255,'fcbd4bd2-dbfd-4809-bc9e-d1b5a82e3be4'),(256,'078e1a16-d161-42e9-9e31-695c5a025ac1'),(257,'5f7db26f-ed80-4c8f-9779-cc20242919dd'),(258,'98e613e9-80d7-414d-90e0-81862479f6e3'),(259,'bc116105-bf26-42f3-9df2-b570e8ec935b'),(260,'6b623478-e14d-44e1-9246-98ee5854d5fb'),(261,'0c46d733-5acf-4e8d-b3fa-6a55cfefa54d'),(262,'5ff219e8-6fc8-4d3a-bdfd-e716ec8cdf06'),(263,'a286c9b5-504d-47c4-a699-2bc12b4c5e24'),(264,'28ca7ee1-5721-46a4-8d79-36b910c18b28'),(265,'8c901ff2-2e6c-4400-8994-e3ffac62fc88'),(266,'630fb6ba-ef86-46cd-9b41-197a875716f9'),(267,'6bfb0f41-f7f0-4fad-b88b-caad3d683484'),(268,'b493e6bc-c9ed-496c-99ef-eb10227b675e'),(269,'8dd82a06-653e-4d86-bb1b-6fa52d8e9841'),(270,'fef46973-bd7e-44f6-ab2d-1ed4cec61163'),(271,'317ac031-fd61-40ee-bbe7-827c2e99cf4a'),(272,'c40452fc-be75-4096-aab6-d71da4f05655'),(273,'b033dc16-4639-4da2-a94d-93f7949d3f64'),(274,'1dda7797-8f6d-4b86-bcb7-b5c67c79dc37'),(275,'31684e7b-9e94-4a82-890e-f0e8c8afa0ef'),(276,'a615ec41-d5fc-47f1-96f4-ed0195120ec3'),(277,'f8d3bccd-3e9f-4f9a-bb2a-0c385e1d9638'),(278,'a5f803bd-be90-42b3-a81a-25362f4b210d'),(279,'d72dd226-9a21-4f13-bf6b-c01a795d8fd3'),(280,'1e0453d2-ccd0-47d5-8dde-f42ec0b30925'),(281,'f1a01013-445b-40c8-bd74-6ad9e858517b'),(282,'495e797a-1748-453c-9312-92e71fd7a7e3'),(283,'f8a274b6-d727-414f-86f7-951021a13941'),(284,'cec3b1db-cd01-405f-8c74-5ab44cf8a8f3'),(285,'fbcf2d7a-a467-4d9a-a7d3-b51ef990c3ed'),(286,'dcf12f83-93ce-4b3f-8a4c-327c380c69fb'),(287,'c4175560-dc73-4feb-a917-e58a98f6ecbc'),(288,'10e79859-26d1-4747-87a6-1027aec2a46a'),(289,'0d5aa0ea-704d-48af-85b8-e45f5a3556c1'),(290,'08ffeb6d-2258-4ad1-a62f-0c13debdd586'),(291,'b2e37913-b89a-4230-8d2d-218902ebb654'),(292,'3159b2d2-d1e3-458c-aabf-061d9b0466f1'),(293,'b94d961a-7582-422f-b8c8-70d6b2ce1b47'),(294,'51c0df4b-0a7c-42f7-85c7-04a306278d63'),(295,'7e23487d-981b-4b83-af23-c7de51dc54ca'),(296,'197e6630-794d-4d6c-9582-1e46429f98cb'),(297,'81b2ba71-c7fd-42d0-81cc-2f49111f298d'),(298,'93e23299-a2e8-4d13-b124-3ad778a0f21b'),(299,'c2cc7ec2-a044-4784-be07-812f748711f7'),(300,'a65dc90e-034c-4324-be77-2ca5230d45c0'),(301,'5f9a36ed-d937-4fd3-911b-7e14b3e679f2'),(302,'1af54c05-ce6b-4fbd-b758-cd0d917a5634'),(303,'268ad1e7-8f3a-47d9-bb18-5be86f641108'),(304,'07f3253f-ad3c-4b64-9d23-2be4dfe883f6'),(305,'bb4728e3-b3c3-454e-a572-d76898df0acf'),(306,'158b5b1c-2bda-407f-85a9-e1f1d784c975'),(307,'0c5fc9d0-9445-49f3-998a-9e6e96f1133b'),(308,'779cfc2a-4ac8-432c-a176-1ae40b1e8413'),(309,'bb44428c-d510-4f0d-89d9-dae0f3c666fc'),(310,'5b56a59c-a921-48c2-98e3-670db6992b8e'),(311,'aec03675-cc50-41ea-80ba-9c043a3db23e'),(312,'0dc7a3e5-bdce-42fd-856f-175e06b1ea2b'),(313,'0b3697ff-9f99-4df4-b8b2-a1488c43bb1e'),(314,'a272c928-b37d-4190-8ed2-2981f25ecefb'),(315,'17690867-08c1-4c39-abe7-a6a1ceeecba3'),(316,'8320b7a1-492e-4258-8009-b8ec95b8e5df'),(317,'eddd9dcd-951b-45a5-a5bc-b4fec9313974'),(318,'d04163de-a4da-4b94-97ec-e274e7aeec94'),(319,'909e4963-5990-41fb-9e8c-8e2d4dff5bc7'),(320,'079964e3-0e37-4ff2-bb55-43b5b2ab5a32'),(321,'171d2508-9ed8-4ec8-b1ca-d535872ee775'),(322,'6416a7d2-9286-41cd-98fc-fc8457bb7657'),(323,'ce1b86f2-a099-4373-aa32-93512e9df019'),(324,'5f107340-18ed-4e8d-a2eb-c856982875ff'),(325,'90cf4879-d76d-45b2-ae19-d31e39634237'),(326,'bbb34678-1b3d-4724-abeb-0416e2cdfe1c'),(327,'e5015055-4a9c-4f75-8e79-72c87725ed8d'),(328,'5e821265-11fa-49af-a486-d69aa8120e52'),(329,'97f1894a-165d-469f-b928-8b4c6e6b0a19'),(330,'ccb964a9-8597-462c-978f-048503e94a5d'),(331,'17224c83-29ea-43d2-9c8c-c62bf24899e8'),(332,'7c6c1c62-39ba-454f-bb9a-ec2afa330c5b'),(333,'be83a862-9c59-430f-90b7-781f10894799'),(334,'9d4349d0-eeac-4397-9f98-6c15f6143364'),(335,'b68c472e-b0d2-4b1f-86fc-462e57f917e7'),(336,'7e255371-d522-471b-a6c4-61974b43a5c1');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kelas`
--

LOCK TABLES `kelas` WRITE;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` VALUES (1,'6d666b6d-4285-43f0-a5d5-121d354abdc4',1,'B'),(2,'45f6fe99-95a2-4aab-bbd6-7dbb014630b7',1,'A'),(3,'c7feed61-3748-4546-b4f5-6c7240944c8f',2,'A'),(4,'050dce9f-e60f-49ca-ab76-9efedaf71e3c',2,'B'),(5,'c909346d-7108-44e6-8af9-aa002ae25c3f',3,'B'),(6,'9b840e28-b76c-41b0-9114-3629e5ae6345',3,'A'),(7,'8b37fb3f-886e-4739-8ded-27b6b6437aa9',1,'C'),(8,'90e77d04-e121-426d-a7fb-0fa05d1ef0d7',4,'A'),(9,'974c2d8e-659a-4774-a674-2d226bee8d33',4,'B'),(10,'1682b7de-54dc-4e59-8ea7-a4e2a18442cc',5,'A'),(11,'022f7fda-1500-4351-80e2-a993ec9d905d',5,'B'),(12,'7bbb3e4a-8d19-4af3-b825-2ef8d53603f8',6,'A'),(13,'7381818c-0f91-4a66-aa84-8b34f98590de',6,'B'),(14,'ce323344-0f53-420f-9ee1-68b1bc0a0eea',7,'A'),(15,'4c7cf374-b08a-462b-8881-94968aa56e2e',7,'B'),(16,'e21b3062-2236-4cb1-99ae-31fd726c731c',8,'A'),(17,'4882a5a9-b26e-4bd0-8e2f-c286ad5b7200',8,'B'),(18,'95930a13-65d4-4ad4-9e1f-83d6b9ff56dc',9,'A'),(19,'f23e70c5-8085-4454-9da0-0e06285707b1',9,'B'),(20,'027b82e6-88c4-4e9c-b0fd-50e2b6a91ea6',10,'A'),(21,'292cf793-890c-4632-98dc-15661cb3a2a0',10,'B'),(22,'de1d2723-5973-4f7e-9de8-7b69e9ea72c9',11,'A'),(23,'061fb77e-5952-47d0-9403-71c66dc20152',11,'B'),(24,'93e53fa0-4816-4e88-8976-ada9443d6674',12,'A'),(25,'f36cbb95-944f-4f25-bfec-05b68c1c8656',12,'B'),(26,'0917c9e8-580a-41e3-b70f-b83b55a5d21c',13,'Z');
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
  `uuid_kelas` varchar(255) DEFAULT NULL,
  `guru` varchar(100) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` varchar(255) DEFAULT NULL,
  `isi` mediumtext,
  `link` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
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
  `uuid` varchar(255) DEFAULT NULL,
  `uuid_soal` varchar(255) DEFAULT NULL,
  `opsi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_soal`
--

LOCK TABLES `mc_soal` WRITE;
/*!40000 ALTER TABLE `mc_soal` DISABLE KEYS */;
INSERT INTO `mc_soal` VALUES (66,'cbd91f19-fc02-46c0-a520-22f5ec3910f1','42f96047-5414-46d2-8099-6f42e0fe5d78','2'),(67,'6709dfcd-7340-4ac4-88e9-d311cf4010c3','42f96047-5414-46d2-8099-6f42e0fe5d78','3'),(68,'dd050c64-63c9-46b9-b488-0aeff5ea2582','42f96047-5414-46d2-8099-6f42e0fe5d78','4'),(69,'6bc9277e-2fce-4b62-a680-41e82e95f568','42f96047-5414-46d2-8099-6f42e0fe5d78','5'),(70,'0deb30b5-8d50-488c-9026-5aad20758e94','42f96047-5414-46d2-8099-6f42e0fe5d78','6'),(71,'f4511475-4246-471d-8447-c4395afb5e6b','b2c08f06-21c7-42e5-b191-29ff68562078','3'),(72,'6809dbd2-a69d-4ab4-809e-cc7c049f3bc8','b2c08f06-21c7-42e5-b191-29ff68562078','4'),(73,'455a91d5-8aa9-46cc-9097-798ceaed31e5','b2c08f06-21c7-42e5-b191-29ff68562078','5'),(74,'380fa916-ad97-44af-984e-50dd00e8c54e','b2c08f06-21c7-42e5-b191-29ff68562078','6'),(75,'e98e08a5-fc47-451a-9335-b4749eae7408','b2c08f06-21c7-42e5-b191-29ff68562078','7'),(76,'8853ac26-c8a5-431e-a744-720db8e6d915','30cbfccc-5cd7-4773-95e1-605f590749f4','4'),(77,'0a6d9b99-dd5c-4042-a065-980ce00b7c8c','30cbfccc-5cd7-4773-95e1-605f590749f4','5'),(78,'5781fd4e-d24e-4238-86d1-3136ca2868f9','30cbfccc-5cd7-4773-95e1-605f590749f4','6'),(79,'eedc50c5-1363-4627-876a-d2b30f0b5936','30cbfccc-5cd7-4773-95e1-605f590749f4','7'),(80,'17ec26f2-20ac-4772-b9ed-1e3eb9c45a97','30cbfccc-5cd7-4773-95e1-605f590749f4','8'),(81,'5b2cca09-dee3-4a6c-9b27-dce2a1bb77aa','c69fd16f-24a9-48eb-a77f-c21904725d80','6'),(82,'86baa676-37e5-4273-a1a4-59333e02498b','c69fd16f-24a9-48eb-a77f-c21904725d80','7'),(83,'9bf7e8d9-a43c-4283-8fd3-09484ceb2564','c69fd16f-24a9-48eb-a77f-c21904725d80','8'),(84,'c038a37c-cc64-4ac9-ba81-45f8df2be5a3','c69fd16f-24a9-48eb-a77f-c21904725d80','9'),(85,'c2b4f960-cbf6-42c7-90a1-ad514505969e','c69fd16f-24a9-48eb-a77f-c21904725d80','10'),(86,'d1bcb216-84c4-4f8c-ab1d-af3711d46f4a','d097875c-654f-47a6-bbcb-0fd59036bfc5','12'),(87,'ce9b4199-58b2-434d-9031-3971cf92a4fb','d097875c-654f-47a6-bbcb-0fd59036bfc5','13'),(88,'67b92b8a-39c4-4f1c-92f7-daeb7b765658','d097875c-654f-47a6-bbcb-0fd59036bfc5','14'),(89,'29bdd323-8fdb-45ba-b823-58403747c4dc','d097875c-654f-47a6-bbcb-0fd59036bfc5','15'),(90,'aa07beba-7376-4186-991e-a833eec12966','d097875c-654f-47a6-bbcb-0fd59036bfc5','16'),(91,'bb787cc7-0749-417a-9913-3b8946722858','9587ab79-aa0e-49c2-bad6-e150994c7240','1'),(92,'dc8846ec-b562-4c67-aec1-b207dddc5c3d','9587ab79-aa0e-49c2-bad6-e150994c7240','2'),(93,'d059e3d8-2bc2-4bcb-9c87-1aeb3cab8c7c','9587ab79-aa0e-49c2-bad6-e150994c7240','3'),(94,'7cb424f4-4128-45df-ac02-01835bb34b03','9587ab79-aa0e-49c2-bad6-e150994c7240','4'),(95,'f89673c3-d162-4be2-917f-bca1f76376d3','9587ab79-aa0e-49c2-bad6-e150994c7240','5'),(96,'fc44d604-1275-43bb-b592-f9cf3ae081fd','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','2'),(97,'fe13630b-44e1-4c70-8e62-64a147b736ec','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','3'),(98,'deff1cdd-f2be-439e-87d4-fbee8a5fc9ce','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','4'),(99,'5c271cc1-b5b6-494c-bc79-b22aa3d8b38e','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','5'),(100,'03308053-c1f3-449c-a454-529b2cdcf79d','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','6'),(101,'deb277e7-a78b-445f-981a-254a111df3d4','b82d5853-0003-4e80-aca4-a9608557a611','3'),(102,'4d271545-3133-498d-ac37-9641b784a3ae','b82d5853-0003-4e80-aca4-a9608557a611','4'),(103,'a474f82f-f709-4e90-bc9c-42d407f2e910','b82d5853-0003-4e80-aca4-a9608557a611','5'),(104,'c6ce8cfe-d082-4c45-af7d-6161a6c82f67','b82d5853-0003-4e80-aca4-a9608557a611','6'),(105,'bd0298e0-438f-46a9-ae71-516c86ba1c77','b82d5853-0003-4e80-aca4-a9608557a611','7'),(106,'c1ba897a-319c-4429-bd77-4a040f4c5a57','d30db082-3f3a-4302-be50-db4bcbb7a1da','5'),(107,'a59f3860-6db5-49c3-92df-3642bdb7c6ec','d30db082-3f3a-4302-be50-db4bcbb7a1da','6'),(108,'8ba5c291-bb74-4357-b1bc-a1e32cf305ef','d30db082-3f3a-4302-be50-db4bcbb7a1da','7'),(109,'a31a04cd-baca-4f34-80f8-8c71a64f30af','d30db082-3f3a-4302-be50-db4bcbb7a1da','8'),(110,'82545cf6-4f34-4213-8226-2c20e0922458','d30db082-3f3a-4302-be50-db4bcbb7a1da','9'),(111,'edc1f1c2-9e65-49ce-9883-b7338e641638','7adb674e-fc5b-47fa-adf8-0574c0ac805f','4'),(112,'72dc3c5a-5e7e-48e6-9b13-f73535bc6cdf','7adb674e-fc5b-47fa-adf8-0574c0ac805f','5'),(113,'6d30ed9a-f08b-41ac-b22b-2489819d33f2','7adb674e-fc5b-47fa-adf8-0574c0ac805f','6'),(114,'fb7026e2-f96b-41cd-80af-4ba3701e0698','7adb674e-fc5b-47fa-adf8-0574c0ac805f','7'),(115,'68f3ade0-78d8-43a7-94a4-4553efeb153c','7adb674e-fc5b-47fa-adf8-0574c0ac805f','8'),(116,'b0c969e1-1cf6-44c6-93fb-54076712be80','e19a6812-77a3-4f93-b29c-8279c9e99463','3'),(117,'c3d9decc-438d-43c4-8a0e-46c8136a7572','e19a6812-77a3-4f93-b29c-8279c9e99463','4'),(118,'49fa9c32-fab9-4636-8604-d47d35b4afa8','e19a6812-77a3-4f93-b29c-8279c9e99463','5'),(119,'29b657a6-c480-4a7c-ae8c-778530136894','e19a6812-77a3-4f93-b29c-8279c9e99463','6'),(120,'25ca7b20-95a8-4538-b21b-9d90a07f28f7','e19a6812-77a3-4f93-b29c-8279c9e99463','7'),(121,'84f4d594-b13e-431e-84a0-b175f5107e54','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Kucing'),(122,'7e001cbf-4239-422c-8329-5eab32b0fa5e','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Anjing'),(123,'1ca5cc8a-1152-4340-b8da-44f1e69e1f1b','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Sapi'),(124,'8ab651a6-f5c5-4b60-ac93-c15760e17bce','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Ikan'),(125,'9086e32b-7363-41de-bb0d-a868e122a9d8','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Kerbau'),(126,'5f695eb6-f4b4-4384-9086-21b27bd6f5af','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Anjing'),(127,'e15da573-0a79-4e81-aa64-4ba57330c2ba','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Sapi'),(128,'2afcbefe-7a60-4e6f-bfef-19d4da9cac16','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Kucing'),(129,'fb3ed571-d180-4aca-b0ae-891eeff35690','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Burung'),(130,'ee67ac39-9277-414b-afc5-979e6a1c3c2f','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Kelinci'),(131,'b28ed4b2-4612-42eb-bee3-cce690c80ea9','e49614b3-5c85-4c92-97ef-448b9fac0c81','6'),(132,'0349e9c3-ddda-45fb-a6b5-d01f55571dde','e49614b3-5c85-4c92-97ef-448b9fac0c81','7'),(133,'5c124376-b43b-4133-81eb-f384b94bc71f','e49614b3-5c85-4c92-97ef-448b9fac0c81','8'),(134,'874287b8-717e-49a1-81dd-46a28a4475c2','e49614b3-5c85-4c92-97ef-448b9fac0c81','9'),(135,'9220ebcb-0ae5-46fc-aa03-d56afd04f020','e49614b3-5c85-4c92-97ef-448b9fac0c81','10'),(136,'99bb30f8-a78d-4ecd-a941-21a687dcfd51','94aa417b-5418-42e8-a39d-686490fe3b23','12'),(137,'7899b1a3-2be7-460a-bf33-1b4063959f23','94aa417b-5418-42e8-a39d-686490fe3b23','13'),(138,'3766f73d-b3d1-4ce1-a634-fa06ecc13a18','94aa417b-5418-42e8-a39d-686490fe3b23','14'),(139,'794bae7d-69ec-4756-9843-179444ce9d71','94aa417b-5418-42e8-a39d-686490fe3b23','15'),(140,'d4c5b94a-9892-49d7-8304-a26623765d75','94aa417b-5418-42e8-a39d-686490fe3b23','16'),(141,'9b5d5210-a381-4e57-86b1-413f74cf9338','0903267b-e8a0-42f8-86f2-1ce455ff9409','9'),(142,'e018014c-2c8b-4457-a132-68ad601ae566','0903267b-e8a0-42f8-86f2-1ce455ff9409','10'),(143,'d76adb80-9f2b-4360-a046-4cdc0ccaded5','0903267b-e8a0-42f8-86f2-1ce455ff9409','11'),(144,'9910733c-c9ab-47f0-a689-71ba90f30301','0903267b-e8a0-42f8-86f2-1ce455ff9409','12'),(145,'733a1655-8887-4d67-a704-8ee43abe471a','0903267b-e8a0-42f8-86f2-1ce455ff9409','13'),(146,'7ce3f27c-f000-44ee-b035-67db04b6d8d4','c3c373d5-f615-484c-879c-8245b921e553','15'),(147,'98638076-e865-466e-9ed5-03feb5d45cce','c3c373d5-f615-484c-879c-8245b921e553','16'),(148,'5bab6010-891f-4ef2-9d6b-766a853adb41','c3c373d5-f615-484c-879c-8245b921e553','17'),(149,'84d13580-8d37-4f91-ae87-43a951c9a12f','c3c373d5-f615-484c-879c-8245b921e553','18'),(150,'b7f04f97-774a-4725-9e19-32c71b26281c','c3c373d5-f615-484c-879c-8245b921e553','19'),(151,'bc139737-b5c7-4e7d-a24a-e9482c57f1f5','dfa3b83d-6acd-48e2-9970-054e243ef0fc','25'),(152,'1cac5423-002e-4b18-a69e-f7c3880ac5cc','dfa3b83d-6acd-48e2-9970-054e243ef0fc','26'),(153,'6c71ee64-f23d-4aff-b841-7d4a601a4b33','dfa3b83d-6acd-48e2-9970-054e243ef0fc','27'),(154,'369b19a9-068a-482b-b662-253a25b4e4d5','dfa3b83d-6acd-48e2-9970-054e243ef0fc','28'),(155,'d7764d1a-55fa-4988-822d-8ad620028d61','dfa3b83d-6acd-48e2-9970-054e243ef0fc','29'),(156,'858499b5-5582-40a6-9fab-f645731f1230','b6b4b12c-9211-4e20-8666-c4cc09a28b23','66'),(157,'20855b27-da18-4d2b-8c1d-a8cc10ea4f08','b6b4b12c-9211-4e20-8666-c4cc09a28b23','77'),(158,'870c14bc-1de0-4ec7-96d0-3e8f923d92d4','b6b4b12c-9211-4e20-8666-c4cc09a28b23','88'),(159,'40d98407-5a68-4861-ac22-6fa40105beda','b6b4b12c-9211-4e20-8666-c4cc09a28b23','99'),(160,'0eff115f-6472-4dd4-af00-36134aef03b1','b6b4b12c-9211-4e20-8666-c4cc09a28b23','55'),(161,'06dfd999-cb08-4230-a8af-29d94454956d','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','69'),(162,'fd56a30b-2856-459a-8332-6a1a4294c3a1','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','96'),(163,'e8890fe4-6ad3-4b94-ac57-01e126faef8c','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','78'),(164,'d0f8c6ad-a832-4ed4-9c5d-25cf74e541be','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','87'),(165,'1f49b048-4d02-43a9-bed9-16971b674fc8','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','67'),(166,'37aa321d-8665-422e-b08a-75b6ac5eb365','9cdd6794-a200-428f-a7a1-13f404d45f1e','Table'),(167,'17d4343a-ccda-4421-839e-474576c0555b','9cdd6794-a200-428f-a7a1-13f404d45f1e','Door'),(168,'d517127a-1f0d-46cb-86d1-a258fc599443','9cdd6794-a200-428f-a7a1-13f404d45f1e','Window'),(169,'e1373bab-84ee-489b-a268-70fade3b7144','9cdd6794-a200-428f-a7a1-13f404d45f1e','Blackboard'),(170,'cf788f62-c7dc-4fb4-8e3a-9f67e4be12ec','9cdd6794-a200-428f-a7a1-13f404d45f1e','Marker'),(171,'a0993c1b-f283-4610-be46-142144d7913a','27df5704-2085-4701-97fa-c6b5ffdca960','Door'),(172,'26840c0e-cf68-4be2-846c-9a51f4b7729c','27df5704-2085-4701-97fa-c6b5ffdca960','Window'),(173,'6e1ee059-bdcd-4c0f-8d07-980a1c45277c','27df5704-2085-4701-97fa-c6b5ffdca960','Table'),(174,'964ab2fb-a18a-4c5c-b666-5400905ee6db','27df5704-2085-4701-97fa-c6b5ffdca960','Blackboard'),(175,'5aea37f4-4a86-4f25-a66a-ef195c7e0113','27df5704-2085-4701-97fa-c6b5ffdca960','Marker'),(176,'8f5b2a4c-2908-47ba-b73f-88fbe1e73fd5','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Kitchen'),(177,'aa3c78d4-9b28-40a8-8b60-bf1101b01ced','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Bath room'),(178,'1cbe1dad-a6df-4277-93f1-5a7959ef631a','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Living roo'),(179,'4b9bf610-64d9-4300-b5dc-363dc4cfe352','7fca1c18-f8c7-4a8e-9493-513c32de38f9','House'),(180,'3a4ca863-aa99-4b2b-a545-17a9c7a6c835','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Hospital'),(181,'77251545-02df-4da7-939c-0aeb588e4fd5','1757db15-3a85-43cf-84aa-112046ce4104','Book'),(182,'83617791-7d7d-4ed4-ad1f-05018e294eab','1757db15-3a85-43cf-84aa-112046ce4104','Pencil'),(183,'aea34369-f651-446a-8688-3bf73315ee2b','1757db15-3a85-43cf-84aa-112046ce4104','Pen'),(184,'0e90af75-143b-4ca1-9bcb-204f211036c4','1757db15-3a85-43cf-84aa-112046ce4104','Paper'),(185,'b1f672c8-4d0e-4032-8d27-51f0c0d828cd','1757db15-3a85-43cf-84aa-112046ce4104','Ruler'),(186,'ff71dffb-8edb-4ccd-9723-fd182ed824a1','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Spoon'),(187,'833a5ff8-4fb9-4e0a-9f35-0489525dd1fd','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Knife'),(188,'ce6ea4ab-a260-4c46-87c0-d9404357826e','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Flate'),(189,'49776afe-e73c-4b6c-b4d5-0a1e63d1af1c','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Cup'),(190,'b4f51f1c-aa35-4a9a-956f-d96f4c0bb77e','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Frok'),(191,'c7158e56-7644-44cf-879b-83b8e9a05ed5','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Sun'),(192,'8077015b-4967-4072-8784-bf962cd97cc3','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Moon'),(193,'bd9302f0-60cf-43a4-bc3b-3330b5cac949','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Star'),(194,'e0e859ab-8e31-443a-b4ca-22029437ab31','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Meteor'),(195,'4ead7222-2b78-4aad-b382-4ecec9d4920c','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Planet'),(196,'6a46c9d6-79d3-4001-b313-29b55d7ece9f','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Father'),(197,'f55affc5-b2e2-4ba5-9935-3762bd1d963d','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Mother'),(198,'65b11744-b98e-42b5-a96d-b1d778dbbab6','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Sister'),(199,'a084942c-4d07-4208-82ab-629ff2e20933','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Brother'),(200,'bb3ae58a-75af-45ab-b88d-8f1d9dba2885','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Baby'),(201,'4c6a8c92-462c-4420-9828-8feca6744849','7fa45c07-4b06-4f1a-b851-cc8f5943e753','5'),(202,'9649728e-cf04-472f-86f3-b5095d7b43af','7fa45c07-4b06-4f1a-b851-cc8f5943e753','6'),(203,'1aa64ba1-3fb2-41b5-8026-9657e534ade8','7fa45c07-4b06-4f1a-b851-cc8f5943e753','7'),(204,'7059433e-8705-4826-92c4-5ffd780c8f63','7fa45c07-4b06-4f1a-b851-cc8f5943e753','8'),(205,'444a8cb0-9f68-4a4a-a2a9-08b22022e401','7fa45c07-4b06-4f1a-b851-cc8f5943e753','9'),(206,'14e7473b-6b64-454d-87e8-102b1f565a0e','52702db2-2d05-4faa-b654-f3a85360c867','0'),(207,'9d18aaa1-0c3f-4d0c-a7df-3e32623ddaf8','52702db2-2d05-4faa-b654-f3a85360c867','1'),(208,'b53bf1d1-7d72-46a8-bb79-f3fc21023e5b','52702db2-2d05-4faa-b654-f3a85360c867','2'),(209,'088fb7b3-fa56-4320-ab04-8425c6d96f54','52702db2-2d05-4faa-b654-f3a85360c867','3'),(210,'fcd83b8e-b6da-41ad-a6f7-ec7320606ad4','52702db2-2d05-4faa-b654-f3a85360c867','4'),(211,'5fcea527-6cd7-4e19-8ac8-29415f2d27b2','2a05bf80-a880-4e6e-9e25-4d837a224c7c','8'),(212,'dfefe51e-2a3a-479a-9598-69ec02d818ab','2a05bf80-a880-4e6e-9e25-4d837a224c7c','9'),(213,'9fc3093f-64e5-4efe-adc9-1aaed7d44eb6','2a05bf80-a880-4e6e-9e25-4d837a224c7c','10'),(214,'22e8418a-69cf-4307-a50b-14a60a176361','2a05bf80-a880-4e6e-9e25-4d837a224c7c','11'),(215,'6a469ea6-6ef3-440d-b20c-47db2f022f4c','2a05bf80-a880-4e6e-9e25-4d837a224c7c','12'),(216,'a1336a1a-95b7-415d-80b4-23a1da75d099','41adfdd1-8f01-4749-85c4-b5eabc24b449','Mengantuk'),(217,'421a9243-a3d0-4fbe-ab48-2d250c9409f0','41adfdd1-8f01-4749-85c4-b5eabc24b449','Tidur'),(218,'63aa2d2c-e352-44b9-97d4-401ca67182fb','41adfdd1-8f01-4749-85c4-b5eabc24b449','Lari'),(219,'32bbc5b3-280c-43f6-b2ee-9df84a413df8','41adfdd1-8f01-4749-85c4-b5eabc24b449','Berdiri'),(220,'a18b80be-f995-46f4-bbc6-0f1815ffe197','41adfdd1-8f01-4749-85c4-b5eabc24b449','Duduk'),(221,'f24d3e33-909e-4c8c-9639-bb162a3be95b','8e8fc201-8386-4b0e-8f9a-e3961936176d','Lari'),(222,'b478ebbd-7909-487a-9520-2f2b315f57e6','8e8fc201-8386-4b0e-8f9a-e3961936176d','Jalan'),(223,'d35fb7c7-cb52-4b1e-ac48-f86d62a43014','8e8fc201-8386-4b0e-8f9a-e3961936176d','Lompat'),(224,'a1f16776-629e-4a18-b1dd-7b88340508f3','8e8fc201-8386-4b0e-8f9a-e3961936176d','Terbang'),(225,'f1218986-55c1-45bd-adba-1b393f22cc4e','8e8fc201-8386-4b0e-8f9a-e3961936176d','Berenang'),(226,'07d034c6-b06e-4015-848a-a12d1620ba10','b709b700-1b2f-42ed-a950-49f48208aa41','Dorong'),(227,'375142e8-74bd-4032-ab43-79cdb9bd9f80','b709b700-1b2f-42ed-a950-49f48208aa41','Tarik'),(228,'285a5558-b48a-4d53-ad97-c45d380944c4','b709b700-1b2f-42ed-a950-49f48208aa41','Pukul'),(229,'f0899605-3e06-460f-b34f-bec30b7642dc','b709b700-1b2f-42ed-a950-49f48208aa41','Duduk'),(230,'222fbc53-dc80-4d40-b031-ce81fb10562f','b709b700-1b2f-42ed-a950-49f48208aa41','Terbang'),(231,'ae0fb628-7eba-47e6-8ee1-9fc062e49299','a58d1a64-a286-4fb1-8792-44e9c4e452d1','5'),(232,'b2f8393f-4e95-497e-8e1a-efbfc2584a5c','a58d1a64-a286-4fb1-8792-44e9c4e452d1','6'),(233,'4ae84138-7972-4617-8599-211934a35fc2','a58d1a64-a286-4fb1-8792-44e9c4e452d1','7'),(234,'a2a4731f-a704-4f71-98d6-ab1dc8342c62','a58d1a64-a286-4fb1-8792-44e9c4e452d1','8'),(235,'d61447ab-440e-4f97-81fe-e227a9791a5a','a58d1a64-a286-4fb1-8792-44e9c4e452d1','9'),(236,'f1420bd0-0e95-498a-9e1e-384b9767c004','aa373faf-1798-4d14-8920-72ff561f60c1','11'),(237,'79daff7f-43b8-4df0-bc09-a46d79c8dc34','aa373faf-1798-4d14-8920-72ff561f60c1','12'),(238,'4dd0a862-0d49-4c60-b97a-b1cc6300cc52','aa373faf-1798-4d14-8920-72ff561f60c1','13'),(239,'2a10de44-d1d2-472e-b16a-f1c273d73c19','aa373faf-1798-4d14-8920-72ff561f60c1','14'),(240,'2243624e-c929-434f-89b4-c39b7e9fbd6d','aa373faf-1798-4d14-8920-72ff561f60c1','15'),(241,'a69eae7b-d0ff-436c-b43f-dd2b91209a95','78458faa-db1e-42f4-87cc-04540c3072ad','17'),(242,'3251d719-1406-4c02-be8b-8ed17e0518ce','78458faa-db1e-42f4-87cc-04540c3072ad','18'),(243,'397d9e1b-c666-469c-8b04-4066a5c4f1a2','78458faa-db1e-42f4-87cc-04540c3072ad','19'),(244,'9329da93-90bd-4279-918e-1c5c25ec7a9c','78458faa-db1e-42f4-87cc-04540c3072ad','20'),(245,'e3ac4da9-b643-41db-aabd-ccc9bb48add5','78458faa-db1e-42f4-87cc-04540c3072ad','21'),(246,'e5ed1e9d-b73a-4d0a-a359-d67f323ed8e2','8bf1f574-2f49-4c78-89a2-3660bd819a41','Ayah'),(247,'4591a7b3-2b49-40b1-909c-503c9ba23ab9','8bf1f574-2f49-4c78-89a2-3660bd819a41','Ibu'),(248,'5a42435f-97d1-4d2c-b7cc-86fb66b3cbe8','8bf1f574-2f49-4c78-89a2-3660bd819a41','Saudara'),(249,'1ea005bb-66f0-42d8-8efb-0bd517d32190','8bf1f574-2f49-4c78-89a2-3660bd819a41','Saudari'),(250,'a54f945e-3168-41f6-8a26-ddfb92113e65','8bf1f574-2f49-4c78-89a2-3660bd819a41','Kakek'),(251,'8ef9c3e7-7c17-4e95-a301-9870f8bb469e','e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','Saudara'),(252,'4038dd1e-b88d-4c71-b9b5-eb8579a31f60','e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','Saudari'),(253,'9811f992-dda6-4506-b6c8-59ebb949a002','e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','Kakek'),(254,'cb623508-ad37-4726-bdb5-dc9ce8ee9da2','e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','Nenek'),(255,'c7b9eba8-0556-4e47-8d67-aaeed9c13b3d','e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','Ibu'),(256,'f24b136a-d602-4510-a244-88620aa1170c','15c3202d-df4c-4d08-b8ba-e4ae3f131edb','Saudari'),(257,'0411b7ca-ad0e-4b42-92d7-d2cd5b0f4d2c','15c3202d-df4c-4d08-b8ba-e4ae3f131edb','Ibu'),(258,'6c7f06c7-056d-4105-8c43-110d19d322cc','15c3202d-df4c-4d08-b8ba-e4ae3f131edb','Ayah'),(259,'0d472d41-cd42-465d-9ec5-bec9c1613bc5','15c3202d-df4c-4d08-b8ba-e4ae3f131edb','Kakek'),(260,'1cc30b0e-0011-41b9-8fe3-e60db1528ab0','15c3202d-df4c-4d08-b8ba-e4ae3f131edb','Nenek'),(261,'da696870-4fab-44d8-bda6-e1aacf83af76','ec91ed15-987b-4463-be46-04ee9b2dc8eb','hahah'),(262,'ee0dad1f-0596-4c17-9776-532ff4a1f36c','ec91ed15-987b-4463-be46-04ee9b2dc8eb','hahaha'),(263,'b4798f5d-35a1-4df4-b4bb-47b0ddb41567','ec91ed15-987b-4463-be46-04ee9b2dc8eb','hahahhh'),(264,'27ca57a5-03e7-450d-aff5-930f6fef6402','ec91ed15-987b-4463-be46-04ee9b2dc8eb','hahaha'),(265,'d884d452-2b25-4c8b-b99e-257896dd4c80','ec91ed15-987b-4463-be46-04ee9b2dc8eb','haha'),(266,'308cfbc2-bfa1-4878-840f-bdd1865b30fe','f5df9e83-60d0-47c5-9231-8db541258dde','pi'),(267,'38b0a38d-2aa8-4da9-b53a-02b28536d302','f5df9e83-60d0-47c5-9231-8db541258dde','xak'),(268,'ba0db5e8-e1b9-4aa0-b8fb-52a68c98205b','f5df9e83-60d0-47c5-9231-8db541258dde','wogpjo'),(269,'6c27079e-26d1-47f5-ad23-63f0d5760062','f5df9e83-60d0-47c5-9231-8db541258dde','xojoj'),(270,'b36ad2b6-42d1-4851-8575-98288eab89a0','f5df9e83-60d0-47c5-9231-8db541258dde','voih'),(271,'826d50c6-2ced-45eb-ab03-4f4dcdb88eda','e3181eaf-5d7a-4336-bbb8-15e6713f6721','a'),(272,'05eea65e-62e5-4910-a630-51f09a4956cc','e3181eaf-5d7a-4336-bbb8-15e6713f6721','b'),(273,'333f78bd-71bd-4155-982b-f3ea1a9605b0','e3181eaf-5d7a-4336-bbb8-15e6713f6721','c'),(274,'3f6f64d4-02df-4128-9a75-46eac1b9e348','e3181eaf-5d7a-4336-bbb8-15e6713f6721','d'),(275,'26ee19ef-7e51-4f0e-9628-074f5cf507ae','e3181eaf-5d7a-4336-bbb8-15e6713f6721','e'),(276,'eb78b496-f51f-4c56-8eb4-48dcd7a83b0d','9def7c0e-62cb-48cf-b0f1-37ee4e803bf0','e'),(277,'052096bf-dceb-4632-8447-de442d1b7f40','9def7c0e-62cb-48cf-b0f1-37ee4e803bf0','d'),(278,'5d100191-ac4f-4f66-b5fe-e74af98ff095','9def7c0e-62cb-48cf-b0f1-37ee4e803bf0','c'),(279,'25863acb-fa2a-40b1-8bc0-bad2e755f8a7','9def7c0e-62cb-48cf-b0f1-37ee4e803bf0','b'),(280,'b82222bf-f688-44ff-af74-34d40556566e','9def7c0e-62cb-48cf-b0f1-37ee4e803bf0','a');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengampu`
--

LOCK TABLES `pengampu` WRITE;
/*!40000 ALTER TABLE `pengampu` DISABLE KEYS */;
INSERT INTO `pengampu` VALUES (2,'80bc8ec2-c0bf-4aad-b021-5b1b0f81424c','6d666b6d-4285-43f0-a5d5-121d354abdc4',NULL,'2020-07-23 18:01:53'),(5,'8d8edf52-ffe1-4aa3-92fe-e1789ff7b074','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','2020-07-24 21:14:43'),(21,'b8c66234-ad03-4d29-9894-7742492bcb0e','ce323344-0f53-420f-9ee1-68b1bc0a0eea','21dd3e21-d56e-4092-a759-b40b0f6800f4','2020-07-24 21:55:03'),(31,'b5fe3989-664f-4ff6-92fe-40e394ce923c','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','ccf3ae86-4db5-4128-b9e0-96ca9474970f','2020-07-24 23:35:04');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'d63dbc91-b77b-424d-afc7-3f8891780088','45f6fe99-95a2-4aab-bbd6-7dbb014630b7','siswa','$pbkdf2-sha256$29000$I0ToXcuZE8KYs/b.vxfC.A$Uxmm4W15Ys5KpUhhHd8QJUFlaCSEcRTtYuROo98iyrI','2020-07-23 18:16:27','2020-07-23 18:16:27'),(3,'efc69cb9-0029-4eec-81f3-b9310e096d91','6d666b6d-4285-43f0-a5d5-121d354abdc4','siswa2','$pbkdf2-sha256$29000$YqwVgpAyBiDknPN.jxEixA$DfUBHariadHZ5SRNwdy5t16m7Y3FE2qjPeTTUmCNvw4','2020-07-24 15:24:55','2020-07-24 15:24:55');
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
  `kelas` varchar(15) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` varchar(100) DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skor`
--

LOCK TABLES `skor` WRITE;
/*!40000 ALTER TABLE `skor` DISABLE KEYS */;
INSERT INTO `skor` VALUES (1,'8db29d41-8044-4acb-b199-d9d33b846741','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Matematika','Penjumlahan','f87e2ed6-375d-496b-a7a5-7449c30f84d3',3,'2020-07-21 14:47:31');
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
  `kelas` varchar(15) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` varchar(100) DEFAULT NULL,
  `soal` text,
  `kunci_jawaban` varchar(50) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  `tampil` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `uuid_user` varchar(255) DEFAULT NULL,
  `uuid_kelas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soal`
--

LOCK TABLES `soal` WRITE;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` VALUES (1,'a58d1a64-a286-4fb1-8792-44e9c4e452d1','I','Matematika','Penjumlahan','2 + 3 = ...','5',1,1,'2020-07-20 13:33:35','2020-07-20 13:33:35','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL),(2,'aa373faf-1798-4d14-8920-72ff561f60c1','I','Matematika','Penjumlahan','7 + 4 = ...','11',1,1,'2020-07-20 13:33:35','2020-07-20 13:33:35','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL),(3,'78458faa-db1e-42f4-87cc-04540c3072ad','I','Matematika','Penjumlahan','5 + 12 = ...','17',1,1,'2020-07-20 13:33:35','2020-07-20 13:33:35','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL),(4,'8bf1f574-2f49-4c78-89a2-3660bd819a41','I','Bahasa Inggris','Keluarga','Father means ...','Ayah',1,1,'2020-07-20 13:38:48','2020-07-20 13:38:48','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL),(5,'e65a48be-f06d-4df6-b518-fbaaa3dd4e6d','I','Bahasa Inggris','Keluarga','Brother means ...','Saudara',1,1,'2020-07-20 13:38:48','2020-07-20 13:38:48','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL),(6,'15c3202d-df4c-4d08-b8ba-e4ae3f131edb','I','Bahasa Inggris','Keluarga','Sister means ...','Saudari',1,1,'2020-07-20 13:38:48','2020-07-20 13:38:48','f87e2ed6-375d-496b-a7a5-7449c30f84d3',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (9,'67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b','superadmin','$pbkdf2-sha256$29000$eg9hDIGw9r5XqtW6t7Z2jg$Rw3W2FvAyZHAklDwCbzPeHeQE9qO8WMX8T1CXZLfxzA',1,'2020-07-01 21:40:16','2020-07-01 21:40:16'),(10,'34928e60-0498-4477-971e-24fd03fc6759','superadmin1','$pbkdf2-sha256$29000$GsOY03qv1VpLqbU2JiSkVA$bgjQmjsNLyr.XbKhqNUuLn31sZCt1oDQjZZZBNOszC8',1,'2020-07-15 12:05:10','2020-07-15 12:05:10'),(20,'8d8edf52-ffe1-4aa3-92fe-e1789ff7b074','admin1','$pbkdf2-sha256$29000$670XgnDO2bv3vreW8l4rBQ$yXc5oQyXRg/9m8vziX2HgawIUa.jfDypLurx68tcvEc',0,'2020-07-24 21:06:46','2020-07-24 21:06:46'),(21,'b5fe3989-664f-4ff6-92fe-40e394ce923c','admin2','$pbkdf2-sha256$29000$UCplDMHYWyslxBhjjHFuTQ$wfXaDrgzsW12j80wAyd6F5yc6ENb85s19k8hkiYVJqI',0,'2020-07-24 21:17:20','2020-07-24 23:35:04');
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

-- Dump completed on 2020-07-24 23:45:58
