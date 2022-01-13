create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_pizza(
id bigint auto_increment,
tipo_pizza varchar(30) not null,
preco decimal(8,2),
classe_id bigint ,
borda enum ("Recheado", "Não Recheado"), 
primary key (id),
foreign key (classe_id) REFERENCES  tb_categoria(id)
);


	
	

	


insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Peperoni",60.00,1,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Portuguesa",26.50,2,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Calabresa",36.00,3,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Marguerita",65.00,2,"Não Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Muçarela",50.50,1,"Não Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Romeu e Julieta",25.00,2,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Brigadeiro",60.00,3,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Napolitana",29.9,4,"Recheado");
insert into tb_pizza(tipo_pizza,preco,classe_id,borda) values("Frango com catupiry",20.00,2,"Não Recheado");

select * from tb_categoria;
create table tb_categoria(
id bigint auto_increment,
funcionarios_categoria enum ("garçom","caixa","auxiliar de limpeza"),
atendimento enum ("Bom","Ruim"),
nota_loja enum("Ótimo","Bom","Neutro","Ruim"),

primary key(id)
);

insert into tb_categoria  (funcionarios_categoria,atendimento,nota_loja) values("garçom","Bom","Neutro");
insert into tb_categoria(funcionarios_categoria,atendimento,nota_loja) values("caixa","Ruim","Ruim");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("caixa","Bom","Bom");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("auxiliar de limpeza","Ruim","Neutro");
insert into tb_categoria (funcionarios_categoria,atendimento,nota_loja) values("garçom","Bom","Ruim");



select * from tb_pizza where preco>45;
select * from tb_pizza where preco >= 29 AND preco <= 60;
select * from tb_pizza where tipo_pizza like "%P%";

select * from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.classe_id
where tb_categoria.funcionarios_categoria = "garçom"