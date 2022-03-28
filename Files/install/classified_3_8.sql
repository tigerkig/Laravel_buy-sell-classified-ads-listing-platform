/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - dbb4iiiryzwscy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbb4iiiryzwscy` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbb4iiiryzwscy`;

/*Table structure for table `ad_images` */

DROP TABLE IF EXISTS `ad_images`;

CREATE TABLE `ad_images` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ad_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ad_images` */

insert  into `ad_images`(`id`,`ad_id`,`image`,`created_at`,`updated_at`) values 
(26,6,'621bc2a2c5f6e1645986466.png','2022-02-27 18:27:51','2022-02-27 18:27:51'),
(27,6,'621bc2a7ba6681645986471.png','2022-02-27 18:27:56','2022-02-27 18:27:56'),
(28,6,'621bc2ac8972d1645986476.png','2022-02-27 18:28:01','2022-02-27 18:28:01'),
(29,6,'621bc2b17058e1645986481.png','2022-02-27 18:28:06','2022-02-27 18:28:06'),
(30,6,'621bc2b65090d1645986486.png','2022-02-27 18:28:11','2022-02-27 18:28:11'),
(31,7,'621e6b68b034b1646160744.jpg','2022-03-01 18:52:29','2022-03-01 18:52:29'),
(32,7,'621e6b6d8ce591646160749.jpg','2022-03-01 18:52:34','2022-03-01 18:52:34'),
(33,7,'621e6b7259e571646160754.jpg','2022-03-01 18:52:39','2022-03-01 18:52:39'),
(34,7,'621e6b77336311646160759.jpg','2022-03-01 18:52:43','2022-03-01 18:52:43'),
(35,7,'621e6b7bebd101646160763.jpg','2022-03-01 18:52:48','2022-03-01 18:52:48'),
(36,9,'621e94617d3421646171233.png','2022-03-01 21:47:18','2022-03-01 21:47:18'),
(37,9,'621e94667b4dd1646171238.png','2022-03-01 21:47:23','2022-03-01 21:47:23'),
(38,9,'621e946bdcfd11646171243.png','2022-03-01 21:47:29','2022-03-01 21:47:29'),
(39,9,'621e9471753d81646171249.png','2022-03-01 21:47:34','2022-03-01 21:47:34'),
(40,9,'621e9476ca3b31646171254.png','2022-03-01 21:47:40','2022-03-01 21:47:40'),
(41,10,'621ea76d0eee01646176109.png','2022-03-01 23:08:33','2022-03-01 23:08:33'),
(42,10,'621ea771e9dcc1646176113.png','2022-03-01 23:08:38','2022-03-01 23:08:38'),
(43,10,'621ea776cc4141646176118.png','2022-03-01 23:08:43','2022-03-01 23:08:43'),
(44,10,'621ea77bb93811646176123.png','2022-03-01 23:08:48','2022-03-01 23:08:48'),
(45,10,'621ea780b7dd71646176128.png','2022-03-01 23:08:53','2022-03-01 23:08:53'),
(51,12,'622468a0e88ee1646553248.jpg','2022-03-06 07:54:14','2022-03-06 07:54:14'),
(52,12,'622468a61c8021646553254.jpg','2022-03-06 07:54:20','2022-03-06 07:54:20'),
(53,12,'622468ac5831e1646553260.jpg','2022-03-06 07:54:25','2022-03-06 07:54:25'),
(54,12,'622468b2105ed1646553266.jpg','2022-03-06 07:54:32','2022-03-06 07:54:32'),
(55,12,'622468b8610f91646553272.jpg','2022-03-06 07:54:37','2022-03-06 07:54:37'),
(56,13,'6224f0391258b1646587961.png','2022-03-06 17:32:46','2022-03-06 17:32:46'),
(57,13,'6224f03e0f64a1646587966.png','2022-03-06 17:32:50','2022-03-06 17:32:50'),
(58,13,'6224f042ef7921646587970.png','2022-03-06 17:32:55','2022-03-06 17:32:55'),
(59,13,'6224f047ecf741646587975.png','2022-03-06 17:33:00','2022-03-06 17:33:00'),
(60,13,'6224f04cf084b1646587980.png','2022-03-06 17:33:06','2022-03-06 17:33:06'),
(61,14,'6226725be406a1646686811.png','2022-03-07 21:00:16','2022-03-07 21:00:16'),
(62,14,'622672610021d1646686817.png','2022-03-07 21:00:21','2022-03-07 21:00:21'),
(63,14,'62267265f39e01646686821.png','2022-03-07 21:00:27','2022-03-07 21:00:27'),
(64,14,'6226726b2b7c91646686827.png','2022-03-07 21:00:32','2022-03-07 21:00:32'),
(65,14,'622672706d56b1646686832.png','2022-03-07 21:00:37','2022-03-07 21:00:37'),
(66,15,'6226734a84e421646687050.jpg','2022-03-07 21:04:15','2022-03-07 21:04:15'),
(67,15,'6226734f79dc71646687055.jpg','2022-03-07 21:04:20','2022-03-07 21:04:20'),
(68,15,'62267354594fb1646687060.jpg','2022-03-07 21:04:25','2022-03-07 21:04:25'),
(69,15,'622673594399d1646687065.jpg','2022-03-07 21:04:30','2022-03-07 21:04:30'),
(70,15,'6226735e289e31646687070.jpg','2022-03-07 21:04:35','2022-03-07 21:04:35'),
(71,16,'62271c30529ff1646730288.jpg','2022-03-08 09:04:53','2022-03-08 09:04:53'),
(72,16,'62271c353b9a81646730293.jpg','2022-03-08 09:04:58','2022-03-08 09:04:58'),
(73,16,'62271c3a26fc61646730298.jpg','2022-03-08 09:05:03','2022-03-08 09:05:03'),
(74,16,'62271c3f26fde1646730303.jpg','2022-03-08 09:05:07','2022-03-08 09:05:07'),
(75,16,'62271c440681c1646730308.jpg','2022-03-08 09:05:12','2022-03-08 09:05:12'),
(76,17,'622720044da8a1646731268.jpg','2022-03-08 09:21:13','2022-03-08 09:21:13'),
(77,17,'62272009366f31646731273.jpg','2022-03-08 09:21:18','2022-03-08 09:21:18'),
(78,17,'6227200e2bac01646731278.jpg','2022-03-08 09:21:23','2022-03-08 09:21:23'),
(79,17,'62272013235e01646731283.jpg','2022-03-08 09:21:28','2022-03-08 09:21:28'),
(80,17,'62272018134411646731288.jpg','2022-03-08 09:21:32','2022-03-08 09:21:32');

/*Table structure for table `ad_lists` */

DROP TABLE IF EXISTS `ad_lists`;

CREATE TABLE `ad_lists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,8) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `negotiable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_contact` int(1) NOT NULL DEFAULT 0,
  `contact_num` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` int(1) NOT NULL DEFAULT 0,
  `expired_date` date DEFAULT NULL,
  `type` int(1) NOT NULL COMMENT '1 = sell , 2 = rent',
  `use_condition` int(1) NOT NULL COMMENT '1 = ''new'', 2 = ''used''',
  `prev_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ad_lists` */

insert  into `ad_lists`(`id`,`user_id`,`category_id`,`subcategory_id`,`division`,`district`,`title`,`slug`,`price`,`description`,`negotiable`,`fields`,`hide_contact`,`contact_num`,`featured`,`expired_date`,`type`,`use_condition`,`prev_image`,`status`,`created_at`,`updated_at`,`deleted_at`,`startDate`) values 
(1,3,1,12,'eleetrinic','asd','32131','32131788',50.00000000,'3213131321','0','[]',0,'93123123123',1,'2022-03-03',1,1,'6215371c264351645557532.png',1,'2022-02-21 21:09:04','2022-02-25 17:19:11','2022-02-25 17:19:11',NULL),
(2,3,1,12,'eleetrinic','asd','sc','sc-713',22000.00000000,'fasdfasdfasdfsadfasdfasdfasdfsadfasdfsadfasdfasdfsadfsadfsadfsadf','1','[]',0,'93123123123',1,'2022-03-10',1,1,'62161ed32542e1645616851.png',1,'2022-02-23 11:47:36','2022-02-25 17:19:06','2022-02-25 17:19:06',NULL),
(3,3,1,10,'eleetrinic','fgh','CreditNewTitle','creditnewtitle-604',450.00000000,'qewrqwerqwerqwerqwerqwerqwrqwrqwrqwrqrwerqwerqwerqwerqwerqwerqwerqwerqewrqwerqwerqwerqwerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrqreeeeeeeeeeeeeeeeeeeerrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr','1','[]',0,'93123123123',0,'2022-03-21',1,1,'62167f1a982091645641498.jpg',1,'2022-02-23 18:38:23','2022-02-25 17:19:00','2022-02-25 17:19:00',NULL),
(4,3,1,10,'eleetrinic','sdf','New apartment','new-apartment-472',3333.00000000,'afdsfasdfasdfasdfas','0','[]',0,'93123123123',0,'2022-03-16',1,1,'6218d87dc80961645795453.jpg',1,'2022-02-25 13:24:19','2022-02-27 18:25:53','2022-02-27 18:25:53','2019-11-15'),
(5,3,1,10,'eleetrinic','fgh','second_part','second-part-414',5000.00000000,'asdfasdfasfdasdfasdfasdfasdfasdf','0','[]',0,'93123123123',1,'2022-03-10',1,1,'621924c34c7871645814979.jpg',1,'2022-02-25 18:49:45','2022-02-27 18:25:45','2022-02-27 18:25:45','2020-01-27'),
(6,3,1,10,'Trentino-Alto Adige','Bolzano/Bozen','NewApartment','newapartment-750',300000.00000000,'asdfasdfasdfasdfasdf','0','[]',0,'93123123123',1,'2022-03-08',1,1,'621bc29d9c7d71645986461.png',1,'2022-02-27 18:27:46','2022-03-05 13:45:11',NULL,'2019-06-18'),
(7,3,1,10,'Veneto','Belluno','123123','123123-553',22000.00000000,'1231231231','1','[]',1,'93123123123',1,'2022-03-10',1,1,'621e6b63b1cd21646160739.jpg',1,'2022-03-01 18:52:24','2022-03-01 21:17:42',NULL,'2019-11-15'),
(9,3,1,10,'Veneto','Belluno','DDD','ddd-725',3333.00000000,'13123123123','0','[]',0,'93123123123',1,'2022-03-09',1,1,'621e945c38e551646171228.png',1,'2022-03-01 21:47:13','2022-03-01 22:28:26',NULL,'2019-11-15'),
(10,3,1,12,'Valle d\'Aosta','Valle d\'Aosta/Vallée d\'Aoste','second','second-460',25334.00000000,'asdfasdfsafsaf','0','[]',0,'93123123123',1,'2022-03-17',1,1,'621ea767a6bb91646176103.png',1,'2022-03-01 23:08:28','2022-03-01 23:08:28',NULL,'2019-06-18'),
(11,3,1,12,'Valle d\'Aosta','Valle d\'Aosta/Vallée d\'Aoste','Money','money-431',68700.00000000,'123123123123123123','0','[]',0,'93123123123',1,'2022-03-18',1,1,'621ea7b6d95d31646176182.jpg',1,'2022-03-01 23:09:47','2022-03-06 14:11:29','2022-03-06 14:11:29','2019-11-15'),
(12,5,1,10,'Toscana','Livorno','fgdfgfgfff','fgdfgfgfff-421',666.00000000,'dfgdfgdfgdfgdfgfdg','0','[]',0,'1264123123123',0,NULL,1,2,'6224689b7f8901646553243.jpg',1,'2022-03-06 07:54:08','2022-03-06 07:55:02',NULL,'2019-11-15'),
(13,3,1,13,'Molise','Isernia','golddev','golddev-679',60000.00000000,'1231231231eqwrafasdfasdfasdfsadfsadfsadfsfsdfsadfasdfasdfasdf','0','[]',0,'93123123123',0,NULL,1,1,'6224f0333e96c1646587955.png',1,'2022-03-06 17:32:40','2022-03-06 18:01:53',NULL,'2020-05-19'),
(14,3,1,13,'Umbria','Terni','3_7News','3-7news-457',60000.00000000,'fdfdfaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa','0','[]',0,'93123123123',0,NULL,1,1,'622672552d6d61646686805.png',1,'2022-03-07 21:00:11','2022-03-07 21:01:09',NULL,'2021-02-02'),
(15,5,1,13,'Veneto','Belluno','3_7 Newss','3-7-newss-426',80000.00000000,'asdfasdfasdfsadfasfd','0','[]',0,'1264123123123',0,NULL,1,2,'622673457abc21646687045.jpg',1,'2022-03-07 21:04:10','2022-03-07 21:05:10',NULL,'2020-01-27'),
(16,5,1,11,'Abruzzo','Teramo','News_3>8','news-38-469',100000.00000000,'123qweqwe2312qeqeqweqwe13werreqweqweqweqweqw','0','[]',0,'1264123123123',0,NULL,1,2,'62271c2b1fceb1646730283.jpg',1,'2022-03-08 09:04:48','2022-03-08 09:05:59',NULL,'2021-02-02'),
(17,5,1,13,'Veneto','Belluno','3_8_@_news','3-8-at-news-530',200000.00000000,'eqweqweqweqwqweqwe','0','[]',0,'1264123123123',0,NULL,1,2,'62271fff5cdb01646731263.jpg',1,'2022-03-08 09:21:08','2022-03-08 09:22:45',NULL,'2021-06-15');

/*Table structure for table `ad_promotes` */

DROP TABLE IF EXISTS `ad_promotes`;

CREATE TABLE `ad_promotes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `deposit_id` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '1 = accepted, 0 = pending, 2 = rejected\r\n',
  `running` int(1) NOT NULL DEFAULT 0 COMMENT '1 = running, 0 = ''not running''',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ad_promotes` */

insert  into `ad_promotes`(`id`,`user_id`,`ad_id`,`package_id`,`gateway_id`,`deposit_id`,`status`,`running`,`created_at`,`updated_at`) values 
(5,3,12,1,1,NULL,0,1,'2022-03-06 07:57:09','2022-03-06 07:57:09'),
(6,3,13,1,1,NULL,0,1,'2022-03-07 21:02:03','2022-03-07 21:02:03'),
(7,5,15,1,1,NULL,0,1,'2022-03-07 21:05:59','2022-03-07 21:05:59'),
(8,3,16,1,1,NULL,0,1,'2022-03-08 09:09:23','2022-03-08 09:09:23');

/*Table structure for table `admin_notifications` */

DROP TABLE IF EXISTS `admin_notifications`;

CREATE TABLE `admin_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT 0,
  `click_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_notifications` */

