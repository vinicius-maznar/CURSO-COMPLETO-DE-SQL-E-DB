/*  Resolvendo o Exercício */



/* Criando a DB */

CREATE DATABASE LIVRARIA;



/* Criando a Tabela no DB */

CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(5),
	EDITORA VARCHAR(30),
	VALOR FLOAT(10,2),
	ANO INT(4)
);



/* Verificando os Bancos existentes */

SHOW DATABASE;



/* Conectando-se a um Banco */

USE LIVRARIA;



/* Dados a serem inseridos na Tabela LIVROS */

INSERT INTO LIVROS VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO LIVROS VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO LIVROS VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO LIVROS VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);



/* TAREFA 1: Trazer todos os dados da Tabela LIVROS */

SELECT * FROM LIVROS;



/* TAREFA 2: Trazer o nome do Livros e de suas respectivas Editoras */

SELECT LIVRO, EDITORA
FROM LIVROS;



/* TAREFA 3: Trazer o nome dos livros e seus respectivos UF publicados por autores do sexo Masculino */

SELECT LIVRO, UF
FROM LIVROS
WHERE SEXO = 'M';

/* OU */

SELECT AUTOR, SEXO, LIVRO, UF
FROM LIVROS
WHERE SEXO ='M';



/* TAREFA 4: Trazer o nome dos livros e suas respectivas quantidades de páginas publicados por autores do sexo Feminino */

SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO ='F';

/* OU */

SELECT AUTOR, SEXO, LIVROS, UF
FROM LIVROS
WHERE SEXO ='F';



/* TAREFA 5: Trazer os valores dos livros das editoras de São Paulo */

SELECT LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';

/* OU */

SELECT FROM UF, LIVRO, VALOR
FROM LIVROS
WHERE UF = 'SP';



/* TAREFA 6: Trazer os dados dos autores do sexo masculino que tiverem livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio) */

SELECT FROM AUTOR, SEXO, UF
FROM LIVROS
WHERE 
SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');
