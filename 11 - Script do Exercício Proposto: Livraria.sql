/* RESOLUÇÃO DO EXERCÍCIO LIVRARIA */


/* 1) Criando o Banco de Dados */

CREATE DATABASE LIVRARIA;


					/* 1-1) Resultado:

							mysql> CREATE DATABASE LIVRARIA;
							Query OK, 1 row affected (0.00 sec)

					*/


/* 2) Conectando-se ao Bando de Dados Criado */

USE LIVRARIA;


					/* 2-1) Resultado:

							mysql> USE LIVRARIA;
							Database changed

					*/


/* 3) Criando a Tabela */

CREATE TABLE LIVROS(
	TITULO VARCHAR(100),
	AUTOR VARCHAR(100),
	SEXO CHAR(1),
	PAGINAS INT(4),
	EDITORA VARCHAR(100),
	VALOR FLOAT(10,2),
	ESTADO CHAR(2),
	ANO INT(4)
	);


					/* 3-1) Resultado:

							mysql> CREATE TABLE LIVROS(
						    -> TITULO VARCHAR(100),
						    -> AUTOR VARCHAR(100),
						    -> SEXO CHAR(1),
						    -> PAGINAS INT(4),
						    -> EDITORA VARCHAR(100),
						    -> VALOR FLOAT(10,2),
						    -> ESTADO CHAR(2),
						    -> ANO INT(4)
						    -> );
						Query OK, 0 rows affected (0.03 sec)

					*/


/* 4) Checando as tabelas dentro da Data Base */

SHOW TABLES;


					/* 4-1) Resultado:

							mysql> SHOW TABLES;
							+--------------------+
							| Tables_in_livraria |
							+--------------------+
							| livros             |
							+--------------------+
							1 row in set (0.00 sec)

					*/


/* 5) Visualizando a estrutura da tabela livros */

DESC LIVROS;


					/* 5-1) Resultado:

							mysql> DESC LIVROS;
							+---------+--------------+------+-----+---------+-------+
							| Field   | Type         | Null | Key | Default | Extra |
							+---------+--------------+------+-----+---------+-------+
							| TITULO  | varchar(100) | YES  |     | NULL    |       |
							| AUTOR   | varchar(100) | YES  |     | NULL    |       |
							| SEXO    | char(1)      | YES  |     | NULL    |       |
							| PAGINAS | int(4)       | YES  |     | NULL    |       |
							| EDITORA | varchar(100) | YES  |     | NULL    |       |
							| VALOR   | float(10,2)  | YES  |     | NULL    |       |
							| ESTADO  | char(2)      | YES  |     | NULL    |       |
							| ANO     | int(4)       | YES  |     | NULL    |       |
							+---------+--------------+------+-----+---------+-------+
							8 rows in set (0.02 sec)

					*/


/* 6) Inserindo os Dados */

INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('CAVALEIRO REAL','ANA CLAUDIA','F',465,'ATLAS',49.9,'RJ',2009);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);


					/* 6-1) Resultado:

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('CAVALEIRO REAL','ANA CLAUDIA','F',465,'ATLAS',49.9,'RJ',2009);
							Query OK, 1 row affected (0.01 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Cavaleiro Real','Ana Claudia','F',465,'Atlas',49.9,'RJ',2009);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('SQL para leigos','João Nunes','M',450,'Addison',98,'SP',2018);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Receitas Caseiras','Celia Tavares','F',210,'Atlas',45,'RJ',2008);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016);
							Query OK, 1 row affected (0.01 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018);
							Query OK, 1 row affected (0.00 sec)

							mysql> INSERT INTO LIVROS(TITULO,AUTOR,SEXO,PAGINAS,EDITORA,VALOR,ESTADO,ANO) VALUES('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);
							Query OK, 1 row affected (0.02 sec)

					*/


/* 7) Trazer todos os dados */

