CREATE SCHEMA pi_db;

USE pi_db;

CREATE TABLE usuarios (
/*	nombreColumna		tipoDato		Restricciones*/
	id					INT 			UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	nombreUsuario		VARCHAR(250)	NOT NULL,
    mail				VARCHAR(250)	NOT NULL,
    contrasenia			VARCHAR(250)	NOT NULL,
    dni					INT				NOT NULL,
    fechaNacimiento		DATE 			NOT NULL,
    fotoPerfil			VARCHAR(250)	NOT NULL,
    createdAt 			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP,
    updatedAt			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE productos (
/*	nombreColumna		tipoDato		Restricciones*/
	id					INT				UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    idUsuario			INT				UNSIGNED NOT NULL,
    fotoProducto		VARCHAR(250)	NOT NULL,
    nombreProducto		VARCHAR(250)    NOT NULL,
    descripcion			VARCHAR(500)	NOT NULL,
    createdAt 			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP,
    updatedAt			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,
    
	FOREIGN KEY(idUsuario) REFERENCES usuarios(id)
);

CREATE TABLE comentarios (
/*	nombreColumna		tipoDato		Restricciones*/
	id					INT 			UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	idUsuario			INT				UNSIGNED NOT NULL,
    idProducto			INT				UNSIGNED NOT NULL,
	texto				VARCHAR(500)	NOT NULL,
	createdAt 			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP,
    updatedAt			TIMESTAMP		DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    deletedAt			TIMESTAMP 		DEFAULT CURRENT_TIMESTAMP,

	FOREIGN KEY(idUsuario) REFERENCES usuarios(id),
    FOREIGN KEY(idProducto) REFERENCES productos(id)
);

/* crear usuarios */
INSERT INTO usuarios (id, nombreUsuario, mail, contrasenia, dni, fechaNacimiento, fotoPerfil, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 'fdini', 'fdini@udesa.edu.ar','********', 46647592, '2005-05-21', 'dini.jpg', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO usuarios (id, nombreUsuario, mail, contrasenia, dni, fechaNacimiento, fotoPerfil, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 'bgomez', 'bgomez@udesa.edu.ar','********', 36765765, '1993-08-13', 'gomez.jpg', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO usuarios (id, nombreUsuario, mail, contrasenia, dni, fechaNacimiento, fotoPerfil, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 'fgarciabelmonte','fgarciabelmonte@gmail.com','********', 45354893,'1998-07-28','fgarcia.jpg',DEFAULT,DEFAULT,DEFAULT);
INSERT INTO usuarios (id, nombreUsuario, mail, contrasenia, dni, fechaNacimiento, fotoPerfil, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 'juangonzalez','juangonzalez@gmail.com','********', 39872203,'1988-04-07','jgonzalez.jpg',DEFAULT,DEFAULT,DEFAULT);
INSERT INTO usuarios (id, nombreUsuario, mail, contrasenia, dni, fechaNacimiento, fotoPerfil, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 'martinperez','martinperez@gmail.com','********', 47389923,'2007-12-10','martinperez.jpg',DEFAULT,DEFAULT,DEFAULT);

/* crear productos */
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 5, 'ps5.png', 'playstation 5', 'play 5 nueva', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 2, 'cableHdmi.png', 'cable HDMI', 'cable HDMI 2mts', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 5, 'GTAV.png', 'GTA V', 'cd grand theft auto ps5', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 2, 'pc.png', 'pc gamer', 'pc gamer lenovo', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES(DEFAULT, 1, 'ps4.png', 'playstation 4', 'play 4 usada', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 'control.png', 'control Playstation', 'Control rojo y negro', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 'fifa24.png', 'Fifa 24', 'Nuevo Fifa 24', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 'callofduty.png', 'Call of Duty', 'Nuevo Call of Duty', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 'fortnite.png', 'Fortnite', 'Nuevo juego Fortnite', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO productos (id, idUsuario, fotoProducto, nombreProducto, descripcion, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 'Fifa22.png', 'Fifa 22', 'Reliquia Fifa 22', DEFAULT, DEFAULT, DEFAULT);

/* crear comentarios */
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 1, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 1, 'buen producto', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 1, 'buena entrega', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 1, 'mala calidad del producto', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 2, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 2, 'la entrega demoro mucho', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 2, 'funciona mal', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 2, 'el producto llego dañado', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 3, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 3, 'la caja no llego', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 3, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 3, 'no me sirvio el producto', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 4, 'buena entrega', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 4, 'buena calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 4, 'entrega rapida', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 4, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 5, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 5, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 5, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios(id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 5, 'excelente calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 6, 'gran tamanio', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 6, 'buena entrega', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 6, 'especial producto', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 6, 'genial predispocision', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 7, 'buena calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 7, 'mala entrega', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 7, 'muy mala calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 7, 'la entrega llego a tiempo justo', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 8, 'mala entrega del pedido', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 8, 'buen empaquetado', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 8, 'mal habla del repartidor', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 8, 'muy buena entrega', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 9, 'gran calidad', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 9, 'buena ayuda del repartidor', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 9, 'buen empaquetado', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 1, 9, 'gran tamanio', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 2, 10, 'mal habla del personal', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 3, 10, 'llego tarde el repartidor', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 4, 10, 'buena ayuda del personal', DEFAULT, DEFAULT, DEFAULT);
INSERT INTO comentarios (id, idUsuario, idProducto, texto, createdAt, updatedAt, deletedAt) VALUES (DEFAULT, 5, 10, 'muy buen producto', DEFAULT, DEFAULT, DEFAULT);