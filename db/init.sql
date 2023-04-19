CREATE DATABASE almacen2;
use almacen2;

CREATE TABLE usuarios (
	nombre varchar (50), 
	email varchar (50), 
	usuario varchar (20), 
	password varchar (20), 
	admin boolean, 
	primary key(usuario));

CREATE TABLE ordenes(
	id int auto_increment, 
	nombreCliente varchar(50), 
	emailCliente varchar(50), 
	totalCuenta decimal(10,2), 
	fecha datetime default CURRENT_TIMESTAMP, 
	primary key (id));

CREATE TABLE productos(
	id int auto_increment, 
	nombre varchar (50), 
	precio decimal (10,2), 
	inventario int, 
	primary key(id));

insert into usuarios values("Vanessa", "vanessa@gmail.com", "Nessa", "123456", False);
insert into usuarios values("Paola", "paola@gmail.com", "Pao", "123456", True);
insert into productos values(null, "Pollo Asado", 10000, 50);
insert into productos values(null, "Arepa de choclo", 3500, 29);
insert into productos values(null, "Gaseosa", 2500, 85);

