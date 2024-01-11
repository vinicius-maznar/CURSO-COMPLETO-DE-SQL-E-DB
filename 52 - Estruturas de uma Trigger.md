# 🔫 **ESTRUTURAS DE UMA TRIGGER**

## 👩‍🏫 **EXEMPLO BASE** `DATABASE AULA40`;

## 📣 **SINTAXE BÁSICA DA TRIGGER:**

```SQL
-- SINTAXE:
DELIMITER $
CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON NOME_TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN -> (INICIO)
    
    --CORPO DO BLOCO DE COMANDOS SQL;

END -> (FIM)
DELIMITER ;
```

## **PASSO 1:** CRIANDO E SE CONECTANDO A `DATABASE AULA40`;
```SQL
/*INPUT*/
CREATE DATABASE AULA40;

USE AULA40;

/*OUTPUT*/
mysql> CREATE DATABASE AULA40;
Query OK, 1 row affected (0.00 sec)

mysql> USE AULA40;
Database changed
mysql>
```

## **PASSO 2:** CRIANDO AS TABELAS `USUARIO` E `BKP_USUARIO`;
```SQL
/*INPUT*/
CREATE TABLE USUARIO(
  IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
  NOME VARCHAR(30),
  LOGIN VARCHAR(30),
  SENHA VARCHAR(100)
);

CREATE TABLE BKP_USUARIO(
  IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
  IDUSUARIO INT,
  NOME VARCHAR(30),
  LOGIN VARCHAR(30)
);

/*OUTPUT*/
mysql> CREATE TABLE USUARIO(
    ->   IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
    ->   NOME VARCHAR(30),
    ->   LOGIN VARCHAR(30),
    ->   SENHA VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> CREATE TABLE BKP_USUARIO(
    ->   IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
    ->   IDUSUARIO INT,
    ->   NOME VARCHAR(30),
    ->   LOGIN VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.00 sec)
```

## 🔨 **CRIANDO A TRIGGER `BACK_USER` PARA FAZER UM BACKUP DO USUARIO DELETADO**;

## **PASSO 3:** CRIANDO A TRIGGER `BACK_USER`;
```SQL
-- INPUT:
DELIMITER $

CREATE TRIGGER BACK_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW
BEGIN

  INSERT INTO BKP_USUARIO VALUES(
    NULL,
    OLD.IDUSUARIO,
    OLD.NOME,
    OLD.LOGIN
  );

END
$

DELIMITER ;

-- OUTPUT:
mysql> DELIMITER $
mysql>
mysql> CREATE TRIGGER BACK_USER
    -> BEFORE DELETE ON USUARIO
    -> FOR EACH ROW
    -> BEGIN
    ->
    ->   INSERT INTO BKP_USUARIO VALUES(
    ->     NULL,
    ->     OLD.IDUSUARIO,
    ->     OLD.NOME,
    ->     OLD.LOGIN
    ->   );
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> DELIMITER ;
```

## **PASSO 4:** ALIMENTANDO E CHECANDO A `TABELA USUARIO`;
```SQL
-- INPUT:
INSERT INTO USUARIO VALUES(NULL,'ANDRADE','ANDRADE2009','HEXACAMPEAO');

SELECT * FROM USUARIO;

-- OUTPUT:
mysql> INSERT INTO USUARIO VALUES(NULL,'ANDRADE','ANDRADE2009','HEXACAMPEAO');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> SELECT * FROM USUARIO;
+-----------+---------+-------------+-------------+
| IDUSUARIO | NOME    | LOGIN       | SENHA       |
+-----------+---------+-------------+-------------+
|         1 | ANDRADE | ANDRADE2009 | HEXACAMPEAO |
+-----------+---------+-------------+-------------+
1 row in set (0.00 sec)
```

## **PASSO 5:** DELETANDO DADOS DA TABELA `USUARIO` E CHECANDO O BACKUP FEITO NA TABELA `BKP_USUARIO`;
```SQL
-- INPUT:
DELETE FROM USUARIO WHERE IDUSUARIO = '1';

SELECT * FROM BKP_USUARIO;

-- OUTPUT:
mysql> DELETE FROM USUARIO WHERE IDUSUARIO = '1';
Query OK, 1 row affected, 1 warning (0.05 sec)

mysql>
mysql> SELECT * FROM BKP_USUARIO;
+----------+-----------+---------+-------------+
| IDBACKUP | IDUSUARIO | NOME    | LOGIN       |
+----------+-----------+---------+-------------+
|        1 |         1 | ANDRADE | ANDRADE2009 |
+----------+-----------+---------+-------------+
1 row in set (0.00 sec)
```
