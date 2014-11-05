USE cmata;

DROP TABLE IF EXISTS 'cmTB_noticias';

CREATE TABLE 'cmTB_noticias' (
  'titulo' VARCHAR ( 60 ) CHARACTER SET utf8 DEFAULT NULL,
  'imagen' LONGBLOB NOT NULL,
  'texto' VARCHAR ( 255 ) CHARACTER SET utf8 DEFAULT NULL,
  'enlace' VARCHAR ( 255 ) CHARACTER SET utf8 NOT NULL,
  created TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOAD XML LOCAL INFILE '/assets/xml/noticias.xml'
		 INTO TABLE cmTB_noticias
         ROWS IDENTIFIED BY '<registro>'
		 SET ID=NULL;