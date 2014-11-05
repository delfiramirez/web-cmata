﻿USE cmata;

DROP TABLE IF EXISTS 'cmTB_mapsculpture';

CREATE TABLE 'cmTB_mapsculpture' (
	'id_map' INT ( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	'name' VARCHAR ( 35 ) CHARACTER SET utf8 DEFAULT NULL,
	'file' LONGBLOB NOT NULL,
	'url' VARCHAR ( 255 ) CHARACTER SET utf8 DEFAULT NULL,
	'location' VARCHAR ( 255 ) CHARACTER SET utf8 DEFAULT NULL,
	created TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOAD XML LOCAL INFILE '/assets/xml/mapxml.xml'
		INTO TABLE cmTB_mapsculpture
		ROWS IDENTIFIED BY '<sculpture>';