
/* Aula 4 - relacionamento entre tabelas */

/* Exemplo de criações de banco de dados com relacionamento de tabelas (1-1; 1-n; n-n) */

/*                                              Exemplo 1-1                                           */

/* Criar o banco de dados */

create database um_para_um;

/* Definir o banco de dados a ser utilizado */

use um_para_um;

/* Criar tabela "maridos" */

create table maridos(
	id_marido int not null,
    nome_marido varchar (40) not null,
    data_nascimento date,
    primary key (id_marido)
);

/* Criar tabela "esposas" */

create table esposas(
	id_esposa int not null,
id_marido int not null unique,
	nome_esposa varchar (40) not null,
    data_nascimento date,
    primary key (id_esposa), 
    foreign key (id_marido) references maridos(id_marido)
);

desc maridos;
desc esposas;

/* Inserir registros na tabela "maridos" */

insert into maridos
(id_marido, nome_marido, data_nascimento)
values
('1', 'Marcelo', '1969-03-02'),
('2', 'Antonio', '1977-12-30'),
('3', 'Pedro', '1992-06-25');

/* Mostra os registros da tabela "maridos" */

select * from maridos;

/*Inserir resgitros na tabela "esposas"*/

insert into esposas
(id_esposa, id_marido, nome_esposa, data_nascimento)
values
('1', '1', 'Sonia', '1973-03-28'),
('2', '2', 'Ana', '1981-11-15');

/*Mostra os registros da tabela "esposas"*/

select * from esposas;




/*                                          Exemplo 1-N                                           */





/* Criar banco de dados */

create database um_para_muitos;

/* Selecionar banco de daos a ser utilizado */

use um_para_muitos;

/* Criar tabela "funcionários" */

create table funcionarios(
	id_funcionario int not null,
    nome_funcionario varchar (40) not null,
    cargo varchar (20),
    primary key (id_funcionario)
);

create table dependentes(
	id_dependente int not null,
id_funcionario int not null,
	nome_dependente varchar (40) not null,
	parentesco enum('Filho', 'Filha', 'Cônjuge'),
    primary key (id_dependente),
    foreign key (id_funcionario) references funcionarios(id_funcionario)
);

desc funcionarios;
desc dependentes;

/* Inserindo informações nas tabelas */

insert into funcionarios
	(id_funcionario, nome_funcionario, cargo)
    values
    ('1', 'Marcelo', 'Auxiliar'),
    ('2', 'Antonio', 'Gerente'),
    ('3', 'Pedro', 'Técnico');
    
    /* Mostrar registros */
    
select * from funcionarios;

/* Insere registros na tabela dependentes */

insert into dependentes
(id_dependente, id_funcionario, nome_dependente, parentesco)
values
('1', '1', 'Sonia', 'Cônjuge'),
('2', '1', 'Ana', 'Filha'),
('3', '1', 'Pedro', 'Filho'),
('4', '2', 'Beatriz', 'Cônjuge');

/* Mostrar registros */

select * from dependentes;

/*                                 N-N                            */

create database muitos_para_muitos;

use muitos_para_muitos;

create table estudantes(
		id_estudante int not null,
		nome_estudante varchar (40) not null,
    primary key (id_estudante)
);

create table disciplinas(
		id_disciplina int not null,
		nome_disciplina varchar (40) not null,
    primary key (id_disciplina)
);

create table estudante_notas(
		id_estudante int not null,
		id_disciplina int not null,
		nota decimal (3,1),
    foreign key (id_estudante) references estudantes(id_estudante),
    foreign key (id_disciplina) references disciplinas(id_disciplina)
);

insert into disciplinas 
(id_disciplina, nome_disciplina)
values
('1', 'Banco de Dados'),
('2', 'Algoritmos de programação'),
('3', 'Programação de computadores');

insert into estudantes
(id_estudante, nome_estudante)
values
('1', 'André'),
('2', 'Bernardo'),
('3', 'Carolina');

select * from disciplinas;
select * from estudantes;

insert into estudante_notas
(id_estudante, id_disciplina, nota)
values
('1', '1', '10'),
('1', '2', '9.5'),
('1', '3', '7'),
('2', '1', '6.5'),
('2', '2', '8'),
('2', '3', '9'),
('3', '1', '9'),
('3', '2', '9.5'),
('3', '3', '10');

select * from estudante_notas;









    

    
    


