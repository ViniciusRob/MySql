create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    descricao varchar(255) not null,
    primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal (5,2) not null,
    quantidade int not null,
    entrega boolean not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- inserindo dados em categoria
insert into tb_categoria (tipo, descricao)
values ("Cosmético", "Perfume");

insert into tb_categoria (tipo, descricao)
values ("Comprimido", "Genérico");

insert into tb_categoria (tipo, descricao)
values ("Xarope", "Líquido");

insert into tb_categoria (tipo, descricao)
values ("Comprimido", "Controlado");

insert into tb_categoria (tipo, descricao)
values ("Antibiótico", "Liquído");

select * from tb_categoria;

-- inserindo itens em produtos
insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Diazepam", 83.50, 1, true, 4);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Absorvente", 15.0 , 3, false, 1);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Polaramine", 26.90, 2, true, 3);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Loratadina", 10.0, 4, false, 2);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Diazepam", 83.50, 1, true, 4);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Amoxilina", 31.21 , 1, false, 5);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Midazolam", 59.66 , 2, true, 4);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Shampoo", 30.99, 1, false, 1);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Descongex", 18.39, 2, true, 3);

select * from tb_produtos;

-- retornar os produtos preço maior que 50
select * from tb_produtos where preco > 50;

-- retornar os produtos com preco entre 3 e 70
select * from tb_produtos where preco between 3 and 70;

-- retornar produtos que possuem a letra b
select * from tb_produtos where nome like "%b%";

-- inner join entre categoria e produto
select tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_produtos.nome;

-- trazer produtos de categoria específica
select tb_produtos.nome, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Cosmético";