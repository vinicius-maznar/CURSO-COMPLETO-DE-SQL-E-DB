# 🗄 📞 🗄 **COMUNICAÇÃO ENTRE BANCOS DE DADOS E BACKUP:**

## 👩‍🏫 **EXEMPLO BASE** `TABELA CLIENTE` E `TABELA TELEFONE`;

## ⁉ **DEFINIÇÃO:**
   - A comunicação entre bancos de dados refere-se à transferência de dados entre diferentes sistemas de gerenciamento de banco de dados (DBMS) ou entre instâncias de um mesmo DBMS.

## 🧩📡 **MÉTODOS DE COMUNICAÇÃO:**

   - **Exportação/Importação:** Utiliza arquivos de exportação (dump) para transferir dados entre bancos.

   - **Conexões Diretas:** Conexões diretas via rede para transferência de dados em tempo real.

   - **Replicação:** Mantém cópias sincronizadas dos dados entre bancos para alta disponibilidade.

## 📥🗄 **BACKUP DE BANCOS DE DADOS:**

   - O backup é o processo de cópia dos dados do banco de dados para proteger contra perda de dados devido a falhas, corrupção ou desastres.

   - **Tipos de Backup:**

     - **Completo:** Backup de todos os dados.

     - **Incremental/Diferencial:** Backup apenas das alterações desde o último backup.
  
## 🔁📥 **Frequência de Backup:**

   - Determinada pela criticidade dos dados; pode ser diária, semanal, etc.

## 📦 **ARMAZENAMENTO:**

   - Pode ser feito em dispositivos locais ou em serviços de armazenamento em nuvem.

## 🤔💭 **CONSIDERAÇÕES IMPORTANTES:**
    - **Segurança:** A comunicação e o armazenamento de backups devem ser seguros para evitar acessos não autorizados.
    - **Política de Retenção:** Define por quanto tempo os backups serão mantidos.
    - **Testes de Restauração:** Importantes para garantir a eficácia do backup em casos de recuperação.

## 👩‍🏫 **EXEMPLO PRÁTICO:**
```SQL
-- EXPORTAR DADOS PARA ARQUIVO DE DUMP
MYSQLDUMP -U USUÁRIO -P SENHA NOME_BANCO > BACKUP.SQL

-- IMPORTAR DADOS DE ARQUIVO DE DUMP
MYSQL -U USUÁRIO -P SENHA NOME_BANCO < BACKUP.SQL
```

## 🔨 **TAREFA:** CRIAR A `DATABASE LOJA`;

## **PASSO 1:** CRIANDO E CONECTANDO-SE A DB `DATABASE LOJA`;
```SQL
-- INPUT:
CREATE DATABASE LOJA;

USE LOJA;

-- OUTPUT:
mysql> CREATE DATABASE LOJA;
Query OK, 1 row affected (0.00 sec)

mysql> USE LOJA;
Database changed
mysql>
```

## **PASSO 2:** CRIANDO A TABELA `PRODUTO` NA `DATABASE LOJA`;
```SQL
-- INPUT:
CREATE TABLE PRODUTO(
	IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

-- OUTPUT:
mysql> CREATE TABLE PRODUTO(
    -> IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30),
    -> VALOR FLOAT(10,2)
    -> );
Query OK, 0 rows affected (0.02 sec)
```

## **PASSO 3:** CRIANDO E CONECTANDO-SE A DB `DATABASE BACKUP`;
```SQL
-- INPUT:
CREATE DATABASE BACKUP;

USE BACKUP;

-- OUTPUT:
mysql> CREATE DATABASE BACKUP;
Query OK, 1 row affected (0.01 sec)

mysql> USE BACKUP;
Database changed
```

## **PASSO 4:** CRIANDO A TABELA `BKP_PRODUTO` NA `DATABASE BACKUP`;
```SQL
-- INPUT:
CREATE TABLE BKP_PRODUTO(
	IDBKP INT PRIMARY KEY AUTO_INCREMENT,
	IDPRODUTO INT,
	NOME VARCHAR(30),
	VALOR FLOAT(10,2)
);

-- OUTPUT:
mysql> CREATE TABLE BKP_PRODUTO(
    -> IDBKP INT PRIMARY KEY AUTO_INCREMENT,
    -> IDPRODUTO INT,
    -> NOME VARCHAR(30),
    -> VALOR FLOAT(10,2)
    -> );
Query OK, 0 rows affected (0.01 sec)
```