insert  into `admin_notifications`(`id`,`user_id`,`title`,`read_status`,`click_url`,`created_at`,`updated_at`) values 
(1,1,'New member registered',1,'/admin/user/detail/1','2022-02-16 19:16:54','2022-02-19 23:01:17'),
(2,2,'New member registered',1,'/admin/user/detail/2','2022-02-16 22:04:38','2022-02-19 23:01:06'),
(3,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-21 21:09:29','2022-02-21 21:09:29'),
(4,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-23 11:48:01','2022-02-23 11:48:01'),
(5,4,'New member registered',0,'/admin/user/detail/4','2022-02-23 12:18:26','2022-02-23 12:18:26'),
(6,5,'New member registered',0,'/admin/user/detail/5','2022-02-23 12:22:36','2022-02-23 12:22:36'),
(7,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-23 18:38:48','2022-02-23 18:38:48'),
(8,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-25 13:24:46','2022-02-25 13:24:46'),
(9,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-25 18:50:11','2022-02-25 18:50:11'),
(10,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-02-27 18:28:11','2022-02-27 18:28:11'),
(11,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/1','2022-02-28 21:25:59','2022-02-28 21:25:59'),
(12,5,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/2','2022-03-01 14:34:08','2022-03-01 14:34:08'),
(13,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-03-01 18:52:48','2022-03-01 18:52:48'),
(14,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-03-01 21:47:40','2022-03-01 21:47:40'),
(15,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-03-01 23:08:53','2022-03-01 23:08:53'),
(16,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-03-01 23:10:13','2022-03-01 23:10:13'),
(17,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/3','2022-03-02 21:16:50','2022-03-02 21:16:50'),
(18,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/4','2022-03-04 10:43:10','2022-03-04 10:43:10'),
(19,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/5','2022-03-04 10:45:34','2022-03-04 10:45:34'),
(20,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/6','2022-03-04 10:46:07','2022-03-04 10:46:07'),
(21,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/7','2022-03-04 10:46:21','2022-03-04 10:46:21'),
(22,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/8','2022-03-04 10:46:47','2022-03-04 10:46:47'),
(23,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/9','2022-03-04 10:47:39','2022-03-04 10:47:39'),
(24,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/10','2022-03-04 10:48:03','2022-03-04 10:48:03'),
(25,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/11','2022-03-04 10:48:08','2022-03-04 10:48:08'),
(26,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/12','2022-03-04 10:48:21','2022-03-04 10:48:21'),
(27,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/13','2022-03-04 10:48:24','2022-03-04 10:48:24'),
(28,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/14','2022-03-04 10:48:58','2022-03-04 10:48:58'),
(29,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/15','2022-03-05 06:41:47','2022-03-05 06:41:47'),
(30,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/16','2022-03-05 06:53:01','2022-03-05 06:53:01'),
(31,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/17','2022-03-05 07:33:16','2022-03-05 07:33:16'),
(32,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/18','2022-03-05 07:34:01','2022-03-05 07:34:01'),
(33,3,'New support ticket has opened',0,'http://localhost:8088/admin/tickets/view/1','2022-03-05 07:57:04','2022-03-05 07:57:04'),
(34,3,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/3','2022-03-05 13:41:57','2022-03-05 13:41:57'),
(35,3,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/4','2022-03-05 13:42:53','2022-03-05 13:42:53'),
(36,5,'goldstar Posted A New Ad',0,'/admin/all/ads/pending','2022-03-06 07:54:37','2022-03-06 07:54:37'),
(37,3,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/5','2022-03-06 07:57:10','2022-03-06 07:57:10'),
(38,3,'123123 Posted A New Ad',0,'/admin/all/ads/pending','2022-03-06 17:33:06','2022-03-06 17:33:06'),
(39,3,'123123 Posted A New Crediti',0,'/admin/all/ads/pending','2022-03-07 21:00:37','2022-03-07 21:00:37'),
(40,3,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/6','2022-03-07 21:02:03','2022-03-07 21:02:03'),
(41,5,'goldstar Posted A New Crediti',0,'/admin/all/ads/pending','2022-03-07 21:04:35','2022-03-07 21:04:35'),
(42,5,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/7','2022-03-07 21:05:59','2022-03-07 21:05:59'),
(43,5,'goldstar Posted A New Crediti',0,'/admin/all/ads/pending','2022-03-08 09:05:12','2022-03-08 09:05:12'),
(44,3,'New buy credit has requested',0,'http://localhost:8088/admin/credits/view/8','2022-03-08 09:09:23','2022-03-08 09:09:23'),
(45,5,'goldstar Posted A New Crediti',0,'/admin/all/ads/pending','2022-03-08 09:21:32','2022-03-08 09:21:32');

/*Table structure for table `admin_password_resets` */

DROP TABLE IF EXISTS `admin_password_resets`;

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admin_password_resets` */

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`id`,`name`,`email`,`username`,`email_verified_at`,`image`,`access`,`password`,`created_at`,`updated_at`) values 
(1,'Super Admin','admin@site.com','admin',NULL,'5ff1c3531ed3f1609679699.jpg',NULL,'$2y$10$5T0tdguQiME3oZDmteD53.nl2yu6D0/1QRT65EEBQSz4fFHsL0zIO',NULL,'2021-01-04 06:57:14');

/*Table structure for table `advertises` */

DROP TABLE IF EXISTS `advertises`;

CREATE TABLE `advertises` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL COMMENT '1 = banner, 2 = script',
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ad_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resolution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_click` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL COMMENT '1 = active, 0 = inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `advertises` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`slug`,`description`,`image`,`status`,`created_at`,`updated_at`) values 
(1,'SismaBonus','sismabonus','123123','621d2e3127f6b1646079537.png',1,NULL,'2022-02-28 20:18:57'),
(2,'EcoBonus','ecobonus','234234','621d2e3d0d22d1646079549.png',1,NULL,'2022-02-28 20:19:09'),
(3,'Bonus Ristrutturazione','bonus-ristrutturazione','345345','621d2e497396b1646079561.png',1,NULL,'2022-02-28 20:19:21'),
(5,'SuperBonus 110','superbonus-110','123','621d2e237fc871646079523.png',1,'2022-02-21 17:59:15','2022-02-28 20:18:43'),
(6,'Bonus Facciate','bonus-facciate','qweasdsadsadasdasdsadsa','621d2e16a0d791646079510.png',1,'2022-02-21 17:59:36','2022-02-28 20:18:30');

/*Table structure for table `deposits` */

DROP TABLE IF EXISTS `deposits`;

CREATE TABLE `deposits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `method_code` int(10) unsigned NOT NULL,
  `amount` decimal(18,8) NOT NULL,
  `method_currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` decimal(18,8) NOT NULL,
  `rate` decimal(18,8) NOT NULL,
  `final_amo` decimal(18,8) DEFAULT 0.00000000,
  `detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `try` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=>success, 2=>pending, 3=>cancel',
  `ad_id` int(11) DEFAULT NULL,
  `pkg_id` int(11) DEFAULT NULL,
  `admin_feedback` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `deposits` */

/*Table structure for table `districts` */

DROP TABLE IF EXISTS `districts`;

CREATE TABLE `districts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `districts` */

insert  into `districts`(`id`,`division_id`,`name`,`slug`,`status`,`created_at`,`updated_at`) values 
(8,30,'Chieti','chieti',1,'2022-02-27 17:50:04','2022-02-27 17:50:04'),
(9,30,'L\'Aquila','laquila',1,'2022-02-27 17:50:23','2022-02-27 17:50:23'),
(10,30,'Pescara','pescara',1,'2022-02-27 17:52:06','2022-02-27 17:52:06'),
(11,30,'Teramo','teramo',1,'2022-02-27 17:52:12','2022-02-27 17:52:12'),
(12,29,'Matera','matera',1,'2022-02-27 17:53:10','2022-02-27 17:53:10'),
(13,29,'Potenza','potenza',1,'2022-02-27 17:53:19','2022-02-27 17:53:19'),
(14,28,'Catanzaro','catanzaro',1,'2022-02-27 17:53:50','2022-02-27 17:53:50'),
(15,28,'Cosenza','cosenza',1,'2022-02-27 17:53:57','2022-02-27 17:53:57'),
(16,28,'Crotone','crotone',1,'2022-02-27 17:54:15','2022-02-27 17:54:15'),
(17,28,'Reggio di Calabria','reggio-di-calabria',1,'2022-02-27 17:54:28','2022-02-27 17:54:28'),
(18,28,'Vibo Valentia','vibo-valentia',1,'2022-02-27 17:54:43','2022-02-27 17:54:43'),
(19,27,'Avellino','avellino',1,'2022-02-27 17:55:51','2022-02-27 17:55:51'),
(20,27,'Benevento','benevento',1,'2022-02-27 17:55:57','2022-02-27 17:55:57'),
(21,27,'Caserta','caserta',1,'2022-02-27 17:56:02','2022-02-27 17:56:02'),
(22,27,'Napoli','napoli',1,'2022-02-27 17:56:07','2022-02-27 17:56:07'),
(23,27,'Salerno','salerno',1,'2022-02-27 17:56:15','2022-02-27 17:56:15'),
(24,26,'Bologna','bologna',1,'2022-02-27 17:56:51','2022-02-27 17:56:51'),
(25,26,'Ferrara','ferrara',1,'2022-02-27 17:57:09','2022-02-27 17:57:09'),
(26,26,'Forlì-Cesena','forli-cesena',1,'2022-02-27 17:57:26','2022-02-27 17:57:26'),
(27,26,'Modena','modena',1,'2022-02-27 17:57:34','2022-02-27 17:57:34'),
(28,26,'Parma','parma',1,'2022-02-27 17:57:40','2022-02-27 17:57:40'),
(29,26,'Piacenza','piacenza',1,'2022-02-27 17:57:45','2022-02-27 17:57:45'),
(30,26,'Ravenna','ravenna',1,'2022-02-27 17:57:51','2022-02-27 17:57:51'),
(31,26,'Reggio nell\'Emilia','reggio-nellemilia',1,'2022-02-27 17:58:17','2022-02-27 17:58:17'),
(32,26,'Rimini','rimini',1,'2022-02-27 17:58:39','2022-02-27 17:58:39'),
(33,25,'Gorizia','gorizia',1,'2022-02-27 17:59:41','2022-02-27 17:59:41'),
(34,25,'Pordenone','pordenone',1,'2022-02-27 17:59:55','2022-02-27 17:59:55'),
(35,25,'Trieste','trieste',1,'2022-02-27 18:00:08','2022-02-27 18:00:08'),
(36,25,'Udine','udine',1,'2022-02-27 18:00:14','2022-02-27 18:00:14'),
(37,24,'Frosinone','frosinone',1,'2022-02-27 18:00:48','2022-02-27 18:00:48'),
(38,24,'Latina','latina',1,'2022-02-27 18:01:12','2022-02-27 18:01:12'),
(39,24,'Rieti','rieti',1,'2022-02-27 18:03:17','2022-02-27 18:03:17'),
(40,24,'Roma','roma',1,'2022-02-27 18:03:28','2022-02-27 18:03:28'),
(41,24,'Viterbo','viterbo',1,'2022-02-27 18:03:40','2022-02-27 18:03:40'),
(42,23,'Genova','genova',1,'2022-02-27 18:04:14','2022-02-27 18:04:14'),
(43,23,'Imperia','imperia',1,'2022-02-27 18:04:23','2022-02-27 18:04:23'),
(44,23,'La Spezia','la-spezia',1,'2022-02-27 18:04:34','2022-02-27 18:04:34'),
(45,23,'Savona','savona',1,'2022-02-27 18:04:43','2022-02-27 18:04:43'),
(46,22,'Bergamo','bergamo',1,'2022-02-27 18:05:24','2022-02-27 18:05:24'),
(47,22,'Brescia','brescia',1,'2022-02-27 18:05:32','2022-02-27 18:05:32'),
(48,22,'Como','como',1,'2022-02-27 18:05:40','2022-02-27 18:05:40'),
(49,22,'Cremona','cremona',1,'2022-02-27 18:06:05','2022-02-27 18:06:05'),
(50,22,'Lecco','lecco',1,'2022-02-27 18:06:12','2022-02-27 18:06:12'),
(51,22,'Lodi','lodi',1,'2022-02-27 18:06:19','2022-02-27 18:06:19'),
(52,22,'Mantova','mantova',1,'2022-02-27 18:06:27','2022-02-27 18:06:27'),
(53,22,'Milano','milano',1,'2022-02-27 18:06:38','2022-02-27 18:06:38'),
(54,22,'Monza e della Brianza','monza-e-della-brianza',1,'2022-02-27 18:06:54','2022-02-27 18:06:54'),
(55,22,'Pavia','pavia',1,'2022-02-27 18:07:06','2022-02-27 18:07:06'),
(56,22,'Sondrio','sondrio',1,'2022-02-27 18:07:14','2022-02-27 18:07:14'),
(57,22,'Varese','varese',1,'2022-02-27 18:07:26','2022-02-27 18:07:26'),
(58,21,'Ancona','ancona',1,'2022-02-27 18:08:07','2022-02-27 18:08:07'),
(59,21,'Ascoli Piceno','ascoli-piceno',1,'2022-02-27 18:08:37','2022-02-27 18:08:37'),
(60,21,'Fermo','fermo',1,'2022-02-27 18:08:46','2022-02-27 18:08:46'),
(61,21,'Macerata','macerata',1,'2022-02-27 18:09:17','2022-02-27 18:09:17'),
(62,21,'Pesaro e Urbino','pesaro-e-urbino',1,'2022-02-27 18:09:28','2022-02-27 18:09:28'),
(63,20,'Campobasso','campobasso',1,'2022-02-27 18:09:55','2022-02-27 18:09:55'),
(64,20,'Isernia','isernia',1,'2022-02-27 18:10:03','2022-02-27 18:10:03'),
(65,19,'Alessandria','alessandria',1,'2022-02-27 18:11:13','2022-02-27 18:11:13'),
(66,19,'Asti','asti',1,'2022-02-27 18:11:28','2022-02-27 18:11:28'),
(67,19,'Biella','biella',1,'2022-02-27 18:11:43','2022-02-27 18:11:43'),
(68,19,'Cuneo','cuneo',1,'2022-02-27 18:11:52','2022-02-27 18:11:52'),
(69,19,'Novara','novara',1,'2022-02-27 18:12:02','2022-02-27 18:12:02'),
(70,19,'Torino','torino',1,'2022-02-27 18:12:30','2022-02-27 18:12:30'),
(71,19,'Verbano-Cusio-Ossola','verbano-cusio-ossola',1,'2022-02-27 18:12:46','2022-02-27 18:12:46'),
(72,19,'Vercelli','vercelli',1,'2022-02-27 18:13:00','2022-02-27 18:13:00'),
(73,18,'Bari','bari',1,'2022-02-27 18:13:34','2022-02-27 18:13:34'),
(74,18,'Barletta-Andria-Trani','barletta-andria-trani',1,'2022-02-27 18:13:48','2022-02-27 18:13:48'),
(75,18,'Brindisi','brindisi',1,'2022-02-27 18:14:00','2022-02-27 18:14:00'),
(76,18,'Foggia','foggia',1,'2022-02-27 18:14:08','2022-02-27 18:14:08'),
(77,18,'Lecce','lecce',1,'2022-02-27 18:14:18','2022-02-27 18:14:18'),
(78,18,'Taranto','taranto',1,'2022-02-27 18:14:27','2022-02-27 18:14:27'),
(79,17,'Cagliari','cagliari',1,'2022-02-27 18:15:06','2022-02-27 18:15:06'),
(80,17,'Carbonia-Iglesias','carbonia-iglesias',1,'2022-02-27 18:15:21','2022-02-27 18:15:21'),
(81,17,'Medio Campidano','medio-campidano',1,'2022-02-27 18:16:00','2022-02-27 18:16:00'),
(82,17,'Nuoro','nuoro',1,'2022-02-27 18:16:09','2022-02-27 18:16:09'),
(83,17,'Ogliastra','ogliastra',1,'2022-02-27 18:16:19','2022-02-27 18:16:19'),
(84,17,'Olbia-Tempio','olbia-tempio',1,'2022-02-27 18:16:29','2022-02-27 18:16:29'),
(85,17,'Oristano','oristano',1,'2022-02-27 18:16:41','2022-02-27 18:16:41'),
(86,17,'Sassari','sassari',1,'2022-02-27 18:16:53','2022-02-27 18:16:53'),
(87,16,'Agrigento','agrigento',1,'2022-02-27 18:17:34','2022-02-27 18:17:34'),
(88,16,'Caltanissetta','caltanissetta',1,'2022-02-27 18:17:46','2022-02-27 18:17:46'),
(89,16,'Catania','catania',1,'2022-02-27 18:18:14','2022-02-27 18:18:14'),
(90,16,'Enna','enna',1,'2022-02-27 18:18:25','2022-02-27 18:18:25'),
(91,16,'Messina','messina',1,'2022-02-27 18:18:37','2022-02-27 18:18:37'),
(92,16,'Palermo','palermo',1,'2022-02-27 18:18:48','2022-02-27 18:18:48'),
(93,16,'Ragusa','ragusa',1,'2022-02-27 18:18:58','2022-02-27 18:18:58'),
(94,16,'Siracusa','siracusa',1,'2022-02-27 18:19:15','2022-02-27 18:19:15'),
(95,16,'Trapani','trapani',1,'2022-02-27 18:19:29','2022-02-27 18:19:29'),
(96,15,'Arezzo','arezzo',1,'2022-02-27 18:20:03','2022-02-27 18:20:03'),
(97,15,'Firenze','firenze',1,'2022-02-27 18:20:11','2022-02-27 18:20:11'),
(98,15,'Grosseto','grosseto',1,'2022-02-27 18:20:18','2022-02-27 18:20:18'),
(99,15,'Livorno','livorno',1,'2022-02-27 18:20:27','2022-02-27 18:20:27'),
(100,15,'Lucca','lucca',1,'2022-02-27 18:20:34','2022-02-27 18:20:34'),
(101,15,'Massa-Carrara','massa-carrara',1,'2022-02-27 18:20:44','2022-02-27 18:20:44'),
(102,15,'Pisa','pisa',1,'2022-02-27 18:20:51','2022-02-27 18:20:51'),
(103,15,'Pistoia','pistoia',0,'2022-02-27 18:21:06','2022-02-27 18:21:06'),
(104,15,'Prato','prato',1,'2022-02-27 18:21:18','2022-02-27 18:21:18'),
(105,15,'Siena','siena',1,'2022-02-27 18:21:31','2022-02-27 18:21:31'),
(106,14,'Bolzano/Bozen','bolzanobozen',1,'2022-02-27 18:21:57','2022-02-27 18:21:57'),
(107,14,'Trento','trento',1,'2022-02-27 18:22:08','2022-02-27 18:22:08'),
(108,13,'Perugia','perugia',1,'2022-02-27 18:22:54','2022-02-27 18:22:54'),
(109,13,'Terni','terni',1,'2022-02-27 18:23:01','2022-02-27 18:23:01'),
(110,12,'Valle d\'Aosta/Vallée d\'Aoste','valle-daostavallee-daoste',1,'2022-02-27 18:23:38','2022-02-27 18:23:38'),
(111,11,'Belluno','belluno',1,'2022-02-27 18:24:12','2022-02-27 18:24:12'),
(112,11,'Padova','padova',1,'2022-02-27 18:24:20','2022-02-27 18:24:20'),
(113,11,'Rovigo','rovigo',1,'2022-02-27 18:24:28','2022-02-27 18:24:28'),
(114,11,'Treviso','treviso',1,'2022-02-27 18:24:39','2022-02-27 18:24:39'),
(115,11,'Venezia','venezia',1,'2022-02-27 18:24:46','2022-02-27 18:24:46'),
(116,11,'Verona','verona',1,'2022-02-27 18:24:53','2022-02-27 18:24:53'),
(117,11,'Vicenza','vicenza',1,'2022-02-27 18:25:00','2022-02-27 18:25:00');

/*Table structure for table `divisions` */

DROP TABLE IF EXISTS `divisions`;

CREATE TABLE `divisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `divisions` */

insert  into `divisions`(`id`,`name`,`slug`,`image`,`status`,`created_at`,`updated_at`) values 
(11,'Veneto','veneto','621ccaffe47f21646054143.png',1,'2022-02-27 17:28:09','2022-02-28 13:15:44'),
(12,'Valle d\'Aosta','valle-daosta','621ccbf26fe421646054386.png',1,'2022-02-27 17:28:24','2022-02-28 13:19:46'),
(13,'Umbria','umbria','621ccbe5f299e1646054373.png',1,'2022-02-27 17:28:35','2022-02-28 13:19:34'),
(14,'Trentino-Alto Adige','trentino-alto-adige','621ccbd9070e61646054361.png',1,'2022-02-27 17:28:53','2022-02-28 13:19:21'),
(15,'Toscana','toscana','621ccbcb5c33c1646054347.png',1,'2022-02-27 17:29:06','2022-02-28 13:19:07'),
(16,'Sicilia','sicilia','621ccbb9e42441646054329.png',1,'2022-02-27 17:29:21','2022-02-28 13:18:50'),
(17,'Sardegna','sardegna','621ccbaa8268f1646054314.png',1,'2022-02-27 17:29:51','2022-02-28 13:18:34'),
(18,'Puglia','puglia','621ccb9be81101646054299.png',1,'2022-02-27 17:30:06','2022-02-28 13:18:20'),
(19,'Piemonte','piemonte','621ccb8d09fbc1646054285.png',1,'2022-02-27 17:30:29','2022-02-28 13:18:05'),
(20,'Molise','molise','621ccb7f4b2fa1646054271.png',1,'2022-02-27 17:30:43','2022-02-28 13:17:51'),
(21,'Marche','marche','621ccb73c7e0c1646054259.png',1,'2022-02-27 17:31:20','2022-02-28 13:17:39'),
(22,'Lombardia','lombardia','621ccb684b3331646054248.png',1,'2022-02-27 17:31:35','2022-02-28 13:17:28'),
(23,'Liguria','liguria','621ccb5377dfe1646054227.png',1,'2022-02-27 17:32:00','2022-02-28 13:17:07'),
(24,'Lazio','lazio','621ccb4926da91646054217.png',1,'2022-02-27 17:32:14','2022-02-28 13:16:57'),
(25,'Friuli Venezia Giulia','friuli-venezia-giulia','621ccb3d9e0731646054205.png',1,'2022-02-27 17:32:30','2022-02-28 13:16:45'),
(26,'Emilia Romagna','emilia-romagna','621ccb33804141646054195.png',1,'2022-02-27 17:34:31','2022-02-28 13:16:35'),
(27,'Campania','campania','621ccb2964a8c1646054185.png',1,'2022-02-27 17:34:50','2022-02-28 13:16:25'),
(28,'Calabria','calabria','621ccb1c27ab71646054172.png',1,'2022-02-27 17:35:20','2022-02-28 13:16:12'),
(29,'Basilicata','basilicata','621ccb12a9ab91646054162.png',1,'2022-02-27 17:35:33','2022-02-28 13:16:02'),
(30,'Abruzzo','abruzzo','621ccb09e07af1646054153.png',1,'2022-02-27 17:35:54','2022-02-28 13:15:54');

/*Table structure for table `email_sms_templates` */

DROP TABLE IF EXISTS `email_sms_templates`;

CREATE TABLE `email_sms_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `email_sms_templates` */

insert  into `email_sms_templates`(`id`,`act`,`name`,`subj`,`email_body`,`sms_body`,`shortcodes`,`email_status`,`sms_status`,`created_at`,`updated_at`) values 
(1,'PASS_RESET_CODE','Password Reset','Password Reset','<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>','Your account recovery code is: {{code}}',' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}',1,1,'2019-09-25 02:04:05','2021-01-06 03:49:06'),
(2,'PASS_RESET_DONE','Password Reset Confirmation','You have Reset your password','<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>','Your password has been changed successfully','{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}',1,1,'2019-09-25 02:04:05','2020-03-07 13:23:47'),
(3,'EVER_CODE','Email Verification','Please verify your email address','<div><br></div><div>Thanks For join with us. <br></div><div>Please use below code to verify your email address.<br></div><div><br></div><div>Your email verification code is:<font size=\"6\"><b> {{code}}</b></font></div>','Your email verification code is: {{code}}','{\"code\":\"Verification code\"}',1,1,'2019-09-25 02:04:05','2021-01-04 02:35:10'),
(4,'SVER_CODE','SMS Verification ','Please verify your phone','Your phone verification code is: {{code}}','Your phone verification code is: {{code}}','{\"code\":\"Verification code\"}',0,1,'2019-09-25 02:04:05','2020-03-08 04:28:52'),
(5,'2FA_ENABLE','Google Two Factor - Enable','Google Two Factor Authentication is now  Enabled for Your Account','<div>You just enabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Enabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>','Your verification code is: {{code}}','{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}',1,1,'2019-09-25 02:04:05','2020-03-08 04:42:59'),
(6,'2FA_DISABLE','Google Two Factor Disable','Google Two Factor Authentication is now  Disabled for Your Account','<div>You just Disabled Google Two Factor Authentication for Your Account.</div><div><br></div><div>Disabled at <b>{{time}} </b>From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div>','Google two factor verification is disabled','{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}',1,1,'2019-09-25 02:04:05','2020-03-08 04:43:46'),
(16,'ADMIN_SUPPORT_REPLY','Support Ticket Reply ','Reply Support Ticket','<div><p><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong>A member from our support team has replied to the following ticket:</strong></span></p><p><b><span style=\"font-size: 11pt;\" data-mce-style=\"font-size: 11pt;\"><strong><br></strong></span></b></p><p><b>[Ticket#{{ticket_id}}] {{ticket_subject}}<br><br>Click here to reply:&nbsp; {{link}}</b></p><p>----------------------------------------------</p><p>Here is the reply : <br></p><p> {{reply}}<br></p></div><div><br></div>','{{subject}}\r\n\r\n{{reply}}\r\n\r\n\r\nClick here to reply:  {{link}}','{\"ticket_id\":\"Support Ticket ID\", \"ticket_subject\":\"Subject Of Support Ticket\", \"reply\":\"Reply from Staff/Admin\",\"link\":\"Ticket URL For relpy\"}',1,1,'2020-06-08 21:00:00','2020-05-04 05:24:40'),
(206,'DEPOSIT_COMPLETE','Automated Deposit - Successful','Deposit Completed Successfully','<div>Your deposit of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been completed Successfully.<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#000000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br><br></div>','{{amount}} {{currrency}} Deposit successfully by {{gateway_name}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}',1,1,'2020-06-24 21:00:00','2020-11-17 06:10:00'),
(207,'DEPOSIT_REQUEST','Manual Deposit - User Requested','Deposit Request Submitted Successfully','<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully<b> .<br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>','{{amount}} Deposit requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}\r\n','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\"}',1,1,'2020-05-31 21:00:00','2020-06-01 21:00:00'),
(208,'DEPOSIT_APPROVE','Manual Deposit - Admin Approved','Your Deposit is Approved','<div>Your deposit request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>is Approved .<b><br></b></div><div><b><br></b></div><div><b>Details of your Deposit :<br></b></div><div><br></div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Paid via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><font size=\"5\"><b><br></b></font></div><div><font size=\"5\">Your current Balance is <b>{{post_balance}} {{currency}}</b></font></div><div><br></div><div><br><br></div>','Admin Approve Your {{amount}} {{gateway_currency}} payment request by {{gateway_name}} transaction : {{transaction}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\", \"post_balance\":\"Users Balance After this operation\"}',1,1,'2020-06-16 21:00:00','2020-06-14 21:00:00'),
(209,'DEPOSIT_REJECT','Manual Payment- Admin Rejected','Your payment Request for Promotion is Rejected','<div>Your payment request for Ad promotion&nbsp; of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><br><div>Transaction Number was : {{trx}}</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}','Admin Rejected Your {{amount}} {{gateway_currency}} payment for ad promotion request by {{gateway_name}}\r\n\r\n{{rejection_message}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"rejection_message\":\"Rejection message\"}',1,1,'2020-06-09 21:00:00','2021-04-14 19:28:52'),
(215,'BAL_ADD','Balance Add by Admin','Your Account has been Credited','<div>{{amount}} {{currency}} has been added to your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}&nbsp;</b></font>','{{amount}} {{currency}} credited in your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}',1,1,'2019-09-14 22:14:22','2021-01-06 03:46:18'),
(216,'BAL_SUB','Balance Subtracted by Admin','Your Account has been Debited','<div>{{amount}} {{currency}} has been subtracted from your account .</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div>Your Current Balance is : <font size=\"3\"><b>{{post_balance}}&nbsp; {{currency}}</b></font>','{{amount}} {{currency}} debited from your account. Your Current Balance {{remaining_balance}} {{currency}} . Transaction: #{{trx}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By Admin\",\"currency\":\"Site Currency\", \"post_balance\":\"Users Balance After this operation\"}',1,1,'2019-09-14 22:14:22','2019-11-10 12:07:12'),
(217,'PROMOTION_REQUEST','Ad promotion request - User ','Ad Promotion Request Submitted Successfully','<div>Your Ad promotion request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>submitted successfully under <b>{{package}} </b>package<b> .</b><br></div><div><b><br></b></div><div><b>Details of your Ad Promotion :<br></b></div><div><br></div><div>Ad Title : {{ad_title}}</div><div>Package : {{package}}</div><div>Promotion Validity : {{validity}} days</div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>','{{amount}} Ad promotion requested by {{method}}. Charge: {{charge}} . Trx: {{trx}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Deposit Method Name\",\"method_currency\":\"Deposit Method Currency\",\"method_amount\":\"Deposit Method Amount After Conversion\",\"ad_title\":\"ad title\",\"package\":\"package name\",\"validity\":\"promotion validity\"}',1,1,'2020-05-31 21:00:00','2021-04-14 16:07:57'),
(218,'PROMOTION_APPROVE','Ad promotion Approve- User ','Ad Promotion Request Has Been Approved','<div>Congratulation!! Your Ad promotion request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} </b>has been approved under <b>{{package}} </b>package<b> .</b><br></div><div><b><br></b></div><div><b>Details of your Ad Promotion :<br></b></div><div><br></div><div>Ad Title : {{ad_title}}</div><div>Package : {{package}}</div><div>Promotion Validity : {{validity}} days</div><div>Amount : {{amount}} {{currency}}</div><div>Charge: <font color=\"#FF0000\">{{charge}} {{currency}}</font></div><div><br></div><div>Conversion Rate : 1 {{currency}} = {{rate}} {{method_currency}}</div><div>Payable : {{method_amount}} {{method_currency}} <br></div><div>Pay via :&nbsp; {{method_name}}</div><div><br></div><div>Transaction Number : {{trx}}</div><div><br></div><div><br></div>','Ad promotion accepted reviewer Ad title {{ad_title}}. Package {{package}}, Validity {{validity}} days','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"charge\":\"Gateway Charge\",\"currency\":\"Site Currency\",\"rate\":\"Conversion Rate\",\"method_name\":\"Payment Method Name\",\"method_currency\":\"Payment Method Currency\",\"method_amount\":\"Payment Method Amount After Conversion\",\"ad_title\":\"ad title\",\"package\":\"package name\",\"validity\":\"promotion validity\"}',1,1,'2020-05-31 21:00:00','2021-04-14 16:09:27'),
(219,'PROMOTE_REJECT','Ad Promotion reject - Admin Rejected','Your ad promotion Request is Rejected','<div>Your ad promotion request of <b>{{amount}} {{currency}}</b> is via&nbsp; <b>{{method_name}} has been rejected</b>.<b><br></b></div><div><br></div>Ad title : {{ad_title}}<div>Package : {{package}}</div><div><div>Transaction Number was : {{trx}}</div><div><br></div><div><b>{{amount}}</b> <b>{{currency}}</b> has been refunded to your <b>Refunded Balance. </b>You can further use it to promote ads.</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}</div>','Admin Rejected Your {{amount}} {{gateway_currency}} ad promotion request by {{gateway_name}}\r\n\r\n{{rejection_message}}','{\"trx\":\"Transaction Number\",\"amount\":\"Request Amount By user\",\"currency\":\"Site Currency\",\"method_name\":\"Deposit Method Name\",\"rejection_message\":\"Rejection message\",\"ad_title\":\"ad title\",\"package\":\"package name\"}',1,1,'2020-06-09 21:00:00','2021-04-14 19:08:31'),
(220,'PROMOTE_END','Ad Promotion expired','Your ad promotion is expired','<div>Your ad promotion&nbsp;<b>&nbsp;</b>has been<b> expired</b>.<b><br></b></div><div><br></div>Ad title : {{ad_title}}<div>Package : {{package}}</div><div><div>Validity was : {{validity}} days</div><div><br></div><div>if you have any query, feel free to contact us.</div></div>','Your ad promotion  has been expired.\r\n\r\nAd title : {{ad_title}}\r\nPackage : {{package}}\r\nValidity was : {{validity}} days\r\n\r\nif you have any query, feel free to contact us.','{\"ad_title\":\"Ad title\",\"package\":\"package name\",\"validity\":\"promotion validity\"}',1,1,'2020-06-09 21:00:00','2021-04-15 02:40:46'),
(221,'PROMOTION_APPROVE_FROM_BALANCE','Ad promotion Approve- from user refunded balance','Ad Promotion Request Has Been Approved','<div>Congratulation!! Your Ad promotion request of <b>{{amount}} {{currency}}</b>&nbsp;from your refunded balance<b>&nbsp;</b>has been approved under <b>{{package}} </b>package<b> .</b><br></div><div><b><br></b></div><div><b>Details of your Ad Promotion :<br></b></div><div><br></div><div>Ad Title : {{ad_title}}</div><div>Package : {{package}}</div><div>Promotion Validity : {{validity}} days</div><div>Amount : {{amount}} {{currency}}</div><div><br></div><div><br></div><div><br></div>','Ad promotion accepted by reviewer, Ad title {{ad_title}}. Package {{package}}, Validity {{validity}} days','{\"amount\":\"package price\",\"currency\":\"Site Currency\",\"ad_title\":\"ad title\",\"package\":\"package name\",\"validity\":\"promotion validity\"}',1,1,'2020-05-31 21:00:00','2021-04-15 03:57:34'),
(222,'PROMOTION_REQUEST_FROM_BALANCE','Ad promotion request - From User refunded balance ','Ad Promotion Request Submitted Successfully','<div>Your Ad promotion request of <b>{{amount}} {{currency}}</b>&nbsp; from your refunded balance submitted successfully under <b>{{package}} </b>package<b> .</b><br></div><div><b><br></b></div><div><b>Details of your Ad Promotion :<br></b></div><div><br></div><div>Ad Title : {{ad_title}}</div><div>Package : {{package}}</div><div>Promotion Validity : {{validity}} days</div><div>Amount : {{amount}} {{currency}}</div><div><br></div><div><br></div><div><br></div>','{{amount}} {{currency}} Ad promotion has been requested from your refunded balance','{\"amount\":\"package price\",\"currency\":\"site currency\",\"ad_title\":\"ad title\",\"package\":\"package name\",\"validity\":\"promotion validity\"}',1,1,'2020-05-31 21:00:00','2021-04-15 03:58:27'),
(223,'PROMOTE_REJECT_FROM_BALANCE','Ad Promotion reject - From user refunded balance','Your ad promotion Request is Rejected','<div>Your ad promotion request of <b>{{amount}} {{currency}}</b>&nbsp;from your refunded balance&nbsp;<b>has been rejected</b>.<b><br></b></div><div><br></div>Ad title : {{ad_title}}<div>Package : {{package}}</div><div><div><br></div><div><br></div><div><b>{{amount}}</b> <b>{{currency}}</b> has been refunded to your <b>Refunded Balance. </b>You can further use it to promote ads.</div><div><br></div><div>if you have any query, feel free to contact us.<br></div><br><div><br><br></div>\r\n\r\n\r\n\r\n{{rejection_message}}</div>','Admin Rejected Your {{amount}} {{currency}} ad promotion request {{ad_title}}','{\"amount\":\"package price\",\"currency\":\"site currency\",\"rejection_message\":\"Rejection message\",\"ad_title\":\"ad title\",\"package\":\"package name\"}',1,1,'2020-06-09 21:00:00','2021-04-15 03:59:19');

/*Table structure for table `extensions` */

DROP TABLE IF EXISTS `extensions`;

CREATE TABLE `extensions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `extensions` */

insert  into `extensions`(`id`,`act`,`name`,`description`,`image`,`script`,`shortcode`,`support`,`status`,`deleted_at`,`created_at`,`updated_at`) values 
(1,'tawk-chat','Tawk.to','Key location is shown bellow','tawky_big.png','<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>','{\"app_key\":{\"title\":\"App Key\",\"value\":\"6\"}}','twak.png',0,NULL,'2019-10-19 02:16:05','2022-03-02 16:00:05'),
(2,'google-recaptcha2','Google Recaptcha 2','Key location is shown bellow','recaptcha3.png','\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>','{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lfpm3cUAAAAAGIjbEJKhJNKS4X1Gns9ANjh8MfH\"}}','recaptcha.png',0,NULL,'2019-10-19 02:16:05','2021-07-10 04:15:39'),
(3,'custom-captcha','Custom Captcha','Just Put Any Random String','customcaptcha.png',NULL,'{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}','na',0,NULL,'2019-10-19 02:16:05','2021-07-10 04:15:35'),
(4,'google-analytics','Google Analytics','Key location is shown bellow','google-analytics.png','<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>','{\"app_key\":{\"title\":\"App Key\",\"value\":\"Demo\"}}','ganalytics.png',0,NULL,NULL,'2021-07-10 08:18:38'),
(5,'fb-comment','Facebook Comment ','Key location is shown bellow','Facebook.png','<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>','{\"app_key\":{\"title\":\"App Key\",\"value\":\"713047905830100\"}}','fb_com.PNG',0,NULL,NULL,'2021-07-10 03:49:48');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `favourites` */

DROP TABLE IF EXISTS `favourites`;

CREATE TABLE `favourites` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `favourites` */

insert  into `favourites`(`id`,`user_id`,`ad_id`,`created_at`,`updated_at`) values 
(1,5,6,'2022-02-28 22:27:37','2022-02-28 22:27:37');

/*Table structure for table `form_builders` */

DROP TABLE IF EXISTS `form_builders`;

CREATE TABLE `form_builders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 = input, 2 = select, 3 = checkbox, 4 = textarea, 5 = radio',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(11) NOT NULL COMMENT '1 = yes, 0 = no',
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_filter` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `form_builders` */

insert  into `form_builders`(`id`,`subcategory_id`,`type`,`label`,`name`,`placeholder`,`required`,`options`,`as_filter`,`created_at`,`updated_at`) values 
(1,9,1,'asdf','asdf','asdf',1,NULL,0,'2022-02-19 18:12:35','2022-02-19 18:12:35');

/*Table structure for table `frontends` */

DROP TABLE IF EXISTS `frontends`;

CREATE TABLE `frontends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `frontends` */

insert  into `frontends`(`id`,`data_keys`,`data_values`,`created_at`,`updated_at`) values 
(39,'banner.content','{\"has_image\":\"1\",\"title\":\"Benvenuti su Liquidami\",\"heading\":\"Acquista o vendi i crediti dei bonus edilizi\",\"sub_heading\":\"Cerca tra le offerte pubblicate e fai la tua proposta d\'acquisto\",\"popular_keyword\":\"Ricerche popolari: 2023, Milano, Superbonus, Roma, Sisma Bonus\",\"background_image\":\"62263774cc3121646671732.png\"}','2021-04-07 02:26:16','2022-03-07 16:48:53'),
(40,'category.content','{\"heading\":\"Quali crediti puoi vendere? Su Liquidami accettiamo tutti i crediti maturati dai bonus edilizi\"}','2021-04-07 02:36:58','2021-04-07 02:36:58'),
(41,'featuredAds.content','{\"heading\":\"Gli ultimi annunci inseriti\"}','2021-04-07 02:46:42','2021-04-07 02:46:42'),
(42,'location.content','{\"heading\":\"Citt\\u00e0 in Evidenza\"}','2021-04-07 02:55:03','2022-02-26 14:06:40'),
(43,'cta.content','{\"heading\":\"Hai un credito da vendere?\",\"sub_heading\":\"Registra un profilo aziendale e accedi in area riservata.\",\"button_text\":\"Vendi i tuoi crediti\",\"button_link\":\"user\\/post\\/ad\"}','2021-04-07 03:02:55','2022-02-26 14:22:24'),
(44,'cta.element','{\"has_image\":\"1\",\"title\":\"Che cos’è Liquidami?\",\"short_details\" : \"Liquidami è una piattaforma che facilità la vendita di crediti maturati dai bonus edilizi. Lo scopo della piattaforma è permettere l’incontro tra chi vuole vendere crediti per ottenere liquidità immediata e chi vuole acquistare crediti a un prezzo inferiore al valore del credito.\",\"icon_image\":\"606d4b698be661617775465.png\"}','2021-04-07 03:04:25','2021-07-10 03:58:50'),
(45,'cta.element','{\"has_image\":\"1\",\"title\":\"Quali crediti posso vendere?\",\"short_details\":\"È possibile vendere i crediti che sono stati maturati con i diversi bonus edilizi e che siano già presenti nel cassetto fiscale dell’azienda. I crediti sono venduti con uno sconto pari al 15% rispetto al valore originario del credito. Le fee ammontano al XXX.\",\"icon_image\":\"606d4b7a375be1617775482.png\"}','2021-04-07 03:04:42','2021-07-10 03:58:55'),
(46,'cta.element','{\"has_image\":\"1\",\"title\":\"Come funziona la vendita di crediti?\",\"short_details\":\"Il processo è molto semplice: prima di poter vendere bisogna registrare un profilo aziendale sulla piattaforma, caricando tutti i documenti necessari a garantire la veridicità delle informazioni. Una volta abilitato il profilo potrai vendere i tuoi crediti sotto forma di annunzi di vendita.\",\"icon_image\":\"606d4b9aaeabc1617775514.png\"}','2021-04-07 03:05:14','2021-07-10 03:58:59'),
(47,'contact_us.content','{\"title\":\"Informazioni di contatto\",\"email_address\":\"example@company.com\",\"address\":\"Null street, Utah, NY-1230\",\"contact_number\":\"+454512418544\",\"latitude\":\"21.874936\",\"longitude\":\"100.385821\",\"map_api\":\"AIzaSyCo_pcAdFNbTDCAvMwAD19oRTuEmb9M50c\"}','2021-04-07 03:41:18','2021-07-10 09:06:29'),
(48,'footer.content','{\"short_details\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo\",\"total_ad\":\"5,231\",\"total_users\":\"3,231\"}\', \'2021-04-07 00:42:39\', \'2021-07-07 03:43:54\')','2021-04-07 03:42:39','2021-07-07 06:43:54'),
(49,'footer.element','{\"social_icon\":\"<i class=\\\"lab la-facebook-f\\\"><\\/i>\",\"link\":\"https:\\/\\/facebook.com\"}','2021-04-07 03:42:54','2021-04-20 07:23:31'),
(50,'footer.element','{\"social_icon\":\"<i class=\\\"fab fa-linkedin-in\\\"><\\/i>\",\"link\":\"https:\\/\\/linkedin.com\"}','2021-04-07 03:43:10','2021-04-07 03:43:10'),
(53,'policy.element','{\"title\":\"Privacy\",\"details\":\"<h3 class=\\\"mb-3\\\" style=\\\"margin-top:0px;margin-bottom:1rem;font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);margin-right:0px;margin-left:0px;\\\">What information do we collect?<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How do we protect your information?<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Do we disclose any information to outside parties?<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Changes to our Privacy Policy<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">How long we retain your information?<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">What we don\\u2019t do with your data<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div><div><div>\\r\\n<\\/div>\\r\\n<\\/div>\"}','2021-04-07 04:05:00','2021-05-03 01:02:41'),
(54,'policy.element','{\"title\":\"Terms and Conditions\",\"details\":\"<h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We claim all authority to dismiss, end, or handicap any help with or without cause per administrator discretion. This is a Complete independent facilitating, on the off chance that you misuse our ticket or Livechat or emotionally supportive network by submitting solicitations or protests we will impair your record. The solitary time you should reach us about the seaward facilitating is if there is an issue with the worker. We have not many substance limitations and everything is as per laws and guidelines. Try not to join on the off chance that you intend to do anything contrary to the guidelines, we do check these things and we will know, don\'t burn through our own and your time by joining on the off chance that you figure you will have the option to sneak by us and break the terms.<\\/p><\\/div><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Configuration requests - If you have a fully managed dedicated server with us then we offer custom PHP\\/MySQL configurations, firewalls for dedicated IPs, DNS, and httpd configurations.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Software requests - Cpanel Extension Installation will be granted as long as it does not interfere with the security, stability, and performance of other users on the server.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Emergency Support - We do not provide emergency support \\/ Phone Support \\/ LiveChat Support. Support may take some hours sometimes.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Webmaster help - We do not offer any support for webmaster related issues and difficulty including coding, &amp; installs, Error solving. if there is an issue where a library or configuration of the server then we can help you if it\'s possible from our end.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Backups - We keep backups but we are not responsible for data loss, you are fully responsible for all backups.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">We Don\'t support any child porn or such material.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No spam-related sites or material, such as email lists, mass mail programs, and scripts, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No harassing material that may cause people to retaliate against you.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No phishing pages.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">You may not run any exploitation script from the server. reason can be terminated immediately.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">If Anyone attempting to hack or exploit the server by using your script or hosting, we will terminate your account to keep safe other users.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious Botnets are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Spam, mass mailing, or email marketing in any way are strictly forbidden here.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Malicious hacking materials, trojans, viruses, &amp; malicious bots running or for download are forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Resource and cronjob abuse is forbidden and will result in suspension or termination.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Php\\/CGI proxies are strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">CGI-IRC is strictly forbidden.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">No fake or disposal mailers, mass mailing, mail bombers, SMS bombers, etc.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">NO CREDIT OR REFUND will be granted for interruptions of service, due to User Agreement violations.<\\/li><\\/ul><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Terms &amp; Conditions for Users<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Before getting to this site, you are consenting to be limited by these site Terms and Conditions of Use, every single appropriate law, and guidelines, and concur that you are answerable for consistency with any material neighborhood laws. If you disagree with any of these terms, you are restricted from utilizing or getting to this site.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Support<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">Whenever you have downloaded our item, you may get in touch with us for help through email and we will give a valiant effort to determine your issue. We will attempt to answer using the Email for more modest bug fixes, after which we will refresh the center bundle. Content help is offered to confirmed clients by Tickets as it were. Backing demands made by email and Livechat.<\\/p><p class=\\\"my-3 font-18 font-weight-bold\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">On the off chance that your help requires extra adjustment of the System, at that point, you have two alternatives:<\\/p><ul class=\\\"font-18\\\" style=\\\"padding-left:15px;list-style-type:disc;font-size:18px;\\\"><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Hang tight for additional update discharge.<\\/li><li style=\\\"margin-top:0px;margin-right:0px;margin-left:0px;\\\">Or on the other hand, enlist a specialist (We offer customization for extra charges).<\\/li><\\/ul><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Ownership<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not guarantee scholarly or selective possession of any of our items, altered or unmodified. All items are property, we created them. Our items are given \\\"with no guarantees\\\" without guarantee of any sort, either communicated or suggested. On no occasion will our juridical individual be subject to any harms including, however not restricted to, immediate, roundabout, extraordinary, accidental, or significant harms or different misfortunes emerging out of the utilization of or powerlessness to utilize our items.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Warranty<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t offer any guarantee or assurance of these Services in any way. When our Services have been modified we can\'t ensure they will work with all outsider plugins, modules, or internet browsers. Program similarity ought to be tried against the show formats on the demo worker. If you don\'t mind guarantee that the programs you use will work with the component, as we can not ensure that our systems will work with all program mixes.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Unauthorized\\/Illegal Usage<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">You may not utilize our things for any illicit or unapproved reason or may you, in the utilization of the stage, disregard any laws in your locale (counting yet not restricted to copyright laws) just as the laws of your nation and International law. Specifically, it is disallowed to utilize the things on our foundation for pages that advance: brutality, illegal intimidation, hard sexual entertainment, bigotry, obscenity content or warez programming joins.<br \\/><br \\/>You can\'t imitate, copy, duplicate, sell, exchange or adventure any of our segment, utilization of the offered on our things, or admittance to the administration without the express composed consent by us or item proprietor.<br \\/><br \\/>Our Members are liable for all substance posted on the discussion and demo and movement that happens under your record.<br \\/><br \\/>We hold the chance of hindering your participation account quickly if we will think about a particularly not allowed conduct.<br \\/><br \\/>If you make a record on our site, you are liable for keeping up the security of your record, and you are completely answerable for all exercises that happen under the record and some other activities taken regarding the record. You should quickly inform us, of any unapproved employments of your record or some other penetrates of security.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Fiverr, Seoclerks Sellers Or Affiliates<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We do NOT ensure full SEO campaign conveyance within 24 hours. We make no assurance for conveyance time by any means. We give our best assessment to orders during the putting in of requests, anyway, these are gauges. We won\'t be considered liable for loss of assets, negative surveys or you being prohibited for late conveyance. If you are selling on a site that requires time touchy outcomes, utilize Our SEO Services at your own risk.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Payment\\/Refund Policy<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">No refund or cash back will be made. After a deposit has been finished, it is extremely unlikely to invert it. You should utilize your equilibrium on requests our administrations, Hosting, SEO campaign. You concur that once you complete a deposit, you won\'t document a debate or a chargeback against us in any way, shape, or form.<br \\/><br \\/>If you document a debate or chargeback against us after a deposit, we claim all authority to end every single future request, prohibit you from our site. False action, for example, utilizing unapproved or taken charge cards will prompt the end of your record. There are no special cases.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;font-family:Exo, sans-serif;color:rgb(54,54,54);\\\">Free Balance \\/ Coupon Policy<\\/h3><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"color:rgb(111,111,111);font-family:Nunito, sans-serif;font-size:16px;margin-bottom:3rem;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We offer numerous approaches to get FREE Balance, Coupons and Deposit offers yet we generally reserve the privilege to audit it and deduct it from your record offset with any explanation we may it is a sort of misuse. If we choose to deduct a few or all of free Balance from your record balance, and your record balance becomes negative, at that point the record will naturally be suspended. If your record is suspended because of a negative Balance you can request to make a custom payment to settle your equilibrium to actuate your record.<\\/p><\\/div><div><div><div><div>\\r\\n<\\/div><\\/div><\\/div><\\/div>\"}','2021-04-07 04:05:25','2021-05-03 01:03:19'),
(55,'policy.element','{\"title\":\"Policy\",\"details\":\"<h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What information do we collect?<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We gather data from you when you register on our site, submit a request, buy any services, react to an overview, or round out a structure. At the point when requesting any assistance or enrolling on our site, as suitable, you might be approached to enter your: name, email address, or telephone number. You may, nonetheless, visit our site anonymously.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How do we protect your information?<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">All provided delicate\\/credit data is sent through Stripe.<br \\/>After an exchange, your private data (credit cards, social security numbers, financials, and so on) won\'t be put away on our workers.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Do we disclose any information to outside parties?<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t sell, exchange, or in any case move to outside gatherings by and by recognizable data. This does exclude confided in outsiders who help us in working our site, leading our business, or adjusting you, since those gatherings consent to keep this data private. We may likewise deliver your data when we accept discharge is suitable to follow the law, implement our site strategies, or ensure our own or others\' rights, property, or wellbeing.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Children\'s Online Privacy Protection Act Compliance<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We are consistent with the prerequisites of COPPA (Children\'s Online Privacy Protection Act), we don\'t gather any data from anybody under 13 years old. Our site, items, and administrations are completely coordinated to individuals who are in any event 13 years of age or more established.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">Changes to our Privacy Policy<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">If we decide to change our privacy policy, we will post those changes on this page.<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">How long we retain your information?<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">At the point when you register for our site, we cycle and keep your information we have about you however long you don\'t erase the record or withdraw yourself (subject to laws and guidelines).<\\/p><\\/div><h3 class=\\\"mb-3\\\" style=\\\"font-weight:600;line-height:1.3;font-size:24px;color:rgb(54,54,54);font-family:Exo, sans-serif;\\\">What we don\\u2019t do with your data<\\/h3><h2><\\/h2><h2><\\/h2><div class=\\\"mb-5\\\" style=\\\"margin-bottom:3rem;font-size:16px;color:rgb(111,111,111);font-family:Nunito, sans-serif;\\\"><p class=\\\"font-18\\\" style=\\\"margin-right:0px;margin-left:0px;font-size:18px;\\\">We don\'t and will never share, unveil, sell, or in any case give your information to different organizations for the promoting of their items or administrations.<\\/p><\\/div><div><div><div><div>\\r\\n<\\/div><\\/div><\\/div><\\/div>\"}','2021-04-07 04:05:40','2021-05-03 01:03:44'),
(56,'breadcrumb.content','{\"has_image\":\"1\",\"background_image\":\"606d5db17e2581617780145.jpg\"}','2021-04-07 04:20:06','2021-04-07 04:22:25'),
(57,'faq.element','{\"question\":\"Che cos’è Liquidami?\",\"answer\":\"<strong>Liquidami <\\/strong> è una piattaforma per la compravendita \\r\\ndi crediti maturati attraverso i principali bonus edilizi disponibili in Italia.\"}','2021-04-07 05:55:43','2021-07-10 03:52:05'),
(58,'faq.element','{\"question\":\"Chi può registrarsi su Liquidami?\",\"answer\":\"La registrazione è possibile soltanto alle aziende, regolarmente attive e inserite nel Registro delle Imprese.\"}','2021-04-07 05:55:57','2021-07-10 03:52:13'),
(59,'faq.element','{\"question\":\"Come posso creare un’offerta di vendita?\",\"answer\":\"Per poter creare un’offerta di vendita è necessario aver completato la registrazione del profilo aziendale e aver eseguito l’accesso all’area riservata. Cliccando sulla voce Vendi Crediti puoi iniziare la fase di creazione di un’offerta di vendita.\"}','2021-04-07 05:56:11','2021-07-10 03:52:20'),
(60,'faq.element','{\"question\":\"Perché il prezzo di acquisto è più basso del valore del mio credito?\",\"answer\":\"Perché viene applicata automaticamente una percentuale di sconto sul valore posseduto. Tale percentuale di sconto è comprensiva delle Fee che il Venditore paga a Liquidami per l’utilizzo del servizio e che consente all’acquirente di ottenere una plusvalenza dall’acquisto del credito.\"}','2021-04-07 05:56:32','2021-07-10 03:52:26'),
(61,'login.content','{\"has_image\":\"1\",\"heading\":\"Login in your account.\",\"instruction_title\":\"Login to ClassiLab\",\"instruction_details\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci debitis libero ducimus. Asperiores accusantium.\",\"background_image\":\"606d7711a5e6b1617786641.jpg\"}','2021-04-07 06:10:41','2021-04-07 06:25:06'),
(63,'login.element','{\"Caricare i documenti.\"}','2021-04-07 06:25:17','2021-04-07 06:25:18'),
(64,'login.element','{\"instruction\":\"Creazione offerte di vendita dei crediti.\"}','2021-04-07 06:25:39','2021-04-07 06:25:39'),
(65,'login.element','{\"instruction\":\"Acquistare crediti in vendita.\"}','2021-04-07 06:25:53','2021-04-07 06:25:53'),
(66,'signup.element','{\"instruction\":\"Crea un account aziendale.\"}','2021-04-07 06:53:41','2021-04-07 06:53:41'),
(67,'signup.content','{\"has_image\":\"1\",\"heading\":\"Create an acocunt\",\"instruction_title\":\"Sign Up to ClassiLab\",\"instruction_details\":\"Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci debitis libero ducimus. Asperiores accusantium.\",\"background_image\":\"606d8141033011617789249.jpg\"}','2021-04-07 06:54:09','2021-04-07 06:54:09'),
(68,'signup.element','{\"instruction\":\"Carica i documenti aggiuntivi.\"}','2021-04-07 06:54:17','2021-04-07 06:54:17'),
(69,'signup.element','{\"instruction\":\"Vendi o acquista crediti.\"}','2021-04-07 06:54:23','2021-04-07 06:54:23'),
(70,'seo.data','{\"seo_image\":\"1\",\"keywords\":[\"classified\",\"listing\",\"classilab\",\"buy\",\"sell\"],\"description\":\"Buy sell classified ads platform\",\"social_title\":\"Classilab\",\"social_description\":\"Classilab is a buy sell classified ads platform\",\"image\":\"60e9909c364a51625919644.jpg\"}','2021-04-20 05:34:48','2021-07-10 09:20:44'),
(71,'how.element','{\"icon\":\"<i class=\\\"fas fa-user-plus\\\"><\\/i>\",\"title\":\"Registrata un Account\"}','2021-07-08 09:13:04','2021-07-08 09:13:04'),
(72,'how.element','{\"icon\":\"<i class=\\\"las la-ad\\\"><\\/i>\",\"title\":\"Abilita il Profilo \"}','2021-07-08 09:13:28','2021-07-08 09:13:28'),
(73,'how.element','{\"icon\":\"<i class=\\\"las la-exchange-alt\\\"><\\/i>\",\"title\":\"Acquista o Vendi crediti\"}','2021-07-08 09:13:56','2021-07-08 09:13:56'),
(74,'counter.element','{\"title\":\"Total User\",\"digit\":\"80k\"}','2021-07-08 09:19:42','2021-07-08 09:19:42'),
(75,'counter.element','{\"title\":\"Total Free Credit\",\"digit\":\"90k\"}','2021-07-08 09:20:38','2021-07-08 09:20:53'),
(76,'counter.element','{\"title\":\"Total feature Credit\",\"digit\":\"95k\"}','2021-07-08 09:21:13','2021-07-08 09:38:31'),
(77,'counter.element','{\"title\":\"Total Visitor\",\"digit\":\"156k\"}','2021-07-08 09:22:14','2021-07-08 09:22:14'),
(78,'cookie.data','{\"link\":\"#\",\"description\":\"We may use cookies or any other tracking technologies when you visit our\\r\\n website, including any other media form, mobile website, or mobile \\r\\napplication related or connected to help customize the Site and improve \\r\\nyour experience.\",\"status\":1}','2021-07-08 09:22:14','2021-07-10 08:47:03'),
(81,'faq.element','{\"question\":\"Chi gestisce le transazioni economiche?\",\"answer\":\"<strong>Liquidami <\\/strong>è una piattaforma che si limita a mettere in contatto veditori e acquirenti. Ogni transazione avviene al di fuori di Liquidami e dipende esclusivamente dagli istituti di credito del Veditore e dell’Acquirente.\"}','2021-07-08 09:22:14','2021-07-10 08:47:03'),
(82,'faq.element','{\"question\":\"Chi è l’Acquirente?\",\"answer\":\"L’Acquirente è un’azienda che è interessata all’acquisto di crediti per uno o più annualità. L’interesse dell’Acquirente nasce dalla possibilità di acquistare un credito a fronte di un prezzo inferiore, da portare successivamente in compensazione.\"}','2021-07-08 09:22:14','2021-07-10 08:47:03'),
(83,'faq.element','{\"question\":\"Come funziona l’Acquisto di crediti?\",\"answer\":\"Per acquistare un credito è necessario essere registrati alla piattaforma, avendo cura di caricare tutta la documentazione richiesta ed aver ricevuto l’abilitazione del profilo. I crediti possono essere visionati nella pagina Acquista Crediti. Una volta selezionato il credito di interesse, si può inviare una proposta di acquisto al Venditore. Questi può accettare oppure no la proposta. Se la proposta viene accettata, il Venditore ha l’obbligo di procedere al trasferimento dei crediti a favore dell’Acquirente, agendo nell’area riservata dell’Agenzia delle Entrate. Lo scambio di comunicazioni, e di eventuali documenti avviene tutto all’interno dell’area riservata di Liquidami.\"}','2021-07-08 09:22:14','2021-07-10 08:47:03'),
(84,'faq.element','{\"question\":\"Come funziona la registrazione su Liquidami?\",\"answer\":\"Su Liquidami possono registrarsi solo le aziende. Oltre i tradizionali dati anagrafici è necessario che tu disponga di una visura camerale aggiornata e l’ultimo bilancio depositato. Inoltre sarà obbligatorio caricare uno screenshot che dimostra i crediti che l’azienda ha già maturato e che sono disponibili nel cassetto fiscale sul sito dell’Agenzia delle Entrate. Tutta la documentazione sarà visionata dal team di Liquidami per poter abilitare il profilo aziendale sia alla vendita sia all’acquisto di crediti.\"}','2021-07-08 09:22:14','2021-07-10 08:47:03'),
(85,'',NULL,'2021-07-08 09:22:14','2021-07-10 08:47:03');

/*Table structure for table `gateway_currencies` */

DROP TABLE IF EXISTS `gateway_currencies`;

CREATE TABLE `gateway_currencies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_code` int(11) DEFAULT NULL,
  `gateway_alias` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_amount` decimal(18,8) NOT NULL,
  `max_amount` decimal(18,8) NOT NULL,
  `percent_charge` decimal(5,2) NOT NULL DEFAULT 0.00,
  `fixed_charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `rate` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_parameter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gateway_currencies` */

/*Table structure for table `gateways` */

DROP TABLE IF EXISTS `gateways`;

CREATE TABLE `gateways` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supported_currencies` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crypto` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: fiat currency, 1: crypto currency',
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `input_form` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `gateways` */

insert  into `gateways`(`id`,`code`,`alias`,`image`,`name`,`status`,`parameters`,`supported_currencies`,`crypto`,`extra`,`description`,`input_form`,`created_at`,`updated_at`) values 
(1,101,'paypal','5f6f1bd8678601601117144.jpg','Paypal',1,'{\"paypal_email\":{\"title\":\"PayPal Email\",\"global\":true,\"value\":\"sb-zlbi7986064@personal.example.com\"}}','{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2021-01-17 06:02:44'),
(2,102,'perfect_money','5f6f1d2a742211601117482.jpg','Perfect Money',1,'{\"passphrase\":{\"title\":\"ALTERNATE PASSPHRASE\",\"global\":true,\"value\":\"6451561651551\"},\"wallet_id\":{\"title\":\"PM Wallet\",\"global\":false,\"value\":\"\"}}','{\"USD\":\"$\",\"EUR\":\"\\u20ac\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:26:46'),
(3,103,'stripe','5f6f1d4bc69e71601117515.jpg','Stripe Hosted',1,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:26:49'),
(4,104,'skrill','5f6f1d41257181601117505.jpg','Skrill',1,'{\"pay_to_email\":{\"title\":\"Skrill Email\",\"global\":true,\"value\":\"merchant@skrill.com\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"---\"}}','{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JOD\":\"JOD\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"KWD\":\"KWD\",\"MAD\":\"MAD\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"OMR\":\"OMR\",\"PLN\":\"PLN\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"SAR\":\"SAR\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TND\":\"TND\",\"TRY\":\"TRY\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\",\"COP\":\"COP\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:26:52'),
(5,105,'paytm','5f6f1d1d3ec731601117469.jpg','PayTM',1,'{\"MID\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"DIY12386817555501617\"},\"merchant_key\":{\"title\":\"Merchant Key\",\"global\":true,\"value\":\"bKMfNxPPf_QdZppa\"},\"WEBSITE\":{\"title\":\"Paytm Website\",\"global\":true,\"value\":\"DIYtestingweb\"},\"INDUSTRY_TYPE_ID\":{\"title\":\"Industry Type\",\"global\":true,\"value\":\"Retail\"},\"CHANNEL_ID\":{\"title\":\"CHANNEL ID\",\"global\":true,\"value\":\"WEB\"},\"transaction_url\":{\"title\":\"Transaction URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/oltp-web\\/processTransaction\"},\"transaction_status_url\":{\"title\":\"Transaction STATUS URL\",\"global\":true,\"value\":\"https:\\/\\/pguat.paytm.com\\/paytmchecksum\\/paytmCallback.jsp\"}}','{\"AUD\":\"AUD\",\"ARS\":\"ARS\",\"BDT\":\"BDT\",\"BRL\":\"BRL\",\"BGN\":\"BGN\",\"CAD\":\"CAD\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"COP\":\"COP\",\"HRK\":\"HRK\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EGP\":\"EGP\",\"EUR\":\"EUR\",\"GEL\":\"GEL\",\"GHS\":\"GHS\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"KES\":\"KES\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"MAD\":\"MAD\",\"NPR\":\"NPR\",\"NZD\":\"NZD\",\"NGN\":\"NGN\",\"NOK\":\"NOK\",\"PKR\":\"PKR\",\"PEN\":\"PEN\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"ZAR\":\"ZAR\",\"KRW\":\"KRW\",\"LKR\":\"LKR\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"TRY\":\"TRY\",\"UGX\":\"UGX\",\"UAH\":\"UAH\",\"AED\":\"AED\",\"GBP\":\"GBP\",\"USD\":\"USD\",\"VND\":\"VND\",\"XOF\":\"XOF\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:26:54'),
(6,106,'payeer','5f6f1bc61518b1601117126.jpg','Payeer',1,'{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"866989763\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"7575\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\",\"RUB\":\"RUB\"}',0,'{\"status\":{\"title\": \"Status URL\",\"value\":\"ipn.payeer\"}}',NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:26:58'),
(7,107,'paystack','5f7096563dfb71601214038.jpg','PayStack',1,'{\"public_key\":{\"title\":\"Public key\",\"global\":true,\"value\":\"pk_test_3c9c87f51b13c15d99eb367ca6ebc52cc9eb1f33\"},\"secret_key\":{\"title\":\"Secret key\",\"global\":true,\"value\":\"sk_test_2a3f97a146ab5694801f993b60fcb81cd7254f12\"}}','{\"USD\":\"USD\",\"NGN\":\"NGN\"}',0,'{\"callback\":{\"title\": \"Callback URL\",\"value\":\"ipn.paystack\"},\"webhook\":{\"title\": \"Webhook URL\",\"value\":\"ipn.paystack\"}}\r\n',NULL,NULL,'2019-09-14 16:14:22','2020-12-28 04:25:38'),
(8,108,'voguepay','5f6f1d5951a111601117529.jpg','VoguePay',1,'{\"merchant_id\":{\"title\":\"MERCHANT ID\",\"global\":true,\"value\":\"demo\"}}','{\"USD\":\"USD\",\"GBP\":\"GBP\",\"EUR\":\"EUR\",\"GHS\":\"GHS\",\"NGN\":\"NGN\",\"ZAR\":\"ZAR\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:52:09'),
(9,109,'flutterwave','5f6f1b9e4bb961601117086.jpg','Flutterwave',1,'{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"demo_publisher_key\"},\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"demo_secret_key\"},\"encryption_key\":{\"title\":\"Encryption Key\",\"global\":true,\"value\":\"demo_encryption_key\"}}','{\"BIF\":\"BIF\",\"CAD\":\"CAD\",\"CDF\":\"CDF\",\"CVE\":\"CVE\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"GHS\":\"GHS\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"KES\":\"KES\",\"LRD\":\"LRD\",\"MWK\":\"MWK\",\"MZN\":\"MZN\",\"NGN\":\"NGN\",\"RWF\":\"RWF\",\"SLL\":\"SLL\",\"STD\":\"STD\",\"TZS\":\"TZS\",\"UGX\":\"UGX\",\"USD\":\"USD\",\"XAF\":\"XAF\",\"XOF\":\"XOF\",\"ZMK\":\"ZMK\",\"ZMW\":\"ZMW\",\"ZWD\":\"ZWD\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2021-01-04 06:29:50'),
(10,110,'razorpay','5f6f1d3672dd61601117494.jpg','RazorPay',1,'{\"key_id\":{\"title\":\"Key Id\",\"global\":true,\"value\":\"rzp_test_kiOtejPbRZU90E\"},\"key_secret\":{\"title\":\"Key Secret \",\"global\":true,\"value\":\"osRDebzEqbsE1kbyQJ4y0re7\"}}','{\"INR\":\"INR\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:51:34'),
(11,111,'stripe_js','5f7096a31ed9a1601214115.jpg','Stripe Storefront',1,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-12-05 06:56:20'),
(12,112,'instamojo','5f6f1babbdbb31601117099.jpg','Instamojo',1,'{\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_2241633c3bc44a3de84a3b33969\"},\"auth_token\":{\"title\":\"Auth Token\",\"global\":true,\"value\":\"test_279f083f7bebefd35217feef22d\"},\"salt\":{\"title\":\"Salt\",\"global\":true,\"value\":\"19d38908eeff4f58b2ddda2c6d86ca25\"}}','{\"INR\":\"INR\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:44:59'),
(13,501,'blockchain','5f6f1b2b20c6f1601116971.jpg','Blockchain',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"55529946-05ca-48ff-8710-f279d86b1cc5\"},\"xpub_code\":{\"title\":\"XPUB CODE\",\"global\":true,\"value\":\"xpub6CKQ3xxWyBoFAF83izZCSFUorptEU9AF8TezhtWeMU5oefjX3sFSBw62Lr9iHXPkXmDQJJiHZeTRtD9Vzt8grAYRhvbz4nEvBu3QKELVzFK\"}}','{\"BTC\":\"BTC\"}',1,NULL,NULL,NULL,'2019-09-14 16:14:22','2021-01-31 09:55:45'),
(14,502,'blockio','5f6f19432bedf1601116483.jpg','Block.io',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":false,\"value\":\"1658-8015-2e5e-9afb\"},\"api_pin\":{\"title\":\"API PIN\",\"global\":true,\"value\":\"covidvai2020\"}}','{\"BTC\":\"BTC\",\"LTC\":\"LTC\",\"DOGE\":\"DOGE\"}',1,'{\"cron\":{\"title\": \"Cron URL\",\"value\":\"ipn.blockio\"}}',NULL,NULL,'2019-09-14 16:14:22','2021-01-04 02:19:59'),
(15,503,'coinpayments','5f6f1b6c02ecd1601117036.jpg','CoinPayments',1,'{\"public_key\":{\"title\":\"Public Key\",\"global\":true,\"value\":\"7638eebaf4061b7f7cdfceb14046318bbdabf7e2f64944773d6550bd59f70274\"},\"private_key\":{\"title\":\"Private Key\",\"global\":true,\"value\":\"Cb6dee7af8Eb9E0D4123543E690dA3673294147A5Dc8e7a621B5d484a3803207\"},\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}','{\"BTC\":\"Bitcoin\",\"BTC.LN\":\"Bitcoin (Lightning Network)\",\"LTC\":\"Litecoin\",\"CPS\":\"CPS Coin\",\"VLX\":\"Velas\",\"APL\":\"Apollo\",\"AYA\":\"Aryacoin\",\"BAD\":\"Badcoin\",\"BCD\":\"Bitcoin Diamond\",\"BCH\":\"Bitcoin Cash\",\"BCN\":\"Bytecoin\",\"BEAM\":\"BEAM\",\"BITB\":\"Bean Cash\",\"BLK\":\"BlackCoin\",\"BSV\":\"Bitcoin SV\",\"BTAD\":\"Bitcoin Adult\",\"BTG\":\"Bitcoin Gold\",\"BTT\":\"BitTorrent\",\"CLOAK\":\"CloakCoin\",\"CLUB\":\"ClubCoin\",\"CRW\":\"Crown\",\"CRYP\":\"CrypticCoin\",\"CRYT\":\"CryTrExCoin\",\"CURE\":\"CureCoin\",\"DASH\":\"DASH\",\"DCR\":\"Decred\",\"DEV\":\"DeviantCoin\",\"DGB\":\"DigiByte\",\"DOGE\":\"Dogecoin\",\"EBST\":\"eBoost\",\"EOS\":\"EOS\",\"ETC\":\"Ether Classic\",\"ETH\":\"Ethereum\",\"ETN\":\"Electroneum\",\"EUNO\":\"EUNO\",\"EXP\":\"EXP\",\"Expanse\":\"Expanse\",\"FLASH\":\"FLASH\",\"GAME\":\"GameCredits\",\"GLC\":\"Goldcoin\",\"GRS\":\"Groestlcoin\",\"KMD\":\"Komodo\",\"LOKI\":\"LOKI\",\"LSK\":\"LSK\",\"MAID\":\"MaidSafeCoin\",\"MUE\":\"MonetaryUnit\",\"NAV\":\"NAV Coin\",\"NEO\":\"NEO\",\"NMC\":\"Namecoin\",\"NVST\":\"NVO Token\",\"NXT\":\"NXT\",\"OMNI\":\"OMNI\",\"PINK\":\"PinkCoin\",\"PIVX\":\"PIVX\",\"POT\":\"PotCoin\",\"PPC\":\"Peercoin\",\"PROC\":\"ProCurrency\",\"PURA\":\"PURA\",\"QTUM\":\"QTUM\",\"RES\":\"Resistance\",\"RVN\":\"Ravencoin\",\"RVR\":\"RevolutionVR\",\"SBD\":\"Steem Dollars\",\"SMART\":\"SmartCash\",\"SOXAX\":\"SOXAX\",\"STEEM\":\"STEEM\",\"STRAT\":\"STRAT\",\"SYS\":\"Syscoin\",\"TPAY\":\"TokenPay\",\"TRIGGERS\":\"Triggers\",\"TRX\":\" TRON\",\"UBQ\":\"Ubiq\",\"UNIT\":\"UniversalCurrency\",\"USDT\":\"Tether USD (Omni Layer)\",\"VTC\":\"Vertcoin\",\"WAVES\":\"Waves\",\"XCP\":\"Counterparty\",\"XEM\":\"NEM\",\"XMR\":\"Monero\",\"XSN\":\"Stakenet\",\"XSR\":\"SucreCoin\",\"XVG\":\"VERGE\",\"XZC\":\"ZCoin\",\"ZEC\":\"ZCash\",\"ZEN\":\"Horizen\"}',1,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:43:56'),
(16,504,'coinpayments_fiat','5f6f1b94e9b2b1601117076.jpg','CoinPayments Fiat',1,'{\"merchant_id\":{\"title\":\"Merchant ID\",\"global\":true,\"value\":\"93a1e014c4ad60a7980b4a7239673cb4\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CLP\":\"CLP\",\"CNY\":\"CNY\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"KRW\":\"KRW\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-10-22 06:17:29'),
(17,505,'coingate','5f6f1b5fe18ee1601117023.jpg','Coingate',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"Ba1VgPx6d437xLXGKCBkmwVCEw5kHzRJ6thbGo-N\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:43:44'),
(18,506,'coinbase_commerce','5f6f1b4c774af1601117004.jpg','Coinbase Commerce',1,'{\"api_key\":{\"title\":\"API Key\",\"global\":true,\"value\":\"c47cd7df-d8e8-424b-a20a\"},\"secret\":{\"title\":\"Webhook Shared Secret\",\"global\":true,\"value\":\"55871878-2c32-4f64-ab66\"}}','{\"USD\":\"USD\",\"EUR\":\"EUR\",\"JPY\":\"JPY\",\"GBP\":\"GBP\",\"AUD\":\"AUD\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CNY\":\"CNY\",\"SEK\":\"SEK\",\"NZD\":\"NZD\",\"MXN\":\"MXN\",\"SGD\":\"SGD\",\"HKD\":\"HKD\",\"NOK\":\"NOK\",\"KRW\":\"KRW\",\"TRY\":\"TRY\",\"RUB\":\"RUB\",\"INR\":\"INR\",\"BRL\":\"BRL\",\"ZAR\":\"ZAR\",\"AED\":\"AED\",\"AFN\":\"AFN\",\"ALL\":\"ALL\",\"AMD\":\"AMD\",\"ANG\":\"ANG\",\"AOA\":\"AOA\",\"ARS\":\"ARS\",\"AWG\":\"AWG\",\"AZN\":\"AZN\",\"BAM\":\"BAM\",\"BBD\":\"BBD\",\"BDT\":\"BDT\",\"BGN\":\"BGN\",\"BHD\":\"BHD\",\"BIF\":\"BIF\",\"BMD\":\"BMD\",\"BND\":\"BND\",\"BOB\":\"BOB\",\"BSD\":\"BSD\",\"BTN\":\"BTN\",\"BWP\":\"BWP\",\"BYN\":\"BYN\",\"BZD\":\"BZD\",\"CDF\":\"CDF\",\"CLF\":\"CLF\",\"CLP\":\"CLP\",\"COP\":\"COP\",\"CRC\":\"CRC\",\"CUC\":\"CUC\",\"CUP\":\"CUP\",\"CVE\":\"CVE\",\"CZK\":\"CZK\",\"DJF\":\"DJF\",\"DKK\":\"DKK\",\"DOP\":\"DOP\",\"DZD\":\"DZD\",\"EGP\":\"EGP\",\"ERN\":\"ERN\",\"ETB\":\"ETB\",\"FJD\":\"FJD\",\"FKP\":\"FKP\",\"GEL\":\"GEL\",\"GGP\":\"GGP\",\"GHS\":\"GHS\",\"GIP\":\"GIP\",\"GMD\":\"GMD\",\"GNF\":\"GNF\",\"GTQ\":\"GTQ\",\"GYD\":\"GYD\",\"HNL\":\"HNL\",\"HRK\":\"HRK\",\"HTG\":\"HTG\",\"HUF\":\"HUF\",\"IDR\":\"IDR\",\"ILS\":\"ILS\",\"IMP\":\"IMP\",\"IQD\":\"IQD\",\"IRR\":\"IRR\",\"ISK\":\"ISK\",\"JEP\":\"JEP\",\"JMD\":\"JMD\",\"JOD\":\"JOD\",\"KES\":\"KES\",\"KGS\":\"KGS\",\"KHR\":\"KHR\",\"KMF\":\"KMF\",\"KPW\":\"KPW\",\"KWD\":\"KWD\",\"KYD\":\"KYD\",\"KZT\":\"KZT\",\"LAK\":\"LAK\",\"LBP\":\"LBP\",\"LKR\":\"LKR\",\"LRD\":\"LRD\",\"LSL\":\"LSL\",\"LYD\":\"LYD\",\"MAD\":\"MAD\",\"MDL\":\"MDL\",\"MGA\":\"MGA\",\"MKD\":\"MKD\",\"MMK\":\"MMK\",\"MNT\":\"MNT\",\"MOP\":\"MOP\",\"MRO\":\"MRO\",\"MUR\":\"MUR\",\"MVR\":\"MVR\",\"MWK\":\"MWK\",\"MYR\":\"MYR\",\"MZN\":\"MZN\",\"NAD\":\"NAD\",\"NGN\":\"NGN\",\"NIO\":\"NIO\",\"NPR\":\"NPR\",\"OMR\":\"OMR\",\"PAB\":\"PAB\",\"PEN\":\"PEN\",\"PGK\":\"PGK\",\"PHP\":\"PHP\",\"PKR\":\"PKR\",\"PLN\":\"PLN\",\"PYG\":\"PYG\",\"QAR\":\"QAR\",\"RON\":\"RON\",\"RSD\":\"RSD\",\"RWF\":\"RWF\",\"SAR\":\"SAR\",\"SBD\":\"SBD\",\"SCR\":\"SCR\",\"SDG\":\"SDG\",\"SHP\":\"SHP\",\"SLL\":\"SLL\",\"SOS\":\"SOS\",\"SRD\":\"SRD\",\"SSP\":\"SSP\",\"STD\":\"STD\",\"SVC\":\"SVC\",\"SYP\":\"SYP\",\"SZL\":\"SZL\",\"THB\":\"THB\",\"TJS\":\"TJS\",\"TMT\":\"TMT\",\"TND\":\"TND\",\"TOP\":\"TOP\",\"TTD\":\"TTD\",\"TWD\":\"TWD\",\"TZS\":\"TZS\",\"UAH\":\"UAH\",\"UGX\":\"UGX\",\"UYU\":\"UYU\",\"UZS\":\"UZS\",\"VEF\":\"VEF\",\"VND\":\"VND\",\"VUV\":\"VUV\",\"WST\":\"WST\",\"XAF\":\"XAF\",\"XAG\":\"XAG\",\"XAU\":\"XAU\",\"XCD\":\"XCD\",\"XDR\":\"XDR\",\"XOF\":\"XOF\",\"XPD\":\"XPD\",\"XPF\":\"XPF\",\"XPT\":\"XPT\",\"YER\":\"YER\",\"ZMW\":\"ZMW\",\"ZWL\":\"ZWL\"}\r\n\r\n',0,'{\"endpoint\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.coinbase_commerce\"}}',NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:43:24'),
(24,113,'paypal_sdk','5f6f1bec255c61601117164.jpg','Paypal Express',1,'{\"clientId\":{\"title\":\"Paypal Client ID\",\"global\":true,\"value\":\"Ae0-tixtSV7DvLwIh3Bmu7JvHrjh5EfGdXr_cEklKAVjjezRZ747BxKILiBdzlKKyp-W8W_T7CKH1Ken\"},\"clientSecret\":{\"title\":\"Client Secret\",\"global\":true,\"value\":\"EOhbvHZgFNO21soQJT1L9Q00M3rK6PIEsdiTgXRBt2gtGtxwRer5JvKnVUGNU5oE63fFnjnYY7hq3HBA\"}}','{\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"HKD\":\"HKD\",\"HUF\":\"HUF\",\"INR\":\"INR\",\"ILS\":\"ILS\",\"JPY\":\"JPY\",\"MYR\":\"MYR\",\"MXN\":\"MXN\",\"TWD\":\"TWD\",\"NZD\":\"NZD\",\"NOK\":\"NOK\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"GBP\":\"GBP\",\"RUB\":\"RUB\",\"SGD\":\"SGD\",\"SEK\":\"SEK\",\"CHF\":\"CHF\",\"THB\":\"THB\",\"USD\":\"$\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-11-01 02:50:27'),
(25,114,'stripe_v3','5f709684736321601214084.jpg','Stripe Checkout',1,'{\"secret_key\":{\"title\":\"Secret Key\",\"global\":true,\"value\":\"sk_test_51HuxFUHyGzEKoTKAfIosswAQduMOGU4q4elcNr8OE6LoBZcp2MHKalOW835wjRiF6fxVTc7RmBgatKfAt1Qq0heb00rUaCOd2T\"},\"publishable_key\":{\"title\":\"PUBLISHABLE KEY\",\"global\":true,\"value\":\"pk_test_51HuxFUHyGzEKoTKAueAuF9BrMDA5boMcpJLLt0vu4q3QdPX5isaGudKNe6OyVjZP1UugpYd6JA7i7TczRWsbutaP004YmBiSp5\"},\"end_point\":{\"title\":\"End Point Secret\",\"global\":true,\"value\":\"w5555\"}}','{\"USD\":\"USD\",\"AUD\":\"AUD\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"INR\":\"INR\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PLN\":\"PLN\",\"SEK\":\"SEK\",\"SGD\":\"SGD\"}',0,'{\"webhook\":{\"title\": \"Webhook Endpoint\",\"value\":\"ipn.stripe_v3\"}}',NULL,NULL,'2019-09-14 16:14:22','2020-12-05 06:56:14'),
(26,1000,'payoneer','5f7096605cba01601214048.jpg','Payoneer',1,'[]','[]',0,'{\"delay\":null}','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Please Send To below&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Payoneer&nbsp;</span><span style=\"color: rgb(33, 37, 41); font-family: Montserrat, sans-serif; font-size: 16px; text-align: left;\">Account:</span></p><div><br></div><div>Payoneer Account : adminaccount@payoneer.com</div>','{\"send_from_email\":{\"field_name\":\"send_from_email\",\"field_level\":\"Send From Email\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}','2020-07-05 06:46:04','2020-09-27 10:40:48'),
(27,115,'mollie','5f6f1bb765ab11601117111.jpg','Mollie',1,'{\"mollie_email\":{\"title\":\"Mollie Email \",\"global\":true,\"value\":\"ronniearea@gmail.com\"},\"api_key\":{\"title\":\"API KEY\",\"global\":true,\"value\":\"test_cucfwKTWfft9s337qsVfn5CC4vNkrn\"}}','{\"AED\":\"AED\",\"AUD\":\"AUD\",\"BGN\":\"BGN\",\"BRL\":\"BRL\",\"CAD\":\"CAD\",\"CHF\":\"CHF\",\"CZK\":\"CZK\",\"DKK\":\"DKK\",\"EUR\":\"EUR\",\"GBP\":\"GBP\",\"HKD\":\"HKD\",\"HRK\":\"HRK\",\"HUF\":\"HUF\",\"ILS\":\"ILS\",\"ISK\":\"ISK\",\"JPY\":\"JPY\",\"MXN\":\"MXN\",\"MYR\":\"MYR\",\"NOK\":\"NOK\",\"NZD\":\"NZD\",\"PHP\":\"PHP\",\"PLN\":\"PLN\",\"RON\":\"RON\",\"RUB\":\"RUB\",\"SEK\":\"SEK\",\"SGD\":\"SGD\",\"THB\":\"THB\",\"TWD\":\"TWD\",\"USD\":\"USD\",\"ZAR\":\"ZAR\"}',0,NULL,NULL,NULL,'2019-09-14 16:14:22','2020-09-26 07:45:11'),
(28,1001,'bank_wire','5f6f1eb1548d41601117873.jpg','Bank Wire',1,'[]','[]',0,'{\"delay\":null}','Please Send To below bank Details<div><br></div><div>Bank Name: Demo Test Bank</div><div>Account Name: Demo Account Name</div><div>Account Number: 000-000-000-000-000</div><div>Routing Number: 0123456789</div>','{\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"},\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"description\":{\"field_name\":\"description\",\"field_level\":\"Description\",\"type\":\"textarea\",\"validation\":\"required\"}}','2020-08-20 06:47:33','2021-04-17 04:46:37'),
(29,1002,'mobile_money','5f6f1ec54303f1601117893.jpg','Mobile Money',1,'[]','[]',0,'{\"delay\":null}','<span style=\"color: rgb(33, 37, 41);\">Please Send To below Mobile Money Number:</span><div><br></div><div><span style=\"color: rgb(33, 37, 41); font-size: 1rem;\">Mobile Money Number</span>: 000-000-000-000-000</div>','{\"send_from_number\":{\"field_name\":\"send_from_number\",\"field_level\":\"Send From Number\",\"type\":\"text\",\"validation\":\"required\"},\"transaction_number\":{\"field_name\":\"transaction_number\",\"field_level\":\"Transaction Number\",\"type\":\"text\",\"validation\":\"required\"},\"screenshot\":{\"field_name\":\"screenshot\",\"field_level\":\"Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}','2020-09-24 09:50:30','2021-02-22 11:17:20'),
(30,116,'cashmaal','5f9a8b62bb4dd1603963746.png','Cashmaal',1,'{\"web_id\":{\"title\":\"Web Id\",\"global\":true,\"value\":\"3748\"},\"ipn_key\":{\"title\":\"IPN Key\",\"global\":true,\"value\":\"546254628759524554647987\"}}','{\"PKR\":\"PKR\",\"USD\":\"USD\"}',0,'{\"webhook\":{\"title\": \"IPN URL\",\"value\":\"ipn.cashmaal\"}}',NULL,NULL,NULL,'2020-10-29 06:29:06');

/*Table structure for table `general_settings` */

DROP TABLE IF EXISTS `general_settings`;

CREATE TABLE `general_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur_text` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency text',
  `cur_sym` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'currency symbol',
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `ev` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email verification, 0 - dont check, 1 - check',
  `en` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'email notification, 0 - dont send, 1 - send',
  `sv` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms verication, 0 - dont check, 1 - check',
  `sn` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'sms notification, 0 - dont send, 1 - send',
  `force_ssl` tinyint(4) NOT NULL DEFAULT 0,
  `secure_password` tinyint(4) NOT NULL DEFAULT 0,
  `registration` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Off	, 1: On',
  `social_login` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'social login',
  `social_credential` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promote_approval` int(1) NOT NULL DEFAULT 0 COMMENT '0 = no need for approval, 1 = need approval',
  `featured_show_count` int(11) NOT NULL COMMENT 'how much featured ad will show in ad list',
  `last_cron` timestamp NULL DEFAULT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `general_settings` */

insert  into `general_settings`(`id`,`sitename`,`cur_text`,`cur_sym`,`email_from`,`email_template`,`sms_api`,`base_color`,`secondary_color`,`mail_config`,`ev`,`en`,`sv`,`sn`,`force_ssl`,`secure_password`,`registration`,`social_login`,`social_credential`,`active_template`,`promote_approval`,`featured_show_count`,`last_cron`,`sys_version`,`created_at`,`updated_at`) values 
(1,'Liquidami','EURO','€','info@liquidami.it','<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/C9IS7Z1.png\" style=\"height: 240 !important;width: 338px;margin-bottom: 20px;\"></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><br></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2022 Liquidami. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>','https://api.infobip.com/api/v3/sendsms/plain?user=viserlab&password=26289099&sender=ViserLab&SMSText={{message}}&GSM={{number}}&type=longSMS','43ced2','002046','{\"name\":\"php\"}',0,1,0,1,1,0,1,0,'{\"google_client_id\":\"53929591142-l40gafo7efd9onfe6tj545sf9g7tv15t.apps.googleusercontent.com\",\"google_client_secret\":\"BRdB3np2IgYLiy4-bwMcmOwN\",\"fb_client_id\":\"277229062999748\",\"fb_client_secret\":\"1acfc850f73d1955d14b282938585122\"}','basic',1,2,'2022-03-01 19:07:19',NULL,NULL,'2022-03-07 06:53:01');

/*Table structure for table `languages` */

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `languages` */

insert  into `languages`(`id`,`name`,`code`,`icon`,`text_align`,`is_default`,`created_at`,`updated_at`) values 
(1,'English','en','5f15968db08911595250317.png',0,1,'2020-07-06 06:47:55','2022-02-22 21:21:42'),
(5,'Italian','hn',NULL,0,0,'2020-12-29 05:20:07','2022-02-22 21:21:42'),
(10,'Spanish','es',NULL,0,0,'2021-05-03 00:35:25','2021-05-03 00:35:25');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2020_06_14_061757_create_support_tickets_table',3),
(5,'2020_06_14_061837_create_support_messages_table',3),
(6,'2020_06_14_061904_create_support_attachments_table',3),
(7,'2020_06_14_062359_create_admins_table',3),
(8,'2020_06_14_064604_create_transactions_table',4),
(9,'2020_06_14_065247_create_general_settings_table',5),
(12,'2014_10_12_100000_create_password_resets_table',6),
(13,'2020_06_14_060541_create_user_logins_table',6),
(14,'2020_06_14_071708_create_admin_password_resets_table',7),
(15,'2020_09_14_053026_create_countries_table',8),
(16,'2021_03_15_084721_create_admin_notifications_table',9),
(17,'2021_03_29_094310_create_categories_table',10),
(18,'2021_03_29_105248_create_sub_categories_table',11),
(19,'2021_03_29_125146_create_form_builders_table',12),
(20,'2021_03_30_101151_create_divisions_table',13),
(21,'2021_03_30_101228_create_districts_table',13),
(22,'2021_03_30_120212_create_subscriptions_table',14),
(23,'2021_04_08_034111_create_ad_lists_table',15),
(24,'2021_04_08_091717_create_ad_images_table',16),
(25,'2021_04_13_101204_create_ad_promotes_table',17),
(26,'2021_04_15_081204_create_report_ads_table',18),
(27,'2021_04_16_031914_create_favourites_table',19),
(28,'2021_04_18_031519_create_advertises_table',20);

/*Table structure for table `packages` */

DROP TABLE IF EXISTS `packages`;

CREATE TABLE `packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,8) NOT NULL,
  `validity` int(11) NOT NULL COMMENT 'in days',
  `status` int(11) NOT NULL COMMENT '1 = active, 0 = inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `packages` */

insert  into `packages`(`id`,`name`,`price`,`validity`,`status`,`created_at`,`updated_at`) values 
(1,'Basilicata',22000.00000000,3,1,'2022-03-02 14:55:23','2022-03-02 14:55:23'),
(2,'Veneto',5000.00000000,5,1,'2022-03-02 14:56:03','2022-03-02 14:56:03'),
(3,'Molise',50.00000000,120,1,'2022-03-02 19:06:48','2022-03-02 19:06:48');

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pages` */

insert  into `pages`(`id`,`name`,`slug`,`tempname`,`secs`,`is_default`,`created_at`,`updated_at`) values 
(1,'HOME','home','templates.basic.','[\"category\",\"featuredAds\",\"location\",\"how\",\"counter\",\"cta\"]',1,'2020-07-11 09:23:58','2021-07-08 09:25:06'),
(2,'Vendi Crediti','vendiCredit','templates.basic.','[\"cta\",\"category\",\"featuredAds\",\"cta_2\"]',1,'2020-07-11 09:23:58','2021-07-08 09:25:06');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('goldstar079@outlook.com','231625','2022-03-06 21:11:12');

/*Table structure for table `report_ads` */

DROP TABLE IF EXISTS `report_ads`;

CREATE TABLE `report_ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `reasons` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` int(1) NOT NULL DEFAULT 0 COMMENT '1 = seen , 0 = not seen yet',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `report_ads` */

/*Table structure for table `sub_categories` */

DROP TABLE IF EXISTS `sub_categories`;

CREATE TABLE `sub_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `type` int(1) NOT NULL COMMENT '1 = sell, 2 = rent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sub_categories` */

insert  into `sub_categories`(`id`,`category_id`,`name`,`slug`,`status`,`type`,`created_at`,`updated_at`) values 
(8,1,'test','tet',1,0,'2022-02-19 21:06:49','2022-02-19 21:06:51'),
(9,1,'sds','sd',2,0,'2022-02-19 21:07:03','2022-02-19 21:07:06'),
(10,1,'my subcategory','my-subcategory',1,1,'2022-02-19 18:09:49','2022-02-19 18:09:49'),
(11,1,'adsfasd','adsfasd',1,1,'2022-02-19 18:10:02','2022-02-19 18:10:02'),
(12,1,'adfasd','adfasd',1,2,'2022-02-19 18:10:10','2022-02-19 18:10:10'),
(13,1,'onetest','onetest',1,1,'2022-02-19 18:12:14','2022-02-19 18:12:14');

/*Table structure for table `support_attachments` */

DROP TABLE IF EXISTS `support_attachments`;

CREATE TABLE `support_attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `support_message_id` int(11) NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_attachments` */

insert  into `support_attachments`(`id`,`support_message_id`,`attachment`,`created_at`,`updated_at`) values 
(1,1,'621d3de7477261646083559.pdf','2022-02-28 21:25:59','2022-02-28 21:25:59'),
(2,5,'6221ed3ed801f1646390590.png','2022-03-04 10:43:10','2022-03-04 10:43:10'),
(3,5,'6221ed3f1719c1646390591.png','2022-03-04 10:43:11','2022-03-04 10:43:11'),
(4,6,'6221edce4eb421646390734.png','2022-03-04 10:45:34','2022-03-04 10:45:34');

/*Table structure for table `support_credits` */

DROP TABLE IF EXISTS `support_credits`;

CREATE TABLE `support_credits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_credits` */

insert  into `support_credits`(`id`,`product_id`,`user_id`,`name`,`email`,`ticket`,`subject`,`status`,`last_reply`,`created_at`,`updated_at`) values 
(1,6,3,'123 123','123@123.com','152006','asgsadfg',0,'2022-03-05 07:57:03','2022-03-05 07:57:03','2022-03-05 07:57:03');

/*Table structure for table `support_credits_message` */

DROP TABLE IF EXISTS `support_credits_message`;

CREATE TABLE `support_credits_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_credits_message` */

/*Table structure for table `support_messages` */

DROP TABLE IF EXISTS `support_messages`;

CREATE TABLE `support_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supportticket_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_messages` */

insert  into `support_messages`(`id`,`supportticket_id`,`admin_id`,`message`,`created_at`,`updated_at`) values 
(1,'1',0,'123','2022-02-28 21:25:58','2022-02-28 21:25:58'),
(2,'2',0,'21212121121','2022-03-01 14:34:08','2022-03-01 14:34:08'),
(3,'2',1,'\'\'loijoiujoiuooiuoiuoiuououoop','2022-03-01 14:40:45','2022-03-01 14:40:45'),
(4,'3',0,'3131321321313131313212312313213213213131321','2022-03-02 21:16:50','2022-03-02 21:16:50'),
(5,'4',0,'112323123','2022-03-04 10:43:10','2022-03-04 10:43:10'),
(6,'5',0,'112323123','2022-03-04 10:45:34','2022-03-04 10:45:34'),
(7,'6',0,'123123','2022-03-04 10:46:07','2022-03-04 10:46:07'),
(8,'7',0,'123123','2022-03-04 10:46:21','2022-03-04 10:46:21'),
(9,'8',0,'123123','2022-03-04 10:46:47','2022-03-04 10:46:47'),
(10,'9',0,'123123','2022-03-04 10:47:39','2022-03-04 10:47:39'),
(11,'10',0,'123123','2022-03-04 10:48:03','2022-03-04 10:48:03'),
(12,'11',0,'123123','2022-03-04 10:48:08','2022-03-04 10:48:08'),
(13,'12',0,'123123','2022-03-04 10:48:20','2022-03-04 10:48:20'),
(14,'13',0,'123123','2022-03-04 10:48:24','2022-03-04 10:48:24'),
(15,'14',0,'123123','2022-03-04 10:48:58','2022-03-04 10:48:58'),
(16,'15',0,'adsf','2022-03-05 06:41:47','2022-03-05 06:41:47'),
(17,'16',0,'gegsadhsdsadf','2022-03-05 06:53:01','2022-03-05 06:53:01'),
(18,'17',0,'agqweqgqwefsdfsdf','2022-03-05 07:33:16','2022-03-05 07:33:16'),
(19,'18',0,'sdgasdgas','2022-03-05 07:34:01','2022-03-05 07:34:01'),
(20,'1',0,'asghawserhgasg','2022-03-05 07:57:03','2022-03-05 07:57:03'),
(21,'2',0,'asdgqwegqweg','2022-03-05 13:41:28','2022-03-05 13:41:28'),
(22,'3',0,'asdgqwegqweg','2022-03-05 13:41:56','2022-03-05 13:41:56'),
(23,'4',0,'asdgasdg','2022-03-05 13:42:53','2022-03-05 13:42:53'),
(24,'5',0,'111111111111111111111111111111111111111111111111111111111111111111111111111111','2022-03-06 07:57:09','2022-03-06 07:57:09'),
(25,'18',0,'asdasdas','2022-03-06 08:04:00','2022-03-06 08:04:00'),
(26,'6',0,'asdasdqweqweasdasd','2022-03-07 21:02:03','2022-03-07 21:02:03'),
(27,'7',0,'awerafasdaeraerasdfasdfwer','2022-03-07 21:05:59','2022-03-07 21:05:59'),
(28,'8',0,'asdfasddsfasdfasdfsadfasdfsadfsdf','2022-03-08 09:09:23','2022-03-08 09:09:23');

/*Table structure for table `support_tickets` */

DROP TABLE IF EXISTS `support_tickets`;

CREATE TABLE `support_tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0: Open, 1: Answered, 2: Replied, 3: Closed',
  `last_reply` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `support_tickets` */

insert  into `support_tickets`(`id`,`user_id`,`name`,`email`,`ticket`,`subject`,`status`,`last_reply`,`created_at`,`updated_at`) values 
(1,3,'222','developstar007@gmail.com','558551','123',3,'2022-02-28 21:26:41','2022-02-28 21:25:58','2022-02-28 21:26:41'),
(2,5,'GoldDev Star','goldstar079@outlook.com','511727','123',1,'2022-03-01 14:40:45','2022-03-01 14:34:08','2022-03-01 14:40:45'),
(3,3,'123 123','123@123.com','375031','Buy function',0,'2022-03-02 21:16:50','2022-03-02 21:16:50','2022-03-02 21:16:50'),
(4,3,'123 123','123@123.com','425717','Buy function',0,'2022-03-04 10:43:10','2022-03-04 10:43:10','2022-03-04 10:43:10'),
(5,3,'123 123','123@123.com','586782','Buy function',0,'2022-03-04 10:45:34','2022-03-04 10:45:34','2022-03-04 10:45:34'),
(6,3,'123 123','123@123.com','510465','123',0,'2022-03-04 10:46:07','2022-03-04 10:46:07','2022-03-04 10:46:07'),
(7,3,'123 123','123@123.com','446813','123',0,'2022-03-04 10:46:21','2022-03-04 10:46:21','2022-03-04 10:46:21'),
(8,3,'123 123','123@123.com','791087','123',0,'2022-03-04 10:46:47','2022-03-04 10:46:47','2022-03-04 10:46:47'),
(9,3,'123 123','123@123.com','177411','123',0,'2022-03-04 10:47:39','2022-03-04 10:47:39','2022-03-04 10:47:39'),
(10,3,'123 123','123@123.com','147146','123',0,'2022-03-04 10:48:03','2022-03-04 10:48:03','2022-03-04 10:48:03'),
(11,3,'123 123','123@123.com','160534','123',0,'2022-03-04 10:48:08','2022-03-04 10:48:08','2022-03-04 10:48:08'),
(12,3,'123 123','123@123.com','923343','123',0,'2022-03-04 10:48:20','2022-03-04 10:48:20','2022-03-04 10:48:20'),
(13,3,'123 123','123@123.com','234101','123',0,'2022-03-04 10:48:24','2022-03-04 10:48:24','2022-03-04 10:48:24'),
(14,3,'123 123','123@123.com','257409','123',0,'2022-03-04 10:48:58','2022-03-04 10:48:58','2022-03-04 10:48:58'),
(15,3,'123 123','123@123.com','805615','Buy function',0,'2022-03-05 06:41:47','2022-03-05 06:41:47','2022-03-05 06:41:47'),
(16,3,'123 123','123@123.com','147931','Promote function.',0,'2022-03-05 06:53:01','2022-03-05 06:53:01','2022-03-05 06:53:01'),
(17,3,'123 123','123@123.com','555707','Buy function',0,'2022-03-05 07:33:16','2022-03-05 07:33:16','2022-03-05 07:33:16'),
(18,3,'123 123','123@123.com','421384','123',2,'2022-03-06 08:04:00','2022-03-05 07:34:01','2022-03-06 08:04:00');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `charge` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `post_balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `trx_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `transactions` */

insert  into `transactions`(`id`,`user_id`,`amount`,`charge`,`post_balance`,`trx_type`,`trx`,`details`,`created_at`,`updated_at`) values 
(1,2,300.00000000,0.00000000,300.00000000,'+','HCV273TAC2FJ','Added Balance Via Admin','2022-02-23 11:59:12','2022-02-23 11:59:12'),
(2,3,1000.00000000,0.00000000,1000.00000000,'+','RTC99TAS7K54','Added Balance Via Admin','2022-02-23 12:02:35','2022-02-23 12:02:35'),
(3,3,1000.00000000,0.00000000,2000.00000000,'+','HMEH3XXW98EK','Added Balance Via Admin','2022-02-23 12:02:35','2022-02-23 12:02:35'),
(4,4,8888.00000000,0.00000000,8888.00000000,'+','MQ272YOC6MBD','Added Balance Via Admin','2022-02-23 12:19:34','2022-02-23 12:19:34');

/*Table structure for table `user_logins` */

DROP TABLE IF EXISTS `user_logins`;

CREATE TABLE `user_logins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_logins` */

insert  into `user_logins`(`id`,`user_id`,`user_ip`,`location`,`browser`,`os`,`longitude`,`latitude`,`country`,`country_code`,`created_at`,`updated_at`) values 
(1,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-16 19:16:55','2022-02-16 19:16:55'),
(2,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-16 20:01:42','2022-02-16 20:01:42'),
(3,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-16 20:04:25','2022-02-16 20:04:25'),
(4,2,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-16 22:04:38','2022-02-16 22:04:38'),
(5,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-16 22:05:01','2022-02-16 22:05:01'),
(6,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-17 15:00:45','2022-02-17 15:00:45'),
(7,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-17 16:32:06','2022-02-17 16:32:06'),
(8,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-17 21:07:20','2022-02-17 21:07:20'),
(9,1,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-17 21:44:42','2022-02-17 21:44:42'),
(10,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-17 21:45:44','2022-02-17 21:45:44'),
(11,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-18 06:31:02','2022-02-18 06:31:02'),
(12,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-18 10:24:56','2022-02-18 10:24:56'),
(13,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-18 13:30:44','2022-02-18 13:30:44'),
(14,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-18 14:57:22','2022-02-18 14:57:22'),
(15,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-18 20:40:13','2022-02-18 20:40:13'),
(16,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-19 05:35:20','2022-02-19 05:35:20'),
(17,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-19 15:00:21','2022-02-19 15:00:21'),
(18,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-19 18:02:41','2022-02-19 18:02:41'),
(19,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-20 17:44:57','2022-02-20 17:44:57'),
(20,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-21 10:21:30','2022-02-21 10:21:30'),
(21,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-21 11:02:42','2022-02-21 11:02:42'),
(22,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-21 19:13:29','2022-02-21 19:13:29'),
(23,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-22 19:20:20','2022-02-22 19:20:20'),
(24,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 11:43:33','2022-02-23 11:43:33'),
(25,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:00:35','2022-02-23 12:00:35'),
(26,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:05:19','2022-02-23 12:05:19'),
(27,4,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:18:26','2022-02-23 12:18:26'),
(28,4,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:20:42','2022-02-23 12:20:42'),
(29,4,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:20:42','2022-02-23 12:20:42'),
(30,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:22:36','2022-02-23 12:22:36'),
(31,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 12:27:15','2022-02-23 12:27:15'),
(32,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 17:55:01','2022-02-23 17:55:01'),
(33,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 17:55:27','2022-02-23 17:55:27'),
(34,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 18:34:33','2022-02-23 18:34:33'),
(35,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-23 22:11:21','2022-02-23 22:11:21'),
(36,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-24 06:58:17','2022-02-24 06:58:17'),
(37,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-24 14:28:12','2022-02-24 14:28:12'),
(38,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-24 17:03:12','2022-02-24 17:03:12'),
(39,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-24 17:03:12','2022-02-24 17:03:12'),
(40,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-25 08:25:01','2022-02-25 08:25:01'),
(41,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-25 13:22:43','2022-02-25 13:22:43'),
(42,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-25 13:22:43','2022-02-25 13:22:43'),
(43,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-26 14:19:40','2022-02-26 14:19:40'),
(44,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-26 17:58:03','2022-02-26 17:58:03'),
(45,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-27 15:05:20','2022-02-27 15:05:20'),
(46,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-27 18:25:37','2022-02-27 18:25:37'),
(47,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-28 13:00:51','2022-02-28 13:00:51'),
(48,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-02-28 22:24:56','2022-02-28 22:24:56'),
(49,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 14:09:16','2022-03-01 14:09:16'),
(50,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 14:37:31','2022-03-01 14:37:31'),
(51,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 18:51:01','2022-03-01 18:51:01'),
(52,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 19:20:20','2022-03-01 19:20:20'),
(53,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 22:24:21','2022-03-01 22:24:21'),
(54,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 22:25:16','2022-03-01 22:25:16'),
(55,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 22:27:13','2022-03-01 22:27:13'),
(56,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 23:07:29','2022-03-01 23:07:29'),
(57,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 23:12:31','2022-03-01 23:12:31'),
(58,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-01 23:20:46','2022-03-01 23:20:46'),
(59,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-02 14:56:18','2022-03-02 14:56:18'),
(60,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-02 19:03:05','2022-03-02 19:03:05'),
(61,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-02 19:07:11','2022-03-02 19:07:11'),
(62,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-03 16:34:54','2022-03-03 16:34:54'),
(63,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-03 18:55:40','2022-03-03 18:55:40'),
(64,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-04 07:47:50','2022-03-04 07:47:50'),
(65,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-04 10:11:08','2022-03-04 10:11:08'),
(66,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-04 13:59:15','2022-03-04 13:59:15'),
(67,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-04 19:11:13','2022-03-04 19:11:13'),
(68,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-05 00:22:15','2022-03-05 00:22:15'),
(69,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-05 06:36:39','2022-03-05 06:36:39'),
(70,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 07:49:14','2022-03-06 07:49:14'),
(71,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 07:50:06','2022-03-06 07:50:06'),
(72,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 07:50:24','2022-03-06 07:50:24'),
(73,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 07:55:18','2022-03-06 07:55:18'),
(74,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 14:11:06','2022-03-06 14:11:06'),
(75,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 17:34:17','2022-03-06 17:34:17'),
(76,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 18:00:46','2022-03-06 18:00:46'),
(77,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 19:02:04','2022-03-06 19:02:04'),
(78,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-06 19:02:22','2022-03-06 19:02:22'),
(79,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-07 14:24:59','2022-03-07 14:24:59'),
(80,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-07 19:40:47','2022-03-07 19:40:47'),
(81,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-07 21:02:51','2022-03-07 21:02:51'),
(82,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-08 08:12:22','2022-03-08 08:12:22'),
(83,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-08 09:05:25','2022-03-08 09:05:25'),
(84,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-08 09:16:49','2022-03-08 09:16:49'),
(85,3,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-08 09:21:45','2022-03-08 09:21:45'),
(86,5,'::1',' - -  -  ','Chrome','Windows 10','','','','','2022-03-08 14:07:14','2022-03-08 14:07:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_by` int(11) DEFAULT NULL,
  `balance` decimal(18,8) NOT NULL DEFAULT 0.00000000,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'contains full address',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0: banned, 1: active',
  `ev` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: email unverified, 1: email verified',
  `sv` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: sms unverified, 1: sms verified',
  `ver_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stores verification code',
  `ver_code_send_at` datetime DEFAULT NULL COMMENT 'verification send time',
  `ts` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: 2fa off, 1: 2fa on',
  `tv` tinyint(100) NOT NULL DEFAULT 1 COMMENT '0: 2fa unverified, 1: 2fa verified',
  `tsc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companyName` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headOffice` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traditionalemail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `legalemail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Invoice_unique_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MainAtecoCode` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nDocuments` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LBNCBR` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CCCR` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf1_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf2_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf3_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf1_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf2_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdf3_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`firstname`,`lastname`,`username`,`email`,`mobile`,`ref_by`,`balance`,`password`,`image`,`address`,`status`,`ev`,`sv`,`ver_code`,`ver_code_send_at`,`ts`,`tv`,`tsc`,`provider`,`provider_id`,`remember_token`,`created_at`,`updated_at`,`companyName`,`headOffice`,`traditionalemail`,`phone`,`legalemail`,`Invoice_unique_code`,`vat`,`MainAtecoCode`,`nDocuments`,`LBNCBR`,`CCCR`,`pdf1_name`,`pdf2_name`,`pdf3_name`,`pdf1_path`,`pdf2_path`,`pdf3_path`) values 
(2,'234','234','234234','234@234.com','93234234234',NULL,300.00000000,'$2y$10$5T0tdguQiME3oZDmteD53.nl2yu6D0/1QRT65EEBQSz4fFHsL0zIO',NULL,'{\"address\":\"123\",\"city\":\"123\",\"state\":\"3\",\"zip\":\"123\",\"country\":\"Afghanistan\"}','0','1','1',NULL,NULL,'0',1,NULL,NULL,NULL,NULL,'2022-02-16 22:04:38','2022-02-23 11:59:33','','','',0,'','','','','','','','','','','assets/pdf/01.txt','',''),
(3,'123','123','123123','123@123.com','93123123123',NULL,2000.00000000,'$2y$10$U0Z/b8n5S7YPjhmVz7.zF.MSH2aqzeo86N7ucZrvQrU277TKf4xpS','62127f8535a301645379461.png','{\"address\":\"123\",\"state\":\"123\",\"zip\":\"123\",\"country\":\"Afghanistan\",\"city\":\"123\"}','1','1','1',NULL,NULL,'0',1,NULL,NULL,NULL,NULL,'2022-02-16 19:16:54','2022-02-23 12:02:35','qweqwe','2222','456@456.456',2147483647,'asdsadsad@sdf.com','13','123','123','123','123','123123','','','','assets/pdf/01.txt','assets/pdf/02.txt','assets/pdf/03.txt'),
(4,'zxc','zxc','zxczxc','zxc@zxc.com','93321321321',NULL,8888.00000000,'$2y$10$5ncSjLVnXzwi.1YBcOhxwORuztLNQENaxje1qPiUOfDmkBKOcFDUq',NULL,'{\"address\":\"qq\",\"city\":\"aa\",\"state\":\"aa\",\"zip\":\"aa\",\"country\":\"Austria\"}','1','1','1',NULL,NULL,'1',0,NULL,NULL,NULL,NULL,'2022-02-23 12:18:26','2022-02-23 12:20:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,'GoldDev','Star','goldstar','goldstar079@outlook.com','1264123123123',NULL,0.00000000,'$2y$10$ROdqSkqkGlmU6V4ouQr/beCjiYgHZUZvZqIvrHrVfYLSVyHP1s95G',NULL,'{\"address\":\"QWE\",\"city\":\"QWE\",\"state\":\"QWE\",\"zip\":\"QWE\",\"country\":\"Antigua and Barbuda\"}','1','1','1',NULL,NULL,'0',1,NULL,NULL,NULL,NULL,'2022-02-23 12:22:36','2022-02-23 12:28:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'assets/pdf/01.gitignore','assets/pdf/9.5367431640625E-72.gitignore','assets/pdf/03.gitignore');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
