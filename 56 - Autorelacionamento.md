# 👯‍♂️🔁 **AUTORELACIONAMENTO DE UMA ENTIDADE**

## 👩‍🏫 **EXEMPLO BASE** `TABELA CURSOS`;

## ⁉ **DEFINIÇÃO:** Um autorelacionamento ocorre quando uma entidade se relaciona consigo mesma.

- Uma entidade Produto pode ter um autorelacionamento para representar a relação produto_pai-produto_filho.

- Uma entidade Usuario pode ter um autorelacionamento para representar a relação usuario_atual-usuario_anterior.

## 🕕 **CARDINALIDADES:**
   
- 1:1: Uma ocorrência de uma entidade pode estar associada a uma e somente uma ocorrência da mesma entidade.

- 1:N: Uma ocorrência de uma entidade pode estar associada a uma ou mais ocorrências da mesma entidade.

- N:N: Uma ocorrência de uma entidade pode estar associada a zero, uma ou mais ocorrências da mesma entidade.

## 🗺 **MAPEAMENTO PARA O MODELO RELACIONAL:**

- O autorelacionamento é mapeado para uma tabela com duas ou mais colunas.

- Uma coluna representa a chave primária da entidade.

- As outras colunas representam as chaves estrangeiras da entidade relacionadas.

## **PASSO 1:** CRIANDO E CONECTAND-SE A DB `AULA`;
```SQL
-- INPUT:
CREATE DATABASE AULA;

USE AULA;

-- OUTPUT:
mysql> CREATE DATABASE AULA;
Query OK, 1 row affected (0.02 sec)

mysql> USE AULA;
Database changed
```

## **PASSO 2:** CRIANDO A `TABELA CURSOS` E INSERINDO `CONSTRAINT DE FK`;
```SQL
-- INPUT:
CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	HORAS INT,
	VALOR FLOAT(10,2),
	ID_PREREQ INT
);

ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO);

-- OUTPUT:
mysql> CREATE TABLE CURSOS(
    -> IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30),
    -> HORAS INT,
    -> VALOR FLOAT(10,2),
    -> ID_PREREQ INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> ALTER TABLE CURSOS ADD CONSTRAINT FK_PREREQ
    -> FOREIGN KEY(ID_PREREQ) REFERENCES CURSOS(IDCURSO);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

## **PASSO 3:** ALIMENTANDO E CONFERINDO A `TABELA CURSOS`;
```SQL
-- INPUT:
INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);

SELECT * FROM CURSOS;

-- OUTPUT:
mysql> INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM CURSOS;
+---------+-----------------------+-------+--------+-----------+
| IDCURSO | NOME                  | HORAS | VALOR  | ID_PREREQ |
+---------+-----------------------+-------+--------+-----------+
|       1 | BD RELACIONAL         |    20 | 400.00 |      NULL |
|       2 | BUSINESS INTELLIGENCE |    40 | 800.00 |         1 |
|       3 | RELATORIOS AVANCADOS  |    20 | 600.00 |         2 |
|       4 | LOGICA PROGRAM        |    20 | 400.00 |      NULL |
|       5 | RUBY                  |    30 | 500.00 |         4 |
+---------+-----------------------+-------+--------+-----------+
5 rows in set (0.00 sec)
```

## 🔎✔ **MONTANDO UMA `QUERY` PARA PESQUISA AVANÇADA MOSTRANDO A AUTORELAÇÃO `PRÉ REQUISITO`**
```SQL
-- INPUT:
SELECT 
C.NOME AS CURSO, 
C.VALOR AS VALOR, 
C.HORAS AS CARGA, 
IFNULL(P.NOME, "---") AS PREREQ
FROM CURSOS C LEFT JOIN CURSOS P
ON P.IDCURSO = C.ID_PREREQ;

-- OUTPUT:
mysql> SELECT
    -> C.NOME AS CURSO,
    -> C.VALOR AS VALOR,
    -> C.HORAS AS CARGA,
    -> IFNULL(P.NOME, "---") AS PREREQ
    -> FROM CURSOS C LEFT JOIN CURSOS P
    -> ON P.IDCURSO = C.ID_PREREQ;
+-----------------------+--------+-------+-----------------------+
| CURSO                 | VALOR  | CARGA | PREREQ                |
+-----------------------+--------+-------+-----------------------+
| BD RELACIONAL         | 400.00 |    20 | ---                   |
| BUSINESS INTELLIGENCE | 800.00 |    40 | BD RELACIONAL         |
| RELATORIOS AVANCADOS  | 600.00 |    20 | BUSINESS INTELLIGENCE |
| LOGICA PROGRAM        | 400.00 |    20 | ---                   |
| RUBY                  | 500.00 |    30 | LOGICA PROGRAM        |
+-----------------------+--------+-------+-----------------------+
5 rows in set (0.00 sec)
```
