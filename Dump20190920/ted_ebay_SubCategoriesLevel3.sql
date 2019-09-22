CREATE DATABASE  IF NOT EXISTS `ted_ebay` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ted_ebay`;
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ted_ebay
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `SubCategoriesLevel3`
--

DROP TABLE IF EXISTS `SubCategoriesLevel3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SubCategoriesLevel3` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_Father` int(10) unsigned NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=612 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubCategoriesLevel3`
--

LOCK TABLES `SubCategoriesLevel3` WRITE;
/*!40000 ALTER TABLE `SubCategoriesLevel3` DISABLE KEYS */;
INSERT INTO `SubCategoriesLevel3` VALUES (1,1,'Christopher Radko'),(2,1,'Enesco'),(3,1,'Dreamsicles'),(4,2,'Ephemera'),(5,1,'Hallmark'),(6,1,'Avon'),(7,3,'Other Barware'),(8,4,'Silver Age (1956-69)'),(9,5,'Medicines, Cures'),(10,4,'Modern Age (1980-Now)'),(11,6,'Contemporary (1940-Now)'),(12,4,'Golden Age (1938-55)'),(13,7,'Other Kitchenware'),(14,7,'Salt, Pepper Shakers'),(15,7,'Cookie Jars'),(16,1,'Franklin Mint'),(17,1,'Knowles Collector Plates'),(18,3,'Ice Buckets'),(19,7,'Mugs'),(20,4,'Magazines'),(21,1,'ANRI'),(22,8,'Antique (Pre-1930)'),(23,1,'Lladro'),(24,5,'Fruit Jars'),(25,4,'Collections'),(26,1,'Dept 56'),(27,9,'American'),(28,7,'Cookie Cutters'),(29,3,'Corkscrews'),(30,4,'Original Comic Art'),(31,1,'Harmony Kingdom'),(32,4,'Graphic Novels, TPBs'),(33,4,'Full Runs'),(34,4,'International'),(35,1,'David Winter'),(36,1,'Norman Rockwell'),(37,1,'Duncan Royale'),(38,1,'Swarovski'),(39,1,'Bradford Exchange'),(40,10,'Bed & Bath Linens'),(41,11,'Milk'),(42,7,'Bakeware'),(43,12,'Boys (Sz 8 and up)'),(44,10,'Curtains, Draperies'),(45,1,'Flambro'),(46,13,'Books'),(47,4,'Figurines'),(48,1,'Royal Doulton'),(49,4,'Bronze Age (1970-79)'),(50,15,'Shirts'),(51,16,'Chrome'),(52,1,'Limoges'),(53,10,'Quilts'),(54,1,'Hummel, Goebel'),(55,10,'Rugs'),(56,18,'Other Tableware'),(57,19,'Hats'),(58,20,'Posters'),(59,1,'Lefton Figurines'),(60,1,'Armani'),(61,5,'Other Antique Bottles'),(62,13,'Other Magic Items'),(63,21,'Shirts'),(64,1,'Charming Tails'),(65,1,'Bing & Grondahl Coll Plates'),(66,23,'Star Wars'),(67,24,'Slips'),(68,16,'Brass'),(69,1,'Danbury Mint'),(70,10,'Fabric'),(71,3,'Shot Glasses'),(72,3,'Pourers, Stoppers'),(73,4,'Platinum Age (1897-1937)'),(74,16,'Other Metalware'),(75,20,'Souvenir Programs'),(76,1,'Lenox'),(77,7,'Trivets'),(78,3,'Coasters'),(79,11,'Other Modern Bottles'),(80,10,'Lace, Crochet, Doilies'),(81,1,'HOMCO'),(82,1,'Josef'),(83,25,'Science Fiction'),(84,19,'Backpacks, Bags'),(85,1,'Cat\'s Meow Village'),(86,1,'Thomas Kinkade'),(87,16,'Pewter'),(88,26,'Outerwear'),(89,7,'Egg Cups'),(90,1,'Longaberger'),(91,27,'Beagle'),(92,7,'Mixing Bowls'),(93,7,'Small Appliances'),(94,28,'Reenactment, Repro'),(95,10,'Table Linens'),(96,3,'Swizzle/Stir Sticks'),(97,7,'Utensils'),(98,7,'Tupperware'),(99,7,'Cookware'),(100,9,'European'),(101,1,'Fitz & Floyd'),(102,7,'Tea Kettles'),(103,7,'Napkin Holders'),(104,3,'Decanters'),(105,26,'Shirts'),(106,25,'Other Non-Sports'),(107,7,'Canisters'),(108,19,'Other Items'),(109,1,'Hamilton Collector Plates'),(110,30,'Vintage Metal'),(111,7,'Serving Trays'),(112,1,'Harbour Lights'),(113,26,'Underwear, Sleepwear'),(114,33,'Cigarette'),(115,18,'Flatware'),(116,5,'Inks'),(117,18,'Pitchers'),(118,11,'Fruit Jars'),(119,11,'Sodas'),(120,4,'Newspaper Comics'),(121,4,'Other Comics'),(122,34,'Photos'),(123,1,'Byers Choice'),(124,16,'Aluminum'),(125,7,'Molds'),(126,1,'Mary Engelbreit'),(127,16,'Silverplate'),(128,27,'Schnauzer'),(129,1,'Boyds'),(130,38,'Photos'),(131,39,'Estee Lauder'),(132,16,'Sterling Silver'),(133,1,'Tom Clark'),(134,1,'Schmid'),(135,1,'Lilliput Lane'),(136,34,'Other'),(137,7,'Spoon Rests'),(138,23,'Star Trek'),(139,18,'Open Salts'),(140,11,'Miniatures'),(141,18,'Table Accessories'),(142,10,'Tapestries'),(143,5,'Sodas'),(144,11,'Whiskeys: Screw Top'),(145,7,'Cake Carriers, Savers'),(146,7,'Spice Racks, Jars'),(147,7,'Graniteware'),(148,1,'Willitts'),(149,5,'Hair, Skin Care'),(150,38,'Other'),(151,40,'Signs, Tins'),(152,41,'Modern (1970-Now)'),(153,18,'Melamine, Melmac'),(154,16,'Tin'),(155,11,'Flasks'),(156,5,'Utility & Black Glass'),(157,33,'Ashtrays'),(158,16,'Cast Iron'),(159,30,'Contemporary Metal'),(160,42,'Other Pez'),(161,40,'Steins, Drinkware'),(162,43,'Carpentry, Woodworking'),(163,16,'Copper'),(164,45,'Prints'),(165,10,'Feed Sacks, Flour Sacks'),(166,1,'PartyLite'),(167,13,'Tricks'),(168,10,'Other Textiles'),(169,47,'Evening Wear'),(170,48,'Loafers'),(171,10,'Kitchen Textiles'),(172,2,'Postcards'),(173,49,'License Plates'),(174,16,'Bronze'),(175,1,'Roman'),(176,41,'Vintage (Pre-1970)'),(177,3,'Shakers'),(178,38,'Pressbooks, Press Kits'),(179,50,'Movies'),(180,7,'Pie Birds'),(181,52,'Casual'),(182,53,'Foreign'),(183,30,'Contemporary Plastic'),(184,54,'Wheaton'),(185,1,'Pendelfin'),(186,42,'Vintage (no feet)'),(187,55,'Asian'),(188,25,'Comic'),(189,56,'Christmas: Modern (1946-90)'),(190,7,'Bread Boxes'),(191,25,'Phone Cards'),(192,58,'Pfaltzgraff'),(193,20,'Other'),(194,59,'Other Knives'),(195,20,'Window Cards'),(196,5,'Whiskeys, Gins, Schnapps'),(197,50,'Television'),(198,24,'Sleepwear, Robes'),(199,60,'Hot Wheels'),(200,52,'Career'),(201,61,'Airlines'),(202,62,'Other'),(203,28,'Other Items'),(204,63,'Sci-Fi'),(205,23,'Other Sci-Fi'),(206,23,'Babylon 5'),(207,63,'Action, Adventure'),(208,52,'Evening Wear'),(209,64,'Boots'),(210,65,'Women'),(211,1,'Sarah\'s Attic'),(212,42,'Current'),(213,19,'Neckwear'),(214,30,'Other Lunchboxes'),(215,5,'Bitters'),(216,66,'Pins, Buttons'),(217,3,'Bar Sets'),(218,59,'Swords'),(219,67,'Paper'),(220,61,'Military'),(221,56,'Christmas: Vintage (Pre-1946)'),(222,5,'Mineral Waters'),(223,68,'Perfumes'),(224,5,'Poisons'),(225,15,'Shorts'),(226,38,'Wardrobe'),(227,69,'Modern (1970-Now)'),(228,70,'Other Birds'),(229,23,'Godzilla'),(230,71,'Betty Boop'),(231,52,'Other Items'),(232,19,'Wallets'),(233,38,'Ads, Flyers'),(234,23,'X-Files'),(235,5,'Flasks'),(236,1,'Wade Figurines'),(237,1,'Margaret Furlong'),(238,1,'Shelia\'s'),(239,53,'Action, Adventure'),(240,18,'Napkin Rings'),(241,72,'Evening Wear'),(242,56,'Christmas: Current (1991-Now)'),(243,1,'San Francisco Music Box'),(244,26,'Jeans'),(245,18,'Hollow Ware'),(246,30,'Vintage Plastic'),(247,23,'Xena'),(248,23,'Dr. Who'),(249,23,'Buffy the Vampire Slayer'),(250,71,'Japanese'),(251,73,'Lip Color'),(252,75,'Other Gowns'),(253,5,'Pickles, Sauces, Other Food'),(254,76,'Other Items'),(255,1,'Royal Copenhagen Coll Plates'),(256,78,'Jack Daniels'),(257,11,'Medicines: Screw Top'),(258,79,'Other Flags'),(259,80,'Hats'),(260,45,'Posters'),(261,45,'Artistic Nudes'),(262,80,'Handbags'),(263,26,'Other Items'),(264,1,'Wedgwood'),(265,82,'Audiovox'),(266,28,'Original Period Items'),(267,63,'Comedy'),(268,83,'Collector Plates'),(269,26,'Pants'),(270,19,'Belt Buckles'),(271,53,'Martial Arts'),(272,76,'Shavers'),(273,63,'Martial Arts'),(274,4,'Supplies'),(275,53,'Other'),(276,23,'Planet of the Apes'),(277,63,'Other'),(278,53,'Drama'),(279,40,'Cans: Non-US'),(280,26,'Exercise, Fitness'),(281,85,'Life Savers'),(282,64,'Other Footwear'),(283,10,'Samplers'),(284,63,'Horror'),(285,63,'Drama'),(286,53,'Sci-Fi'),(287,38,'Props'),(288,89,'Mage Knight'),(289,80,'Other Items'),(290,90,'Sky & UV'),(291,91,'High Chairs'),(292,92,'Monitors'),(293,93,'Seated Liberty (1839-91)'),(294,94,'Bedding'),(295,98,'Houseplants'),(296,100,'Supplies'),(297,102,'Dominion of Canada'),(298,104,'Blankets'),(299,82,'Motorola'),(300,105,'Collections, Lots'),(301,106,'Standing Liberty (1916-30)'),(302,107,'Cable'),(303,58,'California Pottery'),(304,111,'Games'),(305,114,'Memory Upgrades'),(306,116,'Irons, Ironing Boards'),(307,117,'Accessories'),(308,107,'Satellite'),(309,118,'Braided Hair (1840-57)'),(310,106,'Washington (1932-Now)'),(311,119,'Lawn Mowers, Tractors'),(312,106,'50 States (1999-2008)'),(313,120,'Other'),(314,122,'Wreaths'),(315,123,'B&W'),(316,124,'Sporting Events'),(317,125,'Retired, Discontinued'),(318,127,'Hard Drives-IDE'),(319,58,'Taylor Smith & Taylor'),(320,128,'Barbie'),(321,129,'Manufactured'),(322,132,'Games'),(323,133,'Porcelain'),(324,135,'Colored'),(325,58,'Iroquois'),(326,82,'Kyocera/Qualcomm'),(327,138,'Games'),(328,139,'Other'),(329,82,'Ericsson'),(330,82,'Other Brands'),(331,58,'Hall'),(332,142,'Subwoofers'),(333,94,'D_cor'),(334,144,'Other Antique Dolls'),(335,147,'Other Power Tools'),(336,114,'PCMCIA Cards'),(337,148,'Gazing Balls'),(338,150,'Paragon'),(339,151,'Contemporary (1940-Now)'),(340,152,'Wire, Cables'),(341,150,'Herend'),(342,150,'Pickard'),(343,155,'Other'),(344,156,'Other'),(345,158,'Business'),(346,161,'Restaurants'),(347,162,'Classical'),(348,38,'Posters'),(349,38,'Lobby Cards'),(350,50,'Theater'),(351,163,'Silverplate'),(352,162,'Reggae, Ska'),(353,34,'Ads, Flyers'),(354,38,'Standees'),(355,50,'Other'),(356,34,'Posters'),(357,34,'Props'),(358,38,'Scripts'),(359,34,'Scripts'),(360,20,'Playbills'),(361,164,'Business'),(362,63,'Music & Concert'),(363,166,'Contemporary (1950-Now)'),(364,167,'Other'),(365,168,'Action, Adventure'),(366,63,'Exercise'),(367,63,'Children, Family'),(368,53,'Animation'),(369,20,'Ads, Flyers'),(370,20,'Props, Wardrobe'),(371,167,'Children, Family'),(372,167,'Comedy'),(373,63,'Romance'),(374,170,'Classics'),(375,162,'Pop'),(376,63,'Westerns'),(377,53,'Comedy'),(378,62,'Ceramics'),(379,34,'Wardrobe'),(380,162,'Rock: Alternative'),(381,167,'Action, Adventure'),(382,175,'3-6 Months'),(383,164,'Children'),(384,162,'Rock: Hard'),(385,53,'Children, Family'),(386,34,'Press Kits'),(387,63,'Cult'),(388,53,'Horror'),(389,53,'Documentary'),(390,177,'Antique (Pre-1900)'),(391,53,'Music & Concert'),(392,53,'Classics'),(393,53,'Westerns'),(394,63,'Documentary'),(395,53,'Fantasy'),(396,170,'Comedy'),(397,63,'Sports'),(398,53,'Cult'),(399,167,'Sci-Fi'),(400,63,'Animation'),(401,63,'Fantasy'),(402,53,'Cartoons'),(403,63,'Mystery'),(404,167,'Drama'),(405,53,'Romance'),(406,168,'Comedy'),(407,181,'33 RPM/LPs'),(408,63,'Classics'),(409,63,'Musicals'),(410,170,'Action, Adventure'),(411,170,'Sci-Fi'),(412,63,'Foreign'),(413,63,'Cartoons'),(414,162,'Rock: Classic'),(415,63,'War'),(416,63,'Instructional'),(417,162,'Blues'),(418,170,'Drama'),(419,53,'Independent Films'),(420,162,'Other'),(421,167,'Classics'),(422,167,'Horror'),(423,170,'Children, Family'),(424,177,'Modern (1900-49)'),(425,162,'Old Time Radio'),(426,170,'Animation'),(427,162,'House'),(428,63,'Independent Films'),(429,53,'War'),(430,189,'Other Movie, TV'),(431,62,'Metalware'),(432,53,'Exercise'),(433,53,'Musicals'),(434,53,'Sports'),(435,194,'Native American'),(436,168,'Other'),(437,63,'Science, Nature'),(438,195,'American'),(439,53,'Mystery'),(440,168,'Horror, Mystery'),(441,166,'Antique (Pre-1900)'),(442,170,'Other'),(443,163,'Sterling'),(444,167,'Romance'),(445,189,'Soap Opera Digest'),(446,175,'6-12 Months'),(447,175,'12-24 Months'),(448,199,'Other Items'),(449,200,'Other Accessories'),(450,12,'Little Boys (Sz 4-7)'),(451,199,'Hats'),(452,201,'Little Girls (Sz 4-6x)'),(453,175,'0-3 Months'),(454,201,'Teens'),(455,201,'Girls (Sz 7 and up)'),(456,202,'Necklaces'),(457,12,'Teens'),(458,203,'Gag Gifts'),(459,205,'Other'),(460,12,'Toddlers (Sz 2T-4T)'),(461,201,'Toddlers (Sz 2T-4T)'),(462,15,'Sweats'),(463,202,'Rings'),(464,26,'Sweaters'),(465,200,'Socks & Tights'),(466,26,'Blazers & Sports Coats'),(467,200,'Hair Accessories'),(468,48,'Oxfords'),(469,48,'Other Footwear'),(470,80,'Belts'),(471,72,'Career'),(472,64,'Heels, Pumps'),(473,47,'Casual'),(474,80,'Scarves'),(475,64,'Sandals'),(476,202,'Bracelets'),(477,19,'Organizers, Planners'),(478,19,'Sunglasses'),(479,24,'Other Items'),(480,64,'Loafers'),(481,26,'Suits'),(482,24,'Panties'),(483,47,'Career'),(484,24,'Corsets'),(485,60,'Maisto'),(486,75,'Sleeveless'),(487,209,'Other Accessories'),(488,52,'Outerwear'),(489,80,'Gloves, Mittens'),(490,73,'Cleansers & Moisturizers'),(491,73,'Mixed Lots'),(492,39,'Other Items'),(493,19,'Suspenders, Braces'),(494,48,'Athletic Shoes'),(495,19,'Belts'),(496,24,'Bras'),(497,200,'Backpacks, Purses'),(498,19,'Gloves, Mittens'),(499,19,'Briefcases'),(500,15,'Sweaters'),(501,52,'Exercise, Fitness'),(502,175,'Mixed Sizes'),(503,75,'Long Sleeve'),(504,64,'Athletic'),(505,211,'Vintage (1977-89)'),(506,48,'Boots'),(507,15,'Jeans'),(508,26,'Shorts'),(509,72,'Casual'),(510,80,'Hair Accessories'),(511,80,'Sunglasses'),(512,26,'Vests'),(513,212,'Casual'),(514,15,'Pants'),(515,213,'Vintage'),(516,76,'Oral Hygiene'),(517,15,'Outerwear'),(518,24,'Hosiery'),(519,212,'Career'),(520,214,'Furby'),(521,64,'Flats'),(522,80,'Organizers, Planners'),(523,47,'Outerwear'),(524,72,'Other Items'),(525,15,'Other Items'),(526,215,'Trivial Pursuit'),(527,15,'Underwear, Sleepwear'),(528,64,'Mules'),(529,64,'Clogs'),(530,216,'Clippers, Trimmers'),(531,76,'Bath, Shower Gel'),(532,72,'Outerwear'),(533,15,'Blazers & Sports Coats'),(534,48,'Sandals'),(535,76,'Lotion'),(536,24,'Camisoles'),(537,24,'Shapers'),(538,80,'Wigs, Extensions'),(539,47,'Other Items'),(540,80,'Wallets'),(541,15,'Suits'),(542,73,'Cases, Bags, Totes'),(543,39,'Calvin Klein'),(544,202,'Pins, Brooches'),(545,218,'Vintage (Pre-1970)'),(546,219,'Retirement'),(547,73,'Eyeshadow'),(548,73,'Foundation'),(549,76,'Hair Removal'),(550,214,'Other'),(551,221,'Nail Color'),(552,73,'Sets & Kits'),(553,80,'Briefcases'),(554,209,'Veils, Headpieces'),(555,216,'Other Items'),(556,52,'Mixed Lots'),(557,202,'Charms, Lockets'),(558,73,'Blush'),(559,64,'Slippers, Moccasins'),(560,199,'Hair Accessories'),(561,215,'Other Board Games'),(562,223,'Oval'),(563,76,'Soap'),(564,73,'Mascara, Eyeliner'),(565,24,'Mixed Lots'),(566,80,'Mixed Lots'),(567,212,'Nursing'),(568,15,'Vests'),(569,225,'X-Men'),(570,76,'Massagers'),(571,73,'Face Powder'),(572,26,'Swimwear'),(573,47,'Mixed Lots'),(574,226,'Crystal'),(575,227,'Other Gemstone'),(576,39,'Elizabeth Arden'),(577,216,'Shampoo'),(578,48,'Slippers, Moccasins'),(579,75,'Short Sleeve'),(580,212,'Evening Wear'),(581,39,'Chanel'),(582,73,'Other Items'),(583,200,'Mixed Lots'),(584,200,'Caps & Hats'),(585,19,'Mixed Lots'),(586,64,'Mixed Lots'),(587,73,'Concealer'),(588,216,'Conditioner'),(589,214,'Poo-Chi'),(590,216,'Brushes, Combs'),(591,221,'Files, Implements'),(592,230,'Brand Name'),(593,72,'Mixed Lots'),(594,212,'Mixed Lots'),(595,26,'Mixed Lots'),(596,203,'Risque Novelties'),(597,60,'NASCAR'),(598,221,'Other Items'),(599,73,'Brushes, Applicators'),(600,209,'Garters'),(601,234,'Other Brands'),(602,48,'Mixed Lots'),(603,216,'Gel, Mousse, Spray'),(604,216,'Heat Styling'),(605,216,'Hair Dryers'),(606,73,'Toners, Fresheners'),(607,60,'First Gear'),(608,202,'Other Items'),(609,235,'Fantasy'),(610,235,'Science Fiction'),(611,238,'Magic the Gathering');
/*!40000 ALTER TABLE `SubCategoriesLevel3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20 14:56:08