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
