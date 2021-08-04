CREATE DATABASE PCLINICS;
GO 

USE PCLINICS;
GO

CREATE TABLE CLINICA(
idClinica INT PRIMARY KEY IDENTITY(1,1),
endereco VARCHAR(60) NOT NULL UNIQUE
);
GO

CREATE TABLE PET(
idPet INT PRIMARY KEY IDENTITY(1,1),
nomePet VARCHAR(30) NOT NULL
);
GO

CREATE TABLE VETERINARIO(
idVeterinario INT PRIMARY KEY IDENTITY(1,1),
idClinica INT FOREIGN KEY REFERENCES CLINICA(idClinica),
nomeVeterinario VARCHAR(50) NOT NULL UNIQUE,
especializacao VARCHAR(40) NOT NULL,
);
GO

CREATE TABLE CONSULTA(
idConsulta INT PRIMARY KEY IDENTITY(1,1),
idVeterinario INT FOREIGN KEY REFERENCES VETERINARIO(idVeterinario),
idPet INT FOREIGN KEY REFERENCES PET(idPet),
dataHoraConsulta DATETIME NOT NULL,
);
GO