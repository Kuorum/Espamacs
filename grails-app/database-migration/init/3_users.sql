


delete from espamacs_user_role;
delete from espamacs_user;
delete from role;

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,0,'ROLE_USER'),(2,0,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'Centro',5,                       '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'puertadelmar01',29,              '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'reinasofia01',31,                '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'reinasofia02',125,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelasnieves01',33,         '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'carloshaya01',53,                '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'carloshaya02',127,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelavictoria01',54,        '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelrocio01',100,           '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelamacarena01',102,       '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'miguelservet01',123,             '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'centraldeasturias01',10,         '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'medicodeasturias01',130,         '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'bellvitge01',25,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'valldhebron01',24,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'valldhebron02',124,              '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'clinic01',18,                    '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'gtriasipujol01',16,              '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'santpau01',26,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'santjoandedeu01',27,             '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'santjordi01',17,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelasalud01',105,          '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'idcsalud01',6,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'valladolid01',112,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'leon01',38,                      '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'salamanca01',99,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'generalvalencia01',109,          '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'clinicovalencia01',107,          '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'lafe01',110,                     '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'lafe02',111,                     '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'laribera01',108,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelconsuelo01',106,        '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'generalalicante01',9,            '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'vinalopo01',8,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'badajoz01',15,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'acoruña01',5,                    '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'modelo01',36,                    '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'santiago01',35,                  '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'vigo01',98,                      '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'sonespases01',96,                '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'miramar01',97,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'drnegrin01',32,                  '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'insular01',37,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'candelaria01',103,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'rambla01',104,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'puertadehierro01',51,            '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'ramonycajal01',49,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'ramonycajal02',50,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'gregoriomarañon01',46,           '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'gregoriomarañon02',126,          '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'lapaz01',47,                     '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'lapaz02',52,                     '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, '12deoctubre01',45,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, '12deoctubre02',48,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'laprincesa01',44,                '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'sancarlos01',43,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'jimenezdiaz01',39,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'gomezulla01',40,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'torrejon01',131,                 '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'ruberinternacional01',132,       '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'ruberjuanbravo01',134,           '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'lazarzuela01',136,               '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'monteprincipe01',137,            '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'virgendelaarrixaca01',59,        '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'clinicanavarra01',60,            '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'complejonavarra01',95,           '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'cruces01',122,                   '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'basurto01',113,                  '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'gipuzkoa01',34,                  '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);
INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled) VALUES (0, 'marquesvaldecilla01',30,         '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);

INSERT INTO espamacs_user(version,username,centre_id,password,account_expired, account_locked, password_expired, enabled)
  VALUES (0, 'admin',(select id from centre where name='Hospital Universitario Puerta de Hierro Majadahonda'),         '$2a$10$1EHlXZK8SuJml9aMRdjoiePPPcJCJRxtojNxWU4phvXg53TQJfv.W',0,0,0,1);

insert into espamacs_user_role (espamacs_user_id, role_id) select id as espamacs_user_id, 1 as role_id FROM espamacs_user;
insert into espamacs_user_role (espamacs_user_id, role_id) select id as espamacs_user_id, 2 as role_id FROM espamacs_user where username='admin';
