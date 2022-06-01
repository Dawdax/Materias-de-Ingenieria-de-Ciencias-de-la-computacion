create database sv_school_products;

use sv_school_products;

create table products(
Categoria nchar(100),
Producto nchar(100),
Marca nchar(100),
Cantidad decimal,
Unidad nchar(100),
Precio money,
Establecimiento nvarchar(4000),
Direccion nchar(400),
Departamento nchar(100),
Municipio nchar(100),
[Fecha Sondeo] date
);
select*from products
--delete from products

