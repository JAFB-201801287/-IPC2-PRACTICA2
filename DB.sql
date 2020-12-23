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
	* Estrellas
	* (Pais)
*/

CREATE TABLE Hotel (
	id_hotel INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    estrellas INT  NOT NULL,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES Pais(id_pais)
);


