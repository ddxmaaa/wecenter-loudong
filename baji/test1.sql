-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: test1
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `aws_active_data`
--

DROP TABLE IF EXISTS `aws_active_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_active_data` (
  `active_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `expire_time` int(10) DEFAULT NULL,
  `active_code` varchar(32) DEFAULT NULL,
  `active_type_code` varchar(16) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `add_ip` bigint(12) DEFAULT NULL,
  `active_time` int(10) DEFAULT NULL,
  `active_ip` bigint(12) DEFAULT NULL,
  PRIMARY KEY (`active_id`),
  KEY `active_code` (`active_code`),
  KEY `active_type_code` (`active_type_code`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_active_data`
--

LOCK TABLES `aws_active_data` WRITE;
/*!40000 ALTER TABLE `aws_active_data` DISABLE KEYS */;
INSERT INTO `aws_active_data` VALUES (8,18,1447900517,'d9f7b71cb14769b17fb2','VALID_EMAIL',1447814117,168430081,NULL,NULL),(7,17,1447900157,'2a611c2a7205b6bbbcce','VALID_EMAIL',1447813757,168430081,NULL,NULL),(6,16,1447899759,'40b38670856f4a702cf4','VALID_EMAIL',1447813359,168430081,NULL,NULL);
/*!40000 ALTER TABLE `aws_active_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer`
--

DROP TABLE IF EXISTS `aws_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '回答id',
  `question_id` int(11) NOT NULL COMMENT '问题id',
  `answer_content` text COMMENT '回答内容',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `against_count` int(11) NOT NULL DEFAULT '0' COMMENT '反对人数',
  `agree_count` int(11) NOT NULL DEFAULT '0' COMMENT '支持人数',
  `uid` int(11) DEFAULT '0' COMMENT '发布问题用户ID',
  `comment_count` int(11) DEFAULT '0' COMMENT '评论总数',
  `uninterested_count` int(11) DEFAULT '0' COMMENT '不感兴趣',
  `thanks_count` int(11) DEFAULT '0' COMMENT '感谢数量',
  `category_id` int(11) DEFAULT '0' COMMENT '分类id',
  `has_attach` tinyint(1) DEFAULT '0' COMMENT '是否存在附件',
  `ip` bigint(11) DEFAULT NULL,
  `force_fold` tinyint(1) DEFAULT '0' COMMENT '强制折叠',
  `anonymous` tinyint(1) DEFAULT '0',
  `publish_source` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`answer_id`),
  KEY `question_id` (`question_id`),
  KEY `agree_count` (`agree_count`),
  KEY `against_count` (`against_count`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `uninterested_count` (`uninterested_count`),
  KEY `force_fold` (`force_fold`),
  KEY `anonymous` (`anonymous`),
  KEY `publich_source` (`publish_source`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer`
--

LOCK TABLES `aws_answer` WRITE;
/*!40000 ALTER TABLE `aws_answer` DISABLE KEYS */;
INSERT INTO `aws_answer` VALUES (2,2,'123213',1447654446,0,0,1,0,0,0,1,1,168430081,0,0,NULL);
/*!40000 ALTER TABLE `aws_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_comments`
--

DROP TABLE IF EXISTS `aws_answer_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `answer_id` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `message` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_comments`
--

LOCK TABLES `aws_answer_comments` WRITE;
/*!40000 ALTER TABLE `aws_answer_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_thanks`
--

DROP TABLE IF EXISTS `aws_answer_thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_thanks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `answer_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_thanks`
--

LOCK TABLES `aws_answer_thanks` WRITE;
/*!40000 ALTER TABLE `aws_answer_thanks` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_thanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_uninterested`
--

DROP TABLE IF EXISTS `aws_answer_uninterested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_uninterested` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `answer_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_uninterested`
--

LOCK TABLES `aws_answer_uninterested` WRITE;
/*!40000 ALTER TABLE `aws_answer_uninterested` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_uninterested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_answer_vote`
--

DROP TABLE IF EXISTS `aws_answer_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_answer_vote` (
  `voter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动ID',
  `answer_id` int(11) DEFAULT NULL COMMENT '回复id',
  `answer_uid` int(11) DEFAULT NULL COMMENT '回复作者id',
  `vote_uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `vote_value` tinyint(4) NOT NULL COMMENT '-1反对 1 支持',
  `reputation_factor` int(10) DEFAULT '0',
  PRIMARY KEY (`voter_id`),
  KEY `answer_id` (`answer_id`),
  KEY `vote_value` (`vote_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_answer_vote`
--

LOCK TABLES `aws_answer_vote` WRITE;
/*!40000 ALTER TABLE `aws_answer_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_answer_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_approval`
--

DROP TABLE IF EXISTS `aws_approval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_approval` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) DEFAULT NULL,
  `data` mediumtext NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `uid` (`uid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_approval`
--

LOCK TABLES `aws_approval` WRITE;
/*!40000 ALTER TABLE `aws_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_approval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article`
--

DROP TABLE IF EXISTS `aws_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text,
  `comments` int(10) DEFAULT '0',
  `views` int(10) DEFAULT '0',
  `add_time` int(10) DEFAULT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  `lock` int(1) NOT NULL DEFAULT '0',
  `votes` int(10) DEFAULT '0',
  `title_fulltext` text,
  `category_id` int(10) DEFAULT '0',
  `is_recommend` tinyint(1) DEFAULT '0',
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `has_attach` (`has_attach`),
  KEY `uid` (`uid`),
  KEY `comments` (`comments`),
  KEY `views` (`views`),
  KEY `add_time` (`add_time`),
  KEY `lock` (`lock`),
  KEY `votes` (`votes`),
  KEY `category_id` (`category_id`),
  KEY `is_recommend` (`is_recommend`),
  KEY `chapter_id` (`chapter_id`),
  KEY `sort` (`sort`),
  FULLTEXT KEY `title_fulltext` (`title_fulltext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article`
--

LOCK TABLES `aws_article` WRITE;
/*!40000 ALTER TABLE `aws_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article_comments`
--

DROP TABLE IF EXISTS `aws_article_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article_comments` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `article_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `add_time` int(10) NOT NULL,
  `at_uid` int(10) DEFAULT NULL,
  `votes` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `article_id` (`article_id`),
  KEY `add_time` (`add_time`),
  KEY `votes` (`votes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article_comments`
--

LOCK TABLES `aws_article_comments` WRITE;
/*!40000 ALTER TABLE `aws_article_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_article_vote`
--

DROP TABLE IF EXISTS `aws_article_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_article_vote` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `type` varchar(16) DEFAULT NULL,
  `item_id` int(10) NOT NULL,
  `rating` tinyint(1) DEFAULT '0',
  `time` int(10) NOT NULL,
  `reputation_factor` int(10) DEFAULT '0',
  `item_uid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `time` (`time`),
  KEY `item_uid` (`item_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_article_vote`
--

LOCK TABLES `aws_article_vote` WRITE;
/*!40000 ALTER TABLE `aws_article_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_article_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_attach`
--

DROP TABLE IF EXISTS `aws_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_attach` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL COMMENT '附件名称',
  `access_key` varchar(32) DEFAULT NULL COMMENT '批次 Key',
  `add_time` int(10) DEFAULT '0' COMMENT '上传时间',
  `file_location` varchar(255) DEFAULT NULL COMMENT '文件位置',
  `is_image` int(1) DEFAULT '0',
  `item_type` varchar(32) DEFAULT '0' COMMENT '关联类型',
  `item_id` bigint(20) DEFAULT '0' COMMENT '关联 ID',
  `wait_approval` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `access_key` (`access_key`),
  KEY `is_image` (`is_image`),
  KEY `fetch` (`item_id`,`item_type`),
  KEY `wait_approval` (`wait_approval`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_attach`
--

LOCK TABLES `aws_attach` WRITE;
/*!40000 ALTER TABLE `aws_attach` DISABLE KEYS */;
INSERT INTO `aws_attach` VALUES (1,'shell-1.zip','9bd5c00c956c9543020d1b3da4fd8eb7',1447654059,'6be747aea2d6f35cf7a83f9dffa738aa',0,'question',0,0),(2,'shell-1.zip','dbbaa19b0284dca8de6c332c63d070a4',1447654150,'0227170308539fd5414d8ae3468403e1',0,'question',0,0),(3,'wecart安装.docx','f02fd2bc192801c4d9869175c1fce384',1447654340,'f2cafea9cfb72325b1e3672e9818febe',0,'answer',2,0),(4,'shell-1.zip','f02fd2bc192801c4d9869175c1fce384',1447654392,'f31780e8995e5722c232fae684637904',0,'answer',2,0),(5,'shell-11.zip','f02fd2bc192801c4d9869175c1fce384',1447654436,'3f2b93544985f2b8951a1b429a979d9e',0,'answer',2,0);
/*!40000 ALTER TABLE `aws_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_category`
--

DROP TABLE IF EXISTS `aws_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `sort` smallint(6) DEFAULT '0',
  `url_token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url_token` (`url_token`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_category`
--

LOCK TABLES `aws_category` WRITE;
/*!40000 ALTER TABLE `aws_category` DISABLE KEYS */;
INSERT INTO `aws_category` VALUES (1,'默认分类','question',NULL,0,0,NULL);
/*!40000 ALTER TABLE `aws_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_draft`
--

DROP TABLE IF EXISTS `aws_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_draft` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `type` varchar(16) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `data` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `item_id` (`item_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_draft`
--

LOCK TABLES `aws_draft` WRITE;
/*!40000 ALTER TABLE `aws_draft` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_task`
--

DROP TABLE IF EXISTS `aws_edm_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `subject` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_task`
--

LOCK TABLES `aws_edm_task` WRITE;
/*!40000 ALTER TABLE `aws_edm_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_taskdata`
--

DROP TABLE IF EXISTS `aws_edm_taskdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_taskdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sent_time` int(10) NOT NULL,
  `view_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `sent_time` (`sent_time`),
  KEY `view_time` (`view_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_taskdata`
--

LOCK TABLES `aws_edm_taskdata` WRITE;
/*!40000 ALTER TABLE `aws_edm_taskdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_taskdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_unsubscription`
--

DROP TABLE IF EXISTS `aws_edm_unsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_unsubscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_unsubscription`
--

LOCK TABLES `aws_edm_unsubscription` WRITE;
/*!40000 ALTER TABLE `aws_edm_unsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_unsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_userdata`
--

DROP TABLE IF EXISTS `aws_edm_userdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usergroup` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usergroup` (`usergroup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_userdata`
--

LOCK TABLES `aws_edm_userdata` WRITE;
/*!40000 ALTER TABLE `aws_edm_userdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_userdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_edm_usergroup`
--

DROP TABLE IF EXISTS `aws_edm_usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_edm_usergroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_edm_usergroup`
--

LOCK TABLES `aws_edm_usergroup` WRITE;
/*!40000 ALTER TABLE `aws_edm_usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_edm_usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_education_experience`
--

DROP TABLE IF EXISTS `aws_education_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_education_experience` (
  `education_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `education_years` int(11) DEFAULT NULL COMMENT '入学年份',
  `school_name` varchar(64) DEFAULT NULL COMMENT '学校名',
  `school_type` tinyint(4) DEFAULT NULL COMMENT '学校类别',
  `departments` varchar(64) DEFAULT NULL COMMENT '院系',
  `add_time` int(10) DEFAULT NULL COMMENT '记录添加时间',
  PRIMARY KEY (`education_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='教育经历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_education_experience`
--

LOCK TABLES `aws_education_experience` WRITE;
/*!40000 ALTER TABLE `aws_education_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_education_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_favorite`
--

DROP TABLE IF EXISTS `aws_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_favorite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `time` (`time`),
  KEY `item_id` (`item_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_favorite`
--

LOCK TABLES `aws_favorite` WRITE;
/*!40000 ALTER TABLE `aws_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_favorite_tag`
--

DROP TABLE IF EXISTS `aws_favorite_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_favorite_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `title` varchar(128) DEFAULT NULL,
  `item_id` int(11) DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_favorite_tag`
--

LOCK TABLES `aws_favorite_tag` WRITE;
/*!40000 ALTER TABLE `aws_favorite_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_favorite_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_feature`
--

DROP TABLE IF EXISTS `aws_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '专题标题',
  `description` varchar(255) DEFAULT NULL COMMENT '专题描述',
  `icon` varchar(255) DEFAULT NULL COMMENT '专题图标',
  `topic_count` int(11) NOT NULL DEFAULT '0' COMMENT '话题计数',
  `css` text COMMENT '自定义CSS',
  `url_token` varchar(32) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `url_token` (`url_token`),
  KEY `title` (`title`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_feature`
--

LOCK TABLES `aws_feature` WRITE;
/*!40000 ALTER TABLE `aws_feature` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_feature_topic`
--

DROP TABLE IF EXISTS `aws_feature_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_feature_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL DEFAULT '0' COMMENT '专题ID',
  `topic_id` int(11) NOT NULL DEFAULT '0' COMMENT '话题ID',
  PRIMARY KEY (`id`),
  KEY `feature_id` (`feature_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_feature_topic`
--

LOCK TABLES `aws_feature_topic` WRITE;
/*!40000 ALTER TABLE `aws_feature_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_feature_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_geo_location`
--

DROP TABLE IF EXISTS `aws_geo_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_geo_location` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(32) NOT NULL,
  `item_id` int(10) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `add_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_type` (`item_type`),
  KEY `add_time` (`add_time`),
  KEY `geo_location` (`latitude`,`longitude`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_geo_location`
--

LOCK TABLES `aws_geo_location` WRITE;
/*!40000 ALTER TABLE `aws_geo_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_geo_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_help_chapter`
--

DROP TABLE IF EXISTS `aws_help_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_help_chapter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `url_token` varchar(32) DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `url_token` (`url_token`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帮助中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_help_chapter`
--

LOCK TABLES `aws_help_chapter` WRITE;
/*!40000 ALTER TABLE `aws_help_chapter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_help_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_inbox`
--

DROP TABLE IF EXISTS `aws_inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '发送者 ID',
  `dialog_id` int(11) DEFAULT NULL COMMENT '对话id',
  `message` text COMMENT '内容',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `sender_remove` tinyint(1) DEFAULT '0',
  `recipient_remove` tinyint(1) DEFAULT '0',
  `receipt` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `dialog_id` (`dialog_id`),
  KEY `uid` (`uid`),
  KEY `add_time` (`add_time`),
  KEY `sender_remove` (`sender_remove`),
  KEY `recipient_remove` (`recipient_remove`),
  KEY `sender_receipt` (`receipt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_inbox`
--

LOCK TABLES `aws_inbox` WRITE;
/*!40000 ALTER TABLE `aws_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_inbox_dialog`
--

DROP TABLE IF EXISTS `aws_inbox_dialog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_inbox_dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '对话ID',
  `sender_uid` int(11) DEFAULT NULL COMMENT '发送者UID',
  `sender_unread` int(11) DEFAULT NULL COMMENT '发送者未读',
  `recipient_uid` int(11) DEFAULT NULL COMMENT '接收者UID',
  `recipient_unread` int(11) DEFAULT NULL COMMENT '接收者未读',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '最后更新时间',
  `sender_count` int(11) DEFAULT NULL COMMENT '发送者显示对话条数',
  `recipient_count` int(11) DEFAULT NULL COMMENT '接收者显示对话条数',
  PRIMARY KEY (`id`),
  KEY `recipient_uid` (`recipient_uid`),
  KEY `sender_uid` (`sender_uid`),
  KEY `update_time` (`update_time`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_inbox_dialog`
--

LOCK TABLES `aws_inbox_dialog` WRITE;
/*!40000 ALTER TABLE `aws_inbox_dialog` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_inbox_dialog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_integral_log`
--

DROP TABLE IF EXISTS `aws_integral_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_integral_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `action` varchar(16) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `note` varchar(128) DEFAULT NULL,
  `balance` int(11) DEFAULT '0',
  `item_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `action` (`action`),
  KEY `time` (`time`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_integral_log`
--

LOCK TABLES `aws_integral_log` WRITE;
/*!40000 ALTER TABLE `aws_integral_log` DISABLE KEYS */;
INSERT INTO `aws_integral_log` VALUES (1,1,'REGISTER',2000,'初始资本',2000,0,1447642820),(2,1,'UPDATE_SIGNATURE',10,'完善一句话介绍',2010,0,1447642835),(3,1,'NEW_QUESTION',-20,'发起问题 #1',1990,1,1447644292),(4,1,'NEW_QUESTION',-20,'发起问题 #2',1970,2,1447644340),(39,1,'NEW_QUESTION',-20,'发起问题 #4',1950,4,1447825663),(38,26,'REGISTER',2000,'初始资本',2000,0,1447819603),(24,12,'REGISTER',2000,'初始资本',2000,0,1447812779),(25,13,'REGISTER',2000,'初始资本',2000,0,1447812943),(26,14,'REGISTER',2000,'初始资本',2000,0,1447813039),(27,15,'REGISTER',2000,'初始资本',2000,0,1447813123),(28,16,'REGISTER',2000,'初始资本',2000,0,1447813253),(29,17,'REGISTER',2000,'初始资本',2000,0,1447813571),(30,18,'REGISTER',2000,'初始资本',2000,0,1447813770),(31,19,'REGISTER',2000,'初始资本',2000,0,1447814130),(32,20,'REGISTER',2000,'初始资本',2000,0,1447815323),(33,21,'REGISTER',2000,'初始资本',2000,0,1447816215),(34,22,'REGISTER',2000,'初始资本',2000,0,1447816425),(35,23,'REGISTER',2000,'初始资本',2000,0,1447816672),(36,24,'REGISTER',2000,'初始资本',2000,0,1447817532),(37,25,'REGISTER',2000,'初始资本',2000,0,1447819429),(40,27,'REGISTER',2000,'初始资本',2000,0,1447825767),(41,28,'REGISTER',2000,'初始资本',2000,0,1447825806),(42,29,'REGISTER',2000,'初始资本',2000,0,1447825883);
/*!40000 ALTER TABLE `aws_integral_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_invitation`
--

DROP TABLE IF EXISTS `aws_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_invitation` (
  `invitation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '激活ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `invitation_code` varchar(32) DEFAULT NULL COMMENT '激活码',
  `invitation_email` varchar(255) DEFAULT NULL COMMENT '激活email',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `add_ip` bigint(12) DEFAULT NULL COMMENT '添加IP',
  `active_expire` tinyint(1) DEFAULT '0' COMMENT '激活过期',
  `active_time` int(10) DEFAULT NULL COMMENT '激活时间',
  `active_ip` bigint(12) DEFAULT NULL COMMENT '激活IP',
  `active_status` tinyint(4) DEFAULT '0' COMMENT '1已使用0未使用-1已删除',
  `active_uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`invitation_id`),
  KEY `uid` (`uid`),
  KEY `invitation_code` (`invitation_code`),
  KEY `invitation_email` (`invitation_email`),
  KEY `active_time` (`active_time`),
  KEY `active_ip` (`active_ip`),
  KEY `active_status` (`active_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_invitation`
--

LOCK TABLES `aws_invitation` WRITE;
/*!40000 ALTER TABLE `aws_invitation` DISABLE KEYS */;
INSERT INTO `aws_invitation` VALUES (1,1,'babf16deca637f7da832fb88d4201372','1129560103@qq.com',1447662631,168430081,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `aws_invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_jobs`
--

DROP TABLE IF EXISTS `aws_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(64) DEFAULT NULL COMMENT '职位名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_jobs`
--

LOCK TABLES `aws_jobs` WRITE;
/*!40000 ALTER TABLE `aws_jobs` DISABLE KEYS */;
INSERT INTO `aws_jobs` VALUES (1,'销售'),(2,'市场/市场拓展/公关'),(3,'商务/采购/贸易'),(4,'计算机软、硬件/互联网/IT'),(5,'电子/半导体/仪表仪器'),(6,'通信技术'),(7,'客户服务/技术支持'),(8,'行政/后勤'),(9,'人力资源'),(10,'高级管理'),(11,'生产/加工/制造'),(12,'质控/安检'),(13,'工程机械'),(14,'技工'),(15,'财会/审计/统计'),(16,'金融/银行/保险/证券/投资'),(17,'建筑/房地产/装修/物业'),(18,'交通/仓储/物流'),(19,'普通劳动力/家政服务'),(20,'零售业'),(21,'教育/培训'),(22,'咨询/顾问'),(23,'学术/科研'),(24,'法律'),(25,'美术/设计/创意'),(26,'编辑/文案/传媒/影视/新闻'),(27,'酒店/餐饮/旅游/娱乐'),(28,'化工'),(29,'能源/矿产/地质勘查'),(30,'医疗/护理/保健/美容'),(31,'生物/制药/医疗器械'),(32,'翻译（口译与笔译）'),(33,'公务员'),(34,'环境科学/环保'),(35,'农/林/牧/渔业'),(36,'兼职/临时/培训生/储备干部'),(37,'在校学生'),(38,'其他');
/*!40000 ALTER TABLE `aws_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_mail_queue`
--

DROP TABLE IF EXISTS `aws_mail_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_mail_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_to` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_error` tinyint(1) NOT NULL DEFAULT '0',
  `error_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_error` (`is_error`),
  KEY `send_to` (`send_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_mail_queue`
--

LOCK TABLES `aws_mail_queue` WRITE;
/*!40000 ALTER TABLE `aws_mail_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_mail_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_nav_menu`
--

DROP TABLE IF EXISTS `aws_nav_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_nav_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `type_id` int(11) DEFAULT '0',
  `link` varchar(255) DEFAULT NULL COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`link`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_nav_menu`
--

LOCK TABLES `aws_nav_menu` WRITE;
/*!40000 ALTER TABLE `aws_nav_menu` DISABLE KEYS */;
INSERT INTO `aws_nav_menu` VALUES (1,'默认分类','默认分类描述','category',1,NULL,NULL,0);
/*!40000 ALTER TABLE `aws_nav_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_notification`
--

DROP TABLE IF EXISTS `aws_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sender_uid` int(11) DEFAULT NULL COMMENT '发送者ID',
  `recipient_uid` int(11) DEFAULT '0' COMMENT '接收者ID',
  `action_type` int(4) DEFAULT NULL COMMENT '操作类型',
  `model_type` smallint(11) NOT NULL DEFAULT '0',
  `source_id` varchar(16) NOT NULL DEFAULT '0' COMMENT '关联 ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `read_flag` tinyint(1) DEFAULT '0' COMMENT '阅读状态',
  PRIMARY KEY (`notification_id`),
  KEY `recipient_read_flag` (`recipient_uid`,`read_flag`),
  KEY `sender_uid` (`sender_uid`),
  KEY `model_type` (`model_type`),
  KEY `source_id` (`source_id`),
  KEY `action_type` (`action_type`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_notification`
--

LOCK TABLES `aws_notification` WRITE;
/*!40000 ALTER TABLE `aws_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_notification_data`
--

DROP TABLE IF EXISTS `aws_notification_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_notification_data` (
  `notification_id` int(11) unsigned NOT NULL,
  `data` text,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统通知数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_notification_data`
--

LOCK TABLES `aws_notification_data` WRITE;
/*!40000 ALTER TABLE `aws_notification_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_notification_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_pages`
--

DROP TABLE IF EXISTS `aws_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_pages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `url_token` varchar(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contents` text,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_token` (`url_token`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_pages`
--

LOCK TABLES `aws_pages` WRITE;
/*!40000 ALTER TABLE `aws_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_posts_index`
--

DROP TABLE IF EXISTS `aws_posts_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_posts_index` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `post_id` int(10) NOT NULL,
  `post_type` varchar(16) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL,
  `update_time` int(10) DEFAULT '0',
  `category_id` int(10) DEFAULT '0',
  `is_recommend` tinyint(1) DEFAULT '0',
  `view_count` int(10) DEFAULT '0',
  `anonymous` tinyint(1) DEFAULT '0',
  `popular_value` int(10) DEFAULT '0',
  `uid` int(10) NOT NULL,
  `lock` tinyint(1) DEFAULT '0',
  `agree_count` int(10) DEFAULT '0',
  `answer_count` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `post_type` (`post_type`),
  KEY `add_time` (`add_time`),
  KEY `update_time` (`update_time`),
  KEY `category_id` (`category_id`),
  KEY `is_recommend` (`is_recommend`),
  KEY `anonymous` (`anonymous`),
  KEY `popular_value` (`popular_value`),
  KEY `uid` (`uid`),
  KEY `lock` (`lock`),
  KEY `agree_count` (`agree_count`),
  KEY `answer_count` (`answer_count`),
  KEY `view_count` (`view_count`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_posts_index`
--

LOCK TABLES `aws_posts_index` WRITE;
/*!40000 ALTER TABLE `aws_posts_index` DISABLE KEYS */;
INSERT INTO `aws_posts_index` VALUES (1,1,'question',1447644292,1447644292,1,0,0,0,0,1,0,0,0),(2,2,'question',1447644340,1447654446,1,0,3,0,1,1,0,0,1),(4,4,'question',1447825663,1447825663,1,0,0,0,0,1,0,0,0);
/*!40000 ALTER TABLE `aws_posts_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question`
--

DROP TABLE IF EXISTS `aws_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` varchar(255) NOT NULL DEFAULT '' COMMENT '问题内容',
  `question_detail` text COMMENT '问题说明',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL,
  `published_uid` int(11) DEFAULT NULL COMMENT '发布用户UID',
  `answer_count` int(11) NOT NULL DEFAULT '0' COMMENT '回答计数',
  `answer_users` int(11) NOT NULL DEFAULT '0' COMMENT '回答人数',
  `view_count` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `focus_count` int(11) NOT NULL DEFAULT '0' COMMENT '关注数',
  `comment_count` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `action_history_id` int(11) NOT NULL DEFAULT '0' COMMENT '动作的记录表的关连id',
  `category_id` int(11) NOT NULL DEFAULT '0' COMMENT '分类 ID',
  `agree_count` int(11) NOT NULL DEFAULT '0' COMMENT '回复赞同数总和',
  `against_count` int(11) NOT NULL DEFAULT '0' COMMENT '回复反对数总和',
  `best_answer` int(11) NOT NULL DEFAULT '0' COMMENT '最佳回复 ID',
  `has_attach` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否存在附件',
  `unverified_modify` text,
  `unverified_modify_count` int(10) NOT NULL DEFAULT '0',
  `ip` bigint(11) DEFAULT NULL,
  `last_answer` int(11) NOT NULL DEFAULT '0' COMMENT '最后回答 ID',
  `popular_value` double NOT NULL DEFAULT '0',
  `popular_value_update` int(10) NOT NULL DEFAULT '0',
  `lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  `thanks_count` int(10) NOT NULL DEFAULT '0',
  `question_content_fulltext` text,
  `is_recommend` tinyint(1) NOT NULL DEFAULT '0',
  `weibo_msg_id` bigint(20) DEFAULT NULL,
  `received_email_id` int(10) DEFAULT NULL,
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `sort` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`),
  KEY `update_time` (`update_time`),
  KEY `add_time` (`add_time`),
  KEY `published_uid` (`published_uid`),
  KEY `answer_count` (`answer_count`),
  KEY `agree_count` (`agree_count`),
  KEY `question_content` (`question_content`),
  KEY `lock` (`lock`),
  KEY `thanks_count` (`thanks_count`),
  KEY `anonymous` (`anonymous`),
  KEY `popular_value` (`popular_value`),
  KEY `best_answer` (`best_answer`),
  KEY `popular_value_update` (`popular_value_update`),
  KEY `against_count` (`against_count`),
  KEY `is_recommend` (`is_recommend`),
  KEY `weibo_msg_id` (`weibo_msg_id`),
  KEY `received_email_id` (`received_email_id`),
  KEY `unverified_modify_count` (`unverified_modify_count`),
  KEY `chapter_id` (`chapter_id`),
  KEY `sort` (`sort`),
  FULLTEXT KEY `question_content_fulltext` (`question_content_fulltext`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='问题列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question`
--

LOCK TABLES `aws_question` WRITE;
/*!40000 ALTER TABLE `aws_question` DISABLE KEYS */;
INSERT INTO `aws_question` VALUES (1,'134123','132412313',1447644292,1447644292,1,0,0,1,1,0,0,1,0,0,0,0,NULL,0,168430081,0,-0,1447644293,0,0,0,'134123',0,NULL,NULL,NULL,0),(2,'123123123','12312312312',1447644340,1447654446,1,1,1,4,1,0,0,1,0,0,0,0,NULL,0,168430081,2,1.4771212547197,1447663951,0,0,0,'123123123',0,NULL,NULL,NULL,0),(4,'testtest','testtest',1447825663,1447825663,1,0,0,1,1,0,0,1,0,0,0,0,NULL,0,168430081,0,-0,1447825663,0,0,0,'testtest',0,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `aws_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_comments`
--

DROP TABLE IF EXISTS `aws_question_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_comments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `message` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_comments`
--

LOCK TABLES `aws_question_comments` WRITE;
/*!40000 ALTER TABLE `aws_question_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_focus`
--

DROP TABLE IF EXISTS `aws_question_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_focus` (
  `focus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`focus_id`),
  KEY `question_id` (`question_id`),
  KEY `question_uid` (`question_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='问题关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_focus`
--

LOCK TABLES `aws_question_focus` WRITE;
/*!40000 ALTER TABLE `aws_question_focus` DISABLE KEYS */;
INSERT INTO `aws_question_focus` VALUES (1,1,1,1447644292),(2,2,1,1447644340),(4,4,1,1447825663);
/*!40000 ALTER TABLE `aws_question_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_invite`
--

DROP TABLE IF EXISTS `aws_question_invite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_invite` (
  `question_invite_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) NOT NULL COMMENT '问题ID',
  `sender_uid` int(11) NOT NULL,
  `recipients_uid` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT '受邀Email',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `available_time` int(10) DEFAULT '0' COMMENT '生效时间',
  PRIMARY KEY (`question_invite_id`),
  KEY `question_id` (`question_id`),
  KEY `sender_uid` (`sender_uid`),
  KEY `recipients_uid` (`recipients_uid`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邀请问答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_invite`
--

LOCK TABLES `aws_question_invite` WRITE;
/*!40000 ALTER TABLE `aws_question_invite` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_invite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_thanks`
--

DROP TABLE IF EXISTS `aws_question_thanks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_thanks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `question_id` int(11) DEFAULT '0',
  `user_name` varchar(255) DEFAULT NULL,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_thanks`
--

LOCK TABLES `aws_question_thanks` WRITE;
/*!40000 ALTER TABLE `aws_question_thanks` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_thanks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_question_uninterested`
--

DROP TABLE IF EXISTS `aws_question_uninterested`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_question_uninterested` (
  `interested_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `question_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`interested_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题不感兴趣表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_question_uninterested`
--

LOCK TABLES `aws_question_uninterested` WRITE;
/*!40000 ALTER TABLE `aws_question_uninterested` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_question_uninterested` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_received_email`
--

DROP TABLE IF EXISTS `aws_received_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_received_email` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `config_id` int(10) NOT NULL,
  `message_id` varchar(255) NOT NULL,
  `date` int(10) NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `question_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `config_id` (`config_id`),
  KEY `message_id` (`message_id`),
  KEY `date` (`date`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='已导入邮件列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_received_email`
--

LOCK TABLES `aws_received_email` WRITE;
/*!40000 ALTER TABLE `aws_received_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_received_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_receiving_email_config`
--

DROP TABLE IF EXISTS `aws_receiving_email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_receiving_email_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `protocol` varchar(10) NOT NULL,
  `server` varchar(255) NOT NULL,
  `ssl` tinyint(1) NOT NULL DEFAULT '0',
  `port` smallint(5) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `access_key` varchar(32) NOT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `server` (`server`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件账号列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_receiving_email_config`
--

LOCK TABLES `aws_receiving_email_config` WRITE;
/*!40000 ALTER TABLE `aws_receiving_email_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_receiving_email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_redirect`
--

DROP TABLE IF EXISTS `aws_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_redirect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT '0',
  `target_id` int(11) DEFAULT '0',
  `time` int(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_redirect`
--

LOCK TABLES `aws_redirect` WRITE;
/*!40000 ALTER TABLE `aws_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_related_links`
--

DROP TABLE IF EXISTS `aws_related_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_related_links` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `item_type` varchar(32) NOT NULL,
  `item_id` int(10) NOT NULL,
  `link` varchar(255) NOT NULL,
  `add_time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `item_type` (`item_type`),
  KEY `item_id` (`item_id`),
  KEY `add_time` (`add_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_related_links`
--

LOCK TABLES `aws_related_links` WRITE;
/*!40000 ALTER TABLE `aws_related_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_related_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_related_topic`
--

DROP TABLE IF EXISTS `aws_related_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_related_topic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT '0' COMMENT '话题 ID',
  `related_id` int(11) DEFAULT '0' COMMENT '相关话题 ID',
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `related_id` (`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_related_topic`
--

LOCK TABLES `aws_related_topic` WRITE;
/*!40000 ALTER TABLE `aws_related_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_related_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_report`
--

DROP TABLE IF EXISTS `aws_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '举报用户id',
  `type` varchar(50) DEFAULT NULL COMMENT '类别',
  `target_id` int(11) DEFAULT '0' COMMENT 'ID',
  `reason` varchar(255) DEFAULT NULL COMMENT '举报理由',
  `url` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT '0' COMMENT '举报时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否处理',
  PRIMARY KEY (`id`),
  KEY `add_time` (`add_time`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_report`
--

LOCK TABLES `aws_report` WRITE;
/*!40000 ALTER TABLE `aws_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_reputation_category`
--

DROP TABLE IF EXISTS `aws_reputation_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_reputation_category` (
  `auto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT '0',
  `category_id` smallint(4) DEFAULT '0',
  `update_time` int(10) DEFAULT '0',
  `reputation` int(10) DEFAULT '0',
  `thanks_count` int(10) DEFAULT '0',
  `agree_count` int(10) DEFAULT '0',
  `question_count` int(10) DEFAULT '0',
  PRIMARY KEY (`auto_id`),
  UNIQUE KEY `uid_category_id` (`uid`,`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_reputation_category`
--

LOCK TABLES `aws_reputation_category` WRITE;
/*!40000 ALTER TABLE `aws_reputation_category` DISABLE KEYS */;
INSERT INTO `aws_reputation_category` VALUES (2,1,1,1447826563,0,0,0,1);
/*!40000 ALTER TABLE `aws_reputation_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_reputation_topic`
--

DROP TABLE IF EXISTS `aws_reputation_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_reputation_topic` (
  `auto_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `topic_id` int(11) DEFAULT '0' COMMENT '话题ID',
  `topic_count` int(10) DEFAULT '0' COMMENT '威望问题话题计数',
  `update_time` int(10) DEFAULT NULL COMMENT '更新时间',
  `agree_count` int(10) DEFAULT '0' COMMENT '赞成',
  `thanks_count` int(10) DEFAULT '0' COMMENT '感谢',
  `reputation` int(10) DEFAULT '0',
  PRIMARY KEY (`auto_id`),
  KEY `topic_count` (`topic_count`),
  KEY `uid` (`uid`),
  KEY `topic_id` (`topic_id`),
  KEY `reputation` (`reputation`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_reputation_topic`
--

LOCK TABLES `aws_reputation_topic` WRITE;
/*!40000 ALTER TABLE `aws_reputation_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_reputation_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_school`
--

DROP TABLE IF EXISTS `aws_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_school` (
  `school_id` int(11) NOT NULL COMMENT '自增ID',
  `school_type` tinyint(4) DEFAULT NULL COMMENT '学校类型ID',
  `school_code` int(11) DEFAULT NULL COMMENT '学校编码',
  `school_name` varchar(64) DEFAULT NULL COMMENT '学校名称',
  `area_code` int(11) DEFAULT NULL COMMENT '地区代码',
  PRIMARY KEY (`school_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学校';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_school`
--

LOCK TABLES `aws_school` WRITE;
/*!40000 ALTER TABLE `aws_school` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_search_cache`
--

DROP TABLE IF EXISTS `aws_search_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_search_cache` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `data` mediumtext NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `time` (`time`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_search_cache`
--

LOCK TABLES `aws_search_cache` WRITE;
/*!40000 ALTER TABLE `aws_search_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_search_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_sessions`
--

DROP TABLE IF EXISTS `aws_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_sessions` (
  `id` varchar(32) NOT NULL,
  `modified` int(10) NOT NULL,
  `data` text NOT NULL,
  `lifetime` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modified` (`modified`),
  KEY `lifetime` (`lifetime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_sessions`
--

LOCK TABLES `aws_sessions` WRITE;
/*!40000 ALTER TABLE `aws_sessions` DISABLE KEYS */;
INSERT INTO `aws_sessions` VALUES ('uai3ppk3p3nr30ci18qgub5ef1',1447826658,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8drbnm1j457mo365s85rusivi3',1447826658,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nh5asacjmefls5s5h64eddscc0',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6ot816eocsdhhr906bord5n634',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ljbr1v5phpn9mep8kihi3gmnt1',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rmnaduenv4ev63vu9l1v0h0ae2',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7e0gdk9885s1imtahpqfm0i374',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1ah7l659mvi34qetf759fg9nm7',1447826657,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vr2459vi0m31r8lmuoro5src75',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rfk5kfjmjb03ako9pn6h8blvt6',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ds6mrupjpohbbg27du5di4une6',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rct142o04i1116hl92j8a1r063',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ueckjnm7tc3dube2maugqjgu80',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('e53jt9nimtahrk0epvvn18r1b1',1447826656,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1j0envmphvd142fmd4i7ckj3b2',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ad1chkadq2aoi8tn3qlonvetv6',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8ekptf3lqpd6td8mvvhjmsb1i4',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1ooi9c2t765u9c3ob0n4hnlhg2',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('djc2jne9asqb97auqndm9cbmj4',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6oh41js718jsqu9af1g4ajvjp1',1447826655,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0cv09bq3sq3j2h460rs10t8do0',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2crndai4jdcp0enfr3n864bqd4',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('osqnuf27j68scp5pk3s47vi546',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6l7cjq04hjv98k8916lbaen103',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('66ue50olvpu5l4oqrkjl4j3hk3',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ikvb32loesjcg18ifoqoju5ha2',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hg5s0holku2mvb92rn0ocusl37',1447826654,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5buennvj0m3iroifr8j7io3n03',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ur3g3oti7ldd5uvig60tt5a241',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gklain4490kp05o8v5bo2h1t73',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o7f4lfg5bue1qb1e79bi50m8o7',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jqqsng1kj27g1492ps2g3p2d75',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lsp9vr56kdppo6ku5hks1q48p6',1447826653,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ejk1hrakksvpl5tsn5pgr0c150',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8u9c23fnevgcap51pb5q0ooi91',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2ah94ferdbo7vvqhdauddsch85',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('do6k8gksho9kb5ope7p6d41pi5',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qpkh17gh3pj18jllb7rg79kuh5',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2f2smcu23r5n8a7j3kc3o5qbp1',1447826652,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o2o57rv3qu17neqvgmpj38jnb2',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9t5ad82jp2uit51n0kcmne0t55',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ugi8n2n7tf7j47mi5o0bf6tgf0',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j1jk81f6btsu9jkbptr5p2i6l4',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hp2fsrmk7v2sn4adcok05ld3m5',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('r1v7je0ogtfjuk59eavovcmma3',1447826651,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tslevtfu8iu9ipsfb8i1rfge55',1447826650,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('roo4d9bibbnm3kvd7rlmpe4cg0',1447826650,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f74dtlk6qcb7p1absme2suh957',1447826650,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hilgnnj45agv0mc0bq14ev16u4',1447826650,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('v0s7vf6tgefimkktovep22ti07',1447826650,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('78pejh6pee9krj3268gpa4h5e3',1447826649,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5osd0ct7nd7f364evnh6bgmg44',1447826649,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2af55grruut9epfklc10ucpld1',1447826649,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s5f1d49igs96r8qmauso0v6a52',1447826649,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dp7tfqpomohpt7goqpplkcc573',1447826649,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('65p7284humerq3ap2hhv82fi35',1447826648,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('buvcpieftg9j5a36c4a9i6nsi0',1447826648,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o3ok03t99t2vkgqu2r59268581',1447826648,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j9rv80hih0cgmjmk077or510s5',1447826648,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('df19clhkptpd3dfdjs61pn8sc3',1447826648,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rtpduhul2670gffmhma2r4hit1',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n6dlk7bcia4g6nagi06kvi8e94',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jjrgsti429ka7m0vhling725v3',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('q23najgi8a2nhn2jijdqndoj62',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3sshgidm2fchvs15pocon999n5',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('pi2d1kgjauu28kp1vgedljma63',1447826647,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s1gffas80rmmhcqtfp37d7miq3',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p84ni80g2e7p8pth6u6sptduq2',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ru1id2fo9gmidnn90vf4l6sfv7',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dl7ak3p4r3nmt2vsecemia68t6',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nsegjspkao472q4mpguoad5mb1',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cokukg8grvq2j70no6nqlko6o7',1447826646,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4i9t3bscast9qumf8r480uumg7',1447826645,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dbhc8di2fgbl8mcturekg1k592',1447826645,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bo3m888fhtv1em49v2nselqkf1',1447826645,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j354uqbul13h8i7t91oavvvqs0',1447826645,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('12ev5a45pu6g0ejjs9ibqrc6f4',1447826645,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dlfef6adt7396msv97plecjha1',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0mep4geotivugga5ugp7g7hiv1',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('kfi4s49uos3h1d2uir4b8bkr22',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3hop65jbkenjvrrbq34g34kp91',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8nnpilldkg48sjiscdmjk4cu50',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('funsg86uim52vs5vl0kfp0gr01',1447826644,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4hg41emstgsf7julh92r6s1a07',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6ddninqr4a8nllk8jjuslnk221',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('c509qciemjo049lb6na1o4rib0',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ji4dhu4ln4mfiivaiatmengu34',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4u8ahc1opd8r4a6pi16ou0rkj1',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('uqvmpcur143se1chk1bn1gnjj0',1447826643,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s4j8hs5fuomsv9623fbvbnvhv7',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('00ib65bg8pahg24rkmm6ul6uk3',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('q0e2i0c4iinfhqf7f7kob44ud1',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('umjrv4epv2l0kebj7moljmf9n3',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('c89vhhj4gsgkt2qm0ahg4f9cj3',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dc4hcev8ve9sm0lfbkgmaedt70',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('02cv3cieo3bs97dvtp6qh8pcr4',1447826642,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6k2n4ik3c87ntm9sq6b0s0n1d6',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6k62ak899e6jeraqdmtks4e0t5',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dajkqdfad0nk5an8vial2j8c25',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sspfjho1bv18jcj7pc6sedv834',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('prvkau2lcmi0eo6ibcsfmfboc7',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mdllg43l3cqn6eouokme6a5057',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1lu7jsr4ia99dbhkveuo22na96',1447826641,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lvhs24ggb6a228u6qv7fhumou7',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ams48ri7k66jkab4gkktvb96d5',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qd1vikufmrova3lmbvet8a4vm3',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('e41gd3p7u68d1n3udmep8nqas7',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f3eu4ui0hs22a0f07u6ca9u081',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('087cak6bh7pskehp5o026ksk27',1447826640,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('e7okarg976eoh10jt9p6oafoq3',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ps7cduaq6n236qdp2djaj470k6',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fe0sgd6cofe4lgr54gt54dibj4',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('h49lm0k182o7ng3krjot2kbjm3',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5sfo7sjslernm4uoi7hkr1c6t7',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nbm83s9a42j86c2rss3s1gadm4',1447826639,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s87eai99n71d3kqmov751agrv1',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('st1o6jsjhab90vbacb1fhkqpi0',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('garpgnajap6r504b721kcep861',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('elqur8ffg2h2ldmlmp40fdrfp3',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mmn9g3erjl8i1bt4lad9fshnj3',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('89d77ppfcnbhamgg8ievl26am5',1447826638,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('81k37esaivv28be3668stm5bd0',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bposcla4kj8inbo17pq5o9hvs5',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ukia1d6n35eqm5atl7gkpa5370',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k4ifhpo1hinh787vf5r21hi443',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bseu139qpdmod39j7f4gvsdna3',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fic6idjfjjb5nekebg34ja2b46',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('63i0aec0871s1c2mkt9tn118g7',1447826637,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cbap482uss2u1i6uoci1rg3hs4',1447826636,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gvjnnit1puv21098dkgafrv3f5',1447826636,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('r0pr7liaf3rvlengltk55hkjl4',1447826636,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5pk9tjpn05j4g1ncbu9st08ch1',1447826636,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cstk0hcvkbd2gdem5qt0t1h7t5',1447826636,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k6m0423qm4mr11gcheaqfi73c0',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('16tn0bv21jit81cq5rp4h8dev0',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('r0pcau6bs2h1rmc0qlnbdg2h60',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9so8hvlirrtcng55stk2hkoeg6',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hs2ds3jpsn38qkt1qil6n8tkp1',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dil68lb5547lelusnrpqpshpo3',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vbjh6vtk99jr9p79jr4glcfuk4',1447826635,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3e4vq7bu86p40o60nqe3f6lv45',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('02so1k10kh2ivnk9kq1pjapco7',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bnqtsc2ds7snmbttfjfunr38g3',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8292gocjqks3pk97868ntdtaf1',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('57afgp24k20h2fmbfc3ceg7c52',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('oi2vo7bjp6l9tbm8t1dt0a7135',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tji2efj9fiavtlpotrsrtab8h0',1447826634,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qgo2ecqtnr5bj9e7rjrtu7skk5',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('thucskv901a31m1gmmbtuu6p35',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fludd06l37lnmm84p684qqu4d3',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ejfar94ieaeq754rnh0lrlpfp3',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5skvu45skona56f56apdo0j434',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8hpbtirmlgp5lqujnd3oiopm50',1447826633,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5041941st1ptm05p0m3rd4ipj5',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dqhu378a58o06lmbituak8m851',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mt8mtleqhbuqh29cnrk88gnn70',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bonjjpr7vp9d315ada4deni253',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('13neal4rb4nn6t8rqctrrrmcm3',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('d74c4158s6679fuerpnsaerp82',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ph6s1iborho1hkokik7nv5kl71',1447826632,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ke2k6oledm31bq4a9ll1rctkk4',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('c3v5s4b51k04vnlu862a3d4io2',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('umilcnjej7u7ca4cpar8h7pmc3',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k4httec1nk1ol1a3go1jimjck6',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1m7v8t3fa88mtb7ngv89fj2ro1',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jigjb1k7e13k2vck2km5vs0bk3',1447826631,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('agoqngok70fcjmisibuujd3gp0',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('e4ouiocfk2h6t78ioclekb06e0',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('geu9uvqvf9ba25ss2genh0l927',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('74r3eq50ah5jhcv3h3gtucemr1',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('m449b9tsh9uunfi8d5f4bmobl6',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('57u9uh0ek0ba5k7r1r63bf6me7',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s5edjmn2ae7qlqb609v715h4m0',1447826630,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('pq9n136r45vv1qvplcan7a9e94',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('llsfa4gmqa8p4a8g3a2qo8f576',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cjlimivqup2e0cceb0g4da0cu6',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8ojt8kkuvv030kteh63rl9d475',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4uh415qvdqkr909tkde3id9bn4',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('t1oj0nsfs65v9c4642l1i9u660',1447826629,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dqii353db06flnpvptlpnsjr92',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f1gi7ujin3cr9tld5m6bvu6ms0',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('96j1gf6li0inkp71db8va91r64',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1l3360fr9q8js8mens73blpug0',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('a9p6mvah0m0capd83dd87u3ah5',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p8ffbhq9t7vc0sgmfoo2k5f4n3',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rlipm1896c364p7t48v8e54bg1',1447826628,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6mlo4j7t4thvp062h7lfpqi3o1',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p9jd1isd72q0re1acn26p64rl1',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('95m44s61ibh1q19thfiv8fgua2',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cosut0qh7nrchlflef7tf548a6',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ah0g24pdtjslsi5etnkm2dtl90',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hhf56fajl3046b7bl8v4v4vkc3',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vqn3tqgfh0roe6htmc2cs10ps0',1447826627,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j4raudknffqp2k12bhru4qe9o6',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qrkan3j402s6e1edpa5qp42qv7',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('28jb7igcm0qvg50fp1mvgmvf86',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7k47h8f85lekk0tic4js2ip7e0',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2dr73q5giku77a17ct2trriaj6',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5l9eg49dl14m6mqct9cehgbdv3',1447826626,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sh004p2vr52bhsjea01n36skl4',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n124p5fq2n3ljfdqi68d73k6t5',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s9j3li050l8b91csk6fnpv1gl1',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6cbvrg5iivf2hulen9shd7pf50',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('flvuauq4du7jtcl209ivlaejo6',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('986euh1v9a527neai06hg3jin1',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k94lbikhdhdjv2nn7o7imb58n4',1447826625,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j09vci5resi328r9uh5hjnaf56',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dgtpocjjb1g7cs9i4oi1ksg112',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dc2p60j2ap3p5urujs5i99nk22',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ffkhhjaa7c7nci0crminp5l5u1',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mo2bgkcgdalkto2jfbi1l4lvr5',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rdmf86ge2g1333063han6n9k63',1447826624,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6q8vdtb4dn330sv2nnrbefcnq2',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lr7p6946efodv80m6sv03bk9r4',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bm81abu3785vl4tu752gp4ue01',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0kh9288bqbspjaeo1htljq3p34',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hudu843ordm4d82ptg1bgrs8j6',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mdnbr6cklr3b939otfod65fs01',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('do0us9u6hngna7d2gqtpldur22',1447826623,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o1if4npuh84c6rmeendoo3o301',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4dtmb7evcqo2tepqseam4dlit5',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lv4ef0gmdgtpn90cfd9e0arc75',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sl360lnusi65g20eosqeuqcs95',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('86r7t8ukh11jn5dpvh92vgfo91',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('21uoltnbpi1s80hekk70eccms0',1447826622,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('24irfkrliovf1nst4ajfu39en5',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('eme6t9v3roab207q466eelttp1',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('u3kvrmml7fmfmgtcbepb1c4ts7',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5usgufl7veitlann34tun6arr0',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2no3jgu3g5a7jvhpt55a99kos7',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('b9upm758rg2bgteui47879ur43',1447826621,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hjeomi9juljmsmt37uhml66qg3',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('91s786d514a1ev0mvv8gk78af5',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1bbnlmuqr2sq2m88kif1ta4c16',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('26o51ce21hsmvpgcnelmpg6ka0',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2k4e9smg84o6jcoc46kj348r73',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n2imbcb3l3buupkgheaiek54a2',1447826620,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7am5klt8c3fmtqovi51llqajo2',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dh1ouqf09mtqrkjgbilk42sb71',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9jkfqaev9487fuo4huhj37nrv2',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jembgdml6i0h744jaku817hr04',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bhgiidmbs6n548pugqeeio0kv5',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n7s8ncg3mr8q98e3ekq2cvlfs1',1447826619,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2cpvd8be290lv3pfn22do6rpp0',1447826618,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('m2hp9ak8phcpsd43pmolnkovu2',1447826618,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0lj6vq3u9o1crl2hqn8rt5c6g5',1447826618,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3r1hf8brfgslo70k7b9a2r3df4',1447826618,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('27lc060k5co77i23f42cjpnnh4',1447826618,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7026t2gpnkvcct55hon0kl11q0',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2ncc6rl58jg9fphfugdg1q4p82',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0lga60if2j02pjai2njmp4ou21',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('djg3u7dbt39dl3r37uklr8v8l0',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('51gutrlde14u3hpbbv53n6fp57',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('d5bgve3mvuq33kkc8230ovhu26',1447826617,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4ad65lhi322dmclf00inpdugj7',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9m3k7fcv5a14jdh0mt9mv1th70',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3dt0dmhrpu8jrkqcv2gk6og5n2',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7org8h1ou74t3uc6kj4lv69at2',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gkdmu5n5bjkupn68d2emueiq85',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ro8cngfo8mign69h1b4c51i660',1447826616,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qj95hidrotbea8qbbbe093h7n3',1447826615,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k7updkkvj1pt429c6hpptvlvg2',1447826615,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2cth92bmvor63cftduhsnt0hu6',1447826615,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ki5ifv576jp6bnrnuipbuegb90',1447826615,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rg2m5tp2er41ha1i4fn5ijdis2',1447826615,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('du82arlq0ehkeb760nukjdnoi0',1447826614,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('97er8cqf3mt1ecvag5hbpai3q2',1447826614,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6p6b8hek5mcsl9d0vdjj04l3r3',1447826614,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qpdguccn7lllg0i7g80o40lvp3',1447826614,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('uqfm4o3sja7k3fi08l8fqgps52',1447826614,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j1cq01sliva80b4t90f52cjd46',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i3ifvlf9a8emrgc6ee5h0qgtp5',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5rli8gr97n9lp3figm5bo0ivq0',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rqioslu1srvbj3t2ran909fgn1',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sdh0gldsrjifg9sk6iqpm0u2k5',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('uv5h35rgmao9is7h72skr58kf3',1447826613,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('84ca8ilqh7btl294hj2gos71l2',1447826612,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j5pe0qn3f67k5bfkqt2i4acb12',1447826612,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mietkqo86iib12710r8be2k4l7',1447826612,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i3m9sub6clutkufu5qbsib4ar7',1447826612,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('g5j074fhrjal8ai72mj3ebr104',1447826612,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qmdljpbuhe03nqj4n2nol82n45',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ics92osljta05hjldmches9cb5',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3jlffcpkbkea73na8gbc0qrkp3',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ugr0p47dgtuhrtfedr90ialah1',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lo17bjl9840m69e5enkodb5vn1',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ocbtve71s85sgv2535f7tvqmc2',1447826611,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rrb4qglq534q471snq0jajnrk4',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('r9hsr67fkpkro5mhf43ma0fut0',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jhfa13asa2av6566u6cgvdqls6',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n7kfi51ptos55mhtk3q8ac9k62',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('49uk12to7vi7atnv7lf0nv4t55',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('g67quakdtnuo509ppl52fbote0',1447826610,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vvs0un91ig6pcq1ghol7hrao32',1447826609,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('809nl0d8jeb1e7pdq8ckfpe0b2',1447826609,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k8sd0f7eigq6g8oedebbbco7v4',1447826609,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3u8v4bcuqahmehhlsvl6vof203',1447826609,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fpmqno2hlktro8k5sup5njka23',1447826609,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('k0sdj0i3dl0uef67hp7oburup1',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('h4okncjpkpnrc21ag2q6dgisc5',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8155h5jubk3b8kppf1cstgsl47',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ni9rrl4mikmcmtfkenm7ek4k04',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hcmq1hmh38v8n5dkgrmuekp6c7',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1hpeeoemd4cd25l2dcg516fos4',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('q5u1l7o8lii79o0cm3cf43g0p2',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('kf8svt46n44jrio2blduf2isk0',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ikgni7cspl7526i1u30u7pn905',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sqhg0rvjs28der33jlsln5hs42',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('idggnrriq9tsug5qrkhbrf1qd1',1447826607,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('a0bb7bvdaqresoqrljekovlv72',1447826608,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6hvja61k6la58dko2ou4l4ckd1',1447827464,'woz__Captcha|a:1:{s:4:\"word\";s:4:\"uez6\";}woz__Anwsion|a:2:{s:10:\"permission\";a:15:{s:16:\"is_administortar\";s:1:\"1\";s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}s:11:\"client_info\";a:3:{s:12:\"__CLIENT_UID\";s:1:\"1\";s:18:\"__CLIENT_USER_NAME\";s:5:\"admin\";s:17:\"__CLIENT_PASSWORD\";s:32:\"af03abb6cc10ff124ef525b405693c4d\";}}',1440),('bl3175fvj9d79hd2nfas8fqpv6',1447827526,'woz__Anwsion|a:3:{s:11:\"client_info\";a:3:{s:12:\"__CLIENT_UID\";s:2:\"20\";s:18:\"__CLIENT_USER_NAME\";s:11:\"12312312312\";s:17:\"__CLIENT_PASSWORD\";s:32:\"19e1dc267b4b2431339fe184733f247b\";}s:11:\"human_valid\";a:0:{}s:10:\"permission\";a:6:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:11:\"human_valid\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"5\";s:17:\"answer_valid_hour\";s:1:\"5\";s:15:\"publish_comment\";s:1:\"1\";}}woz__Captcha|a:1:{s:4:\"word\";s:4:\"b782\";}',1440),('pb6qj1ds7k83kdon6samc20cu1',1447826606,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('l4v2svi3nm524a7jucv4b3cfj4',1447826606,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lsqsuul9d71eh620lopqk56e73',1447826606,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('pqmvcpq08ei5terqkvp0m4eo21',1447826606,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('b3ahpcph7a9cgbfnllqcja78g4',1447826606,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6l5vvil6mcplv6ei4712ru6c81',1447826605,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gm043ba71hg5qlael7cg2e8lu4',1447826605,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6qv6uvs018br438tqccr5rn9f3',1447826605,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jfbssjmsgjtr5pf0s1fhn9kla0',1447826605,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('v5bifgid2o7hroecgoh7311f23',1447826605,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3meai57s4ma2jqhtkeft69ptn0',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('csc31c9g5qdk5kdusd6j603l01',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7jm33dq4nqd53e5c7bj19tmco1',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0hlhovui0p0u7lqakfeupcf2l4',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qvb19b4n41dtjh5d24g6mab805',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('m1054fpduj6ptmfeusmoiodmu5',1447826604,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('eh5gb61eo8nstn6r24bjs1fka6',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('a3dnu9jti9o7e3la48d6fnvm71',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('35skvf4cg5dbu4unhin9gcbr43',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('b7i1m1a90osd1l458f0kjt8jg0',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nk1oicmnkta48dsagd6hn3dik2',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('u5ki9nsk3pjtm5knsoaev8m8c1',1447826603,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('830s22git2otqtk3gsfculpoi3',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tb5jb2vg55nn29brv8ufvc94s7',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s125ufrkl0107aunc0r2fj78d4',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hs4hn0mk116bpnqbt1iegitv62',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2t5lhtccdmklhegsipumcru5t0',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0bbqt60pd99nh8ijf55nh1ebt4',1447826602,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ktkr0mm6cndarbc36g1lrdeba5',1447826601,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i94dpgbk4ufaa38qks9i6cjhk0',1447826601,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('skj2mcqf81gi75lp1ifdbp2635',1447826601,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tprjlpo7o0rb3roelragrrl051',1447826601,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7vkvifum05ug3qptod230kprp6',1447826601,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6eobp686tcjrg72sl65af77n04',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aas3hqvmsakndagh8ma680npl2',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tbqvqj9p421bou9uqljr24p9d7',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bllbnmjtno2sq4chb81rli2ts5',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('se541ramhgjo7letnfkpik37u3',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p8ggoo3mm2hq4eappir8lnbmf3',1447826600,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9hokvh1btgcun47k8c2pkp2c26',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i3m560jft1iscksn0hdna2sl02',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7i3ils4gui28an70q5fj2j0ra4',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ve8u9aecgeefem87klushp8ha2',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ihbdhdvi5tvn016t2qpv8lh7h3',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8ar93ausobvke76s3kop6gn6c6',1447826599,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p9nkdprfais5cqbdu3v39lcq61',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ub2dt3hpb4fj9otnvuehc0d3l4',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8lu5vnb0deqe5lj54n6d97rnr3',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2qqcbt3l27ji3odc4g4m67ivb7',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('m58ttas94sf8sc5d8tbv1nqu62',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0lddh9qpectdrd0t2utuqvn052',1447826598,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gsbojo7rjnpij7j0k6nodnsmq7',1447826597,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('qkrrpkrc4hcnbcr6pnm1t5job4',1447826597,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('loeqfvt8b86k6n511ipeimne53',1447826597,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3ue58fr4ov7hdo1n4nevaboa34',1447826597,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('q3abr1g2alnh96cvd2rc5npq47',1447826597,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6mbet9bcetuoma3s89up5hfir5',1447826596,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8n541rqecrfs9qbuidiok0o3q5',1447826596,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f04eavhvhkh7o8u8jpilrms1b6',1447826596,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('asbihg7gucr1mrgnd2fd6lb587',1447826596,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hnggc0gnkqlsev4veraob32o87',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aahji5ipj0ll58usq3t4rhckk0',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ehqtk3msdpj5mop78ue10f90m7',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tkl8d36hb2aq4tei89cl5ukvd7',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hbhdgpdccgepgpcsqk3upj5ac0',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('77dgkug5rcsnjnfqgfsekpi093',1447826595,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8pv85oltl3nkcajq7g88b9g9o0',1447826594,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rgq04c6o5p1cp2ndf7o8uj7ms3',1447826594,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6a85ka3jifl3cve78pupr0vam7',1447826594,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ji17hsovd813m23u8hfd65jlr5',1447826594,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f4f9jt61332c77lug8l6i937p6',1447826594,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0qct5sfi0cngreknbo7osvr0q0',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('d8qhv4uf5l3s857n1d5sq0ai97',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f5c9q37mouvg5cq3v8070pn014',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sv02812pn6ou00fsttsnbvakk0',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('2pnq90ajovpuugakv3g3tl92s2',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o495qo73pdbs42qrmesopehea0',1447826593,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('chbotk1ganvf270mvlmgpari91',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('224h7838h827bgc6rjeu1uhs12',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p6j44svimatsr3u3hn0fr18qq4',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('msmotkm888foo2h4a5fq0f0v27',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n5hr6eshk99ona4sobg76ap7p5',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('b7ahtn7ko0ivpigl34isfa0j40',1447826592,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('oai9csj8s2aj2jk8e4okcjjhe4',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cju6dtge5ssinr33pe4e2k15e5',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gq3ibqft5n9kjnk33egdpe7qj3',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o9ck8pfolf0mm1aqec396uh0r3',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6geenpv61leotpo0204qcgh3c0',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('8rrol0cq7ls6t78h8fbjfg8h76',1447826591,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('sedff0ct5thjdn67nhasgu6i22',1447826590,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3cjc66v0v5pnob4o0rsbkajp53',1447826590,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('78ckf6cctb38avodduch30tqc6',1447826590,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ut7v2q9446ajhrgliubud2vtt0',1447826590,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ece49uhlkmhu3niq5tu93gfvm5',1447826590,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('31polius5sgr0fqe39e4eig9m4',1447826589,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('3elcevaq9oi4ni7a8edg2nljo2',1447826589,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ahbiq0q1d8hr0ge53nnbpgi816',1447826589,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mgkjnbatpb7p91kn74moqcp7i4',1447826589,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1helhjrd0s9rh10vr2ckqva2u4',1447826589,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jc07m80hmfkf8e7mv7363os2h0',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4ren99qvagk73tdvjcn508nuk5',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('f6um8qopf2bcbuqdtt5obl9ch3',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dbc4vgi16ooctspssnn5ceu9e6',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6ef05urit8o4s87uvvlvuus737',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0213eohl4e128eqos789nesqc7',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('63kvlmlsjc4cub26tt0r9hfea5',1447826588,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('41qo08gdn79ajbt217nnd6erm4',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('p0lh9rmntag318emieivb99kk4',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7640d6cbf0b4h0ap7ak3cdnp14',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('05cckc83kfojea0h3eekpavvt6',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('182ban5inuppg04tboam7bs7h3',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i826eigdqm6lp6qkcvpc7n5pm0',1447826587,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j1aauun80km79mpb8tlf4kuus2',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nnormvsf2gu29uphn1se4inip5',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6ndscjcrji3hhafnksfpss4dr0',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('o2kir1os7kdjl07urhjr2vvo20',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lditcer35pkiictbrjc6fvrko1',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vef9e5spblmadgmqcc2blbno42',1447826586,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('4qd6t40fl4evlnp0gitgeuhbg3',1447826585,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lpjr7lu24k4rllh18cgibajt74',1447826585,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('5p8haug2n4v4e315i6oups4ia2',1447826585,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('eqm3lsbm41o47dn2i8300n9bp2',1447826585,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('itk6as4n8tofgh328rhcag9nv5',1447826585,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ctl5ta73b947vkefialjkdmmm2',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('cste7332e5jpnhfue7s7cbe3v6',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('b8rmf7qgtp9mtpvjcu3mo4oci3',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6ll3e0q6j8jnpisjjoblpvg2a1',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rak5titshjtiu78cjme1iotou0',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('vq6ctfccciaaitqj2pdh8f29b2',1447826584,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ktohp6j79ckskcq55onb7jm7b2',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('jk2nv8uefimbrk51qkmg57u5i3',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ml6i9b1tm8vuoifsnfaj8drnv7',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('if5li86r06sqiqmitjll2bkjq5',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('us2bfeucfqevk41ud9t4ov1si5',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9ot0luidm2innrt0skj6ktrhl2',1447826583,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tdgu2f025plvseqi6dvm424qs6',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ns7ia7cuio95ttrdeph40qp8g5',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lo0fnibh9gp5nibjo4f86cidn1',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aj5e5ob1vkav8e2prslcqau176',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('6mnl0fs85oefpq4ebfe7qipqg5',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('kot4au02bqi6trdtlir8ht2o33',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('va64c9bp4nch75qf4q4gfui073',1447826582,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aj4ctm30bsviq2gg3tpnloe4s3',1447826581,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('72sho4j9dq606cg0dqob7lbla5',1447826581,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('srf8t33kjteaegkae700f7p441',1447826581,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fqojmldkgqgmjq6tatfqlegq75',1447826581,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1l5abebevettb58h8iksl3li41',1447826581,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('d4i346jpsr083mmg13ga12d8n7',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hhe2h4eou32hqfp1foddnk78t0',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('nptu1mg07hl1h7o3tfkavhhm41',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('riobf8555d0krpqrghi31u2au3',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('33pmi2c5gkamu0a9adlv264gs2',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lj56pi0536hsop2eh7ak8bljv2',1447826580,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ocmboseap9m0qqom7v8475hfa3',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tm9h8k9cuq0gkjhrqdk5kq0mg3',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('gc974m4qjv4lrrb2bh97q9k0k7',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('hg6l4qqp9qbgl6b86m3ajjr9p1',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('14tkmbsu839cstpien9ro2h9r2',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n56d794btgvtc2fitgcout5bj5',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9ksqo76v8jhppte6lef0hnv792',1447826579,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('ju5jddgdpqqm0a34ln9geon4q7',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('38con3sr2r85doq94vd75bp6g5',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('kjaum23hns725hoo0oqncc8iv7',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fk6fseamj2cvj9cdshtrfe8i83',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tlbgdr2f4l7l97lh6rhbshk0s6',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9ih535g46r1era9khoafssiro0',1447826578,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('aqi5rqf4p6tdnb6a306seq78j0',1447826577,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('um6rj3fv6ae70v086p3oa9m7q3',1447826577,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mtj2621t5kbojq500rbpp6l2j6',1447826577,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('eb2jg8vtfc682fid5mf57nsnj1',1447826577,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('120p7bk4293gk79dvdm98g6n67',1447826577,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('las5rpr3ii7ksf4d5bm1i7ikf2',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tc8kgum3fk12cg3hu898ectbh1',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('9b5v0185kf7c2hhum88mlmtuq5',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('37ug1h3h843t0ulq5r22gtnqj0',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dce9b3ltbdi4s9g1ab7ul49no7',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('bf2l3docc53n9dkbe8b6bd10e0',1447826576,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('lbemce0d4i8425qu230kc5qqv1',1447826575,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('dks65qm331hnrvi5j4jrhrmem5',1447826575,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i4hmifvntb165r4i9b28ar73m6',1447826575,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('s5p4s11iul4ut3qmlkf3vnl5a3',1447826575,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j3aca4s8abl0738egemfeoh9s2',1447826575,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('0fd5eq74g6jro0tj04lri8egd1',1447826574,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('mkm383hv9jnmnv8166pbh565s1',1447826574,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('i1mbdobbai76a3slr7odu75886',1447826574,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('1h2podsf0pfjqiu4qt5tu19481',1447826574,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('feo0qubn2suf6mie050l2agr64',1447826574,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('7blcqunpsknufe2aiml22vbmq6',1447826573,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('phu8gcvaqnrh927ajcaq3v0ba4',1447826573,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('r8iap21focpq6kca94sh4oo975',1447826573,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('rd1er9dgk2ntcmeu22odeaef01',1447826573,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('tvfi2ighf2thd4vcdhinf2pm36',1447826573,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('n1b45nesih6mt9qogodjtdand4',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('365ut7dv2i01fs2rid1i4bsvr3',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('laeqtvsd66ktpcm5alsq3v31t7',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('epprt7k9dnkkosvvor4khs5084',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('fp6jaa3il8qmau0fu4qmjtujt6',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('j96ppha7g1fab2hrs79gn26a83',1447825883,'woz__Anwsion|a:3:{s:11:\"human_valid\";a:0:{}s:11:\"client_info\";N;s:10:\"permission\";N;}woz__Captcha|a:1:{s:4:\"word\";s:4:\"q5vo\";}',1440),('os0v7m9ujsguh11u0ujr494st3',1447826571,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440),('e0lr94eb2740lfb6e7ihak4s74',1447826572,'woz__Anwsion|a:3:{s:10:\"permission\";a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}s:11:\"client_info\";N;s:11:\"human_valid\";N;}',1440);
/*!40000 ALTER TABLE `aws_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_system_setting`
--

DROP TABLE IF EXISTS `aws_system_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_system_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `varname` varchar(255) NOT NULL COMMENT '字段名',
  `value` text COMMENT '变量值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `varname` (`varname`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='系统设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_system_setting`
--

LOCK TABLES `aws_system_setting` WRITE;
/*!40000 ALTER TABLE `aws_system_setting` DISABLE KEYS */;
INSERT INTO `aws_system_setting` VALUES (1,'db_engine','s:6:\"MyISAM\";'),(2,'site_name','s:8:\"WeCenter\";'),(3,'description','s:30:\"WeCenter 社交化知识社区\";'),(4,'keywords','s:47:\"WeCenter,知识社区,社交社区,问答社区\";'),(5,'sensitive_words','s:0:\"\";'),(6,'def_focus_uids','s:1:\"1\";'),(7,'answer_edit_time','s:2:\"30\";'),(8,'cache_level_high','s:2:\"60\";'),(9,'cache_level_normal','s:3:\"600\";'),(10,'cache_level_low','s:4:\"1800\";'),(11,'unread_flush_interval','s:3:\"100\";'),(12,'newer_invitation_num','s:1:\"5\";'),(13,'index_per_page','s:2:\"20\";'),(14,'from_email','s:17:\"ddxm@easyedu2.com\";'),(15,'img_url','s:0:\"\";'),(16,'upload_url','s:27:\"http://10.10.10.151/uploads\";'),(17,'upload_dir','s:21:\"/var/www/html/uploads\";'),(18,'ui_style','s:7:\"default\";'),(19,'uninterested_fold','s:1:\"5\";'),(20,'sina_akey',NULL),(21,'sina_skey',NULL),(22,'sina_weibo_enabled','s:1:\"N\";'),(23,'answer_unique','s:1:\"N\";'),(24,'notifications_per_page','s:2:\"10\";'),(25,'contents_per_page','s:2:\"10\";'),(26,'hot_question_period','s:1:\"7\";'),(27,'category_display_mode','s:4:\"icon\";'),(28,'recommend_users_number','s:1:\"6\";'),(29,'ucenter_enabled','s:1:\"N\";'),(30,'register_valid_type','s:1:\"N\";'),(31,'best_answer_day','s:2:\"30\";'),(32,'answer_self_question','s:1:\"Y\";'),(33,'censoruser','s:5:\"admin\";'),(34,'best_answer_min_count','s:1:\"3\";'),(35,'reputation_function','s:78:\"[最佳答案]*3+[赞同]*1-[反对]*1+[发起者赞同]*2-[发起者反对]*1\";'),(36,'db_version','s:8:\"20150315\";'),(37,'statistic_code','s:0:\"\";'),(38,'upload_enable','s:1:\"Y\";'),(39,'answer_length_lower','s:1:\"2\";'),(40,'quick_publish','s:1:\"Y\";'),(41,'register_type','s:4:\"open\";'),(42,'question_title_limit','s:3:\"100\";'),(43,'register_seccode','s:1:\"N\";'),(44,'admin_login_seccode','s:1:\"Y\";'),(45,'comment_limit','s:1:\"0\";'),(46,'backup_dir',''),(47,'best_answer_reput','s:2:\"20\";'),(48,'publisher_reputation_factor','s:2:\"10\";'),(49,'request_route_custom','s:0:\"\";'),(50,'upload_size_limit','s:3:\"512\";'),(51,'upload_avatar_size_limit','s:3:\"512\";'),(52,'topic_title_limit','s:2:\"12\";'),(53,'url_rewrite_enable','s:1:\"N\";'),(54,'best_agree_min_count','s:1:\"3\";'),(55,'site_close','s:1:\"N\";'),(56,'close_notice','s:39:\"站点已关闭，管理员请登录。\";'),(57,'qq_login_enabled','s:1:\"N\";'),(58,'qq_login_app_id',''),(59,'qq_login_app_key',''),(60,'integral_system_enabled','s:1:\"N\";'),(61,'integral_system_config_register','s:4:\"2000\";'),(62,'integral_system_config_profile','s:3:\"100\";'),(63,'integral_system_config_invite','s:3:\"200\";'),(64,'integral_system_config_best_answer','s:3:\"200\";'),(65,'integral_system_config_answer_fold','s:3:\"-50\";'),(66,'integral_system_config_new_question','s:3:\"-20\";'),(67,'integral_system_config_new_answer','s:2:\"-5\";'),(68,'integral_system_config_thanks','s:3:\"-10\";'),(69,'integral_system_config_invite_answer','s:3:\"-10\";'),(70,'username_rule','s:1:\"0\";'),(71,'username_length_min','s:1:\"1\";'),(72,'username_length_max','s:3:\"100\";'),(73,'category_enable','s:1:\"Y\";'),(74,'integral_unit','s:6:\"金币\";'),(75,'nav_menu_show_child','s:1:\"1\";'),(76,'anonymous_enable','s:1:\"Y\";'),(77,'report_reason','s:63:\"广告/SPAM\n恶意灌水\n违规内容\n文不对题\n重复发问\";'),(78,'allowed_upload_types','s:41:\"jpg,jpeg,png,gif,zip,doc,docx,rar,pdf,psd\";'),(79,'site_announce','s:0:\"\";'),(80,'icp_beian','s:0:\"\";'),(81,'report_message_uid','s:1:\"1\";'),(82,'today_topics','s:0:\"\";'),(83,'welcome_recommend_users','s:0:\"\";'),(84,'welcome_message_pm','s:180:\"尊敬的{username}，您已经注册成为{sitename}的会员，请您在发表言论时，遵守当地法律法规。\n如果您有什么疑问可以联系管理员。\n\n{sitename}\";'),(85,'time_style','s:1:\"Y\";'),(86,'reputation_log_factor','s:1:\"3\";'),(87,'advanced_editor_enable','s:1:\"Y\";'),(88,'auto_question_lock_day','s:1:\"0\";'),(89,'default_timezone','s:9:\"Etc/GMT-8\";'),(90,'reader_questions_last_days','s:2:\"30\";'),(91,'reader_questions_agree_count','s:2:\"10\"'),(92,'weixin_mp_token','s:0:\"\";'),(93,'new_user_email_setting','a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}'),(94,'new_user_notification_setting','a:0:{}'),(95,'user_action_history_fresh_upgrade','s:1:\"Y\";'),(96,'cache_dir','s:0:\"\";'),(97,'ucenter_charset','s:5:\"UTF-8\";'),(98,'question_topics_limit','s:2:\"10\";'),(99,'mail_config','a:7:{s:9:\"transport\";s:8:\"sendmail\";s:7:\"charset\";s:5:\"UTF-8\";s:6:\"server\";s:0:\"\";s:3:\"ssl\";s:1:\"0\";s:4:\"port\";s:0:\"\";s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}'),(100,'auto_create_social_topics','s:1:\"N\";'),(101,'weixin_subscribe_message_key','s:0:\"\";'),(102,'weixin_no_result_message_key','s:0:\"\";'),(103,'weixin_mp_menu','a:0:{}'),(104,'new_question_force_add_topic','s:1:\"N\";'),(105,'unfold_question_comments','s:1:\"N\";'),(106,'report_diagnostics','s:1:\"Y\";'),(107,'weixin_app_id','s:0:\"\";'),(108,'weixin_app_secret','s:0:\"\";'),(109,'weixin_account_role','s:7:\"base\";'),(110,'weibo_msg_enabled','s:1:\"N\";'),(111,'weibo_msg_published_user','a:0:\"\";'),(112,'admin_notifications','a:11:{s:15:\"answer_approval\";i:0;s:17:\"question_approval\";i:0;s:16:\"article_approval\";i:0;s:24:\"article_comment_approval\";i:0;s:23:\"unverified_modify_count\";i:0;s:11:\"user_report\";i:0;s:17:\"register_approval\";i:0;s:15:\"verify_approval\";i:0;s:12:\"last_version\";a:2:{s:7:\"version\";s:5:\"3.1.6\";s:9:\"build_day\";s:8:\"20151103\";}s:10:\"sina_users\";N;s:19:\"receive_email_error\";N;}'),(113,'slave_mail_config','s:0:\"\";'),(114,'receiving_email_global_config','a:2:{s:7:\"enabled\";s:1:\"N\";s:12:\"publish_user\";N;}'),(115,'last_sent_valid_email_id','i:0;'),(116,'google_login_enabled','s:1:\"N\";'),(117,'google_client_id','s:0:\"\";'),(118,'google_client_secret','s:0:\"\";'),(119,'facebook_login_enabled','s:1:\"N\";'),(120,'facebook_app_id','s:0:\"\";'),(121,'facebook_app_secret','s:0:\"\";'),(122,'twitter_login_enabled','s:1:\"N\";'),(123,'twitter_consumer_key','s:0:\"\";'),(124,'twitter_consumer_secret','s:0:\"\";'),(125,'weixin_encoding_aes_key','s:0:\"\";'),(126,'integral_system_config_answer_change_source','s:1:\"Y\";'),(127,'enable_help_center','s:1:\"N\";'),(128,'ucenter_path','s:0:\"\";'),(129,'register_agreement','s:1608:\"当您申请用户时，表示您已经同意遵守本规章。\n欢迎您加入本站点参与交流和讨论，本站点为社区，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：\n\n一、不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播下列信息：\n　（一）煽动抗拒、破坏宪法和法律、行政法规实施的；\n　（二）煽动颠覆国家政权，推翻社会主义制度的；\n　（三）煽动分裂国家、破坏国家统一的；\n　（四）煽动民族仇恨、民族歧视，破坏民族团结的；\n　（五）捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\n　（六）宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\n　（七）公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\n　（八）损害国家机关信誉的；\n　（九）其他违反宪法和法律行政法规的；\n　（十）进行商业广告行为的。\n\n二、互相尊重，对自己的言论和行为负责。\n三、禁止在申请用户时使用相关本站的词汇，或是带有侮辱、毁谤、造谣类的或是有其含义的各种语言进行注册用户，否则我们会将其删除。\n四、禁止以任何方式对本站进行各种破坏行为。\n五、如果您有违反国家相关法律法规的行为，本站概不负责，您的登录信息均被记录无疑，必要时，我们会向相关的国家管理部门提供此类信息。\";');
/*!40000 ALTER TABLE `aws_system_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic`
--

DROP TABLE IF EXISTS `aws_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '话题id',
  `topic_title` varchar(64) DEFAULT NULL COMMENT '话题标题',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `discuss_count` int(11) DEFAULT '0' COMMENT '讨论计数',
  `topic_description` text COMMENT '话题描述',
  `topic_pic` varchar(255) DEFAULT NULL COMMENT '话题图片',
  `topic_lock` tinyint(2) NOT NULL DEFAULT '0' COMMENT '话题是否锁定 1 锁定 0 未锁定',
  `focus_count` int(11) DEFAULT '0' COMMENT '关注计数',
  `user_related` tinyint(1) DEFAULT '0' COMMENT '是否被用户关联',
  `url_token` varchar(32) DEFAULT NULL,
  `merged_id` int(11) DEFAULT '0',
  `seo_title` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT '0',
  `is_parent` tinyint(1) DEFAULT '0',
  `discuss_count_last_week` int(10) DEFAULT '0',
  `discuss_count_last_month` int(10) DEFAULT '0',
  `discuss_count_update` int(10) DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  UNIQUE KEY `topic_title` (`topic_title`),
  KEY `url_token` (`url_token`),
  KEY `merged_id` (`merged_id`),
  KEY `discuss_count` (`discuss_count`),
  KEY `add_time` (`add_time`),
  KEY `user_related` (`user_related`),
  KEY `focus_count` (`focus_count`),
  KEY `topic_lock` (`topic_lock`),
  KEY `parent_id` (`parent_id`),
  KEY `is_parent` (`is_parent`),
  KEY `discuss_count_last_week` (`discuss_count_last_week`),
  KEY `discuss_count_last_month` (`discuss_count_last_month`),
  KEY `discuss_count_update` (`discuss_count_update`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='话题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic`
--

LOCK TABLES `aws_topic` WRITE;
/*!40000 ALTER TABLE `aws_topic` DISABLE KEYS */;
INSERT INTO `aws_topic` VALUES (1,'默认话题',NULL,0,'默认话题',NULL,0,2,0,NULL,0,NULL,0,0,0,0,0),(2,'123123123123',1447644340,1,'',NULL,0,3,0,NULL,0,NULL,0,0,1,1,1447644340),(3,'test',1447825663,1,'',NULL,0,1,0,NULL,0,NULL,0,0,1,1,1447825663);
/*!40000 ALTER TABLE `aws_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_focus`
--

DROP TABLE IF EXISTS `aws_topic_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_focus` (
  `focus_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `topic_id` int(11) DEFAULT NULL COMMENT '话题ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`focus_id`),
  KEY `uid` (`uid`),
  KEY `topic_id` (`topic_id`),
  KEY `topic_uid` (`topic_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='话题关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_focus`
--

LOCK TABLES `aws_topic_focus` WRITE;
/*!40000 ALTER TABLE `aws_topic_focus` DISABLE KEYS */;
INSERT INTO `aws_topic_focus` VALUES (1,2,1,1447644340),(6,3,1,1447825663);
/*!40000 ALTER TABLE `aws_topic_focus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_merge`
--

DROP TABLE IF EXISTS `aws_topic_merge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_merge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_id` int(11) NOT NULL DEFAULT '0',
  `target_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `source_id` (`source_id`),
  KEY `target_id` (`target_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_merge`
--

LOCK TABLES `aws_topic_merge` WRITE;
/*!40000 ALTER TABLE `aws_topic_merge` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_topic_merge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_topic_relation`
--

DROP TABLE IF EXISTS `aws_topic_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_topic_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增 ID',
  `topic_id` int(11) DEFAULT '0' COMMENT '话题id',
  `item_id` int(11) DEFAULT '0',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `uid` (`uid`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_topic_relation`
--

LOCK TABLES `aws_topic_relation` WRITE;
/*!40000 ALTER TABLE `aws_topic_relation` DISABLE KEYS */;
INSERT INTO `aws_topic_relation` VALUES (1,2,2,1447644340,1,'question'),(2,3,4,1447825663,1,'question');
/*!40000 ALTER TABLE `aws_topic_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history`
--

DROP TABLE IF EXISTS `aws_user_action_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history` (
  `history_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `associate_type` tinyint(1) DEFAULT NULL COMMENT '关联类型: 1 问题 2 回答 3 评论 4 话题',
  `associate_action` smallint(3) DEFAULT NULL COMMENT '操作类型',
  `associate_id` int(11) DEFAULT NULL COMMENT '关联ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `associate_attached` int(11) DEFAULT NULL,
  `anonymous` tinyint(1) DEFAULT '0' COMMENT '是否匿名',
  `fold_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`history_id`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `associate_id` (`associate_id`),
  KEY `anonymous` (`anonymous`),
  KEY `fold_status` (`fold_status`),
  KEY `associate` (`associate_type`,`associate_action`),
  KEY `associate_attached` (`associate_attached`),
  KEY `associate_with_id` (`associate_id`,`associate_type`,`associate_action`),
  KEY `associate_with_uid` (`uid`,`associate_type`,`associate_action`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='用户操作记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history`
--

LOCK TABLES `aws_user_action_history` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history` DISABLE KEYS */;
INSERT INTO `aws_user_action_history` VALUES (1,1,1,101,1,1447644292,132412313,0,0),(2,1,4,401,2,1447644340,-1,0,0),(3,1,4,406,2,1447644340,-1,0,0),(4,1,1,401,2,1447644340,2,0,0),(5,1,4,401,2,1447644340,2,0,0),(6,1,1,101,2,1447644340,2147483647,0,0),(17,1,4,406,3,1447825663,-1,0,0),(16,1,4,401,3,1447825663,-1,0,0),(18,1,1,401,4,1447825663,3,0,0),(20,1,1,101,4,1447825663,-1,0,0),(19,1,4,401,3,1447825663,4,0,0),(14,1,2,201,2,1447654446,2,0,0),(15,1,1,201,2,1447654446,2,0,0);
/*!40000 ALTER TABLE `aws_user_action_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history_data`
--

DROP TABLE IF EXISTS `aws_user_action_history_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history_data` (
  `history_id` int(11) unsigned NOT NULL,
  `associate_content` text,
  `associate_attached` text,
  `addon_data` text COMMENT '附加数据',
  PRIMARY KEY (`history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history_data`
--

LOCK TABLES `aws_user_action_history_data` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history_data` DISABLE KEYS */;
INSERT INTO `aws_user_action_history_data` VALUES (1,'134123','',''),(2,'123123123123','',''),(3,'','',''),(4,'123123123123','',''),(5,'123123123123','',''),(6,'123123123','',''),(16,'test','',''),(17,'','',''),(18,'test','',''),(19,'test','',''),(20,'testtest','testtest',''),(14,'123213','',''),(15,'123213','','');
/*!40000 ALTER TABLE `aws_user_action_history_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_action_history_fresh`
--

DROP TABLE IF EXISTS `aws_user_action_history_fresh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_action_history_fresh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `history_id` int(11) NOT NULL,
  `associate_id` int(11) NOT NULL,
  `associate_type` tinyint(1) NOT NULL,
  `associate_action` smallint(3) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL DEFAULT '0',
  `anonymous` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `associate` (`associate_type`,`associate_action`),
  KEY `add_time` (`add_time`),
  KEY `uid` (`uid`),
  KEY `history_id` (`history_id`),
  KEY `associate_with_id` (`id`,`associate_type`,`associate_action`),
  KEY `associate_with_uid` (`uid`,`associate_type`,`associate_action`),
  KEY `anonymous` (`anonymous`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_action_history_fresh`
--

LOCK TABLES `aws_user_action_history_fresh` WRITE;
/*!40000 ALTER TABLE `aws_user_action_history_fresh` DISABLE KEYS */;
INSERT INTO `aws_user_action_history_fresh` VALUES (1,1,1,1,101,1447644292,1,0),(5,5,2,4,401,1447644340,1,0),(15,15,2,1,201,1447654446,1,0),(20,20,4,1,101,1447825663,1,0),(19,19,3,4,401,1447825663,1,0),(14,14,2,2,201,1447654446,1,0);
/*!40000 ALTER TABLE `aws_user_action_history_fresh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_user_follow`
--

DROP TABLE IF EXISTS `aws_user_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_user_follow` (
  `follow_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `fans_uid` int(11) DEFAULT NULL COMMENT '关注人的UID',
  `friend_uid` int(11) DEFAULT NULL COMMENT '被关注人的uid',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`follow_id`),
  KEY `fans_uid` (`fans_uid`),
  KEY `friend_uid` (`friend_uid`),
  KEY `user_follow` (`fans_uid`,`friend_uid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='用户关注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_user_follow`
--

LOCK TABLES `aws_user_follow` WRITE;
/*!40000 ALTER TABLE `aws_user_follow` DISABLE KEYS */;
INSERT INTO `aws_user_follow` VALUES (11,12,1,1447812779),(12,13,1,1447812943),(13,14,1,1447813039),(14,15,1,1447813123),(15,16,1,1447813253),(16,17,1,1447813571),(17,18,1,1447813770),(18,19,1,1447814130),(19,20,1,1447815323),(20,21,1,1447816215),(21,22,1,1447816425),(22,23,1,1447816672),(23,24,1,1447817532),(24,25,1,1447819429),(25,26,1,1447819603),(26,27,1,1447825767),(27,28,1,1447825806),(28,29,1,1447825883);
/*!40000 ALTER TABLE `aws_user_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users`
--

DROP TABLE IF EXISTS `aws_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户的 UID',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `email` varchar(255) DEFAULT NULL COMMENT 'EMAIL',
  `mobile` varchar(16) DEFAULT NULL COMMENT '用户手机',
  `password` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `salt` varchar(16) DEFAULT NULL COMMENT '用户附加混淆码',
  `avatar_file` varchar(128) DEFAULT NULL COMMENT '头像文件',
  `sex` tinyint(1) DEFAULT NULL COMMENT '性别',
  `birthday` int(10) DEFAULT NULL COMMENT '生日',
  `province` varchar(64) DEFAULT NULL COMMENT '省',
  `city` varchar(64) DEFAULT NULL COMMENT '市',
  `job_id` int(10) DEFAULT '0' COMMENT '职业ID',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `reg_ip` bigint(12) DEFAULT NULL COMMENT '注册IP',
  `last_login` int(10) DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` bigint(12) DEFAULT NULL COMMENT '最后登录 IP',
  `online_time` int(10) DEFAULT '0' COMMENT '在线时间',
  `last_active` int(10) DEFAULT NULL COMMENT '最后活跃时间',
  `notification_unread` int(11) NOT NULL DEFAULT '0' COMMENT '未读系统通知',
  `inbox_unread` int(11) NOT NULL DEFAULT '0' COMMENT '未读短信息',
  `inbox_recv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-所有人可以发给我,1-我关注的人',
  `fans_count` int(10) NOT NULL DEFAULT '0' COMMENT '粉丝数',
  `friend_count` int(10) NOT NULL DEFAULT '0' COMMENT '观众数',
  `invite_count` int(10) NOT NULL DEFAULT '0' COMMENT '邀请我回答数量',
  `article_count` int(10) NOT NULL DEFAULT '0' COMMENT '文章数量',
  `question_count` int(10) NOT NULL DEFAULT '0' COMMENT '问题数量',
  `answer_count` int(10) NOT NULL DEFAULT '0' COMMENT '回答数量',
  `topic_focus_count` int(10) NOT NULL DEFAULT '0' COMMENT '关注话题数量',
  `invitation_available` int(10) NOT NULL DEFAULT '0' COMMENT '邀请数量',
  `group_id` int(10) DEFAULT '0' COMMENT '用户组',
  `reputation_group` int(10) DEFAULT '0' COMMENT '威望对应组',
  `forbidden` tinyint(1) DEFAULT '0' COMMENT '是否禁止用户',
  `valid_email` tinyint(1) DEFAULT '0' COMMENT '邮箱验证',
  `is_first_login` tinyint(1) DEFAULT '1' COMMENT '首次登录标记',
  `agree_count` int(10) DEFAULT '0' COMMENT '赞同数量',
  `thanks_count` int(10) DEFAULT '0' COMMENT '感谢数量',
  `views_count` int(10) DEFAULT '0' COMMENT '个人主页查看数量',
  `reputation` int(10) DEFAULT '0' COMMENT '威望',
  `reputation_update_time` int(10) DEFAULT '0' COMMENT '威望更新',
  `weibo_visit` tinyint(1) DEFAULT '1' COMMENT '微博允许访问',
  `integral` int(10) DEFAULT '0',
  `draft_count` int(10) DEFAULT NULL,
  `common_email` varchar(255) DEFAULT NULL COMMENT '常用邮箱',
  `url_token` varchar(32) DEFAULT NULL COMMENT '个性网址',
  `url_token_update` int(10) DEFAULT '0',
  `verified` varchar(32) DEFAULT NULL,
  `default_timezone` varchar(32) DEFAULT NULL,
  `email_settings` varchar(255) DEFAULT '',
  `weixin_settings` varchar(255) DEFAULT '',
  `recent_topics` text,
  PRIMARY KEY (`uid`),
  KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `reputation` (`reputation`),
  KEY `reputation_update_time` (`reputation_update_time`),
  KEY `group_id` (`group_id`),
  KEY `agree_count` (`agree_count`),
  KEY `thanks_count` (`thanks_count`),
  KEY `forbidden` (`forbidden`),
  KEY `valid_email` (`valid_email`),
  KEY `last_active` (`last_active`),
  KEY `integral` (`integral`),
  KEY `url_token` (`url_token`),
  KEY `verified` (`verified`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users`
--

LOCK TABLES `aws_users` WRITE;
/*!40000 ALTER TABLE `aws_users` DISABLE KEYS */;
INSERT INTO `aws_users` VALUES (1,'admin','ddxm@easyedu2.com','','af03abb6cc10ff124ef525b405693c4d','hurg',NULL,1,NULL,'','',0,1447642820,168430081,1447825605,168430081,30445,1447827464,0,0,0,18,0,0,0,3,1,2,9,1,5,0,1,0,0,0,5,0,1447826563,1,1950,0,NULL,NULL,0,NULL,'','','','a:2:{i:0;s:4:\"test\";i:1;s:12:\"123123123123\";}'),(22,'1','邮箱','','9db06bcff9248837f86d1a6bcf41c9e7',NULL,NULL,3,NULL,NULL,NULL,0,1447816425,168430081,0,NULL,242,1447816666,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(21,'\'\'\'','\'\'\'','','857872bbd13c5d226123fd7bcd013cbb',NULL,NULL,3,NULL,NULL,NULL,0,1447816215,168430081,0,NULL,181,1447816395,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(23,'111','邮箱','','cd524f9bd18c001c72fc6e747a343506',NULL,NULL,3,NULL,NULL,NULL,0,1447816672,168430081,0,NULL,1,1447816672,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(12,'123123','1231','','6f718285bc894d90b8650a73bec6fcf6','usdd',NULL,3,NULL,NULL,NULL,0,1447812779,168430081,0,NULL,1,1447812779,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(13,'12','12','','01bf828fa2568b673e2620f2d790026f','eqzh',NULL,3,NULL,NULL,NULL,0,1447812943,168430081,0,NULL,1,1447812943,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(14,'12313','','','e7d00e2284b0b878a3730891b3f48acc','upbf',NULL,3,NULL,NULL,NULL,0,1447813039,168430081,0,NULL,1,1447813039,0,0,0,0,1,0,0,0,0,0,5,4,5,0,1,1,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(15,'1231','邮箱','','be88a9cc6ad3d6a90d9716c357df07ae','mdzl',NULL,3,NULL,NULL,NULL,0,1447813123,168430081,0,NULL,1,1447813124,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(16,'dddd','dddd@dddd.com','','bd952a0932cafc15478feea3597db588','dmpa',NULL,3,NULL,NULL,NULL,0,1447813253,168430081,0,NULL,85,1447813337,0,0,0,0,1,0,0,0,0,0,5,4,5,0,1,1,0,0,1,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(17,'qwqweqw','12323@12dq.com','','ab047141a5cfd405f3aecbbf05a30aad','lnjr',NULL,3,NULL,NULL,NULL,0,1447813571,168430081,0,NULL,187,1447813757,0,0,0,0,1,0,0,0,0,0,5,4,5,0,1,1,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(18,'ddddd','123123@123.com','','b7d9c74d68b14a1cf2a73583e2bff185','qhia',NULL,3,NULL,NULL,NULL,0,1447813770,168430081,0,NULL,2,1447814091,0,0,0,0,1,0,0,0,0,0,5,4,5,0,1,1,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(19,'12233','123123','','77d52d91a626ae00f70b7eccf2af177c','xoil',NULL,3,NULL,NULL,NULL,0,1447814130,168430081,0,NULL,1,1447814130,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(20,'12312312312','111223','','19e1dc267b4b2431339fe184733f247b','oarh',NULL,3,NULL,NULL,NULL,0,1447815323,168430081,0,NULL,12242,1447827504,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(24,'123444','邮箱','','cd524f9bd18c001c72fc6e747a343506',NULL,NULL,3,NULL,NULL,NULL,0,1447817532,168430081,0,NULL,1621,1447818912,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(25,'123','123','','894c925e9616baf4484f6fccbf9013c0',NULL,NULL,3,NULL,NULL,NULL,0,1447819429,168430081,0,NULL,122,1447819550,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(26,'1233','邮箱','','cd524f9bd18c001c72fc6e747a343506',NULL,NULL,3,NULL,NULL,NULL,0,1447819603,168430081,0,NULL,901,1447820383,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,1,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(27,'testkryson','testkryson@testkryson.com','','34491dbe1f3e15200e032c23bb77b19a',NULL,NULL,3,NULL,NULL,NULL,0,1447825767,168430081,0,NULL,1,1447825767,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(28,'krysontest','krysontest@krysontest.com','','548aaa2de0b83ff751b1f24495bd61c9',NULL,NULL,3,NULL,NULL,NULL,0,1447825806,168430081,0,NULL,1,1447825806,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,0,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL),(29,'krysontestaaaaaa1','krysontest@krysontest.com','','548aaa2de0b83ff751b1f24495bd61c9',NULL,NULL,3,NULL,NULL,NULL,0,1447825883,168430081,0,NULL,0,NULL,0,0,0,0,1,0,0,0,0,0,5,4,5,0,0,1,0,0,0,0,1447826563,1,2000,NULL,NULL,NULL,0,NULL,NULL,'a:2:{s:9:\"FOLLOW_ME\";s:1:\"N\";s:10:\"NEW_ANSWER\";s:1:\"N\";}','',NULL);
/*!40000 ALTER TABLE `aws_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_attrib`
--

DROP TABLE IF EXISTS `aws_users_attrib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_attrib` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) DEFAULT NULL COMMENT '用户UID',
  `introduction` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `signature` varchar(255) DEFAULT NULL COMMENT '个人签名',
  `qq` bigint(15) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='用户附加属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_attrib`
--

LOCK TABLES `aws_users_attrib` WRITE;
/*!40000 ALTER TABLE `aws_users_attrib` DISABLE KEYS */;
INSERT INTO `aws_users_attrib` VALUES (1,1,NULL,'如：80后IT男..',0,''),(12,12,NULL,'一句话介绍',NULL,NULL),(13,13,NULL,'',NULL,NULL),(14,14,NULL,'',NULL,NULL),(15,15,NULL,'一句话介绍',NULL,NULL),(16,16,NULL,'一句话介绍',NULL,NULL),(17,17,NULL,'一句话介绍',NULL,NULL),(18,18,NULL,'一句话介绍',NULL,NULL),(19,19,NULL,'一句话介绍',NULL,NULL),(20,20,NULL,'',NULL,NULL),(21,21,NULL,'一句话介绍',NULL,NULL),(22,22,NULL,'一句话介绍',NULL,NULL),(23,23,NULL,'一句话介绍',NULL,NULL),(24,24,NULL,'一句话介绍',NULL,NULL),(25,25,NULL,'一句话介绍',NULL,NULL),(26,26,NULL,'一句话介绍',NULL,NULL),(27,27,NULL,'',NULL,NULL),(28,28,NULL,'',NULL,NULL),(29,29,NULL,'',NULL,NULL);
/*!40000 ALTER TABLE `aws_users_attrib` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_facebook`
--

DROP TABLE IF EXISTS `aws_users_facebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_facebook` (
  `id` bigint(20) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `timezone` tinyint(3) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `expires_time` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_facebook`
--

LOCK TABLES `aws_users_facebook` WRITE;
/*!40000 ALTER TABLE `aws_users_facebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_facebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_google`
--

DROP TABLE IF EXISTS `aws_users_google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_google` (
  `id` varchar(64) NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `locale` varchar(16) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `gender` varchar(8) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(128) DEFAULT NULL,
  `refresh_token` varchar(128) DEFAULT NULL,
  `expires_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_google`
--

LOCK TABLES `aws_users_google` WRITE;
/*!40000 ALTER TABLE `aws_users_google` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_group`
--

DROP TABLE IF EXISTS `aws_users_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_group` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) DEFAULT '0' COMMENT '0-会员组 1-系统组',
  `custom` tinyint(1) DEFAULT '0' COMMENT '是否自定义',
  `group_name` varchar(50) NOT NULL,
  `reputation_lower` int(11) DEFAULT '0',
  `reputation_higer` int(11) DEFAULT '0',
  `reputation_factor` float DEFAULT '0' COMMENT '威望系数',
  `permission` text COMMENT '权限设置',
  PRIMARY KEY (`group_id`),
  KEY `type` (`type`),
  KEY `custom` (`custom`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='用户组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_group`
--

LOCK TABLES `aws_users_group` WRITE;
/*!40000 ALTER TABLE `aws_users_group` DISABLE KEYS */;
INSERT INTO `aws_users_group` VALUES (1,0,0,'超级管理员',0,0,5,'a:15:{s:16:\"is_administortar\";s:1:\"1\";s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(2,0,0,'前台管理员',0,0,4,'a:14:{s:12:\"is_moderator\";s:1:\"1\";s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:12:\"edit_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(3,0,0,'未验证会员',0,0,0,'a:5:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:11:\"human_valid\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"2\";s:17:\"answer_valid_hour\";s:1:\"2\";}'),(4,0,0,'普通会员',0,0,0,'a:3:{s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:19:\"question_valid_hour\";s:2:\"10\";s:17:\"answer_valid_hour\";s:2:\"10\";}'),(5,1,0,'注册会员',0,100,1,'a:6:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:11:\"human_valid\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"5\";s:17:\"answer_valid_hour\";s:1:\"5\";s:15:\"publish_comment\";s:1:\"1\";}'),(6,1,0,'初级会员',100,200,1,'a:8:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:19:\"question_valid_hour\";s:1:\"5\";s:17:\"answer_valid_hour\";s:1:\"5\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";}'),(7,1,0,'中级会员',200,500,1,'a:9:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:10:\"edit_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(8,1,0,'高级会员',500,1000,1,'a:11:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(9,1,0,'核心会员',1000,999999,1,'a:12:{s:16:\"publish_question\";s:1:\"1\";s:21:\"publish_approval_time\";a:2:{s:5:\"start\";s:0:\"\";s:3:\"end\";s:0:\"\";}s:13:\"edit_question\";s:1:\"1\";s:10:\"edit_topic\";s:1:\"1\";s:12:\"manage_topic\";s:1:\"1\";s:12:\"create_topic\";s:1:\"1\";s:17:\"redirect_question\";s:1:\"1\";s:13:\"upload_attach\";s:1:\"1\";s:11:\"publish_url\";s:1:\"1\";s:15:\"publish_article\";s:1:\"1\";s:19:\"edit_question_topic\";s:1:\"1\";s:15:\"publish_comment\";s:1:\"1\";}'),(99,0,0,'游客',0,0,0,'a:9:{s:10:\"visit_site\";s:1:\"1\";s:13:\"visit_explore\";s:1:\"1\";s:12:\"search_avail\";s:1:\"1\";s:14:\"visit_question\";s:1:\"1\";s:11:\"visit_topic\";s:1:\"1\";s:13:\"visit_feature\";s:1:\"1\";s:12:\"visit_people\";s:1:\"1\";s:13:\"visit_chapter\";s:1:\"1\";s:11:\"answer_show\";s:1:\"1\";}');
/*!40000 ALTER TABLE `aws_users_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_notification_setting`
--

DROP TABLE IF EXISTS `aws_users_notification_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_notification_setting` (
  `notice_setting_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) NOT NULL,
  `data` text COMMENT '设置数据',
  PRIMARY KEY (`notice_setting_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='通知设定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_notification_setting`
--

LOCK TABLES `aws_users_notification_setting` WRITE;
/*!40000 ALTER TABLE `aws_users_notification_setting` DISABLE KEYS */;
INSERT INTO `aws_users_notification_setting` VALUES (1,2,'a:0:{}'),(2,3,'a:0:{}'),(3,4,'a:0:{}'),(4,5,'a:0:{}'),(5,6,'a:0:{}'),(6,7,'a:0:{}'),(7,8,'a:0:{}'),(8,9,'a:0:{}'),(9,10,'a:0:{}'),(10,11,'a:0:{}'),(11,12,'a:0:{}'),(12,13,'a:0:{}'),(13,14,'a:0:{}'),(14,15,'a:0:{}'),(15,16,'a:0:{}'),(16,17,'a:0:{}'),(17,18,'a:0:{}'),(18,19,'a:0:{}'),(19,20,'a:0:{}'),(20,21,'a:0:{}'),(21,22,'a:0:{}'),(22,23,'a:0:{}'),(23,24,'a:0:{}'),(24,25,'a:0:{}'),(25,26,'a:0:{}'),(26,27,'a:0:{}'),(27,28,'a:0:{}'),(28,29,'a:0:{}');
/*!40000 ALTER TABLE `aws_users_notification_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_online`
--

DROP TABLE IF EXISTS `aws_users_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_online` (
  `uid` int(11) NOT NULL COMMENT '用户 ID',
  `last_active` int(11) DEFAULT '0' COMMENT '上次活动时间',
  `ip` bigint(12) DEFAULT '0' COMMENT '客户端ip',
  `active_url` varchar(255) DEFAULT NULL COMMENT '停留页面',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户客户端信息',
  KEY `uid` (`uid`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线用户列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_online`
--

LOCK TABLES `aws_users_online` WRITE;
/*!40000 ALTER TABLE `aws_users_online` DISABLE KEYS */;
INSERT INTO `aws_users_online` VALUES (20,1447827504,168430081,'http://10.10.10.151/?/home/first_login-TRUE','Mozilla/5.0 (Windows NT 6.2; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0'),(1,1447827464,168430081,'http://10.10.10.151/?/','Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; WOW64; Trident/6.0) QQBrowser/9.2.5130.400'),(27,1447825767,168430081,'http://10.10.10.151/?/account/register/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36'),(28,1447825806,168430081,'http://10.10.10.151/?/account/register/','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36');
/*!40000 ALTER TABLE `aws_users_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_qq`
--

DROP TABLE IF EXISTS `aws_users_qq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_qq` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户在本地的UID',
  `nickname` varchar(64) DEFAULT NULL,
  `openid` varchar(128) DEFAULT '',
  `gender` varchar(8) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `access_token` varchar(64) DEFAULT NULL,
  `refresh_token` varchar(64) DEFAULT NULL,
  `expires_time` int(10) DEFAULT NULL,
  `figureurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `add_time` (`add_time`),
  KEY `access_token` (`access_token`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_qq`
--

LOCK TABLES `aws_users_qq` WRITE;
/*!40000 ALTER TABLE `aws_users_qq` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_qq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_sina`
--

DROP TABLE IF EXISTS `aws_users_sina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_sina` (
  `id` bigint(11) NOT NULL COMMENT '新浪用户 ID',
  `uid` int(11) NOT NULL COMMENT '用户在本地的UID',
  `name` varchar(64) DEFAULT NULL COMMENT '微博昵称',
  `location` varchar(255) DEFAULT NULL COMMENT '地址',
  `description` text COMMENT '个人描述',
  `url` varchar(255) DEFAULT NULL COMMENT '用户博客地址',
  `profile_image_url` varchar(255) DEFAULT NULL COMMENT 'Sina 自定义头像地址',
  `gender` varchar(8) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `expires_time` int(10) DEFAULT '0' COMMENT '过期时间',
  `access_token` varchar(64) DEFAULT NULL,
  `last_msg_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`),
  KEY `last_msg_id` (`last_msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_sina`
--

LOCK TABLES `aws_users_sina` WRITE;
/*!40000 ALTER TABLE `aws_users_sina` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_sina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_twitter`
--

DROP TABLE IF EXISTS `aws_users_twitter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_twitter` (
  `id` bigint(20) unsigned NOT NULL,
  `uid` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `screen_name` varchar(128) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `time_zone` varchar(64) DEFAULT NULL,
  `lang` varchar(16) DEFAULT NULL,
  `profile_image_url` varchar(255) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `access_token` varchar(255) NOT NULL DEFAULT 'a:2:{s:11:"oauth_token";s:0:"";s:18:"oauth_token_secret";s:0:"";}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `access_token` (`access_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_twitter`
--

LOCK TABLES `aws_users_twitter` WRITE;
/*!40000 ALTER TABLE `aws_users_twitter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_twitter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_ucenter`
--

DROP TABLE IF EXISTS `aws_users_ucenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_ucenter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0',
  `uc_uid` int(11) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uc_uid` (`uc_uid`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_ucenter`
--

LOCK TABLES `aws_users_ucenter` WRITE;
/*!40000 ALTER TABLE `aws_users_ucenter` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_ucenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_users_weixin`
--

DROP TABLE IF EXISTS `aws_users_weixin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_users_weixin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `expires_in` int(10) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `scope` varchar(64) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `nickname` varchar(64) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT '0',
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `add_time` int(10) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `location_update` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `openid` (`openid`),
  KEY `expires_in` (`expires_in`),
  KEY `scope` (`scope`),
  KEY `sex` (`sex`),
  KEY `province` (`province`),
  KEY `city` (`city`),
  KEY `country` (`country`),
  KEY `add_time` (`add_time`),
  KEY `latitude` (`latitude`,`longitude`),
  KEY `location_update` (`location_update`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_users_weixin`
--

LOCK TABLES `aws_users_weixin` WRITE;
/*!40000 ALTER TABLE `aws_users_weixin` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_users_weixin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_verify_apply`
--

DROP TABLE IF EXISTS `aws_verify_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_verify_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `attach` varchar(255) DEFAULT NULL,
  `time` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `data` text,
  `status` tinyint(1) DEFAULT '0',
  `type` varchar(16) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `time` (`time`),
  KEY `name` (`name`,`status`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_verify_apply`
--

LOCK TABLES `aws_verify_apply` WRITE;
/*!40000 ALTER TABLE `aws_verify_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_verify_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weibo_msg`
--

DROP TABLE IF EXISTS `aws_weibo_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weibo_msg` (
  `id` bigint(20) NOT NULL,
  `created_at` int(10) NOT NULL,
  `msg_author_uid` bigint(20) NOT NULL,
  `text` varchar(255) NOT NULL,
  `access_key` varchar(32) NOT NULL,
  `has_attach` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(10) NOT NULL,
  `weibo_uid` bigint(20) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`),
  KEY `uid` (`uid`),
  KEY `weibo_uid` (`weibo_uid`),
  KEY `question_id` (`question_id`),
  KEY `ticket_id` (`ticket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新浪微博消息列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weibo_msg`
--

LOCK TABLES `aws_weibo_msg` WRITE;
/*!40000 ALTER TABLE `aws_weibo_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weibo_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_accounts`
--

DROP TABLE IF EXISTS `aws_weixin_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_accounts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `weixin_mp_token` varchar(255) NOT NULL,
  `weixin_account_role` varchar(20) DEFAULT 'base',
  `weixin_app_id` varchar(255) DEFAULT '',
  `weixin_app_secret` varchar(255) DEFAULT '',
  `weixin_mp_menu` text,
  `weixin_subscribe_message_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `weixin_no_result_message_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `weixin_encoding_aes_key` varchar(43) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `weixin_mp_token` (`weixin_mp_token`),
  KEY `weixin_account_role` (`weixin_account_role`),
  KEY `weixin_app_id` (`weixin_app_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信多账号设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_accounts`
--

LOCK TABLES `aws_weixin_accounts` WRITE;
/*!40000 ALTER TABLE `aws_weixin_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_login`
--

DROP TABLE IF EXISTS `aws_weixin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` int(10) NOT NULL,
  `uid` int(10) DEFAULT NULL,
  `session_id` varchar(32) NOT NULL,
  `expire` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `token` (`token`),
  KEY `expire` (`expire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_login`
--

LOCK TABLES `aws_weixin_login` WRITE;
/*!40000 ALTER TABLE `aws_weixin_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_message`
--

DROP TABLE IF EXISTS `aws_weixin_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weixin_id` varchar(32) NOT NULL,
  `content` varchar(255) NOT NULL,
  `action` text,
  `time` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weixin_id` (`weixin_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_message`
--

LOCK TABLES `aws_weixin_message` WRITE;
/*!40000 ALTER TABLE `aws_weixin_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_msg`
--

DROP TABLE IF EXISTS `aws_weixin_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_msg` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` bigint(20) NOT NULL,
  `group_name` varchar(255) NOT NULL DEFAULT '未分组',
  `status` varchar(15) NOT NULL DEFAULT 'unsent',
  `error_num` int(10) DEFAULT NULL,
  `main_msg` text,
  `articles_info` text,
  `questions_info` text,
  `create_time` int(10) NOT NULL,
  `filter_count` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `msg_id` (`msg_id`),
  KEY `group_name` (`group_name`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信群发列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_msg`
--

LOCK TABLES `aws_weixin_msg` WRITE;
/*!40000 ALTER TABLE `aws_weixin_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_qr_code`
--

DROP TABLE IF EXISTS `aws_weixin_qr_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_qr_code` (
  `scene_id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `ticket` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `subscribe_num` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`scene_id`),
  KEY `ticket` (`ticket`),
  KEY `subscribe_num` (`subscribe_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信二维码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_qr_code`
--

LOCK TABLES `aws_weixin_qr_code` WRITE;
/*!40000 ALTER TABLE `aws_weixin_qr_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_qr_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_reply_rule`
--

DROP TABLE IF EXISTS `aws_weixin_reply_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_reply_rule` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL DEFAULT '0',
  `keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `sort_status` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `keyword` (`keyword`),
  KEY `enabled` (`enabled`),
  KEY `sort_status` (`sort_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_reply_rule`
--

LOCK TABLES `aws_weixin_reply_rule` WRITE;
/*!40000 ALTER TABLE `aws_weixin_reply_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_reply_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_weixin_third_party_api`
--

DROP TABLE IF EXISTS `aws_weixin_third_party_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_weixin_third_party_api` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `rank` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `enabled` (`enabled`),
  KEY `rank` (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信第三方接入';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_weixin_third_party_api`
--

LOCK TABLES `aws_weixin_third_party_api` WRITE;
/*!40000 ALTER TABLE `aws_weixin_third_party_api` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_weixin_third_party_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aws_work_experience`
--

DROP TABLE IF EXISTS `aws_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aws_work_experience` (
  `work_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `start_year` int(11) DEFAULT NULL COMMENT '开始年份',
  `end_year` int(11) DEFAULT NULL COMMENT '结束年月',
  `company_name` varchar(64) DEFAULT NULL COMMENT '公司名',
  `job_id` int(11) DEFAULT NULL COMMENT '职位ID',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`work_id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='工作经历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aws_work_experience`
--

LOCK TABLES `aws_work_experience` WRITE;
/*!40000 ALTER TABLE `aws_work_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `aws_work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-18 14:19:15
