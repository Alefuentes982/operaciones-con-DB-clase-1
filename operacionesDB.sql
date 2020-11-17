--creando la base de datos

CREATE DATABASE posts

--creando tabla 

CREATE TABLE post (id INT UNIQUE,
nombre_de_usuario VARCHAR(255),
fecha_de_creacion DATE,
contenido VARCHAR(255),
descripcion VARCHAR(255)
PRIMARY KEY(id));

--creando el usuario Pamela e Insertando los 2 post 
INSERT INTO post (id,
nombre_de_usuario,
fecha_de_creacion,
contenido)

VALUES ('01',
'Pamela',
'10/11/20',
'lorem ipsum');

--Creando el usuario 'Carlos' e insertando el primer post 
INSERT INTO post (id,
nombre_de_usuario)

VALUES ('02',
'Carlos')

--Modificando tabla y agregando columna "titulo" 
ALTER TABLE post ADD COLUMN titulo varchar(255);

--Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo='lorem';


-- Creando al usuario Pedro e insertando 2 post 
INSERT INTO post (id,
nombre_de_usuario, contenido)

VALUES ('03',
'Pedro', 'contenido');

--- Eliminar el post de Carlos
DELETE FROM post WHERE nombre_de_usuario ='Carlos';

--Creando e ingresando un nuevo post para el usuario "Carlos"
INSERT INTO post (id,
nombre_de_usuario)

VALUES ('04',
'Carlos');


--Segunda parte------------------------------------------

-- Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,
--contenido, que se relacione con la tabla posts. (1 punto)
CREATE TABLE comentarios (id INT,
fecha_de_creacion DATE,
hora_de_creacion TIMESTAMP,
contenido VARCHAR(255),
FOREIGN KEY(id) REFERENCES post(id));

---Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 

-- 2 post de Pamela
INSERT INTO comentarios 
VALUES (1, '2020-10-12', '19:57:00', 'lorem');

INSERT INTO comentarios 
VALUES (1, '2020-10-12', '20:02:00', 'lorem2');

---4 post de Carlos

INSERT INTO comentarios 
VALUES (4, '2020-10-12', '20:05:00', 'lorem3');

INSERT INTO comentarios 
VALUES (4, '2020-10-12', '20:06:00', 'lorem4');

INSERT INTO comentarios 
VALUES (4, '2020-10-12', '20:07:00', 'lorem5');

INSERT INTO comentarios 
VALUES (4, '2020-10-12', '20:08:00', 'lorem6');

---Creando al usuario Margarita en tabla 'Post'
INSERT INTO post (id,
nombre_de_usuario,
fecha_de_creacion)

VALUES (5, 'Margarita', '17-11-2020');


---- ingresando 5 comentarios para margarita

INSERT INTO comentarios 
VALUES (5, '2020-10-12', '20:20:00', 'lorem7');

INSERT INTO comentarios 
VALUES (5, '2020-10-12', '20:22:00', 'lorem8');

INSERT INTO comentarios 
VALUES (5, '2020-10-12', '20:24:00', 'lorem9');

INSERT INTO comentarios 
VALUES (5, '2020-10-12', '20:26:00', 'lorem10');

INSERT INTO comentarios 
VALUES (5, '2020-10-12', '20:27:00', 'lorem11');

