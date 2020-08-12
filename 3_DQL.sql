USE Uber;

SELECT * FROM passageiro ORDER BY Nome;

SELECT * FROM motorista WHERE Nome LIKE '%F%';

SELECT * FROM contabancaria WHERE Agencia LIKE '%2%';

SELECT * FROM contabancaria WHERE Conta LIKE '%2%';

--Usando INNER JOIN

SELECT
     contabancaria.Agencia,
	 passageiro.Nome,
	 motorista.Nome,
	 status.Status

  FROM corrida
       LEFT JOIN contabancaria ON corrida.IdContaBancaria = contabancaria.IdContaBancaria
	   INNER JOIN passageiro ON corrida.IdPassageiro = passageiro.IdPassageiro
	   INNER JOIN motorista ON corrida.IdMotorista = motorista.IdMotorista
	   INNER JOIN status ON corrida.IdStatus = status.IdStatus
;
