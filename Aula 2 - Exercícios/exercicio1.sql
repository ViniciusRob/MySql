create database db_rhempresa;
use db_rhempresa;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal not null,
    cargo varchar(255) not null,
    idade int not null,
	primary key (id)
);

insert into tb_funcionarios (nome, salario, cargo, idade)
values ("Marcelo", 2500.0, "Analista", 25);

insert into tb_funcionarios (nome, salario, cargo, idade)
values ("Adriana", 3000.0, "Gestora", 34);

insert into tb_funcionarios (nome, salario, cargo, idade)
values ("Thiago", 950.0, "Aprendiz", 18);

insert into tb_funcionarios (nome, salario, cargo, idade)
values ("Valéria", 1800.0, "Qualidade", 28);

insert into tb_funcionarios (nome, salario, cargo, idade)
values ("Vinicius", 5000.0, "Desenvolvedor Jr.", 19);

select * from tb_funcionarios where salario >= 2000;

select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 2000.0 where id = 4;


