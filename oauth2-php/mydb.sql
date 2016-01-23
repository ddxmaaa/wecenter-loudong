-- MySQL dump 10.13  Distrib 5.5.24, for Win32 (x86)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Table structure for table `auth_codes`
--

DROP TABLE IF EXISTS `auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_codes` (
  `code` varchar(40) NOT NULL,
  `client_id` varchar(20) NOT NULL,
  `redirect_uri` varchar(200) NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_codes`
--

LOCK TABLES `auth_codes` WRITE;
/*!40000 ALTER TABLE `auth_codes` DISABLE KEYS */;
INSERT INTO `auth_codes` VALUES ('bc72fdd62572177a17419fe6a3edfab0','test','test.php',1449196593,''),('8ed06de264a4ae47c2966785132bd1d7','test','test.php',1449198501,''),('0568ca4458ce71d4ea4cf110004fe360','test','test.php',1449198530,''),('f4fa792c51ce5c143723e79e6b897877','test','test.php',1449198663,''),('3a265361f141a3bbe5a9e3fdf9c3293a','test','test.php',1449198682,''),('45d0772ad4c060fa868ff52da66027de','test','test.php',1449198802,''),('9cc953838cd0b257016023be9e440953','test','test.php',1449198854,''),('8e5e7859010be9b04ef113e7640313d1','test','test.php',1449198854,''),('6666a1f1d2818dadfdaf2fc9b252fb7e','test','test.php',1449198936,''),('1b28f313e14d67dca5204d46f10a5e69','test','test.php',1449199141,''),('0f422e7dda11307da1f7bbc742f4e5cb','test','test.php',1449199228,''),('e6977551158fd9394362d3c3322a914f','test','test.php',1449199499,''),('e3cf9698d2f5f5f175078602be631ddb','test','test.php',1449199755,''),('fa38c81057c462662855f27bb41352f4','test','test.php',1449200663,''),('e4b05c4216e26b321cabcafaa590504d','test','test.php',1449200723,''),('511743ce1948615b731e1cccd26d45a8','test','test.php',1449200831,''),('c6ef0db53a0289266d73f854629c9813','test','test.php',1449200982,''),('64d19d7f23139d1fb420695c9089a583','test','test.php',1449201040,''),('f8f4f2b513aa0f55d05f469b4197456f','test1','test.php',1449212198,''),('f690210678ae0e8a4464e8b218f1141c','test1','test.php',1449212225,''),('4f4897831a127f582d53db67014a6594','test1','test.php',1449214973,''),('efbbac6bd77946e1cc6298aa2679e0f6','test1','test.php',1449215033,''),('cc6ba3c2c697ae81e0bc4d0c4106356e','test1','test.php',1449220586,''),('75fba4e34875b9137b5ede9219e1ae60','test1','test.php',1449220618,''),('bb04ab8091f71cf7f5ed923705ffeef6','test1','test.php',1449221369,''),('66bc81096151d7f6542aecdbfaa2e330','test1','test.php',1449222482,''),('a28227c6f3027d6cb85afc66aea5e2ed','test1','test.php',1449222499,''),('c10a95f6010c075a9182566919279005','test1','test.php',1449652092,''),('8df28ff74858a1b57f61b150d60401a5','test1','test.php',1449652153,''),('838471848ebc84b980471c891f6310c2','test1','test.php',1449652184,''),('921e56701a506e202e014f613a6a7215','test2','http://127.0.0.1:8080/baji/test.php',1449718171,''),('41e834fc17fcdc6c770669b995a4a60d','test2','http://127.0.0.1:8080/baji/test.php',1449718318,''),('283bacbfbf9d887952d0d2015cf33fb7','test2','http://127.0.0.1:8080/baji/test.php',1449719369,''),('ee66bd0d2cf5b7eb10429a8598e0b8e5','test2','http://127.0.0.1:8080/baji/test.php',1449719419,''),('cfa07863e580c1af3a37ed280c3e88d5','test2','http://127.0.0.1:8080/baji/test.php',1449719447,''),('6d594a59939f2f6c9a9abb3da634f019','test2','http://127.0.0.1:8080/baji/test.php',1449719493,''),('da13e5aa2083664dee610ceb7df35432','test2','http://127.0.0.1:8080/baji/test.php',1449719521,''),('89447b0637a9c8a3c57d18366e449c2c','test2','http://127.0.0.1:8080/baji/test.php',1449719700,''),('38c2616cb43a083dd1b4274bd4b44d15','test2','http://127.0.0.1:8080/baji/test.php',1449719750,''),('9a067f63588e9969036ef76f30b1b210','test2','http://127.0.0.1:8080/baji/test.php',1449726073,''),('8c71b4f1bfec48d3f8183a58d4460a09','test2','http://127.0.0.1:8080/baji/test.php',1449726645,''),('b7f334c6e8648e296fb2b49e239f1a75','test2','http://127.0.0.1:8080/baji/test.php',1449726850,''),('c21cfe59f77ff01371423cf33c2912fe','test2','http://127.0.0.1:8080/baji/test.php',1449726890,''),('1522fee9e4cc9e80e0465335e82d5c05','test2','http://127.0.0.1:8080/baji/test.php',1449726970,''),('99920f8faefaed9827422bb8212c1b2e','test2','http://127.0.0.1:8080/baji/test.php',1449727443,''),('e94e07c531abda1b0948f3b826e98cda','test2','http://127.0.0.1:8080/baji/test.php',1449727518,''),('96106b3e8a974b6df5707922a5096fd5','test2','http://127.0.0.1:8080/baji/test.php',1449729822,''),('bba4a6dc9c86934f837e80bd37ce38ae','test2','http://127.0.0.1:8080/baji/test.php',1449729952,''),('fcbda665d200cfc051abb27c0f45ee64','test2','http://127.0.0.1:8080/baji/test.php',1449730797,''),('12208cd5ed3089b43c79e8812bf9585c','test2','http://127.0.0.1:8080/baji/test.php',1449730824,''),('c4a54e87acbbf950011c25b0bdd39d8f','test2','http://127.0.0.1:8080/baji/test.php',1449730829,''),('afe1ffc15caf1dbb9b2d52fb2994e8da','test2','http://127.0.0.1:8080/baji/test.php',1449730858,''),('f7107b951b681c6faefbb6349b387597','test2','http://127.0.0.1:8080/baji/test.php',1449730867,''),('de3d2ced986b7fb6904f6ecdc1ef3b4d','test2','http://127.0.0.1:8080/baji/test.php',1449731376,''),('26a9ea96964353d26ea8b1d511a65aca','test2','http://127.0.0.1:8080/baji/test.php',1449731460,''),('03c6c063b2573c4bd3278c8efe6ab59b','test2','http://127.0.0.1:8080/baji/test.php',1449731506,''),('7eaca066ad0b84ef1537a169d7186ddc','test2','http://127.0.0.1:8080/baji/test.php',1449731552,''),('7c6e5111f90e8c7650070d3a7cc000e4','test2','http://127.0.0.1:8080/baji/test.php',1449731673,''),('89b73acf00a0751c28402bd4af75343c','test2','http://127.0.0.1:8080/baji/test.php',1449731753,''),('8b05f6c08a5ec087d541415f2c9ceb35','test2','http://127.0.0.1:8080/baji/test.php',1449731798,''),('bec131eeac8eac8767c87ac7c209ac70','test2','http://127.0.0.1:8080/baji/test.php',1449731827,''),('528004dbc2b19a9160bd7a24eae79db4','test2','http://127.0.0.1:8080/baji/test.php',1449732150,''),('c9bbcd63fc74956356b7bbe0fab67e82','test2','http://127.0.0.1:8080/baji/test.php',1449732225,''),('0ed46d9a0be80b917664ea2dd919b6ae','test2','http://127.0.0.1:8080/baji/test.php',1449732300,''),('27d6944a7947dc4a0fc0773d1d87f6a2','test2','http://127.0.0.1:8080/baji/test.php',1449732333,''),('a875f92519464dba217404e9d6dc6dbd','test2','http://127.0.0.1:8080/baji/test.php',1449732399,''),('38adb42b1dd319af24860ad2c0e456fa','test2','http://127.0.0.1:8080/baji/test.php',1449733293,''),('e76def60d602ed6e706c8c6e1c508442','test2','http://127.0.0.1:8080/baji/test.php',1449733360,''),('4da27a461415808c36d8d5b5f30a75ed','test2','http://127.0.0.1:8080/baji/test.php',1449733406,''),('6a95cb39a1fb4e5b772b1cec712e3563','test2','http://127.0.0.1:8080/baji/test.php',1449734300,''),('7026499d1f35d7da87f88175b2ca35d9','test2','http://127.0.0.1:8080/baji/test.php',1449734354,''),('e42bf525ad05dd803f1f31e547bcc4bc','test2','http://127.0.0.1:8080/baji/test.php',1449734418,''),('3c67e800ceeafd739104d9b721acb9a6','test2','http://127.0.0.1:8080/baji/test.php',1449734453,''),('c5a0962f3e2b3175a145a587e00018d7','test2','http://127.0.0.1:8080/baji/test.php',1449734515,''),('874892990daab33eb2580d223d4663f7','test2','http://127.0.0.1:8080/baji/test.php',1449734540,''),('7fbc2b20b9c8f7ccfc95041e5c6b57a3','test2','http://127.0.0.1:8080/baji/test.php',1449734663,''),('cc15486dafcd6c6cddba963a66c3780f','test2','http://127.0.0.1:8080/baji/test.php',1449734703,''),('bfe339ba731402e694652579ba2f5454','test2','http://127.0.0.1:8080/baji/test.php',1449735173,''),('ea75e674d38c13978cee66f2cf9d64bd','test2','http://127.0.0.1:8080/baji/test.php',1449735390,''),('8b1d750842125b02c262a0b9efc3e264','test2','http://127.0.0.1:8080/baji/test.php',1449735419,''),('5993016a1d129d7aa1f43da5df8bc077','test2','http://127.0.0.1:8080/baji/test.php',1449735499,''),('afbbfcca403316f01a5b72c34f78d580','test2','http://127.0.0.1:8080/baji/test.php',1449735731,''),('230b539bfcdfe074385dd74a75eb85c6','test2','http://127.0.0.1:8080/baji/test.php',1449735787,''),('72cf57c66073127901ef0bcf74b6ccad','test2','http://127.0.0.1:8080/baji/test.php',1449735836,''),('9f18f38f7aeaa45c5559bfe59ac38cca','test2','http://127.0.0.1:8080/baji/test.php',1449736414,''),('14898cbc86152ab3e5cbd00724980344','test2','http://127.0.0.1:8080/baji/test.php',1449736470,''),('391c716e28c929ed9cde7da620b30c38','test2','http://127.0.0.1:8080/baji/test.php',1449736551,''),('5754dba15f8d36f0ea934e7a0f8cb16c','test2','http://127.0.0.1:8080/baji/test.php',1449736670,''),('365a29afe0f528fd6a0ec197bc178b43','test2','http://127.0.0.1:8080/baji/test.php',1449736793,''),('a5a2055f33bad7b53f43849c01c9e14c','test2','http://127.0.0.1:8080/baji/test.php',1449736846,''),('8ea7b6c77c2da537fdbca736ba5becd3','test2','http://127.0.0.1:8080/baji/test.php',1449737379,''),('44dbea25e5768781f729d5cef6602884','test2','http://127.0.0.1:8080/baji/test.php',1449739011,''),('c4217c895069496d5560b4464209867c','test2','http://127.0.0.1:8080/baji/test.php',1449739053,''),('b4daa56e69faae5e50bdaeeaa04aac42','test2','http://127.0.0.1:8080/baji/test.php',1449739087,''),('2e2e9048d21f7cbbb1574c6e4018a7ff','test2','http://127.0.0.1:8080/baji/test.php',1449739215,''),('4d3647ab635ed7d98349e04e2ce1ab1a','test2','http://127.0.0.1:8080/baji/test.php',1449739360,''),('3f6e5e1a354aa60f32d0641836140025','test2','http://127.0.0.1:8080/baji/test.php',1449739586,''),('f1e576eb59a94096ce638b751ceab705','test2','http://127.0.0.1:8080/baji/test.php',1449740004,''),('08379845deeb3fff826baa8ca8711ed8','test2','http://127.0.0.1:8080/baji/test.php',1449740197,''),('db09e4efaf994b17f3448beebbcc6d13','test2','http://127.0.0.1:8080/baji/test.php',1449740271,''),('1b27ddb7a19c676fdeb2b3428901ddd3','test2','http://127.0.0.1:8080/baji/test.php',1449740636,''),('b211f120833192fbf4893a594565ec25','test2','http://127.0.0.1:8080/baji/test.php',1449740693,''),('847849732485cf57825cadada345a8fe','test2','http://127.0.0.1:8080/baji/test.php',1449798120,''),('3af84429b226e65b5b4c62b52119699d','test1','test.php',1449798968,''),('9e69fd7ed5f31d8029540b72777b8af7','test2','http://127.0.0.1:8080/baji/test.php',1449799248,''),('f192f8507a9a171d541d56e01960ebdf','test2','http://127.0.0.1:8080/baji/test.php',1449799359,''),('e4882c460195857a1424de8933c2238d','test2','http://127.0.0.1:8080/baji/test.php',1449811059,''),('73a57a551ca15febce04c350f7716cd6','test2','http://127.0.0.1:8080/baji/test.php',1449811433,''),('f15cb5997fc4d76ab43d28838e0fcce5','test2','http://127.0.0.1:8080/baji/test.php',1449811587,''),('85190ce8e213a02e7a4ae8eaf73b1644','555','http://10.10.1.55:8080/baji/test.php',1449814057,''),('6ae4027e4267d9aad40e70b83659692d','555','http://10.10.1.55:8080/baji/test.php',1449814168,''),('ce3493a006e0b1020e2b7015b885a058','555','http://10.10.1.55:8080/baji/test.php',1449814269,''),('01e6062d171fd67726b9d46b15051f61','555','http://10.10.1.55:8080/baji/test.php',1449814400,''),('29b06efd56154737fdd4f3554310c3dd','555','http://10.10.1.55:8080/baji/test.php',1449814578,''),('8b9e191e15d25cdc9b0193bc7faaafc6','555','http://10.10.1.55:8080/baji/test.php',1449814663,''),('8cee8facfdec7b77f801a3402fa8ea35','555','http://10.10.1.55:8080/baji/test.php',1449821930,''),('7212f773ad89a7e745941d70a6a86433','555','http://10.10.1.55:8080/baji/test.php',1449824547,''),('5d2253ff4903138f9e722269beb4b31a','555','http://10.10.1.55:8080/baji/test.php',1450064562,''),('4448dacac86021d2e38c9f7599238ff0','555','http://10.10.1.55:8080/baji/test.php',1450064600,''),('444b06e197bde8503489e0f8e9625bce','555','http://10.10.1.55:8080/baji/test.php',1450064667,''),('360b0d6dc5a849a31d65461e59019aaa','555','http://10.10.1.55:8080/baji/test.php',1450064813,''),('2e0f20f7776426c43964a239b95ddd11','555','http://10.10.1.55:8080/baji/test.php',1450071423,''),('eb4e7e0762079d361fc243db3f6df38c','555','http://10.10.1.55:8080/baji/test.php',1450071478,''),('5eb03603742cc7446a4b01001a0cb8f9','test2','http://127.0.0.1:8080/baji/test.php',1450231138,''),('83f2749b1c5786d0f5777d9912af2187','test2','http://127.0.0.1:8080/baji/test.php',1450231181,''),('c03d783f53aa49f4aeac058f0e6befe8','test2','http://127.0.0.1:8080/baji/test.php',1450231260,''),('814ddb49064dd9c9822340d489b0cbd0','test2','http://127.0.0.1:8080/baji/test.php',1450231360,''),('16eedbea19ab9c08f392426f52c51f76','test2','http://127.0.0.1:8080/baji/test.php',1450231492,''),('2790e747ee54617fe13af0df35c770de','test2','http://127.0.0.1:8080/baji/test.php',1450231562,''),('aa2d9c730b4d74ab9e98771a0ab5091b','test2','http://127.0.0.1:8080/baji/test.php',1450231611,''),('80a9b035d027436f36ab0792e24cd556','test2','http://127.0.0.1:8080/baji/test.php',1450403210,''),('cc8946384e86417076c5c4cfb2bf61f0','test2','http://127.0.0.1:8080/baji/test.php',1450403390,''),('bc78b037063da907e96ef77f6e595951','test2','http://127.0.0.1:8080/baji/test.php',1450403622,''),('1a738f106b3805dd901b9981cde45c39','test2','http://127.0.0.1:8080/baji/test.php',1450403803,''),('9619195c1ee3d5a95cee61557d6e8e77','test2','http://127.0.0.1:8080/baji/test.php',1450403902,''),('9ebb66dcbe698ec87016ff2e51b08197','test2','http://127.0.0.1:8080/baji/test.php',1450407711,''),('bde0edcba4718bc65046a8b5ce46a76f','test2','http://127.0.0.1:8080/baji/test.php',1450407922,''),('f37fc331095922f0a7f852daa3b19b4e','test2','http://127.0.0.1:8080/baji/test.php',1450408277,''),('b1d47a4cc82e917cf4aabf06f3138559','test2','http://127.0.0.1:8080/baji/test.php',1450408658,''),('f9a536a852af290884612093d4f1033f','test2','http://127.0.0.1:8080/baji/test.php',1450408774,''),('083a18f5988185411b3cd1f1db9a6e4c','test2','http://127.0.0.1:8080/baji/test.php',1450408878,''),('49bf35f981f3e76db7d644cbb5610363','test2','http://127.0.0.1:8080/baji/test.php',1450409951,''),('bff3e797171d4d77732f0911572e2e95','test2','http://127.0.0.1:8080/baji/test.php',1450410016,''),('77f75fb8ae4497b4474da4635db12d8c','test2','http://127.0.0.1:8080/baji/test.php',1450410700,''),('30d7910498bfde7ff9f7f4760e34ffb6','test2','http://127.0.0.1:8080/baji/test.php',1450410846,''),('e6235dd0e357de533e00c880979f3015','test2','http://127.0.0.1:8080/baji/test.php',1450410957,''),('75edd86db32d25e9392d99f086020553','test2','http://127.0.0.1:8080/baji/test.php',1450411095,''),('88592c3c1a7750d81d2c8aca31106015','test2','http://127.0.0.1:8080/baji/test.php',1450411316,''),('60838f61b02d26f9f1aa082d02d6375c','test2','http://127.0.0.1:8080/baji/test.php',1450411865,''),('8b72b3bc6501a27f011a509f45737ad6','test2','http://127.0.0.1:8080/baji/test.php',1450412274,''),('c7d30a018e844e59fcc51b5db5a97365','test2','http://127.0.0.1:8080/baji/test.php',1450412283,''),('28dbd6c862c228a6542d017d99396710','test2','http://127.0.0.1:8080/baji/test.php',1450412331,''),('c50e5da7311425fbe1cd6cdd395af9e8','test2','http://127.0.0.1:8080/baji/test.php',1450412514,''),('f3bca3f90b1cdc76cb41a22a2a00d15e','test2','http://127.0.0.1:8080/baji/test.php',1450412725,''),('c1f7e4dfec6b16bed4587d59a2f954f6','test2','http://127.0.0.1:8080/baji/test.php',1450412892,''),('21d989b271510f1af094620a251c76ca','test2','http://127.0.0.1:8080/baji/test.php',1450413194,''),('1161d77d7ba4ede938f6b852693ec1a4','test2','http://127.0.0.1:8080/baji/test.php',1450413921,'');
/*!40000 ALTER TABLE `auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` varchar(20) NOT NULL,
  `client_secret` varchar(20) NOT NULL,
  `redirect_uri` varchar(200) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES ('test','test','test'),('test1','test1','test.php'),('test2','test2','http://127.0.0.1:8080/baji/test.php'),('555','555','http://10.10.1.55:8080/baji/test.php');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `oauth_token` varchar(40) NOT NULL,
  `client_id` varchar(20) NOT NULL,
  `expires` int(11) NOT NULL,
  `scope` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`oauth_token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('66b5807f0eeb62a08dc702c8f5228e5c','test',1449204687,''),('952586576c4e6c7ce85c2401e06c28e3','test',1449215367,''),('5f7e4aa17d9722964ced0d2fafb0126c','test',1449215395,''),('0fbd625e8719ec5d20fccee2063ebd61','test',1449215396,''),('b18f362804a65db41633562e0c11e352','test',1449215407,''),('929397f78f69d5baaed848b902bcb67c','test1',1449215769,NULL),('4c16492212b95383d1b10917d2fea804','test1',1449215796,NULL),('fcdb5d4202c7d4eb1dd8fa41ad56d24b','test1',1449218234,''),('a14a2131e98405c1e5dae92e68cf4a23','test1',1449218248,''),('8639cff12ca4777035a8dc18189efdcd','test1',1449218499,''),('117374c4bee6b453b921f7a0f94949d4','test1',1449218544,NULL),('d9bfb516b2aae190be6147de6dcbd87a','test1',1449218604,NULL),('b1f280607d321aa210df94537ba005a5','test1',1449224157,NULL),('9e0f3b9f67084a1e8345a2427d9bcccc','test1',1449224189,NULL),('aa665c3d4d241b6175b1b06df249e104','test1',1449224940,NULL),('027809e4a2c3824c900c29ad9360071b','test1',1449226031,''),('d222bbe64abdb219063f162245d81977','test1',1449226053,NULL),('5392258707aa839c3bdd95cf5092e0af','test1',1449226070,NULL),('28bf3e33a9dd47219df3e7b21da93739','test1',1449655755,NULL),('f793758c0f93da745d07cbe14f54b179','test2',1449721889,NULL),('f9063a8f53a8c38e9fea8ba5840bf88d','test2',1449722941,NULL),('f9cde21ba3cfb852f6004428ecac078c','test2',1449722990,NULL),('fdd5c4093e550d1059f8f82adba025bc','test2',1449723018,NULL),('2c45f762b22cad731e26a24cc65b4f7e','test2',1449723064,NULL),('7b82b027553394a60d2d623cae11bfb3','test2',1449723092,NULL),('6439ce18da8cffc029d16cc07307da85','test2',1449723271,NULL),('ab0bcc049db5e20d5a8855fae9fb7e09','test2',1449723321,NULL),('d6ae974b3e54af0c060b77c1720e1977','test2',1449729644,NULL),('193b7dc4cdcfb934d0d28d3312343d48','test2',1449730216,NULL),('de7230b4a17cde11efc70d12775a3075','test2',1449730421,NULL),('0dd3f21e06c1a28a74b717061187f085','test2',1449730461,NULL),('d43af9128856aa6899b953897b627b37','test2',1449730541,NULL),('4c1cf56738c84b3d6e2ee57ef7bc9e59','test2',1449730549,NULL),('1e66c7fe7e24b835f17875a6414dcb64','test2',1449730553,NULL),('89f276d68c40fb21c6a5fc5ca310d2b7','test2',1449730557,NULL),('566b2f1899018fe68cff24ed875432b1','test2',1449731014,NULL),('1e690c33d3c323203d32a75c02bdf026','test2',1449731089,NULL),('c61ee8e10d04e2cece605adc9226cb64','test2',1449733393,NULL),('be36ddbbe2e2a31455e6f3b3d9da7f17','test2',1449733524,NULL),('62ae4751db65f3d5b6a615ccc08956be','test2',1449734368,NULL),('747d9a70d4690c9b473bb6a1b251c3fc','test2',1449734395,NULL),('081ce804f0cee8ec14fd7e8ccc3c9668','test2',1449734400,NULL),('dec445b8ff43d0605c5a335e76d0683f','test2',1449734439,NULL),('da492176bdf178e04976d079ff677842','test2',1449734947,NULL),('9c23bbbffc7dc964e88d0ae6121e4c38','test2',1449735031,NULL),('8e9d3298f0ba7d089f9bc99cbfd6848c','test2',1449735077,NULL),('f71e08a6b4aac2d47f6df73ee26b2a49','test2',1449735123,NULL),('8e05c5585e81ae3b849a56fd256ee64c','test2',1449735244,NULL),('8e2e728cb1ecfd1335d52932f9e51f4d','test2',1449735324,NULL),('72bb803233f414878181ff00ff0fce74','test2',1449735369,NULL),('8f4a21162f88bcd2cf5c00c2e6b91d51','test2',1449735398,NULL),('d8e9b7cb36540738cf0a57f76565f514','test2',1449735721,NULL),('cc1eddb73cf6908907f37f7cb996eb50','test2',1449735797,NULL),('415d860966cf5d391a2a65e699940a28','test2',1449735871,NULL),('6254c205a4442cec70426c21dd2a2aba','test2',1449735894,NULL),('a3ac20623713e48915fa30e08f295c1d','test2',1449735904,NULL),('f0c0ecf38493dd29101a3672c067abf0','test2',1449735970,NULL),('160b9324c213120018a13a62e3320e7b','test2',1449736864,NULL),('d55ca65a6f472cd47f102460f1596a75','test2',1449736931,NULL),('751aaa05a51a7eb08fb6490d0a263761','test2',1449736977,NULL),('c5180d04e57ca6f25268fc18a13c28ca','test2',1449737871,NULL),('1de55e69b10707dc89b127b44a0babe9','test2',1449737925,NULL),('f4345f1e903fa136faf71e2359da6a61','test2',1449737989,NULL),('c3bb4300b7a17ee8ed8e1d5abb42c26c','test2',1449738024,NULL),('25f3c7472bb5e71b1179a53d1c43dcba','test2',1449738086,NULL),('9c551d27b7363e7459f539782a827a24','test2',1449738111,NULL),('1fad5b6b1bee11f641faaa8433addf0a','test2',1449738234,NULL),('f992aa7c3fa19928b4f5d0504843918e','test2',1449738274,NULL),('3d79bcae8013c3db82234fbddbb6c0d0','test2',1449738744,NULL),('acf557726543f8e7f33ce3f177861744','test2',1449738961,NULL),('238c4aebccd1538aefd3879f79ee3191','test2',1449738991,NULL),('9ddda1db0227929a5d5af99f94844777','test2',1449739070,NULL),('5c64c5816cca4581a5eb704cd27f2eb8','test2',1449739302,NULL),('66ee1f4adf481e3d645cd01733a70a5e','test2',1449739358,NULL),('71e1f4ba8cb6954763739438017a2d89','test2',1449739407,NULL),('e93e6c1a7e3aa7b12c2f4256d991e1fe','test2',1449739985,NULL),('19aca870f22771ebc51b74eae9493243','test2',1449740041,NULL),('ea3aade383e4f10a89e70cbe198cfaa1','test2',1449740122,NULL),('752b33621d3823f68e757bce7f65db35','test2',1449740241,NULL),('770f7e90cf6085c1084da472e5155ab5','test2',1449740417,NULL),('5cb7ca52f6554716828552fd68ab66b7','test2',1449740950,NULL),('3bd52a25bb5f5cc3171c4d4482dd2219','test2',1449740957,NULL),('d7837154cfa2e0842046081b26080c3d','test2',1449742582,NULL),('c92990a10dfe059f13cf9cf807fece7c','test2',1449742625,NULL),('b89ca368c80ad4d9a3383bbdd93195f9','test2',1449742658,NULL),('bfea90f0825abdb29c336a29b4bb7feb','test2',1449742931,NULL),('d38a2154d3009bfb885db0bc16c3c3ff','test2',1449743157,NULL),('005cb3a3bf2d094a426d6ce1656486fe','test2',1449743575,NULL),('e5a40232c83ca972e075df824bbc63f3','test2',1449743768,NULL),('f6c0f9594677073bacb08e96e0511a0e','test2',1449743842,NULL),('25c1298a253871bae3796ba9a548f304','test2',1449744207,NULL),('24097497801a2f3e76a58619ed1dd966','test2',1449744264,NULL),('598d6eebc8a3e4f053ed3933e046f8d6','test2',1449801691,NULL),('b001ae6d6c636ebca04ecf01c89b13c0','test2',1449802819,NULL),('c2bcf2cfac782039cc2566d33ec9dec6','test2',1449802930,NULL),('ca19b010bfccc52b2ff56f0db2d77775','test2',1449814630,NULL),('08e9bc493563b8f65c0736913f7e360e','test2',1449815158,NULL),('cd10fdc69938dacbeabdb2fb51e8b464','555',1449817740,NULL),('07ef179387eaa891d10d213f355d29e2','555',1449817841,NULL),('9448ae53615d273af96cc622df5c1b54','555',1449817848,NULL),('f40a1d103c43861bce34bfc9505cc1b9','555',1449817972,NULL),('62a3f40ffb3fc6649c8ca72f2ca1ddcb','555',1449817980,NULL),('b086009424fb96e8c1dcb5fe018fdb08','555',1449818150,NULL),('1bb6236b79fbd46545274033eeb07828','555',1449818235,NULL),('10fd6361817dd4f3f86dc26abaa9bac0','555',1449825502,NULL),('681f3ba4971ada795d612e8c0b4fda9b','555',1449828119,NULL),('48b598765a2283c2d22f93f485e093a2','555',1450068135,NULL),('94b6127cb328585cba8b1d6e042e4238','555',1450068172,NULL),('60311ce9e644eb8e51b41929270710ef','555',1450068239,NULL),('4aa6377e61da3fc5ab52c11281b0f194','555',1450068385,NULL),('d20878a6bcb3ec1d0fd71fec1b1e53a7','555',1450074995,NULL),('e831c7942449e5eb8718efb61aa08d56','555',1450075050,NULL),('0fe1c5efe27d51a5e92ab725906a96b2','test2',1450234710,NULL),('7b325e02be50539c4125aaee802231ea','test2',1450234832,NULL),('7342508b565364fa285e75f0049d2887','test2',1450234932,NULL),('901213461577bc938a5a635ab2eb838a','test2',1450235065,NULL),('0006eb318e81ae5aa105acd703dafb7d','test2',1450235134,NULL),('8b848f64a4a6d0d95f0754d6cd83bf39','test2',1450235184,NULL),('66d7c6b00ec9f924f00be366b0e652c2','test2',1450406782,NULL),('a6d3f14b6c0b47fb63cd4d35130a291f','test2',1450406962,NULL),('bf41347fd04570d362126e9ef2270596','test2',1450407194,NULL),('51e3b0229bc663cfbda0ab30e779c44b','test2',1450407375,NULL),('3a9c830a10d199222cd97a64fa2cee77','test2',1450407474,NULL),('34c244ff18b076772cd77d3e7ed4a325','test2',1450411283,NULL),('3f09a38a579ff58fe02cc57c0576d0bd','test2',1450411494,NULL),('b3e2b82e26aaaa9b6b13fcf344bc3005','test2',1450411849,NULL),('57bed2864b096a97f2568c9f1b8f07c9','test2',1450412230,NULL),('557530e5e2087f55761a014e16d11e20','test2',1450412346,NULL),('2628b219df8851fb351e08d34bdb257b','test2',1450412450,NULL),('d78b2199c59dea83b73a14612dc2f49c','test2',1450413523,NULL),('1f4906640b1d58523da110d44359a32b','test2',1450413588,NULL),('68e532f02ef3fb928e36d3b65a967665','test2',1450414272,NULL),('874f87d651aa1b9a1c8cfa48809c34a5','test2',1450414418,NULL),('602c9101a88240097e6fc7451042def9','test2',1450414529,NULL),('9440582fa70ee8f2f92b0c78775e3d90','test2',1450414667,NULL),('614b97089118059872a64ad8465a02a0','test2',1450414889,NULL),('af1c53d3d104ae07f42e8c316dbdc420','test2',1450415437,NULL),('c01546bd360e2e4683178f824301713e','test2',1450415846,NULL),('55f531da8763b837b653868a265c3710','test2',1450415855,NULL),('3b0c634571f93987983693b0e4eaf704','test2',1450415903,NULL),('0a9e587be1c3857ec2612ebb9b7d7f09','test2',1450416086,NULL),('cf4821bcb0c0df8321eaa8f652a5341c','test2',1450416297,NULL),('9aa817f03567f46041d429a21f62b1c7','test2',1450416464,NULL),('ce1edd216ba81a933268a8ca942d47e5','test2',1450416766,NULL),('94ed046d8f7b54ddb18b3f08dc521b0c','test2',1450417493,NULL);
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokenuid`
--

DROP TABLE IF EXISTS `tokenuid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokenuid` (
  `oauth_token` varchar(40) NOT NULL,
  `uid` int(100) NOT NULL,
  PRIMARY KEY (`oauth_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokenuid`
--

LOCK TABLES `tokenuid` WRITE;
/*!40000 ALTER TABLE `tokenuid` DISABLE KEYS */;
INSERT INTO `tokenuid` VALUES ('0a9e587be1c3857ec2612ebb9b7d7f09',33),('1f4906640b1d58523da110d44359a32b',26),('2628b219df8851fb351e08d34bdb257b',24),('34c244ff18b076772cd77d3e7ed4a325',20),('3a9c830a10d199222cd97a64fa2cee77',19),('3b0c634571f93987983693b0e4eaf704',32),('3f09a38a579ff58fe02cc57c0576d0bd',21),('51e3b0229bc663cfbda0ab30e779c44b',18),('557530e5e2087f55761a014e16d11e20',23),('55f531da8763b837b653868a265c3710',0),('57bed2864b096a97f2568c9f1b8f07c9',22),('602c9101a88240097e6fc7451042def9',29),('614b97089118059872a64ad8465a02a0',30),('68e532f02ef3fb928e36d3b65a967665',27),('874f87d651aa1b9a1c8cfa48809c34a5',28),('9440582fa70ee8f2f92b0c78775e3d90',22),('94ed046d8f7b54ddb18b3f08dc521b0c',37),('9aa817f03567f46041d429a21f62b1c7',35),('af1c53d3d104ae07f42e8c316dbdc420',31),('b3e2b82e26aaaa9b6b13fcf344bc3005',22),('bf41347fd04570d362126e9ef2270596',13),('c01546bd360e2e4683178f824301713e',32),('ce1edd216ba81a933268a8ca942d47e5',36),('cf4821bcb0c0df8321eaa8f652a5341c',34),('d78b2199c59dea83b73a14612dc2f49c',25);
/*!40000 ALTER TABLE `tokenuid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(100) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `yz` int(10) DEFAULT '0',
  `openid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'147','b3c0730cf3f50613e40561e67c871fdb92820cf9',1,'9a7369f79ce18902eda3e607e2aedf69'),(19,'555','cfa1150f1787186742a9a884b73a43d8cf219f9b',1,'c97ac0c91e761280f124dd445b5ac315'),(20,'999','afc97ea131fd7e2695a98ef34013608f97f34e1d',1,'2380449f42a178b28962504f38fabebd'),(21,'888','eaa67f3a93d0acb08d8a5e8ff9866f51983b3c3b',1,'4974ef403a6d5916a1b512c0a2281399'),(22,'777','fc7a734dba518f032608dfeb04f4eeb79f025aa7',1,'1a06d3022d636c4739de812b13cbf0ca'),(23,'222','1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9',1,'5563c86af40916994cd13c00c278b622'),(24,'111','6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2',1,'7dbdd758f424c1ec5ea8b4904aa51ac2'),(25,'444','9a3e61b6bcc8abec08f195526c3132d5a4a98cc0',1,'9bada08022a2a5b7b14634940fbfdcbf'),(26,'ppp','b3054ff0797ff0b2bbce03ec897fe63e0b6490e0',1,'4fa4c7b98a8058d18dd2a7fb959d52fe'),(27,'ooo','b3054ff0797ff0b2bbce03ec897fe63e0b6490e0',1,'35a5e48fd473cc446d0436e18ce09725'),(28,'iii','425ffc1422dc4f32528bd9fd5af355fdb5c96192',1,'c308aec3ea3331377c400ca2d741877f'),(29,'898','6b2e24cf8d9de573219178fdf7baa3a32db4c4c2',1,'ccd02ac71fdc9d738f8529c8e3c8ccbb'),(30,'kkk','5150d2104c8cd974b27fad3f25ec4e8098bb7bbe',1,'a149d72483e139467d33a916f8a7eba3'),(31,'5656','9140597735dd558d85b9760f93d28d8fa5ba7e9d',1,'96604b1c67916b969e50e1bc967fd5f4'),(32,'mmm','91223fd10ce86fc852b449583aa2196c304bf6e0',1,'0fc9e6ecb92142d36fda9a44fd1dd86a'),(33,'528','1d7deb7af392ce1dd0b07cc0e31a54ffbcbfe9fc',1,'7a9e7c9f3f15649aa277733a34c9176c'),(34,'456','51eac6b471a284d3341d8c0c63d0f1a286262a18',1,'8bc042b9407427c2cc4bca3959874652'),(35,'852','2dcc3820e64b3d1a7866b22935c695fd6aa3980a',1,'e21c8db5093df1928b62a46c54e95d05'),(36,'753','c32a67a05e6b1c8b7a2b48059cdcd5007a4a0900',1,'e1aa99c50f25feacbefbd782180996d7'),(37,'951','69fa6513b84b61771964c90b552608300fca5914',1,'b90b1050fe53049ebd0e9cb22db79f11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-18 14:25:08
