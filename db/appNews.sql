USE cmata;

DROP TABLE IF EXISTS 'noticias';

CREATE TABLE 'noticias' (
  'id_noticias' INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  'titulo' VARCHAR ( 60 ) CHARACTER SET utf8 DEFAULT NULL,
  'imagen' LONGBLOB NOT NULL,
  'texto' VARCHAR ( 255 ) CHARACTER SET utf8 DEFAULT NULL,
  'enlace' VARCHAR ( 255 ) CHARACTER SET utf8 NOT NULL,
  created TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOAD XML LOCAL INFILE '/assets/xml/noticias.xml'
		 INTO TABLE noticias
         ROWS IDENTIFIED BY '<registro>';