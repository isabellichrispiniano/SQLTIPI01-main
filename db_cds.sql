drop database db_cds;

create database db_cds;

use db_cds;

create table tbArtistas(
CodArt int not null,
Nomeart varchar(100) not null unique,
primary key(CodArt)
);

create table tbGravadoras(
Codgrav int not null,
Nomegrav varchar(50) not null unique,
primary key(Codgrav)
);

create table tbCategorias(
Codcat int not null,
Nomecat varchar(50) not null unique,
primary key(Codcat)
);

create table tbEstados(
SiglaEst char(2) not null,
NomeEst varchar(50) not null unique,
primary key(SiglaEst)
);

create table tbCidades(
Codcid int not null,
SiglaEst char(2) not null,
foreign key(SiglaEst)references tbEstados(SiglaEst),
Nomecid varchar(50) not null,
primary key(Codcid)
);

create table tbClientes(
Codcli int not null,
Codcid int not null,
Nomecli varchar(50) not null,
Endcli varchar(100) not null,
rendaCli decimal(9,2) not null default 0 check(rendaCli >=0),
Sexo char(1) not null default "F" check(Sexo in ("F","M")),
primary key(codCli),
foreign key(Codcid)references tbCidades(Codcid)
);

create table tbConjuge(
CodConj int not null,
nomeConj varchar(50) not null,
Rendaconj decimal(9,2) not null default 0 check(Rendaconj >=0),
sexoConj char(1) not null default "F" check(sexoConj in ("F","M")),
primary key(CodConj)
);

create table tbFuncionarios(
Codfunc int not null,
Nomefunc varchar(50) not null,
EndFunc varchar(100) not null,
Salfunc decimal(9,2) not null default 0 check(Salfunc >=0),
Sexofunc char(1) not null default "F" check(Sexofunc in ("F","M")),
primary key(Codfunc)
);

create table tbDependentes(
CodDep int not null,
Codfunc int not null,
foreign key(Codfunc)references tbFuncionarios(Codfunc),
Nomedep varchar(100) not null,
Sexodep char(1) not null default "F" check(Sexodep in("F","M")),
primary key(CodDep)
);

create table tbTitulos(
CodTit int not null,
Codcat int not null,
foreign key(Codcat)references tbCategorias(Codcat),
Codgrav int not null,
foreign key(Codgrav)references tbGravadoras(Codgrav),
Nomecd varchar(50) not null unique,
Valorcd decimal(9,2) not null check(Valorcd >0),
qtde int not null check(qtde >=0),
primary key(CodTit)
);

create table tbPedidos(
Numped int not null,
Codcli int not null,
foreign key(Codcli)references tbClientes(Codcli),
Codfunc int not null,
foreign key(Codfunc)references tbFuncionarios(Codfunc),
DataPed datetime not null,
valorPed decimal(9,2) not null default 0 check(valorPed >=0),
primary key(Numped)
);

create table tbTitulosPedidos(
Numped int not null,
CodTit int not null,
qtdeCd int not null check(qtdeCd >=1),
ValorCd decimal(9,2) not null check(ValorCd >0),
foreign key(Numped)references tbPedidos(Numped),
foreign key(CodTit)references tbTitulos(CodTit)
);

create table tbTitulosArtista(
CodTit int not null,
CodArt int not null,
foreign key(CodTit)references tbTitulos(CodTit),
foreign key(CodArt)references tbArtistas(CodArt)
);

desc tbArtistas;
desc tbGravadoras;
desc tbCategorias;
desc tbEstados;
desc tbCidades;
desc tbClientes;
desc tbConjuge;
desc tbFuncionarios;
desc tbDependentes;
desc tbTitulos;
desc tbPedidos;
desc tbTitulosPedidos;

insert into tbArtistas(CodArt,Nomeart)
      values(1,"Marisa Monte");
insert into tbArtistas(CodArt,Nomeart)
      values(2,"Gilberto Gil");
insert into tbArtistas(CodArt,Nomeart)
      values(3,"Caetano Veloso");
insert into tbArtistas(CodArt,Nomeart)
      values(4,"Milton Nascimento");
insert into tbArtistas(CodArt,Nomeart)
      values(5,"Legião Urbana");
insert into tbArtistas(CodArt,Nomeart)
      values(6,"The Beatles");
insert into tbArtistas(CodArt,Nomeart)
      values(7,"Rita Lee");


insert into tbGravadoras(Codgrav,Nomegrav)
       values(1,"Polygram");
insert into tbGravadoras(Codgrav,Nomegrav)
       values(2,"Emi");
insert into tbGravadoras(Codgrav,Nomegrav)
       values(3,"Som Livre");
insert into tbGravadoras(Codgrav,Nomegrav)
       values(4,"Som Music");


insert into tbCategorias(Codcat,Nomecat)
         values(1,"MPB");
insert into tbCategorias(Codcat,Nomecat)
         values(2,"Trilha Sonora");
insert into tbCategorias(Codcat,Nomecat)
         values(3,"Rock Internacional");
insert into tbCategorias(Codcat,Nomecat)
         values(4,"Rock Nacional");


insert into tbEstados(SiglaEst,NomeEst)
       values("SP","São Paulo");
insert into tbEstados(SiglaEst,NomeEst)
       values("MG","Minas Gerais");
insert into tbEstados(SiglaEst,NomeEst)
       values("RJ","Rio de Janeiro");


insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(1,"SP","São Paulo");
insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(2,"SP","Sorocaba");
insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(3,"SP","Jundiaí");
insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(4,"SP","Americana");
insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(5,"SP","Araraquara");
insert into tbCidades(Codcid,SiglaEst,Nomecid)
       values(6,"MG","Ouro Preto");


insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
