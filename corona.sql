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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_siswa`
--

LOCK TABLES `bio_siswa` WRITE;
/*!40000 ALTER TABLE `bio_siswa` DISABLE KEYS */;
INSERT INTO `bio_siswa` VALUES (1,'d4ac8225-bfa1-4de6-af68-c45082baee83','ayam bakar kecap','siswa','L','pemanggangan','pemanggangan','2020-02-12','+621234567890','ayambakarkecap@gmail.com','2020-06-24 17:34:48','2020-07-15 11:32:10','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0'),(2,'be928cef-ae2b-43e2-aa39-acee2ccbd029','Ayam Bakar Kecap','ayam',NULL,'Pemanggangan','Pemanggangan','2020-06-01','+62123456789','ayambakarkecap@gmail.com','2020-06-25 06:43:56','2020-06-25 06:43:56','ed6eeb9c-f17f-4f63-aa2b-ccbc53a76d1a'),(3,'8d11f2b1-4732-4a00-8f6c-ec341f640493','c','c','P','c','c','2020-07-01','1234567','c@gmail.com','2020-07-07 14:01:14','2020-07-07 14:01:14','809ee359-6011-419b-a692-c767d84b94e0'),(4,'ce6f385c-f248-4ff2-9dfa-f8360684ce42','f','f','P','f','f','2020-07-09','7684167478','f@gmail.com','2020-07-08 10:04:13','2020-07-08 10:04:13','7457f429-b78d-4fe9-956b-e2dd3e10b6e5'),(7,'af8b253b-5f19-4b61-996a-387c93ca36eb','Ari','ari','L','Tibujae','Tibujae','2001-07-18','087823557640','aryasri123@gmail.com','2020-07-17 21:12:26','2020-07-17 21:12:26','1ebd1d62-509e-46ad-9bae-4296455c93d5'),(8,'3cc1fb5b-51a6-4582-9d81-9dc4cb0c92f5','Maylin yepina','Maelin','P','Rensing','Rensing','1999-05-02','087859223870','maelin','2020-07-17 21:58:48','2020-07-17 21:58:48','c9681efe-a058-4cc0-aea6-65e07c28bed1');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bio_user`
--

