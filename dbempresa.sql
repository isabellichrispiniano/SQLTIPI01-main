-- criando banco de dados
create database dbempresa;

-- acessando o banco de dados
use dbempresa;

-- criando tabela
create table tbCliente(
numCliente int,
nome varchar(50),
endereco varchar(50),
fornecedores varchar(50),
fornecel varchar(50)
);
create table tbEmprestimo(
numFilm int,
numero int,
tipo varchar(50),
cliente int,
data date,
datadev date,
valor float(9,2)
);
create table tbMidia(
numFilm int,
numero int,
tipo varchar(50)
);
create table tbFilme(
numFilm int,
tituloOriginal varchar(50),
titulo_pt varchar(50),
duracao int,
dataLancamento date,
direcao varchar(250),
categoria varchar(50),
classificacao int
);
create table tbClassificacao(
cod int,
nome varchar(50),
preco float(9,2)
);
create table tbEstrela(
numFilm int,
codator int
);
create table tbAtor(
cod int,
data date,
nacionalidade varchar(50),
nomereal varchar(50),
nomeartistico varchar(50)
);

-- visualizando a tabela
show tables;
desc tbCliente;
