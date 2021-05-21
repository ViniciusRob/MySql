create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

create table tb_curso(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal (5,2) not null,
    tempo int not null,
    certificacao boolean not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- inserindo dados em categoria
insert into tb_categoria (tipo, descricao)
values ("Java", "Programação Orientada a Objetos");

insert into tb_categoria (tipo, descricao)
values ("C#", "Programação Orientada a Objetos");

insert into tb_categoria (tipo, descricao)
values ("PHP", "Programação WEB");

insert into tb_categoria (tipo, descricao)
values ("MySql", "Banco de Dados");

insert into tb_categoria (tipo, descricao)
values ("Phyton", "Programação de Dados");

select * from tb_categoria;

-- inserindo itens em produtos
insert into tb_curso (nome, preco, tempo, certificacao, categoria_id)
values ("Curso Phyton", 75.0, 12, true, 5);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Introdução ao PHP", 20.0, 6, false, 3);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Java Para Web", 45.0, 10, false, 1);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("C# Para Iniciantes", 80.0, 15, true, 2);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Iniciação ao BD", 0.0, 6, false, 4);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Phyton Avançado", 100.0, 20, true, 5);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Programação .NET", 60.0 , 7, false, 2);

insert into tb_curso(nome, preco, tempo, certificacao, categoria_id)
values ("Boas Práticas em Java", 0.0 , 5, true, 1);

select * from tb_curso;

-- retornar os curos preço maior que 50
select * from tb_curso where preco > 50;

-- retornar os produtos com preco entre 3 e 60
select * from tb_curso where preco between 3 and 60;

-- retornar produtos que possuem a letra J
select * from tb_curso where nome like "%j%";

-- inner join entre categoria e produto
select tb_curso.nome, tb_curso.preco, tb_curso.tempo, tb_categoria.tipo 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id order by tb_curso.nome;

-- trazer produtos de categoria específica
select tb_curso.nome, tb_categoria.tipo 
from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id
where tb_categoria.tipo = "Java";