LOCK TABLES `bio_user` WRITE;
/*!40000 ALTER TABLE `bio_user` DISABLE KEYS */;
INSERT INTO `bio_user` VALUES (4,'a3227a11-7f84-45bb-9d5e-13111c940a96','Muhammad Agus Rizki Masri','Agoez_masry',NULL,'Kengkang','Kengkang','2000-08-07','085942923097','agoezmasry010708@gmail.com','2020-06-18 21:05:47','2020-06-18 21:05:47','dc7455a0-92dc-4a0d-96f3-bc60e12639a2'),(5,'ebc40252-9c9f-4838-899b-1b3fa08071d3','admin','admin','L','lombok','lombok','2020-06-10','1234567890','123452345@gmail.com','2020-06-29 14:25:27','2020-06-29 14:25:27','8351f151-a7ac-4f1c-9469-61857b05705e'),(16,'3591d02f-7e95-4678-8364-22cbf8e26c54','Muhammad Shafa','superadmin','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-01 21:40:16','2020-07-01 21:40:16','67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b'),(17,'507ae00a-6042-4693-bc4e-e0fb7546807c','superadmin1','superadmin1','L','Peteluan','Peteluan','2000-08-06','087763243698','nurmuhammadshafa@gmail.com','2020-07-15 12:05:10','2020-07-15 17:19:31','34928e60-0498-4477-971e-24fd03fc6759');
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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_list_token`
--

LOCK TABLES `black_list_token` WRITE;
/*!40000 ALTER TABLE `black_list_token` DISABLE KEYS */;
INSERT INTO `black_list_token` VALUES (1,'114fddef-ba26-4b0e-912a-cc92f298bf34'),(2,'e5bf39a0-a667-4f69-b2ca-a6a80d10a424'),(3,'1f88fcaf-87de-4e6e-bbf5-30403211038f'),(4,'dec6460e-9fed-49e2-ad19-568c364ae7eb'),(5,'8ffb5666-bb49-4156-8084-eb137a848248'),(6,'3e14ea12-5249-423c-bdd9-514d4c210cd2'),(7,'fbe5cf20-adcd-40c9-a0b7-d7dd5e727167'),(8,'d8ddfff6-4b59-44ba-8f61-aebce10bd184'),(9,'9bb69475-bb46-4351-b81f-edfeff34dd44'),(10,'e8b41d3d-54a3-41d4-ab57-f54b4eb2a174'),(11,'4e46d22c-8ae4-4da7-bf97-32945e1703df'),(12,'1c2747ce-1fd3-4638-9b7d-f40c0b3b31d0'),(13,'8c250d3b-6753-410a-9cfc-2180475ead13'),(14,'2739bcd8-282b-4571-b7bc-e654e705bc52'),(15,'c01f0dcd-7afa-44e9-966f-3603f8e58b92'),(16,'3888e60c-5b94-4e59-b3ce-dec1b88b4023'),(17,'bc03c864-950f-4d1a-a669-4c92ac430b64'),(18,'dc894543-7b5d-45de-a8fe-ebb50859d018'),(19,'b3cf192f-ccba-4b51-8377-aed6503cdedc'),(20,'9fef6a64-e689-49a0-832e-6ada1b1bcc7a'),(21,'8649c183-e49d-4b14-b92a-c9f76dc449c6'),(22,'09994f96-f928-44f1-a6b5-0b28a6116d59'),(23,'867987d3-ed16-4ce8-91fe-42a2e0816e30'),(24,'c199a194-fd4c-4f41-ada6-131914fb3bd1'),(25,'aba55cff-bce8-4143-9dab-f8984f78fee9'),(26,'74df185b-623f-4271-bb45-f60fb6d665b7'),(27,'48bdb980-e040-48df-92af-fbdb6ad8abf9'),(28,'08c57c05-a635-4b95-80e3-e84258ca4785'),(29,'57407742-8add-44a0-9b57-e13cc0889cf4'),(30,'0bc9e27d-2b3d-4a47-a8c9-89830ce62269'),(31,'8f162bd6-2844-4af7-97d7-bae6063598e6'),(32,'0671a2e4-2f63-42a6-94a8-8f46566894b2'),(33,'6e9271de-27a8-4035-9022-8a32a2926a52'),(34,'c38d5153-9607-481a-9775-a3d702fbc8f2'),(35,'bbfcaf7d-db11-427c-8e95-9715f2a743da'),(36,'32d4a982-dd01-409e-8771-1ecb4ec2cba6'),(37,'a7aee25f-1ef1-418a-b9b3-0d4e6b7ab8f5'),(38,'093ae614-210c-468b-bcea-a4eecb862ab5'),(39,'ee455bfe-f1a7-4cc9-8f58-da73f55ee3c3'),(40,'0a1badf7-d5ce-41e6-9f1f-2b20feb658ee'),(41,'0e5d0c07-b2b5-4a4b-932e-a468bdf792a5'),(42,'9a2e9d8d-a481-4b79-9e46-302caabaaca8'),(43,'56ee98ca-4b6f-4302-b0da-7a382455e34f'),(44,'4d2c8d09-5f17-4039-8cd9-c688cb78a378'),(45,'61bd6d27-24de-4d9a-952f-2b16360a6f7c'),(46,'eac3fa5d-addf-4015-96f1-d2f7f70372d4'),(47,'14271ee3-ccac-413a-a48e-0ecde62b44e1'),(48,'11c97b50-0cfd-46c4-a16a-51a0eab57f17'),(49,'9060c2d9-6243-4bce-ab98-f662e51c531f'),(50,'15f0f3ae-85e8-4f1a-bd72-58cb702ff057'),(51,'0fcf1e8c-58dd-4443-9485-8206cc1912da'),(52,'63b7e9f4-d7d4-4322-aa6f-2b851cf1b746'),(53,'44e50c18-a7af-498c-876d-c345a79cae2d'),(54,'d0ce2996-89c1-4faf-a687-0378dd7881fa'),(55,'844753c5-f04f-489f-aed9-9c3c7c0448ce'),(56,'3fca91c5-5c7c-4b4f-bdec-4b8efde73ff4'),(57,'33d224a0-0c3c-4b1e-baea-5f66227455ba'),(58,'8abeb191-ce0a-4f2a-b3c6-62ec79b2d2de'),(59,'4bf0cd86-b55e-4c51-b100-0acd6cf476ef'),(60,'bf804a79-7973-435b-8635-0ffde438c669'),(61,'5f162ce8-3528-4c0f-a549-369b77edfd16'),(62,'c2179a40-d60c-4e0a-a211-7efc7959af75'),(63,'4393775e-077d-4ee8-9302-c003e8c39922'),(64,'02504c8c-96fd-4e48-bc69-e6017b53498d'),(65,'d32e00d4-0671-43c8-9552-fc115ae2a147'),(66,'47ea4e5a-6d52-4353-875c-297da738915e'),(67,'06ffb729-bd42-41c7-aaf8-68824374b7dd'),(68,'0a80469f-ec41-4378-ab5e-d771bfc6dd45'),(69,'568f7035-fe57-4b87-ba43-ff696b042be6'),(70,'72a0bd93-af60-4fe3-b50e-742e6bb23820'),(71,'7be8de71-d2d2-4036-a9ea-ca17807d2ad1'),(72,'806f35c7-3fa5-47ac-8b76-b391bbe0e1ef'),(73,'c14a4821-7b0e-4b39-b0d6-ade1e9ff8f77'),(74,'c0a93f8a-61e2-4b62-9c8a-c0d2ed6472c5'),(75,'990417a5-2526-47ba-a601-a3c173c343f0'),(76,'0edd09b3-9b92-4d6d-b01c-6ccfcf1b2a5e'),(77,'60d44efb-06ed-47ac-84bc-f4bfcda5da0c'),(78,'b4e85471-bb85-407e-bd9d-3634555f279a'),(79,'1c806885-4536-4de9-8fe9-8b74b6091895'),(80,'53bac1fd-5d41-4653-9c00-3be348c1ff1f'),(81,'625e9a2b-b1fa-4675-ad5b-bc5c25bceaa7'),(82,'7e4782f0-7a00-402a-b691-2e4c1b923738'),(83,'07470b41-ff25-4155-a1cb-c20fdfb78b58'),(84,'0eb5b7e4-4924-4f10-aa8e-2fddd9f5949a'),(85,'810c9050-3c97-471c-b9be-ec230a8bf397'),(86,'a457eed5-2bd1-41ef-9d5f-706109404786'),(87,'87006536-7a30-4fdb-bbe3-f3c02ab153a6'),(88,'ecdd15b1-ccad-4c06-a68a-b263a4284942'),(89,'6cb21fa5-a453-47dd-8c87-261b682cf9d1'),(90,'6c601daa-6dcd-4c1f-bdea-ea1fd23f2318'),(91,'a1531346-a037-4d10-80aa-f7b26ec14728'),(92,'db33a468-51ac-47ff-9d20-1df5083df856'),(93,'3dab6cf4-337b-425c-b6ee-c7d19f4fef4c'),(94,'c219a4a1-252c-43a8-8609-f15beea6a1dd'),(95,'a8d76f59-a0b0-4152-b324-442b1086bec7'),(96,'535a6f9c-a3f8-4c94-9ef1-a3fb224237ce'),(97,'0d3c5fe9-ac50-4c53-b5b4-f066c358143e'),(98,'9983ae6e-6ffe-4b7a-994b-1c99b6c196d0'),(99,'fbc8f339-3fdf-44bd-bd86-542895ac98cb'),(100,'55f114b4-5fcd-4c2e-9932-63c9b0324560'),(101,'337b3537-6b40-4948-8807-45a3a8aaa33d'),(102,'39ea8cc3-ff3a-4093-a377-e9704bee6787'),(103,'c95e7f26-87e5-4a18-8529-cb7cd58051f8'),(104,'1bb097b4-5876-44b9-809c-383de3c6dd10'),(105,'002de913-2c39-415c-b71b-54ed28ca7563'),(106,'e30851af-d3c0-4f43-a762-1a2a655b57c6'),(107,'7e33dbb5-8745-4602-8226-6497db076b68'),(108,'d959bd8f-a075-4432-aaef-dac7cd7db652'),(109,'d45db568-2d1f-4918-ab7e-102d4a104c2a'),(110,'324301da-b39c-419c-935a-f464388391bb'),(111,'67f71299-3a62-4e29-bc90-a56f8af52a40'),(112,'bf1b2e72-0e2a-43f0-95ef-55704c6d369f'),(113,'3ef807f1-4a92-415d-a7ea-56bb590bea64'),(114,'0ebdd5fa-950e-4628-a153-5521f47dbbbe'),(115,'3e920d5f-56be-4006-a46c-4fbf41307faf'),(116,'3b5ac739-9aa4-4649-a8ef-ed508428aa7b'),(117,'089d296b-e786-436a-997a-67da04e9d2f0'),(118,'dd05fc31-e50d-4a51-9956-45307e9f13f2'),(119,'0e52105d-0cc3-4e20-8eb6-c5f75a82417a'),(120,'0a7abdfa-7526-4abd-98fa-6cb6d9892b78'),(121,'52fed01c-d6f9-47bc-97a4-ddabe9eb6718'),(122,'c9ccc9b3-3c87-4fcd-b88c-3a54f7114c1f'),(123,'742dee7b-5959-479b-b134-5cd437ea3867'),(124,'462358f9-adbb-46e9-85e3-c697ac88c6f4'),(125,'2fc71c24-25d3-42f9-b1d3-9ef01902fa08'),(126,'07730a10-7a4a-43cd-bbc9-c8008ef261d3'),(127,'ab83f672-9a91-42e8-94ca-186f008b0188'),(128,'3244d8cd-e97b-4a00-b654-e23c9184e60a'),(129,'e07be22a-4182-4aaf-abf5-db11bf1739ac'),(130,'17f49cac-4539-4e97-a4a3-de84a6eeeb87'),(131,'402f1373-acd9-44fa-bf3c-d082e24ada53'),(132,'627a4d40-d87b-4dea-8f15-1098730561a3'),(133,'6b597802-455d-4108-b2b4-9afb4c622d4d'),(134,'429bda2c-ea77-438c-b4d6-f6d6c7cdefbb'),(135,'600dcccc-3e67-4805-bfc2-1d9b3692697b'),(136,'6a75f582-a041-4262-8717-36e0196a9608'),(137,'f8b04cf7-f478-412b-9f9d-055c9feb5f71'),(138,'608a3ad3-46f7-4450-ae64-9896206711ee'),(139,'760093ea-85f8-4647-9703-f5a9293e1a1b'),(140,'b07cae3c-60b8-4ba1-83d7-50262400a13a'),(141,'4184acfe-ec20-4702-8144-adb131844ec6'),(142,'d28ea909-6253-43d0-9f11-dfe58d0ab358'),(143,'fdc61c51-e89f-4e99-b9bb-f446b866fbfb'),(144,'424e3a77-3388-4d5a-aea9-e27fc76d04a7'),(145,'b7cdca55-b6e7-4ad8-ae10-c3c8235ba101'),(146,'0015c596-54d8-433c-9182-821980eefcfb'),(147,'9c28bc52-d7d9-4872-ba6c-818ad1b83303'),(148,'3da47892-4f2a-45e0-b76a-28585c6a8bd2'),(149,'7b54e422-86a9-48cb-8678-7940d533f354'),(150,'ce58df8f-e627-497d-8e70-46904729ef45'),(151,'378705ab-f1b2-450d-aa4c-a75e33bd4f7a'),(152,'48066362-b0ca-462d-808e-edea51d5cd5d'),(153,'47eebc4c-2a14-4ace-b33b-10c1afe80def'),(154,'d013efb3-7947-403b-b971-2afab499a79e'),(155,'27df8903-2dc7-4b83-b331-3a4a22507252'),(156,'7268b770-29f6-4667-9685-d608dbe1170c'),(157,'0d393b41-3c6f-4b1c-9eaa-f1b690a19ab6'),(158,'0feb2047-1625-4a64-95c9-11e17d80ace5'),(159,'658b7860-c3d1-4ca9-8469-be1d85a84bc0'),(160,'5846d204-4333-4f42-9e4a-4c7e357042ba'),(161,'7bd87880-2c41-405b-a8d8-e7479bd75395'),(162,'72994df1-e638-4275-8854-9afedfc72dfa'),(163,'04572d98-ddf6-40df-8a5a-e1914893c5e6'),(164,'e7dfb0c6-ba5b-4631-8dcb-9c31fba3c8a0'),(165,'79b89e99-0122-4e4f-bbce-c36d14dd2634'),(166,'cdcf2eeb-92a4-41ae-833e-4ea0265654a9'),(167,'cd2ba78a-3bc2-4208-957f-e3038c1524e0'),(168,'ad570823-a0d0-40d1-a4ec-532875217f6c'),(169,'50caba6e-f966-4364-b6b0-855e0b29b548'),(170,'5d8293fa-f436-4941-ae5a-e2f63e2b50a3'),(171,'57d4a32b-b422-45f6-8dcc-3bff645163ea'),(172,'c4b29f3d-5e59-422d-b48e-240e71e6c430'),(173,'531956c5-e443-4de0-ac5f-e81143c28a6b'),(174,'678d7e1b-fd80-40cd-a690-76812c68e0e0'),(175,'c7c87c0f-9b64-43fc-af36-0996506ea5e6'),(176,'9f998f0a-56f7-408b-9527-9eac7ad9f1e5'),(177,'6dfba24b-1619-4c07-bdda-d551acd5646c'),(178,'ae76ed92-cbee-40f9-a1b5-c50da4b5604b'),(179,'f6f1277c-62d6-4467-81fa-e424e02f5dd9'),(180,'24169f03-bed2-4e28-a693-612e415bba0b'),(181,'1d47eeb7-8110-4c89-b2f8-e7817c3f103a'),(182,'2a6ebd50-c1ff-461a-bf08-0b1e4c443e71'),(183,'52f46d5b-a72f-47ba-981a-035a93026444'),(184,'5cfb7dec-9c62-4e94-8ecb-a50d29d09811'),(185,'944376cc-23ca-4c9a-ac20-b429c8b8a90a'),(186,'656a7a71-5708-43f3-9a66-088f6ba86ae4'),(187,'9fa038e3-fa45-410b-8571-299d60feab71'),(188,'9f59f035-4400-4c38-9434-ac73800baf48'),(189,'f29c33ff-a3fc-4574-8350-45b93592bd7a'),(190,'04a9e055-67c4-4406-895a-94843d6e3544'),(191,'32ee655a-6f74-4eb4-a1c4-05cda4ad4c00'),(192,'f1d31f94-d65e-42cc-911c-dc22d0e843bf'),(193,'edd00728-810f-4a61-95d9-78043c3a25e8'),(194,'533b7b8a-9350-4621-aa82-193a4654e353'),(195,'78021cc4-d584-4259-b001-bb91704386e1'),(196,'32f7dbf2-dccd-483d-95b1-e4f860f948fd'),(197,'aaa88e3e-5449-4502-a79f-48077496a2a4'),(198,'7c34e1d6-1c62-4d8c-96b7-5784efab0e8e');
/*!40000 ALTER TABLE `black_list_token` ENABLE KEYS */;
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
  `mapel` varchar(50) DEFAULT NULL,
  `guru` varchar(100) DEFAULT NULL,
  `materi` varchar(255) DEFAULT NULL,
  `submateri` varchar(255) DEFAULT NULL,
  `isi` mediumtext,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
INSERT INTO `materi` VALUES (1,'607f4780-2251-4e89-9bcd-3f7c0796cd72','Pemrograman Dasar','Muhammad Shafa','Java Script','Vue','Belajar Vue.js','2020-06-30 21:22:26','2020-06-30 21:22:26'),(2,'110c23f4-42c0-405b-86af-c1a5e8147065','Pemrograman Dasar','Muhamm Shafa','Python','Flask','Belajar Flask','2020-06-30 22:04:16','2020-06-30 22:04:16');
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mc_soal`
--

