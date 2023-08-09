
/* Aula 2 - Criando Banco de Dados */

/* Exemplo de criações de banco de dados - 2 opções*/

/*create database if not exists nome_banco_dados;*/
/*create database nome_banco_dados;*/
/* Ctrl Enter para "rodar o código"*/

create database if not exists empresa;
create database empresa;

show databases;
use empresa;

/* Criando tabelas */
/*create table nome_da_tabela ();*/  

create table clientes(
	nome varchar(30),
    idade int,
    sexo char(1),
    peso float,
    bairro varchar(20),
    celular char(9)
);
    
create table produtos(
	nome varchar(30),
    unidades_estoque int,
    preco float(6,2)
);
/*describe nome_tabela*/
describe clientes;
describe produtos;

create table funcionarios(
	nome varchar(30),
    idade int,
    sexo char(1),
    endereco varchar(100),
    celular char(9)
);

desc funcionarios;

/* Alimentando tabela exemplos*/
/*insert into nome_tabela values()*/
/*insert into nome_tabela (atributos) values (valores);*/

insert into funcionarios values
	('Leandro','36','M','Luiz Carlos, 342, Cachoeira, Araucária','987198123');
    
insert into funcionarios (nome, idade, sexo, endereco, celular) values
	('Carolina',38,'F','Luiz Carlos, 342, Cahoeira, Araucária',NULL),
    ('Beatriz', 25, 'F', 'Inácio Lustosa, 890, Centro, Curitiba', '987651234');
    
/* select * from nome_tabela; */
/* select nome from nome_tabela; */

select * from funcionarios;
select nome from funcionarios;

/* Apagando tabelas e BD */
/* drop table nome_tabela; */
/* drop database nome_banco_de_dados_; */

/*drop table clientes;*/

/*drop table funcionarios;*/

/*drop database empresa;*/
    

    
    