## **PASSO 5:** CONECTANDO-SE A `DATABASE LOJA` E, A PARTIR DELA, ALIMENTAR A TABELA `BKP_PRODUTO`;
```SQL
/*INPUT*/
USE LOJA;

INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,1000,'TESTE',0.0);

/*OUTPUT*/
mysql> USE LOJA;
Database changed

mysql> INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,1000,'TESTE',0.0);
Query OK, 1 row affected (0.00 sec)
```

## 🔎✔ **CONFIRMANDO A ALTERAÇÃO ANTERIOR FEITA NA `DATABASE BACKUP`, A PARTIR DA `DATABASE LOJA`:**
```SQL
-- INPUT:
USE LOJA;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> USE LOJA;
Database changed

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+-------+-------+
| IDBKP | IDPRODUTO | NOME  | VALOR |
+-------+-----------+-------+-------+
|     1 |      1000 | TESTE |  0.00 |
+-------+-----------+-------+-------+
1 row in set (0.00 sec)
```

## **PASSO 6:** CRIANDO UMA `TRIGGER` PARA QUE, QUANDO UMA `INSERÇÃO` FOR FEITA, MANTER UMA `TABELA PARALELA` (EM OUTRA `DATABASE`) COMO `BACKUP` DESSES DADOS;
```SQL
-- INPUT:
DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
BEFORE INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(
		NULL,
		NEW.IDPRODUTO,
		NEW.NOME,
		NEW.VALOR);

END
$

DELIMITER ;

-- OUTPUT:
mysql> DELIMITER $

mysql> CREATE TRIGGER BACKUP_PRODUTO
    -> BEFORE INSERT ON PRODUTO
    -> FOR EACH ROW
    -> BEGIN
    ->
    -> INSERT INTO BACKUP.BKP_PRODUTO VALUES(
    -> NULL,
    -> NEW.IDPRODUTO,
    -> NEW.NOME,
    -> NEW.VALOR);
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.05 sec)

mysql> DELIMITER ;
```

## 🔎✔ **ALIMENTANDO A `TABELA PRODUTO` E TESTANDO A `TRIGGER` CRIADA PARA FAZER `BACKUP` DOS DADOS INSERIDOS:**
```SQL
-- INPUT:
INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO MODELAGEM',50.00);
Query OK, 1 row affected, 1 warning (0.05 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO BI',80.00);
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO ORACLE',70.00);
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO SQL SERVER',100.00);
Query OK, 1 row affected, 1 warning (0.02 sec)

mysql> SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         2 | LIVRO BI         |  80.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
+-------+-----------+------------------+--------+
5 rows in set (0.00 sec)
```

## **PASSO 7:** CRIANDO UMA `TRIGGER` PARA QUE, QUANDO UM DADO FOR `DELETADO`, MANTER UMA `TABELA PARALELA` (EM OUTRA `DATABASE`) COMO `BACKUP` DESSES DADOS;
```SQL
-- INPUT:
DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR);

END
$

DELIMITER ;

-- OUTPUT:
mysql> DELIMITER $

mysql> CREATE TRIGGER BACKUP_PRODUTO_DEL
    -> BEFORE DELETE ON PRODUTO
    -> FOR EACH ROW
    -> BEGIN
    ->
    -> INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
    -> OLD.NOME,OLD.VALOR);
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.05 sec)

mysql> DELIMITER ;
```

## 🔎✔ **CONFIRMANDO A ALTERAÇAO ANTERIOR**
```SQL
-- INPUT:
DELETE FROM PRODUTO WHERE IDPRODUTO = 2;

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> DELETE FROM PRODUTO WHERE IDPRODUTO = 2;DELETE FROM PRODUTO WHERE IDPRODUTO = 2;
Query OK, 1 row affected, 1 warning (0.03 sec)

mysql> SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
+-----------+------------------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
|     6 |         2 | LIVRO BI         |  80.00 |
+-------+-----------+------------------+--------+
6 rows in set (0.00 sec)
```

## **PASSO 8:** DELETANDO A PRIMEIRA `TRIGGER` DE BACKUP PARA `INSERÇÃO` DE DADOS;
```SQL
-- INPUT:
DROP TRIGGER BACKUP_PRODUT;

-- OUTPUT:
mysql> DROP TRIGGER BACKUP_PRODUTO;
Query OK, 0 rows affected (0.03 sec)
```

## **PASSO 9:** CONSTRUINDO E CRIANDO A NOVA `TRIGGER` DE BACKUP PARA `INSERÇÃO` DE DADOS;
```SQL
-- INPUT:
DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
	NEW.NOME,NEW.VALOR);

END
$

DELIMITER ;

-- OUTPUT:
mysql> DELIMITER $

mysql> CREATE TRIGGER BACKUP_PRODUTO
    -> AFTER INSERT ON PRODUTO
    -> FOR EACH ROW
    -> BEGIN
    ->
    -> INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,NEW.IDPRODUTO,
    -> NEW.NOME,NEW.VALOR);
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.03 sec)

mysql> DELIMITER ;
```

