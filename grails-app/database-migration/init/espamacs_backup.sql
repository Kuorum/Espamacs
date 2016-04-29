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
  `ntprobnp` double DEFAULT NULL,
  `albumin` double DEFAULT NULL,
  `alt` double DEFAULT NULL,
  `analytic_date` datetime DEFAULT NULL,
  `ascites_id` bigint(20) DEFAULT NULL,
  `ast` double DEFAULT NULL,
  `bilirubin` double DEFAULT NULL,
  `cpk` double DEFAULT NULL,
  `creatinine` double DEFAULT NULL,
  `crp` double DEFAULT NULL,
  `echocardiogram_date` datetime DEFAULT NULL,
  `hemodynamic_data_average_arterial_pressure` double DEFAULT NULL,
  `hemodynamic_data_average_arterial_pulmonary_pressure` double DEFAULT NULL,
  `hemodynamic_data_cardiac_index` double DEFAULT NULL,
  `hemodynamic_data_cardiac_output` double DEFAULT NULL,
  `hemodynamic_data_catheterization_date` datetime DEFAULT NULL,
  `hemodynamic_data_central_venous_pressure` double DEFAULT NULL,
  `hemodynamic_data_diastolic_arterial_pressure` double DEFAULT NULL,
  `hemodynamic_data_diastolic_arterial_pulmonary_pressure` double DEFAULT NULL,
  `hemodynamic_data_hear_rate` double DEFAULT NULL,
  `hemodynamic_data_pulmonary_capillary_pressure` double DEFAULT NULL,
  `hemodynamic_data_pulmonary_vascular_resistance` double DEFAULT NULL,
  `hemodynamic_data_systemic_vascular_resistance` double DEFAULT NULL,
  `hemodynamic_data_systolic_arterial_pressure` double DEFAULT NULL,
  `hemodynamic_data_systolic_arterial_pulmonary_pressure` double DEFAULT NULL,
  `hemodynamic_data_systolic_effort_index` double DEFAULT NULL,
  `hemodynamic_data_transpulmonary_gradient` double DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `inr` double DEFAULT NULL,
  `lactate` double DEFAULT NULL,
  `ldh` double DEFAULT NULL,
  `leukocytes` double DEFAULT NULL,
  `lvdtdd` double DEFAULT NULL,
  `lvef_id` bigint(20) DEFAULT NULL,
  `lvesd` double DEFAULT NULL,
  `nyha_id` bigint(20) DEFAULT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `peripheral_edema_level_id` bigint(20) DEFAULT NULL,
  `platelets` double DEFAULT NULL,
  `potassium` double DEFAULT NULL,
  `right_ventricle_dilatation_id` bigint(20) DEFAULT NULL,
  `right_ventricle_status_id` bigint(20) DEFAULT NULL,
  `six_minutes_date` datetime DEFAULT NULL,
  `six_minutes_test_distance_metres` double DEFAULT NULL,
  `six_minutes_test_distancev02` double DEFAULT NULL,
  `sodium` double DEFAULT NULL,
  `tapse` double DEFAULT NULL,
  `urea` double DEFAULT NULL,
  `volume_end_diastole` double DEFAULT NULL,
  `volume_end_sistole` double DEFAULT NULL,
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
-- Table structure for table `central_nervous_system`
--

DROP TABLE IF EXISTS `central_nervous_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `central_nervous_system` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `brain_hemorrhage_id` bigint(20) NOT NULL,
  `severe_neurological_disease_id` bigint(20) NOT NULL,
  `stroke_id` bigint(20) NOT NULL,
  `transient_ischemic_attack_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_y2tnqovbhd2trxdcw1xv0wwx` (`brain_hemorrhage_id`),
  KEY `FK_oxt5lynm8t7ek70n722ve1eb9` (`severe_neurological_disease_id`),
  KEY `FK_u4dandrfnoj8hgyj81g635fu` (`stroke_id`),
  KEY `FK_16axfg0ddontlf67ydrx6fjve` (`transient_ischemic_attack_id`),
  CONSTRAINT `FK_16axfg0ddontlf67ydrx6fjve` FOREIGN KEY (`transient_ischemic_attack_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_oxt5lynm8t7ek70n722ve1eb9` FOREIGN KEY (`severe_neurological_disease_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_u4dandrfnoj8hgyj81g635fu` FOREIGN KEY (`stroke_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_y2tnqovbhd2trxdcw1xv0wwx` FOREIGN KEY (`brain_hemorrhage_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `central_nervous_system`
--

