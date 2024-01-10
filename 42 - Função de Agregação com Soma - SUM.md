# 🗄🎲 **FUNÇÕES DE AGREGAÇÃO COM SOMA - `SUM`**

## 👩‍🏫 **EXEMPLO BASE** `TABELA VENDEDORES`;

# ⚠ **NOTA 1: `SUM()` - SOMANDO TODOS OS VALORES DE UMA COLUNA**

```SQL
/*INPUT*/
SELECT SUM(JANEIRO) AS TOTAL_JAN
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT SUM(JANEIRO) AS TOTAL_JAN
    -> FROM VENDEDORES;
+-----------+
| TOTAL_JAN |
+-----------+
| 995439.21 |
+-----------+
1 row in set (0.00 sec)
```

# ⚠ **NOTA 2: VÁRIAS FUNÇÕES EM UMA QUERY COM `SUM()`**

```SQL
/*INPUT*/
SELECT SUM(JANEIRO) AS TOTAL_JAN,
							SUM(FEVEREIRO) AS TOTAL_FEV,
							SUM(MARCO) AS TOTAL_MAR
FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT SUM(JANEIRO) AS TOTAL_JAN,
    -> SUM(FEVEREIRO) AS TOTAL_FEV,
    -> SUM(MARCO) AS TOTAL_MAR
    -> FROM VENDEDORES;
+-----------+-----------+-----------+
| TOTAL_JAN | TOTAL_FEV | TOTAL_MAR |
+-----------+-----------+-----------+
| 995439.21 | 795141.96 | 685831.17 |
+-----------+-----------+-----------+
1 row in set (0.00 sec)
```

# ⚠ **NOTA 3: TOTAL DE VENDAS PRO SEXO COM O `SUM()`**

```SQL
/*INPUT*/
SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY SEXO;

/*OUTPUT*/
mysql> SELECT SEXO, SUM(MARCO) AS TOTAL_MARCO
    -> FROM VENDEDORES
    -> GROUP BY SEXO;
+------+-------------+
| SEXO | TOTAL_MARCO |
+------+-------------+
| F    |    87855.60 |
| M    |   597975.57 |
+------+-------------+
2 rows in set (1.55 sec)
```