## 🔎✔ **INSERINDO E CONFIRMANDO O FUNCIONAMENTO DA NOVA `TRIGGER` PARA `BACKUP` DE INSERÇÃO DE DADOS:**
```SQL
-- INPUT:
INSERT INTO PRODUTO VALUES(NULL,'LIVRO C#',100.00);

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> INSERT INTO PRODUTO VALUES(NULL,'LIVRO C#',100.00);
Query OK, 1 row affected, 1 warning (0.02 sec)

mysql> SELECT * FROM PRODUTO;
+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO MODELAGEM  |  50.00 |
|         3 | LIVRO ORACLE     |  70.00 |
|         4 | LIVRO SQL SERVER | 100.00 |
|         5 | LIVRO C#         | 100.00 |
+-----------+------------------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  |
+-------+-----------+------------------+--------+
|     1 |      1000 | TESTE            |   0.00 |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 |
|     3 |         0 | LIVRO BI         |  80.00 |
|     4 |         0 | LIVRO ORACLE     |  70.00 |
|     5 |         0 | LIVRO SQL SERVER | 100.00 |
|     6 |         2 | LIVRO BI         |  80.00 |
|     7 |         5 | LIVRO C#         | 100.00 |
+-------+-----------+------------------+--------+
7 rows in set (0.00 sec)
```

## **PASSO 10:** MELHORANDO A ESTRUTURA DA `TABELA BKP_PRODUTO` E DA `TRIGGER BACKUP_PRODUTO` PARA UMA PERFORMANCE DE AUDITORIA MAIS EFICAZ;
```SQL
-- INPUT:
ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR(1);

DROP TRIGGER BACKUP_PRODUTO_DEL;

DELIMITER $

CREATE TRIGGER BACKUP_PRODUTO_DEL
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
	
	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
	OLD.NOME,OLD.VALOR,'D');

END
$

DELIMITER ;

-- OUTPUT:
mysql> ALTER TABLE BACKUP.BKP_PRODUTO
    -> ADD EVENTO CHAR(1);
Query OK, 7 rows affected (0.05 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> DROP TRIGGER BACKUP_PRODUTO_DEL;
Query OK, 0 rows affected (0.05 sec)

mysql> DELIMITER $

mysql> CREATE TRIGGER BACKUP_PRODUTO_DEL
    -> BEFORE DELETE ON PRODUTO
    -> FOR EACH ROW
    -> BEGIN
    ->
    -> INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL,OLD.IDPRODUTO,
    -> OLD.NOME,OLD.VALOR,'D');
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.03 sec)

mysql> DELIMITER ;
```

## 🔎✔ **DELETANDO E CONFIRMANDO O FUNCIONAMENTO DA NOVA ESTRUTURADA `TRIGGER` PARA `BACKUP` DE ALTERAÇÃO DE DADOS:**
```SQL
-- INPUT:
DELETE FROM PRODUTO WHERE IDPRODUTO = 4;

SELECT * FROM PRODUTO;

SELECT * FROM BACKUP.BKP_PRODUTO;

-- OUTPUT:
mysql> DELETE FROM PRODUTO WHERE IDPRODUTO = 4;
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> SELECT * FROM PRODUTO;
+-----------+-----------------+--------+
| IDPRODUTO | NOME            | VALOR  |
+-----------+-----------------+--------+
|         1 | LIVRO MODELAGEM |  50.00 |
|         3 | LIVRO ORACLE    |  70.00 |
|         5 | LIVRO C#        | 100.00 |
+-----------+-----------------+--------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM BACKUP.BKP_PRODUTO;
+-------+-----------+------------------+--------+--------+
| IDBKP | IDPRODUTO | NOME             | VALOR  | EVENTO |
+-------+-----------+------------------+--------+--------+
|     1 |      1000 | TESTE            |   0.00 | NULL   |
|     2 |         0 | LIVRO MODELAGEM  |  50.00 | NULL   |
|     3 |         0 | LIVRO BI         |  80.00 | NULL   |
|     4 |         0 | LIVRO ORACLE     |  70.00 | NULL   |
|     5 |         0 | LIVRO SQL SERVER | 100.00 | NULL   |
|     6 |         2 | LIVRO BI         |  80.00 | NULL   |
|     7 |         5 | LIVRO C#         | 100.00 | NULL   |
|     8 |         4 | LIVRO SQL SERVER | 100.00 | D      |
+-------+-----------+------------------+--------+--------+
8 rows in set (0.00 sec)
```