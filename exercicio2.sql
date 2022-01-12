create database db_ecommerce

use db_ecommerce;


create table produtos(

id bigint auto_increment,
nome varchar(20) not null,
marca varchar(20) not null,
preco decimal(10,2),
categoria varchar(20),

primary key(id)


);

insert into produtos(nome,marca,preco,categoria) values("Tênis","Nike",550.00,"Calçados");
insert into produtos(nome,marca,preco,categoria) values("Tênis","Adidas",600.00,"Calçados");
insert into produtos(nome,marca,preco,categoria) values("Camiseta","Ciclone",800.00,"Roupa");
insert into produtos(nome,marca,preco,categoria) values("Camiseta","Nike",800.00,"Roupa");
insert into produtos(nome,marca,preco,categoria) values("Calça Jeans","Diesel",150.00,"Roupas");
insert into produtos(nome,marca,preco,categoria) values("Boné","New Era",60.00,"Roupas");
insert into produtos(nome,marca,preco,categoria) values("Faca","Tramontina",150.00,"Cozinha");
insert into produtos(nome,marca,preco,categoria) values("Tênis","Rainha",70.00,"Calçados");



select * from produtos where preco > 500;
select * from produtos where preco <500;

update produtos set nome = "Camiseta2" where id = 4;