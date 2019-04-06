CREATE DATABASE  IF NOT EXISTS `fares` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `fares`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: fares
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `f_name` varchar(40) DEFAULT NULL,
  `l_name` varchar(40) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(40) DEFAULT NULL,
  `vacation_balance` int(11) DEFAULT '30',
  PRIMARY KEY (`id`),
  KEY `vacation_fk_idx` (`vacation_balance`),
  CONSTRAINT `vacation_fk` FOREIGN KEY (`vacation_balance`) REFERENCES `vacation_balance` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Mohamed','Ahmed','male',50,'wuygwqyw','17244',45),(3,'Mrs Mrs aya','helmy','female',20,'wuygwqyw','17244',30),(4,'Mr Mr ahmed','helmy','male',47,'wuygwqyw','17244',45),(5,'Mr Mr mohamed','helmy','male',50,'wuygwqyw','17244',45),(10,'ali','ahmed','male',30,'mansoura','32424234',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'3wrq3','qwfq','ppp','qwfwe','222'),(2,'adsfc','afasddsdf','kkk','fasfs','2324'),(3,'fqwd','wfwqf','fqf','eqfqef','32423'),(4,'asf','dfdf','ddfdf','dfdf','34234');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `phone` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pic` blob NOT NULL,
  `gender` int(11) NOT NULL,
  `country` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `bio` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `registered_by` int(11) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('01064621157','ahmed','karem','15874','ahmed@yahoo.com',_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(�\�\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((�\�\0�X\"\0�\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0�y��|\�M4���\�\�F\0\��`0A��	@(i�\Z@0\Z�9X6�5\�QBe	�jV��[a�[�aѿ�c^Y)NS�5/_ON<\�Fo^\Zr\�XT\�\�1S=\�d߉.sT�\�NZ@�i�����1���L;\nU41�J�m���7d��F��7*B���O?V���~:g�bwׯ��>}\�K<k��ߢd�\�\'i�k1KJ�����\0��0i�5 \r@,)P\�5@\�&\r�:�h��aE\"�\�7VD\�P\�Ym��\�ӯ��^:e_�8\�nC\�\�y��ƌ\�\�rLw\0T2�	k�R\�I5j*\0P6�\r\0�m0\0w\ZP\�IR�u7N\�ETPP\�AE\"�W\n�\\\�\�\�\�nj[v*-�7\�mxn�\�\��|s��_m\�\'�@\�h0\0>u9\��I��b\0X4��\0\0\�b�\�K*�PW:S�aE2���*F\�\�2\�^E���\�\\�\�\�ج�\��\�{\�֚\�\�ˏ��^�\�$N��\n\0\0\�\�Y���\0Q�\0	�\r4\0\Z`1���UMR%5*�kK*�`�\�M�f�a\�w\�:V�\�Rs\�3������<�7�a�Oo�Я�4:�\0\0�\�C���\�\0&(\0LM!�H\0���\�m�n-6�RmkK��N*�pEM�ޕ��k{9e�\�\\l����V�N�y\�Xr\�<wϿP��\�@^�\n\0��@j�0\nPC\0`\"F0�1�\�\�n[��̋���tZ\�\�k�\�x�V�M]g�U�\�5z�\�\�l��j\�p˗�\�k\�uZ�·$ۼ\�c9ǯC�w� ��\�h\0\Z���\0\�S@\n\��\0\0\0\0&6��-\\\�zF�S\rʤ\�\�ñ\���\�l�q-^p��\�-.:�\����\�n[yzs\�Bmβ\��L\�xv�ԣ���]�,b\Z`(�\00�2�Y4\�\0\0\0�\00�\Z�\0��+H�9��\�Z[\�\��g�7\�\�\�6kYV1w\�|�E磐撓s9�dќk�/7N�\\��{X\Z\�6\�\�X5\0`0`0(�t\0\0\r\0\0\�\��`\�QpQC�؉\�]d7.އf~w)�ۮ�t�L\�9�aZ\�ݷ�\�\�|o<�W��rg��8f�u�-\�c\04\����bl5Lh1ʘ\�\0&\�2�\\:LeJ\�lʩ�jYPi:�6\�A\�\�2Z\�XӬ\�]s\�>)��\�N\�\�n�>�:���m_n�qY\�bS5*u�\�\�wB\'Zr\�\Zmj4�0V1FX�b�+冮@\0\�1�-\�\�,Z\�7c\Z�\�gG��i�Fx\����}�^�]\�w��7u\�\�\�>>M�\�w\�W�ַ|\�:V\�%-9wT\�i�\�(\Z`\�i�V\�܍S�m\�m\n\�+\�!~]�\�\�aʓ�\�K�j�Lhm�Ӝf\n�z\r�\�^#\�x\�>\�\Z\�}:\�\�\�ʻ!�/\�{z��\�÷~|�\�\�\�D^�\�\0�H\�\�P��,u.n\�m�zY\r�p\�	�hV\�V&��\�\0>W7s��UL\�V᭵\�}\'\�t\�\Z�\�z|\�\'�\�\�\�|��\�y�w\�\�\\��N�\�r�\��9�s\�\�\��ufk�\���r{=�F�ےFKB6�-,���\�S�\�N\�\�;�p\�\�mS��*Q�F0e*l0�\�\�o\�Yǭ�;k�9\�\�PL\�Ok�yמl\�\nν^nh\�\�\��~G|��N��\�\�x>����\�\�\�\�\�N�L�\�\�\�ӆ��ʧ�\�N\�&A+t3U��u�t໷���\�9kNZ\�M[Mi�65mP2�c�`��\�F56�����//B0���\�ש�y*�5�\�ny�\�3\�帜���k6�GF�z�ԟ>\�;5�n\�$�d�[�kP��,�-j��R֪Z\�M+�JP\�(aCQ�&\�A��>���\� \�ۚ����KRMvW\r\�}\�\�MƳ\�Ӯ4\�\�\�\����g�u�s�w���T\�/lehͭs\�\\�-\�]stk\Z_>�6\�r\�\�)\�[��P\�r\�\�-�������m[�\��9#\�߈Y\�\�e�h�\�oL\�̖ͳ�z5\�?G	�J\�\�M�׷![�1rv�?�\\�\�\�\�R�.\Zg�zw>M3n�My\�.\�&�yʠ\�\rS�pӧ\nx\�Ƈ6�f0��rK=\�&�j�t�襠h\�h\�&\�V\�w5\���\�\�\�7�\�w|�WZ�2:�g�{՘�e�\�\�ҹˎ�㛟R��s\��r�3\��<\�}X\�\�\�4�\�Y\��xeӷ=��\\�\�\�6e�KK����\�\�Ƴt��/^j\�4Y�`��36\�\�MvLw�\�.}jn	u5�]\'8\Z�eћ58t*%k��2�\�\�>��\�踊r�\�{����Z*\�\�\�\�\�̡\�s�gYg��%\�+\�\�;x\�xi/N�Uyz\�y\�gg��{uq�\�h߯̚�|�K4�+:\�:MNe��*��\���\��\�t�\�\�^��R��\�\\ݴ�I2î\'N*ꩬg��ʈ��Ɗ�e�dy\�\�ǧ.�\0?k;g˔�8�\�N��(\�Cg|U\�#Q6\�ܡ�\�ˋ[ȢJ�,�\�V��\�\�Ş���p�\�y�k�\�3Yj�\\�ӗ3�p��\�gb\�i�w\�ӈ\�\�NSab�\�\�K\�\�ʾծ�6�:�W�TPrn�\'�_?Yt��\�b\�jV\'J�G\rE*Ңvl���\�eJ$қ\��e^��\�ئ�\�V\�\�\�k\\���ϩk\�i3p��I�q\�J�4^�s\��u�Dkri�	՟>\�Ý\�\��{㰥�����\�\�1�h*�\��\�*IU*\�cT�7S+��J\�+��ܗ���\�\�\��BF\�M&��W����\�\�\�\�-q\Z\�;Θ\�\�v\�<�����\�\�g��ey\�\�N�W\�w\Z\�\�\�ͭ�\�5SZK.s\�=jļ�U\� _Ur�SRjZ�\��4!\n\�h�\�D\�I���SId4�D�\�\�\�pE�F�YYҮ\�\�+\�ו:5\�U�`�\�ǯFy\�ӧ�z\�;&4c5׎�\�MSSwLs�\Z�\�ΰ��\�]b�\�ى�Vti�O8O�\�\0)\0\0\0\0\0\0\0 !01AP\"@#2B�\�\0\0�t!�\"-\�\"O\��>Q\�\n\�\�x�v\�?���D\\�e���E�\���\"\�-\�\�/\�ǃ%�5�\�-\�?�^�C���߿Ay�:�\�Ӣ���\�\��:�\�Ѣ�(h�4��2L\\�/A	$$Q$K�	[I�\����\�s�!!!!\"����N_`�._$$$$$Q�\�p���z\�mEm[P�����\�ތ\�7���!���-�\�Go�d�7�kg�[G\�Be�C�)q��*%;�ճ\�����Kk,�V\�D���r��Ce�{�c�-A\���r���od-�ؙ^\�df=A\�_^�\\Qy�\0\�\�-�\�!Y��cI\�>�\�\\Q}g� \"F�\�\�V\�t��\�v\�i\�\"~��J\�-\�(���\�\ZfD\�\�\�,�\���\�(hH�\"�D\�\�hk�ddYe�Ye�b%�4\�I	(�$b(��$�\�[?��\�\�B�-s{�\ZP\�\�ǬED�J(�$2��?��b(��zlG\�MFGQ1thõ\Z�v��12\�L���&?�_��(3��-�\�\�d�M�3�\�\���\��;�;M�H[D\�&7ڐ��_�e�\0{8o\�\�E�\�Y\�1hǪ;E�\�\�\�\�s�\0!�4�)ޖ�d\��\�\��\�\'�df=N��쿡�w\�\�E&�4;\�w��3�O\�\�!~v��\�#\�k&9\�\�K�zoQ��hsG��\�BC�0Օ[{I�Yߙ�ITRO��RCU�e�\�!4ȡ~���\�\�\�۳\�\rV\�(��;��9��%��ڱь�\�\"_��\�\�N|���&JW�\��,�I,L�eo�1�[V\�_\Z۵�hə\nI�\0{�)i=M}MB:��\�Ԟ�\�0C\�к!,c\'o�L\�ԧ8b�vv)S�=�\�x�\�hϸ+5*$%b�\'22fD;\Z�\�_\�r�O\�i#S�z�\�\�)/̑�Ɏ=��2�:l�\�\�%�7\�mE�\�ՒmNIB}9�y4\�Phm#\"2��\�.2q5bt\�\���\�3�E\���\�l�9�\�Ũ��Ye�HQP��-8�o\�m�\�%�GF�QB��)��.2\�E��p��\�>-\�\�`9���\�Tӎ\�FM��\�g\�(^\�Z\�-Jҕ\��\�\r\�LvFGL\�\�2C\�H�\�΄$Q�B\�\�%�Zq\'��f�\�Ŷlɖ�ED\�\��l\�TVɴGT�6\�ӫ\�m`u�\�\�\�l%\\!�QD�\�A\�/\"�\�lR3��FN���c]�\�Ə�s�ؾ��~�݈EY�cF(ĭ�\��\�䳱�FQ*2�,�E;Q��p�\�D4\�\�Dz��D�\�\rF�f�ij@�\�m�)O�F\��Cvh;sQ���7d���v^ə��\Zn=#F�\�e�\�l\�3MDR\�e6(�r��Yآ�\�,�16��;˚\�,\�NM&ji�4\��`|��.H���jȺ%\����\�\�FV%ΌEP�%�\�B\�Cu\����ԕ爐��ԢM\�f\�p\�D�F�d\�2!��9�l�ܸ|EBKR4�b�2GCF,��\�!i�)�\�b�l\�j�ԾvYe�#8�^ͤf�ߢ�&8��[!Q�\�$Ըu\�\�1\�#D�+.\�޶��\\S\'❬�Nh��c��\�DZ�3��ɢ\�%\�\���3����}\��9!j4)\'\�j�V9H�\��+\��\"�{���!7j&4ڔgq����ܤŪ\�RX#V�?\�\\\�\�\�P\�fs#�\�%)\�1X�ǧ&KM���\�rl��MrӅm��K\��\��e�\�m[|p\�ŏM\rL\�Lr�E�\"R\�Ӊ�\�I�KM���G�\�E��0Gu���KO��#��$Z\ZL�xBP���\�RX�\�\���&D�B\�{�\�\�ᩙR0l�\�-\�؅vOQD���V\�6�̐��gʈ\�H\�q�)D\�21\�\�\�<��D\�\���1XՓԢN�Lo�\��J�L̳\�\��h���4\�Ìۋ�Q�IK\Ze\nfr\��\�\�7	��\�d��-S8���K3�\�\��&�4\�^�|W%*\�e�����%D%�ݍX��\�P\�F\'�C��4x�E\�DcD\�n��;(�W�11J7��LQ�L�$�1\��ㅖY�h�c����\�-pD�\�|\\omH&�N\�[Nty?\\���D�\�zl�cB�\�\�F:��\�*G�zi�V)Mfy���\�����Q����b\�\�CB\��\0�Eԣ\�\�\�ǦŦ\�\ZD�E\�1jN\"\�L\�#�K��U\':<�ϼ�\��\�XӉٸ�HO��<q+f�Tkď\r\�\"\�g�\�\0+\0\0\0\0\0\0\0!1A @Q02\"a#BRbq�\�\0?_-�$豢h�\�Ӳ1��c5I�	F&����|�,[X\�wCdH�$�!�d4��6Y�Ycg��\�b-��ǲ\��1ꐗFD�j\�\�\�(H�~;cc�\�Jc��	\�\�\�L�\"�҅\"(_\rl\�%!\��C�\�)rYc�嶎��$/�Ŵ\�\"R\�r2%\"R%#K�Yc{h\�\�\�\�\�dv\�t�\�l{1���P\�k;�^�̅\Z�\�[z�r>F�\Z�r\�zyH��`!|�k�1�$\�\�\�(!i\"1H[W�o{���!���3Q�i��d�D��h��\�\�)�-C�Ffv@���0��Ye�(��(��:gM�5���:�\�\�\�\'�)���(QLLJ(�����gs�8!\�z�b�$\�\�\�k�$�$.暳�i��РŤ(�Q_���bњ,͢\��8���::K��_I�\�\��\rQ�I/؏�#��\�B�bΘ�\����\�iq���\�����B\�\�\�\'M3�Λ01+\�^\�Q]�\�\�|wZڅ�\�Z\�ӑ��\�4e}�G��Co\�\�E�~+%*�\ZO�D�\�vi�\0Կ�\n�\�X\�\�d8�<c\�촉L嘳E\��\�On�N����`�\�#;\�ߝ��)E�B_�r\�j�sB\Z��$9X\�bt7bC�&8\�ү��^�v7J\�\�dFR�tl[I⬌Ի\rCNqd\�k�\�\�,E4�\�ђ\��=A\�x#��Mw\�&[9#).Û�e�S�<٩4t\��(�{o{v\�P�vBV�]\�i\�?��Ci�_����6t\����L\�و\�^N��\�Q�\0V^�͑�(�{��s\��$)�#ԏt�&\�U\�N��?�4��\�Y�k��ec\�nU�b����5B�$`��^�+j+\�8d��h�\�\'8ǻ:�Q�w\�*l�MH\��\��^����\�/۬�\�Ɋ�6f�a鲫����2���\�\Z�vE[.H\�\��G���\'���#�\�\0&\0\0\0\0\0\0\0\0\0 @!10APQ2�\�\0?\�.E����(�Cb�\�ُ~��Yh���┣\�l�~{t�7!2�y\r�\�{(e)uE)�c��\�z=iJ|�\�������x�M��	w:g��\�v�\�o7px6Ō!	\�\�n/,���\�?(��\�Y�/N�O6{1��/��k\�m!\�\�T�\�\�\�/Kv�I�K/L\�Æ?��W\�\�\�\�\�K?\�1�/v�x\�>��Z]a:i��am6����֔�7\"��hNI�Y\�?����BkYMŤ\�Q\��2W���I\�!�n\�4N\r�!鶏\��.S\�z7\r�\�\���=���)G�\�q�\�B2k\�=p�]n��S�=\�g�]�xB���\�4�Sq�\�\0/\0\0\0\0\0\0\0!1 \"02AQ@Pa`�Bq#bp����\�\0\0?�\0\n�\�/�\0-\���_\�s{l�\��\�Ҿ¼�Y��w\���1?O\�\�D-��{}պ��*�_�Kj;�\�\�\�e��ġ\�+��\�!�L\�\�\�_����G\�\�N�^\\�\�<�&�s\�N�\�N��\�\\O�S�%FӶ�v\�\�Dot\\5Y\�(�H���Q��OJ��%\\�(V�\�d�A|�\�\�\�\��p�O�[r����Oҍ>GY\�{c,\"�\"�\�R��C������zy�H\�w%3<�ظ�\�F\�-Lʡԅ��6�D�N=K�sV\�쓱HQ\r�a\���\�u&G�O\�b��\'I���$z:\��v\�\�w8��M\�\\ӌ\�R/�\�\�\�9�TQ8n\��J(���\'�ؓ�a\�Dbsg��\��]�O�s%o�%q;U\�\�\�9�/�<(��e&1܌V~Ib3O.\�\�|��3|��O&\���$\��|Yg	\�X\�\�\�\�\\�:\�\�,��9Qjq/:\'\�xS�\�\�Q\�\�bqX�C�\�\�Q(|\�\�|)\�7M�jB �%F|V+<HB�������\� �&�J9ܲ�,򜿟ajS��V\�||f1:\\��bQ\�҇t%qX�(�:�S�*K��\�Z��v\'M�EF\�\'l\�;��ǃ�g\n�\nq#�\n!\�,�g��[a\�Ԙ웝\��[gK�H\�Z�\�x#REiRt�X�m�\�8u���b����[;)\��[+\�	\�[/���)\�\�f�S�x�\�RQJuf�#��\�\0*\0\0\0\0\0\0\0!1A Qaq0�@�P��\��\����\�\0\0?!C��|�\��\�\�\�\�	\�4�ƪ�Bj\�&Q�\�c���b\�|\ns�&��u�9q2���\����E\�c�W�>~:�WL\�!4D�&�Z̄\�FL�ǫ\��\�[u-WB\�$\��\Z\'Y�bD\�\��>��lo��Bӏ�	t�HM\Z\�Z6臥o�<ha��|�GԄ-�T�B	G�\�!͂B���R���c\�}n\�\�.�-�\�!\"	d\�BдH\�n׍�\���k���B8(}(HKHAh�����A\�M����\�ql=��T�ڡtMP���B	h��!�I�\��.��!j%�\�\��\�ľ҄MB ���KH!B�:P��.����V?\�Au-		�B]HHHA�B	�\r�h���j��>� �\�	 �\�n\�HKPM�\��c\� �BZ� �P��\\�H��\�=y\'>���t�h}��\��X��i$BA��\�å�\��.DD��C8p.�(\�ɒ�B		\r\�8C|��\�}KB\�tbHB ��.�\0\�&�HHCp\�E?!/�B�H �� �����n�����BZI���TM��-OD0		����\�`*<��	M%�%�ެ��EΑ!cJe(�B\r薄0�#�=�\��7\���b$\r1�R\�_��4BQ\�/��\"B��\�<\�t!\r�\�A2�{/ƾY���h�B	= \�\�\�4`9\�\�J�\�\��\�Y\�\'J[t&�B	Bb\n6� �ѴKB�c\�\��D���&��� \�\�ЌTON�l8ՉBe(\�\�e�	�\�	�B	h&Zz�\�\���2��,_�c~���A�b,\�]=\\\�ǰ�L�}p�*R��=���(\�\�KL=xV-C\rhz\��\�]JR��2\'6m{3\�SMƷ��\�B\�\�\r^��3i.�KC�\�ze\�A|+\�)K�o�<�Lot\�\n\�\�\�����\��7�x�\�K\�\�\�Mh`\�!\�Z;t>D���\�/�t]iJ_\��G\�\�\�\�d�6c\�ɭ\�yo퍱%�%�<	�̌\�ߐ�\�b\�uD7n݋LB�mF���\�=W\�R\�t��{rn�k\�\�6Fa�{/.̓�\0#�.\����1��\�ݙl\�\�\�%�/Xm\�\ZR!��d���Yb\�\�u]JR��/\�@\�e38�\0\"dU7ᑞQ\�f\�\�fa&\Z��*��8���.8\'�\r#\�\�R*Giz���P�O\�\��\�d6R�T-.�)JR���c#��\�\�\����\�\�q\�ٖ{Ϣ\�U{�-\�;�\Z\�\�\�\�\nN:]�oǞ�GlN��\�&���%�/\"\�a�\0@o�itR���E�ɶ�~���Y��\�G�\�#t\��YB7�\�\�\�D]�0dī\�\�#�wr�\rW�\\���\��cn\�Aa\�1w(y͚�5��B\�|��xIrS��A\�!G�,Ly\�s��\�-ř�whsoQT\ZMn)L\'\��CY;\�d.P[I�t)q<T\�]\�7��`0\�\�\rS\�\�a�`�!��`|Np\'��\�-n�`Z-�!Z-a!sxfK��{\�ň+\�\�X�j�,<\�%�*M\�n<	�%�6\�h�\�n\�\�uU�F7�\�\�Ļ�\�\�\�W�\0c\�d=�n�	j�\�r�W	Dnn\n�Q4��0}R�\��J\�b\\\�c՟&���G���\�Z!Z!G\���3���� .\�\�	�\�T񉦻�İ�\�S�\0R0T�Q7Н���W��A\��6����*F̈́�<\�\�Ï\�z0�c�;߁	q\�[ʩ�I\�lh�Q�Y�$�\�{L\r�ȇ6J^lK���@�j!����N�\�0<=�\�\�\��F��\�\�0y�8�azq��ب�-����lY�ݛ��v.\�r��\�k�U��F�����rTh#Ռk.ȗ�B\�\��A\�<M�\�q�o����E��]j\�#\�a��FAd\�Y�k��\�\n1\�\��a.Ljc��\\�\�Cf$��1rUg~\��IܾG3A\�f�wg�.v\'a��l�\��L����\�=����\�_eP�⽳(yNL|�P�Fʶ6>?#�X��+Ș�\�<ڇ�}�\�mH\�lkl\�Ѷ2\Z�4j1>P\��@�I\�\�\Z\�8/\n\�\�l�Y�\'\r���\��\�\�/\�]���}\�љÚ]\�_D\Zk�����8%��\'O\�z���7S�l�l��\�3\�LIxlB�Ș\�D\�n�R\�f�\"\�1v\�C+a\�wG³	l�9o,������\�Ǔ��>F�6��\�\�5�\�M\�b�y\�M\�m��\�\�i�~�D\�2\�\r�D3z�&��A+y�\����\0�{ħzL	 \�\�cU��{dYW4v\�D�72r2\���d��\"\�>\Z\"�\"ky\�\�\�\�\�\�؄&\�\�1]���!c\"\�jPd��	c\"T͕�ǄzK�`R�G�\r�OK��\�H\Z�=\rn�~\�O� n\�;\�].!Ș�\r4m�q-K\�Y�v�r\�}�\�0�f�\�%*\�\�c*�1\�7\"1���\�ȱ�\rA\\�\" \�\�\�t�hn\�ehB�gq��\�W�ֽ\�}�\��֗Ea���C\Z���$�D �A��:y֊�h��A\�\�.�%N�۸]�V�C�b?�4,�V�\��\�(+��z^G�5^\�X\�&mE�j=~S\�]�\�\��\�S�\�\"\�\�FL��\�%�N�\��,��}��\�F�\�HM\�2\�\�B�\�HnQ���Gk���9�\�X�\�\'q\�\��\�x��\�\�sE�\�t%l���.��b�&)�c�{�7\��Py܂\'�me�ffc�6\�b/۴x\�M2�Is������{`[\�X?\"���&&�H\'�\Z:GnNrEX��w��\Z���	�0|\�\�\�5��6��N�v\�\��\Zn(�n����^�Pq�i��`\������BI���\'�\�dl�]��..��^�c8�G<;��\�t\'�_tG(���\n\�I�B�D8-�\r\'��\�8a�\�#�\"%V>\�\�K\���\0(\�\�#��\�agC�\�l{8��ƐQ�A	\�\�C��\0\�&��%j���6\�p�\�\�\�^\�V�L\�a\�U��\ro�oBc\Z45\n~�\Z\��\r�\'v7�\�9�Sl����	j�\��n���=�\�\�ڋyko��\\7\�e�\�|`\�rCd�8h�N����{\�N\0%FH\\-�T\�D?\�\��\r�Ҙ����pnZmۆl%�!s4ch�S�a*�R�O\"�	��3�\�jb�F*plC!��;W�\�?g{&O���M\�^͕j\�Jr0��`�\�\�dvO	\�9�����\�\�=Z\�G<\��\0�r&���\�-\nr˺c&G�OhO\�d7l\�\�8c�A\�K\�E\�\��)cK6n�c$��\�\�c#���\�-�3��\�A�Ť�\��~GHi	���\�b\�`\�F\�hj�y.���\�\�ϝ\�-\�>\�S�\�\�#�;\�+,__��\�\�\��\�7���͵\�F턹�:%�e�A�\�2ۤ\��X���2\�*g�m\�Rg����꡵ ��)J7}\"ќC\Z�M�Ɂ��\�(��s�D\�i\�B�\"t\�mi{�=�͌��=G�I�0\�8ҞlH\����\'�w�\�E�S��ѻe���נi���_$�q2\�l�?��\��1N\�OcǑL\�$��\�\�6\�\��(�\0\�F��\0@��\�;hQ��慣\��3�\'~�1�k��h!\�H[01.\�7�=&���i��fV\�&����p�Xl|���x6��;D\�u���*M�7\�A�\�؍�\�#\���_;���QC��xa\�:`\�b�\�\�(\�<\�A_؜Rk�;��$\�<\�\�n\�-))\'Kx7\r�{\�Ҳ1@ؔ������1Y�\�W�a�*�e�/a�LdN}�JM�	���\�\�7\�Ld�K�`�� !��\�i\n\�_Ѳ��g1�\��t�c�^猈�\�G�\�����!\�.\�D,����\'q϶�	w\Z\�m8-�A�Nwf����\�\0\0\0\0\0\0��dT���=�w{��\�t���?�\�͛�u���\��\�\r��\�L�}?�=:2Kо\0�~4R)~��b\�\�\��9���[��6p\�ƞ�7\�v��\0,�OƪI�rB\�Υ\�\�q�\�\\N��\�\�eS�v�/%t��[y�<CK,\��>۶\�ʲ�T\�q-F\��5��\"H��\�1[�\�\�o���+\�%c���\�\��\�\�\r\�Bh+duh��6\"Rۨa��Zi\�\�\"\�_AU\�\'֊����\�\nO��&\�\��\�\��JT\�]}o\�y��y��Z\�F\�\�\�du�ϑ\\U�Y�Ƒ\�qtX\0G��\�\��\�_��6��`��ڨ�?�Je>6lM\r�C��\�!�\"��vD%T獜\�)&9$]\'�9JD\��R}0\�B%\�OD\�&�!F.�_lU\�K\'\�v�)w^�q�:>`����р;�-\�Ѵb\�\���?z���\0�\�pΦ���E�����xc�΃/���Fj5q~\�\�!`����\�b�ʰ��w��y\�����1\����\�vJ������m�_�6�[�\'�<��EW\�S|+7\�4\�%\�\�g�WLB�{�.=��\�\�\�i�;\�\�}\�e\�5\�Oz�1��\���O:\�_�H|\�\�J\�%\�%d�}mU$Õ\r�s9�\�v@��c�Z[e,�IU .��av�Fee\�i)\�\�@�\�,\��\�\�%I�\�#\�S�*D\�|NY\'�\rk~ޅTf*\�ɋ<^�\��L$���`\�_u�\r�I���]覮ٛ\\}0�H/�\�\0\'\0\0\0\0\0\0\0!1A Qa0q�����\��\��\�\0?�G\�g�6,���C�����D|���A\r�m���g��w]�p�Ȉ��&9\�6x��ݻ0�)�q \�b#�\�C��ُ�\�\�԰\�G�	p�D~��r��\�\�-�1�e.\��uYA�Ȏw�c�\�p�\�\�\�<[\�#kh�8:[�>o\'��N!/�S�xd�Ivݫ2\��9E�ĻN�9U/&�+׈FG\�c�	�o8G��\n[�\��f�𺠆A�~�\���m\�\"�\�b�\�B\��|^0\��#翢[l�\�,%�\�\�\� YlBy�!8\"�,\�~\�Gݥ�kW\�8\�.�F��[lDY��-�Ń��\�\�\�\�\�=\�>���Kb�!N#���<^P����$�We^-n\�쓝�\�xYxHB�\�\�,�תǴj<\�\�>��pu�����6퇓z�\�Xl��0�JL�\�3\�iJ�#^\�	�<=\��|\'\�l�yN��\0�xvB;���9ņ���\���q�Ye�]�\�K�?��\�\'ս\�<7fƺe@\�h��|n�<${�\'�\'\0�\�E��y�Y\�C�c=,�9w��\�~\�\�$��\�\�\�̲|BA�a\�X� z�\�m�b#��1գ�x\���#Y�\��\0\"�젘$�\'WT9`\�u$~ևW^$�\�LdoIK]\��\�\n\�܂#=\�\�	\�o�=\�^\�r;��\�:KhN&7f\�vv�vn\�I}\�^f\�3�\0e�\��֣���]�\�M�s\��	)��K\�O\�_v�ۣ�O8\�ĵ���mgs�\�F\�A��\"�*�\'��\�\�\��Gl�\��\rjY\���&�\"Ʊ\'\�R�\�XPW�i�\�&pd08�x��v\�hhO\�rq�-�x���\�\�\�\�\�\��\�\�Y$��hH&zm\�\����\�?��Geٛ#�����\05�ȿ!�\�{\�\�2g��\�z��1ZxI\�6g�8m��Ku��\�\��$l\�I\��\����ul�����d7ȝ\�P�Ԟ�m\�\�\r\�g𻻨��Y\�<=�:�Ɓ��u\�=S\�v\�3�{��x6\�\�\�\�?3��y\�/��\"\�ؗM/\0@0\�A\�T\�߈��oa�\�\�\�/\���ܲ���\r�@��\��\0����\�\��\�s\��^\�lëQ0�\�\�|\�`�Ȧ+\�^��	��5�	��&%���Ѣ\rn��;��\0զ\rxd�!W�\�\0\"\0\0\0\0\0\0\0\0\0! 1A0@Qaq�\��\�\0?��>:�W׶7�	D_���\�xj�E�+/�j\�^\�,�!\"q7>���\�\\ �ؘ�`��)�.V`؞/\��.z�^\�YXn2���r��}��\�\�%\�	�h2ʭ�;\\�J_����I�e\�\�T9��฿/\���p� \�A\�.�K�R��./\�JQ�l\"E\�xR���.�0\�	|e7�\�)K�Nh�Hˆ�gb����\�=�h�5\�J7���D\�NƿQѴ\'\r��\�g�\�<\�Z\�-�#)K��1\"�(�EL��C\�zB�\'�_\�\�Bh���\0\������0x��bB|w\�c��\'�\r!��H�Z�!	�\\^ho\�mطБ�	BG\�&W�FR�\�?�3���/\�j	V5\�E�\Z\�?�~\rt[��\�	�ĕ	�\�M2���@q�U�\�Rk5��+D8\�y���BI��\'Ѣ�14\�Aa3Hj�Cb�hN\�_H�Y5���Q\�f�\�U��\�:	���z\�B\�\�6$\��M\�\�쇆�0\�}�<!�I \�2\�Ǿ\�\�6t}\n/Fѧ��$���QD\�\�k�7\�\���\�9-3Ohm\�\�ؑ�!�\Z�1����>�\�o�T$\���\�<_�\�\�!;��C�7�\ra\�D����_\n��\�ڄ��R\�H[\�F�[�\�Nx=	\'�k\��.\��\�\0(\0\0\0\0\0!1AQaq� ����\�\�0���\�\0\0?M\���я\�Q2H�<!\�_�F\��jb��\�o�䄨���p!�W!WiR\�\�\�\�SBy��9{�$\�SSO\��f\�\�yfY����u��xk�\�u��m�M_ B0%bT1\��! B��\�%C��V#*	�5��\�̩�X\�Ms#6\�,\\r�2�s\�\�\�\�a\�:��\�J�\�P�Vpwp3*�<[�\�u6�A�U\�\�!\Z�p@��!B\n�l@l���9m\�0F\�\�8��u\�2ၴ1\�\�ɋ��r\�;�Q\�\�x�E4m��c�\rt8�!+\��BR\�ϘJ\�\�1�m��3� \\B\�!��\�\���P \��\�p���f3\�\�\�nfH��ܩQ\�\�1�L�i*\�K�b!\�\�@�R�\���\�x,0�� ���@�\n�i!&8*T�\������\"\�\'7*�-�dm�,��=FU\�1��Vѹ�y�0�\�*�\�3�\�s\�w\�!X\�!�\�\ZB�OT�\�\�f!�jp�و @\�\�\0\��p10Y��\�1\"\�F�ȱ\�9��\�\�1��x���\�k1�\�\�\�6��j�9�n#{\"~\�%X\�\�ߨ�\�.c�� �An�\��+@�\��a*\r��u�P\�[�u�գ,\\\�[�\�\�B1b���\��vl\�^\��\0\�qP\��.0�\�\�b�w\�b��\�;�\�G�@�f\�AT\Z�\0�<L�\���I��W$�����\0��\�B4��\�w�p\�\�<\�?���+K�\�&(+R\�F6�nR\�3	�\�cS `(��\�\"\�\n�� ���\�Pl�f�M�3 J�2CD:�ҙ\�x�x�\�Y�W$Q�c*ų\�n\�\�x\'U�6�\�\�U~�Wר\�V.��\�T=@o�1�0�0�\�	�BF3\�<DBe.\n�̨89��A��\�d\�ᨸ�\�^c*�|�U׏Ō٭JW�x�u\�|\�P#*�(��\�:\�\��	��#�U\�0A|�r>�,@ị`Zh\��nW�.y\�B:�\�\�\\X�\�\�ꯋ\�Ö\�\�s�\�\�1\��\0*�poW( K�\��c�;�\�b�17\�`\�q��\�?X0/��_%SC,o\��g\\���g�\�)\��&��JM��A8���#\�2��`�&.\0�P�$��6VL\�i螙IeYL�q\��j�\�FQN��*�=\��*�p�$\�b\�@\��Ǩh�Q\�k\�\�b\� B\�\�\�\�^�NꙦ>�mC\rK�*|\'9��%��X\�̼~$9��q�����Ď[��\�5}y\�%WǮ	C���\�PČ	Ew�0��\�I\'\�s�\���d&^��`@5�\�0���B��\�\�r\�\�_\0nߎ;�\�)�~xc\�(\�\�|A���\�+kx�ָg�\�\n�y�L\�8g\�za|Y��*`�EbL�\�0\�ɘ\�\�\�ww�/�擓q\�\���\0�@�\�Q3`\�\�\�H\��\�ޡ�\�$x\"�j \"�\�L\�	_���7\\E��]\�\�{��\�U\�\�J���O���\�$\"�ʃ���H%L\��8�\�03\�N/0\��p\r�\�2\�0�\�\�y&\�#$\�)sH2\�\��@�\����T%qT�t\"#\�5����\�IIfH\0�/<`�QAr�� �/�\"�\�V,8d٤\�(�\��1���ppp!*LVn\�T#�\�[[a1�\�|\0�\rQ3��3/2�\� `\0%�W`@\\%\�5��@�X	��f\�ь�S�_\Z�pB\�p�@��P��\��?�@�+0\�jT��8\�	J\�~c0��3c���\�b�*�U�\�p{��\'�r�ȅ\��;��f͗K�0\�*������*\�u����Y0��P\"pA�`pqb�\'��U\n?pͦ�\�L�8��\�Q�\�\"�\�T�\�F.\rw\r\���MG�T	P%OP%@\�\�D�N^*T�\\+jh+���r�Z�ZF�Q�7���!�\�2(a�\�a��2=\�l�8\�E�L�T9\�K\�X\�\��[|\���\�$	P��>e@�%B�B�.<�es�j	c(����灳\n7�\�Rד9�Hu\�Q�\����,\�q�V\�t��|#�\�r\�\�b���nb�n\\�e�\��\0\0�T��F\\\�\�K1ውX\�e\�)\rn$�\"�Ͷ/TEU�\r\�%\��x�M7>\\�B�8!��\�,u\�!.Թ��pe\�\���T�R�\�U0 �AA\�xʁR׎Ik/\�z!\�)5=n\"]ʙ\�G{���\�\�.[̴�Fk���!��.���0�7/��aG�(\�?�&l�T	P:�f��Y�S@#٨z\��/u����ZM�:4\�Ը0�TYp�$7T���\�=ˊ</�\\0`��\�UL��\��3��\�\����8W�P\��d\�~\�I�@\�7B���=1�fGR\�aM\'�Pjd�u���)�b�\�P�\�aɼ\�*\�Ԩ�2\��\�_ܹr\�888��@�\�}\�p\�\�hfɗ�\�Q*\�ume�k)�\r����\0\�\�u\�Z������B�f]J\�3\�\\ ��\�I[d\�C+�+b�\�@c��\�u�<�\\��\�0e��Bw J�$ޥ԰A\�n\�^)����\�\�1�j\�\�T�{A]gk�bڏ�\'\�f�7\�5[��M}D\��0�`��pn2@�(LZ,�ILi��)PC�z̺�,s`�5X1E�8!�����\�p`\�� B��@�.\�\�Y�J\Z4�6Tv��V�&-�H�3�qk��(3\���cC\�u\�0�?;��\�VV�\0I=��a{�\�\�DG\�q��G\�\�\�\�e\�\���H�<��zO\�LCTa�r[�m(��c\"J�\�K�\"\'�_�A�!B @� @�*�b\"�\�˥\�t�!auc��#p\r\�6Ԫ�|\�\�qwr��\�)iQ��|#(]X�T=y�7\�,Œ�\�e�Zb�$;�\�\��\�Y���V~�b\�wu�\0&\� q�\���)7\�\\�(�إk+��J�\�)Q����@�0`\��!B�%@��A )d3�W^cL.�\���Kq\�>�ʈ	���\0`Pf遆��Y(.��\"ʊ\��U@\�ԍ����\�\�c\�.\�\��8\��K}�t�ox\�e-<x���#S&-�\0�T�\0f>ʽ\�)���\�=���|8b\�\�*Ph��{�.KK�.0`��0aB\�A BT�����HZT\�\��?\�\nz�X.=Y=@��\�Pi��\�	�/��.�\�\�(Uy�w4\�5\�aEʫ�`h�)\�=^�\�\�\�ص\�/�F\�\�6\�\0�Ցm/>\�`{!@\�\�<_QH�ƾ\'|T=\�CO^&��\�RZ>\�`�r����\�ҟ�pe�r\�˃.5 ���\�8 A@�d%�\�\�{���^l��*����GM�]��|A�\�0\r5d\�3z���c8���*\0�\�p[.\�B.l\�L\�� \�\�4�\�[O�]L���ө�\�q+nj \n�\�T(V^b��\�̇� P=\�h�\\W%A>\�\�Ŀ�l�\�/Z�Q���&\�\�\�V���`O�8�;��t�=�r\���\\0`\�(~o�@���^>~�K\�5\����̑�\�V\�K\�Bu�+��l\�\�!~c\�\n�2\�B)O@]qfԶ���ak\�\�ъG$\�w 8O�_�\0�9 ��;�u!ä�\�7C\�h\� �f\�ulH d1!U�\�.\�6�J�t�	@\�\�)�t��\�S\�]+�\�S�B\�x	\�-���\�\�\"\�U?\��\�&5짨�>K�#e(>/�F1A�.C�\0F\�U\�� �(�\�C�(=���j�\0�`�h\"P�P�g�f(�9Xݣ]ܷ�\�/\�DR��\�?��\�C[P-f�l?|��R�eB˼A�z\'c�;q�0q�@\�g�va,b\���y6\�V����S�_=v#L|`\rޣ�z�nTW;r��`&݆\nh�S*2\�{,�QZY�\Z�kv���\�7X7�\�\�q�H��â�\�\��L��\Z��\�wu�I���\�F@N�U\Z\'����2\�x�\�_f1*\��N�z��*\�1`�\�K8a\�	�������Qܽ\�a��2X���\0�\�0�gG\"\�-~\�mJ}�Y?��\�CV?0�P\�y�#P\�5.\�_8�Ø�\�ܪ��\�|�!XE5K��Rݵ\n.˵����NK�&jwR�*\�/q\�\�\�)EMQik_p\0�/\r�A�xƲ�5 e�dw�(G�����\\9�S-D\�u\�}/�=I]5\�����f@Z\������?\�\\\�S\�r��\�O�}@��5��$�K\�	�pl\"j\�@\�\�-\�l*s\�1T\�{�bNN�\�+(\0,Z�M�qFlz�l?�����\�;�`��0P�q�/z5_\�G�\�BxR!�D%D\��t���tT\�G�\���[�Z!P\��\�(\�\�\�W�Lֲ�E4\�\"\0\�LMt^3\0��,$_)P\�0E\�\���S�CK��\�^Iz\0|�Z�l�*lv���\�<�\�:\�epb�3\0D\�5\r�\"��\\�)�\�@�\�2s~\"2G\�7\�@L\�BD>��\��E?\�\��O\��6�^5P��\�\�1��`�����?��M$E\�\�Z��*�\r\�	ZÈ\�0���u�`3du��\�P�`kr��S�\����\�p\�	\�\�Y�\�K\�ܢ��(\�\0f0G��r�{:����\����(�\�4C\�C��ؤ|�e\�Y`�\�\��4\�Υ�\�?�t-�\�\��\�,��\"\�+�\�*W\�-\�}\���i\�gŃւ�K\�\�́��p`�A(*{�\�/�X��=@�	�|O�\�\�*\�W\��\�%�n\��-\��RWK�H/DVE�EN�;zEk�|N�6Y�\��Âa�5\�\��\�\�X���;�D_	k.��\Z\�O�\�\0���\�\�s-�N[�p\"Z(Z�\�.eNJ\��HL��\�H�P3�t|T	!�1\r7���`(\�XL\�(F 3��T\r\�}\����6\�KD�\��{Bޠu+�X�~�^ \�O�\�Q��\��R\�~\��CKf��y�]\�\�}eY}\��\�6�yb�P�P2�V�C��,�) @�;��V��,J>\�\�\�fl�\��\�\�\�aq�#W�*0R��K|�@\�,\�\�\�\�Z^�|\�-��f{��R�[q1��!\�\"z;�\0r鱜աT�O\�e�<�f�#\r[�\�����IHisX�e\�y�+����\r%T\0\�逎�Ԡ\�Q,7\��\�n	Uo\\13\�4`\'�\\(TJ>a�zQ *&m�_!\�\�\�Q؅�\�ܤR\��mSԤ�&ڏ���]�\�Sp+-#�\�I\�T�@eN\��JC�!\���i@��e0��c�aO����\�9�ini̸\'.�Y\�^{���6GC|(\�`�5�J��\�e���sG\0\��\�jd��~�\r\�\�y�K߉��!��{�.ظ�\���ش����%^\"	�t\�9�N\�� �R�\Zn`�\r\�b���\�\�\�\�s(�3�Z\��\�\�\�MEƥ�?PgO\�h����o��H6>\�SFd�/\�\��~�;�\��\�\�0�\�\�X[d\ra�tJ�*\0y}��p��#? \\<+\�\r��\�o\�\�_1\�#f�e�eו�Lڽb]�Ҹ7�\�UB��%2�\�\�H ��X�F��\�3f�\�#w؎�\�`�\0�\� %�N\�ˮ�\�\�WD��o�IcmS\���c\�4=	��Vx\"�M��}@���A�q\�;zC\�\'œ=�+�dS���\��\�\�2�\�\�<��\Z��3\�2?��D�R\n��@h��P���ّb�B���\�T\��l�Ѽ2�	v ��Ɗf��A�\�d@��\Ze\�|\�2�r�\��JeD\'��^\�h!\�n,�^%\�P²\�C����9�Nl�ޢ�q�RW(��E���]\��\r���\Z��\���G�DV\�J2\�\��P�Y�\�4B�	�Ub.��[�-=�g�\�t*������F�@2\�`�@�\�	Z�\�l:5r�\�e3?pA\�\��\�3\��(\�\�L�y�e�?�����&S\�\�O\�Kk\�\\\�cАD��4��\0ɝ?g���\0�[~\"��*`U3~�\���\�A��zGo|\���\�\�`\�ybQ\��b\��J߉V(�S͡�\0e�SN(B\�u(*�701l0�P�$���P�J\�\�jX\�Q�H��1\"ձv\�0\�\�ŵQZ�^Y5\�=�\�L>X8v\�\riS\�`\�|��C^%i{%3(\����w����\�pH\�\�x��\�cN�D �	D�kj�5�\�R�v��b1\�W����\r\�\�\�d��%�*> \�S\03n\�(>�\0QmZ��\0�?�\"\��kD)�\�0\�p�`\�\�\�\���\��\n{\rG�\�������\�F�\�\����O\�f<|\n��zI�@��h�\��w��\�Z�\�\0�`\�\�z���\�(.(�,|��Aq5\����\�!�\�\�\n=İ�\�v\�(\�\��p/bSFn�f̽\�M\"\�)Cdċ/�bAp�\�-i�Pd�0WQ��e.\��\n\�ĭA�g�B\� a�\�\�\�\n�\�\�;ǈ\�\�1\�\\Ԯ\"Y�\�.�`���A���,��U\�\��\�\�x�\�@�Z7��:\�\�\�#�C�οHޠy$A\��B)\�\���D־\��\0Qu\�A��[\�\\ӈ<�}\�4��N�\�.\Z��\�\�▇�+[\�1\'r�\�H*���L���C�\�e{T?R�,E\n�e�1Ex^j\n�����^��\�\�S\�Z��Aaψ��L\�3]TL~b��\�[gR\�\�!fY��u|\\�E\����P-.\ru,tS,����f�L��\�\�\\�E�0�\�\�30\�a��\�͉�e�`D_%c��ց@J󉢖�[�\�\r�/h;>�\�U+}\�RX� EwP�_��`� \�QK��AP���\���\�3W\�f(��	�o���3/:\��!J��O�A�a\�6?�>v�׏��a͆�����,�r�di\0\�ieAR��\����,-�(�\�\Z`����DYz��1Ic:�*�\\�\�DKMU\'�b;f\�D\�\�\r\��P�\�XM�U�{3Ũ\�\�n����\�)f�y�\�\��C�SZ\�?R�\n4\���K\n,�\�#+�\r�s2^\�\�\�\�\�z�\��e%X�1��[c.��bulX��F\�n�]y%�(\�M����\r\�\��\�\"ŗ\'�P��F�h\r\�z\�*�kLz稈1�j�\�Ɵ\��\�\�v�T)ӱ\�ܕr\�Z��Pٹ\�b\�aV�_�\�c�YD��6����\�/ņ;̵\�\r2Նx��\�\�\�\rD\r?R\�M\�)(\��f��=A��p[K�}Ց�ZX�!�b�ja��\�(�W\�\�#�>�R\�>f����\�1=�*\�L+\"��\�L/���/��\0[�\":�\�\�*�{.�\�\"�4?\�F�\'�\�QV�P��GE+����\'^�qpV������]|��R\�\�U�\��\����!�*@/\�� Rq�[�aF|%,Ec\�\�|1�k|pF\0{�R�1��i�3)�W�����\Z��bb+0�\�ϩX�\rԠ�A�;bz\�P��Ƞ\�ر�\�d\�\�\� \�G\n\�%\�EQqT&�-X�\�\�w��\�c5�ƥW�����ڙh\�X���$�S�d��@]���\�\�b�yY�~�/�\���b\n�]�\�]6\��\�θ��v@d�2�����]�\�j�(��&��\�\�c\�\�!�}G;��tʤ�\�k�o1V\�rl`ɽw���A�Av\�F�e\n����\�?\�;UCe\�\�\�9�(A{Pi(.\�\�\���\Z�\�7).�i}4\�J~\�@���\'�\�',0,'egypt','2019-02-20','hi how are you?',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_have_users`
--

DROP TABLE IF EXISTS `users_have_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_have_users` (
  `phone_a` varchar(20) DEFAULT NULL,
  `phone_b` varchar(20) DEFAULT NULL,
  `acceptance_status` varchar(40) NOT NULL,
  KEY `delete_update_user_a_constraint` (`phone_a`),
  KEY `delete_update_user_b_constraint` (`phone_b`),
  CONSTRAINT `delete_update_user_a_constraint` FOREIGN KEY (`phone_a`) REFERENCES `users` (`phone`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `delete_update_user_b_constraint` FOREIGN KEY (`phone_b`) REFERENCES `users` (`phone`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_have_users`
--

LOCK TABLES `users_have_users` WRITE;
/*!40000 ALTER TABLE `users_have_users` DISABLE KEYS */;
INSERT INTO `users_have_users` VALUES ('01064621157','01064621157','accepted'),('01064621157','01064621157','accepted');
/*!40000 ALTER TABLE `users_have_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacation_balance`
--

DROP TABLE IF EXISTS `vacation_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vacation_balance` (
  `id` int(11) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation_balance`
--

LOCK TABLES `vacation_balance` WRITE;
/*!40000 ALTER TABLE `vacation_balance` DISABLE KEYS */;
INSERT INTO `vacation_balance` VALUES (30,'Younger Employees'),(45,'Older Employees');
/*!40000 ALTER TABLE `vacation_balance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-06 18:04:07
