-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2022-08-24 01:12:43','2022-08-24 01:12:43','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://mazola-2.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://mazola-2.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Mazola 2','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','alanravery@gmail.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=38&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','mazola-2','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','mazola-2','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','53496','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','40','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','38','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1702486847','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','53496','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'user_count','1','no');
INSERT INTO `wp_options` VALUES (103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (105,'cron','a:4:{i:1688573564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1688605964;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1688606042;a:4:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'nonce_key','Lha~ax&(Y1MV*D03|@c9ss[yW8~9:mC/bfUS+`^^G5&VIJ!{a9HD.2duH*irQ3?r','no');
INSERT INTO `wp_options` VALUES (116,'nonce_salt','a}W>S} ;Fc3hP23|k*.w}&7!urQ)b$w3Ae`HQ;M|*8pWAyW&]]-ose+JRx[b@G~j','no');
INSERT INTO `wp_options` VALUES (117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwentytwo','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1661305650;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (127,'https_detection_errors','a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (134,'auth_key','&?ad5-3(Z$Kb0vNX;2g`T?5wP.<?K6?t#aCi1FW?S|kxg#H,ix/I/L8fK{sP~*m]','no');
INSERT INTO `wp_options` VALUES (135,'auth_salt','uk<S$8K$7z[Q`~WYt%p:*@Z4`1Y%g1$H<}3g{kaSfHxMN)N$)3j,UvjR4-;MT2m^','no');
INSERT INTO `wp_options` VALUES (136,'logged_in_key','!sGRrBUq9Y*<Uql~gv19h!MY2aLlg]u|PHP}A)`!I9n.g}cnj(HXAsg=Uo^EEF6:','no');
INSERT INTO `wp_options` VALUES (137,'logged_in_salt','B^_q*J)Ih3fX_9AkBBF@yi`2B3_9>F2Sgsx+4Gd%2{=d`]@an$s|)?B%Ob.oNfR,','no');
INSERT INTO `wp_options` VALUES (155,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (158,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (171,'current_theme','Mazola 2','yes');
INSERT INTO `wp_options` VALUES (172,'theme_mods_mazola-2','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:20:\"header_menu_location\";i:3;s:17:\"footer_location_1\";i:4;s:17:\"footer_location_2\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (173,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (176,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (177,'new_admin_email','alanravery@gmail.com','yes');
INSERT INTO `wp_options` VALUES (186,'_transient_health-check-site-status-result','{\"good\":14,\"recommended\":2,\"critical\":2}','yes');
INSERT INTO `wp_options` VALUES (203,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (257,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"alanravery@gmail.com\";s:7:\"version\";s:5:\"6.0.2\";s:9:\"timestamp\";i:1663198451;}','no');
INSERT INTO `wp_options` VALUES (458,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (627,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (684,'recovery_mode_email_last_sent','1669123263','yes');
INSERT INTO `wp_options` VALUES (685,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (788,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (789,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (875,'acf_version','6.1.6','yes');
INSERT INTO `wp_options` VALUES (1107,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1688565926;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}}','no');
INSERT INTO `wp_options` VALUES (1108,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (1296,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1688565926;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1305,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1688565926;s:7:\"checked\";a:3:{s:8:\"mazola-2\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1341,'_site_transient_timeout_theme_roots','1688567726','no');
INSERT INTO `wp_options` VALUES (1343,'_site_transient_theme_roots','a:3:{s:8:\"mazola-2\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1345,'_site_transient_timeout_php_check_9522db31646a2e4672d744b6f556967b','1689170729','no');
INSERT INTO `wp_options` VALUES (1347,'_site_transient_php_check_9522db31646a2e4672d744b6f556967b','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1661396456:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_edit_lock','1661397736:1');
INSERT INTO `wp_postmeta` VALUES (9,5,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,5,'_wp_old_slug','test-post');
INSERT INTO `wp_postmeta` VALUES (13,11,'_edit_lock','1661397515:1');
INSERT INTO `wp_postmeta` VALUES (14,14,'_edit_lock','1687354475:1');
INSERT INTO `wp_postmeta` VALUES (15,3,'_edit_lock','1663765170:1');
INSERT INTO `wp_postmeta` VALUES (16,19,'_edit_lock','1663852934:1');
INSERT INTO `wp_postmeta` VALUES (17,21,'_edit_lock','1663853081:1');
INSERT INTO `wp_postmeta` VALUES (18,23,'_edit_lock','1663765894:1');
INSERT INTO `wp_postmeta` VALUES (19,26,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (20,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (21,26,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (22,26,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (23,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (24,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (25,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (26,26,'_menu_item_url','http://mazola-2.local/');
INSERT INTO `wp_postmeta` VALUES (27,26,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (28,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (29,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (30,27,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (31,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (32,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (33,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (34,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (35,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (37,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (38,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (39,28,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (40,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (41,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (42,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (43,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (44,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (45,28,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (46,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (47,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (48,29,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (49,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (50,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (51,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (52,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (53,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (55,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (56,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (57,30,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (58,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (59,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (60,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (61,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (62,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (63,30,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (64,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (65,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (66,31,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (67,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (68,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (69,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (70,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (71,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (72,31,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (73,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (74,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (75,32,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (76,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (77,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (78,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (79,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (80,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (81,32,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (82,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (83,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (84,33,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (85,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (86,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (87,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (88,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (89,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (90,33,'_menu_item_orphaned','1664455518');
INSERT INTO `wp_postmeta` VALUES (91,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (92,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (93,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (94,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (95,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (96,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (97,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (98,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (100,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (101,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (102,35,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (103,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (104,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (105,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (106,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (107,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (109,36,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (110,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (111,36,'_menu_item_object_id','36');
INSERT INTO `wp_postmeta` VALUES (112,36,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (113,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (114,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (115,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (116,36,'_menu_item_url','http://google.com');
INSERT INTO `wp_postmeta` VALUES (118,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (119,37,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (120,37,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (121,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (122,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (123,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (124,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (125,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (127,38,'_edit_lock','1669064424:1');
INSERT INTO `wp_postmeta` VALUES (128,40,'_edit_lock','1669050139:1');
INSERT INTO `wp_postmeta` VALUES (129,42,'_edit_lock','1686950828:1');
INSERT INTO `wp_postmeta` VALUES (132,47,'_edit_lock','1687263518:1');
INSERT INTO `wp_postmeta` VALUES (135,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (136,49,'_edit_lock','1687199826:1');
INSERT INTO `wp_postmeta` VALUES (137,50,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (138,50,'_edit_lock','1687208136:1');
INSERT INTO `wp_postmeta` VALUES (139,51,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (140,51,'_edit_lock','1687355415:1');
INSERT INTO `wp_postmeta` VALUES (146,58,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (147,58,'_edit_lock','1686955577:1');
INSERT INTO `wp_postmeta` VALUES (148,51,'event_date','20230720');
INSERT INTO `wp_postmeta` VALUES (149,51,'_event_date','field_648ce6168578c');
INSERT INTO `wp_postmeta` VALUES (150,50,'event_date','20230914');
INSERT INTO `wp_postmeta` VALUES (151,50,'_event_date','field_648ce6168578c');
INSERT INTO `wp_postmeta` VALUES (152,49,'event_date','20230601');
INSERT INTO `wp_postmeta` VALUES (153,49,'_event_date','field_648ce6168578c');
INSERT INTO `wp_postmeta` VALUES (154,60,'_edit_lock','1687199255:1');
INSERT INTO `wp_postmeta` VALUES (155,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (156,60,'event_date','20231210');
INSERT INTO `wp_postmeta` VALUES (157,60,'_event_date','field_648ce6168578c');
INSERT INTO `wp_postmeta` VALUES (158,61,'_edit_lock','1687199808:1');
INSERT INTO `wp_postmeta` VALUES (159,63,'_edit_lock','1687200378:1');
INSERT INTO `wp_postmeta` VALUES (160,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,63,'event_date','20221231');
INSERT INTO `wp_postmeta` VALUES (162,63,'_event_date','field_648ce6168578c');
INSERT INTO `wp_postmeta` VALUES (163,64,'_edit_lock','1687619296:1');
INSERT INTO `wp_postmeta` VALUES (164,65,'_edit_lock','1687200781:1');
INSERT INTO `wp_postmeta` VALUES (165,66,'_edit_lock','1687201628:1');
INSERT INTO `wp_postmeta` VALUES (166,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (167,67,'_edit_lock','1687209619:1');
INSERT INTO `wp_postmeta` VALUES (168,50,'related_programs','a:2:{i:0;s:2:\"65\";i:1;s:2:\"64\";}');
INSERT INTO `wp_postmeta` VALUES (169,50,'_related_programs','field_6490a7bbe1daf');
INSERT INTO `wp_postmeta` VALUES (170,69,'_edit_lock','1687265791:1');
INSERT INTO `wp_postmeta` VALUES (171,70,'_edit_lock','1687266671:1');
INSERT INTO `wp_postmeta` VALUES (172,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (173,70,'related_programs','a:1:{i:0;s:2:\"65\";}');
INSERT INTO `wp_postmeta` VALUES (174,70,'_related_programs','field_6490a7bbe1daf');
INSERT INTO `wp_postmeta` VALUES (175,71,'_wp_attached_file','2023/06/barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (176,71,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2023/06/barksalot-scaled.jpg\";s:8:\"filesize\";i:422581;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9195;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72980;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4813;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43343;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151968;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:264387;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14250;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46013;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (177,70,'_thumbnail_id','71');
INSERT INTO `wp_postmeta` VALUES (178,72,'_wp_attached_file','2023/06/meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (179,72,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2023/06/meowsalot-scaled.jpg\";s:8:\"filesize\";i:290671;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7028;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47848;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4016;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29384;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:100051;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:179333;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10596;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31667;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:3:\"103\";s:1:\"y\";s:2:\"39\";s:1:\"w\";s:18:\"323.07692307691497\";s:1:\"h\";s:3:\"210\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:2:\"89\";s:1:\"y\";s:2:\"23\";s:1:\"w\";s:17:\"192.0000000000004\";s:1:\"h\";s:3:\"260\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (180,69,'_thumbnail_id','72');
INSERT INTO `wp_postmeta` VALUES (181,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (182,69,'related_programs','a:1:{i:0;s:2:\"65\";}');
INSERT INTO `wp_postmeta` VALUES (183,69,'_related_programs','field_6490a7bbe1daf');
INSERT INTO `wp_postmeta` VALUES (184,73,'_edit_lock','1687264836:1');
INSERT INTO `wp_postmeta` VALUES (185,74,'_wp_attached_file','2023/06/frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (186,74,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2023/06/frog-bio-scaled.jpg\";s:8:\"filesize\";i:312725;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12927;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:75796;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5883;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49412;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:140192;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:219335;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16831;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38045;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (187,73,'_thumbnail_id','74');
INSERT INTO `wp_postmeta` VALUES (188,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,73,'related_programs','a:1:{i:0;s:2:\"64\";}');
INSERT INTO `wp_postmeta` VALUES (190,73,'_related_programs','field_6490a7bbe1daf');
INSERT INTO `wp_postmeta` VALUES (191,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (192,75,'_edit_lock','1687265813:1');
INSERT INTO `wp_postmeta` VALUES (193,78,'_wp_attached_file','2023/06/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (194,78,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2023/06/field-scaled.jpg\";s:8:\"filesize\";i:833439;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12834;}s:5:\"large\";a:5:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:138960;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5516;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77373;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:310229;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:544629;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21445;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63041;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116226;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"208\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (195,70,'page_banner_subtitle','The leading voice on barking and biology.');
INSERT INTO `wp_postmeta` VALUES (196,70,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (197,70,'page_banner_background_image','78');
INSERT INTO `wp_postmeta` VALUES (198,70,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (199,79,'_wp_attached_file','2023/06/building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (200,79,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2023/06/building-scaled.jpg\";s:8:\"filesize\";i:476342;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9211;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:82859;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4114;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:47587;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:184325;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:317034;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14178;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:36270;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:80133;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (201,14,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (202,14,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (203,14,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (204,14,'page_banner_background_image','79');
INSERT INTO `wp_postmeta` VALUES (205,14,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (206,80,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (207,80,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (208,80,'page_banner_background_image','79');
INSERT INTO `wp_postmeta` VALUES (209,80,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (210,51,'page_banner_subtitle','The greatest day of the year.');
INSERT INTO `wp_postmeta` VALUES (211,51,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (212,51,'page_banner_background_image','81');
INSERT INTO `wp_postmeta` VALUES (213,51,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (214,51,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (215,51,'_related_programs','field_6490a7bbe1daf');
INSERT INTO `wp_postmeta` VALUES (216,81,'_wp_attached_file','2022/11/notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (217,81,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2022/11/notebook-scaled.jpg\";s:8:\"filesize\";i:331482;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9942;}s:5:\"large\";a:5:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59032;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4569;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38133;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:114804;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:200675;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13681;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:25579;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35326;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (218,82,'_edit_lock','1687616113:1');
INSERT INTO `wp_postmeta` VALUES (219,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (220,82,'page_banner_subtitle','A beautiful campus in the heart of downtown.');
INSERT INTO `wp_postmeta` VALUES (221,82,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (222,82,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (223,82,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (224,83,'_edit_lock','1687526090:1');
INSERT INTO `wp_postmeta` VALUES (225,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (226,83,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (227,83,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (228,83,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (229,83,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (230,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,84,'_edit_lock','1687523914:1');
INSERT INTO `wp_postmeta` VALUES (232,82,'map_location','a:14:{s:7:\"address\";s:41:\"333 West End Ave, New York, NY 10023, USA\";s:3:\"lat\";d:40.782410396967798;s:3:\"lng\";d:-73.983007604321273;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJJYMmgGJYwokRX-M7KRSO8Z8\";s:13:\"street_number\";s:3:\"333\";s:11:\"street_name\";s:15:\"West End Avenue\";s:17:\"street_name_short\";s:12:\"West End Ave\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:9:\"post_code\";s:5:\"10023\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}');
INSERT INTO `wp_postmeta` VALUES (233,82,'_map_location','field_649592884c500');
INSERT INTO `wp_postmeta` VALUES (234,83,'map_location','a:14:{s:7:\"address\";s:38:\"186 E 93rd St, New York, NY 10128, USA\";s:3:\"lat\";d:40.783385249131378;s:3:\"lng\";d:-73.951250249584945;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJN4MxTqRYwokRSj9u4F8f5mM\";s:13:\"street_number\";s:3:\"186\";s:11:\"street_name\";s:16:\"East 93rd Street\";s:17:\"street_name_short\";s:9:\"E 93rd St\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:9:\"post_code\";s:5:\"10128\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}');
INSERT INTO `wp_postmeta` VALUES (235,83,'_map_location','field_649592884c500');
INSERT INTO `wp_postmeta` VALUES (236,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,87,'_edit_lock','1687616062:1');
INSERT INTO `wp_postmeta` VALUES (238,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (239,64,'page_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (240,64,'_page_banner_subtitle','field_6491a226f6645');
INSERT INTO `wp_postmeta` VALUES (241,64,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (242,64,'_page_banner_background_image','field_6491a246f6646');
INSERT INTO `wp_postmeta` VALUES (243,64,'related_campus','a:1:{i:0;s:2:\"82\";}');
INSERT INTO `wp_postmeta` VALUES (244,64,'_related_campus','field_6496fa80cfe91');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-08-24 01:12:43','2022-08-24 01:12:43','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2022-08-24 01:12:43','2022-08-24 01:12:43','',0,'http://mazola-2.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2022-08-24 01:12:43','2022-08-24 01:12:43','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://mazola-2.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2022-08-24 01:12:43','2022-08-24 01:12:43','',0,'http://mazola-2.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2022-08-24 01:12:43','2022-08-24 01:12:43','<!-- wp:paragraph -->\n<p>This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2022-09-21 01:59:21','2022-09-21 01:59:21','',0,'http://mazola-2.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2022-08-25 03:00:04','2022-08-25 03:00:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','First Test Post','','publish','open','open','','first-test-post','','','2022-08-25 03:00:56','2022-08-25 03:00:56','',0,'http://mazola-2.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2022-08-25 02:58:52','2022-08-25 02:58:52','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-mazola-2','','','2022-08-25 02:58:52','2022-08-25 02:58:52','',0,'http://mazola-2.local/wp-global-styles-mazola-2/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2022-08-25 03:00:04','2022-08-25 03:00:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2022-08-25 03:00:04','2022-08-25 03:00:04','',5,'http://mazola-2.local/?p=7',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2022-08-25 03:00:28','2022-08-25 03:00:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2022-08-25 03:00:28','2022-08-25 03:00:28','',0,'http://mazola-2.local/?p=8',0,'post','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2022-08-25 03:00:28','2022-08-25 03:00:28','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','8-revision-v1','','','2022-08-25 03:00:28','2022-08-25 03:00:28','',8,'http://mazola-2.local/?p=9',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2022-08-25 03:00:56','2022-08-25 03:00:56','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','First Test Post','','inherit','closed','closed','','5-revision-v1','','','2022-08-25 03:00:56','2022-08-25 03:00:56','',5,'http://mazola-2.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2022-08-25 03:11:31','2022-08-25 03:11:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','First Test Page','','publish','closed','closed','','first-test-page','','','2022-08-25 03:11:31','2022-08-25 03:11:31','',0,'http://mazola-2.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2022-08-25 03:11:31','2022-08-25 03:11:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna nunc id cursus metus aliquam. Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci. Nunc lobortis mattis aliquam faucibus purus in massa tempor nec. In iaculis nunc sed augue lacus viverra. Condimentum mattis pellentesque id nibh tortor. Vel pretium lectus quam id leo in vitae turpis massa. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Molestie at elementum eu facilisis sed. Duis at consectetur lorem donec massa sapien faucibus et. Ornare arcu odio ut sem nulla pharetra diam. In ante metus dictum at tempor. Fermentum odio eu feugiat pretium. Bibendum enim facilisis gravida neque convallis a.</p>\n<!-- /wp:paragraph -->','First Test Page','','inherit','closed','closed','','11-revision-v1','','','2022-08-25 03:11:31','2022-08-25 03:11:31','',11,'http://mazola-2.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2022-09-21 01:16:53','2022-09-21 01:16:53','<!-- wp:paragraph -->\n<p>This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2023-06-21 13:08:42','2023-06-21 13:08:42','',0,'http://mazola-2.local/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2022-09-21 01:16:53','2022-09-21 01:16:53','<!-- wp:paragraph -->\n<p>This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','14-revision-v1','','','2022-09-21 01:16:53','2022-09-21 01:16:53','',14,'http://mazola-2.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2022-09-21 01:17:19','2022-09-21 01:17:19','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://mazola-2.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-09-21 01:17:19','2022-09-21 01:17:19','',3,'http://mazola-2.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2022-09-21 01:21:27','2022-09-21 01:21:27','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://mazola-2.local.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Comments</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Cookies</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Embedded content from other websites</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where your data is sent</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-autosave-v1','','','2022-09-21 01:21:27','2022-09-21 01:21:27','',3,'http://mazola-2.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2022-09-21 01:59:21','2022-09-21 01:59:21','<!-- wp:paragraph -->\n<p>This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2022-09-21 01:59:21','2022-09-21 01:59:21','',3,'http://mazola-2.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2022-09-21 13:00:22','2022-09-21 13:00:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2022-09-22 13:24:37','2022-09-22 13:24:37','',14,'http://mazola-2.local/?page_id=19',1,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2022-09-21 13:00:22','2022-09-21 13:00:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','19-revision-v1','','','2022-09-21 13:00:22','2022-09-21 13:00:22','',19,'http://mazola-2.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2022-09-21 13:00:51','2022-09-21 13:00:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2022-09-22 13:24:48','2022-09-22 13:24:48','',14,'http://mazola-2.local/?page_id=21',2,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2022-09-21 13:00:51','2022-09-21 13:00:51','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','21-revision-v1','','','2022-09-21 13:00:51','2022-09-21 13:00:51','',21,'http://mazola-2.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2022-09-21 13:13:54','2022-09-21 13:13:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2022-09-21 13:13:54','2022-09-21 13:13:54','',3,'http://mazola-2.local/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2022-09-21 13:13:54','2022-09-21 13:13:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','23-revision-v1','','','2022-09-21 13:13:54','2022-09-21 13:13:54','',23,'http://mazola-2.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2022-09-29 12:45:18','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',0,'http://mazola-2.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2022-09-29 12:50:24','2022-09-29 12:47:14',' ','','','publish','closed','closed','','27','','','2022-09-29 12:50:24','2022-09-29 12:50:24','',0,'http://mazola-2.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2022-09-29 12:45:18','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',3,'http://mazola-2.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2022-09-29 12:50:24','2022-09-29 12:47:14',' ','','','publish','closed','closed','','29','','','2022-09-29 12:50:24','2022-09-29 12:50:24','',0,'http://mazola-2.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2022-09-29 12:45:18','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',14,'http://mazola-2.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2022-09-29 12:45:18','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',14,'http://mazola-2.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2022-09-29 12:45:18','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',0,'http://mazola-2.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2022-09-29 12:45:18','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2022-09-29 12:45:18','0000-00-00 00:00:00','',0,'http://mazola-2.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2022-09-29 12:57:20','2022-09-29 12:57:20',' ','','','publish','closed','closed','','34','','','2022-09-29 12:57:20','2022-09-29 12:57:20','',0,'http://mazola-2.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2022-09-29 12:57:20','2022-09-29 12:57:20',' ','','','publish','closed','closed','','35','','','2022-09-29 12:57:20','2022-09-29 12:57:20','',3,'http://mazola-2.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2022-09-29 12:58:13','2022-09-29 12:58:13','','Google','','publish','closed','closed','','google','','','2022-09-29 12:58:13','2022-09-29 12:58:13','',0,'http://mazola-2.local/?p=36',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2022-09-29 12:58:13','2022-09-29 12:58:13',' ','','','publish','closed','closed','','37','','','2022-09-29 12:58:13','2022-09-29 12:58:13','',0,'http://mazola-2.local/?p=37',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2022-09-30 12:30:05','2022-09-30 12:30:05','','Home','','publish','closed','closed','','home','','','2022-11-21 20:39:04','2022-11-21 20:39:04','',0,'http://mazola-2.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2022-09-30 12:30:05','2022-09-30 12:30:05','','Home','','inherit','closed','closed','','38-revision-v1','','','2022-09-30 12:30:05','2022-09-30 12:30:05','',38,'http://mazola-2.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-09-30 12:30:24','2022-09-30 12:30:24','','Blog','','publish','closed','closed','','blog','','','2022-09-30 12:30:24','2022-09-30 12:30:24','',0,'http://mazola-2.local/?page_id=40',0,'page','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2022-09-30 12:30:24','2022-09-30 12:30:24','','Blog','','inherit','closed','closed','','40-revision-v1','','','2022-09-30 12:30:24','2022-09-30 12:30:24','',40,'http://mazola-2.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-09-30 12:55:03','2022-09-30 12:55:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2023-06-16 21:17:34','2023-06-16 21:17:34','',0,'http://mazola-2.local/?p=42',0,'post','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2022-09-30 12:55:03','2022-09-30 12:55:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','42-revision-v1','','','2022-09-30 12:55:03','2022-09-30 12:55:03','',42,'http://mazola-2.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2022-11-21 20:38:52','2022-11-21 20:38:52','','Testing 123','','inherit','closed','closed','','38-revision-v1','','','2022-11-21 20:38:52','2022-11-21 20:38:52','',38,'http://mazola-2.local/?p=45',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2022-11-21 20:39:04','2022-11-21 20:39:04','','Home','','inherit','closed','closed','','38-revision-v1','','','2022-11-21 20:39:04','2022-11-21 20:39:04','',38,'http://mazola-2.local/?p=46',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2022-11-21 21:01:10','2022-11-21 21:01:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Pumpkin Pie','','publish','open','open','','pumpkin-pie','','','2022-11-21 21:01:10','2022-11-21 21:01:10','',0,'http://mazola-2.local/?p=47',0,'post','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2022-11-21 21:01:10','2022-11-21 21:01:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Pumpkin Pie','','inherit','closed','closed','','47-revision-v1','','','2022-11-21 21:01:10','2022-11-21 21:01:10','',47,'http://mazola-2.local/?p=48',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2022-11-22 13:25:37','2022-11-22 13:25:37','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Math Meetup','','publish','closed','closed','','math-meetup','','','2023-06-19 18:37:06','2023-06-19 18:37:06','',0,'http://mazola-2.local/?post_type=event&#038;p=49',0,'event','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2022-11-22 13:25:50','2022-11-22 13:25:50','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2023-06-19 20:37:11','2023-06-19 20:37:11','',0,'http://mazola-2.local/?post_type=event&#038;p=50',0,'event','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2022-11-22 13:26:02','2022-11-22 13:26:02','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Poetry Day','Poetry day is going to be amazing.','publish','closed','closed','','poetry-day','','','2023-06-21 13:48:00','2023-06-21 13:48:00','',0,'http://mazola-2.local/?post_type=event&#038;p=51',0,'event','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2023-06-16 21:17:34','2023-06-16 21:17:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won another award this year.','inherit','closed','closed','','42-revision-v1','','','2023-06-16 21:17:34','2023-06-16 21:17:34','',42,'http://mazola-2.local/?p=57',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2023-06-16 22:48:33','2023-06-16 22:48:33','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_648ce6164b9f0','','','2023-06-16 22:48:33','2023-06-16 22:48:33','',0,'http://mazola-2.local/?post_type=acf-field-group&#038;p=58',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2023-06-16 22:48:33','2023-06-16 22:48:33','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_648ce6168578c','','','2023-06-16 22:48:33','2023-06-16 22:48:33','',58,'http://mazola-2.local/?post_type=acf-field&p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2023-06-19 18:26:42','2023-06-19 18:26:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2023-06-19 18:26:42','2023-06-19 18:26:42','',0,'http://mazola-2.local/?post_type=event&#038;p=60',0,'event','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2023-06-19 18:29:53','2023-06-19 18:29:53','','Past Events','','publish','closed','closed','','past-events','','','2023-06-19 18:29:53','2023-06-19 18:29:53','',0,'http://mazola-2.local/?page_id=61',0,'page','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2023-06-19 18:29:53','2023-06-19 18:29:53','','Past Events','','inherit','closed','closed','','61-revision-v1','','','2023-06-19 18:29:53','2023-06-19 18:29:53','',61,'http://mazola-2.local/?p=62',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2023-06-19 18:37:48','2023-06-19 18:37:48','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','New Year 2016','','publish','closed','closed','','new-year-2016','','','2023-06-19 18:37:48','2023-06-19 18:37:48','',0,'http://mazola-2.local/?post_type=event&#038;p=63',0,'event','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2023-06-19 18:55:12','2023-06-19 18:55:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Math','','publish','closed','closed','','math','','','2023-06-24 14:17:01','2023-06-24 14:17:01','',0,'http://mazola-2.local/?post_type=program&#038;p=64',0,'program','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2023-06-19 18:55:25','2023-06-19 18:55:25','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Biology','','publish','closed','closed','','biology','','','2023-06-19 18:55:25','2023-06-19 18:55:25','',0,'http://mazola-2.local/?post_type=program&#038;p=65',0,'program','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2023-06-19 18:55:34','2023-06-19 18:55:34','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','English','','publish','closed','closed','','english','','','2023-06-19 18:55:34','2023-06-19 18:55:34','',0,'http://mazola-2.local/?post_type=program&#038;p=66',0,'program','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2023-06-19 19:10:55','2023-06-19 19:10:55','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Program','related-program','publish','closed','closed','','group_6490a7ba9e312','','','2023-06-19 21:22:37','2023-06-19 21:22:37','',0,'http://mazola-2.local/?post_type=acf-field-group&#038;p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2023-06-19 19:10:55','2023-06-19 19:10:55','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Program(s)','related_programs','publish','closed','closed','','field_6490a7bbe1daf','','','2023-06-19 19:10:55','2023-06-19 19:10:55','',67,'http://mazola-2.local/?post_type=acf-field&p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2023-06-19 21:18:02','2023-06-19 21:18:02','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2023-06-20 12:51:15','2023-06-20 12:51:15','',0,'http://mazola-2.local/?post_type=professor&#038;p=69',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2023-06-19 21:18:20','2023-06-19 21:18:20','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2023-06-20 13:01:23','2023-06-20 13:01:23','',0,'http://mazola-2.local/?post_type=professor&#038;p=70',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2023-06-20 12:23:38','2023-06-20 12:23:38','','barksalot','','inherit','open','closed','','barksalot','','','2023-06-20 12:23:38','2023-06-20 12:23:38','',70,'http://mazola-2.local/wp-content/uploads/2023/06/barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (72,1,'2023-06-20 12:25:33','2023-06-20 12:25:33','','meowsalot','','inherit','open','closed','','meowsalot','','','2023-06-20 12:25:33','2023-06-20 12:25:33','',69,'http://mazola-2.local/wp-content/uploads/2023/06/meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (73,1,'2023-06-20 12:40:36','2023-06-20 12:40:36','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2023-06-20 12:40:36','2023-06-20 12:40:36','',0,'http://mazola-2.local/?post_type=professor&#038;p=73',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2023-06-20 12:40:22','2023-06-20 12:40:22','','frog-bio','','inherit','open','closed','','frog-bio','','','2023-06-20 12:40:22','2023-06-20 12:40:22','',73,'http://mazola-2.local/wp-content/uploads/2023/06/frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (75,1,'2023-06-20 12:59:11','2023-06-20 12:59:11','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_6491a22669ce1','','','2023-06-20 12:59:11','2023-06-20 12:59:11','',0,'http://mazola-2.local/?post_type=acf-field-group&#038;p=75',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2023-06-20 12:59:11','2023-06-20 12:59:11','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_6491a226f6645','','','2023-06-20 12:59:11','2023-06-20 12:59:11','',75,'http://mazola-2.local/?post_type=acf-field&p=76',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2023-06-20 12:59:11','2023-06-20 12:59:11','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_6491a246f6646','','','2023-06-20 12:59:11','2023-06-20 12:59:11','',75,'http://mazola-2.local/?post_type=acf-field&p=77',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2023-06-20 13:01:09','2023-06-20 13:01:09','','field','','inherit','open','closed','','field','','','2023-06-20 13:01:09','2023-06-20 13:01:09','',70,'http://mazola-2.local/wp-content/uploads/2023/06/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (79,1,'2023-06-21 13:08:33','2023-06-21 13:08:33','','building','','inherit','open','closed','','building','','','2023-06-21 13:08:33','2023-06-21 13:08:33','',14,'http://mazola-2.local/wp-content/uploads/2023/06/building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (80,1,'2023-06-21 13:08:42','2023-06-21 13:08:42','<!-- wp:paragraph -->\n<p>This is the about page content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','14-revision-v1','','','2023-06-21 13:08:42','2023-06-21 13:08:42','',14,'http://mazola-2.local/?p=80',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2023-06-21 13:47:48','2023-06-21 13:47:48','','notebook','','inherit','open','closed','','notebook','','','2023-06-21 13:47:48','2023-06-21 13:47:48','',51,'http://mazola-2.local/wp-content/uploads/2022/11/notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (82,1,'2023-06-23 12:36:44','2023-06-23 12:36:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Downtown West','','publish','closed','closed','','downtown-west','','','2023-06-23 13:14:19','2023-06-23 13:14:19','',0,'http://mazola-2.local/?post_type=campus&#038;p=82',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2023-06-23 12:37:31','2023-06-23 12:37:31','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->','Downtown East','','publish','closed','closed','','downtown-east','','','2023-06-23 13:14:49','2023-06-23 13:14:49','',0,'http://mazola-2.local/?post_type=campus&#038;p=83',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2023-06-23 12:40:52','2023-06-23 12:40:52','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_649592882cab5','','','2023-06-23 12:40:52','2023-06-23 12:40:52','',0,'http://mazola-2.local/?post_type=acf-field-group&#038;p=84',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2023-06-23 12:40:52','2023-06-23 12:40:52','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}','Map Location','map_location','publish','closed','closed','','field_649592884c500','','','2023-06-23 12:40:52','2023-06-23 12:40:52','',84,'http://mazola-2.local/?post_type=acf-field&p=85',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2023-06-24 14:16:43','2023-06-24 14:16:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus(es)','related-campuses','publish','closed','closed','','group_6496fa807228c','','','2023-06-24 14:16:43','2023-06-24 14:16:43','',0,'http://mazola-2.local/?post_type=acf-field-group&#038;p=87',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2023-06-24 14:16:43','2023-06-24 14:16:43','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";}','Related Campus(es)','related_campus','publish','closed','closed','','field_6496fa80cfe91','','','2023-06-24 14:16:43','2023-06-24 14:16:43','',87,'http://mazola-2.local/?post_type=acf-field&p=88',0,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (8,1,0);
INSERT INTO `wp_term_relationships` VALUES (27,3,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,4,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (37,5,0);
INSERT INTO `wp_term_relationships` VALUES (42,6,0);
INSERT INTO `wp_term_relationships` VALUES (47,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','We love to blog about our awards.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'mazola-2','mazola-2',0);
INSERT INTO `wp_terms` VALUES (3,'Main Header Menu','main-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Magical Menu','magical-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (6,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Alan');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Loves pizza and cookies.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"eca230f4843b2be8defc72942b0b8d9e782e5689d06bf4827b46ea4c9780365d\";a:4:{s:10:\"expiration\";i:1687698688;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1687525888;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','86');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'nav_menu_recently_edited','5');
INSERT INTO `wp_usermeta` VALUES (22,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1687263832');
INSERT INTO `wp_usermeta` VALUES (25,1,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:17:\"complementaryArea\";s:15:\"edit-post/block\";s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:12:\"post-excerpt\";i:2;s:9:\"post-link\";i:3;s:14:\"featured-image\";}s:26:\"isComplementaryAreaVisible\";b:1;}s:9:\"_modified\";s:24:\"2023-06-23T12:39:02.634Z\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'alanavery','$P$BqHjMYYG9Wspd7YeJMcVZUrS475nzo.','alanavery','alanravery@gmail.com','http://mazola-2.local','2022-08-24 01:12:43','',0,'Alan');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 10:19:38
