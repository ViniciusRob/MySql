create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint(5) auto_increment,
	descricao varchar(255) not null,
	ativo boolean not null,
	primary key (id)
);

create table tb_produtos (
	id bigint(5) auto_increment,
	nome varchar (255) not null,
	preco decimal(5,2) not null,
	qtProduto int not null,
	categoria_id bigint,
	primary key (id),
	foreign key (categoria_id) references tb_categoria (id)
);

-- inserindo dados em categoria
insert tb_categoria (descricao, ativo) 
values ("Bovino", true);

insert tb_categoria (descricao, ativo) 
values ("Suino", true);

insert tb_categoria (descricao, ativo)
values ("Aves", true);

insert tb_categoria (descricao, ativo) 
values ("Pertence Feijoada", true);

insert tb_categoria (descricao, ativo) 
values ("Embutidos", true);

insert tb_categoria (descricao, ativo) 
values ("Outros", true);

select * from tb_categoria;

-- inserindo dados em produtos
insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Asa de Frango", 40.00, 30, 3);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Picanha", 20.00, 30, 1);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Coxa de Frango", 20.00, 30, 3);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Bacon", 30.00, 30, 1);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Hamburguer", 60.00, 30, 5);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Cupim", 20.00, 30, 1);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Peito de frango", 25.00, 30, 3);

insert tb_produtos (nome, preco, qtProduto, categoria_id) 
values ("Orelha de porco", 20.00, 30, 4);

select * from tb_produtos;

-- retornar os produtos preço maior que 50
select * from tb_produtos where preco > 50;

-- retornar os produtos com preco entre 3 e 60
select * from tb_produtos where preco between 3 and 60;

-- retornar produtos que possuem a letra c
select * from tb_produtos where nome like "%c%";

-- inner join entre categoria e produto
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtProduto, tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_produtos.nome;

-- trazer produtos de categoria específica
select tb_produtos.nome, tb_categoria.descricao 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.descricao = "Aves";