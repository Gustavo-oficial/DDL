USE Album;

INSERT INTO artista (Nome) VALUES ('Mano Brown');

INSERT INTO estilo (Nome) VALUES ('Rap');

INSERT INTO usuario (Nome,Email,Senha) VALUES ('Bruno', 'bruno@gmail.com','1234');

INSERT INTO album (Nome,Localizacao, DataLancamento,QtMinutos,IdArtista) VALUES ('Cores','Rua Varsovia''2006-07-20','2006-07-20T01:15:25',1);

INSERT INTO estiloalbum (IdAlbum) VALUES (1);

SELECT * FROM artista;
SELECT * FROM estilo;
SELECT * FROM usuario;
SELECT * FROM album;
SELECT * FROM estiloalbum;