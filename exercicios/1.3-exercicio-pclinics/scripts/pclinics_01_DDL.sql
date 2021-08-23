CREATE DATABASE PCLINICS;
GO

USE PCLINICS;
GO

CREATE TABLE CLINICA(
	idClinica SMALLINT PRIMARY KEY IDENTITY,
	nomeClinica VARCHAR(20) NOT NULL,
	enderecoClinica VARCHAR(20) NOT NULL
);
GO

CREATE TABLE DONO(
	idDono SMALLINT PRIMARY KEY IDENTITY,
	nomeDono VARCHAR(20) NOT NULL
);
GO

CREATE TABLE RACA(
	idRaca SMALLINT PRIMARY KEY IDENTITY,
	nomeRaca Varchar(20) NOT NULL

);

CREATE TABLE TIPO(
	idTipo SMALLINT PRIMARY KEY IDENTITY,
	idRaca SMALLINT FOREIGN KEY REFERENCES RACA(idRaca),
	nomeTipo Varchar(20) NOT NULL,
);

CREATE TABLE PET(
	idPet SMALLINT PRIMARY KEY IDENTITY,
	idDono SMALLINT FOREIGN KEY REFERENCES DONO(idDono),
	idTipo SMALLINT FOREIGN KEY REFERENCES TIPO(idTipo),
	nomePet VARCHAR(20) NOT NULL,
	DataNasc DATE NOT NULL
);
GO

CREATE TABLE VETERINARIO(
	idVeterinario SMALLINT PRIMARY KEY IDENTITY,
	idClinica SMALLINT FOREIGN KEY REFERENCES CLINICA(idClinica),
	nomeVET VARCHAR(20) NOT NULL,
	CRMV VARCHAR(5) NOT NULL
);
GO

CREATE TABLE CONSULTA(
	idConsulta SMALLINT PRIMARY KEY IDENTITY,
	idPet SMALLINT FOREIGN KEY REFERENCES DONO(idDono),
	idClinica SMALLINT FOREIGN KEY REFERENCES CLINICA(idClinica),
	idVeterinario SMALLINT FOREIGN KEY REFERENCES Veterinario(idVeterinario),
	DataCONS DATE NOT NULL,
	Descricao VARCHAR(50)
	
);
GO