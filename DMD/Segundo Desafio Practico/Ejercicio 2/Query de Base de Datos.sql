use master
--DROP DATABASE SV_Region_Mobility_Report
CREATE DATABASE SV_Region_Mobility_Report
USE SV_Region_Mobility_Report
GO

CREATE TABLE DIM_Pais
(
Cod_pais varchar(2) not null,
Pais varchar(50),
)

CREATE TABLE DIM_Region
(
Cod_iso_3166_2 varchar(10) not null,
Region varchar(50),
Sub_Region varchar(50),
Area_Metro varchar(50),
Censo varchar(50),
Cod_pais varchar(2)
)

CREATE TABLE DIM_Fecha
(
Fecha date not null
)

CREATE TABLE DIM_Porcentajes
(
Cod_Porcentajes varchar(50) not null,
Cambio_E_Públicos float,
Cambio_Tiendas float,
Cambio_Comercio_Recreación float,
Cambio_Tránsito float,
Cambio_Trabajo float,
Cambio_Residencia float,
)

CREATE TABLE FACTS_DATOS
(
Cod_Porcentajes varchar(50) not null,
Fecha date not null,
Cod_pais varchar(2) not null,
CambioBaseTotal float,
)

--Creando Primarias
ALTER TABLE DIM_Pais
ADD CONSTRAINT PK_Pais PRIMARY KEY (Cod_pais)

ALTER TABLE DIM_Region
ADD CONSTRAINT PK_Region PRIMARY KEY (Cod_iso_3166_2)

ALTER TABLE DIM_Fecha
ADD CONSTRAINT PK_Fecha PRIMARY KEY (Fecha)

ALTER TABLE DIM_Porcentajes
ADD CONSTRAINT PK_Porcentajes PRIMARY KEY (Cod_Porcentajes)

ALTER TABLE FACTS_DATOS
ADD CONSTRAINT PK_FACTS PRIMARY KEY (Cod_pais,Fecha,Cod_Porcentajes)

--Ceando Secundarias
ALTER TABLE DIM_Region
ADD CONSTRAINT fk_Cod_Region
FOREIGN KEY(Cod_pais)
REFERENCES DIM_Pais(Cod_pais)

ALTER TABLE FACTS_DATOS
ADD CONSTRAINT fk_Cod_Pais
FOREIGN KEY(Cod_pais)
REFERENCES DIM_Pais(Cod_pais)

ALTER TABLE FACTS_DATOS
ADD CONSTRAINT fk_Fecha
FOREIGN KEY(Fecha)
REFERENCES DIM_Fecha(Fecha)

ALTER TABLE FACTS_DATOS
ADD CONSTRAINT fk_Porcentajes
FOREIGN KEY(Cod_Porcentajes)
REFERENCES DIM_Porcentajes(Cod_Porcentajes)

--
Select*from DIM_Fecha
select*from DIM_Pais
select*from DIM_Porcentajes
select*from DIM_Region
select*from FACTS_DATOS
--
DELETE FROM DIM_Fecha
DELETE FROM DIM_Pais
DELETE FROM DIM_Porcentajes
DELETE FROM DIM_Region
DELETE FROM FACTS_DATOS