LOCK TABLES `mc_soal` WRITE;
/*!40000 ALTER TABLE `mc_soal` DISABLE KEYS */;
INSERT INTO `mc_soal` VALUES (66,'cbd91f19-fc02-46c0-a520-22f5ec3910f1','42f96047-5414-46d2-8099-6f42e0fe5d78','2'),(67,'6709dfcd-7340-4ac4-88e9-d311cf4010c3','42f96047-5414-46d2-8099-6f42e0fe5d78','3'),(68,'dd050c64-63c9-46b9-b488-0aeff5ea2582','42f96047-5414-46d2-8099-6f42e0fe5d78','4'),(69,'6bc9277e-2fce-4b62-a680-41e82e95f568','42f96047-5414-46d2-8099-6f42e0fe5d78','5'),(70,'0deb30b5-8d50-488c-9026-5aad20758e94','42f96047-5414-46d2-8099-6f42e0fe5d78','6'),(71,'f4511475-4246-471d-8447-c4395afb5e6b','b2c08f06-21c7-42e5-b191-29ff68562078','3'),(72,'6809dbd2-a69d-4ab4-809e-cc7c049f3bc8','b2c08f06-21c7-42e5-b191-29ff68562078','4'),(73,'455a91d5-8aa9-46cc-9097-798ceaed31e5','b2c08f06-21c7-42e5-b191-29ff68562078','5'),(74,'380fa916-ad97-44af-984e-50dd00e8c54e','b2c08f06-21c7-42e5-b191-29ff68562078','6'),(75,'e98e08a5-fc47-451a-9335-b4749eae7408','b2c08f06-21c7-42e5-b191-29ff68562078','7'),(76,'8853ac26-c8a5-431e-a744-720db8e6d915','30cbfccc-5cd7-4773-95e1-605f590749f4','4'),(77,'0a6d9b99-dd5c-4042-a065-980ce00b7c8c','30cbfccc-5cd7-4773-95e1-605f590749f4','5'),(78,'5781fd4e-d24e-4238-86d1-3136ca2868f9','30cbfccc-5cd7-4773-95e1-605f590749f4','6'),(79,'eedc50c5-1363-4627-876a-d2b30f0b5936','30cbfccc-5cd7-4773-95e1-605f590749f4','7'),(80,'17ec26f2-20ac-4772-b9ed-1e3eb9c45a97','30cbfccc-5cd7-4773-95e1-605f590749f4','8'),(81,'5b2cca09-dee3-4a6c-9b27-dce2a1bb77aa','c69fd16f-24a9-48eb-a77f-c21904725d80','6'),(82,'86baa676-37e5-4273-a1a4-59333e02498b','c69fd16f-24a9-48eb-a77f-c21904725d80','7'),(83,'9bf7e8d9-a43c-4283-8fd3-09484ceb2564','c69fd16f-24a9-48eb-a77f-c21904725d80','8'),(84,'c038a37c-cc64-4ac9-ba81-45f8df2be5a3','c69fd16f-24a9-48eb-a77f-c21904725d80','9'),(85,'c2b4f960-cbf6-42c7-90a1-ad514505969e','c69fd16f-24a9-48eb-a77f-c21904725d80','10'),(86,'d1bcb216-84c4-4f8c-ab1d-af3711d46f4a','d097875c-654f-47a6-bbcb-0fd59036bfc5','12'),(87,'ce9b4199-58b2-434d-9031-3971cf92a4fb','d097875c-654f-47a6-bbcb-0fd59036bfc5','13'),(88,'67b92b8a-39c4-4f1c-92f7-daeb7b765658','d097875c-654f-47a6-bbcb-0fd59036bfc5','14'),(89,'29bdd323-8fdb-45ba-b823-58403747c4dc','d097875c-654f-47a6-bbcb-0fd59036bfc5','15'),(90,'aa07beba-7376-4186-991e-a833eec12966','d097875c-654f-47a6-bbcb-0fd59036bfc5','16'),(91,'bb787cc7-0749-417a-9913-3b8946722858','9587ab79-aa0e-49c2-bad6-e150994c7240','1'),(92,'dc8846ec-b562-4c67-aec1-b207dddc5c3d','9587ab79-aa0e-49c2-bad6-e150994c7240','2'),(93,'d059e3d8-2bc2-4bcb-9c87-1aeb3cab8c7c','9587ab79-aa0e-49c2-bad6-e150994c7240','3'),(94,'7cb424f4-4128-45df-ac02-01835bb34b03','9587ab79-aa0e-49c2-bad6-e150994c7240','4'),(95,'f89673c3-d162-4be2-917f-bca1f76376d3','9587ab79-aa0e-49c2-bad6-e150994c7240','5'),(96,'fc44d604-1275-43bb-b592-f9cf3ae081fd','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','2'),(97,'fe13630b-44e1-4c70-8e62-64a147b736ec','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','3'),(98,'deff1cdd-f2be-439e-87d4-fbee8a5fc9ce','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','4'),(99,'5c271cc1-b5b6-494c-bc79-b22aa3d8b38e','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','5'),(100,'03308053-c1f3-449c-a454-529b2cdcf79d','35ed31ff-0e85-4bb9-91fb-6c589ac29b12','6'),(101,'deb277e7-a78b-445f-981a-254a111df3d4','b82d5853-0003-4e80-aca4-a9608557a611','3'),(102,'4d271545-3133-498d-ac37-9641b784a3ae','b82d5853-0003-4e80-aca4-a9608557a611','4'),(103,'a474f82f-f709-4e90-bc9c-42d407f2e910','b82d5853-0003-4e80-aca4-a9608557a611','5'),(104,'c6ce8cfe-d082-4c45-af7d-6161a6c82f67','b82d5853-0003-4e80-aca4-a9608557a611','6'),(105,'bd0298e0-438f-46a9-ae71-516c86ba1c77','b82d5853-0003-4e80-aca4-a9608557a611','7'),(106,'c1ba897a-319c-4429-bd77-4a040f4c5a57','d30db082-3f3a-4302-be50-db4bcbb7a1da','5'),(107,'a59f3860-6db5-49c3-92df-3642bdb7c6ec','d30db082-3f3a-4302-be50-db4bcbb7a1da','6'),(108,'8ba5c291-bb74-4357-b1bc-a1e32cf305ef','d30db082-3f3a-4302-be50-db4bcbb7a1da','7'),(109,'a31a04cd-baca-4f34-80f8-8c71a64f30af','d30db082-3f3a-4302-be50-db4bcbb7a1da','8'),(110,'82545cf6-4f34-4213-8226-2c20e0922458','d30db082-3f3a-4302-be50-db4bcbb7a1da','9'),(111,'edc1f1c2-9e65-49ce-9883-b7338e641638','7adb674e-fc5b-47fa-adf8-0574c0ac805f','4'),(112,'72dc3c5a-5e7e-48e6-9b13-f73535bc6cdf','7adb674e-fc5b-47fa-adf8-0574c0ac805f','5'),(113,'6d30ed9a-f08b-41ac-b22b-2489819d33f2','7adb674e-fc5b-47fa-adf8-0574c0ac805f','6'),(114,'fb7026e2-f96b-41cd-80af-4ba3701e0698','7adb674e-fc5b-47fa-adf8-0574c0ac805f','7'),(115,'68f3ade0-78d8-43a7-94a4-4553efeb153c','7adb674e-fc5b-47fa-adf8-0574c0ac805f','8'),(116,'b0c969e1-1cf6-44c6-93fb-54076712be80','e19a6812-77a3-4f93-b29c-8279c9e99463','3'),(117,'c3d9decc-438d-43c4-8a0e-46c8136a7572','e19a6812-77a3-4f93-b29c-8279c9e99463','4'),(118,'49fa9c32-fab9-4636-8604-d47d35b4afa8','e19a6812-77a3-4f93-b29c-8279c9e99463','5'),(119,'29b657a6-c480-4a7c-ae8c-778530136894','e19a6812-77a3-4f93-b29c-8279c9e99463','6'),(120,'25ca7b20-95a8-4538-b21b-9d90a07f28f7','e19a6812-77a3-4f93-b29c-8279c9e99463','7'),(121,'84f4d594-b13e-431e-84a0-b175f5107e54','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Kucing'),(122,'7e001cbf-4239-422c-8329-5eab32b0fa5e','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Anjing'),(123,'1ca5cc8a-1152-4340-b8da-44f1e69e1f1b','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Sapi'),(124,'8ab651a6-f5c5-4b60-ac93-c15760e17bce','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Ikan'),(125,'9086e32b-7363-41de-bb0d-a868e122a9d8','7bf6bb06-ed02-41b6-ab0f-aab94985577b','Kerbau'),(126,'5f695eb6-f4b4-4384-9086-21b27bd6f5af','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Anjing'),(127,'e15da573-0a79-4e81-aa64-4ba57330c2ba','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Sapi'),(128,'2afcbefe-7a60-4e6f-bfef-19d4da9cac16','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Kucing'),(129,'fb3ed571-d180-4aca-b0ae-891eeff35690','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Burung'),(130,'ee67ac39-9277-414b-afc5-979e6a1c3c2f','1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','Kelinci'),(131,'b28ed4b2-4612-42eb-bee3-cce690c80ea9','e49614b3-5c85-4c92-97ef-448b9fac0c81','6'),(132,'0349e9c3-ddda-45fb-a6b5-d01f55571dde','e49614b3-5c85-4c92-97ef-448b9fac0c81','7'),(133,'5c124376-b43b-4133-81eb-f384b94bc71f','e49614b3-5c85-4c92-97ef-448b9fac0c81','8'),(134,'874287b8-717e-49a1-81dd-46a28a4475c2','e49614b3-5c85-4c92-97ef-448b9fac0c81','9'),(135,'9220ebcb-0ae5-46fc-aa03-d56afd04f020','e49614b3-5c85-4c92-97ef-448b9fac0c81','10'),(136,'99bb30f8-a78d-4ecd-a941-21a687dcfd51','94aa417b-5418-42e8-a39d-686490fe3b23','12'),(137,'7899b1a3-2be7-460a-bf33-1b4063959f23','94aa417b-5418-42e8-a39d-686490fe3b23','13'),(138,'3766f73d-b3d1-4ce1-a634-fa06ecc13a18','94aa417b-5418-42e8-a39d-686490fe3b23','14'),(139,'794bae7d-69ec-4756-9843-179444ce9d71','94aa417b-5418-42e8-a39d-686490fe3b23','15'),(140,'d4c5b94a-9892-49d7-8304-a26623765d75','94aa417b-5418-42e8-a39d-686490fe3b23','16'),(141,'9b5d5210-a381-4e57-86b1-413f74cf9338','0903267b-e8a0-42f8-86f2-1ce455ff9409','9'),(142,'e018014c-2c8b-4457-a132-68ad601ae566','0903267b-e8a0-42f8-86f2-1ce455ff9409','10'),(143,'d76adb80-9f2b-4360-a046-4cdc0ccaded5','0903267b-e8a0-42f8-86f2-1ce455ff9409','11'),(144,'9910733c-c9ab-47f0-a689-71ba90f30301','0903267b-e8a0-42f8-86f2-1ce455ff9409','12'),(145,'733a1655-8887-4d67-a704-8ee43abe471a','0903267b-e8a0-42f8-86f2-1ce455ff9409','13'),(146,'7ce3f27c-f000-44ee-b035-67db04b6d8d4','c3c373d5-f615-484c-879c-8245b921e553','15'),(147,'98638076-e865-466e-9ed5-03feb5d45cce','c3c373d5-f615-484c-879c-8245b921e553','16'),(148,'5bab6010-891f-4ef2-9d6b-766a853adb41','c3c373d5-f615-484c-879c-8245b921e553','17'),(149,'84d13580-8d37-4f91-ae87-43a951c9a12f','c3c373d5-f615-484c-879c-8245b921e553','18'),(150,'b7f04f97-774a-4725-9e19-32c71b26281c','c3c373d5-f615-484c-879c-8245b921e553','19'),(151,'bc139737-b5c7-4e7d-a24a-e9482c57f1f5','dfa3b83d-6acd-48e2-9970-054e243ef0fc','25'),(152,'1cac5423-002e-4b18-a69e-f7c3880ac5cc','dfa3b83d-6acd-48e2-9970-054e243ef0fc','26'),(153,'6c71ee64-f23d-4aff-b841-7d4a601a4b33','dfa3b83d-6acd-48e2-9970-054e243ef0fc','27'),(154,'369b19a9-068a-482b-b662-253a25b4e4d5','dfa3b83d-6acd-48e2-9970-054e243ef0fc','28'),(155,'d7764d1a-55fa-4988-822d-8ad620028d61','dfa3b83d-6acd-48e2-9970-054e243ef0fc','29'),(156,'858499b5-5582-40a6-9fab-f645731f1230','b6b4b12c-9211-4e20-8666-c4cc09a28b23','66'),(157,'20855b27-da18-4d2b-8c1d-a8cc10ea4f08','b6b4b12c-9211-4e20-8666-c4cc09a28b23','77'),(158,'870c14bc-1de0-4ec7-96d0-3e8f923d92d4','b6b4b12c-9211-4e20-8666-c4cc09a28b23','88'),(159,'40d98407-5a68-4861-ac22-6fa40105beda','b6b4b12c-9211-4e20-8666-c4cc09a28b23','99'),(160,'0eff115f-6472-4dd4-af00-36134aef03b1','b6b4b12c-9211-4e20-8666-c4cc09a28b23','55'),(161,'06dfd999-cb08-4230-a8af-29d94454956d','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','69'),(162,'fd56a30b-2856-459a-8332-6a1a4294c3a1','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','96'),(163,'e8890fe4-6ad3-4b94-ac57-01e126faef8c','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','78'),(164,'d0f8c6ad-a832-4ed4-9c5d-25cf74e541be','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','87'),(165,'1f49b048-4d02-43a9-bed9-16971b674fc8','711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','67'),(166,'37aa321d-8665-422e-b08a-75b6ac5eb365','9cdd6794-a200-428f-a7a1-13f404d45f1e','Table'),(167,'17d4343a-ccda-4421-839e-474576c0555b','9cdd6794-a200-428f-a7a1-13f404d45f1e','Door'),(168,'d517127a-1f0d-46cb-86d1-a258fc599443','9cdd6794-a200-428f-a7a1-13f404d45f1e','Window'),(169,'e1373bab-84ee-489b-a268-70fade3b7144','9cdd6794-a200-428f-a7a1-13f404d45f1e','Blackboard'),(170,'cf788f62-c7dc-4fb4-8e3a-9f67e4be12ec','9cdd6794-a200-428f-a7a1-13f404d45f1e','Marker'),(171,'a0993c1b-f283-4610-be46-142144d7913a','27df5704-2085-4701-97fa-c6b5ffdca960','Door'),(172,'26840c0e-cf68-4be2-846c-9a51f4b7729c','27df5704-2085-4701-97fa-c6b5ffdca960','Window'),(173,'6e1ee059-bdcd-4c0f-8d07-980a1c45277c','27df5704-2085-4701-97fa-c6b5ffdca960','Table'),(174,'964ab2fb-a18a-4c5c-b666-5400905ee6db','27df5704-2085-4701-97fa-c6b5ffdca960','Blackboard'),(175,'5aea37f4-4a86-4f25-a66a-ef195c7e0113','27df5704-2085-4701-97fa-c6b5ffdca960','Marker'),(176,'8f5b2a4c-2908-47ba-b73f-88fbe1e73fd5','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Kitchen'),(177,'aa3c78d4-9b28-40a8-8b60-bf1101b01ced','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Bath room'),(178,'1cbe1dad-a6df-4277-93f1-5a7959ef631a','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Living roo'),(179,'4b9bf610-64d9-4300-b5dc-363dc4cfe352','7fca1c18-f8c7-4a8e-9493-513c32de38f9','House'),(180,'3a4ca863-aa99-4b2b-a545-17a9c7a6c835','7fca1c18-f8c7-4a8e-9493-513c32de38f9','Hospital'),(181,'77251545-02df-4da7-939c-0aeb588e4fd5','1757db15-3a85-43cf-84aa-112046ce4104','Book'),(182,'83617791-7d7d-4ed4-ad1f-05018e294eab','1757db15-3a85-43cf-84aa-112046ce4104','Pencil'),(183,'aea34369-f651-446a-8688-3bf73315ee2b','1757db15-3a85-43cf-84aa-112046ce4104','Pen'),(184,'0e90af75-143b-4ca1-9bcb-204f211036c4','1757db15-3a85-43cf-84aa-112046ce4104','Paper'),(185,'b1f672c8-4d0e-4032-8d27-51f0c0d828cd','1757db15-3a85-43cf-84aa-112046ce4104','Ruler'),(186,'ff71dffb-8edb-4ccd-9723-fd182ed824a1','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Spoon'),(187,'833a5ff8-4fb9-4e0a-9f35-0489525dd1fd','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Knife'),(188,'ce6ea4ab-a260-4c46-87c0-d9404357826e','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Flate'),(189,'49776afe-e73c-4b6c-b4d5-0a1e63d1af1c','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Cup'),(190,'b4f51f1c-aa35-4a9a-956f-d96f4c0bb77e','e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','Frok'),(191,'c7158e56-7644-44cf-879b-83b8e9a05ed5','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Sun'),(192,'8077015b-4967-4072-8784-bf962cd97cc3','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Moon'),(193,'bd9302f0-60cf-43a4-bc3b-3330b5cac949','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Star'),(194,'e0e859ab-8e31-443a-b4ca-22029437ab31','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Meteor'),(195,'4ead7222-2b78-4aad-b382-4ecec9d4920c','dd3f6e07-6fb5-409c-8ae7-6f037dac3858','Planet'),(196,'6a46c9d6-79d3-4001-b313-29b55d7ece9f','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Father'),(197,'f55affc5-b2e2-4ba5-9935-3762bd1d963d','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Mother'),(198,'65b11744-b98e-42b5-a96d-b1d778dbbab6','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Sister'),(199,'a084942c-4d07-4208-82ab-629ff2e20933','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Brother'),(200,'bb3ae58a-75af-45ab-b88d-8f1d9dba2885','b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','Baby');
/*!40000 ALTER TABLE `mc_soal` ENABLE KEYS */;
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
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siswa`
--

LOCK TABLES `siswa` WRITE;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` VALUES (1,'62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','siswa','$pbkdf2-sha256$29000$McaY07o3xjhHSKk1JmRszQ$LvEvg20TJYJinDELIEJRCdkaAQK8i/0ZubhqyM0J.No','I','2020-06-24 17:34:48','2020-06-24 17:34:48'),(2,'ed6eeb9c-f17f-4f63-aa2b-ccbc53a76d1a','ayam','$pbkdf2-sha256$29000$qlXKuXdujRECYOw9B4DQ2g$kcWSVL5MiXtUQNgjlFJYhDVQM1xd7bma5ToJCWLTl6I',NULL,'2020-06-25 06:43:56','2020-06-25 06:43:56'),(3,'809ee359-6011-419b-a692-c767d84b94e0','c','$pbkdf2-sha256$29000$kPL.P.eck1LKmbMWgrCW8g$XGyneTPkRkY25BeQLgQaO2wgsmrr9ZVDUIt6R0RSsRE','I','2020-07-07 14:01:14','2020-07-07 14:01:14'),(4,'7457f429-b78d-4fe9-956b-e2dd3e10b6e5','f','$pbkdf2-sha256$29000$IySk1FqrVWpNCYEwhnBOaQ$Na815DjHgmHy8PXtqHmDjfhlKC2lRyhobWKqfpa37uY','II','2020-07-08 10:04:13','2020-07-08 10:04:13'),(5,'1ebd1d62-509e-46ad-9bae-4296455c93d5','ari','$pbkdf2-sha256$29000$yZlTipES4jxnjBHCWGuttQ$qOYLWh10bhom59b3tILawG5DAsPZIS8QFPoUv.8f438','I','2020-07-17 21:12:26','2020-07-17 21:12:26'),(6,'c9681efe-a058-4cc0-aea6-65e07c28bed1','Maelin','$pbkdf2-sha256$29000$wvj/nxPiXGvt/T8npDQmRA$iQGO2QlAH8/i5mKu4Wx6AXvZGwRzBmYkVXW5czDs6v8','I','2020-07-17 21:58:48','2020-07-17 21:58:48');
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
  `kelas` varchar(5) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` varchar(100) DEFAULT NULL,
  `skor` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skor`
