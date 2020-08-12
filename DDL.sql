/*
   DDL'S
   Banco criado
*/

CREATE DATABASE Album;


USE Album;

CREATE TABLE artista (
	IdArtista INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
);

CREATE TABLE estilo (
	IdEstilo INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
);

CREATE TABLE usuario (
	IdUsuario INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(100) NOT NULL,
);

CREATE TABLE album (
    IdAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataLancamento DATE,
	QtMinutos DATETIME,
	IdArtista INT FOREIGN KEY REFERENCES artista (IdArtista)
);

CREATE TABLE estiloalbum (
    IdAEstiloAlbum INT IDENTITY PRIMARY KEY NOT NULL,
	IdEstilo INT FOREIGN KEY REFERENCES estilo (IdEstilo),
	IdAlbum INT FOREIGN KEY REFERENCES album (IdAlbum)
);



