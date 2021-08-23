CREATE DATABASE locadora;
GO

USE locadora;
GO

CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY IDENTITY,
	nomeEmpresa VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE marca(
	idMarca INT PRIMARY KEY IDENTITY,
	nomeMarca VARCHAR(30) NOT NULL UNIQUE
);
GO

CREATE TABLE modelo(
	idModelo INT PRIMARY KEY IDENTITY,
	idMarca INT FOREIGN KEY REFERENCES marca(idMarca),
	nomeModelo VARCHAR(20) NOT NULL UNIQUE
);
GO

CREATE TABLE veiculo(
	idVeiculo INT PRIMARY KEY IDENTITY,
	idModelo INT FOREIGN KEY REFERENCES modelo(idModelo),
	idMarca INT FOREIGN KEY REFERENCES marca(idMarca),
	idEmpresa INT FOREIGN KEY REFERENCES empresa(idEmpresa),
	placaVeiculo CHAR(7) NOT NULL UNIQUE
);
GO

CREATE TABLE cliente(
	idCliente int primary key identity(1,1),
	nomeCliente VARCHAR(20) NOT NULL,
	cpfCliente CHAR(11) NOT NULL UNIQUE
);
GO

CREATE TABLE aluguel(
	idAluguel INT PRIMARY KEY IDENTITY,
	idVeiculo INT FOREIGN KEY REFERENCES veiculo(idVeiculo),
	idCliente INT FOREIGN KEY REFERENCES cliente(idCliente),
	dataAluguel SMALLDATETIME NOT NULL
);
GO
