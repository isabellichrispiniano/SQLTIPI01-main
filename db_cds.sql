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
DataPed date not null,
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
      values(1,'Marisa Monte');
insert into tbArtistas(CodArt,Nomeart)
      values(2,'Gilberto Gil');
insert into tbArtistas(CodArt,Nomeart)
      values(3,'Caetano Veloso');
insert into tbArtistas(CodArt,Nomeart)
      values(4,'Milton Nascimento');
insert into tbArtistas(CodArt,Nomeart)
      values(5,'Legião Urbana');
insert into tbArtistas(CodArt,Nomeart)
      values(6,'The Beatles');
insert into tbArtistas(CodArt,Nomeart)
      values(7,'Rita Lee');


insert into tbGravadoras(Codgrav,Nomegrav)
       values(1,'Polygram');
insert into tbGravadoras(Codgrav,Nomegrav)
       values(2,'Emi');
insert into tbGravadoras(Codgrav,Nomegrav)
       values(3,'Som Livre');
insert into tbGravadoras(Codgrav,Nomegrav)
       values(4,'Som Music');


insert into tbCategorias(Codcat,Nomecat)
         values(1,'MPB');
insert into tbCategorias(Codcat,Nomecat)
         values(2,'rilha Sonora');
insert into tbCategorias(Codcat,Nomecat)
         values(3,'Rock Internacional');
insert into tbCategorias(Codcat,Nomecat)
         values(4,'Rock Nacional');


insert into tbEstados(SiglaEst,NomeEst)
       values('SP','São Paulo');
insert into tbEstados(SiglaEst,NomeEst)
       values('MG','Minas Gerais');
insert into tbEstados(SiglaEst,NomeEst)
       values('RJ','Rio de Janeiro');



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
        values(1,1,"José Nogueira","Rua A","1500.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(2,1,"Ângelo Pereira","Rua B","2000.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(3,1,"Além Mar Paranhos","Rua C","1500.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(4,1,"Catarina Souza","Rua D","892.00","F");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(5,1,"Vagner Costa","Rua E","950.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(6,2,"Antenor Da Costa","Rua F","1582.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(7,2,"Maria Amélia De Souza","Rua G","1152.00","F");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(8,2,"Paulo Roberto De Souza","Rua H","3250.00","M");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(9,3,"Fátima Souza","Rua I","1632.00","F");
insert into tbClientes(Codcli,Codcid,Nomecli,Endcli,rendaCli,sexo)
        values(10,3,"Joel Da Rocha","Rua J","2000.00","M");




insert into tbConjuge(CodConj,nomeConj,Rendaconj,sexoConj)
       values(1,"Carla Nogueira","2500.00","F");
insert into tbConjuge(CodConj,nomeConj,Rendaconj,sexoConj)
       values(2,"Emilia Pereira","5500.00","F");
insert into tbConjuge(CodConj,nomeConj,Rendaconj,sexoConj)
       values(6,"Altiva Da Costa","3000.00","F");
insert into tbConjuge(CodConj,nomeConj,Rendaconj,sexoConj)
       values(7,"Carlos De Souza","3250.00","M");


insert into tbFuncionarios(Codfunc,Nomefunc,EndFunc,Salfunc,Sexofunc)
       values(1,"Vânia Gabriela Pereira","Rua A","2500.00","F");
insert into tbFuncionarios(Codfunc,Nomefunc,EndFunc,Salfunc,Sexofunc)
       values(2,"Norberto Pereira Da Silva","Rua B","300.00","M");
insert into tbFuncionarios(Codfunc,Nomefunc,EndFunc,Salfunc,Sexofunc)
       values(3,"Olavo Linhares","Rua C","580.00","M");
insert into tbFuncionarios(Codfunc,Nomefunc,EndFunc,Salfunc,Sexofunc)
       values(4,"Paula Da Silva","Rua D","3000.00","F");
insert into tbFuncionarios(Codfunc,Nomefunc,EndFunc,Salfunc,Sexofunc)
       values(5,"Rolando Rocha","Rua E","2000.00","M");



insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(1,1,"Ana Pereira","F");
insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(2,1,"Roberto Pereira","M");
insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(3,1,"Celso Pereira","M");
insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(4,3,"Brisa Linhares","F");
insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(5,3,"Mari Sol Linhares","F");
insert into tbDependentes(CodDep,Codfunc,Nomedep,Sexodep)
        values(6,4,"Sonia Da Silva","F");


insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(1,1,1,"Tribalistas","30.00",1500);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(2,1,2,"Tropicália","50.00",500);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(3,1,1,"Aquele Abraço","50.00",600);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(4,1,2,"Refazenda","60.00",1000);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(5,1,3,"Totalmente Demais","50.00",2000);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(6,1,3,"Travessia","55.00",500);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(7,1,2,"Courage","30.00",200);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(8,4,3,"Legião Urbana","20.00",100);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(9,3,2,"The Beatles","30.00",300);
insert into tbTitulos(CodTit,Codcat,Codgrav,Nomecd,ValorCd,qtde)
        values(10,4,1,"Rita Lee","30.00",500);


insert into tbPedidos(Numped,Codcli,Codfunc,DataPed,valorPed)
         values(1,1,2,"02/05/02","1500.00");
insert into tbPedidos(Numped,Codcli,Codfunc,DataPed,valorPed)
         values(2,3,4,"02/05/02","50.00");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(4,1,4,"02/02/03","200");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(5,7,5,"02/03/03","300.00");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(6,4,4,"02/03/03","100.00");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(7,5,5,"02/03/03","50.00");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(9,2,2,"02/03/03","2000.00");
insert into tbPedidos(Numped,codCli,Codfunc,DataPed,valorPed)
         values(10,7,1,"02/03/03","3000.00");


insert into tbTitulosArtista(CodTit,CodArt)
       values(1,1);
insert into tbTitulosArtista(CodTit,CodArt)
       values(2,2);
insert into tbTitulosArtista(CodTit,CodArt)
       values(3,2);
insert into tbTitulosArtista(CodTit,CodArt)
       values(4,2);
insert into tbTitulosArtista(CodTit,CodArt)
       values(5,3);
insert into tbTitulosArtista(CodTit,CodArt)
       values(6,4);
insert into tbTitulosArtista(CodTit,CodArt)
       values(7,4);
insert into tbTitulosArtista(CodTit,CodArt)
       values(8,5);
insert into tbTitulosArtista(CodTit,CodArt)
       values(9,6);
insert into tbTitulosArtista(CodTit,CodArt)
       values(10,7);



insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(1,1,2,"30.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(1,2,3,"20.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(2,1,1,"50.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(2,2,3,"30.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(4,2,3,"30.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(5,1,2,"25.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(6,2,3,"30.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(6,3,1,"35.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(7,4,2,"55.00");
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(9,2,3,'15.00');
insert into tbTitulosPedidos(Numped,CodTit,qtdeCd,ValorCd)
       values(10,7,2,'15.00');




select * from tbArtistas;
select * from tbGravadoras;
select * from tbCategorias;
select * from tbEstados;
select * from tbCidades;
select * from tbClientes;
select * from tbConjuge;
select * from tbFuncionarios;
select * from tbDependentes;
select * from tbTitulos;
select * from tbPedidos;
select * from tbTitulosArtista;
select * from tbTitulosPedidos;


















