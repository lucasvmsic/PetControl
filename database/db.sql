CREATE DATABASE Veterinaria;

use Veterinaria;

CREATE TABLE users(
    id int(11) NOT NULL,
    username VARCHAR(16) NOT NULL,
    password VARCHAR(60) NOT NULL,
    fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
    ADD PRIMARY KEY(id);

ALTER TABLE users
    MODIFY id INT(11) NOT NULL AUTO_INCREMENT;

DESCRIBE users;

CREATE TABLE CLIENTES
(
ID_CLIENTES INT PRIMARY KEY NOT NULL,

Nombre varchar (100) NOT NULL,
Telefono int (20) NOT NULL,
Rut varchar(50) NOT NULL,
Direccion varchar(50) NOT NULL,
Correo varchar(50)
);


CREATE TABLE TRABAJADORES
(
ID_TRABAJADORES INT PRIMARY KEY NOT NULL,

Nombre varchar(30) NOT NULL,
Fecha_Nacimiento int (30) NOT NULL ,
Rut int (30) NOT NULL,
Direccion varchar (30) NOT NULL,
Rol varchar (30) NOT NULL

);

CREATE TABLE PRODUCTOS
(
ID_PRODUCTOS INT PRIMARY KEY NOT NULL,
Tipo varchar (30) NOT NULL,
Cantidad int(255) NOT NULL
);

CREATE TABLE MASCOTAS
(
ID_MASCOTAS INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ID_clientes INT NOT NULL, 

Nombre varchar(30) NOT NULL,
Fecha_Nacimiento int (30) NOT NULL ,
Test varchar(30) NOT NULL,
Raza varchar(30) NOT NULL,
Esterilizado varchar(10) NOT NULL,
Peso int(30) NOT NULL,

Foreign key(ID_clientes) references CLIENTES(ID_CLIENTES)

);

CREATE TABLE DIAGNOSTICO
(
ID_DIAGNOSTICO INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

Diagnostico varchar (150),

id_Mascota INT NOT NULL,
id_Producto INT NOT NULL,
id_Trabajador INT NOT NULL,

Foreign key(id_Mascota) references MASCOTAS(ID_MASCOTAS),
Foreign key(id_Producto) references PRODUCTOS(ID_PRODUCTOS),
Foreign key(id_Trabajador) references TRABAJADORES(ID_TRABAJADORES)

);



