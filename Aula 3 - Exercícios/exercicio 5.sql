create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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
values ("Hidráulica", "Peças");

insert into tb_categoria (tipo, descricao)
values ("Construção", "Materiais para construção");

insert into tb_categoria (tipo, descricao)
values ("Cano", "Materiais para tubulações");

insert into tb_categoria (tipo, descricao)
values ("Decoração", "Materiais para decoração");

insert into tb_categoria (tipo, descricao)
values ("Tinta", "Tintas para decoração");

select * from tb_categoria;

-- inserindo itens em produtos
insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Cimento", 64.0, 2, true, 2);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Acrilico", 175.71 , 1, false, 5);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Piso", 269.51, 1, true, 2);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Tubo PVC", 20.86, 2, false, 3);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Pia de Cozinha", 412.90, 1, true, 4);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Mangueira", 245.14 , 1, false, 1);

insert into tb_produtos (nome, preco, quantidade, entrega, categoria_id)
values ("Fosca Suvinil", 451.78 , 1, true, 5);

select * from tb_produtos;

-- retornar os produtos preço maior que 50
select * from tb_produtos where preco > 50;

-- retornar os produtos com preco entre 3 e 60
select * from tb_produtos where preco between 3 and 60;

-- retornar produtos que possuem a letra c
select * from tb_produtos where nome like "%c%";

-- inner join entre categoria e produto
select tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id order by tb_produtos.nome;

-- trazer produtos de categoria específica
select tb_produtos.nome, tb_categoria.tipo 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id
where tb_categoria.tipo = "Construção";
