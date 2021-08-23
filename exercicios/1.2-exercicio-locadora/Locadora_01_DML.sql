USE locadora
GO

INSERT INTO empresa (nomeEmpresa)
VALUES ('movida'), ('localiza')
GO

INSERT INTO cliente (nomeCliente, cpfCliente)
VALUES ('Saulo', '777'), ('Lucas', '888')
GO

INSERT INTO marca (nomeMarca)
VALUES ('gm'), ('ford'), ('fiat')
GO

INSERT INTO modelo (nomeModelo, idMarca)
VALUES ('onix','1'), ('fiesta','2'), ('argo','3')
GO

INSERT INTO veiculo (placaVeiculo, idModelo, idMarca, idEmpresa)
VALUES ('444','3','3','2'), ('555','1','2','1'), ('666','2','1','1')
GO

INSERT INTO aluguel (idVeiculo, dataAluguel, idCliente)
VALUES ('2','2021-08-03 10:33',5), ('3','2021-08-04 10:34',4), ('1','2021-08-05 10:35',5)
GO
