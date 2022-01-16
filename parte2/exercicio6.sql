create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;


create table tb_produto(

id BIGINT auto_increment,
preco DECIMAL(10,2),
quantidade BIGINT,
cursos ENUM("Administração","Análise de Sistemas","Arquitetura e Urbanismo","Ciência da Computação","Ciências Contábeis","Ciências Econômicas","Comunicação Social","Desenho Industrial","Java"),
id_categoria bigint ,
tempo_de_curso_em_anos int,
primary key(id),
foreign key(id_categoria) references tb_categoria(id)


);



create table tb_categoria(

id  BIGINT auto_increment,
tipo_de_ensino ENUM ("Presencial", "EAD", "Hibrido"),
forma_de_pagamento ENUM("cartão", "PIX", "dinheiro"),
primary key(id)



);

insert into tb_categoria(tipo_de_ensino, forma_de_pagamento) values ("Presencial", "cartão");
insert into tb_categoria(tipo_de_ensino, forma_de_pagamento) values ("EAD", "PIX");
insert into tb_categoria(tipo_de_ensino, forma_de_pagamento) values ("Hibrido", "cartão");
insert into tb_categoria(tipo_de_ensino, forma_de_pagamento) values ("Hibrido", "PIX");
insert into tb_categoria(tipo_de_ensino, forma_de_pagamento) values ("Presencial", "dinheiro");


insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Administração", 46.00,20,2,1);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Análise de Sistemas", 20.00,200,2,2);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Arquitetura e Urbanismo", 25.00,400,1,2);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Ciência da Computação", 20.00,60,2,4);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Ciências Contábeis", 60.00,5,1,2);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Ciências Econômicas", 100.00,200,2,3);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Comunicação Social", 84.00,320,1,2);
insert into tb_produto(cursos, preco,quantidade,tempo_de_curso_em_anos,id_categoria) values ("Java", 36.00,200,2,1);


select * from tb_produto;
select * from tb_categoria;


select * from tb_produto where preco > 50;
select * from tb_produto where preco BETWEEN 3 and 60;
select * from tb_produto where cursos like "%J%";

select cursos,tempo_de_curso_em_anos, preco, tipo_de_ensino, forma_de_pagamento from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id;

select cursos,tempo_de_curso_em_anos, preco, tipo_de_ensino, forma_de_pagamento from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id
where tb_categoria.tipo_de_ensino = "EAD";