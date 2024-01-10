# ↔⌨ **OPERAÇÕES EM LINHAS**

# ⚠ **NOTA 1: AO APLICAR UMA ALIAS NA PROJEÇÃO DE UMA COLUNA, UMA BOA PRÁTICA É SEMPRE COLOCAR O NOME DESSA ALIAS ENTRE ASPAS DUPLAS - `"<NOME DA ALIAS>"`**

## **PASSO 1:** ANALISANDO A `TABELA VENDEDORES`;
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

# ⚠ **NOTA 2: TRAZENDO A `SOMA` E A `MÉDIA` TRIMESTRAL DOS `VENDEDORES` DESEJADOS**
```SQL
/*INPUT*/
SELECT NOME, JANEIRO, FEVEREIRO, MARCO,
		(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
		TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT NOME, JANEIRO, FEVEREIRO, MARCO,
    -> (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
    -> TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
    -> FROM VENDEDORES;
+----------+-----------+-----------+-----------+------------+-----------+
| NOME     | JANEIRO   | FEVEREIRO | MARCO     | TOTAL      | MEDIA     |
+----------+-----------+-----------+-----------+------------+-----------+
| MARIA    |   5865.78 |   6768.87 |   4467.90 |   17102.55 |   5700.84 |
| ANTONIO  |  78769.78 |   6685.87 |   6664.90 |   92120.55 |  30706.85 |
| CLARA    |   5779.78 | 446886.88 |   8965.90 |  461632.56 | 153877.51 |
| ANDERSON | 676545.75 |  77544.87 | 578665.88 | 1332756.49 | 444252.16 |
| IVONE    |  57789.78 |  44774.87 |  68665.90 |  171230.55 |  57076.85 |
| JOAO     |   4785.78 |  66478.87 |   6887.90 |   78152.55 |  26050.84 |
| CELIA    |  89667.78 |  57654.87 |   5755.90 |  153078.55 |  51026.18 |
| CARLOS   |  76234.78 |  88346.87 |   5756.90 |  170338.55 |  56779.51 |
+----------+-----------+-----------+-----------+------------+-----------+
8 rows in set (0.00 sec)
```

# ⚠ **NOTA 3: APLICANDO `DESCONTO` EM UMA `SOMA` DE `REGISTROS` DESEJADOS**
```SQL
/*INPUT*/
SELECT NOME, JANEIRO, FEVEREIRO, MARCO,
		(JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
		(JANEIRO+FEVEREIRO+MARCO) * .25 AS "DESCONTO",
		TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT NOME, JANEIRO, FEVEREIRO, MARCO,
    -> (JANEIRO+FEVEREIRO+MARCO) AS "TOTAL",
    -> (JANEIRO+FEVEREIRO+MARCO) * .25 AS "DESCONTO",
    -> TRUNCATE((JANEIRO+FEVEREIRO+MARCO)/3,2) AS "MEDIA"
    -> FROM VENDEDORES;
+----------+-----------+-----------+-----------+------------+-----------+-----------+
| NOME     | JANEIRO   | FEVEREIRO | MARCO     | TOTAL      | DESCONTO  | MEDIA     |
+----------+-----------+-----------+-----------+------------+-----------+-----------+
| MARIA    |   5865.78 |   6768.87 |   4467.90 |   17102.55 |   4275.64 |   5700.84 |
| ANTONIO  |  78769.78 |   6685.87 |   6664.90 |   92120.55 |  23030.14 |  30706.85 |
| CLARA    |   5779.78 | 446886.88 |   8965.90 |  461632.56 | 115408.14 | 153877.51 |
| ANDERSON | 676545.75 |  77544.87 | 578665.88 | 1332756.49 | 333189.12 | 444252.16 |
| IVONE    |  57789.78 |  44774.87 |  68665.90 |  171230.55 |  42807.64 |  57076.85 |
| JOAO     |   4785.78 |  66478.87 |   6887.90 |   78152.55 |  19538.14 |  26050.84 |
| CELIA    |  89667.78 |  57654.87 |   5755.90 |  153078.55 |  38269.64 |  51026.18 |
| CARLOS   |  76234.78 |  88346.87 |   5756.90 |  170338.55 |  42584.64 |  56779.51 |
+----------+-----------+-----------+-----------+------------+-----------+-----------+
8 rows in set (0.00 sec)
```
