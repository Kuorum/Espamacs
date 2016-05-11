
INSERT INTO type_database_enum_type (version,code,class) VALUES (0,'CARDIAC_TRANSPLANTATION','espamacs.type.patientData.PreCardiacSurgery');
INSERT INTO type_database_enum_type (version,code,class) VALUES (0,'LUNG_TRANSPLANTATION','espamacs.type.patientData.PreCardiacSurgery');


--
-- Table structure for table `personal_history_type_pre_cardiac_surgery`
--

DROP TABLE IF EXISTS `personal_history_type_pre_cardiac_surgery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_history_type_pre_cardiac_surgery` (
  `personal_history_pre_cardiac_surgery_id` bigint(20) NOT NULL,
  `pre_cardiac_surgery_id` bigint(20) DEFAULT NULL,
  `pre_cardiac_surgery_idx` int(11) DEFAULT NULL,
  KEY `FK_pwbhfqpotduw16b3v8mh1ykud` (`pre_cardiac_surgery_id`),
  CONSTRAINT `FK_pwbhfqpotduw16b3v8mh1ykud` FOREIGN KEY (`pre_cardiac_surgery_id`) REFERENCES `type_database_enum_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


insert personal_history_type_pre_cardiac_surgery (personal_history_pre_cardiac_surgery_id, pre_cardiac_surgery_id, pre_cardiac_surgery_idx)(
  select ph.id as pre_cardiac_surgery_idx, ph.pre_cardiac_surgery_id as pre_cardiac_surgery_idx, 0 as pre_cardiac_surgery_idx  from personal_history ph join patient p on ph.id =p.personal_history_id
)

alter table personal_history drop foreign key FK_ktuli9eh1rynkpsgc0n9411oi;
ALTER TABLE personal_history DROP COLUMN pre_cardiac_surgery_id;



