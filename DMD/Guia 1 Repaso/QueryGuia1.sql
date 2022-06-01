USE master
GO
CREATE DATABASE Control_Libros_VC190544_AV190086
GO
USE Control_Libros_VC190544_AV190086
GO
--DROP DATABASE Control_Libros_VC190544_AV190086
--CREACION DE TABLAS
CREATE TABLE AUTORES
(
CodAutor varchar(4) NOT NULL,
Nombres varchar(max),
Apellidos varchar(max),
Nacionalidad varchar(max)
)

CREATE TABLE EDITORIALES
(
CodEditorial varchar(4) NOT NULL,
Nombre varchar(max),
Pais varchar(max)
)

CREATE TABLE LIBROS
(
CodLibro varchar(4) NOT NULL,
Titulo varchar(max),
ISBN varchar(13),
Descripcion varchar(max),
Resumen varchar(max),
AñoEdicion date,
CodEditorial varchar(4)
)

CREATE TABLE EJEMPLARES
(
CodLibro varchar(4),
Ubicacion varchar(max),
Estado varchar(25)
)

CREATE TABLE DETALLE_AUTORES_LIBROS
(
CodLibro varchar(4),
CodAutor varchar(4)
)

--LLAVES PRIMARIAS
ALTER TABLE AUTORES
ADD CONSTRAINT PK_CodAutor
PRIMARY KEY (CodAutor)
GO

ALTER TABLE LIBROS
ADD CONSTRAINT PK_CodLibro
PRIMARY KEY (CodLibro)
GO

ALTER TABLE EDITORIALES
ADD CONSTRAINT PK_CodEditorial
PRIMARY KEY (CodEditorial)
GO

--LLAVES FORANEAS
ALTER TABLE DETALLE_AUTORES_LIBROS
ADD CONSTRAINT FK_CodLibro
FOREIGN KEY(CodLibro)
REFERENCES LIBROS(CodLibro)

ALTER TABLE DETALLE_AUTORES_LIBROS
ADD CONSTRAINT FK_CodAutor
FOREIGN KEY(CodAutor)
REFERENCES AUTORES(CodAutor)

ALTER TABLE EJEMPLARES
ADD CONSTRAINT FK_CodLibro1
FOREIGN KEY(CodLibro)
REFERENCES LIBROS(CodLibro)

ALTER TABLE LIBROS
ADD CONSTRAINT FK_CodEditorial
FOREIGN KEY(CodEditorial)
REFERENCES EDITORIALES(CodEditorial)

--INSERCION DE DATOS
INSERT INTO AUTORES VALUES
('AU01','JOSE PEDRO','ALVARADO','ESPAÑOLA'),
('AU02','MARIA TERESA','RIVAS','MEXICANO'),
('AU03','JULIO CARLOS','FERNANDEZ','COLOMBIANO'),
('AU04','ALEXANDER','RODRIGUEZ','MEXICANO'),
('AU05','JUAN MANUEL','ARTIGA','COLOMBIANO')

INSERT INTO EDITORIALES VALUES
('ED01','Thomson internacional','España'),
('ED02','Omega','Mexico'),
('ED03','La fuente de la sabiduria','Colombia'),
('ED04','Siglo XV','España')

INSERT INTO LIBROS VALUES
('LB01','Metologia de la programacion','123-334-456','Sintaxis basicas de la programacion','204 paginas','2000-01-01','ED02'),
('LB02','SQL server 2005','345-678-076','Explicacion de las consultas SQL','798 paginas','2005-01-01','ED03'),
('LB03','Como programar en C/C++','153-567-345','Diferencias entre C y C++','156 paginas','1997-01-01','ED02'),
('LB04','Aprende PHP en 30 dias','234-345-987','Sintaxis PHP para crear paginas web dinamicas','200 paginas','2005-01-01','ED01'),
('LB05','SQL server 2018','789-255-487','Administracion de base de datos','150 paginas','2008-01-01','ED03'),
('LB06','CSS y HTML','652-414-111','Creacion de paginas web y hojas de estilo','350 paginas','2007-01-01','ED01')

