# 🗄🎲 **FUNÇÕES DE AGREGAÇÕES NUMÉRICAS**

## 👩‍🏫 **EXEMPLO BASE** `TABELA VENDEDORES`;

## **PASSO 1:** CRIANDO A `TABELA VENDEDORES`;
```SQL
/*INPUT*/
CREATE TABLE VENDEDORES(
	IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30),
	SEXO CHAR(1),
	JANEIRO FLOAT(10,2),
	FEVEREIRO FLOAT(10,2),
	MARCO FLOAT(10,2)
);

/*OUTPUT*/
mysql> CREATE TABLE VENDEDORES(
    -> IDVENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30),
    -> SEXO CHAR(1),
    -> JANEIRO FLOAT(10,2),
    -> FEVEREIRO FLOAT(10,2),
    -> MARCO FLOAT(10,2)
    -> );
Query OK, 0 rows affected (0.04 sec)
```

## **PASSO 2:** ALIMENTANDO A `TABELA VENDEDORES`;
```SQL
/*INPUT*/
INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);

/*OUTPUT*/
mysql> INSERT INTO VENDEDORES VALUES(NULL,'CARLOS','M',76234.78,88346.87,5756.90);
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'MARIA','F',5865.78,6768.87,4467.90);
Query OK, 1 row affected (0.19 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'ANTONIO','M',78769.78,6685.87,6664.90);
Query OK, 1 row affected (0.28 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'CLARA','F',5779.78,446886.87,8965.90);
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'ANDERSON','M',676545.78,77544.87,578665.90);
Query OK, 1 row affected (0.11 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'IVONE','F',57789.78,44774.87,68665.90);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'JOAO','M',4785.78,66478.87,6887.90);
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO VENDEDORES VALUES(NULL,'CELIA','F',89667.78,57654.87,5755.90);
Query OK, 1 row affected (0.05 sec)
```

## **PASSO 3:** CONFERINDO OS DADOS DA `TABELA VENDEDORES`;
```SQL
/*INPUT*/
SELECT * FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT * FROM VENDEDORES;
+------------+----------+------+-----------+-----------+-----------+
| IDVENDEDOR | NOME     | SEXO | JANEIRO   | FEVEREIRO | MARCO     |
+------------+----------+------+-----------+-----------+-----------+
|          1 | MARIA    | F    |   5865.78 |   6768.87 |   4467.90 |
|          2 | ANTONIO  | M    |  78769.78 |   6685.87 |   6664.90 |
|          3 | CLARA    | F    |   5779.78 | 446886.88 |   8965.90 |
|          4 | ANDERSON | M    | 676545.75 |  77544.87 | 578665.88 |
|          5 | IVONE    | F    |  57789.78 |  44774.87 |  68665.90 |
|          6 | JOAO     | M    |   4785.78 |  66478.87 |   6887.90 |
|          7 | CELIA    | F    |  89667.78 |  57654.87 |   5755.90 |
|          8 | CARLOS   | M    |  76234.78 |  88346.87 |   5756.90 |
+------------+----------+------+-----------+-----------+-----------+
8 rows in set (0.00 sec)
```

# ⚠ **NOTA 1: `MAX()` - TRAZER O VALOR MÁXIMO DE UMA COLUNA (NO EXEMPLO ABAIXO, A COLUNA `FEVEREIRO`)**

```SQL
/*INPUT*/
SELECT MAX(FEVEREIRO) AS MAIOR_FEV
FROM  VENDEDORES;

/*OUTPUT*/
mysql> SELECT MAX(FEVEREIRO) AS MAIOR_FEV
    -> FROM  VENDEDORES;
+-----------+
| MAIOR_FEV |
+-----------+
| 446886.88 |
+-----------+
1 row in set (0.54 sec)
```

# ⚠ **NOTA 2: `MIN()` - TRAZER O VALOR MÍNIMO DE UMA COLUNA (NO EXEMPLO ABAIXO, A COLUNA `FEVEREIRO`)**

```SQL
/*INPUT*/
SELECT MIN(FEVEREIRO) AS MENOR_FEV
FROM  VENDEDORES;

/*OUTPUT*/
mysql> SELECT MIN(FEVEREIRO) AS MENOR_FEV
    -> FROM  VENDEDORES;
+-----------+
| MENOR_FEV |
+-----------+
|   6685.87 |
+-----------+
1 row in set (0.00 sec)
```

# ⚠ **NOTA 3: `AVG()` - TRAZER O VALOR MÉDIO DE UMA COLUNA (NO EXEMPLO ABAIXO, A COLUNA `FEVEREIRO`)**

```SQL
/*INPUT*/
SELECT AVG(FEVEREIRO) AS MEDIA_FEV
FROM  VENDEDORES;

/*OUTPUT*/
mysql> SELECT AVG(FEVEREIRO) AS MEDIA_FEV
    -> FROM  VENDEDORES;
+--------------+
| MEDIA_FEV    |
+--------------+
| 99392.744873 |
+--------------+
1 row in set (0.00 sec)
```

# ⚠ **NOTA 4: VÁRIAS FUNÇÕES EM UMA QUERY**

```SQL
/*INPUT*/
SELECT MAX(JANEIRO) AS MAX_JAN,
							MIN(JANEIRO) AS MIN_JAN,
							AVG(JANEIRO) AS AVG_JAN
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT MAX(JANEIRO) AS MAX_JAN,
    -> MIN(JANEIRO) AS MIN_JAN,
    -> AVG(JANEIRO) AS AVG_JAN
    -> FROM VENDEDORES;
+-----------+---------+---------------+
| MAX_JAN   | MIN_JAN | AVG_JAN       |
+-----------+---------+---------------+
| 676545.75 | 4785.78 | 124429.901794 |
+-----------+---------+---------------+
1 row in set (0.02 sec)

mysql>
```

# ⚠ **NOTA 4: `TRUNCATE` - MÁSCARA DE FORMATAÇÃO PARA CASA DECIMAIS**

```SQL
/*INPUT*/
SELECT MAX(JANEIRO) AS MAX_JAN,
							MIN(JANEIRO) AS MIN_JAN,
							TRUNCATE(AVG(JANEIRO),2) AS AVG_JAN
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT MAX(JANEIRO) AS MAX_JAN,
    -> MIN(JANEIRO) AS MIN_JAN,
    -> TRUNCATE(AVG(JANEIRO),2) AS AVG_JAN
    -> FROM VENDEDORES;
+-----------+---------+-----------+
| MAX_JAN   | MIN_JAN | AVG_JAN   |
+-----------+---------+-----------+
| 676545.75 | 4785.78 | 124429.90 |
+-----------+---------+-----------+
1 row in set (1.28 sec)
```
