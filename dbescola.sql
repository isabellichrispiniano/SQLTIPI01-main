-- criando banco de dados
create database dbescola;

-- acessando o banco de dados
use dbescola;

-- criando tabela
create table tbFuncionarios(
codigo int,
nome varchar(100),
email char(100),
telCel char(10),
cpf char(14),
dataEnt date,
salario decimal(9,2)
);

create table tbUsuarios(
codigo int,
nome varchar(100),
senha varchar(30
);

-- visualizando a tabela
show tables;

--  utilizando
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo registros nas tabelas
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)values(1,'Isabelli Chrispiniano','chrispinianoisabelli@gmail.com','95726-6124','928.574.128-54','2023/10/26',25900.22);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)values(2,'Julia Da Silva','juliadsilva@gmail.com','99999-4444','109.666.234.10','2023/10/26',10000.70);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)values(3,'Adriano Cavalcanti','cavalcantiadriano@hotmal.com','56738-0909','674.987.100.29',15675.22);
-- visualizando os registros/dados inseridos nas tabelas
select *  from tbFuncionarios;