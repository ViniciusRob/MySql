create database db_escola;
use db_escola;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar (255) not null,
    idade int not null,
    nota decimal not null,
    serie varchar (255) not null,
    primary key (id)
);

insert into tb_alunos (nome, idade, nota, serie)
values ("José", 18, 3.5, "9º Ano");

insert into tb_alunos (nome, idade, nota, serie)
values ("Ana", 14, 7.5, "9º Ano");

insert into tb_alunos (nome, idade, nota, serie)
values ("José", 16, 10.0, "2º E.M.");

insert into tb_alunos (nome, idade, nota, serie)
values ("Beatriz", 15, 6.0, "1º E.M.");

insert into tb_alunos (nome, idade, nota, serie)
values ("Bianca", 13, 8.0, "8º Ano");

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set nome = "Bruno" where id = 4;