SELECT * FROM LIVROS;


					/* 7-1) Resultado:

							mysql> SELECT * FROM LIVROS;
							+---------------------+-------------------+------+---------+-------------+--------+--------+------+
							| TITULO              | AUTOR             | SEXO | PAGINAS | EDITORA     | VALOR  | ESTADO | ANO  |
							+---------------------+-------------------+------+---------+-------------+--------+--------+------+
							| CAVALEIRO REAL      | ANA CLAUDIA       | F    |     465 | ATLAS       |  49.90 | RJ     | 2009 |
							| Cavaleiro Real      | Ana Claudia       | F    |     465 | Atlas       |  49.90 | RJ     | 2009 |
							| SQL para leigos     | Joao Nunes        | M    |     450 | Addison     |  98.00 | SP     | 2018 |
							| Receitas Caseiras   | Celia Tavares     | F    |     210 | Atlas       |  45.00 | RJ     | 2008 |
							| Pessoas Efetivas    | Eduardo Santos    | M    |     390 | Beta        |  78.00 | RJ     | 2018 |
							| Habitos Saudáveis   | Eduardo Santos    | M    |     630 | Beta        | 150.00 | RJ     | 2019 |
							| A Casa Marrom       | Hermes Macedo     | M    |     250 | Bubba       |  60.00 | MG     | 2016 |
							| Estacio Querido     | Geraldo Francisco | M    |     310 | Insignia    | 100.00 | ES     | 2015 |
							| Pra sempre amigas   | Leda Silva        | F    |     510 | Insignia    |  78.00 | ES     | 2011 |
							| Copas Inesqueciveis | Marco Alcantara   | M    |     200 | Larson      | 130.00 | RS     | 2018 |
							| O poder da mente    | Clara Mafra       | F    |     120 | Continental |  56.00 | SP     | 2017 |
							+---------------------+-------------------+------+---------+-------------+--------+--------+------+
							11 rows in set (0.01 sec)

					*/


/* 8) Trazer o nome do livro e o nome da editora */

SELECT TITULO AS NOME_DO_LIVRO, EDITORA AS NOME_DA_EDITORA FROM LIVROS; 


					/* 8-1) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, EDITORA AS NOME_DA_EDITORA FROM LIVROS;
							+---------------------+-----------------+
							| NOME_DO_LIVRO       | NOME_DA_EDITORA |
							+---------------------+-----------------+
							| CAVALEIRO REAL      | ATLAS           |
							| Cavaleiro Real      | Atlas           |
							| SQL para leigos     | Addison         |
							| Receitas Caseiras   | Atlas           |
							| Pessoas Efetivas    | Beta            |
							| Habitos Saudáveis   | Beta            |
							| A Casa Marrom       | Bubba           |
							| Estacio Querido     | Insignia        |
							| Pra sempre amigas   | Insignia        |
							| Copas Inesqueciveis | Larson          |
							| O poder da mente    | Continental     |
							+---------------------+-----------------+
							11 rows in set (0.00 sec)

					*/


/* 9) Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino */

SELECT TITULO AS NOME_DO_LIVRO, ESTADO AS UF FROM LIVROS
WHERE SEXO = 'M';

					/* 9-1) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, ESTADO AS UF FROM LIVROS
							    -> WHERE SEXO = 'M';
							+---------------------+------+
							| NOME_DO_LIVRO       | UF   |
							+---------------------+------+
							| SQL para leigos     | SP   |
							| Pessoas Efetivas    | RJ   |
							| Habitos Saudáveis   | RJ   |
							| A Casa Marrom       | MG   |
							| Estacio Querido     | ES   |
							| Copas Inesqueciveis | RS   |
							+---------------------+------+
							6 rows in set (0.00 sec)

					*/


SELECT TITULO AS NOME_DO_LIVRO, AUTOR, SEXO, ESTADO AS UF FROM LIVROS
WHERE SEXO = 'M';


					/* 9-2) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, AUTOR, SEXO, ESTADO AS UF FROM LIVROS
							    -> WHERE SEXO = 'M';
							+---------------------+-------------------+------+------+
							| NOME_DO_LIVRO       | AUTOR             | SEXO | UF   |
							+---------------------+-------------------+------+------+
							| SQL para leigos     | Joao Nunes        | M    | SP   |
							| Pessoas Efetivas    | Eduardo Santos    | M    | RJ   |
							| Habitos Saudáveis   | Eduardo Santos    | M    | RJ   |
							| A Casa Marrom       | Hermes Macedo     | M    | MG   |
							| Estacio Querido     | Geraldo Francisco | M    | ES   |
							| Copas Inesqueciveis | Marco Alcantara   | M    | RS   |
							+---------------------+-------------------+------+------+
							6 rows in set (0.00 sec)

					*/

/* 10) Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino */

