USE CATALOGO;

INSERT INTO GENERO (nomeGenero)
VALUES ('ROMANCE')

INSERT INTO FILME(idGenero,tituloFilme)
VALUES (1,'RAMBO'), (1,'VINGADORES'),
	(2,'GHOST'), (2,'DIARIO DE UMA PAIXAO')
GO

INSERT INTO FILME (idGenero, tituloFilme)
VALUES (1,'FILME NOVO');
GO

UPDATE FILME  
SET tituloFilme = 'GENTE GRANDE'
WHERE idFilme = 5; 
GO



SELECT * FROM GENERO
SELECT * FROM FILME