LOCK TABLES `central_nervous_system` WRITE;
/*!40000 ALTER TABLE `central_nervous_system` DISABLE KEYS */;
/*!40000 ALTER TABLE `central_nervous_system` ENABLE KEYS */;
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
  KEY `FK_ru0g57lcjd4cs81ho1rc3qe22` (`implant_cause_id`),
  KEY `FK_eypp4qk7yx0p82t1r3hfuv28x` (`implant_goal_id`),
  KEY `FK_oy03uxy7ijd53rurn6qhxpe50` (`main_lung_implant_cause_id`),
  CONSTRAINT `FK_2b1vr2ypnsjfytow1xd00763` FOREIGN KEY (`contraindication_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_eypp4qk7yx0p82t1r3hfuv28x` FOREIGN KEY (`implant_goal_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_kiitlhr18arb0t4fmt5c8n57c` FOREIGN KEY (`cardiac_implant_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_oy03uxy7ijd53rurn6qhxpe50` FOREIGN KEY (`main_lung_implant_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ru0g57lcjd4cs81ho1rc3qe22` FOREIGN KEY (`implant_cause_id`) REFERENCES `type_database_enum_type` (`id`)
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
  `alt` double DEFAULT NULL,
  `ast` double DEFAULT NULL,
  `bilirrubin` double DEFAULT NULL,
  `wound_dehiscence_type_id` bigint(20) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `aptt_id` bigint(20) DEFAULT NULL,
  `inr_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_cause_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_diagnosis_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_effect_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_place_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_type_id` bigint(20) DEFAULT NULL,
  `surgery` bit(1) DEFAULT NULL,
  `treatement_id` bigint(20) DEFAULT NULL,
  `venous_thromboembolism_place_id` bigint(20) DEFAULT NULL,
  `infection_place_id` bigint(20) DEFAULT NULL,
  `infection_treatment_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_needs_id` bigint(20) DEFAULT NULL,
  `peripheral_vascular_access_complications_type_id` bigint(20) DEFAULT NULL,
  `hemorrhage_cause_id` bigint(20) DEFAULT NULL,
  `hemorrhage_treatment_id` bigint(20) DEFAULT NULL,
  `change_assistance_components` bit(1) DEFAULT NULL,
  `malfunction_device_type_id` bigint(20) DEFAULT NULL,
  `urgent_surgery_id` bigint(20) DEFAULT NULL,
  `flow_blocking` bit(1) DEFAULT NULL,
  `pericardial_effussion_drain_method_id` bigint(20) DEFAULT NULL,
  `pericardial_effussion_quantity_id` bigint(20) DEFAULT NULL,
  `arrhythmia_type_id` bigint(20) DEFAULT NULL,
  `creatinine` double DEFAULT NULL,
  `days_after_surgery` int(11) DEFAULT NULL,
  `recover_renal_functionality` bit(1) DEFAULT NULL,
  `renal_dysfunction_treatment_id` bigint(20) DEFAULT NULL,
  `therapy_days` int(11) DEFAULT NULL,
  `days_with_respiratory_problems` int(11) DEFAULT NULL,
  `tracheotomy` bit(1) DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `hemolysis_cause_id` bigint(20) DEFAULT NULL,
  `ldh` double DEFAULT NULL,
  `arterial_thromboembolism_diagnosis_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_cause_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_place_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_treatment_id` bigint(20) DEFAULT NULL,
  `events_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9848kbetc6v9qm57d727cvbox` (`patient_id`),
  KEY `FK_66ksb2vk8ogs149a9mrep1vb8` (`patient_health_status_id`),
  KEY `FK_2ncxscv57y5blvnadacsenk48` (`removed_assistance_id`),
  KEY `FK_8q30cov2bng29hr4u0indiacu` (`removed_assistance_death_id`),
  KEY `FK_s50xm5g3d7qewy15xukxw8pfv` (`wound_dehiscence_type_id`),
  KEY `FK_pvt0wyv1gyhkjl1efp28nlpqq` (`aptt_id`),
  KEY `FK_mugw1lk6ar777iqg9pu8cdwuh` (`inr_id`),
  KEY `FK_kkx8r955p0b4c9g82llivxr5a` (`neurological_dysfunction_cause_id`),
  KEY `FK_3ovg6kjmp0iw7n1ppsg68dtjm` (`neurological_dysfunction_diagnosis_id`),
  KEY `FK_1o3fvyp609qga8plgrt5noow5` (`neurological_dysfunction_effect_id`),
  KEY `FK_grxr7npfb0phtq6qcged4fkk9` (`neurological_dysfunction_place_id`),
  KEY `FK_ia3c3cq3u9l41cv4fey92cf07` (`neurological_dysfunction_type_id`),
  KEY `FK_2ee009v942w8xotuqlo26pmt9` (`treatement_id`),
  KEY `FK_8kgh0wy5uo4rccajl24g3m2da` (`venous_thromboembolism_place_id`),
  KEY `FK_j35tilxoaduj0cc4gxo2vwni7` (`infection_place_id`),
  KEY `FK_58gbttxt2pfggwt55sxksxsi2` (`infection_treatment_id`),
  KEY `FK_33l1mx9lwkvd1b14ygaec0btx` (`right_heart_failure_needs_id`),
  KEY `FK_kh2o4q6jxaj7x00bsw4u3oyrv` (`peripheral_vascular_access_complications_type_id`),
  KEY `FK_ilhak7kawj62m2quav420paym` (`hemorrhage_cause_id`),
  KEY `FK_otu9ci4qyqkrfhb8pp6mmfwjo` (`hemorrhage_treatment_id`),
  KEY `FK_t3osnu02c228naglqnqsyrjjf` (`malfunction_device_type_id`),
  KEY `FK_4r4c6pymfjiyy0a2gid6edrc9` (`urgent_surgery_id`),
  KEY `FK_40c5m697r51570fjnu221tfcn` (`pericardial_effussion_drain_method_id`),
  KEY `FK_7vedlb6cgb4qaingoqp8ch446` (`pericardial_effussion_quantity_id`),
  KEY `FK_s9wkspf2wcb3ggky7wl356o9p` (`arrhythmia_type_id`),
  KEY `FK_s2uc7jdocl9j8quu24md579m2` (`renal_dysfunction_treatment_id`),
  KEY `FK_mqh3e9g9lrucxp6hlo9q9f2i8` (`hemolysis_cause_id`),
  KEY `FK_21tyujn58itwlqq6yd95w0bfl` (`arterial_thromboembolism_diagnosis_id`),
  KEY `FK_hid46nbqou0psojs2raxhotxh` (`myocardial_infraction_cause_id`),
  KEY `FK_3086fbl3w4grn483yqyrybsro` (`myocardial_infraction_place_id`),
  KEY `FK_ru913yebw3d9g9s0k4i0geawr` (`myocardial_infraction_treatment_id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,0,'',2,'2016-04-29 12:03:26',1,'',351,355,360,'espamacs.event.MalfunctionDevice',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',364,378,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),
(2,0,'\0',NULL,'2016-04-15 00:00:00',1,'\0',351,355,360,'espamacs.event.RightHeartFailure',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1);
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
INSERT INTO `patient` VALUES (1,2,NULL,'2016-04-29 12:03:25',11,15,9,1,'INC',NULL,'ExternalId',8,156.3,NULL,'1956-05-14 12:03:25',NULL,60,4,NULL,NULL,16,86.2),
(2,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-1',NULL,'External-1',7,100,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,10),
(3,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-2',NULL,'External-2',7,200,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,20),
(4,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-3',NULL,'External-3',7,300,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,30),
(5,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-4',NULL,'External-4',7,400,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,40),
(6,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-5',NULL,'External-5',7,500,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,50),
(7,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-6',NULL,'External-6',7,600,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,60),
(8,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-7',NULL,'External-7',7,700,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,70),
(9,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-8',NULL,'External-8',7,800,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,80),
(10,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-9',NULL,'External-9',7,900,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,90),
(11,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-10',NULL,'External-10',7,1000,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,100),
(12,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-11',NULL,'External-11',7,1100,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,110),
(13,0,NULL,'2016-04-29 12:03:26',11,15,10,2,'Paz-12',NULL,'External-12',7,1200,NULL,'1956-05-14 12:03:26',NULL,60,4,NULL,NULL,16,120),
(14,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-13',NULL,'External-13',7,1300,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,130),
(15,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-14',NULL,'External-14',7,1400,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,140),
(16,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-15',NULL,'External-15',7,1500,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,150),
(17,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-16',NULL,'External-16',7,1600,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,160),
(18,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-17',NULL,'External-17',7,1700,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,170),
(19,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-18',NULL,'External-18',7,1800,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,180),
(20,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-19',NULL,'External-19',7,1900,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,190),
(21,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-20',NULL,'External-20',7,2000,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,200),
(22,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-21',NULL,'External-21',7,2100,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,210),
(23,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-22',NULL,'External-22',7,2200,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,220),
(24,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-23',NULL,'External-23',7,2300,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,230),
(25,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-24',NULL,'External-24',7,2400,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,240),
(26,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-25',NULL,'External-25',7,2500,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,250),
(27,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-26',NULL,'External-26',7,2600,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,260),
(28,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-27',NULL,'External-27',7,2700,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,270),
(29,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-28',NULL,'External-28',7,2800,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,280),
(30,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-29',NULL,'External-29',7,2900,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,290),
(31,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-30',NULL,'External-30',7,3000,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,300),
(32,0,NULL,'2016-04-29 12:03:27',11,15,10,2,'Paz-31',NULL,'External-31',7,3100,NULL,'1956-05-14 12:03:27',NULL,60,4,NULL,NULL,16,310),
(33,0,NULL,'2016-04-29 12:03:28',11,15,10,2,'Paz-32',NULL,'External-32',7,3200,NULL,'1956-05-14 12:03:28',NULL,60,4,NULL,NULL,16,320),
(34,0,NULL,'2016-04-29 12:03:28',11,15,10,2,'Paz-33',NULL,'External-33',7,3300,NULL,'1956-05-14 12:03:28',NULL,60,4,NULL,NULL,16,330),
(35,0,NULL,'2016-04-29 12:03:28',11,15,10,2,'Paz-34',NULL,'External-34',7,3400,NULL,'1956-05-14 12:03:28',NULL,60,4,NULL,NULL,16,340),
(36,0,NULL,'2016-04-29 12:03:28',11,15,10,2,'Paz-35',NULL,'External-35',7,3500,NULL,'1956-05-14 12:03:28',NULL,60,4,NULL,NULL,16,350);
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
  `drinker_id` bigint(20) NOT NULL,
  `dyslipidemia_id` bigint(20) NOT NULL,
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
  KEY `FK_s40ke2vghkcalb3dcwu9ebjah` (`drinker_id`),
  KEY `FK_58p9450eas9jc7dtuqjcj3vq6` (`dyslipidemia_id`),
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
  CONSTRAINT `FK_58p9450eas9jc7dtuqjcj3vq6` FOREIGN KEY (`dyslipidemia_id`) REFERENCES `type_database_enum_type` (`id`),
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
-- Table structure for table `right_heart_failure_type_right_heart_failure_signals`
--

DROP TABLE IF EXISTS `right_heart_failure_type_right_heart_failure_signals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `right_heart_failure_type_right_heart_failure_signals` (
  `right_heart_failure_right_heart_failure_signals_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_signals_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_signals_idx` int(11) DEFAULT NULL,
  KEY `FK_iav17hnf2xha39k8s7dr9mtdw` (`right_heart_failure_signals_id`),
  CONSTRAINT `FK_iav17hnf2xha39k8s7dr9mtdw` FOREIGN KEY (`right_heart_failure_signals_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `right_heart_failure_type_right_heart_failure_signals`
--

LOCK TABLES `right_heart_failure_type_right_heart_failure_signals` WRITE;
/*!40000 ALTER TABLE `right_heart_failure_type_right_heart_failure_signals` DISABLE KEYS */;
INSERT INTO `right_heart_failure_type_right_heart_failure_signals` VALUES (2,486,0),
(2,487,1);
/*!40000 ALTER TABLE `right_heart_failure_type_right_heart_failure_signals` ENABLE KEYS */;
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
INSERT INTO `role` VALUES (1,0,'ROLE_USER'),
(2,0,'ROLE_ADMIN');
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
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_database_enum_type`
--

LOCK TABLES `type_database_enum_type` WRITE;
/*!40000 ALTER TABLE `type_database_enum_type` DISABLE KEYS */;
INSERT INTO `type_database_enum_type` VALUES (1,0,'UNKNOWN','espamacs.type.BooleanDBType'),
(2,0,'NO','espamacs.type.BooleanDBType'),
(3,0,'YES','espamacs.type.BooleanDBType'),
(4,0,'INCOMPLETE','espamacs.type.PatientStatus'),
(5,0,'ACTIVE','espamacs.type.PatientStatus'),
(6,0,'INACTIVE','espamacs.type.PatientStatus'),
(7,0,'MALE','espamacs.type.Gender'),
(8,0,'FEMALE','espamacs.type.Gender'),
(9,0,'SHORT','espamacs.type.CardiacCareType'),
(10,0,'LONG','espamacs.type.CardiacCareType'),
(11,0,'UNKNOWN','espamacs.type.BloodType'),
(12,0,'BLOOD_A','espamacs.type.BloodType'),
(13,0,'BLOOD_B','espamacs.type.BloodType'),
(14,0,'BLOOD_AB','espamacs.type.BloodType'),
(15,0,'BLOOD_0','espamacs.type.BloodType'),
(16,0,'UNKNOWN','espamacs.type.RHFactor'),
(17,0,'RH_POSITIVE','espamacs.type.RHFactor'),
(18,0,'RH_NEGATIVE','espamacs.type.RHFactor'),
(19,0,'UNKNOWN','espamacs.type.patientData.SmokerType'),
(20,0,'NO','espamacs.type.patientData.SmokerType'),
(21,0,'YES','espamacs.type.patientData.SmokerType'),
(22,0,'EX-SMOKER','espamacs.type.patientData.SmokerType'),
(23,0,'UNKNOWN','espamacs.type.patientData.DiabeticType'),
(24,0,'NO','espamacs.type.patientData.DiabeticType'),
(25,0,'TYPE1','espamacs.type.patientData.DiabeticType'),
(26,0,'TYPE2','espamacs.type.patientData.DiabeticType'),
(27,0,'UNKNOWN','espamacs.type.patientData.DrinkerType'),
(28,0,'NO_NEVER','espamacs.type.patientData.DrinkerType'),
(29,0,'NO_NOW','espamacs.type.patientData.DrinkerType'),
(30,0,'YES','espamacs.type.patientData.DrinkerType'),
(31,0,'UNKNOWN','espamacs.type.patientData.IntravenouslyDrugsType'),
(32,0,'NO_NEVER','espamacs.type.patientData.IntravenouslyDrugsType'),
(33,0,'NO_NOW','espamacs.type.patientData.IntravenouslyDrugsType'),
(34,0,'YES','espamacs.type.patientData.IntravenouslyDrugsType'),
(35,0,'NO','espamacs.type.patientData.PreCardiacSurgery'),
(36,0,'CORONARY','espamacs.type.patientData.PreCardiacSurgery'),
(37,0,'VALVULAR','espamacs.type.patientData.PreCardiacSurgery'),
(38,0,'VALVULAR_CORONARY','espamacs.type.patientData.PreCardiacSurgery'),
(39,0,'THORACIC_AORTA','espamacs.type.patientData.PreCardiacSurgery'),
(40,0,'CONGENITAL','espamacs.type.patientData.PreCardiacSurgery'),
(41,0,'LVAD','espamacs.type.patientData.PreCardiacSurgery'),
(42,0,'RVAD','espamacs.type.patientData.PreCardiacSurgery'),
(43,0,'ECMO','espamacs.type.patientData.PreCardiacSurgery'),
(44,0,'OTHER','espamacs.type.patientData.PreCardiacSurgery'),
(45,0,'NO','espamacs.type.patientData.RenalReplacementTherapy'),
(46,0,'PERITONEAL_DIALYSIS','espamacs.type.patientData.RenalReplacementTherapy'),
(47,0,'HEMODIALYSIS','espamacs.type.patientData.RenalReplacementTherapy'),
(48,0,'KIDNEY_TRANSPLANT','espamacs.type.patientData.RenalReplacementTherapy'),
(49,0,'NO','espamacs.type.patientData.PrimaryPulmonaryHypertension'),
(50,0,'SOFT','espamacs.type.patientData.PrimaryPulmonaryHypertension'),
(51,0,'MODERATE','espamacs.type.patientData.PrimaryPulmonaryHypertension'),
(52,0,'SEVERE','espamacs.type.patientData.PrimaryPulmonaryHypertension'),
(53,0,'NO','espamacs.type.patientData.PulmonaryEmbolism'),
(54,0,'LESS_ONE_YEAR','espamacs.type.patientData.PulmonaryEmbolism'),
(55,0,'MORE_ONE_YEAR','espamacs.type.patientData.PulmonaryEmbolism'),
(56,0,'NO','espamacs.type.patientData.Hepatitis'),
(57,0,'VHB-HEALED','espamacs.type.patientData.Hepatitis'),
(58,0,'VHC-HEALED','espamacs.type.patientData.Hepatitis'),
(59,0,'VHB-CHRONIC','espamacs.type.patientData.Hepatitis'),
(60,0,'VHC-CHRONIC','espamacs.type.patientData.Hepatitis'),
(61,0,'NO','espamacs.type.patientData.AortaPathology'),
(62,0,'THORACIC','espamacs.type.patientData.AortaPathology'),
(63,0,'ABDOMINAL','espamacs.type.patientData.AortaPathology'),
(64,0,'THORACIC_ABDOMINAL','espamacs.type.patientData.AortaPathology'),
(65,0,'NO','espamacs.type.patientData.PeripheralVascularDisease'),
(66,0,'CAROTID_AXIS','espamacs.type.patientData.PeripheralVascularDisease'),
(67,0,'ILIOFEMORAL_AXIS','espamacs.type.patientData.PeripheralVascularDisease'),
(68,0,'MULTI_TERRITORY','espamacs.type.patientData.PeripheralVascularDisease'),
(69,0,'NO','espamacs.type.patientData.Stroke'),
(70,0,'YES_AFTERMATH','espamacs.type.patientData.Stroke'),
(71,0,'YES_HEALED','espamacs.type.patientData.Stroke'),
(72,0,'NO','espamacs.type.patientData.TransientIschemicAttack'),
(73,0,'LESS_ONE_YEAR','espamacs.type.patientData.TransientIschemicAttack'),
(74,0,'MORE_ONE_YEAR','espamacs.type.patientData.TransientIschemicAttack'),
(75,0,'NO','espamacs.type.patientData.BrainHemorrhage'),
(76,0,'LESS_SIX_MONTHS','espamacs.type.patientData.BrainHemorrhage'),
(77,0,'MORE_SIX_MONTHS','espamacs.type.patientData.BrainHemorrhage'),
(78,0,'NO','espamacs.type.patientData.ThyroidDisorders'),
(79,0,'YES_HYPERTHYROIDISM','espamacs.type.patientData.ThyroidDisorders'),
(80,0,'YES_HYPOTHYROIDISM','espamacs.type.patientData.ThyroidDisorders'),
(81,0,'YES_OTHERS','espamacs.type.patientData.ThyroidDisorders'),
(82,0,'NO','espamacs.type.patientData.ChronicAnemia'),
(83,0,'YES_NO_TREATEMENT','espamacs.type.patientData.ChronicAnemia'),
(84,0,'YES_TREATEMENT','espamacs.type.patientData.ChronicAnemia'),
(85,0,'NO','espamacs.type.patientData.MalignantTumor'),
(86,0,'YES_MORE_5_YEARS','espamacs.type.patientData.MalignantTumor'),
(87,0,'YES_LESS_5_YEARS','espamacs.type.patientData.MalignantTumor'),
(88,0,'NO','espamacs.type.patientData.Leukemia'),
(89,0,'YES_MORE_5_YEARS','espamacs.type.patientData.Leukemia'),
(90,0,'YES_LESS_5_YEARS','espamacs.type.patientData.Leukemia'),
(91,0,'UNKNOWN','espamacs.type.baselineConditions.Lvef'),
(92,0,'PLUS_50','espamacs.type.baselineConditions.Lvef'),
(93,0,'40_50','espamacs.type.baselineConditions.Lvef'),
(94,0,'30_39','espamacs.type.baselineConditions.Lvef'),
(95,0,'20_29','espamacs.type.baselineConditions.Lvef'),
(96,0,'MINUS_20','espamacs.type.baselineConditions.Lvef'),
(97,0,'NO','espamacs.type.baselineConditions.RightVentricleStatus'),
(98,0,'MINOR','espamacs.type.baselineConditions.RightVentricleStatus'),
(99,0,'MODERATE','espamacs.type.baselineConditions.RightVentricleStatus'),
(100,0,'SEVERE','espamacs.type.baselineConditions.RightVentricleStatus'),
(101,0,'NO','espamacs.type.baselineConditions.RightVentricleDilatation'),
(102,0,'MINOR','espamacs.type.baselineConditions.RightVentricleDilatation'),
(103,0,'MODERATE','espamacs.type.baselineConditions.RightVentricleDilatation'),
(104,0,'SEVERE','espamacs.type.baselineConditions.RightVentricleDilatation'),
(105,0,'NORMAL','espamacs.type.baselineConditions.AorticValveStatus'),
(106,0,'PREVIOUS_AORTIC_VALVE_REPLACEMENT','espamacs.type.baselineConditions.AorticValveStatus'),
(107,0,'MINOR_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus'),
(108,0,'MODERATE_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus'),
(109,0,'SEVERE_AORTIC_INSUFFICIENCY','espamacs.type.baselineConditions.AorticValveStatus'),
(110,0,'MINOR_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus'),
(111,0,'MODERATE_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus'),
(112,0,'SEVERE_AORTIC_STENOSIS','espamacs.type.baselineConditions.AorticValveStatus'),
(113,0,'NORMAL','espamacs.type.baselineConditions.MitralValveStatus'),
(114,0,'PREVIOUS_MITRAL_VALVE_REPLACEMENT','espamacs.type.baselineConditions.MitralValveStatus'),
(115,0,'MINOR_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus'),
(116,0,'MODERATE_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus'),
(117,0,'SEVERE_MITRAL_INSUFFICIENCY','espamacs.type.baselineConditions.MitralValveStatus'),
(118,0,'MINOR_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus'),
(119,0,'MODERATE_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus'),
(120,0,'SEVERE_MITRAL_STENOSIS','espamacs.type.baselineConditions.MitralValveStatus'),
(121,0,'NORMAL','espamacs.type.baselineConditions.TricuspidValveStatus'),
(122,0,'PREVIOUS_TRICUSPID_VALVE_REPLACEMENT','espamacs.type.baselineConditions.TricuspidValveStatus'),
(123,0,'MINOR_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus'),
(124,0,'MODERATE_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus'),
(125,0,'SEVERE_TRICUSPID_INSUFFICIENCY','espamacs.type.baselineConditions.TricuspidValveStatus'),
(126,0,'MINOR_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus'),
(127,0,'MODERATE_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus'),
(128,0,'SEVERE_TRICUSPID_STENOSIS','espamacs.type.baselineConditions.TricuspidValveStatus'),
(129,0,'ACE_INHIBITORS','espamacs.type.baselineConditions.Medication'),
(130,0,'ARBS_II','espamacs.type.baselineConditions.Medication'),
(131,0,'CALCIUM_BLOCKERS','espamacs.type.baselineConditions.Medication'),
(132,0,'BETA_BLOCKERS','espamacs.type.baselineConditions.Medication'),
(133,0,'ALDOSTERONE_BLOCKERS','espamacs.type.baselineConditions.Medication'),
(134,0,'LOOP_DIURETICS','espamacs.type.baselineConditions.Medication'),
(135,0,'AMIODARONE','espamacs.type.baselineConditions.Medication'),
(136,0,'DIGOXIN','espamacs.type.baselineConditions.Medication'),
(137,0,'OTHER_ANTIARRYTHMICS','espamacs.type.baselineConditions.Medication'),
(138,0,'WARFARIN','espamacs.type.baselineConditions.Medication'),
(139,0,'HEPARIN','espamacs.type.baselineConditions.Medication'),
(140,0,'ANTIAGGREGANT','espamacs.type.baselineConditions.Medication'),
(141,0,'NITRIC_OXIDE','espamacs.type.baselineConditions.Medication'),
(142,0,'SILDENAFIL','espamacs.type.baselineConditions.Medication'),
(143,0,'ILOPROST','espamacs.type.baselineConditions.Medication'),
(144,0,'BOSENTAN','espamacs.type.baselineConditions.Medication'),
(145,0,'NESERITIDE','espamacs.type.baselineConditions.Medication'),
(146,0,'OTHER_HYPERTENSION_MEDICINE','espamacs.type.baselineConditions.Medication'),
(147,0,'RESYNCHRONIZATION_THERAPIES','espamacs.type.baselineConditions.Medication'),
(148,0,'ICD','espamacs.type.baselineConditions.Medication'),
(149,0,'OXYGEN_THERAPY','espamacs.type.baselineConditions.Medication'),
(150,0,'UNKNOWN','espamacs.type.baselineConditions.Nyha'),
(151,0,'TYPE_I','espamacs.type.baselineConditions.Nyha'),
(152,0,'TYPE_II','espamacs.type.baselineConditions.Nyha'),
(153,0,'TYPE_III','espamacs.type.baselineConditions.Nyha'),
(154,0,'TYPE_IV','espamacs.type.baselineConditions.Nyha'),
(155,0,'IABP','espamacs.type.preimplantSituation.PreimplantEvent'),
(156,0,'VAD','espamacs.type.preimplantSituation.PreimplantEvent'),
(157,0,'ECMO','espamacs.type.preimplantSituation.PreimplantEvent'),
(158,0,'DIALYSIS','espamacs.type.preimplantSituation.PreimplantEvent'),
(159,0,'ULTRAFILTRATION','espamacs.type.preimplantSituation.PreimplantEvent'),
(160,0,'INVASIVE_MV','espamacs.type.preimplantSituation.PreimplantEvent'),
(161,0,'ADRENALINE','espamacs.type.preimplantSituation.IntropicMedication'),
(162,0,'DOBUTAMINE','espamacs.type.preimplantSituation.IntropicMedication'),
(163,0,'DOPAMINE','espamacs.type.preimplantSituation.IntropicMedication'),
(164,0,'ISOPROTERENOL','espamacs.type.preimplantSituation.IntropicMedication'),
(165,0,'LEVOSIMENDAN','espamacs.type.preimplantSituation.IntropicMedication'),
(166,0,'MILRINONE','espamacs.type.preimplantSituation.IntropicMedication'),
(167,0,'NORADRENALINE','espamacs.type.preimplantSituation.IntropicMedication'),
(168,0,'NITRIC_OXIDE','espamacs.type.preimplantSituation.IntropicMedication'),
(169,0,'OTHERS','espamacs.type.preimplantSituation.IntropicMedication'),
(170,0,'INTERMACS_1','espamacs.type.preimplantSituation.IntermacsSituation'),
(171,0,'INTERMACS_2','espamacs.type.preimplantSituation.IntermacsSituation'),
(172,0,'INTERMACS_3','espamacs.type.preimplantSituation.IntermacsSituation'),
(173,0,'INTERMACS_4','espamacs.type.preimplantSituation.IntermacsSituation'),
(174,0,'INTERMACS_5','espamacs.type.preimplantSituation.IntermacsSituation'),
(175,0,'INTERMACS_6','espamacs.type.preimplantSituation.IntermacsSituation'),
(176,0,'INTERMACS_7','espamacs.type.preimplantSituation.IntermacsSituation'),
(177,0,'TRANSITION_RECOVERY','espamacs.type.diagnosis.ImplantGoal'),
(178,0,'TRANSITION_TRANSPLANT','espamacs.type.diagnosis.ImplantGoal'),
(179,0,'POSSIBLE_TRANSITION_TRANSPLANT','espamacs.type.diagnosis.ImplantGoal'),
(180,0,'TARGET_THERAPY','espamacs.type.diagnosis.ImplantGoal'),
(181,0,'OTHER','espamacs.type.diagnosis.ImplantGoal'),
(182,0,'ELECTIVE_IMPLANT','espamacs.type.diagnosis.ImplantCause'),
(183,0,'URGENT_IMPLANT','espamacs.type.diagnosis.ImplantCause'),
(184,0,'EMERGING_IMPLANT','espamacs.type.diagnosis.ImplantCause'),
(185,0,'POSTCARDIOTOMY','espamacs.type.diagnosis.ImplantCause'),
(186,0,'OTHERS','espamacs.type.diagnosis.ImplantCause'),
(187,0,'NONE','espamacs.type.diagnosis.MainCardiacImplantCause'),
(188,0,'CANCER','espamacs.type.diagnosis.MainCardiacImplantCause'),
(189,0,'CONGENITAL_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause'),
(190,0,'CORONARY_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause'),
(191,0,'VALVE_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause'),
(192,0,'PATHOLOGY_AORTA','espamacs.type.diagnosis.MainCardiacImplantCause'),
(193,0,'VALVULAR_HEAR_DISEASE','espamacs.type.diagnosis.MainCardiacImplantCause'),
(194,0,'FAMILY_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(195,0,'IDIOPATHIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(196,0,'ISCHEMIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(197,0,'MYOCARDITIS_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(198,0,'POSTPARTUM_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(199,0,'VIRAL_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(200,0,'OTHER_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(201,0,'TOXIC_DILATED_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(202,0,'HYPERTROPHIC_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(203,0,'AMYLOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(204,0,'FIBROSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(205,0,'SARCOIDOSIS_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(206,0,'QUIMIO_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(207,0,'IDIOPATHIC_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(208,0,'OTHER_RESTRICTIVE_CARDIOMYOPATHY','espamacs.type.diagnosis.MainCardiacImplantCause'),
(209,0,'OTHER','espamacs.type.diagnosis.MainCardiacImplantCause'),
(210,0,'NONE','espamacs.type.diagnosis.MainLungImplantCause'),
(211,0,'PRIMARY_GRAFT_FAILURE','espamacs.type.diagnosis.MainLungImplantCause'),
(212,0,'MASSIVE_PULMONARY_EMBOLISM','espamacs.type.diagnosis.MainLungImplantCause'),
(213,0,'PNEUMONIA','espamacs.type.diagnosis.MainLungImplantCause'),
(214,0,'ACUTE_RESPIRATORY_DISTRESS_SYNDROME','espamacs.type.diagnosis.MainLungImplantCause'),
(215,0,'PRE_LUNG_TRANSPLANT','espamacs.type.diagnosis.MainLungImplantCause'),
(216,0,'OTHER','espamacs.type.diagnosis.MainLungImplantCause'),
(217,0,'LVAD','espamacs.type.implantData.ImplantType'),
(218,0,'RVAD','espamacs.type.implantData.ImplantType'),
(219,0,'LVAD_RVAD','espamacs.type.implantData.ImplantType'),
(220,0,'TOTAL','espamacs.type.implantData.ImplantType'),
(221,0,'ECMO','espamacs.type.implantData.ImplantType'),
(222,0,'AB5000','espamacs.type.implantData.LvadBrand'),
(223,0,'THORATEX_PVAD','espamacs.type.implantData.LvadBrand'),
(224,0,'LEVITRONIX_CENTRIMAG','espamacs.type.implantData.LvadBrand'),
(225,0,'BERLIN_HEART_EXCOR','espamacs.type.implantData.LvadBrand'),
(226,0,'BERLIN_HEART_INCOR','espamacs.type.implantData.LvadBrand'),
(227,0,'JARVIC_2000','espamacs.type.implantData.LvadBrand'),
(228,0,'HEARTWARE_HVAD','espamacs.type.implantData.LvadBrand'),
(229,0,'HEARTWARE_MVAD','espamacs.type.implantData.LvadBrand'),
(230,0,'TERUMO_DURAHEART','espamacs.type.implantData.LvadBrand'),
(231,0,'HEARTASSIST_5','espamacs.type.implantData.LvadBrand'),
(232,0,'HEARTMATE_II','espamacs.type.implantData.LvadBrand'),
(233,0,'HEARTMATE_III','espamacs.type.implantData.LvadBrand'),
(234,0,'IMPELLA','espamacs.type.implantData.LvadBrand'),
(235,0,'TANDEM_HEART','espamacs.type.implantData.LvadBrand'),
(236,0,'BIOMEDICUS','espamacs.type.implantData.LvadBrand'),
(237,0,'BVS_5000','espamacs.type.implantData.LvadBrand'),
(238,0,'OTHER','espamacs.type.implantData.LvadBrand'),
(239,0,'AB5000','espamacs.type.implantData.RvadBrand'),
(240,0,'THORATEC_PVAD','espamacs.type.implantData.RvadBrand'),
(241,0,'LEVITRONIX_CENTRIMAG','espamacs.type.implantData.RvadBrand'),
(242,0,'BERLIN_HEART_EXCOR','espamacs.type.implantData.RvadBrand'),
(243,0,'HEARTWARE_HVAD','espamacs.type.implantData.RvadBrand'),
(244,0,'HEARTWARE_MVAD','espamacs.type.implantData.RvadBrand'),
(245,0,'BIOMEDICUS','espamacs.type.implantData.RvadBrand'),
(246,0,'BVS5000','espamacs.type.implantData.RvadBrand'),
(247,0,'OTHER','espamacs.type.implantData.RvadBrand'),
(248,0,'ABIOCOR','espamacs.type.implantData.HeartTotalBrand'),
(249,0,'SYNCARDIA','espamacs.type.implantData.HeartTotalBrand'),
(250,0,'AKUTSU_III','espamacs.type.implantData.HeartTotalBrand'),
(251,0,'BIVACOR','espamacs.type.implantData.HeartTotalBrand'),
(252,0,'JARVIC7','espamacs.type.implantData.HeartTotalBrand'),
(253,0,'OTHER','espamacs.type.implantData.HeartTotalBrand'),
(254,0,'ROTAFLOW_PLS','espamacs.type.implantData.EcmoBrand'),
(255,0,'CARDIO_HELP','espamacs.type.implantData.EcmoBrand'),
(256,0,'CENTRIFUGAL_OXIGENATOR','espamacs.type.implantData.EcmoBrand'),
(257,0,'OTHERS','espamacs.type.implantData.EcmoBrand'),
(258,0,'PULSATILE','espamacs.type.implantData.BloodFlowType'),
(259,0,'CONTINUOUS','espamacs.type.implantData.BloodFlowType'),
(260,0,'LEFT_ATRIUM','espamacs.type.implantData.ImplantLvadIn'),
(261,0,'LEFT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantLvadIn'),
(262,0,'APEX_VI','espamacs.type.implantData.ImplantLvadIn'),
(263,0,'OTHER','espamacs.type.implantData.ImplantLvadIn'),
(264,0,'ASCENDING_AORTA','espamacs.type.implantData.ImplantLvadOut'),
(265,0,'DESCENDING_THORACIC_AORTA','espamacs.type.implantData.ImplantLvadOut'),
(266,0,'ABDOMINAL_AORTA','espamacs.type.implantData.ImplantLvadOut'),
(267,0,'OTHER','espamacs.type.implantData.ImplantLvadOut'),
(268,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantRvadIn'),
(269,0,'RIGHT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantRvadIn'),
(270,0,'APEX_VD','espamacs.type.implantData.ImplantRvadIn'),
(271,0,'OTHER','espamacs.type.implantData.ImplantRvadIn'),
(272,0,'PULMONARY_ARTERY','espamacs.type.implantData.ImplantRvadOut'),
(273,0,'OTHER','espamacs.type.implantData.ImplantRvadOut'),
(274,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantTotalIn'),
(275,0,'RIGHT_ATRIAL_APPENDAGE','espamacs.type.implantData.ImplantTotalIn'),
(276,0,'APEX_VD','espamacs.type.implantData.ImplantTotalIn'),
(277,0,'OTHER','espamacs.type.implantData.ImplantTotalIn'),
(278,0,'ASCENDING_AORTA','espamacs.type.implantData.ImplantTotalOut'),
(279,0,'DESCENDING_THORACIC_AORTA','espamacs.type.implantData.ImplantTotalOut'),
(280,0,'ABDOMINAL_AORTA','espamacs.type.implantData.ImplantTotalOut'),
(281,0,'OTHER','espamacs.type.implantData.ImplantTotalOut'),
(282,0,'FEMORAL_VEIN','espamacs.type.implantData.ImplantEcmoIn'),
(283,0,'JUGULAR_VEIN','espamacs.type.implantData.ImplantEcmoIn'),
(284,0,'RIGHT_ATRIUM','espamacs.type.implantData.ImplantEcmoIn'),
(285,0,'UNIQUE_CANNULA','espamacs.type.implantData.ImplantEcmoIn'),
(286,0,'OTHER','espamacs.type.implantData.ImplantEcmoIn'),
(287,0,'FEMORAL_VEIN','espamacs.type.implantData.ImplantEcmoOut'),
(288,0,'JUGULAR_VEIN','espamacs.type.implantData.ImplantEcmoOut'),
(289,0,'FEMORAL_ARTERY','espamacs.type.implantData.ImplantEcmoOut'),
(290,0,'SUBCLAVIAN_ARTERY','espamacs.type.implantData.ImplantEcmoOut'),
(291,0,'CAROTID_ARTERY','espamacs.type.implantData.ImplantEcmoOut'),
(292,0,'AORTA','espamacs.type.implantData.ImplantEcmoOut'),
(293,0,'PULMONARY_ARTERY','espamacs.type.implantData.ImplantEcmoOut'),
(294,0,'UNIQUE_CANNULA','espamacs.type.implantData.ImplantEcmoOut'),
(295,0,'OTHER','espamacs.type.implantData.ImplantEcmoOut'),
(296,0,'AORTIC_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery'),
(297,0,'MITRAL_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery'),
(298,0,'TRICUSPID_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery'),
(299,0,'PULMONARY_VALVE_SURGERY','espamacs.type.implantData.CollateralSurgery'),
(300,0,'CABG','espamacs.type.implantData.CollateralSurgery'),
(301,0,'OTHER','espamacs.type.implantData.CollateralSurgery'),
(302,0,'HOME','espamacs.type.initialData.DischargedDestination'),
(303,0,'INTERMEDIATE_CARE_UNIT','espamacs.type.initialData.DischargedDestination'),
(304,0,'REHABILIATATION','espamacs.type.initialData.DischargedDestination'),
(305,0,'OTHER','espamacs.type.initialData.DischargedDestination'),
(306,0,'NONE_PATIENT_DEATH','espamacs.type.initialData.DischargedDestination'),
(307,0,'ASSISTED','espamacs.type.initialData.DischargedStatus'),
(308,0,'UNASSISTED','espamacs.type.initialData.DischargedStatus'),
(309,0,'DURING_ASSISTANCE','espamacs.type.initialData.ExistusStatus'),
(310,0,'POST_ASSISTANCE','espamacs.type.initialData.ExistusStatus'),
(311,0,'1_7','espamacs.type.initialData.TimeWithoutIntropicIV'),
(312,0,'8_13','espamacs.type.initialData.TimeWithoutIntropicIV'),
(313,0,'14_27','espamacs.type.initialData.TimeWithoutIntropicIV'),
(314,0,'27_MORE','espamacs.type.initialData.TimeWithoutIntropicIV'),
(315,0,'BLEEDING_BEFORE_48','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(316,0,'BLEEDING_AFTER_48','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(317,0,'CHEST_DRAINAGE','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(318,0,'REINTUBATE','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(319,0,'HEMOFILTRATIOIN','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(320,0,'HEMODIALYSIS','espamacs.type.initialData.SurgicalProcedureAfterTransplant'),
(321,0,'NONE','espamacs.type.initialData.RightVentricleFailureAfterImplant'),
(322,0,'YES_MEDICAL_TREATMENT','espamacs.type.initialData.RightVentricleFailureAfterImplant'),
(323,0,'YES_IABP','espamacs.type.initialData.RightVentricleFailureAfterImplant'),
(324,0,'YES_RVAD','espamacs.type.initialData.RightVentricleFailureAfterImplant'),
(325,0,'ACE_INHIBITORS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(326,0,'AIIRAS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(327,0,'CALCIUM_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(328,0,'BETA_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(329,0,'ALDOSTERONE_BLOCKERS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(330,0,'LOOP_DIURETICS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(331,0,'AMIODARONE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(332,0,'DIGOXIN','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(333,0,'OTHER_ANTIARRYTHMICS','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(334,0,'NITRIC_OXIDE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(335,0,'SILDENAFIL','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(336,0,'ILOPROST','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(337,0,'BOSENTAN','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(338,0,'NESERITIDE','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(339,0,'OTHER','espamacs.type.initialData.CardiologicalTreatmenAtDischarge'),
(340,0,'WARFARIN','espamacs.type.initialData.BloodMedication'),
(341,0,'ACETYLSALICYLIC_ACID','espamacs.type.initialData.BloodMedication'),
(342,0,'DIPYRIDAMOLE','espamacs.type.initialData.BloodMedication'),
(343,0,'CLOPIDOGREL','espamacs.type.initialData.BloodMedication'),
(344,0,'TICLOPIDINE','espamacs.type.initialData.BloodMedication'),
(345,0,'HEPARIN','espamacs.type.initialData.BloodMedication'),
(346,0,'ENOXAPARIN','espamacs.type.initialData.BloodMedication'),
(347,0,'BIVALIRUDIN','espamacs.type.initialData.BloodMedication'),
(348,0,'ARGOTRAVAN','espamacs.type.initialData.BloodMedication'),
(349,0,'HIRUDIN','espamacs.type.initialData.BloodMedication'),
(350,0,'LEPIRUDIN','espamacs.type.initialData.BloodMedication'),
(351,0,'ICU','espamacs.type.event.PatientHealthStatus'),
(352,0,'HOSPITAL_ADMISION','espamacs.type.event.PatientHealthStatus'),
(353,0,'OTHER_HOSPITAL_ADMISION','espamacs.type.event.PatientHealthStatus'),
(354,0,'DISCHARGED','espamacs.type.event.PatientHealthStatus'),
(355,0,'NO','espamacs.type.event.RemovedAssistance'),
(356,0,'YES_HEALED','espamacs.type.event.RemovedAssistance'),
(357,0,'YES_TRNSPLANT','espamacs.type.event.RemovedAssistance'),
(358,0,'YES_CHANGE_ASSISTANCE','espamacs.type.event.RemovedAssistance'),
(359,0,'YES_DEAD','espamacs.type.event.RemovedAssistance'),
(360,0,'NONE','espamacs.type.event.RemovedAssistanceDeath'),
(361,0,'CARDIOVASCULAR_CAUSE','espamacs.type.event.RemovedAssistanceDeath'),
(362,0,'NO_CARDIOVASCULAR_CAUSE','espamacs.type.event.RemovedAssistanceDeath'),
(363,0,'OTHER','espamacs.type.event.RemovedAssistanceDeath'),
(364,0,'PUMP_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(365,0,'CONTROL_DEVICE_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(366,0,'BATERY_ERROR','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(367,0,'DEVICE_THROMBOSIS','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(368,0,'MISPLACEMENT_INPUT_CANNULA','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(369,0,'MISPLACEMENT_OUTPUT_CANNULA','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(370,0,'THROMBOSIS_INPUT_VALVE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(371,0,'THROMBOSIS_OUTPUT_VALVE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(372,0,'PATIENT_NEGLIGENCE','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(373,0,'OTHER','espamacs.type.event.malfunctionDevice.MalfunctionDeviceType'),
(374,0,'TRANSFUSION','espamacs.type.event.hemorrhage.HemorrhageCause'),
(375,0,'TRANSFUSION_ICU','espamacs.type.event.hemorrhage.HemorrhageCause'),
(376,0,'TRANSFUSION_ICU_SURGERY','espamacs.type.event.hemorrhage.HemorrhageCause'),
(377,0,'DEAD','espamacs.type.event.hemorrhage.HemorrhageCause'),
(378,0,'YES_URGENT','espamacs.type.event.malfunctionDevice.UrgentSurgery'),
(379,0,'YES_NO_URGENT','espamacs.type.event.malfunctionDevice.UrgentSurgery'),
(380,0,'NO','espamacs.type.event.malfunctionDevice.UrgentSurgery'),
(381,0,'MEDICAL','espamacs.type.event.hemorrhage.HemorrhageTreatment'),
(382,0,'CARDIAC_SURGERY','espamacs.type.event.hemorrhage.HemorrhageTreatment'),
(383,0,'NO_CARDIAC_SURGERY','espamacs.type.event.hemorrhage.HemorrhageTreatment'),
(384,0,'MEDIASINUM','espamacs.type.event.hemorrhage.BleedingPlace'),
(385,0,'SUTURES_DEVICE','espamacs.type.event.hemorrhage.BleedingPlace'),
(386,0,'CANNULATION_PLACE','espamacs.type.event.hemorrhage.BleedingPlace'),
(387,0,'INTRAABDOMINAL','espamacs.type.event.hemorrhage.BleedingPlace'),
(388,0,'CHEST_WALL','espamacs.type.event.hemorrhage.BleedingPlace'),
(389,0,'GASTROINTESTINAL','espamacs.type.event.hemorrhage.BleedingPlace'),
(390,0,'RESPIRATORY','espamacs.type.event.hemorrhage.BleedingPlace'),
(391,0,'POCKET_PUMP','espamacs.type.event.hemorrhage.BleedingPlace'),
(392,0,'IN_OUT_DUCT','espamacs.type.event.hemorrhage.BleedingPlace'),
(393,0,'PLEURAL_SPACE','espamacs.type.event.hemorrhage.BleedingPlace'),
(394,0,'RETROPERITONEO','espamacs.type.event.hemorrhage.BleedingPlace'),
(395,0,'OTHER','espamacs.type.event.hemorrhage.BleedingPlace'),
(396,0,'SEPSIS','espamacs.type.event.infection.InfectionPlace'),
(397,0,'RESPIRATORY','espamacs.type.event.infection.InfectionPlace'),
(398,0,'URINARY','espamacs.type.event.infection.InfectionPlace'),
(399,0,'GASTROINTESTINAL','espamacs.type.event.infection.InfectionPlace'),
(400,0,'PERIPHERAL_WOUND','espamacs.type.event.infection.InfectionPlace'),
(401,0,'CATHETER','espamacs.type.event.infection.InfectionPlace'),
(402,0,'MEDIASTINITIS','espamacs.type.event.infection.InfectionPlace'),
(403,0,'CONTROL_LINE','espamacs.type.event.infection.InfectionPlace'),
(404,0,'CANNULAS_OUT','espamacs.type.event.infection.InfectionPlace'),
(405,0,'PUMP','espamacs.type.event.infection.InfectionPlace'),
(406,0,'MEDICAL','espamacs.type.event.infection.InfectionTreatment'),
(407,0,'SURGERY','espamacs.type.event.infection.InfectionTreatment'),
(408,0,'MEDICAL_SURGERY','espamacs.type.event.infection.InfectionTreatment'),
(409,0,'ISCHEMIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType'),
(410,0,'HEMORRHAGIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType'),
(411,0,'ISCHEMIC_HEMORRHAGIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType'),
(412,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionType'),
(413,0,'ISCHEMIC_STROKE_TEMPORAL','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(414,0,'ISCHEMIC_STROKE_NO_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(415,0,'ISCHEMIC_STROKE_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(416,0,'ISCHEMIC_STROKE_DEAD','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(417,0,'HEMORRHAGIC_STROKE_NO_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(418,0,'HEMORRHAGIC_STROKE_EFFECT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(419,0,'HEMORRHAGIC_STROKE_DEAD','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionEffect'),
(420,0,'DEVICE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause'),
(421,0,'MEDICATION','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause'),
(422,0,'COMPLEX_PATIENT','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause'),
(423,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionCause'),
(424,0,'UNKNOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR'),
(425,0,'INR_UP','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR'),
(426,0,'INR_DOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionINR'),
(427,0,'UNKNOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT'),
(428,0,'APTT_UP','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT'),
(429,0,'APTT_DOWN','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionAPTT'),
(430,0,'RIGHT_HEMISPHERE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace'),
(431,0,'LEFT_HEMISPHERE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace'),
(432,0,'OCCIPITAL','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace'),
(433,0,'BRAINSTEM','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace'),
(434,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionPlace'),
(435,0,'TAC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis'),
(436,0,'NUCLEAR_MAGNETIC_RESONANCE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis'),
(437,0,'ANGIOGRAPHY','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis'),
(438,0,'CLINIC','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis'),
(439,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionDiagnosis'),
(440,0,'NONE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement'),
(441,0,'HEPARINE','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement'),
(442,0,'FIBRINOLYSIS','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement'),
(443,0,'ANTICONVULSANTS','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement'),
(444,0,'OTHER','espamacs.type.event.neurologicalDysfunction.NeurologicalDysfunctionTreatement'),
(445,0,'VENTRICULAR','espamacs.type.event.arrhythmia.ArrhythmiaType'),
(446,0,'SUPRAVENTRICULAR','espamacs.type.event.arrhythmia.ArrhythmiaType'),
(447,0,'HEMODIALYSIS','espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment'),
(448,0,'HEMOFILTRATION','espamacs.type.event.renalDysfunction.RenalDysfunctionTreatment'),
(449,0,'PULMONARY','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace'),
(450,0,'RENAL','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace'),
(451,0,'HEPATIC','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace'),
(452,0,'SPLEN','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace'),
(453,0,'EXTREMITIES','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismPlace'),
(454,0,'CLINIC','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis'),
(455,0,'INVASIVE_TECHNIQUES','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis'),
(456,0,'INTREAOPERATIVE_FINDING','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis'),
(457,0,'NECROPSY_FINDING','espamacs.type.event.arterialThromboembolism.ArterialThromboembolismDiagnosis'),
(458,0,'WOUND','espamacs.type.event.woundDehiscence.WoundDehiscenceType'),
(459,0,'BREASTBONE','espamacs.type.event.woundDehiscence.WoundDehiscenceType'),
(460,0,'WOUND_BREASTBONE','espamacs.type.event.woundDehiscence.WoundDehiscenceType'),
(461,0,'VENOUS_DEEP','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace'),
(462,0,'PULMONARY','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace'),
(463,0,'OTHER','espamacs.type.event.venousThromboembolism.VenousThromboembolismPlace'),
(464,0,'DA','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace'),
(465,0,'CX','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace'),
(466,0,'DP','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace'),
(467,0,'MULTIPLE','espamacs.type.event.myocardialInfarction.MyocardialInfractionPlace'),
(468,0,'UNKOWN','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause'),
(469,0,'CORONARY_DISEASE','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause'),
(470,0,'DEVICE_CAUSE','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause'),
(471,0,'OTHER','espamacs.type.event.myocardialInfarction.MyocardialInfractionCause'),
(472,0,'MEDICAL','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment'),
(473,0,'INTERVENTION','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment'),
(474,0,'SURGERY','espamacs.type.event.myocardialInfarction.MyocardialInfractionTreatment'),
(475,0,'SOFT','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity'),
(476,0,'MODERATE','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity'),
(477,0,'SEVERE','espamacs.type.event.pericardialEffusion.PericardialEffussionQuantity'),
(478,0,'NONE','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod'),
(479,0,'PERCUTANEOUS','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod'),
(480,0,'SURGICAL','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod'),
(481,0,'OTHER','espamacs.type.event.pericardialEffusion.PericardialEffussionDrainMethod'),
(482,0,'UNKNOWN','espamacs.type.event.hemolysis.HemolysisCause'),
(483,0,'DUETO_ASSISTANCE','espamacs.type.event.hemolysis.HemolysisCause'),
(484,0,'HEMATOLOGIC','espamacs.type.event.hemolysis.HemolysisCause'),
(485,0,'OTHER','espamacs.type.event.hemolysis.HemolysisCause'),
(486,0,'ASCItES','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals'),
(487,0,'EDEMAS','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals'),
(488,0,'IC','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals'),
(489,0,'PVC','espamacs.type.event.rightHeartFailure.RightHeartFailureSignals'),
(490,0,'RIGHT_ASISTANCE','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds'),
(491,0,'INOTROPICS','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds'),
(492,0,'OTHER','espamacs.type.event.rightHeartFailure.RightHeartFailureNeeds'),
(493,0,'ISCHEMIC','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType'),
(494,0,'LYMPHORRHAGIA','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType'),
(495,0,'OTHER','espamacs.type.event.peripheralVascularAccessComplications.PeripheralVascularAccessComplicationsType');
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

-- Dump completed on 2016-04-29 12:06:13
