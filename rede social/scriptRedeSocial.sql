CREATE DATABASE DB_REDESOCIAL
USE DB_REDESOCIAL



CREATE TABLE TB_USUARIO(
	ID INT NOT NULL PRIMARY KEY IDENTITY,
	NOME VARCHAR(45) NOT NULL,
	USUARIO VARCHAR(45) NOT NULL, 
	SENHA VARCHAR(100) NOT NULL,
	URL_FOTO VARCHAR(100) NOT NULL,
);
CREATE TABLE TB_POSTAGENS(
	ID INT NOT NULL PRIMARY KEY IDENTITY,
	TITULO VARCHAR(45) NOT NULL,
	DESCRICAO VARCHAR(1000) NOT NULL,
	URL_IMAGEM VARCHAR(100) NOT NULL,
	DATA_POSTAGEM DATE NOT NULL,
	FK_CRIADOR INT NOT NULL,
	FK_GRUPO INT NOT NULL,
	FOREIGN KEY (FK_CRIADOR) REFERENCES TB_USUARIO (ID),
	FOREIGN KEY (FK_GRUPO) REFERENCES TB_USUARIO (ID)
);
CREATE TABLE TB_GRUPOS (
	ID INT NOT NULL PRIMARY KEY IDENTITY,
	GRUPO VARCHAR(45) NOT NULL ,
	DESCRICAO VARCHAR(100) NOT NULL,
	URL_IMAGEM VARCHAR(100) NOT NULL,
	FK_CRIADOR INT NOT NULL,
	FOREIGN KEY (FK_CRIADOR) REFERENCES TB_USUARIO (ID)

);
CREATE TABLE TB_INSCRITOS (
	FK_USUARIO INT NOT NULL,
	FK_GRUPO INT NOT NULL,
	DATAHORA  DATE NOT NULL,
	FOREIGN KEY (FK_USUARIO) REFERENCES TB_USUARIO (ID),
	FOREIGN KEY (FK_GRUPO) REFERENCES TB_GRUPOS (ID)
);

