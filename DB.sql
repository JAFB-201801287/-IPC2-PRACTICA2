/*
Los hoteles cuentan con una diversa cantidad de habitaciones divididas por precio y comodidades
según el cliente desee.
La cantidad y calidad de habitaciones dependerá la calidad del hotel, la cadena de hotelería maneja
hoteles de categorías a partir de las tres estrellas hasta las cinco estrellas.
Para un hotel de tres estrellas se cuenta con cuarenta habitaciones divididas en dos tipos de
habitaciones:
- Habitación simple: Cuenta con dos camas imperiales, equipada con baño, TV digital,
teléfono y maquina cafetera.
- Habitación individual: Cuenta con una cama king, un sofá cama y se encuentra equipada
con baño, TV digital, aire acondicionado, teléfono, maquina cafetera y cajilla de seguridad.
Los hoteles de cuatro y cinco estrellas cuentan con cincuenta y sesenta habitaciones
respectivamente, para ambos se divide en dos tipos de habitaciones.
- Habitación simple: Cuenta con dos camas dobles, equipada con baño, TV digital, teléfono
y maquina cafetera.
- Habitación individual: Cuenta con una cama king, puede o no tener un balcón, un sofá cama
y se encuentra equipada con baño, TV digital, aire acondicionado, teléfono, maquina
cafetera y cajilla de seguridad.
Para el ingreso a las habitaciones se deben registrar tanto las entradas como las salidas de los
huéspedes tomando en cuenta que, el ckeck-in se realiza a partir de las tres de la tarde mientras
el check-out se realiza a medio día.
Si el cliente realiza el check-out pasado medio día, se le cobrará una mora por hora de atraso,
mientras que la hora del check-in es inamovible, sin embargo, se 
*/

/*
DROP DATABASE practica2;
*/
CREATE DATABASE practica2;
USE practica2;

/*
	PAIS
	# Codigo de pais
	* Nombre
*/

CREATE TABLE Pais (
	id_pais INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100)  NOT NULL
);

/*
	HOTEL
	# Codigo de hotel
    * nombre
	* Estrellas
	* (Pais)
*/

CREATE TABLE Hotel (
	id_hotel INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    estrellas INT  NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
);

/*
	Habitacion
	# Codigo de hotel
	* Tipo habitacion
	* (Hotel)
*/

CREATE TABLE Habitacion (
	id_habitacion INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    tipo_habitacion VARCHAR(25)  NOT NULL,
    numero_habitacion INT NOT NULL,
    id_hotel INT NOT NULL,
    FOREIGN KEY (id_hotel) REFERENCES Hotel(id_hotel)
);

/*
	Husped
	# Codigo de husped
    * nombre
*/

CREATE TABLE Husped (
	id_husped INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100)  NOT NULL
);

/*
	Reserva
	# Codigo de reserva
	* Fecha
	* (Habitacion)
	* (Husped)
*/

CREATE TABLE Reserva (
	id_reserva INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    check_in DATETIME,
    check_out DATETIME,
    id_habitacion INT NOT NULL,
    id_husped INT NOT NULL,
    FOREIGN KEY (id_habitacion) REFERENCES Habitacion(id_habitacion),
    FOREIGN KEY (id_husped) REFERENCES Husped(id_husped)
);

/* INSERTS --------------------------------------------------------------------------------------------------------------------------------------------*/

/* PAIS */
INSERT INTO Pais(nombre) 
VALUES('Guatemala'), ('Salvador'), ('Peru'), ('USA'), ('China'), ('Japon'), ('Nicaragua'), ('Brazil'), ('Alemania'), ('Holanda');
SELECT * FROM Pais;

/* HOTEL */
INSERT INTO Hotel(nombre, estrellas, id_pais) 
VALUES('HOTEL A', '3', '1'), ('HOTEL B', '3', '2'), ('HOTEL C', '3', '2'), ('HOTEL D', '3', '3'), ('HOTEL E', '3', '4'),
      ('HOTEL F', '4', '2'), ('HOTEL G', '4', '5'), ('HOTEL H', '4', '5'), ('HOTEL I', '4', '6'), ('HOTEL J', '4', '7'),
      ('HOTEL K', '5', '1'), ('HOTEL L', '5', '3'), ('HOTEL M', '5', '9'), ('HOTEL N', '5', '6'), ('HOTEL O', '5', '9');
SELECT * FROM Hotel;

/* HABITACION */
INSERT INTO Habitacion(tipo_habitacion, numero_habitacion, id_hotel) 
VALUES('SIMPLE', '1', '1'), ('SIMPLE', '2', '1'),  ('INDIVIDUAL', '3', '1'),  ('INDIVIDUAL', '4', '1'),
	  ('SIMPLE', '1', '2'), ('SIMPLE', '2', '2'),  ('INDIVIDUAL', '3', '2'),  ('INDIVIDUAL', '4', '2'),
      ('SIMPLE', '1', '3'), ('SIMPLE', '2', '3'),  ('INDIVIDUAL', '3', '3'),  ('INDIVIDUAL', '4', '3'),
      ('SIMPLE', '1', '4'), ('SIMPLE', '2', '4'),  ('INDIVIDUAL', '3', '4'),  ('INDIVIDUAL', '4', '4'),
      ('SIMPLE', '1', '5'), ('SIMPLE', '2', '5'),  ('INDIVIDUAL', '3', '5'),  ('INDIVIDUAL', '4', '5'),
      ('SIMPLE', '1', '6'), ('SIMPLE', '2', '6'),  ('INDIVIDUAL', '3', '6'),  ('INDIVIDUAL', '4', '6'),
      ('SIMPLE', '1', '7'), ('SIMPLE', '2', '7'),  ('INDIVIDUAL', '3', '7'),  ('INDIVIDUAL', '4', '7'),
      ('SIMPLE', '1', '8'), ('SIMPLE', '2', '8'),  ('INDIVIDUAL', '3', '8'),  ('INDIVIDUAL', '4', '8'),
      ('SIMPLE', '1', '9'), ('SIMPLE', '2', '9'),  ('INDIVIDUAL', '3', '9'),  ('INDIVIDUAL', '4', '9'),
      ('SIMPLE', '1', '10'), ('SIMPLE', '2', '10'),  ('INDIVIDUAL', '3', '10'),  ('INDIVIDUAL', '4', '10'),
      ('SIMPLE', '1', '11'), ('SIMPLE', '2', '11'),  ('INDIVIDUAL', '3', '11'),  ('INDIVIDUAL', '4', '11'),
      ('SIMPLE', '1', '12'), ('SIMPLE', '2', '12'),  ('INDIVIDUAL', '3', '12'),  ('INDIVIDUAL', '4', '12'),
      ('SIMPLE', '1', '13'), ('SIMPLE', '2', '13'),  ('INDIVIDUAL', '3', '13'),  ('INDIVIDUAL', '4', '13'),
      ('SIMPLE', '1', '14'), ('SIMPLE', '2', '14'),  ('INDIVIDUAL', '3', '14'),  ('INDIVIDUAL', '4', '14'),
      ('SIMPLE', '1', '15'), ('SIMPLE', '2', '15'),  ('INDIVIDUAL', '3', '15'),  ('INDIVIDUAL', '4', '15');
SELECT * FROM Habitacion;

/* HUSPED */
INSERT INTO Husped(nombre) 
VALUES('Juan'), ('Pedro'), ('Luis'), ('Carlos'), ('Sara'), ('Pamela'), ('Lola'), ('Jose'), ('Tatiana'), ('Luisa');
SELECT * FROM Husped;
      
      
      