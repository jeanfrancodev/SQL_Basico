USE DB_MARKETPLACE

SELECT * FROM TB_USUARIO
SELECT * FROM TB_COMPRAS
SELECT * FROM TB_CATEGORIA
SELECT * FROM TB_PRODUTO

INSERT INTO TB_USUARIO
VALUES 
('Jean','js@gmail.com','12345','usuario','foto_jean'),
('Jonas','jjnin@gmail.com','13579','usuario','foto_jonas'),
('Jubileu','jbl@gmail.com','24680','adm','foto_jubileu');

INSERT INTO TB_CATEGORIA
VALUES 
('AUTOMÓVEL'),('IMÓVEL'),('MAQUINÁRIO');

INSERT INTO TB_PRODUTO
VALUES 
('Casa na praia','Guarujá, beira da praia',100,'IMAGEM',1,2),
('Policorte','corta madeira 5w',125,'IMAGEM',3,3);

INSERT INTO TB_COMPRAS
VALUES 
(2,2,'05/05/2022');

SELECT * FROM TB_CATEGORIA WHERE CATEGORIA = 'IMÓVEL'

SELECT AVG (VALOR)
FROM TB_PRODUTO;

