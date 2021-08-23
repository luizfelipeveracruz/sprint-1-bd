USE PCLINICS
GO

SELECT * FROM TIPO

INSERT INTO CLINICA(nomeClinica, enderecoClinica)
VALUES ('PetMed', 'rua Jaime')

INSERT INTO DONO(nomeDono)
VALUES('Paulo');

INSERT INTO RACA(nomeRaca)
VALUES ('Sírio')

INSERT INTO TIPO(nomeTipo, idRaca)
VALUES ('Hamster', 2)

INSERT INTO PET(idDono, idTipo, nomePet, DataNasc)
VALUES (3, 1, 'THOR', '05-03-2018')

INSERT INTO VETERINARIO (idClinica, nomeVET, CRMV)
VALUES (1, 'Roberto', '99999')

INSERT INTO CONSULTA(idPet, idClinica, idVeterinario, DataCONS, Descricao)
VALUES(1, 1, 1, '06-08-2021', 'Animal estava com a pata quebrada')