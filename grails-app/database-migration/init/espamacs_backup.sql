-- MySQL dump 10.13  Distrib 5.6.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: espamacs
-- ------------------------------------------------------
-- Server version	5.6.28-0ubuntu0.14.04.1

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
-- Table structure for table `arterial_thromboembolism_type_arterial_thromboembolism_place`
--

DROP TABLE IF EXISTS `arterial_thromboembolism_type_arterial_thromboembolism_place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arterial_thromboembolism_type_arterial_thromboembolism_place` (
  `arterial_thromboembolism_arterial_thromboembolism_places_id` bigint(20) DEFAULT NULL,
  `arterial_thromboembolism_place_id` bigint(20) DEFAULT NULL,
  `arterial_thromboembolism_places_idx` int(11) DEFAULT NULL,
  KEY `FK_iddj7btuqinrli6aeovqwcyhh` (`arterial_thromboembolism_place_id`),
  CONSTRAINT `FK_iddj7btuqinrli6aeovqwcyhh` FOREIGN KEY (`arterial_thromboembolism_place_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arterial_thromboembolism_type_arterial_thromboembolism_place`
--

LOCK TABLES `arterial_thromboembolism_type_arterial_thromboembolism_place` WRITE;
/*!40000 ALTER TABLE `arterial_thromboembolism_type_arterial_thromboembolism_place` DISABLE KEYS */;
/*!40000 ALTER TABLE `arterial_thromboembolism_type_arterial_thromboembolism_place` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_condition`
--

DROP TABLE IF EXISTS `baseline_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `ntprobnp` double NOT NULL,
  `albumin` double NOT NULL,
  `alt` double NOT NULL,
  `analytic_date` datetime NOT NULL,
  `ascites_id` bigint(20) NOT NULL,
  `ast` double NOT NULL,
  `bilirubin` double NOT NULL,
  `cpk` double NOT NULL,
  `creatinine` double NOT NULL,
  `crp` double NOT NULL,
  `echocardiogram_date` datetime NOT NULL,
  `hemodynamic_data_average_arterial_pressure` double NOT NULL,
  `hemodynamic_data_average_arterial_pulmonary_pressure` double NOT NULL,
  `hemodynamic_data_cardiac_index` double NOT NULL,
  `hemodynamic_data_cardiac_output` double NOT NULL,
  `hemodynamic_data_catheterization_date` datetime NOT NULL,
  `hemodynamic_data_central_venous_pressure` double NOT NULL,
  `hemodynamic_data_diastolic_arterial_pressure` double NOT NULL,
  `hemodynamic_data_diastolic_arterial_pulmonary_pressure` double NOT NULL,
  `hemodynamic_data_hear_rate` double NOT NULL,
  `hemodynamic_data_pulmonary_capillary_pressure` double NOT NULL,
  `hemodynamic_data_pulmonary_vascular_resistance` double NOT NULL,
  `hemodynamic_data_systemic_vascular_resistance` double NOT NULL,
  `hemodynamic_data_systolic_arterial_pressure` double NOT NULL,
  `hemodynamic_data_systolic_arterial_pulmonary_pressure` double NOT NULL,
  `hemodynamic_data_systolic_effort_index` double NOT NULL,
  `hemodynamic_data_transpulmonary_gradient` double NOT NULL,
  `hemoglobin` double NOT NULL,
  `inr` double NOT NULL,
  `lactate` double NOT NULL,
  `ldh` double NOT NULL,
  `leukocytes` double NOT NULL,
  `lvdtdd` double NOT NULL,
  `lvef_id` bigint(20) NOT NULL,
  `lvesd` double NOT NULL,
  `nyha_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `peripheral_edema_level_id` bigint(20) NOT NULL,
  `platelets` double NOT NULL,
  `potassium` double NOT NULL,
  `right_ventricle_dilatation_id` bigint(20) NOT NULL,
  `right_ventricle_status_id` bigint(20) NOT NULL,
  `six_minutes_date` datetime NOT NULL,
  `six_minutes_test_distance_metres` double NOT NULL,
  `six_minutes_test_distancev02` double NOT NULL,
  `sodium` double NOT NULL,
  `tapse` double NOT NULL,
  `urea` double NOT NULL,
  `volume_end_diastole` double NOT NULL,
  `volume_end_sistole` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tpye45owuxj34dhdgebw6xmx2` (`ascites_id`),
  KEY `FK_js8p7u2yy55s47atxorsb887j` (`lvef_id`),
  KEY `FK_4531llr5hdg58fncccretfkeg` (`nyha_id`),
  KEY `FK_1m3vc3c3m42cvyyv5jjgqscd4` (`patient_id`),
  KEY `FK_om7etnu72fqai9v456ex2cikh` (`peripheral_edema_level_id`),
  KEY `FK_k6via5tbpj7it8wddi1y7djs3` (`right_ventricle_dilatation_id`),
  KEY `FK_1r0re2d7menov41irbfg0e4kq` (`right_ventricle_status_id`),
  CONSTRAINT `FK_1m3vc3c3m42cvyyv5jjgqscd4` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK_1r0re2d7menov41irbfg0e4kq` FOREIGN KEY (`right_ventricle_status_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_4531llr5hdg58fncccretfkeg` FOREIGN KEY (`nyha_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_js8p7u2yy55s47atxorsb887j` FOREIGN KEY (`lvef_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_k6via5tbpj7it8wddi1y7djs3` FOREIGN KEY (`right_ventricle_dilatation_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_om7etnu72fqai9v456ex2cikh` FOREIGN KEY (`peripheral_edema_level_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_tpye45owuxj34dhdgebw6xmx2` FOREIGN KEY (`ascites_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_condition`
--

LOCK TABLES `baseline_condition` WRITE;
/*!40000 ALTER TABLE `baseline_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_condition_type_aortic_valve_status`
--

DROP TABLE IF EXISTS `baseline_condition_type_aortic_valve_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition_type_aortic_valve_status` (
  `baseline_condition_aortic_valve_statuses_id` bigint(20) NOT NULL,
  `aortic_valve_status_id` bigint(20) DEFAULT NULL,
  `aortic_valve_statuses_idx` int(11) DEFAULT NULL,
  KEY `FK_rje4mxxklro6muwvif12m0f7t` (`aortic_valve_status_id`),
  CONSTRAINT `FK_rje4mxxklro6muwvif12m0f7t` FOREIGN KEY (`aortic_valve_status_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_condition_type_aortic_valve_status`
--

LOCK TABLES `baseline_condition_type_aortic_valve_status` WRITE;
/*!40000 ALTER TABLE `baseline_condition_type_aortic_valve_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline_condition_type_aortic_valve_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_condition_type_medication`
--

DROP TABLE IF EXISTS `baseline_condition_type_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition_type_medication` (
  `baseline_condition_medications_id` bigint(20) NOT NULL,
  `medication_id` bigint(20) DEFAULT NULL,
  `medications_idx` int(11) DEFAULT NULL,
  KEY `FK_nmbl6mol868fb39jql9lbtrdi` (`medication_id`),
  CONSTRAINT `FK_nmbl6mol868fb39jql9lbtrdi` FOREIGN KEY (`medication_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_condition_type_medication`
--

LOCK TABLES `baseline_condition_type_medication` WRITE;
/*!40000 ALTER TABLE `baseline_condition_type_medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline_condition_type_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_condition_type_mitral_valve_status`
--

DROP TABLE IF EXISTS `baseline_condition_type_mitral_valve_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition_type_mitral_valve_status` (
  `baseline_condition_mitral_valve_statuses_id` bigint(20) NOT NULL,
  `mitral_valve_status_id` bigint(20) DEFAULT NULL,
  `mitral_valve_statuses_idx` int(11) DEFAULT NULL,
  KEY `FK_c8kkn9usk1cbpmsjj8nwxmjqd` (`mitral_valve_status_id`),
  CONSTRAINT `FK_c8kkn9usk1cbpmsjj8nwxmjqd` FOREIGN KEY (`mitral_valve_status_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_condition_type_mitral_valve_status`
--

LOCK TABLES `baseline_condition_type_mitral_valve_status` WRITE;
/*!40000 ALTER TABLE `baseline_condition_type_mitral_valve_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline_condition_type_mitral_valve_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baseline_condition_type_tricuspid_valve_status`
--

DROP TABLE IF EXISTS `baseline_condition_type_tricuspid_valve_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition_type_tricuspid_valve_status` (
  `baseline_condition_tricuspid_valve_statuses_id` bigint(20) NOT NULL,
  `tricuspid_valve_status_id` bigint(20) DEFAULT NULL,
  `tricuspid_valve_statuses_idx` int(11) DEFAULT NULL,
  KEY `FK_2jppsw2yje5tgysa1ogbfd5j7` (`tricuspid_valve_status_id`),
  CONSTRAINT `FK_2jppsw2yje5tgysa1ogbfd5j7` FOREIGN KEY (`tricuspid_valve_status_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baseline_condition_type_tricuspid_valve_status`
--

LOCK TABLES `baseline_condition_type_tricuspid_valve_status` WRITE;
/*!40000 ALTER TABLE `baseline_condition_type_tricuspid_valve_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `baseline_condition_type_tricuspid_valve_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` (id,version, name) VALUES (5, 0, 'Almeria');
INSERT INTO `province` (id,version, name) VALUES (6, 0, 'A Coruña');
INSERT INTO `province` (id,version, name) VALUES (7, 0, 'Albacete');
INSERT INTO `province` (id,version, name) VALUES (8, 0, 'Alicante');
INSERT INTO `province` (id,version, name) VALUES (9, 0, 'Asturias');
INSERT INTO `province` (id,version, name) VALUES (10, 0, 'Badajoz');
INSERT INTO `province` (id,version, name) VALUES (11, 0, 'Badalona');
INSERT INTO `province` (id,version, name) VALUES (12, 0, 'Barcelona');
INSERT INTO `province` (id,version, name) VALUES (13, 0, 'Cádiz');
INSERT INTO `province` (id,version, name) VALUES (14, 0, 'Cantabria');
INSERT INTO `province` (id,version, name) VALUES (15, 0, 'Córdoba');
INSERT INTO `province` (id,version, name) VALUES (16, 0, 'Gran Canaria');
INSERT INTO `province` (id,version, name) VALUES (17, 0, 'Granada');
INSERT INTO `province` (id,version, name) VALUES (18, 0, 'Guipúzcoa');
INSERT INTO `province` (id,version, name) VALUES (19, 0, 'LA CORUÑA');
INSERT INTO `province` (id,version, name) VALUES (20, 0, 'Las Palmas de G.C.');
INSERT INTO `province` (id,version, name) VALUES (21, 0, 'León');
INSERT INTO `province` (id,version, name) VALUES (22, 0, 'Madrid');
INSERT INTO `province` (id,version, name) VALUES (23, 0, 'Málaga');
INSERT INTO `province` (id,version, name) VALUES (24, 0, 'Murcia');
INSERT INTO `province` (id,version, name) VALUES (25, 0, 'Navarra');
INSERT INTO `province` (id,version, name) VALUES (26, 0, 'Palma de Mallorca');
INSERT INTO `province` (id,version, name) VALUES (27, 0, 'Pontevedra');
INSERT INTO `province` (id,version, name) VALUES (28, 0, 'Salamanca');
INSERT INTO `province` (id,version, name) VALUES (29, 0, 'Sevilla');
INSERT INTO `province` (id,version, name) VALUES (30, 0, 'Tenerife');
INSERT INTO `province` (id,version, name) VALUES (31, 0, 'Toledo');
INSERT INTO `province` (id,version, name) VALUES (32, 0, 'Valencia');
INSERT INTO `province` (id,version, name) VALUES (33, 0, 'Valladolid');
INSERT INTO `province` (id,version, name) VALUES (34, 0, 'Vizcaya');
INSERT INTO `province` (id,version, name) VALUES (35, 0, 'Zaragoza');
INSERT INTO `province` (id,version, name) VALUES (36, 0, 'Andalucia');


/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `centre`
--

DROP TABLE IF EXISTS `centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `province_id` bigint(20) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m83d7vfwejqwmjv038ncacsv7` (`province_id`),
  CONSTRAINT `FK_m83d7vfwejqwmjv038ncacsv7` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centre`
--

LOCK TABLES `centre` WRITE;
/*!40000 ALTER TABLE `centre` DISABLE KEYS */;
INSERT INTO `centre` (id,version,province_id,name,service, address) VALUES (1,0,7,'Puerta de Hierro - BORRAR','Cirugía Cardiaca','Las Xubias de Arriba,   84\n15006 A CORUÑA');
INSERT INTO `centre` (id,version,province_id,name,service, address) VALUES (2,0,7,'La Paz - BORRAR','Cirugía Cardiaca','Las Xubias de Arriba,   84\n15006 A CORUÑA');


INSERT INTO `centre` (id,version,province_id,name,service, address) VALUES (5,0,7,'Complejo Hospitalario Universitario A Coruña','Cirugía Cardiaca','Las Xubias de Arriba,   84\n15006 A CORUÑA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (6,0,8,'Clínica idc Salud','Cirugía Cardiaca','Plaza del Madroño, 11');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (8,0,8,'Hospital Universitario del Vinalopó','Cirugía Cardiaca','Tónico Sansano Mora, 14, ');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (9,0,5,'Hospital General Universitario de Alicante','Cirugía Cardiovascular','C/Pintor Baeza s/n ');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (10,0,9,'Hospital Universitario Central de Asturias','Cirugía Cardiaca','Juan Clavería s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (15,0,10,'Complejo Hospitalario Universitario de Badajoz','Cirugía Cardiaca','Avda. Elvas s/n 06006 Badajoz');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (16,0,11,'Hospital Universitari Germans Trias i Pujol','Cirugía Cardiaca','Ctra. de Cañyet s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (17,0,12,'Instituto Cardiovascular Sant Jordi','Cirugía Cardiaca','BALMES 271 \n08006 BARCELONA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (18,0,12,'Hospital Universitari Clinic','Cirugía Cardiovascular','Villarroel nº 170');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (19,0,12,'Hospital General de Catalunya','Cirugía Cardiovascular','C/ Josep Trueta S/N ');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (24,0,12,'Hospital Universitari Vall d´Hebron Adultos','Cirugía Cardiaca Infantil','Paseo Valle de Hebrón s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (25,0,12,'Hospital Universitari de Bellvitge','Cirugía Cardiaca','Feixa LLarga s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (26,0,12,'Hospital de Sant Pau','Cirugía Cardiaca','Avda. San Antonio Mª Claret nº 167');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (27,0,12,'Hospital Sant Joan de Déu','Cirugía Cardiaca Infantil','Passeig Sant Joan de Déu, 2. ');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (29,0,13,'Hospital Puerta del Mar','Cirugía Cardiovascular','Avda. Ana de Villa  nº 21');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (30,0,14,'Hospita Universitario Marqués de Valdecilla','Cirugía Cardiovascular','Avda. Valdecilla s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (31,0,15,'Hospital Reina Sofía Adultos','Cirugía Cardiovascular','Avda. Menéndez Pidal   s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (32,0,16,'Hospital Universitario de Gran Canarias Dr. Negrín','Cirugía Cardio-Vascular','Barranco de la Ballena s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (33,0,17,'Hospital Virgen de las Nieves','Cirugía Cardiovascular','Avda. Fuerzas Armadas, 2.');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (34,0,18,'Policlínica Gipuzkoa','Cirugía Cardiaca','Paseo Miramón, 174. Bajo');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (35,0,19,'Complexo Hospitalario Universitario de Santiago','Cirugía Cardiovascular','Travesía de la Choupana, s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (36,0,19,'Hospital Modelo','Cirugía Cardiaca','Virrey Ossorio s/n\n15011 A Coruña');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (37,0,20,'Complejo Hospitalario Universitario Insular Materno-Infantil','Cirugía Cardiaca Pediátrica','Avda. Marítima del Sur,  s/n\n35016 LAS PALMAS DE G.C.');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (38,0,21,'Complejo Asistencial Universitario de León','Cirugía Cardiovascular','Altos de  la Nava s/n\n24080 LEON');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (39,0,22,'Hospital Universitario Fundación Jiménez Díaz','Cirugía Cardiovascular','Avda. Reyes Católicos, 2\n28040 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (40,0,22,'Hospital Central de la Defensa Gómez Ulla','Cirugía Cardiovascular','Gta. Ejercito s/n\n28047 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (43,0,22,'Hospital Universario Clínico San Carlos','Cirugía Cardiaca','Profesor Martín Lagos  s/n\n28040 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (44,0,22,'Hospital Universitario de La Princesa','Cirugía Cardiovascular','C/ Diego de León nº 62\n28006 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (45,0,22,'Hospital Universitario 12 de Octubre Adultos','Cirugía Cardiovascular','Avda. de Córdoba s/n\n28041 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (46,0,22,'Hospital General Universitario Gregorio Marañón Adultos','Cirugía Cardiovascular','Doctor Esquerdo  46\n28007 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (47,0,22,'Hospital Universitario La Paz Adultos','Cirugía Cardíaca','Pº de la Castellana nº 261\n28046 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (48,0,22,'Hospital Universitario 12 de Octubre Infantil','Cirugía Cardiaca Infantil','Ctra. Andalucía  Km.5,400\n28041 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (49,0,22,'Hospital Universitario Ramón y Cajal Adultos','Cirugía Cardíaca Adultos','Ctra. Colmenar, Km. 9,100\n28034 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (50,0,22,'Hospital Universitario Ramón y Cajal Infantil','Cirugía Cardíaca Infantil','Ctra. Colmenar, Km. 9,100\n28034 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (51,0,22,'Hospital Universitario Puerta de Hierro Majadahonda','Cardiovascular y Torácica','Manuel de Falla, 1. \n28222 Majadahonda (Madrid)');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (52,0,22,'Hospital Universitario La Paz Infantil','Cirugía Cardiaca Pediátrica','Pº de la Castellana nº261\n28046 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (53,0,23,'Hospital Carlos Haya Adultos','Cirugía Cardiovascular','Avda. Carlos Haya, s/n\n29010 MALAGA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (54,0,23,'Hospital Universitario Virgen de la Victoria','Cirugía Cardiovascular','Campus Universitario de Teatinos, s/n.\n29010 - MALAGA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (59,0,24,'Hospital Clínico Universitario Virgen de la Arrixaca','Cirugía Cardiovascular','Ctra. Madrid-Cartagena\n30120 El Palmar (MURCIA)');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (60,0,25,'Clínica Universitaria de Navarra','Cirugía Cardiovascular','Avda. de Pío XII,  36\n31008 NAVARRA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (95,0,25,'Complejo Hospitalario de Navarra','Cirugía Cardiovascular','Irunlarrea s/n\n31008 NAVARRA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (96,0,26,'Hospital de Son Espases','Cirugía Cardiaca','Ctra. de Valldemossa, 79 - \n07010 Palma de Mallorca');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (97,0,26,'Policlínica Miramar','Cirugía Cardíaca','Camino de la Vileta 30\n07011 Palma de Mallorca');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (98,0,27,'Complexo Hospitalario de Vigo','Unidad de Cirugía Cardiaca','Rua Pizarro 22 36036 Vigo');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (99,0,28,'Complejo Asistencial Universitario de Salamanca','Cirugía Cardíaca','Pº San Vicente , 58-182\n37007 SALAMANCA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (100,0,29,'Hospital Virgen del Rocío','Cirugía Cardiovascular','Avda Manuel Siurot s/n\n41013 SEVILLA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (102,0,29,'Hospital Virgen de la Macarena','Cirugía Cardiovascular','Avda. Dr. Fedriani nº3\n41071 SEVILLA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (103,0,30,'Hospital Universitario Ntra.Sra. de Candelaria','Cirugía Cardiovascular','Ofra s/n. La Cuesta \n38320 La Laguna. STA. CRUZ TENERIFE');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (104,0,30,'Hospiten Rambla','Cirugía Cardiovascular','Rambla de Santa Cruz 115.\n38001. Santa Cruz de Tenerife');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (105,0,31,'Hospital Virgen de la Salud','Cirugía Cardiaca','Avda. de Barber, 30. 3ª Planta Sur.\n45004 TOLEDO');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (106,0,32,'Hospital Nisa Virgen del Consuelo','Cirugía Cardiovascular','Callosa de Ensarriá,  12.\n46007 Valencia');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (107,0,32,'Hospital Clínico Universitario de Valencia','Cirugía Cardiovascular','Avda. Vicente Blasco Ibañez  17\n46010 VALENCIA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (108,0,32,'Hospital Universitario de la Ribera','Cirugía Cardiovascular','Ctra. de Corbera, Km. 1 - \n46600 ALZIRA (Valencia)');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (109,0,32,'Hospital General Universitario de Valencia','Cirugía Cardiaca','Avda  Tres Cruces s/n\n 46014 VALENCIA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (110,0,32,'Hospital Universitari y Politécnic La Fe de Valencia Adultos','Cirugía Cardiovascular','Avda. Campanar nº 21\n46009 VALENCIA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (111,0,32,'Hospital Universitari y Politécnic La Fe de Valencia Infantil','Cirugía Cardiaca Infantil','Avda. Campanar nº 21\n46009 VALENCIA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (112,0,33,'Hospital Clínico Universitario de Valladolid','Cirugía Cardiaca','Avda. Ramón y Cajal , 3.\n47005 VALLADOLID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (113,0,34,'Hospital de Basurto','Cirugía Cardiovascular','Avda. Montevideo, 18\nPabellón Alonso Allende\n48013 Bilbao (VIZCAYA)');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (122,0,34,'Hospital Universitario Cruces','Cirugía Cardiovascular','Plaza de Cruces s/n\n48903 Baracaldo. VIZCAYA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (123,0,35,'Hospital Universitario Miguel Servet','Cirugía Cardiovascular','Paseo Isabel La Católica nº 1 y 3\n50009 ZARAGOZA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (124,0,12,'Hospital Universitari Vall d´Hebron Infantil','Cirugía Cardiovascular','Paseo Valle de Hebrón s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (125,0,15,'Hospital Reina Sofía Infantil','Cirugía Cardiovascular','Avda. Menéndez Pidal   s/n');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (126,0,22,'Hospital General Universitario Gregorio Marañón Infantil','Cirugía Cardiovascular','Doctor Esquerdo  46 \n28007 MADRID');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (127,0,23,'Hospital Carlos Haya Infantil','Cirugía Cardiovascular','Avda. Carlos Haya, s/n\n29010 MALAGA');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (130,0,9,'Centro Médico de Asturias','Cirugía Cardiovascular','Avda. José María Richard 33193 Oviedo');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (131,0,22,'Hospital Universitario de Torrejón','Cirugía Cardiovascular','Mateo Inurria s/n 28850 Torrejón de Ardoz');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (132,0,22,'Hospital Ruber Internacional','Cirugía Cardiovascular','Calle de la Masó 38 28034 Madrid');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (134,0,22,'Hospital Ruber Juan Bravo','Cirugía Cardiovascular','Calle Juan Bravo 49 28006 Madrid');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (136,0,22,'Hospital Sanitas La Zarzuela','Cirugía Cardiovascular','Calle Pléyades 25 28023 Madrid');
INSERT INTO `centre` (id,version, province_id,name,service,address) VALUES (137,0,22,'Hospital Universitario Montepríncipe','Cirugía Cardiovascular','Avda. Montepríncipe 25 28660 Boadilla del Monte');

/*!40000 ALTER TABLE `centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis_and_implant_goals`
--

DROP TABLE IF EXISTS `diagnosis_and_implant_goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosis_and_implant_goals` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `cardiac_implant_cause_id` bigint(20) NOT NULL,
  `contraindication_id` bigint(20) NOT NULL,
  `implant_cause_id` bigint(20) NOT NULL,
  `implant_goal_id` bigint(20) NOT NULL,
  `main_lung_implant_cause_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kiitlhr18arb0t4fmt5c8n57c` (`cardiac_implant_cause_id`),
  KEY `FK_2b1vr2ypnsjfytow1xd00763` (`contraindication_id`),
  KEY `FK_2q2t30ipqv9u8pwst8gosvbv` (`implant_cause_id`),
  KEY `FK_eypp4qk7yx0p82t1r3hfuv28x` (`implant_goal_id`),
  KEY `FK_oy03uxy7ijd53rurn6qhxpe50` (`main_lung_implant_cause_id`),
  CONSTRAINT `FK_2b1vr2ypnsjfytow1xd00763` FOREIGN KEY (`contraindication_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_2q2t30ipqv9u8pwst8gosvbv` FOREIGN KEY (`implant_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_eypp4qk7yx0p82t1r3hfuv28x` FOREIGN KEY (`implant_goal_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kiitlhr18arb0t4fmt5c8n57c` FOREIGN KEY (`cardiac_implant_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_oy03uxy7ijd53rurn6qhxpe50` FOREIGN KEY (`main_lung_implant_cause_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis_and_implant_goals`
--

LOCK TABLES `diagnosis_and_implant_goals` WRITE;
/*!40000 ALTER TABLE `diagnosis_and_implant_goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `diagnosis_and_implant_goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espamacs_user`
--

DROP TABLE IF EXISTS `espamacs_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espamacs_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `centre_id` bigint(20) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_cwvsfktuttftk92bx0aatig76` (`username`),
  KEY `FK_8u11rkicba7yunnyxam4ul4a2` (`centre_id`),
  CONSTRAINT `FK_8u11rkicba7yunnyxam4ul4a2` FOREIGN KEY (`centre_id`) REFERENCES `centre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espamacs_user`
--

LOCK TABLES `espamacs_user` WRITE;
/*!40000 ALTER TABLE `espamacs_user` DISABLE KEYS */;
INSERT INTO `espamacs_user` VALUES (1,0,'\0','\0',1,'','$2a$10$9tKnSSdaNNJj4grWFG107OA4mUWgvDzApSSYOTzaJ0FCGABBWueRu','\0','user'),(2,0,'\0','\0',2,'','$2a$10$nYyXCK5hSTJ8EdaxKzp9muW1BHxJvHuqksE9c5vnppAB1kH9wIReW','\0','admin');
/*!40000 ALTER TABLE `espamacs_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espamacs_user_role`
--

DROP TABLE IF EXISTS `espamacs_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `espamacs_user_role` (
  `espamacs_user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`espamacs_user_id`,`role_id`),
  KEY `FK_ccfubj7e0egjau8yj1dhv6tmq` (`role_id`),
  CONSTRAINT `FK_8bt9bfe7e4m8pa630muhjbnuk` FOREIGN KEY (`espamacs_user_id`) REFERENCES `espamacs_user` (`id`),
  CONSTRAINT `FK_ccfubj7e0egjau8yj1dhv6tmq` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espamacs_user_role`
--

LOCK TABLES `espamacs_user_role` WRITE;
/*!40000 ALTER TABLE `espamacs_user_role` DISABLE KEYS */;
INSERT INTO `espamacs_user_role` VALUES (1,1),(2,1),(2,2);
/*!40000 ALTER TABLE `espamacs_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `alive_after_hospital` bit(1) DEFAULT NULL,
  `alive_days` int(11) DEFAULT NULL,
  `event_date` datetime NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `patient_death` bit(1) NOT NULL,
  `patient_health_status_id` bigint(20) NOT NULL,
  `removed_assistance_id` bigint(20) NOT NULL,
  `removed_assistance_death_id` bigint(20) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `peripheral_vascular_access_complications_type_id` bigint(20) DEFAULT NULL,
  `infection_place_id` bigint(20) DEFAULT NULL,
  `infection_treatment_id` bigint(20) DEFAULT NULL,
  `hemorrhage_cause_id` bigint(20) DEFAULT NULL,
  `hemorrhage_treatment_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_needs_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_signals_id` bigint(20) DEFAULT NULL,
  `arterial_thromboembolism_diagnosis_id` bigint(20) DEFAULT NULL,
  `venous_thromboembolism_place_id` bigint(20) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `days_after_surgery` int(11) DEFAULT NULL,
  `days_with_respiratory_problems` int(11) DEFAULT NULL,
  `tracheotomy` bit(1) DEFAULT NULL,
  `flow_blocking` bit(1) DEFAULT NULL,
  `pericardial_effussion_drain_method_id` bigint(20) DEFAULT NULL,
  `pericardial_effussion_quantity_id` bigint(20) DEFAULT NULL,
  `creatinine` double DEFAULT NULL,
  `recover_renal_functionality` bit(1) DEFAULT NULL,
  `renal_dysfunction_treatment_id` bigint(20) DEFAULT NULL,
  `therapy_days` int(11) DEFAULT NULL,
  `wound_dehiscence_type_id` bigint(20) DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `hemolysis_cause_id` bigint(20) DEFAULT NULL,
  `ldh` double DEFAULT NULL,
  `change_assistance_components` bit(1) DEFAULT NULL,
  `malfunction_device_type_id` bigint(20) DEFAULT NULL,
  `urgent_surgery_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_cause_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_place_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_treatment_id` bigint(20) DEFAULT NULL,
  `aptt_id` bigint(20) DEFAULT NULL,
  `inr_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_cause_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_diagnosis_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_effect_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_place_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_type_id` bigint(20) DEFAULT NULL,
  `surgery` bit(1) DEFAULT NULL,
  `treatement_id` bigint(20) DEFAULT NULL,
  `arrhythmia_type_id` bigint(20) DEFAULT NULL,
  `alt` double DEFAULT NULL,
  `ast` double DEFAULT NULL,
  `bilirrubin` double DEFAULT NULL,
  `events_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9848kbetc6v9qm57d727cvbox` (`patient_id`),
  KEY `FK_66ksb2vk8ogs149a9mrep1vb8` (`patient_health_status_id`),
  KEY `FK_2ncxscv57y5blvnadacsenk48` (`removed_assistance_id`),
  KEY `FK_8q30cov2bng29hr4u0indiacu` (`removed_assistance_death_id`),
  KEY `FK_kh2o4q6jxaj7x00bsw4u3oyrv` (`peripheral_vascular_access_complications_type_id`),
  KEY `FK_j35tilxoaduj0cc4gxo2vwni7` (`infection_place_id`),
  KEY `FK_58gbttxt2pfggwt55sxksxsi2` (`infection_treatment_id`),
  KEY `FK_ilhak7kawj62m2quav420paym` (`hemorrhage_cause_id`),
  KEY `FK_otu9ci4qyqkrfhb8pp6mmfwjo` (`hemorrhage_treatment_id`),
  KEY `FK_33l1mx9lwkvd1b14ygaec0btx` (`right_heart_failure_needs_id`),
  KEY `FK_kkvw8uytwgorkghibnbo8rhmc` (`right_heart_failure_signals_id`),
  KEY `FK_21tyujn58itwlqq6yd95w0bfl` (`arterial_thromboembolism_diagnosis_id`),
  KEY `FK_8kgh0wy5uo4rccajl24g3m2da` (`venous_thromboembolism_place_id`),
  KEY `FK_40c5m697r51570fjnu221tfcn` (`pericardial_effussion_drain_method_id`),
  KEY `FK_7vedlb6cgb4qaingoqp8ch446` (`pericardial_effussion_quantity_id`),
  KEY `FK_s2uc7jdocl9j8quu24md579m2` (`renal_dysfunction_treatment_id`),
  KEY `FK_s50xm5g3d7qewy15xukxw8pfv` (`wound_dehiscence_type_id`),
  KEY `FK_mqh3e9g9lrucxp6hlo9q9f2i8` (`hemolysis_cause_id`),
  KEY `FK_t3osnu02c228naglqnqsyrjjf` (`malfunction_device_type_id`),
  KEY `FK_4r4c6pymfjiyy0a2gid6edrc9` (`urgent_surgery_id`),
  KEY `FK_hid46nbqou0psojs2raxhotxh` (`myocardial_infraction_cause_id`),
  KEY `FK_3086fbl3w4grn483yqyrybsro` (`myocardial_infraction_place_id`),
  KEY `FK_ru913yebw3d9g9s0k4i0geawr` (`myocardial_infraction_treatment_id`),
  KEY `FK_pvt0wyv1gyhkjl1efp28nlpqq` (`aptt_id`),
  KEY `FK_mugw1lk6ar777iqg9pu8cdwuh` (`inr_id`),
  KEY `FK_kkx8r955p0b4c9g82llivxr5a` (`neurological_dysfunction_cause_id`),
  KEY `FK_3ovg6kjmp0iw7n1ppsg68dtjm` (`neurological_dysfunction_diagnosis_id`),
  KEY `FK_1o3fvyp609qga8plgrt5noow5` (`neurological_dysfunction_effect_id`),
  KEY `FK_grxr7npfb0phtq6qcged4fkk9` (`neurological_dysfunction_place_id`),
  KEY `FK_ia3c3cq3u9l41cv4fey92cf07` (`neurological_dysfunction_type_id`),
  KEY `FK_2ee009v942w8xotuqlo26pmt9` (`treatement_id`),
  KEY `FK_s9wkspf2wcb3ggky7wl356o9p` (`arrhythmia_type_id`),
  CONSTRAINT `FK_1o3fvyp609qga8plgrt5noow5` FOREIGN KEY (`neurological_dysfunction_effect_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_21tyujn58itwlqq6yd95w0bfl` FOREIGN KEY (`arterial_thromboembolism_diagnosis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_2ee009v942w8xotuqlo26pmt9` FOREIGN KEY (`treatement_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_2ncxscv57y5blvnadacsenk48` FOREIGN KEY (`removed_assistance_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_3086fbl3w4grn483yqyrybsro` FOREIGN KEY (`myocardial_infraction_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_33l1mx9lwkvd1b14ygaec0btx` FOREIGN KEY (`right_heart_failure_needs_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_3ovg6kjmp0iw7n1ppsg68dtjm` FOREIGN KEY (`neurological_dysfunction_diagnosis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_40c5m697r51570fjnu221tfcn` FOREIGN KEY (`pericardial_effussion_drain_method_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_4r4c6pymfjiyy0a2gid6edrc9` FOREIGN KEY (`urgent_surgery_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_58gbttxt2pfggwt55sxksxsi2` FOREIGN KEY (`infection_treatment_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_66ksb2vk8ogs149a9mrep1vb8` FOREIGN KEY (`patient_health_status_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_7vedlb6cgb4qaingoqp8ch446` FOREIGN KEY (`pericardial_effussion_quantity_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8kgh0wy5uo4rccajl24g3m2da` FOREIGN KEY (`venous_thromboembolism_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8q30cov2bng29hr4u0indiacu` FOREIGN KEY (`removed_assistance_death_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_9848kbetc6v9qm57d727cvbox` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK_grxr7npfb0phtq6qcged4fkk9` FOREIGN KEY (`neurological_dysfunction_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_hid46nbqou0psojs2raxhotxh` FOREIGN KEY (`myocardial_infraction_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ia3c3cq3u9l41cv4fey92cf07` FOREIGN KEY (`neurological_dysfunction_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ilhak7kawj62m2quav420paym` FOREIGN KEY (`hemorrhage_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_j35tilxoaduj0cc4gxo2vwni7` FOREIGN KEY (`infection_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kh2o4q6jxaj7x00bsw4u3oyrv` FOREIGN KEY (`peripheral_vascular_access_complications_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kkvw8uytwgorkghibnbo8rhmc` FOREIGN KEY (`right_heart_failure_signals_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kkx8r955p0b4c9g82llivxr5a` FOREIGN KEY (`neurological_dysfunction_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_mqh3e9g9lrucxp6hlo9q9f2i8` FOREIGN KEY (`hemolysis_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_mugw1lk6ar777iqg9pu8cdwuh` FOREIGN KEY (`inr_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_otu9ci4qyqkrfhb8pp6mmfwjo` FOREIGN KEY (`hemorrhage_treatment_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_pvt0wyv1gyhkjl1efp28nlpqq` FOREIGN KEY (`aptt_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ru913yebw3d9g9s0k4i0geawr` FOREIGN KEY (`myocardial_infraction_treatment_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s2uc7jdocl9j8quu24md579m2` FOREIGN KEY (`renal_dysfunction_treatment_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s50xm5g3d7qewy15xukxw8pfv` FOREIGN KEY (`wound_dehiscence_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s9wkspf2wcb3ggky7wl356o9p` FOREIGN KEY (`arrhythmia_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_t3osnu02c228naglqnqsyrjjf` FOREIGN KEY (`malfunction_device_type_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,0,'',2,'2016-04-25 10:44:43',1,'',354,358,363,'espamacs.event.MalfunctionDevice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',367,381,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `implant_data`
--

DROP TABLE IF EXISTS `implant_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `implant_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `collateral_surgery_id` bigint(20) NOT NULL,
  `ecmo_data_blood_flow_type_id` bigint(20) DEFAULT NULL,
  `ecmo_data_brand_id` bigint(20) DEFAULT NULL,
  `ecmo_data_implant_in_id` bigint(20) DEFAULT NULL,
  `ecmo_data_implant_out_id` bigint(20) DEFAULT NULL,
  `ecmo_data_initial_flow` double DEFAULT NULL,
  `implant_type_id` bigint(20) NOT NULL,
  `length_bypass_minutes` int(11) NOT NULL,
  `length_minutes` int(11) NOT NULL,
  `lvad_data_blood_flow_type_id` bigint(20) DEFAULT NULL,
  `lvad_data_brand_id` bigint(20) DEFAULT NULL,
  `lvad_data_implant_in_id` bigint(20) DEFAULT NULL,
  `lvad_data_implant_out_id` bigint(20) DEFAULT NULL,
  `lvad_data_initial_flow` double DEFAULT NULL,
  `rvad_data_blood_flow_type_id` bigint(20) DEFAULT NULL,
  `rvad_data_brand_id` bigint(20) DEFAULT NULL,
  `rvad_data_implant_in_id` bigint(20) DEFAULT NULL,
  `rvad_data_implant_out_id` bigint(20) DEFAULT NULL,
  `rvad_data_initial_flow` double DEFAULT NULL,
  `total_heart_data_blood_flow_type_id` bigint(20) DEFAULT NULL,
  `total_heart_data_brand_id` bigint(20) DEFAULT NULL,
  `total_heart_data_implant_in_id` bigint(20) DEFAULT NULL,
  `total_heart_data_implant_out_id` bigint(20) DEFAULT NULL,
  `total_heart_data_initial_flow` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8x9v14me8vfcwa0a093botsjp` (`collateral_surgery_id`),
  KEY `FK_ptm4r5s1nrtylr96pkx3claje` (`ecmo_data_blood_flow_type_id`),
  KEY `FK_cr87vc8jgorrjtrl7fx6b85i8` (`ecmo_data_brand_id`),
  KEY `FK_ioy70oun342u9astyla84vc0p` (`ecmo_data_implant_in_id`),
  KEY `FK_epalum7fyukcvjpwxnme3snkc` (`ecmo_data_implant_out_id`),
  KEY `FK_i33ywgvfvvh2t3rptklnw4tkc` (`implant_type_id`),
  KEY `FK_fqbjkqqqxg8r78n1kln24skg2` (`lvad_data_blood_flow_type_id`),
  KEY `FK_ltporskhvl5jeajl16o6pydfh` (`lvad_data_brand_id`),
  KEY `FK_8f0kcjw93skm3uwr4j0coofp5` (`lvad_data_implant_in_id`),
  KEY `FK_e8q7badfm73t8funafa3sy2r4` (`lvad_data_implant_out_id`),
  KEY `FK_4fxny0sjh2wiu0bd9yfxtoupi` (`rvad_data_blood_flow_type_id`),
  KEY `FK_ag6bfmqe6q4fxmwew9wjuq1kl` (`rvad_data_brand_id`),
  KEY `FK_s2h85p0pee9ivtcqb7481hjyf` (`rvad_data_implant_in_id`),
  KEY `FK_kyeltkc71jyas0jjx9w5vohx8` (`rvad_data_implant_out_id`),
  KEY `FK_8xcvibgs9ib4esabfpy7r5d4c` (`total_heart_data_blood_flow_type_id`),
  KEY `FK_3ovre9fhj3alyd80nlb5crpba` (`total_heart_data_brand_id`),
  KEY `FK_qfrvyt3g7h2q75c9h7tft85nr` (`total_heart_data_implant_in_id`),
  KEY `FK_1yiw9y6x2k8b8my62oubpoqr7` (`total_heart_data_implant_out_id`),
  CONSTRAINT `FK_1yiw9y6x2k8b8my62oubpoqr7` FOREIGN KEY (`total_heart_data_implant_out_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_3ovre9fhj3alyd80nlb5crpba` FOREIGN KEY (`total_heart_data_brand_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_4fxny0sjh2wiu0bd9yfxtoupi` FOREIGN KEY (`rvad_data_blood_flow_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8f0kcjw93skm3uwr4j0coofp5` FOREIGN KEY (`lvad_data_implant_in_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8x9v14me8vfcwa0a093botsjp` FOREIGN KEY (`collateral_surgery_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8xcvibgs9ib4esabfpy7r5d4c` FOREIGN KEY (`total_heart_data_blood_flow_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ag6bfmqe6q4fxmwew9wjuq1kl` FOREIGN KEY (`rvad_data_brand_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_cr87vc8jgorrjtrl7fx6b85i8` FOREIGN KEY (`ecmo_data_brand_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_e8q7badfm73t8funafa3sy2r4` FOREIGN KEY (`lvad_data_implant_out_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_epalum7fyukcvjpwxnme3snkc` FOREIGN KEY (`ecmo_data_implant_out_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_fqbjkqqqxg8r78n1kln24skg2` FOREIGN KEY (`lvad_data_blood_flow_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_i33ywgvfvvh2t3rptklnw4tkc` FOREIGN KEY (`implant_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ioy70oun342u9astyla84vc0p` FOREIGN KEY (`ecmo_data_implant_in_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kyeltkc71jyas0jjx9w5vohx8` FOREIGN KEY (`rvad_data_implant_out_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ltporskhvl5jeajl16o6pydfh` FOREIGN KEY (`lvad_data_brand_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ptm4r5s1nrtylr96pkx3claje` FOREIGN KEY (`ecmo_data_blood_flow_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_qfrvyt3g7h2q75c9h7tft85nr` FOREIGN KEY (`total_heart_data_implant_in_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s2h85p0pee9ivtcqb7481hjyf` FOREIGN KEY (`rvad_data_implant_in_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `implant_data`
--

LOCK TABLES `implant_data` WRITE;
/*!40000 ALTER TABLE `implant_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `implant_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initial_data`
--

DROP TABLE IF EXISTS `initial_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `initial_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `antiheparine_antibodies_id` bigint(20) NOT NULL,
  `discharged_data_discharged_date` datetime DEFAULT NULL,
  `discharged_data_discharged_destination_id` bigint(20) DEFAULT NULL,
  `discharged_data_discharged_status_id` bigint(20) DEFAULT NULL,
  `exitus_data_existus_status_id` bigint(20) DEFAULT NULL,
  `exitus_data_exitus_date` datetime DEFAULT NULL,
  `hospitalized_time` int(11) NOT NULL,
  `patient_discharged` bit(1) NOT NULL,
  `right_ventricle_failure_after_implant_id` bigint(20) NOT NULL,
  `time_without_intropiciv_id` bigint(20) NOT NULL,
  `uci_time` int(11) NOT NULL,
  `ventilation_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fhfjatqrpe69l3vs0yat7bep5` (`antiheparine_antibodies_id`),
  KEY `FK_7hbjftnpfffvwkov4k7pwcrtm` (`discharged_data_discharged_destination_id`),
  KEY `FK_4pm41dastbs1i7kmxesrysaj` (`discharged_data_discharged_status_id`),
  KEY `FK_j9w2yc5tohesn1gghy1d2kppr` (`exitus_data_existus_status_id`),
  KEY `FK_div9rdkum2m1c0dj2tlavuvuj` (`right_ventricle_failure_after_implant_id`),
  KEY `FK_2a0o60fgh8s3jqwcigg4mgm0k` (`time_without_intropiciv_id`),
  CONSTRAINT `FK_2a0o60fgh8s3jqwcigg4mgm0k` FOREIGN KEY (`time_without_intropiciv_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_4pm41dastbs1i7kmxesrysaj` FOREIGN KEY (`discharged_data_discharged_status_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_7hbjftnpfffvwkov4k7pwcrtm` FOREIGN KEY (`discharged_data_discharged_destination_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_div9rdkum2m1c0dj2tlavuvuj` FOREIGN KEY (`right_ventricle_failure_after_implant_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_fhfjatqrpe69l3vs0yat7bep5` FOREIGN KEY (`antiheparine_antibodies_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_j9w2yc5tohesn1gghy1d2kppr` FOREIGN KEY (`exitus_data_existus_status_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initial_data`
--

LOCK TABLES `initial_data` WRITE;
/*!40000 ALTER TABLE `initial_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `initial_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initial_data_type_blood_medication`
--

DROP TABLE IF EXISTS `initial_data_type_blood_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `initial_data_type_blood_medication` (
  `initial_data_blood_medications_id` bigint(20) NOT NULL,
  `blood_medication_id` bigint(20) DEFAULT NULL,
  `blood_medications_idx` int(11) DEFAULT NULL,
  KEY `FK_8rhyqkhy8xb6ld13kd8we4xiw` (`blood_medication_id`),
  CONSTRAINT `FK_8rhyqkhy8xb6ld13kd8we4xiw` FOREIGN KEY (`blood_medication_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initial_data_type_blood_medication`
--

LOCK TABLES `initial_data_type_blood_medication` WRITE;
/*!40000 ALTER TABLE `initial_data_type_blood_medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `initial_data_type_blood_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initial_data_type_cardiological_treatmen_at_discharge`
--

DROP TABLE IF EXISTS `initial_data_type_cardiological_treatmen_at_discharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `initial_data_type_cardiological_treatmen_at_discharge` (
  `initial_data_cardiological_treatmens_at_discharge_id` bigint(20) NOT NULL,
  `cardiological_treatmen_at_discharge_id` bigint(20) DEFAULT NULL,
  `cardiological_treatmens_at_discharge_idx` int(11) DEFAULT NULL,
  KEY `FK_6o2gonxuek98wik7peptjcvqq` (`cardiological_treatmen_at_discharge_id`),
  CONSTRAINT `FK_6o2gonxuek98wik7peptjcvqq` FOREIGN KEY (`cardiological_treatmen_at_discharge_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initial_data_type_cardiological_treatmen_at_discharge`
--

LOCK TABLES `initial_data_type_cardiological_treatmen_at_discharge` WRITE;
/*!40000 ALTER TABLE `initial_data_type_cardiological_treatmen_at_discharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `initial_data_type_cardiological_treatmen_at_discharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initial_data_type_surgical_procedure_after_transplant`
--

DROP TABLE IF EXISTS `initial_data_type_surgical_procedure_after_transplant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `initial_data_type_surgical_procedure_after_transplant` (
  `initial_data_surgical_procedures_after_transplant_id` bigint(20) NOT NULL,
  `surgical_procedure_after_transplant_id` bigint(20) DEFAULT NULL,
  `surgical_procedures_after_transplant_idx` int(11) DEFAULT NULL,
  KEY `FK_v91e6qk1g5rc4015csvbqdpu` (`surgical_procedure_after_transplant_id`),
  CONSTRAINT `FK_v91e6qk1g5rc4015csvbqdpu` FOREIGN KEY (`surgical_procedure_after_transplant_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initial_data_type_surgical_procedure_after_transplant`
--

LOCK TABLES `initial_data_type_surgical_procedure_after_transplant` WRITE;
/*!40000 ALTER TABLE `initial_data_type_surgical_procedure_after_transplant` DISABLE KEYS */;
/*!40000 ALTER TABLE `initial_data_type_surgical_procedure_after_transplant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `baseline_condition_id` bigint(20) DEFAULT NULL,
  `birth_date` datetime NOT NULL,
  `blood_type_id` bigint(20) NOT NULL,
  `bmi` double NOT NULL,
  `cardiac_care_type_id` bigint(20) NOT NULL,
  `centre_id` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `diagnosis_and_implant_goals_id` bigint(20) DEFAULT NULL,
  `external_id` varchar(255) NOT NULL,
  `gender_id` bigint(20) NOT NULL,
  `height` double NOT NULL,
  `implant_data_id` bigint(20) DEFAULT NULL,
  `implant_date` datetime NOT NULL,
  `initial_data_id` bigint(20) DEFAULT NULL,
  `patient_age_on_implant` int(11) NOT NULL,
  `patient_status_id` bigint(20) NOT NULL,
  `personal_history_id` bigint(20) DEFAULT NULL,
  `preimplant_situation_id` bigint(20) DEFAULT NULL,
  `rh_factor_id` bigint(20) NOT NULL,
  `weigh` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fq07eyf5fmxs16owobh6d5l1b` (`baseline_condition_id`),
  KEY `FK_rwfrakxsyu5m49ekd1y41e6xo` (`blood_type_id`),
  KEY `FK_i7vup9b55dlknfywp90wg4i03` (`cardiac_care_type_id`),
  KEY `FK_8obdi6h3e1rm83s5agcsr0brf` (`centre_id`),
  KEY `FK_rb90swu1pf5xmbop7r591bc6c` (`diagnosis_and_implant_goals_id`),
  KEY `FK_s8qdmw1sb74dqfty2r2freld5` (`gender_id`),
  KEY `FK_kuppv97ediaq6nsmdsqglfotp` (`implant_data_id`),
  KEY `FK_1plbdkxy6bf91fsf0im16mb9c` (`initial_data_id`),
  KEY `FK_dgqga2xb91sltyapkktmq04so` (`patient_status_id`),
  KEY `FK_d1sq8f1gp48t2ncrprm5qttsl` (`personal_history_id`),
  KEY `FK_hbyhjw923uhllgpj0qw12yh5f` (`preimplant_situation_id`),
  KEY `FK_3n63q6ux9va8g8bpu0n7k1t35` (`rh_factor_id`),
  CONSTRAINT `FK_1plbdkxy6bf91fsf0im16mb9c` FOREIGN KEY (`initial_data_id`) REFERENCES `initial_data` (`id`),
  CONSTRAINT `FK_3n63q6ux9va8g8bpu0n7k1t35` FOREIGN KEY (`rh_factor_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8obdi6h3e1rm83s5agcsr0brf` FOREIGN KEY (`centre_id`) REFERENCES `centre` (`id`),
  CONSTRAINT `FK_d1sq8f1gp48t2ncrprm5qttsl` FOREIGN KEY (`personal_history_id`) REFERENCES `personal_history` (`id`),
  CONSTRAINT `FK_dgqga2xb91sltyapkktmq04so` FOREIGN KEY (`patient_status_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_fq07eyf5fmxs16owobh6d5l1b` FOREIGN KEY (`baseline_condition_id`) REFERENCES `baseline_condition` (`id`),
  CONSTRAINT `FK_hbyhjw923uhllgpj0qw12yh5f` FOREIGN KEY (`preimplant_situation_id`) REFERENCES `preimplant_situation` (`id`),
  CONSTRAINT `FK_i7vup9b55dlknfywp90wg4i03` FOREIGN KEY (`cardiac_care_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kuppv97ediaq6nsmdsqglfotp` FOREIGN KEY (`implant_data_id`) REFERENCES `implant_data` (`id`),
  CONSTRAINT `FK_rb90swu1pf5xmbop7r591bc6c` FOREIGN KEY (`diagnosis_and_implant_goals_id`) REFERENCES `diagnosis_and_implant_goals` (`id`),
  CONSTRAINT `FK_rwfrakxsyu5m49ekd1y41e6xo` FOREIGN KEY (`blood_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s8qdmw1sb74dqfty2r2freld5` FOREIGN KEY (`gender_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1,NULL,'2016-04-25 10:44:43',11,15,9,1,'INC',NULL,'ExternalId',8,156.3,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,86.2),(2,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-1',NULL,'External-1',7,100,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,10),(3,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-2',NULL,'External-2',7,200,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,20),(4,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-3',NULL,'External-3',7,300,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,30),(5,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-4',NULL,'External-4',7,400,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,40),(6,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-5',NULL,'External-5',7,500,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,50),(7,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-6',NULL,'External-6',7,600,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,60),(8,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-7',NULL,'External-7',7,700,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,70),(9,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-8',NULL,'External-8',7,800,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,80),(10,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-9',NULL,'External-9',7,900,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,90),(11,0,NULL,'2016-04-25 10:44:43',11,15,10,2,'Paz-10',NULL,'External-10',7,1000,NULL,'1956-05-10 10:44:43',NULL,60,4,NULL,NULL,17,100),(12,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-11',NULL,'External-11',7,1100,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,110),(13,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-12',NULL,'External-12',7,1200,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,120),(14,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-13',NULL,'External-13',7,1300,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,130),(15,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-14',NULL,'External-14',7,1400,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,140),(16,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-15',NULL,'External-15',7,1500,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,150),(17,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-16',NULL,'External-16',7,1600,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,160),(18,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-17',NULL,'External-17',7,1700,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,170),(19,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-18',NULL,'External-18',7,1800,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,180),(20,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-19',NULL,'External-19',7,1900,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,190),(21,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-20',NULL,'External-20',7,2000,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,200),(22,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-21',NULL,'External-21',7,2100,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,210),(23,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-22',NULL,'External-22',7,2200,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,220),(24,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-23',NULL,'External-23',7,2300,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,230),(25,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-24',NULL,'External-24',7,2400,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,240),(26,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-25',NULL,'External-25',7,2500,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,250),(27,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-26',NULL,'External-26',7,2600,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,260),(28,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-27',NULL,'External-27',7,2700,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,270),(29,0,NULL,'2016-04-25 10:44:44',11,15,10,2,'Paz-28',NULL,'External-28',7,2800,NULL,'1956-05-10 10:44:44',NULL,60,4,NULL,NULL,17,280),(30,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-29',NULL,'External-29',7,2900,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,290),(31,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-30',NULL,'External-30',7,3000,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,300),(32,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-31',NULL,'External-31',7,3100,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,310),(33,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-32',NULL,'External-32',7,3200,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,320),(34,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-33',NULL,'External-33',7,3300,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,330),(35,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-34',NULL,'External-34',7,3400,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,340),(36,0,NULL,'2016-04-25 10:44:45',11,15,10,2,'Paz-35',NULL,'External-35',7,3500,NULL,'1956-05-10 10:44:45',NULL,60,4,NULL,NULL,17,350);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_history`
--

DROP TABLE IF EXISTS `personal_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `central_nervous_system_brain_hemorrhage_id` bigint(20) NOT NULL,
  `central_nervous_system_severe_neurological_disease_id` bigint(20) NOT NULL,
  `central_nervous_system_stroke_id` bigint(20) NOT NULL,
  `central_nervous_system_transient_ischemic_attack_id` bigint(20) NOT NULL,
  `diabetic_id` bigint(20) NOT NULL,
  `dyslipidemia_id` bigint(20) NOT NULL,
  `drinker_id` bigint(20) NOT NULL,
  `endocrine_hematologic_system_chronic_anemia_id` bigint(20) NOT NULL,
  `endocrine_hematologic_system_chronic_coagulopathy` bit(1) NOT NULL,
  `endocrine_hematologic_system_heparin_induced_thrombocytopenia` bit(1) NOT NULL,
  `endocrine_hematologic_system_thyroid_disorders_id` bigint(20) NOT NULL,
  `gastric_cirrhosis_id` bigint(20) NOT NULL,
  `gastric_gastric_ulcer_id` bigint(20) NOT NULL,
  `gastric_hepatitis_id` bigint(20) NOT NULL,
  `hypertensive_id` bigint(20) NOT NULL,
  `intravenously_drugs_id` bigint(20) NOT NULL,
  `malnutrition_id` bigint(20) NOT NULL,
  `obese_type_id` bigint(20) NOT NULL,
  `oncologic_infectious_chronic_infectious_diseases_id` bigint(20) NOT NULL,
  `oncologic_infectious_hiv_id` bigint(20) NOT NULL,
  `oncologic_infectious_leukemia_id` bigint(20) NOT NULL,
  `oncologic_infectious_malignant_tumor_id` bigint(20) NOT NULL,
  `pre_cardiac_surgery_id` bigint(20) NOT NULL,
  `renal_baseline_creatinine` double NOT NULL,
  `renal_creatinine_clearance` double NOT NULL,
  `renal_renal_replacement_therapy_id` bigint(20) NOT NULL,
  `respiratory_primary_pulmonary_hypertension_id` bigint(20) NOT NULL,
  `respiratory_pulmonary_embolism_id` bigint(20) NOT NULL,
  `respiratory_severe_lung_disease_id` bigint(20) NOT NULL,
  `severe_mental_retardation_id` bigint(20) NOT NULL,
  `smoker_id` bigint(20) NOT NULL,
  `social_care_type_id` bigint(20) NOT NULL,
  `vascular_aorta_pathology_id` bigint(20) NOT NULL,
  `vascular_peripheral_vascular_disease_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gj3hf5gser77uy6taquv8hsjn` (`central_nervous_system_brain_hemorrhage_id`),
  KEY `FK_5vb7odl4bpxd6bdqd7rwvt6kt` (`central_nervous_system_severe_neurological_disease_id`),
  KEY `FK_qfco0c47sumb4ycy2jk3ufnc` (`central_nervous_system_stroke_id`),
  KEY `FK_e9sh0mnmfkcqcsmpww8oxiql8` (`central_nervous_system_transient_ischemic_attack_id`),
  KEY `FK_xxwtnoomqk9969cx2w3xb39g` (`diabetic_id`),
  KEY `FK_5ktx38jcojuhlu61clt5om8ew` (`dyslipidemia_id`),
  KEY `FK_s40ke2vghkcalb3dcwu9ebjah` (`drinker_id`),
  KEY `FK_6vyiv7s7tg4ak16s5ag4uqppy` (`endocrine_hematologic_system_chronic_anemia_id`),
  KEY `FK_ptxbx8vkqqn4nbcf9e92gi7vt` (`endocrine_hematologic_system_thyroid_disorders_id`),
  KEY `FK_kf39kmatds69deu6ujq6s8tb5` (`gastric_cirrhosis_id`),
  KEY `FK_ghrgwyc53mcshee3d3yyda88p` (`gastric_gastric_ulcer_id`),
  KEY `FK_rhcxa9l4eq2blfjxitn07rfvh` (`gastric_hepatitis_id`),
  KEY `FK_iou0yt55fyctdmrq14yda6vvf` (`hypertensive_id`),
  KEY `FK_70lduvfyu16p0h9ct40o2idul` (`intravenously_drugs_id`),
  KEY `FK_d86sjc9ww9stgvuap42g3rj7h` (`malnutrition_id`),
  KEY `FK_lavb1tspcitb6k0mrdg8f9146` (`obese_type_id`),
  KEY `FK_mxj6eqduu3o9y4neuhequuwe8` (`oncologic_infectious_chronic_infectious_diseases_id`),
  KEY `FK_okbxw5578dcxkp9kdgauowxm1` (`oncologic_infectious_hiv_id`),
  KEY `FK_etq9cklulewlxso9n532f7ct5` (`oncologic_infectious_leukemia_id`),
  KEY `FK_gh7ebewifwld9ujhsi1nqhfg1` (`oncologic_infectious_malignant_tumor_id`),
  KEY `FK_ktuli9eh1rynkpsgc0n9411oi` (`pre_cardiac_surgery_id`),
  KEY `FK_jo05ge4jtrvo5slpj7ikvfwaj` (`renal_renal_replacement_therapy_id`),
  KEY `FK_3iy18w11kax0ry4pucgqyestf` (`respiratory_primary_pulmonary_hypertension_id`),
  KEY `FK_bkr9296sq91dhi47j2rc5g9st` (`respiratory_pulmonary_embolism_id`),
  KEY `FK_nqsrvnkp1n8cssqtdoq8h0728` (`respiratory_severe_lung_disease_id`),
  KEY `FK_na4eu564lhjm30c6wu0fyw4ri` (`severe_mental_retardation_id`),
  KEY `FK_7hujo9o65u06nrs559vk1mclw` (`smoker_id`),
  KEY `FK_ah65ailrutw142xdxu1mwfyyy` (`social_care_type_id`),
  KEY `FK_s8gevjxx576awy6ljb2sso401` (`vascular_aorta_pathology_id`),
  KEY `FK_tmfyvgrr7neqpfg9da07gl2x0` (`vascular_peripheral_vascular_disease_id`),
  CONSTRAINT `FK_3iy18w11kax0ry4pucgqyestf` FOREIGN KEY (`respiratory_primary_pulmonary_hypertension_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_5ktx38jcojuhlu61clt5om8ew` FOREIGN KEY (`dyslipidemia_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_5vb7odl4bpxd6bdqd7rwvt6kt` FOREIGN KEY (`central_nervous_system_severe_neurological_disease_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_6vyiv7s7tg4ak16s5ag4uqppy` FOREIGN KEY (`endocrine_hematologic_system_chronic_anemia_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_70lduvfyu16p0h9ct40o2idul` FOREIGN KEY (`intravenously_drugs_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_7hujo9o65u06nrs559vk1mclw` FOREIGN KEY (`smoker_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ah65ailrutw142xdxu1mwfyyy` FOREIGN KEY (`social_care_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_bkr9296sq91dhi47j2rc5g9st` FOREIGN KEY (`respiratory_pulmonary_embolism_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_d86sjc9ww9stgvuap42g3rj7h` FOREIGN KEY (`malnutrition_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_e9sh0mnmfkcqcsmpww8oxiql8` FOREIGN KEY (`central_nervous_system_transient_ischemic_attack_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_etq9cklulewlxso9n532f7ct5` FOREIGN KEY (`oncologic_infectious_leukemia_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_gh7ebewifwld9ujhsi1nqhfg1` FOREIGN KEY (`oncologic_infectious_malignant_tumor_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ghrgwyc53mcshee3d3yyda88p` FOREIGN KEY (`gastric_gastric_ulcer_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_gj3hf5gser77uy6taquv8hsjn` FOREIGN KEY (`central_nervous_system_brain_hemorrhage_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_iou0yt55fyctdmrq14yda6vvf` FOREIGN KEY (`hypertensive_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_jo05ge4jtrvo5slpj7ikvfwaj` FOREIGN KEY (`renal_renal_replacement_therapy_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kf39kmatds69deu6ujq6s8tb5` FOREIGN KEY (`gastric_cirrhosis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ktuli9eh1rynkpsgc0n9411oi` FOREIGN KEY (`pre_cardiac_surgery_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_lavb1tspcitb6k0mrdg8f9146` FOREIGN KEY (`obese_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_mxj6eqduu3o9y4neuhequuwe8` FOREIGN KEY (`oncologic_infectious_chronic_infectious_diseases_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_na4eu564lhjm30c6wu0fyw4ri` FOREIGN KEY (`severe_mental_retardation_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_nqsrvnkp1n8cssqtdoq8h0728` FOREIGN KEY (`respiratory_severe_lung_disease_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_okbxw5578dcxkp9kdgauowxm1` FOREIGN KEY (`oncologic_infectious_hiv_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ptxbx8vkqqn4nbcf9e92gi7vt` FOREIGN KEY (`endocrine_hematologic_system_thyroid_disorders_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_qfco0c47sumb4ycy2jk3ufnc` FOREIGN KEY (`central_nervous_system_stroke_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_rhcxa9l4eq2blfjxitn07rfvh` FOREIGN KEY (`gastric_hepatitis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s40ke2vghkcalb3dcwu9ebjah` FOREIGN KEY (`drinker_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_s8gevjxx576awy6ljb2sso401` FOREIGN KEY (`vascular_aorta_pathology_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_tmfyvgrr7neqpfg9da07gl2x0` FOREIGN KEY (`vascular_peripheral_vascular_disease_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_xxwtnoomqk9969cx2w3xb39g` FOREIGN KEY (`diabetic_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_history`
--

LOCK TABLES `personal_history` WRITE;
/*!40000 ALTER TABLE `personal_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preimplant_situation`
--

DROP TABLE IF EXISTS `preimplant_situation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preimplant_situation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `heart_attack_id` bigint(20) NOT NULL,
  `intermacs_situation_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ns3sgbj06c2exf0ppeo08bqaa` (`heart_attack_id`),
  KEY `FK_ouigapvtldgi66lkw3d5ceewk` (`intermacs_situation_id`),
  CONSTRAINT `FK_ns3sgbj06c2exf0ppeo08bqaa` FOREIGN KEY (`heart_attack_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ouigapvtldgi66lkw3d5ceewk` FOREIGN KEY (`intermacs_situation_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preimplant_situation`
--

LOCK TABLES `preimplant_situation` WRITE;
/*!40000 ALTER TABLE `preimplant_situation` DISABLE KEYS */;
/*!40000 ALTER TABLE `preimplant_situation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preimplant_situation_type_intropic_medication`
--

DROP TABLE IF EXISTS `preimplant_situation_type_intropic_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preimplant_situation_type_intropic_medication` (
  `preimplant_situation_intropic_medications_id` bigint(20) NOT NULL,
  `intropic_medication_id` bigint(20) DEFAULT NULL,
  `intropic_medications_idx` int(11) DEFAULT NULL,
  KEY `FK_d0fefpqw3uxwcvys4581dljx5` (`intropic_medication_id`),
  CONSTRAINT `FK_d0fefpqw3uxwcvys4581dljx5` FOREIGN KEY (`intropic_medication_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preimplant_situation_type_intropic_medication`
--

LOCK TABLES `preimplant_situation_type_intropic_medication` WRITE;
/*!40000 ALTER TABLE `preimplant_situation_type_intropic_medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `preimplant_situation_type_intropic_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preimplant_situation_type_preimplant_event`
--

DROP TABLE IF EXISTS `preimplant_situation_type_preimplant_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preimplant_situation_type_preimplant_event` (
  `preimplant_situation_preimplant_events_id` bigint(20) NOT NULL,
  `preimplant_event_id` bigint(20) DEFAULT NULL,
  `preimplant_events_idx` int(11) DEFAULT NULL,
  KEY `FK_ekfea7glgcp1dcl7oi3r5ibvv` (`preimplant_event_id`),
  CONSTRAINT `FK_ekfea7glgcp1dcl7oi3r5ibvv` FOREIGN KEY (`preimplant_event_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preimplant_situation_type_preimplant_event`
--

LOCK TABLES `preimplant_situation_type_preimplant_event` WRITE;
/*!40000 ALTER TABLE `preimplant_situation_type_preimplant_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `preimplant_situation_type_preimplant_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_irsamgnera6angm0prq1kemt2` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,0,'ROLE_USER'),(2,0,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_database_enum_type`
--

DROP TABLE IF EXISTS `type_database_enum_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_database_enum_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `code` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_database_enum_type`
--

LOCK TABLES `type_database_enum_type` WRITE;
/*!40000 ALTER TABLE `type_database_enum_type` DISABLE KEYS */;
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (1,0,'UNKNOWN','espamacs.type.BooleanDBType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (2,0,'NO','espamacs.type.BooleanDBType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (3,0,'YES','espamacs.type.BooleanDBType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (4,0,'INCOMPLETE','espamacs.type.PatientStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (5,0,'ACTIVE','espamacs.type.PatientStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (6,0,'INACTIVE','espamacs.type.PatientStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (7,0,'MALE','espamacs.type.Gender');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (8,0,'FEMALE','espamacs.type.Gender');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (9,0,'SHORT','espamacs.type.CardiacCareType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (10,0,'LONG','espamacs.type.CardiacCareType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (11,0,'UNKNOWN','espamacs.type.BloodType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (12,0,'BLOOD_A','espamacs.type.BloodType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (13,0,'BLOOD_B','espamacs.type.BloodType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (14,0,'BLOOD_AB','espamacs.type.BloodType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (15,0,'BLOOD_0','espamacs.type.BloodType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (16,0,'UNKNOWN','espamacs.type.RHFactor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (17,0,'RH_POSITIVE','espamacs.type.RHFactor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (18,0,'RH_NEGATIVE','espamacs.type.RHFactor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (19,0,'UNKNOWN','espamacs.type.patientData.SmokerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (20,0,'NO','espamacs.type.patientData.SmokerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (21,0,'YES','espamacs.type.patientData.SmokerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (22,0,'EX-SMOKER','espamacs.type.patientData.SmokerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (23,0,'UNKNOWN','espamacs.type.patientData.DiabeticType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (24,0,'NO','espamacs.type.patientData.DiabeticType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (25,0,'TYPE1','espamacs.type.patientData.DiabeticType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (26,0,'TYPE2','espamacs.type.patientData.DiabeticType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (27,0,'UNKNOWN','espamacs.type.patientData.DrinkerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (28,0,'NO_NEVER','espamacs.type.patientData.DrinkerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (29,0,'NO_NOW','espamacs.type.patientData.DrinkerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (30,0,'YES','espamacs.type.patientData.DrinkerType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (31,0,'UNKNOWN','espamacs.type.patientData.IntravenouslyDrugsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (32,0,'NO_NEVER','espamacs.type.patientData.IntravenouslyDrugsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (33,0,'NO_NOW','espamacs.type.patientData.IntravenouslyDrugsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (34,0,'YES','espamacs.type.patientData.IntravenouslyDrugsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (35,0,'NO','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (36,0,'CORONARY','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (37,0,'VALVULAR','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (38,0,'VALVULAR_CORONARY','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (39,0,'THORACIC_AORTA','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (40,0,'CONGENITAL','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (41,0,'LVAD','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (42,0,'RVAD','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (43,0,'ECMO','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (44,0,'OTHER','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (45,0,'NO','espamacs.type.patientData.RenalReplacementTherapy');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (46,0,'PERITONEAL_DIALYSIS','espamacs.type.patientData.RenalReplacementTherapy');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (47,0,'HEMODIALYSIS','espamacs.type.patientData.RenalReplacementTherapy');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (48,0,'KIDNEY_TRANSPLANT','espamacs.type.patientData.RenalReplacementTherapy');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (49,0,'NO','espamacs.type.patientData.PrimaryPulmonaryHypertension');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (51,0,'SOFT','espamacs.type.patientData.PrimaryPulmonaryHypertension');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (52,0,'MODERATE','espamacs.type.patientData.PrimaryPulmonaryHypertension');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (53,0,'SEVERE','espamacs.type.patientData.PrimaryPulmonaryHypertension');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (54,0,'NO','espamacs.type.patientData.PulmonaryEmbolism');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (55,0,'LESS_ONE_YEAR','espamacs.type.patientData.PulmonaryEmbolism');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (56,0,'MORE_ONE_YEAR','espamacs.type.patientData.PulmonaryEmbolism');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (57,0,'NO','espamacs.type.patientData.Hepatitis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (58,0,'VHB-HEALED','espamacs.type.patientData.Hepatitis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (59,0,'VHC-HEALED','espamacs.type.patientData.Hepatitis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (60,0,'VHB-CHRONIC','espamacs.type.patientData.Hepatitis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (61,0,'VHC-CHRONIC','espamacs.type.patientData.Hepatitis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (62,0,'NO','espamacs.type.patientData.AortaPathology');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (63,0,'THORACIC','espamacs.type.patientData.AortaPathology');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (64,0,'ABDOMINAL','espamacs.type.patientData.AortaPathology');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (65,0,'THORACIC_ABDOMINAL','espamacs.type.patientData.AortaPathology');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (66,0,'NO','espamacs.type.patientData.PeripheralVascularDisease');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (67,0,'CAROTID_AXIS','espamacs.type.patientData.PeripheralVascularDisease');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (68,0,'ILIOFEMORAL_AXIS','espamacs.type.patientData.PeripheralVascularDisease');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (69,0,'MULTI_TERRITORY','espamacs.type.patientData.PeripheralVascularDisease');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (70,0,'NO','espamacs.type.patientData.Stroke');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (71,0,'YES_AFTERMATH','espamacs.type.patientData.Stroke');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (72,0,'YES_HEALED','espamacs.type.patientData.Stroke');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (73,0,'NO','espamacs.type.patientData.TransientIschemicAttack');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (74,0,'LESS_ONE_YEAR','espamacs.type.patientData.TransientIschemicAttack');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (75,0,'MORE_ONE_YEAR','espamacs.type.patientData.TransientIschemicAttack');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (76,0,'NO','espamacs.type.patientData.BrainHemorrhage');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (77,0,'LESS_SIX_MONTHS','espamacs.type.patientData.BrainHemorrhage');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (78,0,'MORE_SIX_MONTHS','espamacs.type.patientData.BrainHemorrhage');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (79,0,'NO','espamacs.type.patientData.ThyroidDisorders');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (80,0,'YES_HYPERTHYROIDISM','espamacs.type.patientData.ThyroidDisorders');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (81,0,'YES_HYPOTHYROIDISM','espamacs.type.patientData.ThyroidDisorders');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (82,0,'YES_OTHERS','espamacs.type.patientData.ThyroidDisorders');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (83,0,'NO','espamacs.type.patientData.ChronicAnemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (84,0,'YES_NO_TREATEMENT','espamacs.type.patientData.ChronicAnemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (85,0,'YES_TREATEMENT','espamacs.type.patientData.ChronicAnemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (86,0,'NO','espamacs.type.patientData.MalignantTumor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (87,0,'YES_MORE_5_YEARS','espamacs.type.patientData.MalignantTumor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (88,0,'YES_LESS_5_YEARS','espamacs.type.patientData.MalignantTumor');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (89,0,'NO','espamacs.type.patientData.Leukemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (90,0,'YES_MORE_5_YEARS','espamacs.type.patientData.Leukemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (91,0,'YES_LESS_5_YEARS','espamacs.type.patientData.Leukemia');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (92,0,'NO','espamacs.type.baselineConditions.PeripheralEdemaLevel');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (93,0,'MINOR','espamacs.type.baselineConditions.PeripheralEdemaLevel');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (94,0,'MODERATE','espamacs.type.baselineConditions.PeripheralEdemaLevel');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (95,0,'SEVERE','espamacs.type.baselineConditions.PeripheralEdemaLevel');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (96,0,'UNKNOWN','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (97,0,'PLUS_50','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (98,0,'40_50','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (99,0,'30_39','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (100,0,'20_29','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (101,0,'MINUS_20','espamacs.type.baselineConditions.Lvef');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (102,0,'NO','espamacs.type.baselineConditions.RightVentricleStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (103,0,'MINOR','espamacs.type.baselineConditions.RightVentricleStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (104,0,'MODERATE','espamacs.type.baselineConditions.RightVentricleStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (105,0,'SEVERE','espamacs.type.baselineConditions.RightVentricleStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (106,0,'NO','espamacs.type.baselineConditions.RightVentricleDilatation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (107,0,'MINOR','espamacs.type.baselineConditions.RightVentricleDilatation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (108,0,'MODERATE','espamacs.type.baselineConditions.RightVentricleDilatation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (109,0,'SEVERE','espamacs.type.baselineConditions.RightVentricleDilatation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (110,0,'NORMAL','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (111,0,'PREVIOUS_AORTIC_VALVE_REPLACEMENT','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (112,0,'MINOR_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (113,0,'MODERATE_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (114,0,'SEVERE_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (115,0,'MINOR_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (116,0,'MODERATE_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (117,0,'SEVERE_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (118,0,'NORMAL','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (119,0,'PREVIOUS_MITRAL_VALVE_REPLACEMENT','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (120,0,'MINOR_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (121,0,'MODERATE_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (122,0,'SEVERE_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (123,0,'MINOR_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (124,0,'MODERATE_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (125,0,'SEVERE_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (126,0,'NORMAL','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (127,0,'PREVIOUS_TRICUSPID_VALVE_REPLACEMENT','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (128,0,'MINOR_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (129,0,'MODERATE_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (130,0,'SEVERE_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (131,0,'MINOR_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (132,0,'MODERATE_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (133,0,'SEVERE_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (134,0,'ACE_INHIBITORS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (135,0,'ARBS_II','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (136,0,'CALCIUM_BLOCKERS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (137,0,'BETA_BLOCKERS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (138,0,'ALDOSTERONE_BLOCKERS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (139,0,'LOOP_DIURETICS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (140,0,'AMIODARONE','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (141,0,'DIGOXIN','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (142,0,'OTHER_ANTIARRYTHMICS','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (143,0,'WARFARIN','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (144,0,'HEPARIN','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (145,0,'ANTIAGGREGANT','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (146,0,'NITRIC_OXIDE','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (147,0,'SILDENAFIL','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (148,0,'ILOPROST','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (149,0,'BOSENTAN','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (150,0,'NESERITIDE','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (151,0,'OTHER_HYPERTENSION_MEDICINE','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (152,0,'RESYNCHRONIZATION_THERAPIES','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (153,0,'ICD','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (154,0,'OXYGEN_THERAPY','espamacs.type.baselineConditions.Medication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (155,0,'UNKNOWN','espamacs.type.baselineConditions.Nyha');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (156,0,'TYPE_I','espamacs.type.baselineConditions.Nyha');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (157,0,'TYPE_II','espamacs.type.baselineConditions.Nyha');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (158,0,'TYPE_III','espamacs.type.baselineConditions.Nyha');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (159,0,'TYPE_IV','espamacs.type.baselineConditions.Nyha');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (160,0,'IABP','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (161,0,'VAD','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (162,0,'ECMO','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (163,0,'DIALYSIS','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (164,0,'ULTRAFILTRATION','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (165,0,'INVASIVE_MV','espamacs.type.preimplantSituation.PreimplantEvent');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (166,0,'ADRENALINE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (167,0,'DOBUTAMINE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (168,0,'DOPAMINE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (169,0,'ISOPROTERENOL','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (170,0,'LEVOSIMENDAN','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (171,0,'MILRINONE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (172,0,'NORADRENALINE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (173,0,'NITRIC_OXIDE','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (174,0,'OTHERS','espamacs.type.preimplantSituation.IntropicMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (175,0,'INTERMACS_1','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (176,0,'INTERMACS_2','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (177,0,'INTERMACS_3','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (178,0,'INTERMACS_4','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (179,0,'INTERMACS_5','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (180,0,'INTERMACS_6','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (181,0,'INTERMACS_7','espamacs.type.preimplantSituation.IntermacsSituation');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (182,0,'TRANSITION_RECOVERY','espamacs.type.diagnosis.ImplantGoal');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (183,0,'TRANSITION_TRANSPLANT','espamacs.type.diagnosis.ImplantGoal');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (184,0,'POSSIBLE_TRANSITION_TRANSPLANT','espamacs.type.diagnosis.ImplantGoal');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (185,0,'TARGET_THERAPY','espamacs.type.diagnosis.ImplantGoal');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (186,0,'OTHER','espamacs.type.diagnosis.ImplantGoal');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (187,0,'ELECTIVE_IMPLANT','espamacs.type.diagnosis.ImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (188,0,'URGENT_IMPLANT','espamacs.type.diagnosis.ImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (189,0,'EMERGING_IMPLANT','espamacs.type.diagnosis.ImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (190,0,'POSTCARDIOTOMY','espamacs.type.diagnosis.ImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (191,0,'OTHERS','espamacs.type.diagnosis.ImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (192,0,'NONE','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (193,0,'CANCER','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (194,0,'CONGENITAL_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (195,0,'CORONARY_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (196,0,'VALVE_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (197,0,'PATHOLOGY_AORTA','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (198,0,'VALVULAR_HEAR_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (199,0,'FAMILY_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (200,0,'IDIOPATHIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (201,0,'ISCHEMIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (202,0,'MYOCARDITIS_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (203,0,'POSTPARTUM_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (204,0,'VIRAL_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (205,0,'OTHER_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (206,0,'TOXIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (207,0,'HYPERTROPHIC_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (208,0,'AMYLOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (209,0,'FIBROSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (210,0,'SARCOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (211,0,'QUIMIO_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (212,0,'IDIOPATHIC_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (213,0,'OTHER_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (214,0,'OTHER','espamacs.type.diagnosis.MainCardiacImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (215,0,'NONE','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (216,0,'PRIMARY_GRAFT_FAILURE','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (217,0,'MASSIVE_PULMONARY_EMBOLISM','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (218,0,'PNEUMONIA','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (219,0,'ACUTE_RESPIRATORY_DISTRESS_SYNDROME','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (220,0,'PRE_LUNG_TRANSPLANT','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (221,0,'OTHER','espamacs.type.diagnosis.MainLungImplantCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (222,0,'LVAD','espamacs.type.implantData.ImplantType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (223,0,'RVAD','espamacs.type.implantData.ImplantType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (224,0,'LVAD_RVAD','espamacs.type.implantData.ImplantType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (225,0,'TOTAL','espamacs.type.implantData.ImplantType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (226,0,'ECMO','espamacs.type.implantData.ImplantType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (227,0,'AB5000','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (228,0,'THORATEX_PVAD','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (229,0,'LEVITRONIX_CENTRIMAG','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (230,0,'BERLIN_HEART_EXCOR','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (231,0,'BERLIN_HEART_INCOR','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (232,0,'JARVIC_2000','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (233,0,'HEARTWARE_HVAD','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (234,0,'HEARTWARE_MVAD','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (235,0,'TERUMO_DURAHEART','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (236,0,'HEARTASSIST_5','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (237,0,'HEARTMATE_II','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (238,0,'HEARTMATE_III','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (239,0,'IMPELLA','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (240,0,'TANDEM_HEART','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (241,0,'BIOMEDICUS','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (242,0,'BVS_5000','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (243,0,'OTHER','espamacs.type.implantData.LvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (244,0,'AB5000','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (245,0,'THORATEC_PVAD','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (246,0,'LEVITRONIX_CENTRIMAG','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (247,0,'BERLIN_HEART_EXCOR','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (248,0,'HEARTWARE_HVAD','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (249,0,'HEARTWARE_MVAD','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (250,0,'BIOMEDICUS','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (251,0,'BVS5000','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (252,0,'OTHER','espamacs.type.implantData.RvadBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (253,0,'ABIOCOR','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (254,0,'SYNCARDIA','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (255,0,'AKUTSU_III','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (256,0,'BIVACOR','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (257,0,'JARVIC7','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (258,0,'OTHER','espamacs.type.implantData.HeartTotalBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (259,0,'ROTAFLOW_PLS','espamacs.type.implantData.EcmoBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (260,0,'CARDIO_HELP','espamacs.type.implantData.EcmoBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (261,0,'CENTRIFUGAL_OXIGENATOR','espamacs.type.implantData.EcmoBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (262,0,'OTHERS','espamacs.type.implantData.EcmoBrand');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (263,0,'PULSATILE','espamacs.type.implantData.BloodFlowType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (264,0,'CONTINUOUS','espamacs.type.implantData.BloodFlowType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (265,0,'LEFT_ATRIUM','espamacs.type.implantData.ImplantLvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (266,0,'LEFT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantLvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (267,0,'APEX_VI','espamacs.type.implantData.ImplantLvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (268,0,'OTHER','espamacs.type.implantData.ImplantLvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (269,0,'ASCENDING_AORTA','espamacs.type.implantData.ImplantLvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (270,0,'DESCENDING_THORACIC_AORTA','espamacs.type.implantData.ImplantLvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (271,0,'ABDOMINAL_AORTA','espamacs.type.implantData.ImplantLvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (272,0,'OTHER','espamacs.type.implantData.ImplantLvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (273,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantRvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (274,0,'RIGHT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantRvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (275,0,'APEX_VD','espamacs.type.implantData.ImplantRvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (276,0,'OTHER','espamacs.type.implantData.ImplantRvadIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (277,0,'PULMONARY_ARTERY','espamacs.type.implantData.ImplantRvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (278,0,'OTHER','espamacs.type.implantData.ImplantRvadOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (279,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantTotalIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (280,0,'RIGHT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantTotalIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (281,0,'APEX_VD','espamacs.type.implantData.ImplantTotalIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (282,0,'OTHER','espamacs.type.implantData.ImplantTotalIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (283,0,'ASCENDING_AORTA','espamacs.type.implantData.ImplantTotalOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (284,0,'DESCENDING_THORACIC_AORTA','espamacs.type.implantData.ImplantTotalOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (285,0,'ABDOMINAL_AORTA','espamacs.type.implantData.ImplantTotalOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (286,0,'OTHER','espamacs.type.implantData.ImplantTotalOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (287,0,'FEMORAL_VEIN','espamacs.type.implantData.ImplantEcmoIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (288,0,'JUGULAR_VEIN','espamacs.type.implantData.ImplantEcmoIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (289,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantEcmoIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (290,0,'OTHER','espamacs.type.implantData.ImplantEcmoIn');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (291,0,'FEMORAL_VEIN','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (292,0,'JUGULAR_VEIN','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (293,0,'FEMORAL_ARTERY','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (294,0,'SUBCLAVIAN_ARTERY','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (295,0,'CAROTID_ARTERY','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (296,0,'AORTA','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (297,0,'PULMONARY_ARTERY','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (298,0,'OTHER','espamacs.type.implantData.ImplantEcmoOut');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (299,0,'AORTIC_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (300,0,'MITRAL_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (301,0,'TRICUSPID_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (302,0,'PULMONARY_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (303,0,'CABG','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (304,0,'OTHER','espamacs.type.implantData.CollateralSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (305,0,'HOME','espamacs.type.initialData.DischargedDestination');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (306,0,'INTERMEDIATE_CARE_UNIT','espamacs.type.initialData.DischargedDestination');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (307,0,'REHABILIATATION','espamacs.type.initialData.DischargedDestination');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (308,0,'OTHER','espamacs.type.initialData.DischargedDestination');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (309,0,'NONE_PATIENT_DEATH','espamacs.type.initialData.DischargedDestination');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (310,0,'ASSISTED','espamacs.type.initialData.DischargedStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (311,0,'UNASSISTED','espamacs.type.initialData.DischargedStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (312,0,'DURING_ASSISTANCE','espamacs.type.initialData.ExistusStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (313,0,'POST_ASSISTANCE','espamacs.type.initialData.ExistusStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (314,0,'1_7','espamacs.type.initialData.TimeWithoutIntropicIV');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (315,0,'8_13','espamacs.type.initialData.TimeWithoutIntropicIV');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (316,0,'14_27','espamacs.type.initialData.TimeWithoutIntropicIV');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (317,0,'27_MORE','espamacs.type.initialData.TimeWithoutIntropicIV');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (318,0,'BLEEDING_BEFORE_48','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (319,0,'BLEEDING_AFTER_48','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (320,0,'CHEST_DRAINAGE','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (321,0,'REINTUBATE','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (322,0,'HEMOFILTRATIOIN','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (323,0,'HEMODIALYSIS','espamacs.type.initialData.SurgicalProcedureAfterTransplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (324,0,'NONE','espamacs.type.initialData.RightVentricleFailureAfterImplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (325,0,'YES_MEDICAL_TREATMENT','espamacs.type.initialData.RightVentricleFailureAfterImplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (326,0,'YES_IABP','espamacs.type.initialData.RightVentricleFailureAfterImplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (327,0,'YES_RVAD','espamacs.type.initialData.RightVentricleFailureAfterImplant');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (328,0,'ACE_INHIBITORS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (329,0,'AIIRAS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (330,0,'CALCIUM_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (331,0,'BETA_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (332,0,'ALDOSTERONE_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (333,0,'LOOP_DIURETICS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (334,0,'AMIODARONE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (335,0,'DIGOXIN','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (336,0,'OTHER_ANTIARRYTHMICS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (337,0,'NITRIC_OXIDE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (338,0,'SILDENAFIL','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (339,0,'ILOPROST','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (340,0,'BOSENTAN','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (341,0,'NESERITIDE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (342,0,'OTHER','espamacs.type.initialData.CardiologicalTreatmenAtDischarge');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (343,0,'WARFARIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (344,0,'ACETYLSALICYLIC_ACID','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (345,0,'DIPYRIDAMOLE','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (346,0,'CLOPIDOGREL','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (347,0,'TICLOPIDINE','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (348,0,'HEPARIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (349,0,'ENOXAPARIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (350,0,'BIVALIRUDIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (351,0,'ARGOTRAVAN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (352,0,'HIRUDIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (353,0,'LEPIRUDIN','espamacs.type.initialData.BloodMedication');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (354,0,'ICU','espamacs.type.event.PatientHealthStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (355,0,'HOSPITAL_ADMISION','espamacs.type.event.PatientHealthStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (356,0,'OTHER_HOSPITAL_ADMISION','espamacs.type.event.PatientHealthStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (357,0,'DISCHARGED','espamacs.type.event.PatientHealthStatus');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (358,0,'NO','espamacs.type.event.RemovedAssistance');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (359,0,'YES_HEALED','espamacs.type.event.RemovedAssistance');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (360,0,'YES_TRNSPLANT','espamacs.type.event.RemovedAssistance');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (361,0,'YES_CHANGE_ASSISTANCE','espamacs.type.event.RemovedAssistance');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (362,0,'YES_DEAD','espamacs.type.event.RemovedAssistance');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (363,0,'NONE','espamacs.type.event.RemovedAssistanceDeath');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (364,0,'CARDIOVASCULAR_CAUSE','espamacs.type.event.RemovedAssistanceDeath');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (365,0,'NO_CARDIOVASCULAR_CAUSE','espamacs.type.event.RemovedAssistanceDeath');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (366,0,'OTHER','espamacs.type.event.RemovedAssistanceDeath');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (367,0,'PUMP_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (368,0,'CONTROL_DEVICE_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (369,0,'BATERY_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (370,0,'DEVICE_THROMBOSIS','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (371,0,'MISPLACEMENT_INPUT_CANNULA','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (372,0,'MISPLACEMENT_OUTPUT_CANNULA','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (373,0,'THROMBOSIS_INPUT_VALVE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (374,0,'THROMBOSIS_OUTPUT_VALVE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (375,0,'PATIENT_NEGLIGENCE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (376,0,'OTHER','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (377,0,'TRANSFUSION','espamacs.type.event.hemorrhage.HemorrhageCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (378,0,'TRANSFUSION_ICU','espamacs.type.event.hemorrhage.HemorrhageCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (379,0,'TRANSFUSION_ICU_SURGERY','espamacs.type.event.hemorrhage.HemorrhageCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (380,0,'DEAD','espamacs.type.event.hemorrhage.HemorrhageCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (381,0,'YES_URGENT','espamacs.type.event.malfunctionDevice.UrgentSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (382,0,'YES_NO_URGENT','espamacs.type.event.malfunctionDevice.UrgentSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (383,0,'NO','espamacs.type.event.malfunctionDevice.UrgentSurgery');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (384,0,'MEDICAL','espamacs.type.event.hemorrhage.HemorrhageTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (385,0,'CARDIAC_SURGERY','espamacs.type.event.hemorrhage.HemorrhageTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (386,0,'NO_CARDIAC_SURGERY','espamacs.type.event.hemorrhage.HemorrhageTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (387,0,'MEDIASINUM','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (388,0,'SUTURES_DEVICE','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (389,0,'CANNULATION_PLACE','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (390,0,'INTRAABDOMINAL','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (391,0,'CHEST_WALL','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (392,0,'GASTROINTESTINAL','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (393,0,'RESPIRATORY','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (394,0,'POCKET_PUMP','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (395,0,'IN_OUT_DUCT','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (396,0,'PLEURAL_SPACE','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (397,0,'RETROPERITONEO','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (398,0,'OTHER','espamacs.type.event.hemorrhage.BleedingPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (399,0,'SEPSIS','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (400,0,'RESPIRATORY','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (401,0,'URINARY','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (402,0,'GASTROINTESTINAL','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (403,0,'PERIPHERAL_WOUND','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (404,0,'CATHETER','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (405,0,'MEDIASTINITIS','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (406,0,'CONTROL_LINE','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (407,0,'CANNULAS_OUT','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (408,0,'PUMP','espamacs.type.event.infection.InfectionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (409,0,'MEDICAL','espamacs.type.event.infection.InfectionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (410,0,'SURGERY','espamacs.type.event.infection.InfectionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (411,0,'MEDICAL_SURGERY','espamacs.type.event.infection.InfectionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (412,0,'ISCHEMIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (413,0,'HEMORRHAGIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (414,0,'ISCHEMIC_HEMORRHAGIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (415,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (416,0,'ISCHEMIC_STROKE_TEMPORAL','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (417,0,'ISCHEMIC_STROKE_NO_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (418,0,'ISCHEMIC_STROKE_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (419,0,'ISCHEMIC_STROKE_DEAD','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (420,0,'HEMORRHAGIC_STROKE_NO_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (421,0,'HEMORRHAGIC_STROKE_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (422,0,'HEMORRHAGIC_STROKE_DEAD','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (423,0,'DEVICE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (424,0,'MEDICATION','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (425,0,'COMPLEX_PATIENT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (426,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (427,0,'UNKNOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (428,0,'INR_UP','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (429,0,'INR_DOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (430,0,'UNKNOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (431,0,'APTT_UP','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (432,0,'APTT_DOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (433,0,'RIGHT_HEMISPHERE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (434,0,'left_HEMISPHERE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (435,0,'OCCIPITAL','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (436,0,'BRAINSTEM','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (437,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (438,0,'TAC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (439,0,'NUCLEAR_MAGNETIC_RESONANCE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (440,0,'ANGIOGRAPHY','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (441,0,'CLINIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (442,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (443,0,'NONE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (444,0,'HEPARINE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (445,0,'FIBRINOLYSIS','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (446,0,'ANTICONVULSANTS','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (447,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (448,0,'VENTRICULAR','espamacs.type.event.arrhythmia.ArrhythmiaType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (449,0,'SUPRAVENTRICULAR','espamacs.type.event.arrhythmia.ArrhythmiaType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (450,0,'HEMODIALYSIS','espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (451,0,'HEMOFILTRATION','espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (452,0,'PULMONARY','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (453,0,'RENAL','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (454,0,'HEPATIC','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (455,0,'SPLEN','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (456,0,'EXTREMITIES','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (457,0,'CLINIC','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (458,0,'INVASIVE_TECHNIQUES','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (459,0,'INTREAOPERATIVE_FINDING','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (460,0,'NECROPSY_FINDING','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (461,0,'WOUND','espamacs.type.event.woundDehiscence.WoundDehiscenceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (462,0,'BREASTBONE','espamacs.type.event.woundDehiscence.WoundDehiscenceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (463,0,'WOUND_BREASTBONE','espamacs.type.event.woundDehiscence.WoundDehiscenceType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (464,0,'VENOUS_DEEP','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (465,0,'PULMONARY','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (466,0,'OTHER','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (467,0,'DA','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (468,0,'CX','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (469,0,'DP','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (470,0,'MULTIPLE','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (471,0,'UNKOWN','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (472,0,'CORONARY_DISEASE','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (473,0,'DEVICE_CAUSE','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (474,0,'OTHER','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (475,0,'MEDICAL','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (476,0,'INTERVENTION','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (477,0,'SURGERY','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (478,0,'SOFT','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (479,0,'MODERATE','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (480,0,'SEVERE','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (481,0,'NONE','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (482,0,'PERCUTANEOUS','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (483,0,'SURGICAL','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (484,0,'OTHER','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (485,0,'UNKNOWN','espamacs.type.event.hemolysis.HemolysisCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (486,0,'DUETO_ASSISTANCE','espamacs.type.event.hemolysis.HemolysisCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (487,0,'HEMATOLOGIC','espamacs.type.event.hemolysis.HemolysisCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (488,0,'OTHER','espamacs.type.event.hemolysis.HemolysisCause');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (489,0,'ASCItES','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (490,0,'EDEMAS','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (491,0,'IC','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (492,0,'PVC','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (493,0,'RIGHT_ASISTANCE','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (494,0,'INOTROPICS','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (495,0,'OTHER','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (496,0,'ISCHEMIC','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (497,0,'LYMPHORRHAGIA','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType');
INSERT INTO type_database_enum_type (id,version,code,class) VALUES (498,0,'OTHER','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType');

/*!40000 ALTER TABLE `type_database_enum_type` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-25 10:45:56