INSERT INTO DETALLE_AUTORES_LIBROS VALUES 
('LB01','AU02'),
('LB01','AU04'),
('LB02','AU01'),
('LB03','AU05'),
('LB03','AU03'),
('LB04','AU02'),
('LB04','AU04')

INSERT INTO EJEMPLARES VALUES
('LB01','Estante 1','Prestado'),
('LB02','Estante 2','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB04','Estante 4','Disponible'),
('LB02','Estante 2','Reservado'),
('LB04','Estante 4','Prestado'),
('LB01','Estante 1','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB01','Estante 1','Disponible'),
('LB05','Estante 5','Disponible'),
('LB06','Estante 5','Prestado'),
('LB06','Estante 5','Disponible')

--PARTE 2 CONSULTAS
--a
SELECT AUTORES.Nombres, AUTORES.Apellidos, AUTORES.Nacionalidad, LIBROS.Titulo
FROM AUTORES INNER JOIN DETALLE_AUTORES_LIBROS
ON AUTORES.CodAutor=DETALLE_AUTORES_LIBROS.CodAutor
INNER JOIN	LIBROS ON LIBROS.CodLibro=DETALLE_AUTORES_LIBROS.CodLibro ORDER BY AUTORES.Nombres DESC

--b
SELECT AUTORES.Nombres, AUTORES.Apellidos, LIBROS.Titulo, EDITORIALES.Nombre
FROM AUTORES INNER JOIN DETALLE_AUTORES_LIBROS
ON AUTORES.CodAutor=DETALLE_AUTORES_LIBROS.CodAutor
INNER JOIN LIBROS ON LIBROS.CodLibro=DETALLE_AUTORES_LIBROS.CodLibro 
INNER JOIN EDITORIALES ON LIBROS.CodEditorial= EDITORIALES.CodEditorial WHERE EDITORIALES.Nombre='Omega'

--c
SELECT LIBROS.Titulo, COUNT (LIBROS.Titulo) AS	Ejemplares FROM LIBROS
INNER JOIN EJEMPLARES ON LIBROS.CodLibro=EJEMPLARES.CodLibro GROUP BY LIBROS.Titulo

--d
	SELECT LIBROS.Titulo FROM LIBROS
	INNER JOIN EJEMPLARES ON LIBROS.CodLibro=EJEMPLARES.CodLibro WHERE EJEMPLARES.Estado='Prestado'

--e
SELECT LIBROS.Titulo FROM LIBROS
WHERE LIBROS.AñoEdicion BETWEEN '2000-01-01' AND '2007-01-01'
ORDER BY LIBROS.AñoEdicion ASC

--f
SELECT EJEMPLARES.Ubicacion, COUNT (LIBROS.Titulo) AS Ejemplares FROM LIBROS
INNER JOIN EJEMPLARES ON LIBROS.CodLibro=EJEMPLARES.CodLibro WHERE EJEMPLARES.Estado='Prestado'
GROUP BY EJEMPLARES.Ubicacion

--PARTE 3
--CREANDO TABLAS AUTORES ESPAÑA
--select*from AUTORES where Nacionalidad='ESPAÑOLA'
CREATE TABLE AUTORES_ESPAÑA
(
CodAutor varchar(4) NOT NULL,
Nombres varchar(max),
Apellidos varchar(max),
Nacionalidad varchar(max)
)

INSERT INTO AUTORES_ESPAÑA
SELECT*FROM AUTORES
WHERE Nacionalidad='ESPAÑOLA'

--select*from AUTORES_ESPAÑA

use Library
GO
CREATE VIEW COPIA_LIBRO
AS SELECT TOP 99.99 PERCENT c.isbn as 'ISBN',c.copy_no AS 'No. Copias',c.on_loan as 'Prestados',t.title as 'Titulo',i.translation as 'Traducción',i.cover as 'Portada'
FROM [dbo].[copy] as c INNER JOIN item as i
ON c.isbn=i.isbn
INNER JOIN title as t
ON i.title_no=t.title_no
WHERE c.isbn=1 OR c.isbn=500 OR c.isbn=1000
ORDER BY c.isbn ASC
GO
--DROP VIEW COPIA_LIBRO

select*from COPIA_LIBRO
