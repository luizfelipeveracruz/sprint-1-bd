USE LOCADORA
GO

Select * FROM EMPRESA;
GO

Select * FROM CLIENTE;
GO

Select * FROM MARCA;
GO

Select * FROM MODELO;
GO

Select * FROM VEICULO;
GO

SELECT * FROM ALUGUEL;
GO

SELECT DataDevol, DataAluguel, nomeCliente, nomeModelo
FROM ALUGUEL
INNER JOIN CLIENTE
ON ALUGUEL.idCliente = CLIENTE.idCliente
INNER JOIN MODELO
ON ALUGUEL.idVeiculo = MODELO.idModelo;
GO

SELECT nomeCliente, DataDevol, DataAluguel, nomeModelo 
FROM ALUGUEL
INNER JOIN CLIENTE
ON CLIENTE.idCliente = ALUGUEL.idAluguel
INNER JOIN MODELO
ON ALUGUEL.idVeiculo = MODELO.idModelo
WHERE CLIENTE.nomeCliente = 'Lucas'