SELECT TITULO AS NOME_DO_LIVRO, PAGINAS AS NUMERO_DE_PAGINAS FROM LIVROS
WHERE SEXO = 'F';


					/* 10-1) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, PAGINAS AS NUMERO_DE_PAGINAS FROM LIVROS
							    -> WHERE SEXO = 'F';
							+-------------------+-------------------+
							| NOME_DO_LIVRO     | NUMERO_DE_PAGINAS |
							+-------------------+-------------------+
							| CAVALEIRO REAL    |               465 |
							| Cavaleiro Real    |               465 |
							| Receitas Caseiras |               210 |
							| Pra sempre amigas |               510 |
							| O poder da mente  |               120 |
							+-------------------+-------------------+
							5 rows in set (0.00 sec)

					*/


SELECT TITULO AS NOME_DO_LIVRO, PAGINAS AS NUMERO_DE_PAGINAS, AUTOR FROM LIVROS
WHERE SEXO = 'F';


					/* 10-2) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, PAGINAS AS NUMERO_DE_PAGINAS, AUTOR FROM LIVROS
							    -> WHERE SEXO = 'F';
							+-------------------+-------------------+---------------+
							| NOME_DO_LIVRO     | NUMERO_DE_PAGINAS | AUTOR         |
							+-------------------+-------------------+---------------+
							| CAVALEIRO REAL    |               465 | ANA CLAUDIA   |
							| Cavaleiro Real    |               465 | Ana Claudia   |
							| Receitas Caseiras |               210 | Celia Tavares |
							| Pra sempre amigas |               510 | Leda Silva    |
							| O poder da mente  |               120 | Clara Mafra   |
							+-------------------+-------------------+---------------+
							5 rows in set (0.00 sec)

					*/

/* 11) Trazer os valores dos livros das editoras de São Paulo */

SELECT VALOR FROM LIVROS
WHERE ESTADO = 'SP';


					/* 11-1) Resultado:

							mysql> SELECT VALOR FROM LIVROS
							    -> WHERE ESTADO = 'SP';
							+-------+
							| VALOR |
							+-------+
							| 98.00 |
							| 56.00 |
							+-------+
							2 rows in set (0.02 sec)

					*/


SELECT TITULO AS NOME_DO_LIVRO, AUTOR, ESTADO AS UF, VALOR FROM LIVROS
WHERE ESTADO = 'SP';


					/* 11-2) Resultado:

							mysql> SELECT TITULO AS NOME_DO_LIVRO, AUTOR, ESTADO AS UF, VALOR FROM LIVROS
							    -> WHERE ESTADO = 'SP';
							+------------------+-------------+------+-------+
							| NOME_DO_LIVRO    | AUTOR       | UF   | VALOR |
							+------------------+-------------+------+-------+
							| SQL para leigos  | Joao Nunes  | SP   | 98.00 |
							| O poder da mente | Clara Mafra | SP   | 56.00 |
							+------------------+-------------+------+-------+
							2 rows in set (0.00 sec)

					*/			


/* 12) Trazer os dados dos autores do sexo masculino que tiveram livros publicados 
por São Paulo ou Rio de Janeiro (Questão Desafio) */


SELECT AUTOR, SEXO, ESTADO AS UF FROM LIVROS
WHERE SEXO = 'M' AND ESTADO = 'SP' OR ESTADO = 'RJ';


					/* 12-1) Resultado:

							mysql> SELECT AUTOR, SEXO, ESTADO AS UF FROM LIVROS
							    -> WHERE SEXO = 'M' AND ESTADO = 'SP' OR ESTADO = 'RJ';
							+----------------+------+------+
							| AUTOR          | SEXO | UF   |
							+----------------+------+------+
							| ANA CLAUDIA    | F    | RJ   |
							| Ana Claudia    | F    | RJ   |
							| Joao Nunes     | M    | SP   |
							| Celia Tavares  | F    | RJ   |
							| Eduardo Santos | M    | RJ   |
							| Eduardo Santos | M    | RJ   |
							+----------------+------+------+
							6 rows in set (0.02 sec)

					*/


SELECT AUTOR, SEXO, ESTADO FROM LIVROS
WHERE SEXO = 'M' AND (ESTADO = 'SP' OR ESTADO = 'RJ';

					/* 12-2) Resultado:

							mysql> SELECT AUTOR, SEXO, ESTADO FROM LIVROS
							    -> WHERE SEXO = 'M' AND (ESTADO = 'SP' OR ESTADO = 'RJ');
							+----------------+------+--------+
							| AUTOR          | SEXO | ESTADO |
							+----------------+------+--------+
							| Joao Nunes     | M    | SP     |
							| Eduardo Santos | M    | RJ     |
							| Eduardo Santos | M    | RJ     |
							+----------------+------+--------+
							3 rows in set (0.00 sec)

					*/
