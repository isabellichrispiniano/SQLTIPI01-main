-- criando o banco de dados
create database dbempresatld;

-- acessando o banco de dados
use dbempresatld;

-- criando tabela
create table tbCategorias(
idcategorrias int,
dscategoria varchar(45)
);
create table tbProdutos(
idprodutos int,
dsproduto varchar(45),
preco float(9,2),
qtdade int,
foto longblob,
idcategorias int
);
create table tbPedidoitens(
idpedidoitens int,
qtdade int,
preco float(9,2),
total float(9,2),
idpedidos int,
idprodutos int
);
create table tbClientes(
idclientes int,
nome varchar(100),
email varchar(100),
senha varchar(100)
);
create table tbPedidos(
idpedidos int,
data date,
status varchar(45),
sessao varchar(45),
idclientes int
);

-- visualizando a tabela
show tables;
desc tbCategorias;

