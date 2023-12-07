-- apagando banco de dados
drop database dbBoteco;

-- criando banco de dados
create database dbBoteco;

-- acessando banco de dados
use dbBoteco;

-- criando as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
fone char(10),
cpf char(14),
dataNasc date,
logradouro varchar(100),
numero char(5),
cep char(9),
bairro varchar(100),
cidade varchar(100),
siglaEst char(2)
);
create table tbUsuarios(
codUsu int,
nome varchar(30),
senha varchar(20)
);
create table tbFornecedores(
codForn int,
nome varchar(100),
email varchar(100),
telCel char(10),
cnpj char(18)
);

create table tbProdutos(
codProd int,
nome varchar(100),
valor decimal(9,2),
qtde int,
dataEnt date,
horaEnt time
);
create table tbClientes(
codCli int,
nome varchar(100),
email varchar(100),
telCel char(10),
cpf char(14)
);
create table tbVendas(
codVenda int,
codProd int,
codCli int,
codUsu int,
qtde int,
preco decimal(9,2),
dataVenda date,
horaVenda time
);

-- visualizando a estrutura das tabelas
desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

-- inserindo os registros nas tabelas

insert into tbFuncionarios(codFunc,nome,email,fone,cpf,dataNasc,logradouro,numero,cep,bairro,cidade,siglaEst)values(1,'Jonatas Natanael','jonatas123@gmail.com','98999-0012','123.567.952-99','2004/06/23','Rua Das dores','21','04890-840','Vila Aurora','Sao Paulo','SP');
insert into tbUsuarios(codUsu,nome,senha)values(56,'Luana Batista','59216473');
insert into tbFornecedores(codForn,nome,email,telCel,cnpj)values(29,'Casa das frutas','cas@casadasfrutas.com.br','98745-9999','03.361.252/0001-34');
insert into tbProdutos(codProd,nome,valor,qtde,dataEnt,horaEnt)values(1,'Couve Manteiga',10.69,200,'2023/07/21','12:40:50');
insert into tbClientes(codCli,nome,email,telCel,cpf)values(15,'Humberto Carlos Figueira','humberto.cfigueira@hotmail.com','98547-3652','254.536.582-99');
insert into tbVendas(codVenda,codProd,codCli,codUsu,qtde,preco,dataVenda,horaVenda)values(59,1,15,56,200,250.59,'2023/10/24','14:12:37');

-- visualizando
select * from tbFuncionarios;
