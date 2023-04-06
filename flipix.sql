-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: flipix
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `add_to_cart`
--

DROP TABLE IF EXISTS `add_to_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_to_cart` (
  `cart_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `product_id` (`product_id`),
  KEY `user_mobile` (`user_mobile`),
  CONSTRAINT `add_to_cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_cart`
--

LOCK TABLES `add_to_cart` WRITE;
/*!40000 ALTER TABLE `add_to_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_to_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `add_to_wishlist`
--

DROP TABLE IF EXISTS `add_to_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `add_to_wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  PRIMARY KEY (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_mobile` (`user_mobile`),
  CONSTRAINT `add_to_wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_wishlist`
--

LOCK TABLES `add_to_wishlist` WRITE;
/*!40000 ALTER TABLE `add_to_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_to_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_email` varchar(20) DEFAULT NULL,
  `amdin_pass` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `admin_email` (`admin_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('a1','simranmansuri757@gma','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_details` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL,
  `mobile_no` int(10) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `aadhar_no` int(12) DEFAULT NULL,
  `pan_card` varchar(20) DEFAULT NULL,
  `gst_no` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `pan_card` (`pan_card`),
  UNIQUE KEY `gst_no` (`gst_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_detail`
--

DROP TABLE IF EXISTS `bank_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_detail` (
  `bank_name` varchar(20) DEFAULT NULL,
  `account_no` varchar(20) NOT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`account_no`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `bank_detail_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop_registration` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_detail`
--

LOCK TABLES `bank_detail` WRITE;
/*!40000 ALTER TABLE `bank_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `make_payment`
--

DROP TABLE IF EXISTS `make_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `make_payment` (
  `invoice_id` int(10) DEFAULT NULL,
  `cart_id` int(10) DEFAULT NULL,
  `transaction_id` int(10) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `total_amount` int(10) DEFAULT NULL,
  `tax` int(10) DEFAULT NULL,
  `payment_mode` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `offer_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `invoice_id` (`invoice_id`),
  KEY `cart_id` (`cart_id`),
  KEY `offer_id` (`offer_id`),
  CONSTRAINT `make_payment_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `add_to_cart` (`cart_id`),
  CONSTRAINT `make_payment_ibfk_2` FOREIGN KEY (`offer_id`) REFERENCES `offers_zone` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make_payment`
--

LOCK TABLES `make_payment` WRITE;
/*!40000 ALTER TABLE `make_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `make_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers_zone`
--

DROP TABLE IF EXISTS `offers_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers_zone` (
  `offer_id` int(10) NOT NULL,
  `coupan_code` varchar(20) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `discount_percentage` int(3) DEFAULT NULL,
  `flat_discount` int(10) DEFAULT NULL,
  `bank_offers` varchar(20) DEFAULT NULL,
  `valid_in` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`offer_id`),
  UNIQUE KEY `coupan_code` (`coupan_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers_zone`
--

LOCK TABLES `offers_zone` WRITE;
/*!40000 ALTER TABLE `offers_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(20) DEFAULT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (0,'men\'s Wear','upload\\category_image_1678349990294.png'),(4,'women','upload\\category_image_1677138432152.jpg');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_inventory` (
  `product_id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `sub_category_id` int(10) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `product_company` varchar(20) DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`),
  KEY `sub_category_id` (`sub_category_id`),
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `product_inventory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`category_id`),
  CONSTRAINT `product_inventory_ibfk_2` FOREIGN KEY (`sub_category_id`) REFERENCES `product_sub_category` (`sub_category_id`),
  CONSTRAINT `product_inventory_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shop_registration` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_inventory`
--

LOCK TABLES `product_inventory` WRITE;
/*!40000 ALTER TABLE `product_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_specification`
--

DROP TABLE IF EXISTS `product_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_specification` (
  `product_specification_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `colour` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `dimension` varchar(20) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`product_specification_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_specification_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_inventory` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_specification`
--

LOCK TABLES `product_specification` WRITE;
/*!40000 ALTER TABLE `product_specification` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sub_category`
--

DROP TABLE IF EXISTS `product_sub_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_sub_category` (
  `category_id` int(10) DEFAULT NULL,
  `sub_category_id` int(10) NOT NULL,
  `sub_category_name` varchar(20) DEFAULT NULL,
  `sub_category_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sub_category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sub_category`
--

LOCK TABLES `product_sub_category` WRITE;
/*!40000 ALTER TABLE `product_sub_category` DISABLE KEYS */;
INSERT INTO `product_sub_category` VALUES (NULL,8,'clothes','upload\\sub_category_image_1677825412030.png'),(4,1122,'clothes','upload\\sub_category_image_1677825821504.png'),(NULL,5428,'clothes','upload\\sub_category_image_1677825412805.png');
/*!40000 ALTER TABLE `product_sub_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `cart_id` int(10) DEFAULT NULL,
  `review_point` int(10) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `add_to_cart` (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping` (
  `shipping_id` int(10) NOT NULL,
  `invoice_id` int(10) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  PRIMARY KEY (`shipping_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `user_mobile` (`user_mobile`),
  CONSTRAINT `shipping_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `make_payment` (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_document`
--

DROP TABLE IF EXISTS `shop_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_document` (
  `shop_id` int(11) NOT NULL,
  `reg_card` varchar(100) DEFAULT NULL,
  `aadhar_card` varchar(100) DEFAULT NULL,
  `pan_card` varchar(100) DEFAULT NULL,
  KEY `shop_id` (`shop_id`),
  CONSTRAINT `shop_document_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shop_registration` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_document`
--

LOCK TABLES `shop_document` WRITE;
/*!40000 ALTER TABLE `shop_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_registration`
--

DROP TABLE IF EXISTS `shop_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop_registration` (
  `registration_no` varchar(20) DEFAULT NULL,
  `shop_id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pin_code` int(6) NOT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `shop_owner` varchar(20) NOT NULL,
  `shop_type` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gst_no` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`shop_id`),
  UNIQUE KEY `registration_no` (`registration_no`)
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_registration`
--

LOCK TABLES `shop_registration` WRITE;
/*!40000 ALTER TABLE `shop_registration` DISABLE KEYS */;
INSERT INTO `shop_registration` VALUES ('5',5,'Simran Fashion','Koalar','M.p.','Bhopal',462029,'6272409834','anjali','shoes','anjali@gmail.com','12443','active','$2b$08$vBuc9vOzckinH'),('6',543,'Apsara Fashion','Koalar','M.p.','Bhopal',462029,'6272409834','apsara','clothes','anj@gmail.com','10443','active','$2b$08$gC2t4eFwsy97a');
/*!40000 ALTER TABLE `shop_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `status` varchar(8) DEFAULT 'Deactive',
  `registeron` date DEFAULT sysdate(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'simran','simran@gmail.com','123456','Active','2023-02-26'),(4,'nivedita','nivedita@gmail.com','$2b$08$mQT','Deactive','2023-02-26'),(5,'anita','anita@gmail.com','$2b$08$uvr','Deactive','2023-02-26'),(6,'anjali','anjali@gmail.com','$2b$08$Z82oWMsjeNUNAM3KjsgO2.EqA386z3T97HIowv.oTMmCOb6uYpSfe','Deactive','2023-02-26'),(7,'simrna','mansuri@gmail.com','$2b$08$X9/vsSXMdmyR8IYZSDZgnemDq7PWRZSMkrr1c.mPVnMPZ4U3efLHO','Deactive','2023-02-26'),(8,'Lucky','lucky@gmail.com','13432','Active','2023-02-27');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_registration` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_mobile` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pin_code` int(6) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Deactive',
  `registeron` date DEFAULT sysdate(),
  `role_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobile` (`user_mobile`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `email_2` (`email`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_registration_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2147483648 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES (646,'samsher','9265432345','samser@gmail.com','m','Khokra','m.p.','sujalpur',43543,NULL,'Deactive','2023-03-09','r2'),(662443,'simran','7049885348','simranmansuri757@gma','f','Bhopal','m.p.','Bhopal',67656,NULL,'Deactive','2023-03-08','r1'),(2147483647,'anjali','9765432345','anjali@gmail.com','f','Bhopal','m.p.','Bhopal',878798,NULL,'Deactive','2023-03-08','r2');
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `role_id` varchar(20) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES ('r1','cleark'),('r2','admin');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06 16:33:48
