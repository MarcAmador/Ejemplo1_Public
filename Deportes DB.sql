CREATE DATABASE deportes DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE deportes;
CREATE TABLE deportes(
	id_deportes bigint(12) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(75) NOT NULL
);
CREATE TABLE categorias(
	id_categoria bigint(12) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(75) NOT NULL,
    id_deportes bigint(12)
);
ALTER TABLE categorias
ADD CONSTRAINT pk_fk_deportes FOREIGN KEY (id_deportes) REFERENCES deportes (id_deportes) ON UPDATE CASCADE ON DELETE CASCADE;