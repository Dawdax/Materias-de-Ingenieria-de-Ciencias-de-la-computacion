use master
--Base de Datos Electrodomesticos
create database db_electrodomesticos;
go
use db_electrodomesticos;
go
create table ventas_electrodomesticos
(
idempleado integer not null,
dui varchar(9) not null,
nit varchar(14) not null,
apellidos varchar(50) not null,
nombres varchar(50) not null,
ventas decimal(10,2) not null,
constraint pk_empleado primary key(idempleado)
)
insert into ventas_electrodomesticos values(1,'0127859-5','0641140877-193','Hernandez Ramirez','Carlos Roberto',950.00)
insert into ventas_electrodomesticos values(2,'1294587-6','7894120652-147','Perez Hernandez','Maria Leticia',758.25)
insert into ventas_electrodomesticos values(3,'4589785-8','2365110578-145','Carranza','Pablo Jose',1050.20)
insert into ventas_electrodomesticos values(4,'9658745-7','3658090976-145','Rodriguez Arias','Christian Alberto',857.50)
insert into ventas_electrodomesticos values(5,'6985847-8','4758121280-193','Pastori','Xavier Iñaki',856.4)

select * from ventas_electrodomesticos

--Base de datos Muebles
create database db_muebles
go
use db_muebles
go
create table ventas_muebles
(
idempleado integer not null,
dui varchar(9) not null,
nit varchar(14) not null,
apellidos varchar(50) not null,
nombres varchar(50) not null,
ventas decimal(10,2) not null,
constraint pk_empleado primary key(idempleado)
)
insert into ventas_muebles values(1,'0127859-5','0641140877-193','Hernandez Ramirez','Carlos Roberto',750.00)
insert into ventas_muebles values(2,'1294587-6','7894120652-147','Perez Hernandez','Maria Leticia',958.25)
insert into ventas_muebles values(3,'4589785-8','2365110578-145','Carranza','Pablo Jose',850.20)
insert into ventas_muebles values(4,'9658745-7','3658090976-145','Rodriguez Arias','Christian Alberto',1057.50)
insert into ventas_muebles values(5,'6985847-8','4758121280-193','Pastori','Xavier Iñaki',1056.4)

select * from ventas_muebles

--Base de datos Tecnologia
create database db_tecnologia
go
use db_tecnologia
go
create table ventas_tecnologia
(
idempleado integer not null,
dui varchar(9) not null,
nit varchar(14) not null,
apellidos varchar(50) not null,
nombres varchar(50) not null,
ventas decimal(10,2) not null,
constraint pk_empleado primary key(idempleado)
)
insert into ventas_tecnologia values(1,'0127859-5','0641140877-193','Hernandez Ramirez','Carlos Roberto',350.00)
insert into ventas_tecnologia values(2,'1294587-6','7894120652-147','Perez Hernandez','Maria Leticia',1235.35)
insert into ventas_tecnologia values(3,'4589785-8','2365110578-145','Carranza','Pablo Jose',732.20)
insert into ventas_tecnologia values(4,'9658745-7','3658090976-145','Rodriguez Arias','Christian Alberto',10.50)
insert into ventas_tecnologia values(5,'6985847-8','4758121280-193','Pastori','Xavier Iñaki',1656.4)

select * from ventas_tecnologia