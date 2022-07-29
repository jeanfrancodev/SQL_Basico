CREATE DATABASE DB_MARKETPLACE
USE DB_MARKETPLACE

CREATE TABLE TB_USUARIO(
	ID INT NOT NULL PRIMARY KEY IDENTITY,
	NOME VARCHAR(45) NOT NULL,
	USUARIO VARCHAR(45) NOT NULL, 
	SENHA VARCHAR(100) NOT NULL,
	TIPO  VARCHAR (50)NOT NULL,
	URL_FOTO VARCHAR(100) NOT NULL,
);

CREATE TABLE TB_CATEGORIA(
	ID INT  NOT NULL PRIMARY KEY IDENTITY ,
	CATEGORIA VARCHAR(45),
);

CREATE TABLE TB_PRODUTO(
	ID INT NOT NULL PRIMARY KEY IDENTITY,
	PRODUTO VARCHAR(45) NOT NULL,
	DESCRICAO VARCHAR(100) NOT NULL,
	VALOR FLOAT	NOT NULL,
	URL_IMAGEM VARCHAR(100) NOT NULL,
	FK_CRIADOR INT NOT NULL,
	FK_CATEGORIA INT NOT NULL,
	FOREIGN KEY (FK_CRIADOR) REFERENCES TB_USUARIO(ID),
	FOREIGN KEY (FK_CATEGORIA) REFERENCES TB_CATEGORIA(ID)
);

CREATE TABLE TB_COMPRAS(
	FK_USUARIO INT,
	FK_PRODUTO INT,
	DIA_MES_ANO DATE,
	FOREIGN KEY (FK_USUARIO) REFERENCES TB_USUARIO(ID),
	FOREIGN KEY (FK_PRODUTO) REFERENCES TB_PRODUTO(ID)
);

