-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: espamacs
-- ------------------------------------------------------
-- Server version	5.6.30-0ubuntu0.14.04.1

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
-- Table structure for table `baseline_condition`
--

DROP TABLE IF EXISTS `baseline_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baseline_condition` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `albumin` double DEFAULT NULL,
  `alt` double DEFAULT NULL,
  `analytic_date` datetime DEFAULT NULL,
  `ascites_id` bigint(20) NOT NULL,
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
  `lvef_id` bigint(20) NOT NULL,
  `lvesd` double DEFAULT NULL,
  `ntprobnp` double DEFAULT NULL,
  `nyha_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) DEFAULT NULL,
  `peripheral_edema_level_id` bigint(20) NOT NULL,
  `platelets` double DEFAULT NULL,
  `potassium` double DEFAULT NULL,
  `right_ventricle_dilatation_id` bigint(20) NOT NULL,
  `right_ventricle_status_id` bigint(20) NOT NULL,
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
INSERT INTO `espamacs_user` VALUES (1,0,'\0','\0',1,'','$2a$10$t7Ly/KIf0AHsxSgYjaU3.OryMV76AL4kTIwR1i/1t7cBcZ4QkAFgC','\0','user'),(2,0,'\0','\0',2,'','$2a$10$4wDoosLL2bTWv3ttFDCI/.PyJSEZYSIHlZw9vsTqg9oMv2h/B3e7u','\0','admin');
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
  `event_date` datetime NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `patient_death` bit(1) NOT NULL,
  `patient_health_status_id` bigint(20) NOT NULL,
  `remove_assistance` bit(1) NOT NULL,
  `class` varchar(255) NOT NULL,
  `change_assistance_components` bit(1) DEFAULT NULL,
  `malfunction_device_type_id` bigint(20) DEFAULT NULL,
  `urgent_surgery_id` bigint(20) DEFAULT NULL,
  `hemorrhage_cause_id` bigint(20) DEFAULT NULL,
  `hemorrhage_treatment_id` bigint(20) DEFAULT NULL,
  `hemoglobin` double DEFAULT NULL,
  `hemolysis_cause_id` bigint(20) DEFAULT NULL,
  `ldh` double DEFAULT NULL,
  `myocardial_infraction_cause_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_place_id` bigint(20) DEFAULT NULL,
  `myocardial_infraction_treatment_id` bigint(20) DEFAULT NULL,
  `days_after_surgery` int(11) DEFAULT NULL,
  `days_with_respiratory_problems` int(11) DEFAULT NULL,
  `tracheotomy` bit(1) DEFAULT NULL,
  `venous_thromboembolism_place_id` bigint(20) DEFAULT NULL,
  `aptt_id` bigint(20) DEFAULT NULL,
  `inr_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_cause_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_diagnosis_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_effect_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_place_id` bigint(20) DEFAULT NULL,
  `neurological_dysfunction_type_id` bigint(20) DEFAULT NULL,
  `surgery` bit(1) DEFAULT NULL,
  `treatement_id` bigint(20) DEFAULT NULL,
  `infection_place_id` bigint(20) DEFAULT NULL,
  `infection_treatment_id` bigint(20) DEFAULT NULL,
  `arrhythmia_type_id` bigint(20) DEFAULT NULL,
  `alive_after_hospital` bit(1) DEFAULT NULL,
  `alive_days` int(11) DEFAULT NULL,
  `removed_assistance_death_cause_id` bigint(20) DEFAULT NULL,
  `alt` double DEFAULT NULL,
  `ast` double DEFAULT NULL,
  `bilirrubin` double DEFAULT NULL,
  `peripheral_vascular_access_complications_type_id` bigint(20) DEFAULT NULL,
  `flow_blocking` bit(1) DEFAULT NULL,
  `pericardial_effussion_drain_method_id` bigint(20) DEFAULT NULL,
  `pericardial_effussion_quantity_id` bigint(20) DEFAULT NULL,
  `arterial_thromboembolism_diagnosis_id` bigint(20) DEFAULT NULL,
  `creatinine` double DEFAULT NULL,
  `recover_renal_functionality` bit(1) DEFAULT NULL,
  `renal_dysfunction_treatment_id` bigint(20) DEFAULT NULL,
  `therapy_days` int(11) DEFAULT NULL,
  `wound_dehiscence_type_id` bigint(20) DEFAULT NULL,
  `right_heart_failure_needs_id` bigint(20) DEFAULT NULL,
  `text` varchar(50) DEFAULT NULL,
  `events_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9848kbetc6v9qm57d727cvbox` (`patient_id`),
  KEY `FK_66ksb2vk8ogs149a9mrep1vb8` (`patient_health_status_id`),
  KEY `FK_t3osnu02c228naglqnqsyrjjf` (`malfunction_device_type_id`),
  KEY `FK_4r4c6pymfjiyy0a2gid6edrc9` (`urgent_surgery_id`),
  KEY `FK_ilhak7kawj62m2quav420paym` (`hemorrhage_cause_id`),
  KEY `FK_otu9ci4qyqkrfhb8pp6mmfwjo` (`hemorrhage_treatment_id`),
  KEY `FK_mqh3e9g9lrucxp6hlo9q9f2i8` (`hemolysis_cause_id`),
  KEY `FK_hid46nbqou0psojs2raxhotxh` (`myocardial_infraction_cause_id`),
  KEY `FK_3086fbl3w4grn483yqyrybsro` (`myocardial_infraction_place_id`),
  KEY `FK_ru913yebw3d9g9s0k4i0geawr` (`myocardial_infraction_treatment_id`),
  KEY `FK_8kgh0wy5uo4rccajl24g3m2da` (`venous_thromboembolism_place_id`),
  KEY `FK_pvt0wyv1gyhkjl1efp28nlpqq` (`aptt_id`),
  KEY `FK_mugw1lk6ar777iqg9pu8cdwuh` (`inr_id`),
  KEY `FK_kkx8r955p0b4c9g82llivxr5a` (`neurological_dysfunction_cause_id`),
  KEY `FK_3ovg6kjmp0iw7n1ppsg68dtjm` (`neurological_dysfunction_diagnosis_id`),
  KEY `FK_1o3fvyp609qga8plgrt5noow5` (`neurological_dysfunction_effect_id`),
  KEY `FK_grxr7npfb0phtq6qcged4fkk9` (`neurological_dysfunction_place_id`),
  KEY `FK_ia3c3cq3u9l41cv4fey92cf07` (`neurological_dysfunction_type_id`),
  KEY `FK_2ee009v942w8xotuqlo26pmt9` (`treatement_id`),
  KEY `FK_j35tilxoaduj0cc4gxo2vwni7` (`infection_place_id`),
  KEY `FK_58gbttxt2pfggwt55sxksxsi2` (`infection_treatment_id`),
  KEY `FK_s9wkspf2wcb3ggky7wl356o9p` (`arrhythmia_type_id`),
  KEY `FK_je9cxgqw2i5n6ihnfiexc8fia` (`removed_assistance_death_cause_id`),
  KEY `FK_kh2o4q6jxaj7x00bsw4u3oyrv` (`peripheral_vascular_access_complications_type_id`),
  KEY `FK_40c5m697r51570fjnu221tfcn` (`pericardial_effussion_drain_method_id`),
  KEY `FK_7vedlb6cgb4qaingoqp8ch446` (`pericardial_effussion_quantity_id`),
  KEY `FK_21tyujn58itwlqq6yd95w0bfl` (`arterial_thromboembolism_diagnosis_id`),
  KEY `FK_s2uc7jdocl9j8quu24md579m2` (`renal_dysfunction_treatment_id`),
  KEY `FK_s50xm5g3d7qewy15xukxw8pfv` (`wound_dehiscence_type_id`),
  KEY `FK_33l1mx9lwkvd1b14ygaec0btx` (`right_heart_failure_needs_id`),
  CONSTRAINT `FK_1o3fvyp609qga8plgrt5noow5` FOREIGN KEY (`neurological_dysfunction_effect_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_21tyujn58itwlqq6yd95w0bfl` FOREIGN KEY (`arterial_thromboembolism_diagnosis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_2ee009v942w8xotuqlo26pmt9` FOREIGN KEY (`treatement_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_3086fbl3w4grn483yqyrybsro` FOREIGN KEY (`myocardial_infraction_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_33l1mx9lwkvd1b14ygaec0btx` FOREIGN KEY (`right_heart_failure_needs_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_3ovg6kjmp0iw7n1ppsg68dtjm` FOREIGN KEY (`neurological_dysfunction_diagnosis_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_40c5m697r51570fjnu221tfcn` FOREIGN KEY (`pericardial_effussion_drain_method_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_4r4c6pymfjiyy0a2gid6edrc9` FOREIGN KEY (`urgent_surgery_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_58gbttxt2pfggwt55sxksxsi2` FOREIGN KEY (`infection_treatment_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_66ksb2vk8ogs149a9mrep1vb8` FOREIGN KEY (`patient_health_status_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_7vedlb6cgb4qaingoqp8ch446` FOREIGN KEY (`pericardial_effussion_quantity_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_8kgh0wy5uo4rccajl24g3m2da` FOREIGN KEY (`venous_thromboembolism_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_9848kbetc6v9qm57d727cvbox` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  CONSTRAINT `FK_grxr7npfb0phtq6qcged4fkk9` FOREIGN KEY (`neurological_dysfunction_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_hid46nbqou0psojs2raxhotxh` FOREIGN KEY (`myocardial_infraction_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ia3c3cq3u9l41cv4fey92cf07` FOREIGN KEY (`neurological_dysfunction_type_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_ilhak7kawj62m2quav420paym` FOREIGN KEY (`hemorrhage_cause_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_j35tilxoaduj0cc4gxo2vwni7` FOREIGN KEY (`infection_place_id`) REFERENCES `type_database_enum_type` (`id`),
  CONSTRAINT `FK_je9cxgqw2i5n6ihnfiexc8fia` FOREIGN KEY (`removed_assistance_death_cause_id`) REFERENCES `type_database_enum_type` (`id`),
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_database_enum_type`
--

LOCK TABLES `type_database_enum_type` WRITE;
/*!40000 ALTER TABLE `type_database_enum_type` DISABLE KEYS */;
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

-- Dump completed on 2016-05-03 13:00:54
