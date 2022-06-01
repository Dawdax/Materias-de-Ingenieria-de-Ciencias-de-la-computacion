USE MASTER
CREATE DATABASE Spa_Diego
USE Spa_Diego

CREATE TABLE Clientes
(
id varchar(60),
sexo varchar(10),
ingresos money,
promvisitas int,
edad int,
sauna bit,
masaje bit,
hidro bit,
yoga bit
)

select*from Clientes
SELECT TOP 100 id, (ingresos*promvisitas) As 'Ingresos por visitas', sauna, masaje, yoga, hidro FROM Clientes ORDER BY [Ingresos por visitas] DESC
SELECT TOP 100 id, (ingresos*promvisitas) As 'Ingresos por visitas' FROM Clientes ORDER BY [Ingresos por visitas] DESC
SELECT TOP 100 id,ingresos, promvisitas FROM Clientes where id='Belinda Parkin' Order by ingresos DESC
select*from Clientes where id='Belinda Parkin'
--DELETE FROM Clientes