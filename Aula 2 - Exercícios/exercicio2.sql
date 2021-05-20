create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar (255) not null,
    preco decimal not null,
    quantidade int not null,
    qualidade varchar(255),
    primary key (id)
);

insert into tb_produtos (nome, preco, quantidade, qualidade)
values ("Mochila", 30.0, 15, "Usada");

insert into tb_produtos (nome, preco, quantidade, qualidade)
values ("Bicicleta", 650.0, 5, "Novo");

insert into tb_produtos (nome, preco, quantidade, qualidade)
values ("Tênis", 150.0, 20, "Usado");

insert into tb_produtos (nome, preco, quantidade, qualidade)
values ("Celular", 700.0, 3, "Novo");

insert into tb_produtos (nome, preco, quantidade, qualidade)
values ("Moletom", 60.0, 1, "Usado");

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set preco = 600.0 where id = 3;