--

LOCK TABLES `skor` WRITE;
/*!40000 ALTER TABLE `skor` DISABLE KEYS */;
INSERT INTO `skor` VALUES (1,'0c936bf2-1f4a-4b12-be68-a0619969c49f','7457f429-b78d-4fe9-956b-e2dd3e10b6e5','II','Matematika','Penjumlahan',3,'2020-07-09 09:11:52'),(2,'053d5a2a-373d-4032-bd2f-6f89924d875b','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Matematika','Penjumlahan',10,'2020-07-17 06:47:55'),(3,'34e7f7de-bece-4716-a833-531ce8007200','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Matematika','Penjumlahan',0,'2020-07-17 06:49:31'),(4,'422e92a2-524c-46c8-a37b-f15b567e28a6','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Matematika','Penjumlahan',10,'2020-07-17 06:51:14'),(5,'0523cc7b-d4b0-48a3-8cdc-067514a52d64','809ee359-6011-419b-a692-c767d84b94e0','I','Matematika','Penjumlahan',10,'2020-07-17 06:53:38'),(6,'90d53e33-76d9-4eb7-a5f2-3fce06d8ecdc','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Bahasa Inggris','Indonesia ke Inggris',7,'2020-07-17 09:44:23'),(7,'fa49385a-866b-4bba-a427-4bf9956715ae','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Matematika','Pengurangan',3,'2020-07-17 17:58:13'),(8,'300fe8ac-41c1-4cf9-b6e8-bb5869b7b38e','62a42f4d-feb8-4993-88c7-5ed8a5c5c3c0','I','Bahasa Inggris','Inggris ke Indonesia',2,'2020-07-17 18:02:34'),(9,'f9735668-324c-484d-a744-04130f64513a','7457f429-b78d-4fe9-956b-e2dd3e10b6e5','II','Matematika','Perkalian',2,'2020-07-17 18:04:42'),(10,'18b49986-9fbd-4d8d-a6fc-38da96ed7903','7457f429-b78d-4fe9-956b-e2dd3e10b6e5','II','Matematika','Pembagian',3,'2020-07-17 18:05:50'),(11,'6db4293c-62a8-4f7d-9eb8-5c94ba03ace8','1ebd1d62-509e-46ad-9bae-4296455c93d5','I','Matematika','Penjumlahan',8,'2020-07-17 21:40:12'),(12,'8a4e505d-3300-41b0-819a-428c425be7b0','1ebd1d62-509e-46ad-9bae-4296455c93d5','I','Matematika','Pengurangan',3,'2020-07-17 21:41:05'),(13,'9f23490f-7689-452f-beb5-823f940041f1','1ebd1d62-509e-46ad-9bae-4296455c93d5','I','Bahasa Inggris','Inggris ke Indonesia',2,'2020-07-17 21:41:43'),(14,'fa210ff7-5966-4642-be8f-d18200cdcdea','1ebd1d62-509e-46ad-9bae-4296455c93d5','I','Bahasa Inggris','Indonesia ke Inggris',7,'2020-07-17 21:51:52'),(15,'486b50f1-197c-4034-bba3-4ac6d54de6a4','c9681efe-a058-4cc0-aea6-65e07c28bed1','I','Matematika','Penjumlahan',10,'2020-07-17 22:05:02');
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
  `kelas` varchar(5) DEFAULT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `materi` varchar(100) DEFAULT NULL,
  `soal` text,
  `kunci_jawaban` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soal`
--

LOCK TABLES `soal` WRITE;
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
INSERT INTO `soal` VALUES (1,'42f96047-5414-46d2-8099-6f42e0fe5d78','I','Matematika','Penjumlahan','1 + 1 = ...','2','2020-07-08 19:39:39','2020-07-08 19:39:39'),(2,'b2c08f06-21c7-42e5-b191-29ff68562078','I','Matematika','Penjumlahan','1 + 2 = ...','3','2020-07-08 19:39:39','2020-07-08 19:39:39'),(3,'30cbfccc-5cd7-4773-95e1-605f590749f4','I','Matematika','Penjumlahan','2 + 2 = ...','4','2020-07-08 19:39:39','2020-07-08 19:39:39'),(4,'c69fd16f-24a9-48eb-a77f-c21904725d80','II','Matematika','Perkalian','2 x 3 = ...','6','2020-07-08 19:54:28','2020-07-08 19:54:28'),(5,'d097875c-654f-47a6-bbcb-0fd59036bfc5','II','Matematika','Perkalian','3 x 4 = ...','12','2020-07-08 19:54:28','2020-07-08 19:54:28'),(6,'9587ab79-aa0e-49c2-bad6-e150994c7240','I','Matematika','Pengurangan','2 - 1 = ...','1','2020-07-09 16:41:22','2020-07-09 16:41:22'),(7,'35ed31ff-0e85-4bb9-91fb-6c589ac29b12','I','Matematika','Pengurangan','3 - 1 = ...','2','2020-07-09 16:41:22','2020-07-09 16:41:22'),(8,'b82d5853-0003-4e80-aca4-a9608557a611','I','Matematika','Pengurangan','5 - 2 = ...','3','2020-07-09 16:41:22','2020-07-09 16:41:22'),(9,'d30db082-3f3a-4302-be50-db4bcbb7a1da','II','Matematika','Pembagian','10 : 2 = ...','5','2020-07-09 16:46:56','2020-07-10 17:38:27'),(10,'7adb674e-fc5b-47fa-adf8-0574c0ac805f','II','Matematika','Pembagian','12 : 3 = ...','4','2020-07-09 16:46:56','2020-07-10 17:38:27'),(11,'e19a6812-77a3-4f93-b29c-8279c9e99463','II','Matematika','Pembagian','12 : 4 = ...','3','2020-07-09 16:46:56','2020-07-10 17:38:27'),(12,'7bf6bb06-ed02-41b6-ab0f-aab94985577b','I','Bahasa Inggris','Inggris ke Indonesia','Cat','Kucing','2020-07-09 17:32:30','2020-07-09 17:32:30'),(13,'1b058cbf-81fd-4b5d-b849-0c7fa9aa24c3','I','Bahasa Inggris','Inggris ke Indonesia','Dog','Anjing','2020-07-09 17:32:30','2020-07-09 17:32:30'),(14,'e49614b3-5c85-4c92-97ef-448b9fac0c81','I','Matematika','Penjumlahan','1 + 2 + 3 = ...','6','2020-07-14 15:01:12','2020-07-14 15:01:12'),(15,'94aa417b-5418-42e8-a39d-686490fe3b23','I','Matematika','Penjumlahan','2 + 4 + 6 = ...','12','2020-07-14 15:01:12','2020-07-14 15:01:12'),(16,'0903267b-e8a0-42f8-86f2-1ce455ff9409','I','Matematika','Penjumlahan','1 + 3 + 5 = ...','9','2020-07-14 15:01:12','2020-07-14 15:01:12'),(17,'c3c373d5-f615-484c-879c-8245b921e553','I','Matematika','Penjumlahan','7 + 8 = ...','15','2020-07-14 15:01:12','2020-07-14 15:01:12'),(18,'dfa3b83d-6acd-48e2-9970-054e243ef0fc','I','Matematika','Penjumlahan','12 + 13 = ...','25','2020-07-14 15:01:12','2020-07-14 15:01:12'),(19,'b6b4b12c-9211-4e20-8666-c4cc09a28b23','I','Matematika','Penjumlahan','11 + 22 + 33 = ...','66','2020-07-14 15:01:12','2020-07-14 15:01:12'),(20,'711f7ba4-7e7b-4a2d-bab6-9c8dcc0b7ed7','I','Matematika','Penjumlahan','12 + 23 + 34 = ...','69','2020-07-14 15:01:12','2020-07-14 15:01:12'),(21,'9cdd6794-a200-428f-a7a1-13f404d45f1e','I','Bahasa Inggris','Indonesia ke Inggris','Meja?','Table','2020-07-17 09:33:11','2020-07-17 09:33:11'),(22,'27df5704-2085-4701-97fa-c6b5ffdca960','I','Bahasa Inggris','Indonesia ke Inggris','Pintu?','Door','2020-07-17 09:33:11','2020-07-17 09:33:11'),(23,'7fca1c18-f8c7-4a8e-9493-513c32de38f9','I','Bahasa Inggris','Indonesia ke Inggris','Dapur?','Kitchen','2020-07-17 09:33:11','2020-07-17 09:33:11'),(24,'1757db15-3a85-43cf-84aa-112046ce4104','I','Bahasa Inggris','Indonesia ke Inggris','Buku','Book','2020-07-17 09:33:11','2020-07-17 09:33:11'),(25,'e1b7b8c1-e5f2-4141-8b9b-95f92874bf3f','I','Bahasa Inggris','Indonesia ke Inggris','Sendok','Spoon','2020-07-17 09:33:11','2020-07-17 09:33:11'),(26,'dd3f6e07-6fb5-409c-8ae7-6f037dac3858','I','Bahasa Inggris','Indonesia ke Inggris','Matahari','Sun','2020-07-17 09:33:11','2020-07-17 09:33:11'),(27,'b12e4390-56fd-4c7d-88f6-9dec5cf5fa81','I','Bahasa Inggris','Indonesia ke Inggris','Ayah','Father','2020-07-17 09:34:58','2020-07-17 09:34:58');
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
  `bidang_studi` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'dc7455a0-92dc-4a0d-96f3-bc60e12639a2','Agoez_masry','$pbkdf2-sha256$29000$5PxfC6F07p2z1lpr7R0D4A$8l00FYPl.gUQG1/Ur5iINLRcgJSTYtiCLXKwx6RfGRg',1,NULL,'2020-06-18 21:05:47','2020-06-18 21:05:47'),(4,'8351f151-a7ac-4f1c-9469-61857b05705e','admin','$pbkdf2-sha256$29000$AmBsrbUW4lzL.f./N4awdg$s7Vp7BwuzF3Ixs0/PIZq6hi9r3YvJcdppoynmV5Zi40',0,'Matematika','2020-06-29 14:25:27','2020-06-29 14:25:27'),(9,'67a89c89-d7a6-4c95-b5f1-6ef75dacdc4b','superadmin','$pbkdf2-sha256$29000$OqfU2ts7B4BwLoXw3tv7/w$tElOgtx2/SNO.anRuacHH5qk.7tDQpG35SBzu/tL2Mg',1,NULL,'2020-07-01 21:40:16','2020-07-01 21:40:16'),(10,'34928e60-0498-4477-971e-24fd03fc6759','superadmin1','$pbkdf2-sha256$29000$GsOY03qv1VpLqbU2JiSkVA$bgjQmjsNLyr.XbKhqNUuLn31sZCt1oDQjZZZBNOszC8',1,NULL,'2020-07-15 12:05:10','2020-07-15 12:05:10');
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

-- Dump completed on 2020-07-18 11:58:40
