-- apagando banco de dados
drop database dbConsultorio;

-- criando banco de dados
create database dbConsultorio;

-- acessando banco de dados
use dbConsultorio;

-- criando as tabelas
create table tbMedico(medico int,nameMedico varchar(45),telMedico varchar(10));
create table tbConsulta(idConsulta int,dt_consulta datetime,idMedico int,idPaciente int,idReceitaMedica int);
create table tbReceitaMedica(idReceitaMedica int,descricao varchar(500));
create table tbPaciente(idPaciente int,nomePaciente varchar(45),telPaciente varchar(10),convenio varchar(45));

-- visualizando a tabela
show tables;

-- visualizando a estrutura da tabela
desc tbMedico;
desc tbConsulta;
desc tbReceitaMedica;
desc tbPaciente;

-- inserindo registro nas tabelas
insert into tbMedico(medico,nameMedico,telMedico)values(35,'Doutor Gabriel Soares','98788-9090');
insert into tbMedico(medico,nameMedico,telMedico)values(36,'Doutora Isabelli Oliveira','99075-8880');
insert into tbMedico(medico,nameMedico,telMedico)values(37,'Doutor Rafael Soares','98767-9080');
insert into tbMedico(medico,nameMedico,telMedico)values(38,'Doutora Rayssa Leal','90879-0980');
insert into tbMedico(medico,nameMedico,telMedico)values(39,'Doutora Maria Alice de Souza','98760-8768');


insert into tbConsulta(idConsulta,dt_consulta,idMedico,idPaciente,idReceitaMedica)values(2900,'2023/10/11',35,11,20098);
insert into tbConsulta(idConsulta,dt_consulta,idMedico,idPaciente,idReceitaMedica)values(9001,'2022/09/12',36,12,10090);
insert into tbConsulta(idConsulta,dt_consulta,idMedico,idPaciente,idReceitaMedica)values(9002,'2023/01/22',37,13,10095);
insert into tbConsulta(idConsulta,dt_consulta,idMedico,idPaciente,idReceitaMedica)values(1028,'2023/02/23',38,14,55008);
insert into tbConsulta(idConsulta,dt_consulta,idMedico,idPaciente,idReceitaMedica)values(2343,'2022/07/22',39,15,78008);


insert into tbReceitaMedica(idReceitaMedica,descricao)values(20098,'Remedio para dor de garganta');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(10090,'Remedio para infecção de urina');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(10095,'Remedio para dor de cabeça');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(55008,'Remedio para dor de garganta');
insert into tbReceitaMedica(idReceitaMedica,descricao)values(78008,'Remedio para estomago');


insert into tbPaciente(idPaciente,nomePaciente,telPaciente,convenio)values(11,'Ana Rosa de Souza','98989-0090','Bradesco Saúde');
insert into tbPaciente(idPaciente,nomePaciente,telPaciente,convenio)values(12,'Samuel Pereira','99999-0909','SUS');
insert into tbPaciente(idPaciente,nomePaciente,telPaciente,convenio)values(13,'Isabela De souza Pereira','98798-0090','Porto Seguro');
insert into tbPaciente(idPaciente,nomePaciente,telPaciente,convenio)values(13,'Pedro Henrique Alma','90989-9090','Prevent Senior');
insert into tbPaciente(idPaciente,nomePaciente,telPaciente,convenio)values(14,'Larissa de Souza','90909-0909',"Bradesco Saúde");

-- visualizando
select * from tbMedico;
select * from tbConsulta;
select * from tbReceitaMedica;
select * from tbPaciente;