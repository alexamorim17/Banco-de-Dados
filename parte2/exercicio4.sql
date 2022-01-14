create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_produtos(

id bigint auto_increment,
nome varchar(20) ,
osso enum ("Com osso","Sem osso"),
tipo enum  ("Mole", "Duro"),
preco decimal(8,2),
classe_id bigint,
primary key(id),

foreign key (classe_id) REFERENCES tb_categorias(id)


);

insert into tb_produtos(nome,osso,tipo,classe_id) values("Maminha","Sem osso","Mole",1);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Picanha","Sem osso","Mole",1);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Contrafilé","Sem osso","Mole",1);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Coxão mole","Sem osso","Mole",1);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Coxão duro","Sem osso","Duro",2);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Costela","Com osso","Mole",2);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Músculo","Sem osso","Duro",6);
insert into tb_produtos(nome,osso,tipo,classe_id) values("Pescoço","Com osso","Mole",6);

alter table tb_produtos add preco decimal(8,2);
update  tb_produtos set preco = 46.99 where id = 1;
update  tb_produtos set preco = 70.89 where id = 2;
update  tb_produtos set preco = 52.00 where id = 3;
update  tb_produtos set preco = 37.99 where id = 4;
update  tb_produtos set preco = 32.99 where id = 5;
update  tb_produtos set preco = 37.61 where id = 6;
update  tb_produtos set preco = 38.00 where id = 7;
update  tb_produtos set preco = 6.90 where id = 8;


create table tb_categorias(

id bigint auto_increment,
classe_das_carnes enum ("A","B","C"),
cortar_carne boolean,
primary key(id)
);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("A",true);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("B",true);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("C",true);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("A",false);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("B",false);
insert into tb_categorias (classe_da_carne, cortar_carne) values ("C",false); 

select tb_produtos.nome , tb_produtos.preco,tb_categorias.classe_da_carne from tb_produtos   
inner join tb_categorias on tb_categorias.id = tb_produtos.classe_id
where tb_produtos.preco >= 3 && preco <= 60;

select * from tb_produtos   
left join tb_categorias on tb_categorias.id = tb_produtos.classe_id
where tb_produtos.preco > 50;

select * from tb_produtos where tb_produtos.nome like "%C%";
