-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: canasser_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `appraisal_item_result_doc`
--

DROP TABLE IF EXISTS `appraisal_item_result_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appraisal_item_result_doc` (
  `result_doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_result_id` int(11) DEFAULT NULL,
  `doc_path` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dttm` datetime DEFAULT NULL,
  `vehicle_doc_id` varchar(45) DEFAULT NULL,
  `chauffeur_doc_id` varchar(45) DEFAULT NULL,
  `cv_id` varchar(45) DEFAULT NULL,
  `fuel_type` varchar(45) DEFAULT NULL,
  `fuel_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`result_doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appraisal_item_result_doc`
--

LOCK TABLES `appraisal_item_result_doc` WRITE;
/*!40000 ALTER TABLE `appraisal_item_result_doc` DISABLE KEYS */;
INSERT INTO `appraisal_item_result_doc` VALUES (26,10,'stock_files/10/13-10-10-1-20.PNG','admin@rtaf.mi.th','2018-04-23 08:30:41',NULL,NULL,NULL,NULL,NULL),(27,11,'stock_files/11/13-10-10-3-20.PNG','admin@rtaf.mi.th','2018-04-23 08:31:16',NULL,NULL,NULL,NULL,NULL),(28,13,'stock_files/13/13-10-40-1-80.PNG','admin@rtaf.mi.th','2018-04-23 08:31:25',NULL,NULL,NULL,NULL,NULL),(29,12,'stock_files/12/13-10-10-14-20.PNG','admin@rtaf.mi.th','2018-04-23 08:31:32',NULL,NULL,NULL,NULL,NULL),(30,14,'stock_files/14/13-10-40-1-40.PNG','admin@rtaf.mi.th','2018-04-23 08:32:11',NULL,NULL,NULL,NULL,NULL),(31,15,'stock_files/15/13-10-40-1-70.PNG','admin@rtaf.mi.th','2018-04-23 08:32:19',NULL,NULL,NULL,NULL,NULL),(32,16,'stock_files/16/13-10-40-1-80.PNG','admin@rtaf.mi.th','2018-04-23 08:32:26',NULL,NULL,NULL,NULL,NULL),(33,85,'stock_files/85/warrix-sport-wa-3318-ee-7541-44472402-23a4b00f4d03cced0cf71ea13839724d-catalog.jpg_350x350q90.jpg','admin@rtaf.mi.th','2018-04-23 09:03:16',NULL,NULL,NULL,NULL,NULL),(34,88,'stock_files/88/13-00-10-1-20.png','admin@rtaf.mi.th','2018-04-23 09:25:52',NULL,NULL,NULL,NULL,NULL),(35,89,'stock_files/89/13-00-10-1-70.PNG','admin@rtaf.mi.th','2018-04-23 09:26:20',NULL,NULL,NULL,NULL,NULL),(38,90,'stock_files/90/13-10-10-1-70.PNG','admin@rtaf.mi.th','2018-04-23 09:26:52',NULL,NULL,NULL,NULL,NULL),(39,91,'stock_files/91/13-10-10-5-30.PNG','admin@rtaf.mi.th','2018-04-23 09:27:05',NULL,NULL,NULL,NULL,NULL),(40,92,'stock_files/92/13-10-10-7-40.PNG','admin@rtaf.mi.th','2018-04-23 09:27:16',NULL,NULL,NULL,NULL,NULL),(41,93,'stock_files/93/13-10-10-70-20.PNG','admin@rtaf.mi.th','2018-04-23 09:27:42',NULL,NULL,NULL,NULL,NULL),(42,94,'stock_files/94/13-10-40-1-20.PNG','admin@rtaf.mi.th','2018-04-23 09:27:54',NULL,NULL,NULL,NULL,NULL),(43,95,'stock_files/95/13-10-40-1-70.PNG','admin@rtaf.mi.th','2018-04-23 09:28:03',NULL,NULL,NULL,NULL,NULL),(44,96,'stock_files/96/13-20-30-1-140.PNG','admin@rtaf.mi.th','2018-04-23 09:28:11',NULL,NULL,NULL,NULL,NULL),(45,97,'stock_files/97/13-10-40-1-40.PNG','admin@rtaf.mi.th','2018-04-23 09:28:21',NULL,NULL,NULL,NULL,NULL),(46,0,'stock_files/[object Object]/80bb4578-215b-4f1d-9381-13ada6923b0c.jpg','admin@gmail.com','2019-04-18 15:28:14',NULL,NULL,NULL,NULL,NULL),(47,0,'stock_files/undefined/80bb4578-215b-4f1d-9381-13ada6923b0c.jpg','admin@gmail.com','2019-04-19 09:03:54',NULL,NULL,NULL,NULL,NULL),(48,0,'stock_files/undefined/80b954b9-2f98-4502-95c3-581b4e794f85.jpg','admin@gmail.com','2019-04-19 09:16:57',NULL,NULL,NULL,NULL,NULL),(49,24,'stock_files/24/80bb4578-215b-4f1d-9381-13ada6923b0c.jpg','admin@gmail.com','2019-04-19 09:22:35',NULL,NULL,NULL,NULL,NULL),(51,26,'stock_files/26/53472734_785066098533261_2782950658175664128_n.jpg','admin@gmail.com','2019-04-19 10:12:58',NULL,NULL,NULL,NULL,NULL),(52,5,'stock_files/5/53819601_123258625450076_4585621987916775424_n.jpg','admin@gmail.com','2019-04-22 09:47:38',NULL,NULL,NULL,NULL,NULL),(58,27,'chauffeur_files/27/53472734_785066098533261_2782950658175664128_n.jpg','admin@gmail.com','2019-04-22 10:20:51',NULL,NULL,NULL,NULL,NULL),(59,28,'chauffeur_files/28/53472734_785066098533261_2782950658175664128_n.jpg','admin@gmail.com','2019-04-22 10:21:21',NULL,NULL,NULL,NULL,NULL),(60,NULL,'chauffeur_files/29/53472734_785066098533261_2782950658175664128_n.jpg','admin@gmail.com','2019-04-22 10:30:45',NULL,'29',NULL,NULL,NULL),(61,NULL,'attach_files/10/53403589_417806355695074_3918862722195783680_n.jpg','admin@gmail.com','2019-04-23 15:25:17',NULL,NULL,'10',NULL,NULL),(76,NULL,'chauffeur_files/2/user8-128x128.jpg','admin@gmail.com','2019-06-30 21:27:44',NULL,'2',NULL,NULL,NULL),(77,NULL,'chauffeur_files/18/user2-160x160.jpg','admin@gmail.com','2019-06-30 21:28:04',NULL,'18',NULL,NULL,NULL),(84,NULL,'attach_files/11/201326041607160.jpg','admin@gmail.com','2019-07-02 15:15:00',NULL,NULL,'11',NULL,NULL),(85,NULL,'attach_files/12/201326041607160.jpg','admin@gmail.com','2019-07-03 19:36:43',NULL,NULL,'12',NULL,NULL),(86,NULL,'attach_files/28/201326041607160.jpg','admin@gmail.com','2019-07-03 19:49:55',NULL,NULL,'28',NULL,NULL),(87,NULL,'attach_files/11/pea-big.png','admin@gmail.com','2019-07-20 10:08:59',NULL,NULL,'11',NULL,NULL),(88,NULL,'attach_files/11/1097676.jpg','admin@gmail.com','2019-07-20 10:29:50',NULL,NULL,'11',NULL,NULL),(89,NULL,'attach_files/11/jquery-training-img.png','admin@gmail.com','2019-07-20 14:17:27',NULL,NULL,'11',NULL,NULL),(90,NULL,'attach_files/11/1097676.jpg1563607548','admin@gmail.com','2019-07-20 14:25:48',NULL,NULL,'11',NULL,NULL),(91,NULL,'attach_files/11/15636077251097676.jpg','admin@gmail.com','2019-07-20 14:28:45',NULL,NULL,'11',NULL,NULL),(92,NULL,'attach_files/11/1563607767logo.png','admin@gmail.com','2019-07-20 14:29:27',NULL,NULL,'11',NULL,NULL),(93,NULL,'attach_files/77/15636128321097676.jpg','admin@gmail.com','2019-07-20 15:53:52',NULL,NULL,'77',NULL,NULL),(94,NULL,'attach_files/78/15636868641097676.jpg','admin@gmail.com','2019-07-21 12:27:44',NULL,NULL,'78',NULL,NULL),(95,NULL,'attach_files/79/15636870081097676.jpg','admin@gmail.com','2019-07-21 12:30:08',NULL,NULL,'79',NULL,NULL),(96,NULL,'attach_files/80/15636871321097676.jpg','admin@gmail.com','2019-07-21 12:32:12',NULL,NULL,'80',NULL,NULL),(97,NULL,'attach_files/81/1563766383jquery-training-img.png','admin@gmail.com','2019-07-22 10:33:03',NULL,NULL,'81',NULL,NULL),(98,NULL,'attach_files/82/1563850324jquery-training-img.png','admin@gmail.com','2019-07-23 09:52:04',NULL,NULL,'82',NULL,NULL),(99,NULL,'attach_files/undefined/15638517081097676.jpg','admin@gmail.com','2019-07-23 10:15:08',NULL,NULL,'undefined',NULL,NULL),(100,NULL,'attach_files/undefined/1563852075jquery-training-img.png','admin@gmail.com','2019-07-23 10:21:15',NULL,NULL,'undefined',NULL,NULL),(102,NULL,'attach_files/86/1563854286jquery-training-img.png','admin@gmail.com','2019-07-23 10:58:06',NULL,NULL,'86',NULL,NULL),(103,NULL,'attach_files/87/1563854628jquery-training-img.png','admin@gmail.com','2019-07-23 11:03:48',NULL,NULL,'87',NULL,NULL),(104,NULL,'attach_files/88/1563854652jquery-training-img.png','admin@gmail.com','2019-07-23 11:04:12',NULL,NULL,'88',NULL,NULL),(115,NULL,'attach_files/97/1563955266jquery-training-img.png','admin@gmail.com','2019-07-24 15:01:06',NULL,NULL,'97','DIESEL',55.00),(116,NULL,'attach_files/103/1565232578stock_import.xlsx','admin@gmail.com','2019-08-08 09:49:38',NULL,NULL,'103','DIESEL',66.00),(117,NULL,'attach_files/105/156689246865443e30012cf145ca4954cb9f3d3667--thailand-portal.jpg','admin@gmail.com','2019-08-27 14:54:28',NULL,NULL,'105','DIESEL',55.00),(118,NULL,'chauffeur_files/2/shoafear1.jpg','kosit_arom@rtaf.mi.th','2020-02-21 10:04:42',NULL,'2',NULL,NULL,NULL),(119,NULL,'chauffeur_files/2/shoafear2.jpg','kosit_arom@rtaf.mi.th','2020-02-21 10:05:27',NULL,'2',NULL,NULL,NULL),(120,NULL,'chauffeur_files/19/shoafear1.jpg','kosit_arom@rtaf.mi.th','2020-02-21 10:06:39',NULL,'19',NULL,NULL,NULL),(121,NULL,'chauffeur_files/20/shoafear2.jpg','kosit_arom@rtaf.mi.th','2020-02-21 10:07:12',NULL,'20',NULL,NULL,NULL),(129,NULL,'attach_files/108/1582526775A4.PNG','kosit_arom@rtaf.mi.th','2020-02-24 13:46:15',NULL,NULL,'108','DIESEL',50.00),(130,NULL,'attach_files/109/1582699825Picture1.png','kosit_arom@rtaf.mi.th','2020-02-26 13:50:25',NULL,NULL,'109','DIESEL',333.00),(131,NULL,'attach_files/110/1582769393Picture1.png','kosit_arom@rtaf.mi.th','2020-02-27 09:09:53',NULL,NULL,'110','DIESEL',66.00),(132,NULL,'attach_files/111-28/1582788702Picture4.png','kosit_arom@rtaf.mi.th','2020-02-27 14:31:42',NULL,NULL,'111-28','DIESEL',55.00),(134,NULL,'vehicle_files/11/speed-boat.jpeg','admin@rtaf.mi.th','2022-07-28 17:34:55','11',NULL,NULL,NULL,NULL),(135,NULL,'vehicle_files/27/speed-boat.jpeg','admin@rtaf.mi.th','2022-07-28 17:35:14','27',NULL,NULL,NULL,NULL),(136,NULL,'vehicle_files/28/speed-boat.jpeg','admin@rtaf.mi.th','2022-07-28 17:35:23','28',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `appraisal_item_result_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `around_vehicle`
--

DROP TABLE IF EXISTS `around_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `around_vehicle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `around_name` varchar(100) DEFAULT NULL,
  `around_time` time DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `around_vehicle`
--

LOCK TABLES `around_vehicle` WRITE;
/*!40000 ALTER TABLE `around_vehicle` DISABLE KEYS */;
INSERT INTO `around_vehicle` VALUES (1,'รอบเช้า','09:00:00','2022-08-05 13:59:35','2022-09-21 16:04:44'),(3,'รอบเที่ยง','12:30:00','2022-08-18 10:35:07','2022-09-21 16:06:56'),(4,'รอบบ่าย','01:30:00','2022-08-18 10:35:17','2022-09-21 16:19:08'),(5,'รอบทดสอบ','05:15:00','2022-09-21 16:59:41','2022-09-21 16:59:41');
/*!40000 ALTER TABLE `around_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `purpose` varchar(250) DEFAULT NULL,
  `at_the_place` varchar(250) DEFAULT NULL,
  `as_the_name` varchar(100) DEFAULT NULL,
  `number_of_people` int(11) DEFAULT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `from1` varchar(255) DEFAULT NULL,
  `to1` varchar(255) DEFAULT NULL,
  `from2` varchar(255) DEFAULT NULL,
  `to2` varchar(255) DEFAULT NULL,
  `from3` varchar(255) DEFAULT NULL,
  `to3` varchar(255) DEFAULT NULL,
  `from4` varchar(255) DEFAULT NULL,
  `to4` varchar(255) DEFAULT NULL,
  `baggage_weight` decimal(10,2) DEFAULT NULL,
  `pick_up_at` varchar(255) DEFAULT NULL,
  `near_place` varchar(200) DEFAULT NULL,
  `booking_status` varchar(45) DEFAULT 'N',
  `assign_status` varchar(45) DEFAULT 'N',
  `approved_status` varchar(45) DEFAULT 'P',
  `approved_status_reason` varchar(255) DEFAULT NULL,
  `assign_status_reason` varchar(255) DEFAULT NULL,
  `booking_status_reason` varchar(255) DEFAULT NULL,
  `self_drive_name` varchar(255) DEFAULT NULL,
  `self_drive_license` varchar(255) DEFAULT NULL,
  `self_drive_license_flag` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (30,37,'ไปอบรมการใช้งานโปรแกรมบูรณาการกองบิน5',NULL,NULL,5,'2019-08-27','2019-08-31','14:39:05','14:39:05','2019-08-27','2019-08-27','ดอนเมือง','กองบิน5','','','','','','',200.00,'หน้าตึก ทสส.','ตู้ ATM','Y','Y','Y','','',NULL,NULL,NULL,NULL),(31,37,'ไปราชการอบรมการใช้งานโปรแกรม บูรณาการกองบิน56',NULL,NULL,11,'2019-08-28','2019-08-28','09:02:00','09:02:34','2019-08-28','2019-08-28','ดอนเมือง','หาดใหญ่','','','','','','',0.00,'ตึก ทสส.ทอ.','ตู้ ATM','N','N','N','','เลยเวลาแล้ว','เลยเวลาแล้ว',NULL,NULL,NULL),(32,37,'ทดสอบสอบครั้งที่2',NULL,NULL,11,'2019-08-28','2019-08-28','09:02:34','09:02:34','2019-08-28','2019-08-28','11','11','','','','','','',0.00,'11','','Y','N','P',NULL,'',NULL,NULL,NULL,NULL),(33,37,'ขอใช้รถไปรับเจ้าหน้าที่ บน.5 ',NULL,NULL,4,'2019-08-28','2019-08-29','15:52:10','15:52:10','2019-08-28','2019-08-28','สนามบินดอนเมือง','ตึก ทสส.ทอ. ','','','','','','',400.00,'ท่าอากาศยานดอนเมือง','ประตู2','Y','Y','Y','','',NULL,NULL,NULL,NULL),(34,480,'ทดสอบการจองรถ',NULL,NULL,11,'2019-12-20','2019-12-20','10:16:03','10:16:03','2019-12-20','2019-12-20','ดอนเมือง','ขอนแก่น','','','','','','',0.00,'หน้าตึก ทสส.ทอ.','','Y','N','P',NULL,'',NULL,NULL,NULL,NULL),(35,480,'ทอดสอบการจอง2',NULL,NULL,20,'2019-12-20','2019-12-20','10:42:47','10:42:47','2019-12-20','2019-12-20','ดอนเมือง','อุดรธานี','','','','','','',0.00,'หน้า ทสส.','','Y','N','P',NULL,'',NULL,NULL,NULL,NULL),(36,480,'ทดสอบการจองรถ3',NULL,NULL,22,'2019-12-20','2019-12-20','10:42:47','10:42:47','2019-12-20','2019-12-20','ดอนเมอง','กาฬสินธ์','','','','','','',0.00,'22','','N','N','P',NULL,'',NULL,NULL,NULL,NULL),(37,480,'ไปราชการกองบิน 5',NULL,NULL,15,'2020-02-24','2020-02-25','13:39:39','13:39:39','2020-02-24','2020-02-24','ดอนเมือง','กองบิน5','','','','','','',0.00,'ตึก ทสส.ทอ.','','Y','Y','Y','','',NULL,NULL,NULL,NULL),(38,480,'xxx',NULL,NULL,33,'2020-02-06','2020-02-29','11:30:00','11:30:00','2020-02-25','2020-02-25','xx','xxx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'ตึก ทสส.ทอ.','ตู้ ATM','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(39,480,'XXXXXXXXX',NULL,NULL,22,'2020-02-19','2020-02-28','01:00:00','01:00:00','2020-02-25','2020-02-25','11','22',NULL,NULL,NULL,NULL,NULL,NULL,22.00,'ตึก ทสส.ทอ.','ตู้ ATM','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(40,480,'xxxxx',NULL,NULL,0,'2020-02-11','2020-02-14','01:30:00','01:30:00','2020-02-25','2020-02-25','xxx','xxx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xxxx','xx','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(41,480,'xxxxx',NULL,NULL,0,'2020-02-11','2020-02-14','01:30:00','01:30:00','2020-02-25','2020-02-25','xxx','xxx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xxxx','xx','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(42,480,'xxx',NULL,NULL,0,'2020-03-02','2020-02-26','01:30:00','01:30:00','2020-02-25','2020-02-25','dd','dd',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xxx','','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(43,480,'sdfd',NULL,NULL,0,'2020-02-04','2020-02-26','01:30:00','01:30:00','2020-02-25','2020-02-25','dd','dd',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xx','','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(44,480,'xxx',NULL,NULL,11,'2020-02-18','2020-02-27','01:45:00','01:45:00','2020-02-25','2020-02-25','111','11',NULL,NULL,NULL,NULL,NULL,NULL,11.00,'11','11','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(45,480,'xxx',NULL,NULL,0,'2020-02-10','2020-02-26','01:45:00','01:45:00','2020-02-25','2020-02-25','xx','xx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xx','','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(46,480,'ปป',NULL,NULL,0,'2020-02-25','2020-02-25','02:00:00','02:00:00','2020-02-25','2020-02-25','xx','xx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xx','xx','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(47,480,'sss',NULL,NULL,0,'2020-02-25','2020-02-25','02:00:00','02:00:00','2020-02-25','2020-02-25','ss','ss',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'ss','','N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(48,480,'xxx',NULL,NULL,44,'2020-02-25','2020-02-25','02:45:00','02:45:00','2020-02-25','2020-02-25','rrr','xx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'44','กก','Y','Y','P','','แก้จำนวนลิตรอีกรอบ',NULL,NULL,NULL,NULL),(49,480,'555',NULL,NULL,55,'2020-02-25','2020-02-25','03:00:00','03:00:00','2020-02-25','2020-02-25','555','55',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'55','','Y','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> undefined',NULL,NULL,NULL,NULL),(50,480,'666',NULL,NULL,66,'2020-02-25','2020-02-25','03:15:00','03:15:00','2020-02-25','2020-02-25','666','66',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'66','','Y','N','P',NULL,'',NULL,NULL,NULL,NULL),(51,480,'xxx',NULL,NULL,22,'2020-02-28','2020-02-28','03:00:00','03:00:00','2020-02-28','2020-02-28','22','22',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'22','22','Y','N','P',NULL,'',NULL,'','',NULL),(52,480,'xxx',NULL,NULL,0,'2020-02-28','2020-02-28','03:00:00','03:00:00','2020-02-28','2020-02-28','xxx','xxx',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'xxxx','','Y','N','P',NULL,'',NULL,'abc','5555',NULL),(53,480,'xxx',NULL,NULL,4,'2020-02-28','2020-02-28','03:15:00','03:15:00','2020-02-28','2020-02-28','xxx','4',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'4','','Y','N','P',NULL,'',NULL,'xxx','xxxx','on'),(54,480,'555',NULL,NULL,5555,'2020-02-28','2020-02-28','15:07:26','15:07:26','2020-02-28','2020-02-28','555','5555',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'5555','','Y','N','P',NULL,'',NULL,'','','on'),(55,480,'21',NULL,NULL,21,'2020-02-28','2020-02-28','03:30:00','03:30:00','2020-02-28','2020-02-28','21','21',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'21','','Y','N','P',NULL,'',NULL,'21','21','0'),(56,480,'tt',NULL,NULL,0,'2020-02-28','2020-02-28','03:30:00','03:30:00','2020-02-28','2020-02-28','tt','tt',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'tt','','Y','N','P',NULL,'',NULL,'tt','tt','1'),(57,480,'asdfas',NULL,NULL,0,'2020-02-28','2020-02-28','03:30:00','03:30:00','2020-02-28','2020-02-28','asdfasd','asdf',NULL,NULL,NULL,NULL,NULL,NULL,0.00,'asdfas','','Y','N','P',NULL,'',NULL,'','','0'),(58,37,'ทดสอบ',NULL,NULL,3,'2022-07-31','2022-07-31','14:08:11','14:08:11','2022-07-31','2022-07-31',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,300.00,NULL,NULL,'N','N','P',NULL,'<b>ข้อความจากผู้จองรถ</b> test',NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_vehicle`
--

DROP TABLE IF EXISTS `booking_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_vehicle` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(200) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `stay` varchar(255) DEFAULT NULL,
  `go_back_booking_flag` varchar(1) DEFAULT NULL,
  `booking_price_total` decimal(10,2) DEFAULT NULL,
  `note` text,
  `date_go` date DEFAULT NULL,
  `date_back` date DEFAULT NULL,
  `boat_go` int(11) DEFAULT NULL,
  `boat_back` int(11) DEFAULT NULL,
  `around_boat_go` int(11) DEFAULT NULL,
  `around_boat_back` int(11) DEFAULT NULL,
  `seat_go` varchar(45) DEFAULT NULL,
  `seat_back` varchar(45) DEFAULT NULL,
  `type_passenger` varchar(45) DEFAULT NULL,
  `ticket_vehicle_number` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_vehicle`
--

LOCK TABLES `booking_vehicle` WRITE;
/*!40000 ALTER TABLE `booking_vehicle` DISABLE KEYS */;
INSERT INTO `booking_vehicle` VALUES (2,'ชาญชัย อาจณรงค์','0928766544','ชอยนานา สุขุมวิท','0',200.00,'ทดสอบ','2022-09-14','2022-09-14',11,11,4,4,'6','0','babies_price','A002','2022-09-15','2022-09-15'),(3,'แสนสิริ นามดี','0887774454','โรงแรมอโศกมนตรี2','1',800.00,'ทดสอบ','2022-09-15','2022-09-15',11,11,1,3,'1','1','general_price','A003','2022-09-15','2022-09-15'),(7,'abc','010535546','ทดสอบ','0',400.00,'ทดสอบ','2022-09-06','2022-09-06',11,11,1,1,'2','','general_price','5555','2022-09-21','2022-09-21'),(8,'Nang','0623196388','เกาะหมากรีสอร์ต','1',0.00,'','2022-09-22','2022-09-23',11,11,3,1,'2','6','free_price','0001','2022-09-21','2022-09-21'),(9,'สุชิดา','0898159157','เกาะหมากรีสอร์ท','1',450.00,'','2022-10-17','2022-10-18',11,11,3,4,'5','5','general_price','','2022-09-21','2022-09-21');
/*!40000 ALTER TABLE `booking_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chauffeur`
--

DROP TABLE IF EXISTS `chauffeur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chauffeur` (
  `chauffeur_id` int(11) NOT NULL AUTO_INCREMENT,
  `chauffeur_name` varchar(100) DEFAULT NULL,
  `chauffeur_tel` varchar(20) DEFAULT NULL,
  `picture_path` varchar(250) DEFAULT NULL,
  `driver_license` varchar(45) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`chauffeur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chauffeur`
--

LOCK TABLES `chauffeur` WRITE;
/*!40000 ALTER TABLE `chauffeur` DISABLE KEYS */;
INSERT INTO `chauffeur` VALUES (19,'พ.อ.ต. สันติ วิจิตร','0809926565','C:\\fakepath\\shoafear1.jpg','12556677',1,'2020-02-21','2020-02-21'),(20,'จ.ต. วีรยุทธ ล้วนศรีมงคล','0809926565','C:\\fakepath\\shoafear2.jpg','3453534534',1,'2020-02-21','2020-02-21');
/*!40000 ALTER TABLE `chauffeur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chauffeur_and_vehicle`
--

DROP TABLE IF EXISTS `chauffeur_and_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chauffeur_and_vehicle` (
  `cv_id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `chauffeur_id` int(11) DEFAULT NULL,
  `vehicle_operator` varchar(255) DEFAULT NULL,
  `operator_position` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `fuel_type` varchar(45) DEFAULT NULL,
  `fuel_lite` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chauffeur_and_vehicle`
--

LOCK TABLES `chauffeur_and_vehicle` WRITE;
/*!40000 ALTER TABLE `chauffeur_and_vehicle` DISABLE KEYS */;
INSERT INTO `chauffeur_and_vehicle` VALUES (26,10,8,2,'','','2019-05-02','2019-05-02',NULL,NULL),(28,12,8,2,'','','2019-05-13','2019-05-13',NULL,NULL),(29,1,9,17,'','','2019-05-15','2019-05-15',NULL,NULL),(34,1,8,2,'','','2019-05-15','2019-05-15',NULL,NULL),(35,18,12,17,'','','2019-06-17','2019-06-17',NULL,NULL),(36,18,13,18,'','','2019-06-17','2019-06-17',NULL,NULL),(60,20,11,2,'','','2019-07-03','2019-07-03','DIESEL','22'),(62,19,11,2,'','','2019-07-06','2019-07-06','DIESEL','55'),(64,21,11,2,'','','2019-07-07','2019-07-07','DIESEL','44'),(65,23,11,2,'','','2019-07-20','2019-07-20','DIESEL','44'),(66,24,11,2,'','','2019-07-20','2019-07-20','DIESEL','44'),(97,22,28,2,'','','2019-07-23','2019-07-23',NULL,NULL),(100,26,11,2,'','','2019-07-26','2019-07-26',NULL,NULL),(101,28,11,2,'','','2019-07-26','2019-07-26',NULL,NULL),(102,27,11,2,'','','2019-07-26','2019-07-26',NULL,NULL),(103,24,12,17,'','','2019-08-08','2019-08-08',NULL,NULL),(104,13,11,2,'','','2019-08-27','2019-08-27',NULL,NULL),(105,30,11,2,'','','2019-08-27','2019-08-27',NULL,NULL),(106,31,12,17,'','','2019-08-28','2019-08-28',NULL,NULL),(107,33,11,2,'','','2019-08-28','2019-08-28',NULL,NULL),(108,37,27,19,'','','2020-02-24','2020-02-24',NULL,NULL),(109,48,11,19,'','','2020-02-26','2020-02-26',NULL,NULL),(110,50,11,19,'','','2020-02-27','2020-02-27',NULL,NULL),(111,50,28,20,'','','2020-02-27','2020-02-27',NULL,NULL);
/*!40000 ALTER TABLE `chauffeur_and_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `military_rank`
--

DROP TABLE IF EXISTS `military_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `military_rank` (
  `id` int(11) NOT NULL,
  `military_rank` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `military_rank`
--

LOCK TABLES `military_rank` WRITE;
/*!40000 ALTER TABLE `military_rank` DISABLE KEYS */;
INSERT INTO `military_rank` VALUES (1,'นาย'),(2,'นาง'),(3,'นางสาว');
/*!40000 ALTER TABLE `military_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picking_order`
--

DROP TABLE IF EXISTS `picking_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picking_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `reason` text NOT NULL,
  `loan_date` datetime NOT NULL,
  `returned_date` datetime NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picking_order`
--

LOCK TABLES `picking_order` WRITE;
/*!40000 ALTER TABLE `picking_order` DISABLE KEYS */;
INSERT INTO `picking_order` VALUES (117,37,88,4,4,'','2018-04-23 10:04:27','2018-04-23 00:00:00','2018-04-23 10:04:27','2018-04-23 10:04:27'),(118,37,89,1,4,'','2018-04-23 10:05:05','2018-04-30 00:00:00','2018-04-23 10:05:05','2018-04-23 10:05:05'),(119,37,90,1,4,'','2018-04-23 10:05:18','2018-04-30 00:00:00','2018-04-23 10:05:18','2018-04-23 10:05:18'),(120,37,91,1,4,'','2018-04-23 10:05:34','2018-04-30 00:00:00','2018-04-23 10:05:34','2018-04-23 10:05:34'),(121,37,94,1,4,'','2018-11-10 12:13:38','2018-11-12 00:00:00','2018-11-10 12:13:38','2018-11-10 12:13:38'),(122,37,123,0,4,'','2018-12-09 11:43:14','2018-12-10 00:00:00','2018-12-09 11:43:14','2018-12-09 11:43:14'),(123,37,89,1,4,'','2019-02-11 21:46:01','2019-02-12 00:00:00','2019-02-11 21:46:01','2019-02-11 21:46:01'),(124,37,88,5,4,'','2019-02-11 21:47:49','2019-02-12 00:00:00','2019-02-11 21:47:49','2019-02-11 21:47:49');
/*!40000 ALTER TABLE `picking_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_code` varchar(15) DEFAULT NULL,
  `position_name` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_dttm` datetime NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `updated_dttm` datetime NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'80000996','กรรมการผู้จัดการ',1,'admin','2017-10-10 16:35:14','admin','2017-10-10 16:35:14'),(2,'80000999','รองกรรมการผู้จัดการ',1,'admin','2017-10-10 16:35:14','admin','2017-10-10 16:35:14'),(3,'80001002','ผู้ช่วยกรรมการผู้จัดการ',1,'admin','2017-10-10 16:35:14','admin','2017-10-10 16:35:14'),(4,'80001006','ผู้อำนวยการฝ่าย/สำนัก',1,'admin','2017-10-10 16:35:14','admin','2017-10-10 16:35:14'),(5,'TH001259','ผู้จัดการแผนกคลังภายใน',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(6,'TH002441','ผู้จัดการแผนกคลังพัสดุ',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(7,'TH001276','ผู้จัดการแผนกคลังต่างประเทศ-กาญ',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(8,'TH002443','หัวหน้าหน่วยอาวุโส 1 คลังต่างประเทศ 1',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(9,'TH002444','หัวหน้าหน่วยอาวุโส 1 คลังภายใน P2',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(10,'TH001246','หัวหน้าหน่วยพัสดุสิ้นเปลือง',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48'),(11,'TH002442','หัวหน้าหน่วยอาวุโส 2 คลังต่างประเทศ 2',1,'admin','2017-11-08 14:04:48','admin','2017-11-08 14:04:48');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `TITLE` varchar(45) DEFAULT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `NATIONALITY` varchar(45) DEFAULT NULL,
  `DATE_OF_BIRTH` date DEFAULT NULL,
  `RELIGION` varchar(45) DEFAULT NULL,
  `ADDRESS` varchar(500) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `CREATED_BY` varchar(45) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(45) DEFAULT NULL,
  `ACTIVE_FLAG` varchar(1) DEFAULT NULL,
  `POSITION` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '1',
  `STATUS` varchar(45) DEFAULT NULL,
  `sub_district` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `other` varchar(200) DEFAULT NULL,
  `demarcate` varchar(200) NOT NULL,
  `demarcate_id` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (37,'admin@gmail.com','$2y$10$0OC5OjWOvuXCt1tF3DXV0u.IXkG01BhY713XliMnklZz8hm/UedNO','นาย','โฆษิต(Admin)','โกสิน',NULL,'',NULL,'',NULL,'2017-12-08 09:39:14','admin','2022-09-20 11:30:24','','1','0800000000',0,NULL,'-','-',NULL,'',0),(61,'user1@gmail.com','$2y$10$BU9H8xN73n3.95tsl5vre.p.PK7kf6Sk//qiADDodVjL39uljuC5u','นาย','เอ55','นามสกุลเอ',NULL,NULL,NULL,NULL,NULL,'2022-09-20 11:29:02','admin@rtaf.mi.th','2023-02-18 12:46:41',NULL,'1',NULL,1,NULL,'คุ้มเก่า','เขาวง','','',67),(62,'user2@gmail.com','$2y$10$0HGBLa0rqxe6cU/vbUH/5.8sBqJLw7NyKQ3XKANakocMvLfDkiEee','นาง','บี','นามสกุลบี',NULL,NULL,NULL,NULL,NULL,'2022-11-16 12:47:59','admin@gmail.com','2023-02-17 09:53:39',NULL,'1',NULL,2,NULL,'คุ้มเก่า','เขาวง','','',67),(63,'user4@gmail.com','$2y$10$Pdn1P.j3PazHo8BGpKbhU.tiz2ut/Xlf8QoMT3jL3XJg77j0GDZ1K','นาย','ดี','นามสกุลดี',NULL,NULL,NULL,NULL,NULL,'2022-11-16 13:36:55','admin@gmail.com','2023-02-17 09:53:46',NULL,'1',NULL,14,NULL,'คุ้มเก่า','เขาวง','','',67),(64,'user3@gmai.com','$2y$10$nFutDHf8An2Y7JFV5P7eMuTnMXaV5rLWIZD0oV/KSjdMu.2ZDFHIW','นาย','ชี','นามสกุลชี',NULL,NULL,NULL,NULL,NULL,'2022-11-17 10:48:59','admin@gmail.com','2023-02-17 09:53:35',NULL,'1',NULL,3,NULL,'คุ้มเก่า','เขาวง','','',67),(65,'user5@gmail.com','$2y$10$CPfA8CFcA5ryWhY.KuZLPueqUpTJsAiMA33QNPUh/ZO.r7fAl1ZPe','นาย','นายอี','นามสกุลอี',NULL,NULL,NULL,NULL,NULL,'2022-11-17 10:50:58','admin@gmail.com','2023-02-18 13:17:15',NULL,'1',NULL,15,NULL,'คุ้มเก่า','เขาวง','ครู','',66),(66,'abc51@gmail.com','$2y$10$T11hrTnt8xwkhLCRnqd5yepJ6ihGbtgbAm9fE2tLmWINM.4LV/WUS','นาย','test เขต4','test',NULL,NULL,NULL,NULL,NULL,'2023-02-16 22:09:53','admin@gmail.com','2023-02-18 13:11:34',NULL,'1',NULL,99,NULL,'test','test',NULL,'เขต4',0),(67,'abc52@gmail.com','$2y$10$sdLl6hOtv6Z.T2WdtO9KVuNBzoyAxcYkWWsSY/Qv.2hMof6CZ/rmq','นาย','test เขต2','test เขต2',NULL,NULL,NULL,NULL,NULL,'2023-02-16 22:11:21','admin@gmail.com','2023-02-17 14:38:52',NULL,'1',NULL,99,NULL,'test','test',NULL,'เขต2',0),(68,'test6@gmail.com','$2y$10$yUvV7MfN52FcyFd2er2bQOFDIMmDc.xqmAW/3ZWmt0Gp12EVNj0a6','นาย','test6','test6',NULL,NULL,NULL,NULL,NULL,'2023-02-17 10:25:44','admin@gmail.com','2023-02-17 14:23:53',NULL,'1',NULL,1,NULL,'test6','test6','','',67),(69,'test7@gmail.com','$2y$10$PXrXByvh1z1LhSKkcXXkxuFP2rsHXvefEdfO.USrmSfgbUkqe3eu.','นาย','test7','test7',NULL,NULL,NULL,NULL,NULL,'2023-02-17 10:27:07','admin@gmail.com','2023-02-17 10:27:07',NULL,'1',NULL,1,NULL,'test7','test7','','',66),(70,'abc53@gmail.com','$2y$10$tUeFIPHlbFO.VQExM.iG4esdsT2sWfr98xyMsi2Y7WHtWaZGte/IK','นาย','abc53','abc53',NULL,NULL,NULL,NULL,NULL,'2023-02-18 12:48:42','admin@gmail.com','2023-02-18 13:18:40',NULL,'1',NULL,99,NULL,'abc53','abc53',NULL,'เขต3',0);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `province_code` int(11) NOT NULL,
  `province_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (70,'Ratchaburi'),(71,'Kanchanaburi'),(72,'Suphan Buri'),(73,'Nakhon Pathom'),(74,'Samut Sakhon'),(75,'Samut Songkhram'),(76,'Phetchaburi'),(77,'Prachuap Khiri Khan'),(80,'Nakhon Si Thammarat'),(81,'Krabi'),(82,'Phangnga'),(83,'Phuket'),(84,'Surat Thani'),(85,'Ranong'),(86,'Chumphon'),(90,'Songkhla'),(91,'Satun'),(92,'Trang'),(93,'Phatthalung'),(94,'Pattani'),(95,'Yala'),(96,'Narathiwat'),(10,'Bangkok'),(11,'Samut Prakan'),(12,'Nonthaburi'),(13,'Pathum Thani'),(14,'Phra Nakhon Si Ayutthaya'),(15,'Ang Thong'),(16,'Lop Buri'),(17,'Sing Buri'),(18,'Chai Nat'),(19,'Saraburi'),(20,'Chon Buri'),(21,'Rayong'),(22,'Chanthaburi'),(23,'Trat'),(24,'Chachoengsao'),(25,'Prachin Buri'),(26,'Nakhon Nayok'),(27,'Sa Kaeo'),(30,'Nakhon Ratchasima'),(31,'Buri Ram'),(32,'Surin'),(33,'Si Sa Ket'),(34,'Ubon Ratchathani'),(35,'Yasothon'),(36,'Chaiyaphum'),(37,'Amnat Charoen'),(38,'Bueng Kan'),(39,'Nong Bua Lam Phu'),(40,'Khon Kaen'),(41,'Udon Thani'),(42,'Loei'),(43,'Nong Khai'),(44,'Maha Sarakham'),(45,'Roi Et'),(46,'Kalasin'),(47,'Sakon Nakhon'),(48,'Nakhon Phanom'),(49,'Mukdahan'),(50,'Chiang Mai'),(51,'Lamphun'),(52,'Lampang'),(53,'Uttaradit'),(54,'Phrae'),(55,'Nan'),(56,'Phayao'),(57,'Chiang Rai'),(58,'Mae Hong Son'),(60,'Nakhon Sawan'),(61,'Uthai Thani'),(62,'Kamphaeng Phet'),(63,'Tak'),(64,'Sukhothai'),(65,'Phitsanulok'),(66,'Phichit'),(67,'Phetchabun'),(70,'Ratchaburi'),(71,'Kanchanaburi'),(72,'Suphan Buri'),(73,'Nakhon Pathom'),(74,'Samut Sakhon'),(75,'Samut Songkhram'),(76,'Phetchaburi'),(77,'Prachuap Khiri Khan'),(80,'Nakhon Si Thammarat'),(81,'Krabi'),(82,'Phangnga'),(83,'Phuket'),(84,'Surat Thani'),(85,'Ranong'),(86,'Chumphon'),(90,'Songkhla'),(91,'Satun'),(92,'Trang'),(93,'Phatthalung'),(94,'Pattani'),(95,'Yala'),(96,'Narathiwat');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reason`
--

DROP TABLE IF EXISTS `reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reason` (
  `reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_result_id` bigint(20) NOT NULL,
  `reason_name` varchar(255) NOT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_dttm` datetime DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `updated_dttm` datetime DEFAULT NULL,
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reason`
--

LOCK TABLES `reason` WRITE;
/*!40000 ALTER TABLE `reason` DISABLE KEYS */;
INSERT INTO `reason` VALUES (1,30,'ทดสอบ','hradmin','2017-10-25 11:43:25','hradmin','2017-10-25 11:43:25'),(3,19,'ทดสอบสินเชื่อปล่อยใหม่','hradmin','2017-10-25 11:44:19','hradmin','2017-10-25 11:44:19'),(4,14,'test','admin','2017-11-03 16:53:58','admin','2017-11-03 16:53:58');
/*!40000 ALTER TABLE `reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat`
--

DROP TABLE IF EXISTS `seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` varchar(45) DEFAULT NULL,
  `seat_go_number` int(11) DEFAULT NULL,
  `seat_back_number` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat`
--

LOCK TABLES `seat` WRITE;
/*!40000 ALTER TABLE `seat` DISABLE KEYS */;
INSERT INTO `seat` VALUES (2,'2',2,1,'2022-08-01','2022-08-31','2022-08-31'),(5,'3',6,1,'2022-08-01','2022-08-31','2022-08-31'),(17,'7',1,1,'2022-09-02','2022-09-01','2022-09-01'),(18,'8',0,0,'2022-09-02','2022-09-01','2022-09-01'),(19,'9',2,0,'2022-09-01','2022-09-05','2022-09-05'),(20,'9',2,0,'2022-09-02','2022-09-05','2022-09-05'),(21,'9',2,0,'2022-09-03','2022-09-05','2022-09-05');
/*!40000 ALTER TABLE `seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_log`
--

DROP TABLE IF EXISTS `usage_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usage_log` (
  `emp_code` varchar(255) DEFAULT NULL,
  `plid` int(11) DEFAULT NULL,
  `created_dttm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_log`
--

LOCK TABLES `usage_log` WRITE;
/*!40000 ALTER TABLE `usage_log` DISABLE KEYS */;
INSERT INTO `usage_log` VALUES ('admin',21621,'2017-10-18 11:21:11'),('admin',40501,'2017-10-18 11:21:16'),('admin',40501,'2017-10-18 11:21:24'),('admin',21639,'2017-10-18 11:21:51'),('admin',21645,'2017-10-18 11:21:58'),('admin',21651,'2017-10-18 11:22:07'),('admin',40501,'2017-10-18 11:22:32'),('admin',21651,'2017-10-18 11:31:06'),('admin',21639,'2017-10-18 11:40:42'),('admin',21645,'2017-10-18 11:41:16'),('admin',21651,'2017-10-18 11:41:25'),('admin',21621,'2017-10-18 11:41:49'),('admin',21651,'2017-10-18 11:43:42'),('admin',21603,'2017-10-24 14:32:57'),('admin',21259,'2017-10-24 14:34:40'),('admin',21603,'2017-10-24 14:44:47'),('admin',21585,'2017-10-24 14:45:06'),('admin',21657,'2017-10-24 14:48:03'),('admin',21603,'2017-10-24 14:48:11'),('admin',21513,'2017-10-24 14:48:46'),('admin',21585,'2017-10-24 14:48:58'),('admin',21657,'2017-10-24 14:51:01'),('admin',21603,'2017-10-24 14:51:14'),('admin',21549,'2017-10-24 14:51:24'),('admin',21603,'2017-10-24 15:00:50'),('admin',21657,'2017-10-24 15:12:39'),('admin',21609,'2017-10-24 16:03:01'),('admin',21603,'2017-10-24 16:04:57'),('admin',21531,'2017-10-24 16:26:44'),('admin',21657,'2017-10-24 16:36:52'),('admin',21603,'2017-10-24 16:43:52'),('admin',21555,'2017-10-24 16:45:41'),('admin',21555,'2017-10-24 16:46:34'),('admin',21561,'2017-10-24 16:46:54'),('admin',21603,'2017-10-24 16:47:08'),('admin',21603,'2017-10-24 16:48:30'),('admin',21645,'2017-10-24 16:50:08'),('admin',21639,'2017-10-24 16:58:20'),('admin',21639,'2017-10-24 16:58:41'),('admin',21561,'2017-10-24 16:59:58'),('admin',21531,'2017-10-24 17:01:23'),('admin',21561,'2017-10-24 17:01:33'),('admin',21639,'2017-10-24 17:02:25'),('admin',21603,'2017-10-24 17:03:11'),('admin',21639,'2017-10-24 17:03:18'),('admin',21645,'2017-10-24 17:10:19'),('admin',21651,'2017-10-24 17:11:12'),('admin',21603,'2017-10-24 17:13:27'),('admin',21645,'2017-10-24 17:14:58'),('admin',21639,'2017-10-24 17:16:28'),('admin',21639,'2017-10-24 17:16:42'),('admin',21639,'2017-10-24 17:17:27'),('admin',21639,'2017-10-24 17:17:33'),('admin',21651,'2017-10-24 17:17:52'),('admin',21639,'2017-10-24 17:17:58'),('admin',21651,'2017-10-24 17:18:10'),('admin',21639,'2017-10-24 17:18:16'),('admin',21639,'2017-10-24 17:18:42'),('admin',21639,'2017-10-24 17:18:42'),('admin',21639,'2017-10-24 17:18:46'),('admin',21609,'2017-10-24 17:21:04'),('admin',21609,'2017-10-24 17:25:17'),('admin',21639,'2017-10-24 17:26:05'),('admin',21609,'2017-10-24 17:26:11'),('admin',21639,'2017-10-24 18:25:51'),('admin',21621,'2017-10-24 18:26:18'),('admin',21609,'2017-10-24 18:29:47'),('admin',21639,'2017-10-24 18:30:17'),('admin',21645,'2017-10-24 18:30:24'),('admin',21651,'2017-10-24 18:30:56'),('admin',21651,'2017-10-24 18:33:57'),('admin',21651,'2017-10-24 18:36:52'),('admin',21651,'2017-10-24 18:37:12'),('admin',21609,'2017-10-24 18:37:34'),('admin',21651,'2017-10-24 18:40:55'),('admin',21609,'2017-10-24 18:41:24'),('admin',21639,'2017-10-24 18:44:10'),('admin',21645,'2017-10-24 18:44:20'),('admin',21651,'2017-10-24 18:44:28'),('admin',21651,'2017-10-24 18:44:57'),('admin',21549,'2017-10-24 18:45:24'),('admin',21609,'2017-10-24 18:48:11'),('admin',21609,'2017-10-24 18:55:04'),('admin',21585,'2017-10-24 18:55:19'),('admin',21609,'2017-10-24 18:55:34'),('admin',21609,'2017-10-24 18:55:50'),('admin',21609,'2017-10-24 18:56:15'),('admin',21609,'2017-10-24 18:56:19'),('admin',21609,'2017-10-24 18:56:33'),('admin',21609,'2017-10-24 18:57:16'),('admin',21609,'2017-10-24 18:57:23'),('admin',21609,'2017-10-24 18:58:36'),('admin',21609,'2017-10-24 18:58:58'),('admin',21609,'2017-10-24 18:59:08'),('admin',21609,'2017-10-24 19:00:54'),('admin',21609,'2017-10-24 19:01:17'),('admin',21657,'2017-10-24 19:07:12'),('admin',21585,'2017-10-24 19:08:18'),('admin',21639,'2017-10-24 19:25:59'),('admin',21651,'2017-10-24 19:31:37'),('admin',21561,'2017-10-24 19:34:59'),('admin',21651,'2017-10-24 19:35:29'),('admin',21639,'2017-10-24 19:36:26'),('admin',21561,'2017-10-24 19:37:07'),('admin',21621,'2017-10-24 19:37:09'),('admin',21561,'2017-10-24 19:40:07'),('admin',21639,'2017-10-24 19:40:16'),('admin',21651,'2017-10-24 19:42:29'),('admin',21639,'2017-10-24 19:43:07'),('admin',21651,'2017-10-24 19:44:22'),('admin',21639,'2017-10-24 19:46:17'),('admin',21645,'2017-10-24 19:47:18'),('admin',21639,'2017-10-24 19:47:46'),('admin',21645,'2017-10-24 19:47:52'),('admin',21639,'2017-10-24 19:49:15'),('admin',21651,'2017-10-24 19:50:33'),('admin',21651,'2017-10-24 19:55:19'),('admin',21651,'2017-10-24 19:56:12'),('admin',21621,'2017-10-24 19:59:33'),('admin',21609,'2017-10-24 20:06:17'),('admin',21645,'2017-10-24 20:12:03'),('hradmin',21639,'2017-10-24 20:14:26'),('hradmin',21639,'2017-10-24 20:16:45'),('hradmin',21645,'2017-10-24 20:17:03'),('hradmin',21651,'2017-10-24 20:17:10'),('hradmin',21657,'2017-10-24 20:17:18'),('hradmin',21639,'2017-10-24 20:18:47'),('admin',21645,'2017-10-24 20:18:57'),('hradmin',21645,'2017-10-24 20:19:08'),('hradmin',21639,'2017-10-24 20:19:25'),('hradmin',21645,'2017-10-24 20:19:32'),('hradmin',21651,'2017-10-24 20:19:45'),('hradmin',21639,'2017-10-24 20:20:27'),('hradmin',21645,'2017-10-24 20:21:35'),('hradmin',21639,'2017-10-24 20:23:47'),('hradmin',21645,'2017-10-24 20:24:37'),('hradmin',21651,'2017-10-24 20:25:18'),('hradmin',21657,'2017-10-24 20:26:04'),('hradmin',21651,'2017-10-24 20:28:28'),('hradmin',21651,'2017-10-24 20:28:34'),('hradmin',21651,'2017-10-24 20:28:41'),('hradmin',21657,'2017-10-24 20:29:19'),('hradmin',21651,'2017-10-24 20:30:19'),('admin',21609,'2017-10-24 20:35:53'),('admin',21609,'2017-10-24 20:35:55'),('admin',21645,'2017-10-24 20:35:59'),('admin',21645,'2017-10-24 20:41:42'),('admin',21609,'2017-10-24 20:47:06'),('admin',21645,'2017-10-24 20:52:03'),('admin',21645,'2017-10-24 20:52:14'),('admin',21639,'2017-10-24 20:53:26'),('admin',21609,'2017-10-24 20:55:35'),('admin',21609,'2017-10-24 20:56:11'),('admin',21609,'2017-10-24 20:56:24'),('admin',21609,'2017-10-24 20:56:34'),('admin',21609,'2017-10-24 20:57:06'),('admin',21609,'2017-10-24 20:57:20'),('admin',21609,'2017-10-24 21:00:11'),('admin',21609,'2017-10-24 21:02:07'),('admin',21609,'2017-10-24 21:06:11'),('admin',21609,'2017-10-24 21:06:35'),('admin',21609,'2017-10-24 21:07:06'),('admin',21609,'2017-10-24 21:07:17'),('admin',21609,'2017-10-24 21:09:17'),('admin',21585,'2017-10-24 21:22:58'),('admin',21609,'2017-10-24 21:28:40'),('admin',21585,'2017-10-24 21:42:37'),('admin',21651,'2017-10-24 23:09:57'),('admin',21639,'2017-10-24 23:12:51'),('admin',21639,'2017-10-24 23:38:47'),('admin',21657,'2017-10-24 23:38:51'),('admin',21609,'2017-10-24 23:47:12'),('admin',21639,'2017-10-24 23:52:06'),('admin',21645,'2017-10-24 23:52:21'),('admin',21651,'2017-10-24 23:52:39'),('admin',21645,'2017-10-24 23:52:54'),('admin',21651,'2017-10-24 23:54:24'),('admin',21657,'2017-10-24 23:57:28'),('admin',21657,'2017-10-24 23:59:43'),('admin',21645,'2017-10-25 00:00:18'),('admin',21609,'2017-10-25 00:00:29'),('admin',21657,'2017-10-25 00:00:39'),('admin',21657,'2017-10-25 00:01:51'),('admin',21657,'2017-10-25 00:02:31'),('admin',21657,'2017-10-25 00:03:47'),('admin',21657,'2017-10-25 00:07:32'),('admin',21657,'2017-10-25 00:10:51'),('admin',21651,'2017-10-25 00:17:14'),('admin',21657,'2017-10-25 00:17:14'),('admin',21651,'2017-10-25 00:17:28'),('admin',21585,'2017-10-25 00:18:24'),('admin',21639,'2017-10-25 00:18:46'),('admin',21651,'2017-10-25 00:18:52'),('admin',21639,'2017-10-25 00:19:20'),('admin',21603,'2017-10-25 00:19:25'),('admin',21645,'2017-10-25 00:19:52'),('admin',21657,'2017-10-25 00:20:44'),('admin',21651,'2017-10-25 00:20:56'),('admin',21621,'2017-10-25 00:22:09'),('admin',21639,'2017-10-25 00:23:09'),('admin',21645,'2017-10-25 00:23:52'),('admin',21657,'2017-10-25 00:24:07'),('admin',21651,'2017-10-25 00:24:36'),('admin',21645,'2017-10-25 00:24:54'),('admin',21651,'2017-10-25 00:30:11'),('admin',21651,'2017-10-25 00:30:22'),('admin',21639,'2017-10-25 08:40:36'),('admin',21657,'2017-10-25 08:41:05'),('admin',21621,'2017-10-25 08:41:37'),('admin',21639,'2017-10-25 08:48:15'),('admin',21609,'2017-10-25 08:50:32'),('admin',21657,'2017-10-25 08:50:41'),('admin',21621,'2017-10-25 08:51:54'),('admin',21651,'2017-10-25 08:52:08'),('admin',21651,'2017-10-25 08:53:02'),('admin',21621,'2017-10-25 08:53:04'),('admin',21621,'2017-10-25 09:01:25'),('admin',21651,'2017-10-25 09:01:32'),('admin',21621,'2017-10-25 09:09:34'),('admin',21651,'2017-10-25 09:09:42'),('admin',21651,'2017-10-25 09:11:01'),('admin',21621,'2017-10-25 09:16:14'),('admin',21621,'2017-10-25 09:16:45'),('admin',21621,'2017-10-25 09:17:49'),('hradmin',21639,'2017-10-25 09:21:15'),('hradmin',21645,'2017-10-25 09:21:23'),('hradmin',21645,'2017-10-25 09:21:36'),('hradmin',21645,'2017-10-25 09:22:08'),('hradmin',21651,'2017-10-25 09:22:16'),('admin',21259,'2017-10-25 09:22:37'),('admin',21651,'2017-10-25 09:22:45'),('hradmin',21639,'2017-10-25 09:22:53'),('hradmin',21645,'2017-10-25 09:23:28'),('hradmin',21645,'2017-10-25 09:23:41'),('hradmin',21639,'2017-10-25 09:24:06'),('hradmin',21651,'2017-10-25 09:24:13'),('hradmin',21621,'2017-10-25 09:25:11'),('hradmin',21657,'2017-10-25 09:26:52'),('hradmin',21621,'2017-10-25 09:31:23'),('hradmin',21639,'2017-10-25 09:32:26'),('hradmin',21645,'2017-10-25 09:32:36'),('hradmin',21651,'2017-10-25 09:32:41'),('hradmin',21621,'2017-10-25 09:33:27'),('hradmin',21639,'2017-10-25 09:34:02'),('hradmin',21645,'2017-10-25 09:34:55'),('hradmin',21651,'2017-10-25 09:35:07'),('hradmin',21651,'2017-10-25 09:35:15'),('hradmin',21621,'2017-10-25 09:35:28'),('hradmin',21657,'2017-10-25 09:35:55'),('hradmin',21639,'2017-10-25 09:46:45'),('hradmin',21639,'2017-10-25 10:10:50'),('hradmin',21645,'2017-10-25 10:14:16'),('hradmin',21651,'2017-10-25 10:16:55'),('hradmin',21621,'2017-10-25 10:17:47'),('hradmin',21657,'2017-10-25 10:19:13'),('hradmin',21621,'2017-10-25 10:30:34'),('hradmin',21657,'2017-10-25 10:32:32'),('hradmin',21603,'2017-10-25 10:51:17'),('hradmin',21609,'2017-10-25 10:57:44'),('hradmin',21621,'2017-10-25 10:57:47'),('hradmin',21609,'2017-10-25 10:59:30'),('hradmin',21621,'2017-10-25 11:01:37'),('hradmin',21639,'2017-10-25 11:03:51'),('admin',21651,'2017-10-25 11:11:24'),('admin',NULL,'2017-10-25 11:12:46'),('hradmin',21645,'2017-10-25 11:13:18'),('hradmin',21651,'2017-10-25 11:14:23'),('hradmin',21555,'2017-10-25 11:15:43'),('admin',NULL,'2017-10-25 11:16:13'),('admin',NULL,'2017-10-25 11:16:14'),('admin',NULL,'2017-10-25 11:16:21'),('hradmin',21555,'2017-10-25 11:16:48'),('admin',21259,'2017-10-25 11:17:20'),('hradmin',37803,'2017-10-25 11:17:46'),('admin',21651,'2017-10-25 11:17:47'),('hradmin',21561,'2017-10-25 11:17:56'),('hradmin',21657,'2017-10-25 11:20:39'),('hradmin',21603,'2017-10-25 11:20:56'),('hradmin',21609,'2017-10-25 11:21:00'),('hradmin',21621,'2017-10-25 11:21:30'),('admin',21609,'2017-10-25 11:21:45'),('admin',21651,'2017-10-25 11:22:07'),('hradmin',36301,'2017-10-25 11:24:54'),('admin',25306,'2017-10-25 11:44:05'),('admin',36301,'2017-10-25 11:44:24'),('hradmin',21657,'2017-10-25 11:47:15'),('admin',21639,'2017-10-25 16:38:31'),('admin',21639,'2017-10-25 16:38:58'),('admin',36301,'2017-10-25 16:39:19'),('admin',21549,'2017-10-25 16:41:18'),('admin',21639,'2017-10-25 16:52:46'),('admin',21651,'2017-10-25 16:55:13'),('admin',36301,'2017-10-25 16:59:55'),('admin',36301,'2017-10-25 17:02:40'),('admin',36301,'2017-10-25 17:05:33'),('admin',21259,'2017-10-25 17:09:19'),('admin',21651,'2017-10-25 17:17:11'),('admin',36301,'2017-10-25 17:17:17'),('admin',21651,'2017-10-25 17:17:44'),('admin',21657,'2017-10-25 17:18:00'),('admin',21651,'2017-10-25 17:21:21'),('admin',36301,'2017-10-25 17:21:54'),('admin',21259,'2017-10-25 17:22:15'),('admin',21549,'2017-10-25 17:22:57'),('admin',36301,'2017-10-25 17:25:12'),('admin',36301,'2017-10-25 17:29:24'),('admin',21549,'2017-10-25 17:30:03'),('admin',36301,'2017-10-25 17:36:22'),('admin',36301,'2017-10-25 17:40:12'),('admin',36301,'2017-10-25 17:41:27'),('admin',36301,'2017-10-25 17:42:58'),('admin',21639,'2017-10-25 17:56:32'),('admin',36301,'2017-10-25 17:59:57'),('admin',21639,'2017-10-25 18:00:02'),('admin',44813,'2017-10-25 18:00:26'),('admin',21549,'2017-10-25 18:01:01'),('admin',21549,'2017-10-25 18:03:18'),('admin',25306,'2017-10-27 09:31:12'),('admin',34811,'2017-10-27 09:32:20'),('admin',36301,'2017-10-27 09:34:39'),('admin',21645,'2017-10-27 09:37:13'),('admin',21549,'2017-10-27 09:39:55'),('admin',21639,'2017-10-27 09:42:43'),('admin',36301,'2017-10-27 09:53:35'),('admin',36301,'2017-10-27 09:54:50'),('admin',21561,'2017-10-27 10:01:22'),('admin',21561,'2017-10-27 10:05:28'),('admin',36301,'2017-10-27 10:06:11'),('admin',22401,'2017-10-27 10:07:36'),('admin',21561,'2017-10-27 10:08:03'),('admin',22401,'2017-10-27 10:08:49'),('admin',21507,'2017-10-27 10:09:00'),('admin',21259,'2017-10-27 10:09:17'),('admin',21501,'2017-10-27 10:09:36'),('admin',21507,'2017-10-27 10:09:47'),('admin',21513,'2017-10-27 10:09:50'),('admin',21519,'2017-10-27 10:09:57'),('admin',21525,'2017-10-27 10:10:01'),('admin',21531,'2017-10-27 10:10:19'),('admin',21537,'2017-10-27 10:10:23'),('admin',21537,'2017-10-27 10:10:32'),('admin',21543,'2017-10-27 10:10:36'),('admin',21549,'2017-10-27 10:10:40'),('admin',21657,'2017-10-27 10:13:58'),('admin',25306,'2017-10-27 10:15:48'),('admin',25306,'2017-10-27 10:16:39'),('admin',25306,'2017-10-27 10:17:33'),('admin',25306,'2017-10-27 10:17:43'),('admin',21561,'2017-10-27 10:37:37'),('admin',21639,'2017-10-27 10:38:27'),('admin',21645,'2017-10-27 10:38:54'),('admin',21651,'2017-10-27 10:39:13'),('admin',21657,'2017-10-27 10:43:16'),('admin',21561,'2017-10-27 10:44:55'),('admin',21657,'2017-10-27 10:45:21'),('admin',21657,'2017-10-27 10:48:37'),('admin',21651,'2017-10-27 10:52:29'),('admin',21651,'2017-10-27 10:58:09'),('admin',21561,'2017-10-27 11:09:44'),('admin',21585,'2017-10-27 11:16:03'),('admin',21597,'2017-10-27 11:16:15'),('admin',21657,'2017-10-27 11:17:04'),('admin',21651,'2017-10-27 11:20:54'),('admin',21657,'2017-10-27 11:28:57'),('admin',21657,'2017-10-27 11:37:14'),('admin',21657,'2017-10-27 11:42:21'),('admin',21657,'2017-10-27 11:52:06'),('admin',21597,'2017-10-27 11:54:35'),('admin',21639,'2017-10-27 12:11:26'),('admin',21621,'2017-10-27 12:14:49'),('admin',21657,'2017-10-27 12:20:06'),('admin',21657,'2017-10-27 12:20:28'),('admin',21657,'2017-10-27 12:20:50'),('admin',21657,'2017-10-27 12:20:55'),('admin',21657,'2017-10-27 13:21:47'),('admin',21645,'2017-10-27 13:21:56'),('admin',21657,'2017-10-27 13:23:18'),('admin',21549,'2017-10-27 13:24:56'),('admin',21657,'2017-10-27 13:25:26'),('admin',21657,'2017-10-27 13:28:02'),('admin',21657,'2017-10-27 13:31:09'),('admin',21657,'2017-10-27 13:33:33'),('admin',21597,'2017-10-27 13:35:18'),('admin',21657,'2017-10-27 13:37:02'),('admin',21657,'2017-10-27 13:39:13'),('admin',21597,'2017-10-27 13:43:41'),('admin',21651,'2017-10-27 13:45:30'),('admin',21657,'2017-10-27 13:46:44'),('admin',21657,'2017-10-27 13:49:55'),('admin',21657,'2017-10-27 13:56:19'),('admin',21645,'2017-10-27 14:01:08'),('admin',21651,'2017-10-27 14:01:21'),('admin',25306,'2017-10-27 14:02:55'),('admin',39301,'2017-10-27 14:04:22'),('admin',21651,'2017-10-27 14:13:15'),('admin',21651,'2017-10-27 14:17:25'),('admin',21657,'2017-10-27 14:20:48'),('admin',21657,'2017-10-27 14:24:09'),('admin',21657,'2017-10-27 14:32:51'),('admin',21621,'2017-10-27 14:34:35'),('admin',25306,'2017-10-27 14:38:25'),('admin',36301,'2017-10-27 14:38:42'),('admin',21585,'2017-10-27 15:00:33'),('admin',21639,'2017-10-27 15:05:01'),('admin',21639,'2017-10-27 15:18:17'),('admin',21645,'2017-10-27 15:19:04'),('admin',21651,'2017-10-27 15:23:53'),('admin',21657,'2017-10-27 15:54:09'),('admin',21639,'2017-10-27 15:55:01'),('admin',21651,'2017-10-27 15:55:05'),('admin',21657,'2017-10-27 15:55:10'),('admin',21639,'2017-10-27 15:57:17'),('admin',21651,'2017-10-27 15:58:58'),('admin',21651,'2017-10-27 16:00:58'),('admin',21609,'2017-10-27 16:04:32'),('admin',21657,'2017-10-27 16:05:30'),('admin',21645,'2017-10-27 16:05:41'),('admin',21651,'2017-10-27 16:05:49'),('admin',21657,'2017-10-27 16:12:09'),('admin',21657,'2017-10-27 16:15:40'),('admin',21645,'2017-10-27 16:19:28'),('admin',21645,'2017-10-27 16:20:45'),('admin',21639,'2017-10-27 18:03:52'),('admin',21645,'2017-10-27 18:04:45'),('admin',21651,'2017-10-27 18:05:21'),('admin',21621,'2017-10-27 18:12:36'),('admin',21621,'2017-10-27 18:13:18'),('admin',21639,'2017-10-27 18:17:18'),('admin',21639,'2017-10-27 18:17:40'),('admin',21621,'2017-10-27 18:27:05'),('admin',21621,'2017-10-27 18:37:19'),('admin',21657,'2017-10-27 18:39:54'),('admin',21585,'2017-10-27 18:40:19'),('admin',21651,'2017-10-27 18:42:09'),('admin',21585,'2017-10-27 18:45:22'),('admin',21657,'2017-10-27 18:46:03'),('admin',21645,'2017-10-27 18:50:21'),('admin',21561,'2017-10-27 18:50:56'),('admin',21645,'2017-10-27 18:51:17'),('admin',21645,'2017-10-27 18:53:00'),('admin',21639,'2017-10-27 18:54:05'),('admin',21513,'2017-10-27 18:56:49'),('admin',21651,'2017-10-27 19:00:02'),('admin',21657,'2017-10-27 19:00:47'),('admin',21639,'2017-10-27 19:03:01'),('admin',21645,'2017-10-27 19:04:41'),('admin',21609,'2017-10-27 19:05:22'),('admin',21639,'2017-10-27 19:06:53'),('admin',21621,'2017-10-27 19:22:02'),('admin',21621,'2017-10-27 19:22:03'),('admin',21651,'2017-10-27 19:53:33'),('admin',21621,'2017-10-27 19:54:15'),('admin',21651,'2017-10-27 20:17:56'),('admin',21621,'2017-10-27 20:18:12'),('admin',21639,'2017-10-29 00:54:37'),('hradmin',21639,'2017-10-29 01:44:41'),('hradmin',21645,'2017-10-29 01:48:08'),('hradmin',21645,'2017-10-29 01:48:43'),('hradmin',21645,'2017-10-29 01:49:10'),('hradmin',21639,'2017-10-29 01:50:09'),('hradmin',21645,'2017-10-29 01:51:07'),('hradmin',21645,'2017-10-29 01:52:05'),('hradmin',21651,'2017-10-29 01:54:06'),('admin',21621,'2017-10-29 01:55:22'),('admin',21651,'2017-10-29 01:55:25'),('admin',21621,'2017-10-29 01:55:33'),('hradmin',21651,'2017-10-29 01:56:21'),('hradmin',21621,'2017-10-29 01:56:35'),('hradmin',21621,'2017-10-29 01:57:15'),('hradmin',21621,'2017-10-29 01:57:34'),('hradmin',21651,'2017-10-29 01:59:29'),('hradmin',21621,'2017-10-29 02:00:26'),('hradmin',21621,'2017-10-29 02:01:28'),('hradmin',21657,'2017-10-29 02:04:46'),('hradmin',21651,'2017-10-29 02:05:52'),('hradmin',21651,'2017-10-29 02:07:49'),('hradmin',21651,'2017-10-29 02:11:13'),('hradmin',21621,'2017-10-29 02:14:04'),('hradmin',21657,'2017-10-29 02:22:44'),('hradmin',21639,'2017-10-29 10:22:51'),('hradmin',21645,'2017-10-29 10:27:23'),('hradmin',21651,'2017-10-29 10:28:29'),('hradmin',21651,'2017-10-29 10:39:26'),('hradmin',21621,'2017-10-29 10:40:30'),('hradmin',21621,'2017-10-29 10:40:55'),('hradmin',21621,'2017-10-29 10:42:04'),('hradmin',21657,'2017-10-29 10:43:31'),('hradmin',21621,'2017-10-29 11:01:14'),('admin',21639,'2017-10-29 11:10:58'),('admin',21657,'2017-10-29 11:11:10'),('admin',21639,'2017-10-29 11:21:33'),('admin',21657,'2017-10-29 11:21:42'),('admin',21603,'2017-10-29 12:44:24'),('admin',21603,'2017-10-29 13:42:21'),('admin',21549,'2017-10-29 13:43:52'),('admin',21603,'2017-10-29 13:45:59'),('admin',21603,'2017-10-29 14:22:36'),('admin',21609,'2017-10-29 14:24:52'),('admin',21609,'2017-10-29 15:15:15'),('admin',21259,'2017-10-17 10:25:29'),('admin',21585,'2017-10-17 10:25:40'),('admin',21657,'2017-10-17 10:27:10'),('admin',21543,'2017-10-17 10:31:21'),('admin',21525,'2017-10-17 10:32:35'),('admin',21259,'2017-10-17 10:44:42'),('admin',21501,'2017-10-17 10:44:47'),('admin',21507,'2017-10-17 10:45:00'),('admin',21513,'2017-10-17 10:45:10'),('admin',21519,'2017-10-17 10:45:16'),('admin',21525,'2017-10-17 10:45:22'),('admin',21531,'2017-10-17 10:45:27'),('admin',21537,'2017-10-17 10:45:31'),('admin',21543,'2017-10-17 10:45:37'),('admin',21549,'2017-10-17 10:45:43'),('admin',40113,'2017-10-17 10:58:57'),('admin',40201,'2017-10-17 11:28:15'),('admin',41005,'2017-10-17 11:28:58'),('admin',40051,'2017-10-17 11:41:26'),('admin',40201,'2017-10-17 11:42:06'),('admin',40113,'2017-10-17 11:43:03'),('admin',40113,'2017-10-17 11:44:30'),('admin',40051,'2017-10-17 11:48:21'),('admin',40201,'2017-10-17 12:00:56'),('admin',21603,'2017-10-17 14:15:15'),('admin',21603,'2017-10-17 14:16:02'),('admin',21603,'2017-10-17 14:16:18'),('admin',21609,'2017-10-17 14:16:44'),('admin',21603,'2017-10-17 14:16:53'),('admin',21603,'2017-10-17 14:32:13'),('admin',21603,'2017-10-17 16:35:41'),('admin',21609,'2017-10-17 17:19:57'),('admin',21609,'2017-10-17 17:55:26'),('admin',21621,'2017-10-17 18:14:37'),('admin',21259,'2017-10-17 18:14:44'),('admin',21621,'2017-10-18 09:27:03'),('admin',21639,'2017-10-18 09:31:23'),('admin',40501,'2017-10-18 10:00:46'),('admin',40501,'2017-10-18 10:01:08'),('admin',41005,'2017-10-18 10:01:13'),('admin',41005,'2017-10-18 10:01:58'),('admin',41005,'2017-10-18 10:04:37'),('admin',40501,'2017-10-18 10:04:48'),('admin',41005,'2017-10-18 10:15:23'),('admin',40803,'2017-10-18 10:17:44'),('admin',40201,'2017-10-18 10:24:42'),('admin',40501,'2017-10-18 10:25:03'),('admin',40501,'2017-10-18 10:30:28'),('admin',41005,'2017-10-18 10:43:10'),('admin',40803,'2017-10-18 10:44:28'),('admin',40501,'2017-10-18 10:44:53'),('admin',41401,'2017-10-18 10:49:15'),('admin',41005,'2017-10-18 10:49:35'),('admin',40803,'2017-10-18 10:49:40'),('admin',40501,'2017-10-18 10:49:44'),('admin',41401,'2017-10-18 10:49:51'),('admin',40803,'2017-10-18 10:53:04'),('admin',40501,'2017-10-18 10:53:10'),('admin',21639,'2017-10-18 11:18:29'),('admin',21645,'2017-10-18 11:18:40'),('admin',21651,'2017-10-18 11:18:50'),('admin',21621,'2017-10-18 11:21:11'),('admin',40501,'2017-10-18 11:21:16'),('admin',40501,'2017-10-18 11:21:24'),('admin',21639,'2017-10-18 11:21:51'),('admin',21645,'2017-10-18 11:21:58'),('admin',21651,'2017-10-18 11:22:07'),('admin',40501,'2017-10-18 11:22:32'),('admin',21651,'2017-10-18 11:31:06'),('admin',21639,'2017-10-18 11:40:42'),('admin',21645,'2017-10-18 11:41:16'),('admin',21651,'2017-10-18 11:41:25'),('admin',21621,'2017-10-18 11:41:49'),('admin',21651,'2017-10-18 11:43:42'),('admin',21603,'2017-10-24 14:32:57'),('admin',21259,'2017-10-24 14:34:40'),('admin',21603,'2017-10-24 14:44:47'),('admin',21585,'2017-10-24 14:45:06'),('admin',21657,'2017-10-24 14:48:03'),('admin',21603,'2017-10-24 14:48:11'),('admin',21513,'2017-10-24 14:48:46'),('admin',21585,'2017-10-24 14:48:58'),('admin',21657,'2017-10-24 14:51:01'),('admin',21603,'2017-10-24 14:51:14'),('admin',21549,'2017-10-24 14:51:24'),('admin',21603,'2017-10-24 15:00:50'),('admin',21657,'2017-10-24 15:12:39'),('admin',21609,'2017-10-24 16:03:01'),('admin',21603,'2017-10-24 16:04:57'),('admin',21531,'2017-10-24 16:26:44'),('admin',21657,'2017-10-24 16:36:52'),('admin',21603,'2017-10-24 16:43:52'),('admin',21555,'2017-10-24 16:45:41'),('admin',21555,'2017-10-24 16:46:34'),('admin',21561,'2017-10-24 16:46:54'),('admin',21603,'2017-10-24 16:47:08'),('admin',21603,'2017-10-24 16:48:30'),('admin',21645,'2017-10-24 16:50:08'),('admin',21639,'2017-10-24 16:58:20'),('admin',21639,'2017-10-24 16:58:41'),('admin',21561,'2017-10-24 16:59:58'),('admin',21531,'2017-10-24 17:01:23'),('admin',21561,'2017-10-24 17:01:33'),('admin',21639,'2017-10-24 17:02:25'),('admin',21603,'2017-10-24 17:03:11'),('admin',21639,'2017-10-24 17:03:18'),('admin',21645,'2017-10-24 17:10:19'),('admin',21651,'2017-10-24 17:11:12'),('admin',21603,'2017-10-24 17:13:27'),('admin',21645,'2017-10-24 17:14:58'),('admin',21639,'2017-10-24 17:16:28'),('admin',21639,'2017-10-24 17:16:42'),('admin',21639,'2017-10-24 17:17:27'),('admin',21639,'2017-10-24 17:17:33'),('admin',21651,'2017-10-24 17:17:52'),('admin',21639,'2017-10-24 17:17:58'),('admin',21651,'2017-10-24 17:18:10'),('admin',21639,'2017-10-24 17:18:16'),('admin',21639,'2017-10-24 17:18:42'),('admin',21639,'2017-10-24 17:18:42'),('admin',21639,'2017-10-24 17:18:46'),('admin',21609,'2017-10-24 17:21:04'),('admin',21609,'2017-10-24 17:25:17'),('admin',21639,'2017-10-24 17:26:05'),('admin',21609,'2017-10-24 17:26:11'),('admin',21639,'2017-10-24 18:25:51'),('admin',21621,'2017-10-24 18:26:18'),('admin',21609,'2017-10-24 18:29:47'),('admin',21639,'2017-10-24 18:30:17'),('admin',21645,'2017-10-24 18:30:24'),('admin',21651,'2017-10-24 18:30:56'),('admin',21651,'2017-10-24 18:33:57'),('admin',21651,'2017-10-24 18:36:52'),('admin',21651,'2017-10-24 18:37:12'),('admin',21609,'2017-10-24 18:37:34'),('admin',21651,'2017-10-24 18:40:55'),('admin',21609,'2017-10-24 18:41:24'),('admin',21639,'2017-10-24 18:44:10'),('admin',21645,'2017-10-24 18:44:20'),('admin',21651,'2017-10-24 18:44:28'),('admin',21651,'2017-10-24 18:44:57'),('admin',21549,'2017-10-24 18:45:24'),('admin',21609,'2017-10-24 18:48:11'),('admin',21609,'2017-10-24 18:55:04'),('admin',21585,'2017-10-24 18:55:19'),('admin',21609,'2017-10-24 18:55:34'),('admin',21609,'2017-10-24 18:55:50'),('admin',21609,'2017-10-24 18:56:15'),('admin',21609,'2017-10-24 18:56:19'),('admin',21609,'2017-10-24 18:56:33'),('admin',21609,'2017-10-24 18:57:16'),('admin',21609,'2017-10-24 18:57:23'),('admin',21609,'2017-10-24 18:58:36'),('admin',21609,'2017-10-24 18:58:58'),('admin',21609,'2017-10-24 18:59:08'),('admin',21609,'2017-10-24 19:00:54'),('admin',21609,'2017-10-24 19:01:17'),('admin',21657,'2017-10-24 19:07:12'),('admin',21585,'2017-10-24 19:08:18'),('admin',21639,'2017-10-24 19:25:59'),('admin',21651,'2017-10-24 19:31:37'),('admin',21561,'2017-10-24 19:34:59'),('admin',21651,'2017-10-24 19:35:29'),('admin',21639,'2017-10-24 19:36:26'),('admin',21561,'2017-10-24 19:37:07'),('admin',21621,'2017-10-24 19:37:09'),('admin',21561,'2017-10-24 19:40:07'),('admin',21639,'2017-10-24 19:40:16'),('admin',21651,'2017-10-24 19:42:29'),('admin',21639,'2017-10-24 19:43:07'),('admin',21651,'2017-10-24 19:44:22'),('admin',21639,'2017-10-24 19:46:17'),('admin',21645,'2017-10-24 19:47:18'),('admin',21639,'2017-10-24 19:47:46'),('admin',21645,'2017-10-24 19:47:52'),('admin',21639,'2017-10-24 19:49:15'),('admin',21651,'2017-10-24 19:50:33'),('admin',21651,'2017-10-24 19:55:19'),('admin',21651,'2017-10-24 19:56:12'),('admin',21621,'2017-10-24 19:59:33'),('admin',21609,'2017-10-24 20:06:17'),('admin',21645,'2017-10-24 20:12:03'),('hradmin',21639,'2017-10-24 20:14:26'),('hradmin',21639,'2017-10-24 20:16:45'),('hradmin',21645,'2017-10-24 20:17:03'),('hradmin',21651,'2017-10-24 20:17:10'),('hradmin',21657,'2017-10-24 20:17:18'),('hradmin',21639,'2017-10-24 20:18:47'),('admin',21645,'2017-10-24 20:18:57'),('hradmin',21645,'2017-10-24 20:19:08'),('hradmin',21639,'2017-10-24 20:19:25'),('hradmin',21645,'2017-10-24 20:19:32'),('hradmin',21651,'2017-10-24 20:19:45'),('hradmin',21639,'2017-10-24 20:20:27'),('hradmin',21645,'2017-10-24 20:21:35'),('hradmin',21639,'2017-10-24 20:23:47'),('hradmin',21645,'2017-10-24 20:24:37'),('hradmin',21651,'2017-10-24 20:25:18'),('hradmin',21657,'2017-10-24 20:26:04'),('hradmin',21651,'2017-10-24 20:28:28'),('hradmin',21651,'2017-10-24 20:28:34'),('hradmin',21651,'2017-10-24 20:28:41'),('hradmin',21657,'2017-10-24 20:29:19'),('hradmin',21651,'2017-10-24 20:30:19'),('admin',21609,'2017-10-24 20:35:53'),('admin',21609,'2017-10-24 20:35:55'),('admin',21645,'2017-10-24 20:35:59'),('admin',21645,'2017-10-24 20:41:42'),('admin',21609,'2017-10-24 20:47:06'),('admin',21645,'2017-10-24 20:52:03'),('admin',21645,'2017-10-24 20:52:14'),('admin',21639,'2017-10-24 20:53:26'),('admin',21609,'2017-10-24 20:55:35'),('admin',21609,'2017-10-24 20:56:11'),('admin',21609,'2017-10-24 20:56:24'),('admin',21609,'2017-10-24 20:56:34'),('admin',21609,'2017-10-24 20:57:06'),('admin',21609,'2017-10-24 20:57:20'),('admin',21609,'2017-10-24 21:00:11'),('admin',21609,'2017-10-24 21:02:07'),('admin',21609,'2017-10-24 21:06:11'),('admin',21609,'2017-10-24 21:06:35'),('admin',21609,'2017-10-24 21:07:06'),('admin',21609,'2017-10-24 21:07:17'),('admin',21609,'2017-10-24 21:09:17'),('admin',21585,'2017-10-24 21:22:58'),('admin',21609,'2017-10-24 21:28:40'),('admin',21585,'2017-10-24 21:42:37'),('admin',21651,'2017-10-24 23:09:57'),('admin',21639,'2017-10-24 23:12:51'),('admin',21639,'2017-10-24 23:38:47'),('admin',21657,'2017-10-24 23:38:51'),('admin',21609,'2017-10-24 23:47:12'),('admin',21639,'2017-10-24 23:52:06'),('admin',21645,'2017-10-24 23:52:21'),('admin',21651,'2017-10-24 23:52:39'),('admin',21645,'2017-10-24 23:52:54'),('admin',21651,'2017-10-24 23:54:24'),('admin',21657,'2017-10-24 23:57:28'),('admin',21657,'2017-10-24 23:59:43'),('admin',21645,'2017-10-25 00:00:18'),('admin',21609,'2017-10-25 00:00:29'),('admin',21657,'2017-10-25 00:00:39'),('admin',21657,'2017-10-25 00:01:51'),('admin',21657,'2017-10-25 00:02:31'),('admin',21657,'2017-10-25 00:03:47'),('admin',21657,'2017-10-25 00:07:32'),('admin',21657,'2017-10-25 00:10:51'),('admin',21651,'2017-10-25 00:17:14'),('admin',21657,'2017-10-25 00:17:14'),('admin',21651,'2017-10-25 00:17:28'),('admin',21585,'2017-10-25 00:18:24'),('admin',21639,'2017-10-25 00:18:46'),('admin',21651,'2017-10-25 00:18:52'),('admin',21639,'2017-10-25 00:19:20'),('admin',21603,'2017-10-25 00:19:25'),('admin',21645,'2017-10-25 00:19:52'),('admin',21657,'2017-10-25 00:20:44'),('admin',21651,'2017-10-25 00:20:56'),('admin',21621,'2017-10-25 00:22:09'),('admin',21639,'2017-10-25 00:23:09'),('admin',21645,'2017-10-25 00:23:52'),('admin',21657,'2017-10-25 00:24:07'),('admin',21651,'2017-10-25 00:24:36'),('admin',21645,'2017-10-25 00:24:54'),('admin',21651,'2017-10-25 00:30:11'),('admin',21651,'2017-10-25 00:30:22'),('admin',21639,'2017-10-25 08:40:36'),('admin',21657,'2017-10-25 08:41:05'),('admin',21621,'2017-10-25 08:41:37'),('admin',21639,'2017-10-25 08:48:15'),('admin',21609,'2017-10-25 08:50:32'),('admin',21657,'2017-10-25 08:50:41'),('admin',21621,'2017-10-25 08:51:54'),('admin',21651,'2017-10-25 08:52:08'),('admin',21651,'2017-10-25 08:53:02'),('admin',21621,'2017-10-25 08:53:04'),('admin',21621,'2017-10-25 09:01:25'),('admin',21651,'2017-10-25 09:01:32'),('admin',21621,'2017-10-25 09:09:34'),('admin',21651,'2017-10-25 09:09:42'),('admin',21651,'2017-10-25 09:11:01'),('admin',21621,'2017-10-25 09:16:14'),('admin',21621,'2017-10-25 09:16:45'),('admin',21621,'2017-10-25 09:17:49'),('hradmin',21639,'2017-10-25 09:21:15'),('hradmin',21645,'2017-10-25 09:21:23'),('hradmin',21645,'2017-10-25 09:21:36'),('hradmin',21645,'2017-10-25 09:22:08'),('hradmin',21651,'2017-10-25 09:22:16'),('admin',21259,'2017-10-25 09:22:37'),('admin',21651,'2017-10-25 09:22:45'),('hradmin',21639,'2017-10-25 09:22:53'),('hradmin',21645,'2017-10-25 09:23:28'),('hradmin',21645,'2017-10-25 09:23:41'),('hradmin',21639,'2017-10-25 09:24:06'),('hradmin',21651,'2017-10-25 09:24:13'),('hradmin',21621,'2017-10-25 09:25:11'),('hradmin',21657,'2017-10-25 09:26:52'),('hradmin',21621,'2017-10-25 09:31:23'),('hradmin',21639,'2017-10-25 09:32:26'),('hradmin',21645,'2017-10-25 09:32:36'),('hradmin',21651,'2017-10-25 09:32:41'),('hradmin',21621,'2017-10-25 09:33:27'),('hradmin',21639,'2017-10-25 09:34:02'),('hradmin',21645,'2017-10-25 09:34:55'),('hradmin',21651,'2017-10-25 09:35:07'),('hradmin',21651,'2017-10-25 09:35:15'),('hradmin',21621,'2017-10-25 09:35:28'),('hradmin',21657,'2017-10-25 09:35:55'),('hradmin',21639,'2017-10-25 09:46:45'),('hradmin',21639,'2017-10-25 10:10:50'),('hradmin',21645,'2017-10-25 10:14:16'),('hradmin',21651,'2017-10-25 10:16:55'),('hradmin',21621,'2017-10-25 10:17:47'),('hradmin',21657,'2017-10-25 10:19:13'),('hradmin',21621,'2017-10-25 10:30:34'),('hradmin',21657,'2017-10-25 10:32:32'),('hradmin',21603,'2017-10-25 10:51:17'),('hradmin',21609,'2017-10-25 10:57:44'),('hradmin',21621,'2017-10-25 10:57:47'),('hradmin',21609,'2017-10-25 10:59:30'),('hradmin',21621,'2017-10-25 11:01:37'),('hradmin',21639,'2017-10-25 11:03:51'),('admin',21651,'2017-10-25 11:11:24'),('admin',NULL,'2017-10-25 11:12:46'),('hradmin',21645,'2017-10-25 11:13:18'),('hradmin',21651,'2017-10-25 11:14:23'),('hradmin',21555,'2017-10-25 11:15:43'),('admin',NULL,'2017-10-25 11:16:13'),('admin',NULL,'2017-10-25 11:16:14'),('admin',NULL,'2017-10-25 11:16:21'),('hradmin',21555,'2017-10-25 11:16:48'),('admin',21259,'2017-10-25 11:17:20'),('hradmin',37803,'2017-10-25 11:17:46'),('admin',21651,'2017-10-25 11:17:47'),('hradmin',21561,'2017-10-25 11:17:56'),('hradmin',21657,'2017-10-25 11:20:39'),('hradmin',21603,'2017-10-25 11:20:56'),('hradmin',21609,'2017-10-25 11:21:00'),('hradmin',21621,'2017-10-25 11:21:30'),('admin',21609,'2017-10-25 11:21:45'),('admin',21651,'2017-10-25 11:22:07'),('hradmin',36301,'2017-10-25 11:24:54'),('admin',25306,'2017-10-25 11:44:05'),('admin',36301,'2017-10-25 11:44:24'),('hradmin',21657,'2017-10-25 11:47:15'),('admin',21639,'2017-10-25 16:38:31'),('admin',21639,'2017-10-25 16:38:58'),('admin',36301,'2017-10-25 16:39:19'),('admin',21549,'2017-10-25 16:41:18'),('admin',21639,'2017-10-25 16:52:46'),('admin',21651,'2017-10-25 16:55:13'),('admin',36301,'2017-10-25 16:59:55'),('admin',36301,'2017-10-25 17:02:40'),('admin',36301,'2017-10-25 17:05:33'),('admin',21259,'2017-10-25 17:09:19'),('admin',21651,'2017-10-25 17:17:11'),('admin',36301,'2017-10-25 17:17:17'),('admin',21651,'2017-10-25 17:17:44'),('admin',21657,'2017-10-25 17:18:00'),('admin',21651,'2017-10-25 17:21:21'),('admin',36301,'2017-10-25 17:21:54'),('admin',21259,'2017-10-25 17:22:15'),('admin',21549,'2017-10-25 17:22:57'),('admin',36301,'2017-10-25 17:25:12'),('admin',36301,'2017-10-25 17:29:24'),('admin',21549,'2017-10-25 17:30:03'),('admin',36301,'2017-10-25 17:36:22'),('admin',36301,'2017-10-25 17:40:12'),('admin',36301,'2017-10-25 17:41:27'),('admin',36301,'2017-10-25 17:42:58'),('admin',21639,'2017-10-25 17:56:32'),('admin',36301,'2017-10-25 17:59:57'),('admin',21639,'2017-10-25 18:00:02'),('admin',44813,'2017-10-25 18:00:26'),('admin',21549,'2017-10-25 18:01:01'),('admin',21549,'2017-10-25 18:03:18'),('admin',25306,'2017-10-27 09:31:12'),('admin',34811,'2017-10-27 09:32:20'),('admin',36301,'2017-10-27 09:34:39'),('admin',21645,'2017-10-27 09:37:13'),('admin',21549,'2017-10-27 09:39:55'),('admin',21639,'2017-10-27 09:42:43'),('admin',36301,'2017-10-27 09:53:35'),('admin',36301,'2017-10-27 09:54:50'),('admin',21561,'2017-10-27 10:01:22'),('admin',21561,'2017-10-27 10:05:28'),('admin',36301,'2017-10-27 10:06:11'),('admin',22401,'2017-10-27 10:07:36'),('admin',21561,'2017-10-27 10:08:03'),('admin',22401,'2017-10-27 10:08:49'),('admin',21507,'2017-10-27 10:09:00'),('admin',21259,'2017-10-27 10:09:17'),('admin',21501,'2017-10-27 10:09:36'),('admin',21507,'2017-10-27 10:09:47'),('admin',21513,'2017-10-27 10:09:50'),('admin',21519,'2017-10-27 10:09:57'),('admin',21525,'2017-10-27 10:10:01'),('admin',21531,'2017-10-27 10:10:19'),('admin',21537,'2017-10-27 10:10:23'),('admin',21537,'2017-10-27 10:10:32'),('admin',21543,'2017-10-27 10:10:36'),('admin',21549,'2017-10-27 10:10:40'),('admin',21657,'2017-10-27 10:13:58'),('admin',25306,'2017-10-27 10:15:48'),('admin',25306,'2017-10-27 10:16:39'),('admin',25306,'2017-10-27 10:17:33'),('admin',25306,'2017-10-27 10:17:43'),('admin',21561,'2017-10-27 10:37:37'),('admin',21639,'2017-10-27 10:38:27'),('admin',21645,'2017-10-27 10:38:54'),('admin',21651,'2017-10-27 10:39:13'),('admin',21657,'2017-10-27 10:43:16'),('admin',21561,'2017-10-27 10:44:55'),('admin',21657,'2017-10-27 10:45:21'),('admin',21657,'2017-10-27 10:48:37'),('admin',21651,'2017-10-27 10:52:29'),('admin',21651,'2017-10-27 10:58:09'),('admin',21561,'2017-10-27 11:09:44'),('admin',21585,'2017-10-27 11:16:03'),('admin',21597,'2017-10-27 11:16:15'),('admin',21657,'2017-10-27 11:17:04'),('admin',21651,'2017-10-27 11:20:54'),('admin',21657,'2017-10-27 11:28:57'),('admin',21657,'2017-10-27 11:37:14'),('admin',21657,'2017-10-27 11:42:21'),('admin',21657,'2017-10-27 11:52:06'),('admin',21597,'2017-10-27 11:54:35'),('admin',21639,'2017-10-27 12:11:26'),('admin',21621,'2017-10-27 12:14:49'),('admin',21657,'2017-10-27 12:20:06'),('admin',21657,'2017-10-27 12:20:28'),('admin',21657,'2017-10-27 12:20:50'),('admin',21657,'2017-10-27 12:20:55'),('admin',21657,'2017-10-27 13:21:47'),('admin',21645,'2017-10-27 13:21:56'),('admin',21657,'2017-10-27 13:23:18'),('admin',21549,'2017-10-27 13:24:56'),('admin',21657,'2017-10-27 13:25:26'),('admin',21657,'2017-10-27 13:28:02'),('admin',21657,'2017-10-27 13:31:09'),('admin',21657,'2017-10-27 13:33:33'),('admin',21597,'2017-10-27 13:35:18'),('admin',21657,'2017-10-27 13:37:02'),('admin',21657,'2017-10-27 13:39:13'),('admin',21597,'2017-10-27 13:43:41'),('admin',21651,'2017-10-27 13:45:30'),('admin',21657,'2017-10-27 13:46:44'),('admin',21657,'2017-10-27 13:49:55'),('admin',21657,'2017-10-27 13:56:19'),('admin',21645,'2017-10-27 14:01:08'),('admin',21651,'2017-10-27 14:01:21'),('admin',25306,'2017-10-27 14:02:55'),('admin',39301,'2017-10-27 14:04:22'),('admin',21651,'2017-10-27 14:13:15'),('admin',21651,'2017-10-27 14:17:25'),('admin',21657,'2017-10-27 14:20:48'),('admin',21657,'2017-10-27 14:24:09'),('admin',21657,'2017-10-27 14:32:51'),('admin',21621,'2017-10-27 14:34:35'),('admin',25306,'2017-10-27 14:38:25'),('admin',36301,'2017-10-27 14:38:42'),('admin',21585,'2017-10-27 15:00:33'),('admin',21639,'2017-10-27 15:05:01'),('admin',21639,'2017-10-27 15:18:17'),('admin',21645,'2017-10-27 15:19:04'),('admin',21651,'2017-10-27 15:23:53'),('admin',21657,'2017-10-27 15:54:09'),('admin',21639,'2017-10-27 15:55:01'),('admin',21651,'2017-10-27 15:55:05'),('admin',21657,'2017-10-27 15:55:10'),('admin',21639,'2017-10-27 15:57:17'),('admin',21651,'2017-10-27 15:58:58'),('admin',21651,'2017-10-27 16:00:58'),('admin',21609,'2017-10-27 16:04:32'),('admin',21657,'2017-10-27 16:05:30'),('admin',21645,'2017-10-27 16:05:41'),('admin',21651,'2017-10-27 16:05:49'),('admin',21657,'2017-10-27 16:12:09'),('admin',21657,'2017-10-27 16:15:40'),('admin',21645,'2017-10-27 16:19:28'),('admin',21645,'2017-10-27 16:20:45'),('admin',21639,'2017-10-27 18:03:52'),('admin',21645,'2017-10-27 18:04:45'),('admin',21651,'2017-10-27 18:05:21'),('admin',21621,'2017-10-27 18:12:36'),('admin',21621,'2017-10-27 18:13:18'),('admin',21639,'2017-10-27 18:17:18'),('admin',21639,'2017-10-27 18:17:40'),('admin',21621,'2017-10-27 18:27:05'),('admin',21621,'2017-10-27 18:37:19'),('admin',21657,'2017-10-27 18:39:54'),('admin',21585,'2017-10-27 18:40:19'),('admin',21651,'2017-10-27 18:42:09'),('admin',21585,'2017-10-27 18:45:22'),('admin',21657,'2017-10-27 18:46:03'),('admin',21645,'2017-10-27 18:50:21'),('admin',21561,'2017-10-27 18:50:56'),('admin',21645,'2017-10-27 18:51:17'),('admin',21645,'2017-10-27 18:53:00'),('admin',21639,'2017-10-27 18:54:05'),('admin',21513,'2017-10-27 18:56:49'),('admin',21651,'2017-10-27 19:00:02'),('admin',21657,'2017-10-27 19:00:47'),('admin',21639,'2017-10-27 19:03:01'),('admin',21645,'2017-10-27 19:04:41'),('admin',21609,'2017-10-27 19:05:22'),('admin',21639,'2017-10-27 19:06:53'),('admin',21621,'2017-10-27 19:22:02'),('admin',21621,'2017-10-27 19:22:03'),('admin',21651,'2017-10-27 19:53:33'),('admin',21621,'2017-10-27 19:54:15'),('admin',21651,'2017-10-27 20:17:56'),('admin',21621,'2017-10-27 20:18:12'),('admin',21639,'2017-10-29 00:54:37'),('hradmin',21639,'2017-10-29 01:44:41'),('hradmin',21645,'2017-10-29 01:48:08'),('hradmin',21645,'2017-10-29 01:48:43'),('hradmin',21645,'2017-10-29 01:49:10'),('hradmin',21639,'2017-10-29 01:50:09'),('hradmin',21645,'2017-10-29 01:51:07'),('hradmin',21645,'2017-10-29 01:52:05'),('hradmin',21651,'2017-10-29 01:54:06'),('admin',21621,'2017-10-29 01:55:22'),('admin',21651,'2017-10-29 01:55:25'),('admin',21621,'2017-10-29 01:55:33'),('hradmin',21651,'2017-10-29 01:56:21'),('hradmin',21621,'2017-10-29 01:56:35'),('hradmin',21621,'2017-10-29 01:57:15'),('hradmin',21621,'2017-10-29 01:57:34'),('hradmin',21651,'2017-10-29 01:59:29'),('hradmin',21621,'2017-10-29 02:00:26'),('hradmin',21621,'2017-10-29 02:01:28'),('hradmin',21657,'2017-10-29 02:04:46'),('hradmin',21651,'2017-10-29 02:05:52'),('hradmin',21651,'2017-10-29 02:07:49'),('hradmin',21651,'2017-10-29 02:11:13'),('hradmin',21621,'2017-10-29 02:14:04'),('hradmin',21657,'2017-10-29 02:22:44'),('hradmin',21639,'2017-10-29 10:22:51'),('hradmin',21645,'2017-10-29 10:27:23'),('hradmin',21651,'2017-10-29 10:28:29'),('hradmin',21651,'2017-10-29 10:39:26'),('hradmin',21621,'2017-10-29 10:40:30'),('hradmin',21621,'2017-10-29 10:40:55'),('hradmin',21621,'2017-10-29 10:42:04'),('hradmin',21657,'2017-10-29 10:43:31'),('hradmin',21621,'2017-10-29 11:01:14'),('admin',21639,'2017-10-29 11:10:58'),('admin',21657,'2017-10-29 11:11:10'),('admin',21639,'2017-10-29 11:21:33'),('admin',21657,'2017-10-29 11:21:42'),('admin',21603,'2017-10-29 12:44:24'),('admin',21603,'2017-10-29 13:42:21'),('admin',21549,'2017-10-29 13:43:52'),('admin',21603,'2017-10-29 13:45:59'),('admin',21603,'2017-10-29 14:22:36'),('admin',21609,'2017-10-29 14:24:52'),('admin',21609,'2017-10-29 15:15:15'),('admin',21639,'2017-10-29 23:17:01'),('admin',21645,'2017-10-29 23:17:36'),('admin',21651,'2017-10-29 23:18:18'),('admin',21657,'2017-10-29 23:19:32'),('admin',21639,'2017-10-29 23:31:17'),('admin',21621,'2017-10-29 23:31:38'),('admin',21639,'2017-10-30 09:42:30'),('admin',21651,'2017-10-30 09:43:22'),('admin',21621,'2017-10-30 09:55:21'),('admin',21651,'2017-10-30 10:17:52'),('admin',21651,'2017-10-30 10:21:00'),('admin',21651,'2017-10-30 10:24:09'),('admin',21657,'2017-10-30 10:24:15'),('admin',21651,'2017-10-30 10:24:47'),('admin',21621,'2017-10-30 10:27:10'),('admin',21621,'2017-10-30 10:36:14'),('admin',21639,'2017-10-30 10:36:25'),('admin',21651,'2017-10-30 10:37:16'),('admin',21651,'2017-10-30 10:42:03'),('admin',21651,'2017-10-30 10:44:04'),('admin',21651,'2017-10-30 10:44:11'),('admin',21651,'2017-10-30 10:45:38'),('hradmin',21651,'2017-10-30 11:46:02'),('admin',21621,'2017-10-30 11:52:29'),('admin',21639,'2017-10-30 12:05:44'),('admin',21645,'2017-10-30 12:06:01'),('admin',21639,'2017-10-30 12:06:18'),('admin',21645,'2017-10-30 12:06:33'),('admin',21651,'2017-10-30 12:06:45'),('admin',21657,'2017-10-30 12:07:18'),('admin',21657,'2017-10-30 12:55:07'),('admin',21651,'2017-10-30 12:55:08'),('admin',21561,'2017-10-30 14:26:31'),('admin',21651,'2017-10-30 14:27:42'),('admin',21639,'2017-10-30 14:27:46'),('admin',21651,'2017-10-30 14:35:14'),('admin',21639,'2017-10-30 15:38:17'),('admin',21621,'2017-10-30 15:41:41'),('admin',21621,'2017-11-01 15:38:32'),('admin',23101,'2017-11-01 15:45:35'),('admin',21639,'2017-11-01 15:50:40'),('admin',21645,'2017-11-01 15:58:09'),('admin',21651,'2017-11-01 16:01:02'),('admin',21609,'2017-11-01 16:03:47'),('admin',21639,'2017-11-01 16:13:40'),('admin',21561,'2017-11-01 16:27:50'),('admin',21259,'2017-11-01 16:28:21'),('admin',21561,'2017-11-01 16:28:31'),('admin',21531,'2017-11-01 16:29:45'),('admin',21561,'2017-11-01 16:29:55'),('admin',21531,'2017-11-01 16:30:08'),('admin',21561,'2017-11-01 16:30:16'),('admin',21639,'2017-11-01 16:34:50'),('admin',21621,'2017-11-01 17:34:25'),('admin',21657,'2017-11-01 17:34:51'),('admin',21561,'2017-11-01 17:36:52'),('admin',21639,'2017-11-01 17:38:51'),('admin',21645,'2017-11-01 17:39:23'),('admin',21651,'2017-11-01 17:39:46'),('admin',21639,'2017-11-01 17:43:55'),('admin',21609,'2017-11-02 10:44:01'),('admin',21549,'2017-11-02 10:49:26'),('admin',21621,'2017-11-02 11:54:11'),('admin',21639,'2017-11-02 11:58:35'),('admin',21651,'2017-11-02 11:58:40'),('admin',21651,'2017-11-02 11:59:05'),('admin',21621,'2017-11-02 12:02:10'),('admin',21639,'2017-11-02 12:03:15'),('admin',25306,'2017-11-02 12:04:47'),('admin',39501,'2017-11-02 12:04:53'),('admin',21651,'2017-11-02 12:08:32'),('admin',21621,'2017-11-02 12:09:03'),('admin',21651,'2017-11-02 12:09:42'),('admin',21651,'2017-11-02 13:25:12'),('admin',21621,'2017-11-02 14:08:10'),('admin',21639,'2017-11-02 15:27:35'),('admin',21639,'2017-11-02 15:27:46'),('admin',21639,'2017-11-02 15:27:50'),('admin',21639,'2017-11-02 15:27:55'),('admin',21639,'2017-11-02 15:40:04'),('admin',21639,'2017-11-02 15:40:15'),('admin',21645,'2017-11-02 15:48:10'),('admin',21651,'2017-11-02 15:48:18'),('admin',21621,'2017-11-02 15:48:46'),('admin',21651,'2017-11-02 16:54:28'),('admin',21639,'2017-11-02 16:55:07'),('admin',21651,'2017-11-02 16:55:39'),('admin',21657,'2017-11-02 17:08:40'),('admin',21561,'2017-11-02 17:08:54'),('admin',21639,'2017-11-02 17:12:04'),('admin',21621,'2017-11-02 17:14:58'),('admin',21639,'2017-11-02 17:19:25'),('admin',21645,'2017-11-02 17:19:56'),('admin',21651,'2017-11-02 17:20:46'),('admin',21585,'2017-11-02 17:21:38'),('admin',21585,'2017-11-02 17:22:31'),('admin',21259,'2017-11-02 17:23:49'),('admin',21501,'2017-11-02 17:26:13'),('admin',21507,'2017-11-02 17:28:01'),('admin',21519,'2017-11-02 17:28:20'),('admin',21525,'2017-11-02 17:28:25'),('admin',21519,'2017-11-02 17:30:39'),('admin',21531,'2017-11-02 17:31:16'),('admin',21543,'2017-11-02 17:31:22'),('admin',21549,'2017-11-02 17:31:47'),('admin',21585,'2017-11-02 17:35:26'),('admin',21591,'2017-11-02 17:36:29'),('admin',21597,'2017-11-02 17:36:42'),('admin',21603,'2017-11-02 17:37:10'),('admin',21609,'2017-11-02 17:39:05'),('admin',21621,'2017-11-02 17:40:57'),('admin',21531,'2017-11-02 17:43:40'),('admin',21561,'2017-11-02 17:53:37'),('admin',21531,'2017-11-02 17:54:13'),('admin',21651,'2017-11-02 17:57:03'),('admin',21561,'2017-11-02 17:57:32'),('admin',21651,'2017-11-02 17:58:37'),('admin',21561,'2017-11-02 17:58:51'),('admin',21651,'2017-11-02 17:59:21'),('admin',21561,'2017-11-02 17:59:45'),('admin',21651,'2017-11-02 18:00:09'),('admin',21561,'2017-11-02 18:00:50'),('admin',21651,'2017-11-02 18:01:35'),('admin',21561,'2017-11-02 18:01:59'),('admin',21651,'2017-11-02 18:02:53'),('admin',21657,'2017-11-02 18:03:48'),('admin',21561,'2017-11-02 18:05:20'),('admin',21651,'2017-11-02 18:06:02'),('admin',21657,'2017-11-02 18:06:16'),('admin',21657,'2017-11-02 18:06:51'),('admin',21531,'2017-11-02 18:14:03'),('admin',21561,'2017-11-02 18:16:42'),('admin',21259,'2017-11-03 09:10:02'),('admin',21603,'2017-11-03 09:20:17'),('admin',21259,'2017-11-03 09:25:30'),('admin',21501,'2017-11-03 09:25:50'),('admin',21507,'2017-11-03 09:29:26'),('admin',21513,'2017-11-03 09:30:56'),('admin',21519,'2017-11-03 09:31:06'),('admin',21531,'2017-11-03 09:31:11'),('admin',21537,'2017-11-03 09:31:15'),('admin',21543,'2017-11-03 09:31:19'),('admin',21555,'2017-11-03 09:31:26'),('admin',21561,'2017-11-03 09:39:56'),('admin',21597,'2017-11-03 09:40:10'),('admin',21603,'2017-11-03 09:40:32'),('admin',21597,'2017-11-03 09:41:07'),('admin',21603,'2017-11-03 09:43:00'),('admin',21513,'2017-11-03 09:44:08'),('admin',21597,'2017-11-03 09:44:15'),('admin',21603,'2017-11-03 09:45:33'),('admin',21597,'2017-11-03 09:46:27'),('admin',21603,'2017-11-03 09:47:24'),('admin',21597,'2017-11-03 09:47:35'),('admin',21603,'2017-11-03 10:03:04'),('admin',21621,'2017-11-03 10:05:49'),('admin',21639,'2017-11-03 10:23:24'),('admin',21645,'2017-11-03 10:24:16'),('admin',21651,'2017-11-03 10:24:21'),('admin',21657,'2017-11-03 10:30:36'),('admin',21549,'2017-11-03 10:32:03'),('09258',21639,'2017-11-03 10:50:48'),('09258',21657,'2017-11-03 10:50:53'),('09258',21645,'2017-11-03 10:51:19'),('09258',21651,'2017-11-03 10:51:28'),('03574',21639,'2017-11-03 10:51:48'),('03574',21645,'2017-11-03 10:52:04'),('03574',21651,'2017-11-03 10:52:15'),('03574',21657,'2017-11-03 10:52:28'),('03285',21639,'2017-11-03 10:52:46'),('03285',21645,'2017-11-03 10:53:00'),('03285',21621,'2017-11-03 10:56:07'),('01255',21639,'2017-11-03 11:03:55'),('admin',21597,'2017-11-03 11:04:28'),('00851',21639,'2017-11-03 11:05:47'),('00851',21621,'2017-11-03 11:06:19'),('03285',21621,'2017-11-03 11:06:38'),('admin',21603,'2017-11-03 11:10:36'),('admin',21621,'2017-11-03 11:13:46'),('admin',21603,'2017-11-03 11:17:39'),('03574',21603,'2017-11-03 11:26:37'),('admin',21603,'2017-11-03 11:28:18'),('admin',21597,'2017-11-03 11:28:45'),('03574',21603,'2017-11-03 11:29:23'),('admin',21603,'2017-11-03 11:37:20'),('03574',21603,'2017-11-03 11:39:32'),('03574',21603,'2017-11-03 11:49:46'),('03574',21603,'2017-11-03 11:55:02'),('admin',21621,'2017-11-03 13:11:58'),('admin',21651,'2017-11-03 13:43:38'),('admin',21639,'2017-11-03 13:46:41'),('admin',21651,'2017-11-03 13:46:46'),('admin',21651,'2017-11-03 13:46:54'),('admin',21259,'2017-11-03 13:47:36'),('admin',21639,'2017-11-03 13:48:26'),('admin',21645,'2017-11-03 13:48:38'),('03574',21603,'2017-11-03 14:05:01'),('admin',21603,'2017-11-03 14:05:47'),('03574',21603,'2017-11-03 14:07:10'),('03574',21621,'2017-11-03 14:07:33'),('admin',21549,'2017-11-03 14:08:52'),('admin',21549,'2017-11-03 14:14:21'),('admin',21549,'2017-11-03 14:24:20'),('admin',21603,'2017-11-03 14:24:33'),('admin',21507,'2017-11-03 14:25:41'),('admin',21603,'2017-11-03 14:25:53'),('admin',21549,'2017-11-03 14:26:45'),('admin',21621,'2017-11-03 14:27:11'),('03574',21621,'2017-11-03 14:28:41'),('admin',21651,'2017-11-03 14:39:46'),('03574',21603,'2017-11-03 14:40:20'),('03574',21603,'2017-11-03 14:40:39'),('03574',21621,'2017-11-03 14:41:01'),('03574',21603,'2017-11-03 14:41:24'),('admin',21651,'2017-11-03 14:41:49'),('03574',21621,'2017-11-03 14:41:52'),('admin',21639,'2017-11-03 14:42:40'),('03574',21621,'2017-11-03 14:45:28'),('03574',21621,'2017-11-03 14:46:15'),('03574',21621,'2017-11-03 14:46:20'),('admin',21645,'2017-11-03 14:46:29'),('admin',21645,'2017-11-03 14:46:39'),('03574',21621,'2017-11-03 14:47:01'),('03574',21603,'2017-11-03 14:47:28'),('03574',21621,'2017-11-03 14:47:42'),('admin',21651,'2017-11-03 14:51:35'),('admin',21621,'2017-11-03 14:54:55'),('admin',21603,'2017-11-03 14:58:30'),('admin',21549,'2017-11-03 15:00:52'),('admin',21549,'2017-11-03 15:06:27'),('admin',21603,'2017-11-03 15:06:40'),('admin',21549,'2017-11-03 15:07:35'),('admin',21603,'2017-11-03 15:07:54'),('admin',21513,'2017-11-03 15:09:06'),('admin',21603,'2017-11-03 15:11:02'),('admin',21603,'2017-11-03 15:46:01'),('admin',21513,'2017-11-03 15:48:14'),('admin',21603,'2017-11-03 15:51:37'),('admin',21639,'2017-11-03 15:54:16'),('admin',21645,'2017-11-03 15:54:50'),('admin',21651,'2017-11-03 15:55:24'),('admin',21657,'2017-11-03 15:56:47'),('admin',21651,'2017-11-03 15:57:11'),('hradmin',21603,'2017-11-03 16:08:24'),('hradmin',21621,'2017-11-03 16:08:52'),('hradmin',21639,'2017-11-03 16:17:42'),('hradmin',21645,'2017-11-03 16:23:03'),('hradmin',21651,'2017-11-03 16:23:27'),('hradmin',21657,'2017-11-03 16:31:53'),('admin',21259,'2017-11-03 16:38:05'),('admin',21621,'2017-11-03 16:45:17'),('admin',21603,'2017-11-03 16:46:06'),('admin',21609,'2017-11-03 16:49:34'),('admin',21615,'2017-11-03 16:50:27'),('admin',21621,'2017-11-03 16:52:49'),('03574',21621,'2017-11-03 16:57:42'),('03574',21603,'2017-11-03 16:58:26'),('03574',21621,'2017-11-03 17:00:39'),('03574',21603,'2017-11-03 17:01:10'),('03574',21621,'2017-11-03 17:01:39'),('admin',21549,'2017-11-03 17:08:16'),('admin',21597,'2017-11-03 17:09:08'),('admin',21603,'2017-11-03 17:10:17'),('admin',21549,'2017-11-03 17:13:16'),('admin',21597,'2017-11-03 17:13:59'),('admin',21549,'2017-11-03 17:15:11'),('admin',21513,'2017-11-03 17:16:07'),('admin',21621,'2017-11-03 17:23:13'),('admin',21597,'2017-11-03 17:27:41'),('admin',21259,'2017-11-03 17:32:35'),('admin',21501,'2017-11-03 17:32:55'),('admin',21549,'2017-11-03 17:35:02'),('admin',21259,'2017-11-06 09:28:26'),('admin',21501,'2017-11-06 09:28:52'),('admin',21507,'2017-11-06 09:29:01'),('admin',21513,'2017-11-06 09:32:39'),('admin',21549,'2017-11-06 09:43:35'),('admin',21651,'2017-11-06 09:50:24'),('admin',21549,'2017-11-06 09:57:02'),('admin',21651,'2017-11-06 10:03:18'),('admin',21585,'2017-11-06 10:10:30'),('admin',21597,'2017-11-06 10:10:41'),('admin',21603,'2017-11-06 10:11:07'),('admin',21621,'2017-11-06 10:11:38'),('admin',21603,'2017-11-06 10:12:54'),('admin',21651,'2017-11-06 10:15:02'),('admin',21621,'2017-11-06 10:18:09'),('admin',21549,'2017-11-06 10:18:18'),('admin',21639,'2017-11-06 10:21:13'),('admin',21549,'2017-11-06 10:24:17'),('admin',21603,'2017-11-06 10:29:12'),('admin',21639,'2017-11-06 10:41:37'),('admin',20184,'2017-11-06 10:44:12'),('admin',21597,'2017-11-06 10:46:00'),('03574',21603,'2017-11-06 10:47:14'),('admin',21639,'2017-11-06 10:47:15'),('admin',21549,'2017-11-06 10:47:25'),('03574',21621,'2017-11-06 10:51:16'),('admin',21621,'2017-11-06 10:52:17'),('03574',21621,'2017-11-06 10:53:45'),('admin',21549,'2017-11-06 10:59:20'),('admin',21549,'2017-11-06 11:05:24'),('admin',21639,'2017-11-06 11:12:52'),('admin',21585,'2017-11-06 11:13:17'),('admin',21549,'2017-11-06 11:13:36'),('admin',21549,'2017-11-06 11:14:58'),('admin',21621,'2017-11-06 11:15:35'),('admin',23101,'2017-11-06 11:15:41'),('admin',21621,'2017-11-06 11:16:18'),('admin',21609,'2017-11-06 11:18:06'),('admin',21621,'2017-11-06 11:18:56'),('admin',21609,'2017-11-06 11:19:07'),('admin',21603,'2017-11-06 11:19:43'),('admin',21621,'2017-11-06 11:20:10'),('admin',21609,'2017-11-06 11:21:04'),('admin',21603,'2017-11-06 11:24:57'),('admin',21609,'2017-11-06 11:28:48'),('admin',21615,'2017-11-06 11:28:55'),('admin',21609,'2017-11-06 11:29:26'),('admin',21603,'2017-11-06 11:30:02'),('admin',21615,'2017-11-06 11:32:55'),('admin',21621,'2017-11-06 11:32:59'),('admin',21513,'2017-11-06 11:33:04'),('admin',21603,'2017-11-06 11:33:15'),('admin',21513,'2017-11-06 11:33:46'),('admin',21621,'2017-11-06 11:34:10'),('admin',21603,'2017-11-06 11:34:31'),('admin',21609,'2017-11-06 11:34:34'),('admin',21597,'2017-11-06 11:37:20'),('admin',21609,'2017-11-06 11:44:51'),('admin',21609,'2017-11-06 11:51:28'),('admin',21549,'2017-11-06 11:51:37'),('admin',21621,'2017-11-06 11:52:45'),('admin',21603,'2017-11-06 11:52:56'),('admin',21615,'2017-11-06 11:53:43'),('admin',21597,'2017-11-06 11:57:11'),('admin',23101,'2017-11-06 11:57:59'),('admin',21549,'2017-11-06 11:58:20'),('admin',21621,'2017-11-06 11:58:38'),('admin',21609,'2017-11-06 12:02:09'),('admin',21603,'2017-11-06 12:03:00'),('admin',21609,'2017-11-06 12:05:55'),('admin',21603,'2017-11-06 12:07:21'),('admin',21609,'2017-11-06 12:09:02'),('admin',21615,'2017-11-06 12:09:21'),('admin',21615,'2017-11-06 12:10:32'),('admin',21615,'2017-11-06 12:11:07'),('admin',21615,'2017-11-06 12:11:28'),('admin',21615,'2017-11-06 12:12:34'),('admin',21621,'2017-11-06 12:13:21'),('admin',21615,'2017-11-06 12:16:01'),('admin',21615,'2017-11-06 12:31:25'),('admin',21615,'2017-11-06 12:32:37'),('admin',21609,'2017-11-06 14:09:46'),('admin',21609,'2017-11-06 14:26:30'),('admin',21621,'2017-11-06 14:31:44'),('admin',21615,'2017-11-06 14:34:37'),('hradmin',21603,'2017-11-06 14:43:08'),('hradmin',21621,'2017-11-06 14:43:35'),('hradmin',21603,'2017-11-06 14:48:05'),('admin',21609,'2017-11-06 14:51:26'),('admin',21615,'2017-11-06 14:53:30'),('admin',21603,'2017-11-06 14:54:50'),('admin',21549,'2017-11-06 14:55:08'),('admin',21603,'2017-11-06 14:57:31'),('admin',21513,'2017-11-06 15:02:28'),('admin',21603,'2017-11-06 15:03:49'),('admin',21621,'2017-11-06 15:14:41'),('admin',21507,'2017-11-06 15:15:23'),('admin',21513,'2017-11-06 15:15:58'),('admin',21555,'2017-11-06 15:16:45'),('admin',21567,'2017-11-06 15:18:40'),('admin',21259,'2017-11-06 15:19:49'),('admin',21501,'2017-11-06 15:22:18'),('admin',21259,'2017-11-06 15:23:31'),('admin',21621,'2017-11-06 15:26:33'),('admin',21603,'2017-11-06 15:28:31'),('admin',21621,'2017-11-06 15:31:46'),('03574',21621,'2017-11-06 15:32:18'),('03574',21645,'2017-11-06 15:33:22'),('admin',21645,'2017-11-06 15:34:40'),('admin',21651,'2017-11-06 15:35:42'),('admin',21639,'2017-11-06 15:38:11'),('admin',21645,'2017-11-06 15:39:54'),('admin',21651,'2017-11-06 15:40:04'),('admin',21657,'2017-11-06 15:40:16'),('admin',21585,'2017-11-06 15:42:16'),('admin',21657,'2017-11-06 15:43:19'),('admin',21585,'2017-11-06 15:45:15'),('admin',21657,'2017-11-06 15:45:33'),('admin',21597,'2017-11-06 15:57:01'),('admin',21621,'2017-11-06 16:00:12'),('admin',21597,'2017-11-06 16:08:37'),('admin',21621,'2017-11-06 16:08:47'),('admin',21597,'2017-11-06 16:10:03'),('admin',21259,'2017-11-06 16:19:10'),('admin',21603,'2017-11-06 16:39:19'),('admin',21259,'2017-11-06 16:43:12'),('admin',21585,'2017-11-06 16:43:57'),('admin',21603,'2017-11-06 16:44:00'),('admin',21657,'2017-11-06 16:47:26'),('admin',21549,'2017-11-06 17:21:40'),('admin',21259,'2017-11-06 21:45:46'),('admin',21501,'2017-11-06 21:46:10'),('admin',21259,'2017-11-06 21:46:36'),('admin',21609,'2017-11-06 21:52:19'),('admin',21555,'2017-11-06 23:20:57'),('admin',21259,'2017-11-07 10:15:58'),('admin',21639,'2017-11-07 10:19:52'),('hradmin',21639,'2017-11-07 10:39:34'),('hradmin',21645,'2017-11-07 10:43:33'),('hradmin',21651,'2017-11-07 10:46:15'),('hradmin',21657,'2017-11-07 10:48:22'),('admin',21639,'2017-11-07 14:09:11'),('admin',21603,'2017-11-07 14:12:52'),('admin',21259,'2017-11-07 14:22:05'),('admin',21639,'2017-11-07 14:24:46'),('admin',21645,'2017-11-07 14:28:58'),('admin',21651,'2017-11-07 14:32:14'),('admin',21657,'2017-11-07 14:35:51'),('admin',21651,'2017-11-07 14:35:54'),('admin',21621,'2017-11-07 14:36:17'),('admin',21657,'2017-11-07 14:37:01'),('admin',21259,'2017-11-07 14:39:03'),('admin',21501,'2017-11-07 14:39:30'),('admin',21507,'2017-11-07 14:40:09'),('admin',21513,'2017-11-07 14:41:25'),('admin',21525,'2017-11-07 14:42:32'),('admin',21531,'2017-11-07 14:44:58'),('admin',21537,'2017-11-07 14:45:17'),('admin',21543,'2017-11-07 14:45:24'),('admin',21549,'2017-11-07 14:45:31'),('admin',21603,'2017-11-07 14:49:17'),('admin',21621,'2017-11-07 14:51:08'),('admin',21609,'2017-11-07 14:58:04'),('admin',21615,'2017-11-07 14:59:25'),('admin',21597,'2017-11-07 15:00:01'),('admin',21525,'2017-11-07 15:01:45'),('03574',21651,'2017-11-07 15:04:26'),('03574',21603,'2017-11-07 15:04:55'),('03574',21621,'2017-11-07 15:05:15'),('admin',21549,'2017-11-07 15:05:48'),('admin',21621,'2017-11-07 15:09:30'),('admin',21567,'2017-11-07 15:09:47'),('admin',21259,'2017-11-07 15:11:19'),('admin',21621,'2017-11-07 15:16:27'),('admin',21609,'2017-11-07 15:40:30'),('admin',21615,'2017-11-07 15:55:46'),('admin',21549,'2017-11-07 16:54:08'),('admin',21609,'2017-11-07 17:12:55'),('admin',21615,'2017-11-07 17:14:11'),('admin',21609,'2017-11-07 17:27:00'),('admin',21615,'2017-11-07 17:54:06'),('admin',21621,'2017-11-07 17:54:54'),('admin',21621,'2017-11-08 09:34:55'),('admin',21621,'2017-11-08 09:43:55'),('admin',21603,'2017-11-08 09:45:45'),('admin',21621,'2017-11-08 09:48:27'),('admin',21513,'2017-11-08 10:39:11'),('admin',21621,'2017-11-08 10:41:32'),('admin',21259,'2017-11-08 10:58:04'),('admin',21501,'2017-11-08 11:02:18'),('admin',21259,'2017-11-08 11:09:57'),('admin',21259,'2017-11-08 11:10:01'),('admin',21259,'2017-11-08 11:10:17'),('admin',21259,'2017-11-08 11:10:58'),('admin',21259,'2017-11-08 11:11:02'),('admin',21259,'2017-11-08 11:11:11'),('admin',21573,'2017-11-08 11:11:21'),('admin',21573,'2017-11-08 11:11:23'),('admin',21573,'2017-11-08 11:11:24'),('admin',21259,'2017-11-08 11:11:32'),('admin',21573,'2017-11-08 11:11:45'),('admin',21259,'2017-11-08 11:12:01'),('admin',21259,'2017-11-08 11:12:28'),('admin',21259,'2017-11-08 11:12:38'),('admin',21501,'2017-11-08 11:12:39'),('admin',21501,'2017-11-08 11:12:45'),('admin',21501,'2017-11-08 11:12:46'),('admin',21501,'2017-11-08 11:12:46'),('admin',21501,'2017-11-08 11:12:59'),('admin',21507,'2017-11-08 11:18:58'),('admin',21507,'2017-11-08 11:19:12'),('admin',21507,'2017-11-08 11:19:13'),('admin',21259,'2017-11-08 11:19:33'),('admin',21507,'2017-11-08 11:19:36'),('admin',21621,'2017-11-08 11:29:33'),('admin',21259,'2017-11-08 11:29:42'),('admin',21621,'2017-11-08 11:29:53'),('admin',21259,'2017-11-08 11:29:59'),('admin',21621,'2017-11-08 11:30:10'),('admin',21513,'2017-11-08 11:34:00'),('admin',21513,'2017-11-08 11:35:26'),('admin',21513,'2017-11-08 11:37:21'),('admin',21513,'2017-11-08 11:37:52'),('admin',21597,'2017-11-08 11:39:17'),('admin',21513,'2017-11-08 11:40:10'),('admin',21513,'2017-11-08 11:47:08'),('admin',21531,'2017-11-08 11:47:29'),('admin',21531,'2017-11-08 11:47:29'),('admin',21537,'2017-11-08 11:53:51'),('admin',21531,'2017-11-08 11:54:02'),('admin',21543,'2017-11-08 11:54:57'),('admin',21543,'2017-11-08 11:55:02'),('admin',21543,'2017-11-08 11:55:59'),('admin',21543,'2017-11-08 11:56:36'),('admin',21525,'2017-11-08 11:58:36'),('admin',21525,'2017-11-08 11:58:36'),('admin',21531,'2017-11-08 11:58:50'),('admin',21525,'2017-11-08 11:58:53'),('admin',21525,'2017-11-08 11:58:59'),('admin',21609,'2017-11-08 12:03:29'),('admin',21621,'2017-11-08 12:05:19'),('admin',21513,'2017-11-08 12:05:35'),('admin',21621,'2017-11-08 12:05:47'),('admin',21525,'2017-11-08 12:06:39'),('admin',21609,'2017-11-08 12:06:54'),('admin',21621,'2017-11-08 12:08:53'),('admin',21621,'2017-11-08 12:09:26'),('admin',21615,'2017-11-08 12:09:43'),('admin',21609,'2017-11-08 12:09:48'),('admin',21525,'2017-11-08 13:37:32'),('admin',21549,'2017-11-08 13:38:03'),('admin',21549,'2017-11-08 13:38:29'),('admin',21549,'2017-11-08 13:38:30'),('admin',21549,'2017-11-08 13:38:32'),('admin',21549,'2017-11-08 13:38:39'),('admin',21549,'2017-11-08 13:39:03'),('admin',21585,'2017-11-08 13:40:05'),('admin',21585,'2017-11-08 13:40:05'),('admin',21585,'2017-11-08 13:40:07'),('admin',21585,'2017-11-08 13:40:27'),('admin',21513,'2017-11-08 13:57:33'),('admin',21585,'2017-11-08 13:58:55'),('admin',21597,'2017-11-08 13:59:11'),('admin',21597,'2017-11-08 14:00:10'),('admin',21597,'2017-11-08 14:00:11'),('admin',21591,'2017-11-08 14:00:58'),('admin',21591,'2017-11-08 14:01:05'),('admin',21591,'2017-11-08 14:01:08'),('admin',21621,'2017-11-08 14:02:48'),('admin',21591,'2017-11-08 14:04:57'),('admin',21585,'2017-11-08 14:08:03'),('admin',21597,'2017-11-08 14:14:34'),('admin',21597,'2017-11-08 14:16:50'),('admin',21597,'2017-11-08 14:17:59'),('admin',21597,'2017-11-08 14:21:13'),('admin',21591,'2017-11-08 14:21:37'),('admin',21597,'2017-11-08 14:23:59'),('admin',21597,'2017-11-08 14:26:52'),('admin',21597,'2017-11-08 14:27:41'),('admin',21549,'2017-11-08 14:30:36'),('admin',21549,'2017-11-08 14:30:42'),('admin',21549,'2017-11-08 14:32:13'),('admin',21549,'2017-11-08 14:44:37'),('admin',21549,'2017-11-08 14:56:42'),('admin',21591,'2017-11-08 14:57:57'),('admin',21549,'2017-11-08 14:58:48'),('admin',21507,'2017-11-08 15:02:09'),('admin',21549,'2017-11-08 15:02:17'),('admin',21549,'2017-11-08 15:02:17'),('admin',21549,'2017-11-08 15:02:20'),('admin',21549,'2017-11-08 15:02:26'),('admin',21507,'2017-11-08 15:06:35'),('admin',21543,'2017-11-08 15:07:17'),('admin',21549,'2017-11-08 15:07:21'),('admin',21555,'2017-11-08 15:17:07'),('admin',21507,'2017-11-08 15:20:03'),('admin',21555,'2017-11-08 15:20:21'),('admin',21561,'2017-11-08 15:23:12'),('admin',21603,'2017-11-08 15:24:30'),('admin',21259,'2017-11-08 15:24:49'),('admin',21603,'2017-11-08 15:24:59'),('admin',21621,'2017-11-08 15:38:44'),('admin',21549,'2017-11-08 15:39:40'),('admin',21621,'2017-11-08 15:40:55'),('admin',21621,'2017-11-08 15:42:03'),('t5100006',21621,'2017-11-08 15:46:54'),('t5100006',21621,'2017-11-08 15:48:11'),('t5100006',21621,'2017-11-08 15:48:12'),('t5100006',21549,'2017-11-08 15:48:23'),('t5100006',21621,'2017-11-08 15:48:32'),('t5100006',21603,'2017-11-08 15:49:08'),('t5100006',21621,'2017-11-08 15:49:12'),('admin',21609,'2017-11-08 16:02:51'),('admin',21603,'2017-11-08 16:04:31'),('admin',36301,'2017-11-09 15:32:47'),('admin',39801,'2017-11-09 15:34:46'),('admin',36301,'2017-11-09 15:35:26'),('admin',21639,'2017-11-09 15:37:53'),('admin',21513,'2017-11-09 15:38:12'),('admin',21651,'2017-11-09 15:38:14'),('admin',21639,'2017-11-09 15:38:49'),('admin',21651,'2017-11-09 15:39:29'),('admin',21651,'2017-11-09 15:43:42'),('admin',36301,'2017-11-09 15:50:41'),('admin',21639,'2017-11-09 16:11:25'),('admin',21639,'2017-11-09 16:13:37'),('admin',25306,'2017-11-09 16:15:06'),('admin',39501,'2017-11-09 16:17:29'),('admin',20184,'2017-11-09 16:18:20'),('admin',21639,'2017-11-09 16:18:28'),('admin',21639,'2017-11-09 16:19:11'),('admin',21639,'2017-11-09 16:19:20'),('admin',21603,'2017-11-09 16:36:08'),('admin',21651,'2017-11-09 16:38:17'),('admin',21639,'2017-11-09 16:38:30'),('admin',21639,'2017-11-09 16:39:49'),('admin',39810,'2017-11-09 16:46:08'),('admin',39810,'2017-11-09 16:51:05'),('admin',39810,'2017-11-09 16:52:59'),('admin',39810,'2017-11-09 17:04:31'),('admin',39810,'2017-11-09 17:08:36'),('admin',39810,'2017-11-09 17:08:41'),('admin',20184,'2017-11-09 17:25:26'),('admin',21651,'2017-11-09 17:25:34'),('admin',21621,'2017-11-09 17:33:12'),('admin',39810,'2017-11-09 17:41:54'),('admin',25306,'2017-11-09 17:43:33'),('admin',36301,'2017-11-09 17:44:12'),('admin',39810,'2017-11-09 17:50:10'),('admin',37410,'2017-11-09 17:50:28'),('admin',39810,'2017-11-09 17:50:48'),('admin',39301,'2017-11-09 17:52:34'),('admin',36301,'2017-11-09 18:07:44'),('admin',36301,'2017-11-09 18:08:14'),('admin',36301,'2017-11-09 18:16:24'),('admin',36301,'2017-11-09 18:16:31'),('admin',36301,'2017-11-09 18:16:37'),('admin',20184,'2017-11-09 18:23:18'),('admin',21651,'2017-11-09 18:23:29'),('admin',36301,'2017-11-10 09:17:24'),('admin',20184,'2017-11-10 09:17:44'),('admin',21621,'2017-11-10 09:27:14'),('admin',25306,'2017-11-10 09:31:16'),('admin',36301,'2017-11-10 09:33:42'),('admin',25306,'2017-11-10 09:37:28'),('admin',36301,'2017-11-10 09:37:51'),('admin',36301,'2017-11-10 09:38:37'),('admin',36301,'2017-11-10 09:38:54'),('admin',39810,'2017-11-10 09:47:06'),('admin',33949,'2017-11-10 09:48:48'),('admin',20184,'2017-11-10 09:48:49'),('admin',36301,'2017-11-10 09:51:50'),('admin',20184,'2017-11-10 09:53:05'),('admin',20184,'2017-11-10 09:53:26'),('admin',21639,'2017-11-10 09:53:44'),('admin',20184,'2017-11-10 09:53:53'),('admin',21651,'2017-11-10 09:54:25'),('admin',20184,'2017-11-10 10:02:25'),('admin',36301,'2017-11-10 10:04:25'),('admin',20184,'2017-11-10 10:06:07'),('admin',25306,'2017-11-10 10:06:36'),('admin',21621,'2017-11-10 10:10:49'),('admin',39801,'2017-11-10 10:15:37'),('admin',39810,'2017-11-10 10:15:45'),('admin',21507,'2017-11-10 10:17:39'),('admin',20184,'2017-11-10 10:20:59'),('admin',21639,'2017-11-10 10:21:46'),('admin',21639,'2017-11-10 10:23:49'),('admin',25306,'2017-11-10 10:23:56'),('admin',21621,'2017-11-10 10:24:02'),('admin',21639,'2017-11-10 10:24:08'),('admin',25306,'2017-11-10 10:24:55'),('admin',21645,'2017-11-10 10:27:53'),('admin',25306,'2017-11-10 10:28:01'),('admin',21657,'2017-11-10 10:29:29'),('admin',21639,'2017-11-10 10:30:35'),('admin',21657,'2017-11-10 10:30:45'),('admin',20184,'2017-11-10 10:41:43'),('admin',21651,'2017-11-10 10:42:04'),('admin',21657,'2017-11-10 10:42:08'),('admin',21657,'2017-11-10 10:53:11'),('admin',21657,'2017-11-10 10:53:40'),('admin',21657,'2017-11-10 10:54:53'),('admin',21657,'2017-11-10 10:55:26'),('admin',21657,'2017-11-10 11:04:06'),('admin',21657,'2017-11-10 11:04:29'),('admin',21657,'2017-11-10 11:06:12'),('admin',21657,'2017-11-10 11:06:26'),('admin',25306,'2017-11-10 11:07:21'),('admin',21657,'2017-11-10 11:07:34'),('admin',21657,'2017-11-10 11:08:48'),('admin',21657,'2017-11-10 11:10:25'),('admin',21651,'2017-11-10 11:11:05'),('admin',21657,'2017-11-10 11:11:24'),('admin',21651,'2017-11-10 11:11:33'),('admin',21651,'2017-11-10 11:15:44'),('admin',21657,'2017-11-10 11:15:52'),('admin',21657,'2017-11-10 11:16:50'),('00851',25306,'2017-11-10 11:16:53'),('00851',36301,'2017-11-10 11:17:02'),('admin',21657,'2017-11-10 11:19:25'),('admin',21657,'2017-11-10 11:26:52'),('admin',21657,'2017-11-10 11:37:10'),('admin',21657,'2017-11-10 11:39:30'),('admin',21657,'2017-11-10 11:41:09'),('01255',25306,'2017-11-10 11:42:43'),('01255',36301,'2017-11-10 11:42:50'),('01255',36301,'2017-11-10 11:45:26'),('01255',36301,'2017-11-10 11:48:20'),('admin',21657,'2017-11-10 11:55:09'),('admin',21657,'2017-11-10 11:57:58'),('admin',21651,'2017-11-10 12:00:20'),('admin',36301,'2017-11-10 13:50:12'),('admin',36301,'2017-11-10 13:50:25'),('01255',25306,'2017-11-10 13:50:57'),('01255',36301,'2017-11-10 13:51:05'),('01255',36301,'2017-11-10 13:52:03'),('admin',21259,'2017-11-10 13:52:41'),('01255',36301,'2017-11-10 13:52:48'),('admin',21259,'2017-11-10 13:53:49'),('admin',21513,'2017-11-10 13:56:09'),('01255',36301,'2017-11-10 13:58:45'),('01255',36301,'2017-11-10 14:04:13'),('01255',36301,'2017-11-10 14:05:03'),('01255',36301,'2017-11-10 14:06:26'),('01255',36301,'2017-11-10 14:07:04'),('01255',36301,'2017-11-10 14:08:18'),('01255',36301,'2017-11-10 14:09:35'),('01255',36301,'2017-11-10 14:13:22'),('01255',36301,'2017-11-10 14:14:41'),('01255',36301,'2017-11-10 14:15:44'),('01255',36301,'2017-11-10 14:17:16'),('admin',21621,'2017-11-10 14:35:14'),('admin',36301,'2017-11-10 15:58:59'),('admin',36301,'2017-11-10 15:59:11'),('admin',33949,'2017-11-13 11:16:32'),('admin',34811,'2017-11-13 11:19:24'),('admin',36401,'2017-11-13 11:19:34'),('admin',38816,'2017-11-13 11:19:45'),('admin',39810,'2017-11-13 11:22:31'),('admin',25306,'2017-11-13 13:27:58'),('admin',36301,'2017-11-13 13:28:09'),('admin',36301,'2017-11-13 13:35:12'),('hradmin',25306,'2017-11-13 13:36:58'),('admin',40138,'2017-11-13 14:14:07'),('admin',NULL,'2017-12-01 13:45:49'),('admin',NULL,'2017-12-04 09:45:29'),('admin',NULL,'2017-12-04 09:56:01'),('admin',NULL,'2017-12-04 09:56:07'),('admin',NULL,'2017-12-04 09:56:09'),('admin',NULL,'2017-12-04 10:13:40'),('admin',NULL,'2017-12-04 10:16:37'),('admin',NULL,'2017-12-04 10:52:53'),('admin',NULL,'2017-12-04 10:53:48'),('admin',NULL,'2017-12-04 10:54:37'),('admin',NULL,'2017-12-04 10:54:57'),('admin',NULL,'2017-12-04 10:55:59'),('admin',NULL,'2017-12-04 13:10:32'),('admin',NULL,'2017-12-04 13:10:41'),('admin',NULL,'2017-12-07 10:10:13'),('admin',NULL,'2017-12-08 07:41:16'),('admin',NULL,'2017-12-08 08:30:44'),('admin',NULL,'2017-12-08 08:31:23'),('admin',NULL,'2017-12-08 08:31:26'),('admin',NULL,'2017-12-08 08:31:36'),('admin',NULL,'2017-12-08 08:31:42'),('admin',NULL,'2017-12-08 08:31:56'),('admin',NULL,'2017-12-08 08:32:02'),('admin',NULL,'2017-12-08 08:32:49'),('admin',NULL,'2017-12-08 08:32:53'),('admin',NULL,'2017-12-08 08:46:17'),('admin',NULL,'2017-12-08 08:46:44'),('admin',NULL,'2017-12-08 08:47:00'),('admin',NULL,'2017-12-08 08:47:07'),('admin',NULL,'2017-12-08 08:47:19'),('admin',NULL,'2017-12-08 08:47:30'),('admin',NULL,'2017-12-08 08:47:42'),('admin',NULL,'2017-12-08 08:47:54'),('admin',NULL,'2017-12-08 08:48:24'),('admin',NULL,'2017-12-08 09:07:00'),('admin',NULL,'2017-12-08 09:07:41'),('admin',NULL,'2017-12-08 09:08:55'),('admin',NULL,'2017-12-08 10:28:02'),('admin',NULL,'2017-12-08 10:28:28'),('admin',NULL,'2017-12-08 10:30:53'),('admin',NULL,'2017-12-08 10:31:11'),('admin',NULL,'2017-12-08 10:33:32'),('admin',NULL,'2017-12-08 10:34:27'),('admin',NULL,'2017-12-12 08:19:42'),('admin',NULL,'2017-12-12 11:13:11'),('admin',NULL,'2017-12-12 11:15:03'),('admin',NULL,'2017-12-12 13:18:46'),('admin',NULL,'2017-12-12 14:02:53'),('admin',NULL,'2017-12-12 16:08:51'),('admin',NULL,'2017-12-28 13:21:17'),('admin',NULL,'2017-12-28 13:26:34'),('admin',NULL,'2017-12-28 15:07:10'),('admin',NULL,'2018-02-07 10:26:42'),('admin',NULL,'2018-02-07 10:36:51'),('admin',NULL,'2018-02-08 10:37:04'),('admin',NULL,'2018-02-08 10:42:27'),('admin',NULL,'2018-02-08 13:43:29'),('admin',NULL,'2018-02-09 11:00:14'),('admin',NULL,'2018-02-13 08:51:36'),('admin',NULL,'2018-02-13 15:29:47'),('admin',NULL,'2018-02-13 15:33:22'),('admin',NULL,'2018-02-13 15:42:17'),('admin',NULL,'2018-02-14 09:11:18'),('admin',NULL,'2018-02-14 09:24:22'),('admin',NULL,'2018-02-14 09:59:44'),('admin',NULL,'2018-02-15 08:48:42'),('admin',NULL,'2018-02-16 07:53:50'),('admin',NULL,'2018-02-16 09:05:44'),('admin',NULL,'2018-02-16 09:08:37'),('admin',NULL,'2018-02-16 09:11:39'),('admin',NULL,'2018-02-16 09:32:33'),('admin',NULL,'2018-02-16 11:34:10'),('admin',NULL,'2018-02-21 10:08:37'),('admin',NULL,'2018-02-21 10:58:51'),('admin',NULL,'2018-02-21 11:13:30'),('admin',NULL,'2018-02-22 09:54:25'),('admin',NULL,'2018-02-22 14:24:08'),('admin',NULL,'2018-02-22 14:38:06'),('admin',NULL,'2018-02-23 14:23:24'),('admin',NULL,'2018-02-23 15:15:13'),('admin',NULL,'2018-02-24 14:43:07'),('admin',NULL,'2018-02-26 14:07:45'),('admin',NULL,'2018-02-26 14:17:38'),('admin',NULL,'2018-02-27 08:35:28'),('admin',NULL,'2018-02-27 08:44:33'),('admin',NULL,'2018-02-28 07:45:43'),('admin',NULL,'2018-02-28 09:10:24'),('admin',NULL,'2018-02-28 15:50:07'),('admin',NULL,'2018-03-01 17:18:25'),('admin',NULL,'2018-03-02 08:17:51'),('admin',NULL,'2018-03-02 16:44:48'),('admin',NULL,'2018-03-03 15:09:26'),('admin',NULL,'2018-03-03 16:27:44'),('admin',NULL,'2018-03-03 16:33:22'),('admin',NULL,'2018-03-03 17:02:29'),('admin',NULL,'2018-03-03 17:15:35'),('admin',NULL,'2018-03-05 08:43:14'),('admin',NULL,'2018-03-05 08:55:44'),('admin',NULL,'2018-03-05 09:14:35'),('admin',NULL,'2018-03-05 09:16:35'),('admin',NULL,'2018-03-05 09:25:57'),('admin',NULL,'2018-03-05 10:56:49'),('admin',NULL,'2018-03-05 11:00:06'),('admin',NULL,'2018-03-05 11:08:40'),('admin',NULL,'2018-03-05 11:13:38'),('admin',NULL,'2018-03-05 11:14:47'),('admin',NULL,'2018-03-06 08:41:31'),('admin',NULL,'2018-03-06 16:59:19'),('admin',NULL,'2018-03-07 09:56:55'),('admin',NULL,'2018-03-07 13:31:55'),('admin',NULL,'2018-03-09 08:37:03'),('admin',NULL,'2018-03-12 13:54:54'),('admin',NULL,'2018-03-14 11:08:29'),('admin',NULL,'2018-03-15 08:26:53'),('admin',NULL,'2018-03-16 08:34:10'),('admin',NULL,'2018-03-19 15:34:02'),('admin',NULL,'2018-03-20 08:29:03'),('admin',NULL,'2018-03-21 09:05:40'),('admin',NULL,'2018-03-22 09:50:11'),('admin',NULL,'2018-03-25 10:59:07'),('admin',NULL,'2018-03-25 12:35:30'),('admin',NULL,'2018-03-25 12:43:20'),('admin',NULL,'2018-03-25 13:57:09'),('admin',NULL,'2018-03-25 13:58:26'),('admin',NULL,'2018-03-25 14:00:09');
/*!40000 ALTER TABLE `usage_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `value_type`
--

DROP TABLE IF EXISTS `value_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `value_type` (
  `value_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `value_type_name` varchar(255) NOT NULL COMMENT 'Bigger is better\r\nSmaller is better\r\nQuasi is better',
  PRIMARY KEY (`value_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value_type`
--

LOCK TABLES `value_type` WRITE;
/*!40000 ALTER TABLE `value_type` DISABLE KEYS */;
INSERT INTO `value_type` VALUES (1,'Bigger is better'),(2,'Smaller is better');
/*!40000 ALTER TABLE `value_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type_id` int(11) DEFAULT NULL,
  `vehicle_number` varchar(20) DEFAULT NULL,
  `number_of_seats` int(11) DEFAULT NULL,
  `fuel_type_master` varchar(45) DEFAULT NULL,
  `fuel_consumption_rate` varchar(45) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (11,1,'PANAN 4',26,'DIESEL20','30',1,'2019-06-17','2022-09-21'),(27,1,'PANAN 5',50,'DIESEL','9',1,'2019-06-23','2022-09-21'),(28,1,'PANAN 6',50,'DIESEL','10',1,'2019-06-23','2022-09-21');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_type` (
  `vehicle_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_type` varchar(45) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`vehicle_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_type`
--

LOCK TABLES `vehicle_type` WRITE;
/*!40000 ALTER TABLE `vehicle_type` DISABLE KEYS */;
INSERT INTO `vehicle_type` VALUES (1,'สปีดโบ๊ท','2019-04-03 14:39:16','2022-07-27 15:25:31');
/*!40000 ALTER TABLE `vehicle_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  `no_address` varchar(45) DEFAULT NULL,
  `group_address` varchar(45) DEFAULT NULL,
  `sub_district` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `profile_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,'kosit','aromsava','1234567890123','15/1','7','คุ้มเก่า','เขาวง','0809926565',61,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'นายทดสอบ1','เทส1','1234567890123','15/1','7','คุ้มเก่า','เขาวง','0809926565',63,'2022-11-17 11:48:39','2022-11-17 11:48:39'),(11,'นายทดสอบ2','เทส2','1234567890123','15/1','7','คุ้มเก่า','เขาวง','',63,'2022-11-17 11:55:12','2022-11-17 11:57:59'),(12,'kosin','aromsava','12345678901234','12','2','คุ้มเก่า','เขาวง','',61,'2022-11-17 11:59:02','2022-11-17 11:59:02'),(13,'โกสน','สุจันกา','2352624523452','45','45','คุ้มเก่า','เขาวง','0999999999',62,'2022-11-17 11:59:53','2022-11-17 11:59:53'),(14,'สุเมธ','คงดี','0987654321098','66','8','คุ้มเก่า','เขาวง','',62,'2022-11-17 12:00:26','2022-11-17 12:00:26'),(15,'จักรพงษ์','อารีย์','12312341123','66','66','คุ้มเก่า','เขาวง','',64,'2022-11-17 12:02:39','2022-11-17 12:02:39'),(16,'จักรรงค์','นามดี','2523452345','4','4','คุ้มเก่า','เขาวง','',64,'2022-11-17 12:03:14','2022-11-17 12:03:14'),(17,'นายสุพจน์','อาจสง่า','112233445566','6','6','คุ้มเก่า','เขาวง','',65,'2022-11-17 12:07:03','2022-11-17 12:07:03'),(18,'จันดี','บุญนาค','665577889900','5','5','คุ้มเก่า','เขาวง','',65,'2022-11-17 12:07:28','2022-11-17 12:07:28'),(19,'จิตการ','ศีรหา','112233445566','1','1','คุ้มเก่า','เขาวง','0809926565',65,'2022-11-17 12:08:51','2022-11-17 12:09:34'),(20,'kosin','aromsava','12345678901234','44','44','คุ้มเก่า','เขาวง','0809926565',64,NULL,NULL),(21,'dd','dd',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(26,'สามาชิก','ของ ตัวแทน test6','1460600053789','11','11','11','11','',68,'2023-02-17 14:24:49','2023-02-17 14:24:49'),(29,'เพ่มสมชเขต4','เพ่มสมชเขต4','1460600053789','เพ่มสมชเขต4','เพ่มสมชเขต4','เพ่มสมชเขต4','เพ่มสมชเขต4','',37,'2023-02-18 11:22:07','2023-02-18 11:22:07'),(31,'testuser1','testuser1','1460600053789','testuser1','testuser1','testuser1','testuser1','',61,'2023-02-18 12:12:31','2023-02-18 12:12:31'),(32,'ลูกของเอ55','ลูกของเอ55','1460600053789','ลูกของเอ55','ลูกของเอ55','ลูกของเอ55','ลูกของเอ55','',61,'2023-02-18 12:21:49','2023-02-18 12:21:49'),(33,'31','31','1460600053789','31','31','31','31','',70,'2023-02-18 12:49:51','2023-02-18 12:49:51'),(34,'32','32','1460600053789','32','32','32','32','',70,'2023-02-18 12:50:11','2023-02-18 12:50:11'),(35,'31','31','1460600053789','31','31','31','31','',70,'2023-02-18 13:05:35','2023-02-18 13:05:35'),(36,'ลูกทีมตัวแทนเอ111','ลูกทีมตัวแทนเอ','1460600053789','ลูกทีมตัวแทนเอ','ลูกทีมตัวแทนเอ','ลูกทีมตัวแทนเอ','ลูกทีมตัวแทนเอ','ลูกทีมตัวแทนเอ',61,'2023-02-18 13:13:07','2023-02-18 13:14:02');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-20 13:53:52
