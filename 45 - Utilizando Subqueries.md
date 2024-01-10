# 📝 **UTILIZANDO SUBQUERIES**

## 👩‍🏫 **EXEMPLO BASE** `TABELA VENDEDORES`;

## ⁉ **DEFINIÇÃO:**

- Subqueries, ou subconsultas, referem-se a consultas aninhadas dentro de uma consulta principal em sql. elas permitem realizar operações complexas, filtragens ou comparações usando os resultados de uma consulta interna.

## 👉✔ **SELEÇÃO SIMPLES:**

- Subqueries podem ser usadas em condições de comparação direta, como encontrar registros com valores superiores à média de uma coluna, como exemplificado abaixo:
```SQL
SELECT NOME, SALARIO
FROM FUNCIONARIOS
WHERE SALARIO > (SELECT AVG(SALARIO) FROM FUNCIONARIOS);
```

# ⚠ **NOTA 1: SUBQUERY COM EXISTS:**

- A cláusula exists é utilizada para verificar a existência de resultados em uma subquery, como na seguinte expressão que busca clientes que fizeram pedidos:
```SQL
SELECT NOME
FROM CLIENTES
WHERE EXISTS (SELECT 1 FROM PEDIDOS WHERE PEDIDOS.CLIENTE_ID = CLIENTES.ID);
```

# ⚠ **NOTA 2: **SUBQUERY CORRELACIONADA:**

- Subqueries correlacionadas referenciam dados da consulta externa na subquery interna, permitindo comparações mais específicas, como exemplificado abaixo:
```SQL
SELECT NOME, SALARIO
FROM FUNCIONARIOS F1
WHERE SALARIO > (SELECT AVG(SALARIO) FROM FUNCIONARIOS F2 WHERE F2.DEPARTAMENTO_ID = F1.DEPARTAMENTO_ID);
```

# ⚠ **NOTA 3:**SUBQUERY COM IN:**

- A cláusula in é usada para comparar se um valor está presente em um conjunto de resultados da subquery, como no exemplo de encontrar produtos de uma categoria específica:
```SQL
SELECT NOME
FROM PRODUTOS
WHERE CATEGORIA_ID IN (SELECT ID FROM CATEGORIAS WHERE NOME = 'ELETRÔNICOS');
```

# ⚠ **NOTA 4: **SUBQUERY COM ANY/ALL:**

- As cláusulas any/all permitem comparações em que o resultado da subquery atende a uma condição específica, como na seguinte consulta que busca funcionários com salários maiores que todos os salários de um departamento:
```SQL
SELECT NOME, SALARIO
FROM FUNCIONARIOS
WHERE SALARIO > ALL (SELECT SALARIO FROM FUNCIONARIOS WHERE DEPARTAMENTO_ID = 2);
```


## 🔨 **TAREFA 1:** TRAGA O `NOME` DO `VENDEDOR` QUE VENDEU MENOS EM MARÇO;
```SQL
/*INPUT*/
SELECT NOME, MARCO
FROM VENDEDORES
WHERE MARCO = (
	SELECT MIN(MARCO) 
	FROM VENDEDORES
);

/*OUTPUT*/
mysql> SELECT NOME, MARCO
    -> FROM VENDEDORES
    -> WHERE MARCO = (
    -> SELECT MIN(MARCO)
    -> FROM VENDEDORES
    -> );
+-------+---------+
| NOME  | MARCO   |
+-------+---------+
| MARIA | 4467.90 |
+-------+---------+
1 row in set (0.00 sec)
```

## 🔨 **TAREFA 2:** TRAGA O `NOME` E O `VALOR` DO `VENDEDOR` QUE VENDEU MAIS EM MARÇO;
```SQL
/*INPUT*/
SELECT NOME, MARCO
FROM VENDEDORES
WHERE MARCO = (
	SELECT MAX(MARCO) 
	FROM VENDEDORES
);

/*OUTPUT*/
mysql> SELECT NOME, MARCO
    -> FROM VENDEDORES
    -> WHERE MARCO = (
    -> SELECT MAX(MARCO)
    -> FROM VENDEDORES
    -> );
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+
1 row in set (0.00 sec)
```

## 🔨 **TAREFA 3:** TRAGA O `NOME` E O `VALOR` DO `VENDEDOR` QUE VENDEU MAIS EM `MARCO`QUE O `VALOR MÉDIO` DE `FEVEREIRO`;
```SQL
/*INPUT*/
SELECT NOME, MARCO
FROM VENDEDORES
WHERE MARCO > (
	SELECT AVG(FEVEREIRO) 
	FROM VENDEDORES
);

/*OUTPUT*/
mysql> SELECT NOME, MARCO
    -> FROM VENDEDORES
    -> WHERE MARCO > (
    -> SELECT AVG(FEVEREIRO)
    -> FROM VENDEDORES
    -> );
+----------+-----------+
| NOME     | MARCO     |
+----------+-----------+
| ANDERSON | 578665.88 |
+----------+-----------+
1 row in set (0.00 sec)
```

## 🔨 **TAREFA 4:** TRAGA O `NOME` E O `VALOR` DO `VENDEDOR` QUE VENDEU EM `FEVEREIRO` MAIS QUE O `VALOR MÉDIO` DE `FEVEREIRO`;
```SQL
/*INPUT*/
SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE FEVEREIRO > (
	SELECT AVG(FEVEREIRO) 
	FROM VENDEDORES
);

/*OUTPUT*/
mysql> SELECT NOME, FEVEREIRO
    -> FROM VENDEDORES
    -> WHERE FEVEREIRO > (
    -> SELECT AVG(FEVEREIRO)
    -> FROM VENDEDORES
    -> );
+-------+-----------+
| NOME  | FEVEREIRO |
+-------+-----------+
| CLARA | 446886.88 |
+-------+-----------+
1 row in set (0.00 sec)
```

## **PASSO ADICIONAL:** CHECANDO A MÉDIA DE `FEVEREIRO` PARA COMPARAÇÃO E CONFIRMAÇÃO;
```SQL
/*INPUT*/
SELECT AVG(FEVEREIRO) FROM VENDEDORES;

/*OUTPUT*/
mysql> SELECT AVG(FEVEREIRO) FROM VENDEDORES;
+----------------+
| AVG(FEVEREIRO) |
+----------------+
|   99392.744873 |
+----------------+
1 row in set (0.00 sec)
```

## 🔨 **TAREFA 4:** TRAGA O `NOME` E O `VALOR` DO `VENDEDOR` QUE VENDEU EM `FEVEREIRO` MENOS QUE O `VALOR MÉDIO` DE `FEVEREIRO`;
```SQL
/*INPUT*/
SELECT NOME, FEVEREIRO
FROM VENDEDORES
WHERE FEVEREIRO < (
	SELECT AVG(FEVEREIRO) 
	FROM VENDEDORES
);

/*OUTPUT*/
mysql> SELECT NOME, FEVEREIRO
    -> FROM VENDEDORES
    -> WHERE FEVEREIRO < (
    -> SELECT AVG(FEVEREIRO)
    -> FROM VENDEDORES
    -> );
+----------+-----------+
| NOME     | FEVEREIRO |
+----------+-----------+
| MARIA    |   6768.87 |
| ANTONIO  |   6685.87 |
| ANDERSON |  77544.87 |
| IVONE    |  44774.87 |
| JOAO     |  66478.87 |
| CELIA    |  57654.87 |
| CARLOS   |  88346.87 |
+----------+-----------+
7 rows in set (0.01 sec)
```
