USE DB_CLASSIFICADO

SELECT * FROM TB_ANUNCIOS
SELECT * FROM TB_USUARIO

INSERT INTO TB_USUARIO
VALUES 
('Jean','js@gmail.com','12345','tipo','foto_jean'),
('Jonas','jjnin@gmail.com','13579','tipo','foto_jonas'),
('Jubileu','jbl@gmail.com','24680','tipo','foto_jubileu');


INSERT INTO TB_ANUNCIOS
VALUES
('onix','completo 2020 flex 20mil km','0500 2022 007','Foto_Carro','11/07/22',1),
('prisma','vidro elétrico 2018 flex 60mil km','0500 2022 020','Foto_Carro','31/05/22',2),
('Monza','completo 1988 alcool 14mil km','0500 2022 050','Foto_Carro','01/01/22',2);

SELECT * FROM TB_ANUNCIOS WHERE DIA_MES_ANO >= '2022-06-01'

SELECT * FROM TB_USUARIO
WHERE ID BETWEEN '2' AND '3';

