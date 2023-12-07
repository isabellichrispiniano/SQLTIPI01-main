  -- Crie uma database chamada ZOOLOGICO.

create database dbZologico;

use dbZologico;

-- Na database ZOOLOGICO, criei uma tabela chamada ANIMAIS com os seguintes campos 

create table tbAnimais(codigo int,tipo char(15),nome char(30),idade int,valor decimal(10,2));

insert into tbAnimais(codigo,tipo,nome,idade,valor)values(1,'cachorro','Djudi',3,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(2,'cachorro','Sula',5,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(3,'cachorro','Sarina',7,300.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(4,'gato','Pipa',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(5,'gato','Saramgue',2,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(6,'gato','Clarences',1,500.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(7,'coruja','Agnes',0,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(8,'coruja','Arabela',1,700.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(9,'sapo','Quash',1,100.00);
insert into tbAnimais(codigo,tipo,nome,idade,valor)values(10,'peixe','Fish',0,100.00);

-- Escreva um comando que exiba todas as colunas e todas as linhas da tabela ANIMAIS

select * from tbAnimais;

-- Escreeva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS, apresentando todos os registros da tabela.

select tipo,nome from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO,NOME e IDADE da tabela ANIAMIS, apresentando todos os registros

select tipo,nome,idade from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO e NOME da tabela ANIMAIS apresentando todos os registros.Apresente a legenda da coluna TIPO com o alias [Tipo de Animal] e a coluna nome com o alias [Nome do Animal].

select nome as 'Nome do Animal',tipo as 'Tipo de Animal' from tbAnimais;

-- Escreva um comando que exiba apenas as colunas TIPO ,NOME e IDADE da tabela ANIMAIS apresentando todos os registros.Apresente a legenda da coluna TIPO com o alias [Tipo de Animal],da coluna com o nome com o alias [Nome do Animal] e da coluna IDADE com alias [Tempo de Vida].

select nome as 'Nome do Animal',tipo as 'Tipo de Animal', idade 'Tempo de vida' from tbAnimais;

-- Escreva um comando que aprsente od dados da tabela ANIMAIS da seguinte forma:

select 'Animal doméstico' as 'Procedencia',tipo as 'Tipo',nome as 'Nome',idade as 'Tempo de vida' from tbAnimais;

-- Escreva um comando que apresente os dados da tabela ANIMAIS da seguinte forma:

select tipo as 'Tipo',nome as 'Nome',idade as 'Idade',valor as 'Valor original',(1.10*valor) as 'Valor de venda' from tbAnimais;

-- Escreva um comando que apresente os dados da tabela ANIAMIS como vemos a seguir, apresentando uma vez os dados repetidos

select tipo as 'Tipo',valor as 'Valor original',(1.10*valor) as 'Valor de venda' from tbAnimais;


