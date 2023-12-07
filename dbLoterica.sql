-- apagando banco de dados existente
drop database dbLoterica;

-- criando banco de dados
create database dbLoterica;
-- acessando banco de dados
use dbLoterica;
-- criando as tabelas
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
nome varchar(50),
senha varchar(30)
);

-- visualizando as tabelas criadas no bando de dados
show tables;

-- visualizando a estrutura da tabela criada
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo registros nas tabelas
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(1,'Armandino da Silva','armandino.silva@hotmail.com',
		'99875-8574','157.857.897-00','2023/10/26',1500.65);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(2,'Helena Miranda','helena.miranda@gmail.com',
		'97852-8574','258.369.741-88','2020/08/25',2350.58);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(3,'Zenaide Albuquerque Spinnose','zenaide.aspinnose@uol.com',
		'97415-8524','251.247.897-99','2018/02/15',3252.24);
insert into tbFuncionarios(codigo,nome,email,telCel,cpf,dataEnt,salario)
	values(4,'Evair Aparecido de Souza','evair.asouza@globo.com',
		'97452-5412','357.759.689-22','2019/02/12',4258.74);

-- visualizando os registros/dados inseridos nas tabelas
select * from tbFuncionarios;

