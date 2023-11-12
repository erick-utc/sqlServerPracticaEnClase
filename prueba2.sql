CREATE DATABASE	RestauranteUTC
GO

USE RestauranteUTC
GO

CREATE TABLE mesa 
(
	codigo int identity(1,1) PRIMARY KEY,
	descripcion varchar(30) NOT NULL
)
GO

CREATE TABLE mesero
(
	codigo int identity(1,1) PRIMARY KEY,
	nombre varchar(30) NOT NULL
)
GO

CREATE TABLE cliente(
	codigo int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nombre varchar(50) NOT NULL,
)
GO

CREATE TABLE mesamesero
(
	codigo int identity(1,1) PRIMARY KEY,
	codigomesa int,
	codigomesero int,
	CONSTRAINT fk_codigomesa FOREIGN KEY(codigomesa) REFERENCES mesa(codigo),
	CONSTRAINT fk_codigomesero FOREIGN KEY(codigomesero) REFERENCES mesero(codigo)
)
GO

CREATE TABLE pedido
(
	codigo int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	codigocliente int NULL,
	codigomesero int NULL,
	descripcion varchar(100) NOT NULL,
	CONSTRAINT fk_codigocliente FOREIGN KEY(codigocliente) REFERENCES cliente(codigo),
	CONSTRAINT fk_codigomeseropedido FOREIGN KEY(codigomesero) REFERENCES mesero(codigo)
) 
GO



INSERT INTO mesa (descripcion) VALUES ('Mesa 1');
INSERT INTO mesa (descripcion) VALUES ('Mesa 2');
INSERT INTO mesa (descripcion) VALUES ('Mesa 3');
GO

INSERT INTO mesero(nombre) VALUES ('Maria Jose');
INSERT INTO mesero(nombre) VALUES ('Jose Javier');
INSERT INTO mesero(nombre) VALUES ('Sebastian');
GO

INSERT INTO mesamesero(codigomesa, codigomesero) VALUES (1, 2);
INSERT INTO mesamesero(codigomesa, codigomesero) VALUES (2, 1);
INSERT INTO mesamesero(codigomesa, codigomesero) VALUES (3, 3);
GO

INSERT INTO cliente(nombre) VALUES('Erick');
INSERT INTO cliente(nombre) VALUES('Mary Jo');
INSERT INTO cliente(nombre) VALUES('Sebas');

INSERT INTO pedido(codigocliente, codigomesero, descripcion) VALUES(1,1,'Chifrijo');
INSERT INTO pedido(codigocliente, codigomesero, descripcion) VALUES(1,1,'Hamburguesa de la casa');
INSERT INTO pedido(codigocliente, codigomesero, descripcion) VALUES(1,1,'Costilla');



