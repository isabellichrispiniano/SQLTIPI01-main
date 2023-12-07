drop database dbProdutos;

create database dbProdutos;
use dbProdutos;

CREATE TABLE PRODUTOS( 
CODIGO INT, 
NOME VARCHAR(50), 
TIPO VARCHAR(25), 
QUANTIDADE INT, 
VALOR DECIMAL(10,2));

INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 1,
'IMPRESSORA', 'INFORMATICA', 200, 600.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 2,
'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 3, 'DVD 
PLAYER', 'ELETRONICOS', 250, 500.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 4,
'MONITOR', 'INFORMATICA', 400, 900.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 5,
'TELEVISOR', 'ELETRONICOS', 350, 650.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 6,
'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 7,
'CELULAR', 'TELEFONE', 450, 850.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 8,
'TECLADO', 'INFORMATICA', 300, 450.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 9,
'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00 ); 
INSERT INTO PRODUTOS ( CODIGO, NOME, TIPO, QUANTIDADE, VALOR ) VALUES ( 10,
'MOUSE', 'INFORMATICA', 400, 60.00 );

-- where com select

select * from PRODUTOS where tipo = 'INFORMATICA';

-- where com update (cuidado o comando irá atualizar os registros)

-- utilizando a função in (é igual ao or)

select * from PRODUTOS where tipo = 'INFORMATICA' or
tipo = 'ELETRONICOS';

select * from PRODUTOS where tipo in('INFORMATICA', 'ELETRONICOS');

-- utilizando o not (negação)

select * from PRODUTOS where tipo not in('INFORMATICA', 'ELETRONICOS');

-- utilizando between (entre)

select * from PRODUTOS where valor between 400 and 600;

-- utilizando not between (entre)

select * from PRODUTOS where valor not between 400 and 600;

-- comando like (busca por nome)

-- like '%%'

-- %se - tudo que termina
-- se% - tudo que inicia
-- %se% - tudo que inicia, meio, termina

select * from PRODUTOS where nome like '%an';
select * from PRODUTOS where nome like 'an%';
select * from PRODUTOS where nome like '%an%';



-- Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'

update produtos set valor = valor * 1.12 where nome like 'f%';
select * from PRODUTOS;

-- Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600

