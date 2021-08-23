USE OPTUS;
GO

INSERT INTO USUARIO(nomeUsuario, emailUsuario, senhaUsuario, tipoUsuario)
VALUES ('Luiz', 'luizf@email.com', '1234', 'Comum');

INSERT INTO ARTISTA (nomeArtista)
VALUES ('BCRAFF'), ('Rafa Moreira');
GO 

INSERT INTO ESTILO (nomeEstilo)
VALUES ('Rap'), ('FUNK');
GO 

INSERT INTO ALBUM (idArtista, nomeAlbum, dataLancamento)
VALUES (1, 'GANGGANG', '10-07-2019'), (2, 'METRALHA', '20-07-2021');
GO 

INSERT INTO ESTILOALBUM (idAlbum, idEstilo)
VALUES (1, 1), (2, 2);
GO 