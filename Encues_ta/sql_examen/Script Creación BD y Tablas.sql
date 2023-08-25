
--create database ProyectoEncuesta;

--USE ProyectoEncuesta;

CREATE TABLE Encuestas (
    NumeroEncuesta INT PRIMARY KEY identity(1,1),
    NombreParticipante VARCHAR(100) NOT NULL,
    Genero NVARCHAR(1) CHECK (Genero IN ('M', 'F')),
    Edad INT CHECK (Edad >= 18 AND Edad <= 50),
    CorreoElectronico VARCHAR(100) UNIQUE CHECK (CorreoElectronico LIKE '%_@__%.__%'),
    PartidoPolitico VARCHAR(100),
	UsrAdicion VARCHAR(100),
	FechaAdicion datetime,
	UsrModificacion VARCHAR(100),
	FechaModificacion datetime
);

-- drop table Encuestas;
-- select * from Encuestas;

update encuestas
set PartidoPolitico = 'PAC'
where NumeroEncuesta = 1;






