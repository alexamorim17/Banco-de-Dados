create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_produto(

id BIGINT auto_increment,
preco DECIMAL(10,2),
quantidade BIGINT,
produto ENUM("telhas", "tijolos", "cimento","lâmpadas", "tinta", "maquinas",
 "luminárias", "piso", "chuveiro", "acabamentos" ),
 marca varchar(255),
 id_categoria bigint ,
 primary key(id),
 foreign key(id_categoria) references tb_categoria(id)


);

create table tb_categoria(

id  BIGINT auto_increment,
tipo_de_loja ENUM ("material básico", "elétrica", "hidráulica", "home centers"),
forma_de_pagamento ENUM("cartão", "PIX", "dinheiro"),
primary key(id)



);

insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("material básico", "cartão");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("material básico", "PIX");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("material básico", "dinheiro");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("hidráulica", "cartão");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("hidráulica", "PIX");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("hidráulica", "dinheiro");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("elétrica", "cartão");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("elétrica", "PIX");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("elétrica", "dinheiro");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("home centers", "cartão");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("home centers", "PIX");
insert into tb_categoria(tipo_de_loja, forma_de_pagamento) values ("home centers", "dinheiro");


insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("telhas", 46.00,20,"XConstruções",1);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("tijolos", 8.00,200,"MeuTijolo",3);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("cimento", 25.00,400,"XConstruções",1);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("maquinas", 200.00,60,"MateriasMax",8);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("acabamentos", 600.00,5,"MateriasMax",12);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("chuveiro", 100.00,200,"YourHome",10);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("tinta", 14.00,320,"CasaDoTijolo",11);
insert into tb_produto(produto, preco,quantidade,marca,id_categoria) values ("lâmpadas", 36.00,200,"XConstruções",1);


select * from tb_produto;
select * from tb_categoria;


select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 and 60;
select * from tb_produto where produto like "%C%";

select produto,marca, preco, tipo_de_loja, forma_de_pagamento from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id;

select produto,marca, preco, tipo_de_loja, forma_de_pagamento from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id
where tipo_de_loja = "material básico";
