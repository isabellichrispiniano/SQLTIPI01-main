drop database dbCinema;

create database dbCinema;

use dbCinema;

create table tbFuncionarios(codigo int, nome varchar(100), email varchar(100), telCel char(10));

insert into tbFuncionarios(codigo,nome,email,telCel)values(1,'Francisco Albuquerque','franciscoalbuquerque@gmail.com','95284-1852');
insert into tbFuncionarios(codigo,nome,email,telCel)values(2,'Emanueli Souza','souzaemanueli@hotmal.com','96721-2121');
insert into tbFuncionarios(codigo,nome,email,telCel)values(3,'Julio de Souza','juliosouza@gmail.com','95726-6124');
insert into tbFuncionarios(codigo,nome,email,telCel)values(4,'Ana Julia Soares','soaresjulia@gmail.com','91236-6122');
insert into tbFuncionarios(codigo,nome,email,telCel)values(5,'Pedro de Souza','souzapedro@gmail.com','9990-6090');

select * from tbFuncionarios;

-- alterando registros nas tabelas criadas

update tbFuncionarios set nome = 'Francisco Albuquerque Fonseca' where codigo = 1;
update tbFuncionarios set telCel = '95722-6223' where codigo = 5; 
update tbFuncionarios set email = 'julia2soares@hotmal.com', telCel = '99879-0909' where codigo = 4;

select * from tbFuncionarios;

-- excluindo registros nas tabelas criadas

delete from tbFuncionarios where codigo = 2;

select * from tbFuncionarios;

-- buscando valores e alterando o cabeçalho das tabelas

select codigo as 'Codigo', nome as 'Nome', telCel as 'Telefone Celular' from tbFuncionarios; 