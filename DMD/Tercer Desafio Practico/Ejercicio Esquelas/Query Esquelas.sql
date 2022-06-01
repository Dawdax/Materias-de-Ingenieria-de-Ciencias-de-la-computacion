use master
--drop database Esquelas_Desafío_Practico
go

create database Esquelas_Desafío_Practico
go

use Esquelas_desafío_practico
go

create table Dim_Fecha
(
Ves_fecha date not null
constraint Ves_fecha primary key(Ves_fecha)
)
go

create table Dim_Departamentos
(
ID_Departamento varchar (5) not null,
Nombre varchar(35)
constraint ID_Departamento primary key(ID_Departamento)
)
go

create table Dim_Falta
(
Ves_Nro int not null,
Ves_tipo varchar(35),
ves_descripción varchar (200)
constraint Ves_Nro primary key (Ves_Nro)
)
go

create table Dim_Estado
(
Ves_Estado varchar(6) not null,
Ves_Descripción varchar(200)
constraint Ves_Estado primary key (Ves_Estado)
)
go

create table Facts_Esquelas
(
Ves_Fecha Date not null,
ves_Nro int not null,
ID_Departamento varchar (5) not null,
Ves_Estado varchar(6) not null,
Ves_Valor money,
Ves_Interés money
constraint pk_Llave_Compuesta primary key (Ves_Fecha, Ves_Nro, ID_Departamento, Ves_Estado)
)
go


--LLaves foraneas--
Alter table Facts_Esquelas
add constraint fk_Ves_Fecha
foreign key (Ves_Fecha)
references Dim_Fecha(Ves_Fecha)
go

Alter table Facts_Esquelas
add constraint fk_Ves_Nro
foreign key (Ves_Nro)
references Dim_Falta(Ves_Nro)
go

Alter table Facts_Esquelas
add constraint fk_ID_Departamentos
foreign key (ID_Departamento)
references Dim_Departamentos(ID_Departamento)
go

Alter table Facts_Esquelas
add constraint fk_Ves_Estado
foreign key (Ves_Estado)
references Dim_Estado(Ves_Estado)
go

select*from Dim_Departamentos
select*from Dim_Estado
select*from Dim_Falta
select*from Dim_Fecha
select*from Facts_Esquelas

DELETE FROM Dim_Departamentos
DELETE from Dim_Estado
DELETE from Dim_Falta
DELETE from Dim_Fecha
DELETE from Facts_Esquelas