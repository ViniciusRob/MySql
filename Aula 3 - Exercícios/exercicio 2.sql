create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar(255) not null,
    tamanho varchar(255) not null,
    primary key (id)
);

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal (5,2) not null,
    entrega boolean not null,
    acompanhamento varchar (255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

-- inserindo dados em categoria
insert into tb_categoria (tipo, tamanho)
values ("Doce", "Pequena");

insert into tb_categoria (tipo, tamanho)
values ("Doce", "Media");

insert into tb_categoria (tipo, tamanho)
values ("Doce", "Grande");

insert into tb_categoria (tipo, tamanho)
values ("Salgada", "Pequena");

insert into tb_categoria (tipo, tamanho)
values ("Salgada", "Média");

insert into tb_categoria (tipo, tamanho)
values ("Salgada", "Grande");

insert into tb_categoria (tipo, tamanho)
values ("Bebida", "Pequena");

select * from tb_categoria;

-- inserindo dados em produtos
insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Pizza", 45.0, true, "Batata Frita", 5);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Esfiha", 20.0, false, "Refrigerante 2L", 1); -- aqui

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Coca-Cola", 7.0, false, "Nenhum", 7);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Pizza", 50.0, true, "Outra Pizza", 6);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Pizza", 60.0, false, "Nenhum", 2);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Esfiha", 30.0, true, "Batata Frita", 4);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Suco de Laranja", 5.0, false, "Nenhum", 7);

insert into tb_produtos (nome, preco, entrega, acompanhamento, categoria_id)
values ("Pizza", 60.0, true, "Refrigerante 2L", 3);

select * from tb_produtos;

-- retornar os produtos preço maior que 45
select * from tb_produtos where preco > 45;

-- retornar os produtos com preco entre 29 e 60
select * from tb_produtos where preco between 29 and 60;

-- retornar produtos que possuem a letra c
select * from tb_produtos where nome like "%c%";

-- inner join entre categoria e produto
select tb_produtos.nome, tb_produtos.preco, tb_produtos.acompanhamento, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_produtos.nome;

-- trazer produtos de categoria específica
select tb_produtos.nome, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Doce";