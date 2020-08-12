USE Veterinaria;

INSERT INTO clinica (Nome, Endereco) VALUES ('Zoopetia','Av Brasil');

INSERT INTO veterinario (Nome, IdClinica) VALUES ('Rodolfo',3);

INSERT INTO donos (Nome) VALUES ('Franscisco');

INSERT INTO tipopet (Descricao) VALUES ('Hamster');

INSERT INTO racas (Nome, IdTipoPets) VALUES ('Anão Russo',3);

INSERT INTO pet (Descricao, Datanascimento,IdRaca, IdDonos) VALUES ('Hamster docil','2010-04-06',3,3);

INSERT INTO atendimentos (Descricao,Dataatendimento,IdPet,IdVeterinario) VALUES ('O animal esta com uma infecção de nivel baixo', '2020-04-15T13:05:17',3,3);


SELECT * FROM clinica;
SELECT * FROM veterinario;
SELECT * FROM donos;
SELECT * FROM tipopet;
SELECT * FROM racas;
SELECT * FROM pet;
SELECT * FROM atendimentos;
