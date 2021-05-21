create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
	tipo varchar (255) not null,
    arma varchar(255) not null,
	subclasse varchar(255) not null,
    primary key (id)
);

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(255) not null,
    vida decimal(4,1) not null,
    experiencia bigint not null,
    mana bigint not null,
    forca bigint not null,
    classe_id bigint,
    primary key (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

-- Inserindo dados em classe
insert into tb_classe (tipo, arma, subclasse)
values ("Assassino", "Espada", "Duelista");

insert into tb_classe (tipo, arma, subclasse)
values ("Mago", "Cajado", "Obliterador");

insert into tb_classe (tipo, arma, subclasse)
values ("Lutador", "Luva", "Colosso");

insert into tb_classe (tipo, arma, subclasse)
values ("Atirador", "Fuzil de Precisão", "Elite");

insert into tb_classe (tipo, arma, subclasse)
values ("Controlador", "Escudo", "Encantador");

select * from tb_classe;

-- Inserindo dados em personagem
insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Zed", 100.0, 20, 0, 100, 1);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Syndra", 50.5, 10, 100, 0, 2);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Xin Zhao", 100.0, 50, 0, 100, 3);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Vanye", 20.0, 60, 30, 0, 4);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Jinx", 100.0, 80, 70, 20, 5);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Katarina", 100.0, 60, 0, 100, 1);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Pantheon", 100.0, 100, 20, 100, 3);

insert into tb_personagem (nome, vida, experiencia, mana, forca, classe_id)
values ("Ahri", 30.5, 60, 100, 0, 2);

select * from tb_personagem;

-- todos os personagens onde forca é maior que 20
select * from tb_personagem where forca > 20;

-- todos os personagens onde a vida está entre 10 e 20
select * from tb_personagem where vida between 10 and 20;

-- trazer personagens com a letra c
select * from tb_personagem where nome like "%c%";

-- select inner join entre classe e personagem
select tb_personagem.nome, tb_personagem.vida, tb_personagem.experiencia, tb_personagem.mana, tb_personagem.forca, tb_classe.tipo, tb_classe.arma
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id order by tb_personagem.nome;

-- trazer todos os personagens de uma classe específica (assassino)
select tb_personagem.nome, tb_classe.tipo 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.tipo = "Assassino";