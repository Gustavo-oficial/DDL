USE Album;

SELECT * FROM estilo ORDER BY Nome;

SELECT * FROM artista WHERE Nome LIKE '%Ma%';

SELECT * FROM usuario WHERE Nome LIKE '%B%';

SELECT * FROM album WHERE DataLancamento BETWEEN '2000-01-01T00:00:00' AND '2020-05-12T00:00:00';


--Usando INNER JOIN


SELECT
     artista.Nome,
	 album.Nome
  FROM album
       INNER JOIN artista ON album.IdArtista = artista.IdArtista
;