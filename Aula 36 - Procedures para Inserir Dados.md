# 🗄🎲 **PROCEDURES: TRABALHANDO COM TABELAS - CRIANDO PROCEDURE PARA INSERIR DADOS**


## **PASSO 1:** CRIANDO A `DATABASE PROJETO`;
```SQL
/*INPUT*/
CREATE DATABASE PROJETO;

/*OUTPUT*/
mysql> CREATE DATABASE PROJETO;
Query OK, 1 row affected (0.01 sec)
```

## **PASSO 2:** CONECTANDO-SE A `DATABASE PROJETO`;
```SQL
/*INPUT*/
USE PROJETO;

/*OUTPUT*/
mysql> USE PROJETO;
Database changed
```

## **PASSO 3:** CRIANDO A `TABELA CURSOS`;
```SQL
/*INPUT*/
CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);

/*OUTPUT*/
mysql> CREATE TABLE CURSOS(
    -> IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30) NOT NULL,
    -> HORAS INT(3) NOT NULL,
    -> VALOR FLOAT(10,2) NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)
```

## **PASSO 4:** CONFIRMANDO A CRIAÇÃO DA `TABELA CURSOS`;
```SQL
/*INPUT*/
SHOW TABLES;

/*OUTPUT*/
mysql> SHOW TABLES;
+-------------------+
| Tables_in_projeto |
+-------------------+
| cursos            |
+-------------------+
1 row in set (0.00 sec)
```

## **PASSO 5:** INSERINDO DADOS NA `TABELA CURSOS` USANDO O `INSERT`;
```SQL
/*INPUT*/
INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCO DE DADOS',40,700.00);

/*OUTPUT*/
mysql> INSERT INTO CURSOS VALUES(NULL,'JAVA',30,500.00);
Query OK, 1 row affected (0.30 sec)

mysql> INSERT INTO CURSOS VALUES(NULL,'FUNDAMENTOS DE BANCO DE DADOS',40,700.00);
Query OK, 1 row affected (0.00 sec)
```


## **PASSO 6:** CONSULTANDO OS DADOS INSERIDOS NA `TABELA CURSOS`;
```SQL
/*INPUT*/
SELECT * FROM CURSOS;

/*OUTPUT*/
mysql> SELECT * FROM CURSOS;
+---------+-------------------------------+-------+--------+
| IDCURSO | NOME                          | HORAS | VALOR  |
+---------+-------------------------------+-------+--------+
|       1 | JAVA                          |    30 | 500.00 |
|       2 | FUNDAMENTOS DE BANCO DE DADOS |    40 | 700.00 |
+---------+-------------------------------+-------+--------+
2 rows in set (0.00 sec)
```


## **PASSO 7:** ALTERANDO O `DELIMITER` PARA CRIAR A PRIMEIRA `PROCEDURE`;
```SQL
/*INPUT*/
DELIMITER #

/*OUTPUT*/
mysql> STATUS
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe  Ver 14.14 Distrib 5.5.60, for Win32 (AMD64)

Connection id:          33
Current database:       projeto
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        #
Server version:         5.5.60-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 4 days 20 hours 45 min 35 sec

Threads: 1  Questions: 1709  Slow queries: 0  Opens: 203  Flush tables: 1  Open tables: 0  Queries per second avg: 0.004
--------------
```


## **PASSO 8:** CRIANDO A PRIMEIRA `PROCEDURE` PARA CADASTRAR CURSOS. O `NOME DA PROCEDURE` SERÁ `CAD_CURSO()`;
```SQL
/*INPUT*/
CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),P_HORAS INT(30),P_PRECO FLOAT(10,2))
BEGIN

	INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);

END
#

/*OUTPUT*/
mysql> CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),P_HORAS INT(30),P_PRECO FLOAT(10,2))
    -> BEGIN
    ->
    -> INSERT INTO CURSOS VALUES(NULL,P_NOME,P_HORAS,P_PRECO);
    ->
    -> END
    -> #
Query OK, 0 rows affected (0.01 sec)
```


## **PASSO 9:** ALTERAR O `DELIMITER` AO FINALIZAR A CRIAÇÃO DA `PROCEDURE` `CAD_CURSO()`;
```SQL
/*INPUT*/
DELIMITER ;

/*OUTPUT*/
mysql> STATUS
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe  Ver 14.14 Distrib 5.5.60, for Win32 (AMD64)

Connection id:          33
Current database:       projeto
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        ;
Server version:         5.5.60-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 4 days 20 hours 57 min 55 sec

Threads: 1  Questions: 1714  Slow queries: 0  Opens: 204  Flush tables: 1  Open tables: 1  Queries per second avg: 0.004
--------------
```


## **PASSO 10:** CHAMANDO `PROCEDURE` PARA CADASTRAR CURSOS;
```SQL
/*INPUT*/
CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
CALL CAD_CURSO('POWER BI',20,1000.00);
CALL CAD_CURSO('TABLEAU',30,1200.00);

/*OUTPUT*/
mysql> CALL CAD_CURSO('BI SQL SERVER',35,3000.00);
Query OK, 1 row affected (0.00 sec)

mysql> CALL CAD_CURSO('POWER BI',20,1000.00);
Query OK, 1 row affected (0.00 sec)

mysql> CALL CAD_CURSO('TABLEAU',30,1200.00);
Query OK, 1 row affected (0.00 sec)
```


## **PASSO 11:** CONSULTANDO OS DADOS INSERIDOS NA `TABELA CURSOS` UTILIZANDO A `PROCEDURE` CRIADA PARA CADASTRO DE CURSOS;
```SQL
/*INPUT*/
SELECT * FROM CURSOS;

/*OUTPUT*/
mysql> SELECT * FROM CURSOS;
+---------+-------------------------------+-------+---------+
| IDCURSO | NOME                          | HORAS | VALOR   |
+---------+-------------------------------+-------+---------+
|       1 | JAVA                          |    30 |  500.00 |
|       2 | FUNDAMENTOS DE BANCO DE DADOS |    40 |  700.00 |
|       3 | POWER BI                      |    20 | 1000.00 |
|       4 | TABLEAU                       |    30 | 1200.00 |
|       5 | BI SQL SERVER                 |    35 | 3000.00 |
+---------+-------------------------------+-------+---------+
5 rows in set (0.00 sec)
```