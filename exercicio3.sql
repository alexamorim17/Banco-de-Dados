create database db_escola;

use db_escola;

create table aluno(

id bigint auto_increment,
nome varchar(20) not null,
nota decimal(10,2),
idade int,
sala int,
materiaFavorita varchar(20) not null,
professorFavorito varchar(20) not null,
dataNascimento date not null,

primary key(id)
);

truncate aluno;

insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Alexandre",6,19,2,"Matemática","Gustavo","2002-01-17");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Marlon",8,19,2,"Informática","Bruno","2002-02-15");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("André",7,18,2,"Educação Física","Bruna","2003-03-27");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Paula",6,16,2,"Matemática","Camila","2005-06-27");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Camila",5,16,2,"Biologia","Yuri","2005-07-18");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Beatriz",7,14,2,"Geografia","Alessandra","2008-04-16");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Ana",4,18,2,"História","Marcelo","2004-05-07");
insert into aluno (nome, nota, idade, sala, materiaFavorita, professorFavorito, dataNascimento) values("Pedro",3,17,2,"Português","Luiz","2003-05-01");
select * from aluno;


select * from aluno where nota > 7;
select * from aluno where nota < 7;

update aluno set nota = 8 where id = 2;

