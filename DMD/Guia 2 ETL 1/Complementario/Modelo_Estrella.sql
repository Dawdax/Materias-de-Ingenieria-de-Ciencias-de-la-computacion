use master
--DROP DATABASE MODELO_ESTRELLA
CREATE DATABASE MODELO_ESTRELLA
GO
USE MODELO_ESTRELLA
GO

--Tablas
--LUGAR_COMPRA
CREATE TABLE LUGAR_COMPRA
(
id_lugar_compra int not null,
n_region int,
region varchar(30),
provincia varchar(100),
comuna varchar(100),
ciudad varchar(100)
constraint pk_id_lugar_compra primary key(id_lugar_compra)
)

--SECTOR_VENTA
CREATE TABLE SECTOR_VENTA
(
id_sector_venta int not null,
canal_1 int,
canal_2 int,
cod_zona int,
zona int
constraint pk_id_sector_venta primary key(id_sector_venta)
)

--VENDEDOR
CREATE TABLE VENDEDOR
(
id_vendedor int not null,
cod_vendedor varchar(6),
cod_persona varchar(6),
vendedor varchar(100),
supervisor varchar(100),
jefe_regional varchar(100),
subgerente varchar(100)
constraint pk_id_vendedor primary key(id_vendedor)
)

--PRODUCTO
CREATE TABLE PRODUCTO
(
id_producto int not null,
inv_id varchar(6),
descr_producto varchar(100),
cod_marca varchar(6),
descr_marcha varchar(100),
categoria varchar(50),
cod_seccion varchar(6),
descr_seccion varchar(100),
peso decimal(4,2),
volumen decimal(5,2)
constraint pk_id_producto primary key(id_producto)
)

--FECHA
CREATE TABLE FECHA
(
id_fecha int not null,
año int,
mes_nombre varchar(15),
mes int,
semestres int,
trimestre int,
semana int,
dia_nombre varchar(15),
dia varchar(15),
fecha_completa datetime
constraint pk_id_fecha primary key(id_fecha)
)

--VENTA
CREATE TABLE VENTA
(
id_lugar_compra int not null,
id_sector_venta int not null,
id_vendedor int not null,
id_producto int not null,
id_fecha int not null,
num_nota_venta int not null,
not_cod_cd int not null,
MontoVenta money,
MontoCosto money,
Ganancias money,
Unidades int,
peso decimal(4,2),
volumen decimal(5,2)
)

ALTER TABLE VENTA
ADD CONSTRAINT pk_Llave_compuesta
PRIMARY KEY(id_lugar_compra,id_sector_venta,id_vendedor,id_producto,id_fecha,num_nota_venta,not_cod_cd)
GO

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_lugar_compra
FOREIGN KEY(id_lugar_compra)
REFERENCES LUGAR_COMPRA(id_lugar_compra)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_sector_venta
FOREIGN KEY(id_sector_venta)
REFERENCES SECTOR_VENTA(id_sector_venta)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_vendedor
FOREIGN KEY(id_vendedor)
REFERENCES VENDEDOR(id_vendedor)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_producto
FOREIGN KEY(id_producto)
REFERENCES PRODUCTO(id_producto)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_fecha
FOREIGN KEY(id_fecha)
REFERENCES FECHA(id_fecha)

--INSERT INTO LUGAR_COMPRA VALUES ('1','2','Central','San Salvador','San Salvador','San Salvador')
--INSERT INTO LUGAR_COMPRA VALUES ('2','2','Central','La Libertad','Santa Tecla','Santa Tecla')
--INSERT INTO LUGAR_COMPRA VALUES ('3','1','Oriental','San Miguel','San Miguel','San Miguel')
--INSERT INTO LUGAR_COMPRA VALUES ('4','3','Occidental','Sonsonate','Acajutla','Acajutla')
--INSERT INTO LUGAR_COMPRA VALUES ('5','3','Santa Ana','Santa Ana','Santa Ana','Santa Ana')
--select*from LUGAR_COMPRA


--INSERT INTO SECTOR_VENTA VALUES ('1','1','2','1','2')
--INSERT INTO SECTOR_VENTA VALUES ('2','3','4','3','2')
--INSERT INTO SECTOR_VENTA VALUES ('3','2','4','2','2')
--INSERT INTO SECTOR_VENTA VALUES ('4','3','1','5','2')
--INSERT INTO SECTOR_VENTA VALUES ('5','2','1','1','3')
--select*from SECTOR_VENTA

--INSERT INTO VENDEDOR VALUES('1','VA1920','PJ2019','Juanito Alcachofa','Ruben Doblas','Guillermo Diaz','Samuel deLuque')
--INSERT INTO VENDEDOR VALUES('2','VH3022','PI2230','Ian Hecox','Anthony Padilla','Guillermo Diaz','John Romero')
--INSERT INTO VENDEDOR VALUES('3','VG1309','PG0913','German Garmendia','Ruben Doblas','Guillermo Diaz','Samuel deLuque')
--INSERT INTO VENDEDOR VALUES('4','VM5673','PR7356','Rosario Martin','Raul Genes','Guillermo Diaz','Samuel deLuque')
--INSERT INTO VENDEDOR VALUES('5','VF9345','PL4593','Luis Flores','Ruben Doblas','Guillermo Diaz','Samuel deLuque')
--Select*from VENDEDOR

--INSERT INTO PRODUCTO VALUES('1','CT3256','Alcohol gel','ER9245','farmaceutica','salud','QR4324','salud','2.15','0.2')
--INSERT INTO PRODUCTO VALUES('2','RE3256','Corn Flakes','WQ9245','Cereales','Alimentos','AR4324','alimentos','2.15','0.2')
--INSERT INTO PRODUCTO VALUES('3','FF3256','Leche','WQ9245','Cereales','Alimentos','AR4324','alimentos','2.15','0.2')
--INSERT INTO PRODUCTO VALUES('4','ET3256','Paracetamol','ER9245','farmaceutica','salud','QR4324','salud','2.15','0.2')
--INSERT INTO PRODUCTO VALUES('5','YT3256','Hot Wheels','UV9245','juguetes','infantil','QR4324','infantil','2.15','0.2')
--select*FROM PRODUCTO

--INSERT INTO FECHA VALUES('1','2020','agosto','8','2','3','33','jueves','13','10-08-2020')
--INSERT INTO FECHA VALUES('2','2020','agosto','8','2','3','33','jueves','13','10-08-2020')
--INSERT INTO FECHA VALUES('3','2020','agosto','8','2','3','33','jueves','13','10-08-2020')
--INSERT INTO FECHA VALUES('4','2020','agosto','8','2','3','33','jueves','13','10-08-2020')
--INSERT INTO FECHA VALUES('5','2020','agosto','8','2','3','33','jueves','13','10-08-2020')
--select*from FECHA

--INSERT INTO VENTA VALUES(1,1,1,1,1,1,1,360,340,20,4,25.32,30)
--INSERT INTO VENTA VALUES(2,3,1,4,1,2,2,360,340,20,4,25.32,30)
--INSERT INTO VENTA VALUES(1,4,5,1,2,3,3,360,340,20,4,25.32,30)
--INSERT INTO VENTA VALUES(4,1,2,1,2,4,4,360,340,20,4,25.32,30)
--INSERT INTO VENTA VALUES(1,2,1,2,5,5,5,360,340,20,4,25.32,30)
--SELECT*FROM VENTA

--DELETE FROM VENTA
--DELETE FROM FECHA
--DELETE FROM LUGAR_COMPRA
--DELETE FROM PRODUCTO
--DELETE FROM SECTOR_VENTA
--DELETE FROM VENDEDOR