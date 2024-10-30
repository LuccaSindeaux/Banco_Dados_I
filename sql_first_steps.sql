-- Tal qual PHP, tem de ser usado programas como o XAMPP e "startar" o SQL no painel de controle. Então pode ser usado o query do MySQL Workbench
-- No Workbench os elementos tem de ser selecionado e executados com CTRL + ENTER
create database teste01;

use teste01;

			-- NomeBanco.NomeTabela  -----> boa prática de criação de tabelas
create table teste01.tabNova -- Tabelas são colocadas dentro de parenteses e devem ser terminadas com ponto e vírgula
( -- Tabela em si com seus elementos.
    id int primary key,
    nome varchar(30) not null, -- Ao definir varchar deve ser definido também o número de caracteres. 
    datanasc date not null
);

drop table teste01.tabNova; -- comando DROP exclui a tabela 

CREATE TABLE teste01.A09_PESSOA (
idPessoa int primary key auto_increment, --> auto incremento completa linha adicionais da tabela automacatimente. Como o id é um INT, ele vai sempre somar 1. 
nomePessoa varchar(60) NOT NULL, --> As colunas da tabela definida devem sempre terminar com ",", com exceção da última.
dataNascimento date NOT NULL,
CPF char(11) NOT NULL,
situacao char(11) DEFAULT 'A' NOT NULL
);

SELECT * FROM teste01.A09_PESSOA -- Mostra a tabela no programa

INSERT INTO teste01.A09_PESSOA (idPessoa, nomePessoa, dataNascimento, CPF, situacao);
VALUES (1, 'Lucca', '1997-09-04', '15879865700', 'x');

INSERT INTO teste01.A09_PESSOA (nomePessoa, dataNascimento, CPF, situacao) -- Não preciso colocar id, já que é um auto incremento
VALUES ('Lisiane', '1999-07-06', '58947632115', 'B')
