drop database dbGraficagf;

create database dbGraficagf;

use dbGraficagf;


create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
cpf char(14) not null unique,
salario decimal(9,2) default 0 check(salario >=0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codFunc)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100) not null,
cnpj varchar(17) not null unique,
primary key(codForn)
);

create table tbClientes(
codCli int not null auto_increment,
nome varchar(100) not null,
cpf char(14) not null unique,
primary key(codCli)
);

create table tbUsuarios(
CodUsu int not null auto_increment,
nome varchar(50) not null,
senha varchar(30) not null,
codFunc int not null,
primary key(CodUsu),
foreign key(codFunc)references tbFuncionarios(codFunc)
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100) not null,
valor decimal(9,2) default 0 check(valor >=0),
qtde int default 0 check(qtde >=0),
dataEnt date,
horaEnt time,
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFornecedores(codForn)
);

create table tbVendas(
codVenda int not null auto_increment,
dataVenda date,
horaVenda time,
qtde int default 0 check(qtde >=0),
CodUsu int not null,
codProd int not null,
codCli int not null,
primary key(codVenda),
foreign key(CodUsu)references tbUsuarios(CodUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli)
);


show tables;


desc tbFuncionarios;
desc tbFornecedores;
desc tbClientes;
desc tbUsuarios;

-- inserindo registros nas tabelas

-- alterando registros nas tabelas

-- excluindo registros nas tabelas

-- pesquisando registros nas tabelas
