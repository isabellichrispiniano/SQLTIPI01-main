-- apagando o banco o banco de dados
drop database dbatividade;

-- criando o banco de dados
create database dbatividade;

-- acessando o banco de dados
use dbatividade;

-- criando a tabela
create table tbAutor(
idAutor int,
nome varchar(45),
pais varchar(45)
);
create table tbLivros(
idLivros int,
titulo varchar(45),
ano varchar(45),
idAutor int,
idCategoria int
);
create table tbCategoria(
idCategoria int,
nome varchar(45),
descricao varchar(45)
);

-- visualizando a tabela 
show tables;

-- utilizando
desc tbAutor;
desc tbLivros;
desc tbCategoria;

-- inserindo registros na tabela tbAutor
insert into tbAutor(idAutor,nome,pais)values(25,'Collen Hoover','Estados Unidos');
insert into tbautor(idAutor,nome,pais)values(26,'Haemin Sunim','Estados Unidos');
insert into tbautor(idAutor,nome,pais)values(27,'Ali Hazelwood','Estados Unidos');
insert into tbautor(idAutor,nome,pais)values(28,'Igor Pires','Estados Unidos');
insert into tbautor(idAutor,nome,pais)values(29,'Jane Auster','Estados Unidos');

-- inserindo registros na tabela tbLivros
insert into tbLivros(idLivros,titulo,ano,idAutor,idCategoria)values(10,'E assim que acaba','2019',25,40);
insert into tbLivros(idLivros,titulo,ano,idAutor,idCategoria)values(11,'As coisas que voce so ve quando desacelera','2000',26,41);
insert into tbLivros(idLivros,titulo,ano,idAutor,idCategoria)values(12,'A hipotese do amor','2020',27,42);
insert into tbLivros(idLivros,titulo,ano,idAutor,idCategoria)values(13,'Textos para tocar cicatrizes','2022',28,43);
insert into tbLivros(idLivros,titulo,ano,idAutor,idCategoria)values(14,'Razao e sensibilidade','2021',29,44);

-- inserindo registros na tabela tbCategoria
insert into tbCategoria(idCategoria,nome,descricao)values(40,'E assim que acaba','lalalalalaalal');	
insert into tbCategoria(idCategoria,nome,descricao)values(41,'As coisas que voce so ve quando desacelera','lalalalalaalal');
insert into tbCategoria(idCategoria,nome,descricao)values(42,'A hipotese do amor','lalalalalaalal');
insert into tbCategoria(idCategoria,nome,descricao)values(43,'Textos para tocar cicatrizes','lalalalalaalal');
insert into tbCategoria(idCategoria,nome,descricao)values(44,'Razao e sensibilidade','lalalalalaalal');

-- visualizando a tabela
select * from tbAutor;