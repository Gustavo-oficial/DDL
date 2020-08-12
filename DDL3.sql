CREATE DATABASE Uber;

USE Uber;

CREATE TABLE motorista (
	IdMotorista INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Estrelas FLOAT,
	Latitude VARCHAR(100) NOT NULL,
	longitude VARCHAR(100) NOT NULL,
);

CREATE TABLE passageiro (
	IdPassageiro INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Estrelas FLOAT,
	Latitude VARCHAR(100) NOT NULL,
	longitude VARCHAR(100) NOT NULL,
);

CREATE TABLE status (
	IdStatus INT IDENTITY PRIMARY KEY NOT NULL,
	Status VARCHAR(100) NOT NULL,
);

CREATE TABLE tipopagamento (
	IdTipoPagamento INT IDENTITY PRIMARY KEY NOT NULL,
	Tipo VARCHAR(100) NOT NULL,
);

CREATE TABLE bandeira (
	IdBandeira INT IDENTITY PRIMARY KEY NOT NULL,
	Bandeira VARCHAR(100) NOT NULL,
	Logo VARCHAR(100) NOT NULL,
);


CREATE TABLE contabancaria (
	IdContaBancaria INT IDENTITY PRIMARY KEY NOT NULL,
	Agencia INT,
	conta INT,
    IdMotorista INT FOREIGN KEY REFERENCES motorista (IdMotorista),
);

CREATE TABLE cartao(
	IdCartao INT IDENTITY PRIMARY KEY NOT NULL,
	Bandeira VARCHAR(100) NOT NULL,
	Numero VARCHAR(100) NOT NULL,
	Titular VARCHAR(100) NOT NULL,
	cvv VARCHAR(100) NOT NULL,
	Vencimento  VARCHAR(100) NOT NULL,
    IdBandeira INT FOREIGN KEY REFERENCES bandeira (IdBandeira),
);

CREATE TABLE formadepagamento(
	IdFormaDePagamento INT IDENTITY PRIMARY KEY NOT NULL,
    IdPassageiro INT FOREIGN KEY REFERENCES passageiro (IdPassageiro),
	IdCartao INT FOREIGN KEY REFERENCES cartao (IdCartao),
	IdTipoPagamento INT FOREIGN KEY REFERENCES tipopagamento (IdTipoPagamento),
);

CREATE TABLE corrida (
	IdCorrida INT IDENTITY PRIMARY KEY NOT NULL,
    IdPassageiro INT FOREIGN KEY REFERENCES passageiro (IdPassageiro),
	IdContaBancaria INT FOREIGN KEY REFERENCES contabancaria (IdContaBancaria),
	IdFormaDePagamento INT FOREIGN KEY REFERENCES formadepagamento (IdFormaDePagamento),
    IdMotorista INT FOREIGN KEY REFERENCES motorista (IdMotorista),
	IdStatus INT FOREIGN KEY REFERENCES status (IdStatus),
);






