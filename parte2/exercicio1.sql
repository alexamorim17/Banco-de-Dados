create database db_generation_game_online;

use db_generation_game_online;


create table tb_personagem(
id bigint auto_increment,
nome varchar(30) not null,
idade bigint,
classe_id bigint ,
ataque bigint not null,
defesa bigint not null,
primary key (id),
foreign key (classe_id) REFERENCES  tb_classe(id)
);


insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Alexandre",19,1,3500,2000);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Gandalf",24.000,2,6000,500);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Ezequiel",50,5,2000,800);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Eleanor",800,6,4500,1000);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Beatrice",35,1,2500,3000);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Gabriel",40,4,4500,1500);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Amir",26,3,1500,1000);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Laura",20,3,1250,1250);
insert into tb_personagem (nome,idade,classe_id,ataque,defesa) values("Casemiro",20,1,3650,1800);

select * from tb_classe;
create table tb_classe(
id bigint auto_increment,
classe enum ("Guerreiro","Mago","Ladrão","Invocador","Sacerdote","Arqueiro"),
arma enum ("Espada", "Cajado", "Faca", "Chicote de Invocador", "Livro Mágico", "Arco"),
habilidade_principal varchar(20),

primary key(id)
);

insert into tb_classe (classe,arma,habilidade_principal) values("Guerreiro","Espada","Aumentar Ataque");
insert into tb_classe (classe,arma,habilidade_principal) values("Mago","Cajado","Fogo Infernal");
insert into tb_classe (classe,arma,habilidade_principal) values("Ladrão","Faca","Morte Instantânea");
insert into tb_classe (classe,arma,habilidade_principal) values("Invocador","Chicote de Invocador","Invocar Monstros");
insert into tb_classe (classe,arma,habilidade_principal) values("Sacerdote","Livro Mágico","Curar");
insert into tb_classe (classe,arma,habilidade_principal) values("Arqueiro","Arco","Foco Profundo");


select * from tb_personagem where ataque>2000;
select * from tb_personagem where ataque >= 1000 AND ataque <= 2000;
select * from tb_personagem where nome like "%C%";

select * from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classe_id
where tb_classe.classe = "Arqueiro"



