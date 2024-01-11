# 🔫 **AUDITANDO UMA TABELA COM TRIGGER**

## 👩‍🏫 **EXEMPLO BASE** `DATABASE LOJA` E `DATABASE BACKUP`

## **PASSO 1:** CRIANDO A `DATABASE LOJA`;
```SQL
-- INPUT:
CREATE DATABASE LOJA;

USE LOJA;

-- OUTPUT:
mysql> CREATE DATABASE LOJA;
Query OK, 1 row affected (0.02 sec)

mysql> USE LOJA;
Database changed
```

## **PASSO 2:** CRIANDO E ALIMENTANDO A `TABELA PRODUTO`;
```SQL
-- INPUT:
CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

-- OUTPUT:
mysql> CREATE TABLE PRODUTO(
    -> IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30),
    -> VALOR FLOAT(10,2)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);
Query OK, 1 row affected (0.02 sec)
```

## **PASSO 3:** CRIANDO E CONECTAND-SE A `DATABASE BACKUP`;
```SQL
-- INPUT:
CREATE DATABASE BACKUP;

USE BACKUP;

-- OUTPUT:
mysql> CREATE DATABASE BACKUP;
Query OK, 1 row affected (0.00 sec)

mysql> USE BACKUP;
Database changed
```

## **PASSO 4:** CRIANDO A `TABELA BKP_PRODUTO` E A `TRIGGER PARA AUDITORIA` DAS ALTERAÇÕES;
```SQL
-- INPUT:
CREATE TABLE BKP_PRODUTO(
	IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR_ORIGINAL FLOAT(10,2),
	VALOR_ALTERADO FLOAT(10,2),
	DATA DATETIME,
	USUARIO VARCHAR(30),
	EVENTO CHAR(1)
	
);

USE LOJA;

-- OUTPUT:
mysql> CREATE DATABASE BACKUP;
Query OK, 1 row affected (0.00 sec)

mysql> USE BACKUP;
Database changed
```

## **PASSO 5:** CRIANDO A `TRIGGER PARA AUDITORIA` DE ALTERAÇÕES NA `TABELA PRODUTO`;
```SQL
-- INPUT:
DELIMITER $

CREATE TRIGGER AUDIT_PROD
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,OLD.NOME,
	OLD.VALOR,NEW.VALOR,NOW(),CURRENT_USER(),'U');
	
END
$

DELIMITER ;

USE BACKUP;

-- OUTPUT:
mysql> DELIMITER $

mysql> CREATE TRIGGER AUDIT_PROD
    -> AFTER UPDATE ON PRODUTO
    -> FOR EACH ROW
    -> BEGIN
    ->
    -> INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,OLD.NOME,
    -> OLD.VALOR,NEW.VALOR,NOW(),CURRENT_USER(),'U');
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.09 sec)

mysql> DELIMITER ;
```

## 🔎✔ **CONFIRMANDO O FUNCIONAMENTO DA `TRIGGER PARA AUDITORIA` DE ALTERAÇÕES NA `TABELA PRODUTO`:**
```SQL
-- INPUT:
UPDATE PRODUTO SET VALOR = 110.00
WHERE IDPRODUTO = 4;

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> UPDATE PRODUTO SET VALOR = 110.00
    -> WHERE IDPRODUTO = 4;
Query OK, 1 row affected, 2 warnings (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 2

mysql> SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 110.00 |
+-----------+------------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
|        1 |         4 | LIVRO SQL SERVER |         100.00 |         110.00 | 2024-01-11 03:29:20 | root@localhost | U      |
+----------+-----------+------------------+----------------+----------------+---------------------+----------------+--------+
1 row in set (0.00 sec)
```