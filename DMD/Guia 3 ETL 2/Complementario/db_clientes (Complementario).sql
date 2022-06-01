USE master
GO

CREATE DATABASE db_clientes
GO

USE db_clientes
GO

CREATE TABLE Clientes
(
codigo_cliente varchar(15) not null primary key,
dui varchar(10) not null,
nit varchar(17) not null,
nombres varchar(450) not null,
sexo varchar(10) not null,
numero_telefono varchar(9) not null,
estado varchar(10) not null,
monto_facturacion decimal(10,2) not null,
nombre_tipo   varchar(100) not null
);
GO

SELECT * FROM Clientes
GO