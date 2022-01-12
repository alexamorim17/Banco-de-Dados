create database db_rh


use db_rh;

create table bd_funcionario(
id bigint (2) auto_increment,
nome varchar(20) not null,
telefone bigint(10),
cargo varchar(20) not null,
ativo boolean,

primary key(id)

);


insert into bd_funcionario( nome, telefone, cargo, ativo) values ("Marlon",11966138442,"Desenvolvedor Java",true);
insert into bd_funcionario( nome, telefone, cargo, ativo) values ("Mario",1196856444,"Front-End",true);
insert into bd_funcionario( nome, telefone, cargo, ativo) values ("Bianca",11652338442,"Back-End",true);
insert into bd_funcionario( nome, telefone, cargo, ativo) values ("Maria",11966853242,"FullStack",true);
insert into bd_funcionario( nome, telefone, cargo, ativo) values ("André",11589568442,"Gerente",true);
select * from bd_funcionario;




alter table bd_funcionario add salario decimal(6,2);

 update bd_funcionario set salario = 9500.60 where id = 1;
 update bd_funcionario set salario = 3500.50 where id = 2;
 update bd_funcionario set salario = 1500.90 where id = 3;
 update bd_funcionario set salario = 1300.60 where id = 4;
 update bd_funcionario set salario = 5300.60 where id = 5;
 
 
 select * from bd_funcionario where salario > 2000;
 select * from bd_funcionario where salario < 2000;
drop database db_rh;

