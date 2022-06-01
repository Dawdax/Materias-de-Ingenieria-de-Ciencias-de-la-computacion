USE MASTER
CREATE DATABASE Floristeria_Fiorella
USE Floristeria_Fiorella

CREATE TABLE Compras
(
id varchar(60),
Rosas int,
Claveles int,
Macetas int,
Tierra int,
Girasoles int,
Hortensia int,
Globos int,
Tarjetas int,
Carmelias int,
Orquidias int,
Lirios int,
Aurora int,
Tulipanes int,
Listón int
)

select*from Compras
--DELETE FROM Compras
select * from Compras ORDER BY id