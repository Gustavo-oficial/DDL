USE Veterinaria;

SELECT * FROM veterinario ORDER BY Nome;

SELECT * FROM donos WHERE Nome LIKE '%Gu%';

SELECT * FROM pet WHERE datanascimento BETWEEN '2020-01-01' AND '2020-05-12';

--Usando o INNER JOIN


  SELECT
     donos.Nome,
	 racas.Nome,
	 pet.descricao
  FROM pet
       INNER JOIN donos ON pet.IdDonos = donos.IdDonos
	   INNER JOIN racas ON pet.IdRaca = racas.IdRaca
;