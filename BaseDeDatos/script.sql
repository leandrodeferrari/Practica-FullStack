CREATE DATABASE IF NOT EXISTS leandro19930208;

USE leandro19930208;

CREATE TABLE IF NOT EXISTS tresource_type(
	id_ResourceType INT UNSIGNED AUTO_INCREMENT NOT NULL,
    created DATETIME,
    descrip VARCHAR(200),
    CONSTRAINT PK_tresource_type_id_ResourceType PRIMARY KEY (id_ResourceType)
);

CREATE TABLE IF NOT EXISTS tresource(
	id_Resource INT UNSIGNED AUTO_INCREMENT NOT NULL,
    created DATETIME,
    descrip VARCHAR(200),
    id_ResourceType INT NOT NULL,
    CONSTRAINT PK_tresource_id_Resource PRIMARY KEY (id_Resource),
    CONSTRAINT FK_tresource_id_ResourceType FOREIGN KEY (id_ResourceType) REFERENCES leandro19930208.tresource_type(id_ResourceType)
);

INSERT INTO tresource_type (created, descrip) VALUES (CURRENT_TIMESTAMP(), 'Vídeo');
INSERT INTO tresource_type (created, descrip) VALUES (CURRENT_TIMESTAMP(), 'PDF Documentación');
INSERT INTO tresource_type (created, descrip) VALUES (CURRENT_TIMESTAMP(), 'PDF Enunciado');
INSERT INTO tresource_type (created, descrip) VALUES (CURRENT_TIMESTAMP(), 'PDF Solución');

INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Explicación de como usar el aula virtual', 1);
INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Documentación del proceso de aprobación de materias', 2);
INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Documentación de las constancias del alumno', 2);
INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Ejercicios del curso de ingreso', 3);
INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Solución de los ejercicios del curso de ingreso', 4);
INSERT INTO tresource (created, descrip, id_ResourceType) VALUES (CURRENT_TIMESTAMP(), 'Solución de ejercicios de camadas anteriores, del curso de ingreso', 4);

SELECT id_ResourceType, COUNT(1) AS amount_ResourceType FROM tresource GROUP BY id_ResourceType;