-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: sdrecipe
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) NOT NULL,
  `c_phone` varchar(30) NOT NULL,
  `c_address` varchar(30) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fcat`
--

DROP TABLE IF EXISTS `fcat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fcat` (
  `fcat_id` int(11) NOT NULL AUTO_INCREMENT,
  `fcat_name` varchar(100) NOT NULL,
  PRIMARY KEY (`fcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fcat`
--

LOCK TABLES `fcat` WRITE;
/*!40000 ALTER TABLE `fcat` DISABLE KEYS */;
INSERT INTO `fcat` VALUES (1,'Rice Items'),(2,'Soup Items'),(3,'Meat Items'),(4,'Fastfoods'),(5,'Desserts'),(6,'Beverage');
/*!40000 ALTER TABLE `fcat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodorder`
--

DROP TABLE IF EXISTS `foodorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foodorder` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`o_id`,`f_id`,`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodorder`
--

LOCK TABLES `foodorder` WRITE;
/*!40000 ALTER TABLE `foodorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `foodorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foods` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(100) NOT NULL,
  `fcat_id` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`f_id`,`fcat_id`),
  KEY `fcat_id` (`fcat_id`),
  CONSTRAINT `foods_ibfk_1` FOREIGN KEY (`fcat_id`) REFERENCES `fcat` (`fcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'Mutton Biriani',1,200),(2,'Chicken Polao',1,200),(3,'Plain polao',1,210),(4,'Fried Rice',1,180),(5,'Thai Soup',2,400),(6,'Noodles Soup',2,450),(7,'Vegetable Soup',2,200),(8,'Special Soup',2,300),(9,'Fried Beef',3,400),(10,'Fried Chicken',3,50),(11,'Fried Mutton',3,450),(12,'Mutton Curry',3,400),(13,'Mutton Chop',3,100),(14,'Chicken Curry',3,200),(15,'Beef Kima',3,200),(16,'Grilled Chicken',3,360),(17,'Extra Cheesy Pizza',4,1000),(18,'Extreme Naga Naga',4,300),(19,'Greek Pasta',4,400),(20,'Club Sandwich',4,300),(21,'Super Crust Pizza',4,600),(22,'Happy Meal Burger',4,250),(23,'Noodles',4,150),(24,'Subway Sandwich',4,200);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `ing` varchar(1000) NOT NULL,
  `pro` varchar(8000) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'Homemade Flash Chicken Nuggets','1 cup bread crumbs, \n1/2 teaspoon garlic powder, \n1/2 teaspoon dried thyme, \n1/4 cup Dijon mustard, \n1/3 cup light mayonnaise, \n1 1/2 pounds chickentenders, cut into 1-inch pieces, \n3/4 pound green beans, washed, trimmed and steamed','Heat oven to broil. Coat baking rack with nonstick cooking spray. Place rack over baking sheet; set aside. Stir together bread crumbs, garlic powder and thyme in a pie plate; set aside. Stir together mustard and mayonnaise. Reserve about 1/2 cup of mustard mixture for dipping sauce. Brush chicken pieces with remaining mustard mix; place chicken in pie plate with bread crumb mixture, spooning crumbs on top of pieces and pressing to adhere. Transfer to prepared baking rack. Broil for 10 minutes or until cooked through. Serve with reserved dipping sauce and green beans on the side.','..\\Images\\Food\\nuggets.jpg'),(2,'No-Fuss Snack Mix Chicken','1 cup butter, melted, or buttermilk\r\n4 cups Pretzel Snack Mix (see Recipe Center) or purchased snack mix, crushed, 5 - 5 1/2\r\npounds meaty chicken pieces or 6 skinless, boneless chicken breast halves (about 2-1/2 lb.)','Preheat oven to 375 degrees F. Line a 15x10x1-inch baking pan with aluminum foil, set aside. Place melted butter or buttermilk in shallow dish or pie plate. In another shallow dish or on waxed paper place crushed snack mix. Remove skin from meaty chicken pieces. Dip chicken in butter to coat; then dip in snack mix to coat evenly. Place chicken in prepared pan.\r\nBake until chicken is no longer pink (170 degrees F for breasts; 180 degrees F for thighs and drumsticks). Allow 50 to 60 minutes for meaty chicken pieces or 30 minutes for skinless boneless breast halves.\r\nIn a self-sealing storage bag or storage container with tight-fitting lid reserve 2 breast halves or 4 legs or thighs for Zesty Lemon-Chicken Salad Sandwiches; refrigerate up to 2 days. Makes 4 servings plus enough for Zesty Lemon-Chicken Salad Sandwiches.','..\\Images\\Food\\fry.jpg'),(3,'Lemon-Nut Rice Stuffing','6 slices bacon\r\n1 cup chopped onion (1 large)\r\n3 cloves garlic, minced\r\n2 cups long grain rice\r\n4 cups chicken broth\r\n1 cup shredded carrot (2 medium)\r\n1 tablespoon snipped fresh rosemary or oregano or 1 teaspoon dried rosemary or oregano, crushed \r\n1/2 teaspoon salt\r\n1/2 teaspoon ground black pepper\r\n1/4 teaspoon ground nutmeg \r\n1/2 cup snipped fresh parsley\r\n1/2 cup pine nuts or slivered almonds\r\n2 teaspoons finely shredded lemon peel','In a very large skillet, cook bacon until crisp. Drain, reserving 2 tablespoons drippings in skillet. Drain bacon on paper towels. When bacon is cool enough to handle, crumble and set aside.\r\nIn the same skillet, cook onion and garlic in hot drippings for 5 minutes, stirring often. Stir in uncooked rice. Stir in broth, carrot, rosemary or oregano, salt, pepper, and nutmeg. Bring to boiling; reduce heat. Cover and simmer for 20 to 25 minutes or until rice is tender and liquid is absorbed.\r\nStir in crumbled bacon, parsley, nuts, and shredded lemon peel.\r\nSpoon into a 2-quart casserole. Cover and chill at least 4 hours or up to 24 hours. To serve, bake, covered, in a 325 degree F oven for 45 to 60 minutes or until heated through. Makes 10 to 12 servings.','..\\images\\food\\rice.jpg\r\n');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-19 13:41:06
