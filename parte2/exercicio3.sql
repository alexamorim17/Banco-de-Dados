create database db_farmacia_do_bem;

use db_farmacia_do_bem;


create table tb_produto(
id bigint auto_increment,
nome varchar(30) not null,
preco decimal,
classe_id bigint ,
quantidade_comprimidos bigint not null,
primary key (id),
foreign key (classe_id) REFERENCES  tb_categoria(id)
);


	

	

	


insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("ZIAGEN",60.00,1,35);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("PRECOSE",70.50,2,35);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("Acebutolol",36.00,3,35);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("Acetazolamida",40.00,2,25);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("DIAMOX",70,1,35);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("ACETADOTE",80,2,3);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("PRECOSE",79,3,26);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("SECTRAL",59,4,8);
insert into tb_produto(nome,preco,classe_id,quantidade_comprimidos) values("Acetilcisteína",69.80,2,10);

select * from tb_categoria;
create table tb_categoria(
id bigint auto_increment,
funcionarios_categoria enum ("balconistas","farmacêutico","Similares"),
atendimento enum ("Bom","Ruim"),
nota_loja enum("Ótimo","Bom","Neutro","Ruim"),

primary key(id)
);

insert into tb_categoria  (funcionarios_categoria,atendimento,nota_loja) values("balconistas","Bom","Neutro");
insert into tb_categoria(funcionarios_categoria,atendimento,nota_loja) values("farmacêutico","Ruim","Ruim");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("Similares","Bom","Bom");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("farmacêutico","Ruim","Neutro");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("balconistas","Bom","Ruim");



select * from tb_produto where preco>50;
select * from tb_produto where ataque >= 3 AND ataque <= 50;
select * from tb_produto where nome like "%B%";

select * from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.classe_id
where tb_categoria.funcionarios_categoria = "balconistas"