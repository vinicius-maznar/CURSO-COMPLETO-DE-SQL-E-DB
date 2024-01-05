# 🔌 **INNER JOIN em Banco de Dados:**
  
## ⁉ **Definição:**

    - O INNER JOIN é um tipo de junção que retorna apenas as linhas que têm correspondência nas duas tabelas envolvidas na operação.

    - Baseia-se em uma condição de igualdade entre as colunas especificadas nas cláusulas `ON` ou `USING`.

    - Pode-se juntar quantas tabelas for preciso. O uso da cláusula 'JOIN' É IRRESTRITO, logicamente dependendo do processamento.

## 🆎 **Sintaxe Básica:**

  ```sql
    SELECT colunas
    FROM tabela1
    INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
  ```
  
## 👩‍🏫 - **EXEMPLO I:**

  ```sql
    SELECT Clientes.Nome, Pedidos.NumeroPedido, Pedidos.DataPedido
    FROM Clientes
    INNER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente
    WHERE Pedidos.DataPedido >= '2023-01-01';
  ```

## 👩‍🏫 **EXEMPLO II:**

  - **INPUT**
```SQL
SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
  INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
  INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
```

  - **OUTPUT**
```SQL
mysql> SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
    -> FROM CLIENTE
    ->   INNER JOIN ENDERECO
    -> ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
    ->   INNER JOIN TELEFONE
    -> ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;
+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
+--------+------+---------+----------------+------+----------+
10 rows in set (0.03 sec)
```
## 🔰 PONTEIRAMENTO (COM ALIAS):

  - O uso de ALIAS (apelidos) para as tabelas melhoram performance do banco.

  - **INPUT**
```SQL
SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
  INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
  INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;
```

- **OUTPUT**
```SQL
mysql> SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    ->   INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    ->   INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE;
+--------+------+---------+----------------+------+----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO   |
+--------+------+---------+----------------+------+----------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 87866896 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 99667587 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 66687899 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 78989765 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 99766676 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 54768899 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 88687909 |
| JORGE  | M    | CENTRO  | VITORIA        | CEL  | 78458743 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 56576876 |
| JORGE  | M    | CENTRO  | VITORIA        | RES  | 89986668 |
+--------+------+---------+----------------+------+----------+
10 rows in set (0.00 sec)
```
Resultados do INNER JOIN:**

  - Retorna apenas as linhas onde há correspondência entre as colunas especificadas na condição de junção.

  - Exclui as linhas onde não há correspondência nas duas tabelas.

## 🔨 **Utilidade e Aplicações:**

  - **Recuperação de Dados Relacionados:**

    - Útil para obter dados de tabelas relacionadas, como clientes e seus pedidos.

  - **Operações de Filtragem:**

    - Pode ser combinado com condições adicionais na cláusula `WHERE` para filtrar resultados com base em critérios específicos.

  - **Relacionamento de Tabelas:**

    - Fundamenta-se em chaves primárias e estrangeiras, estabelecendo relacionamentos significativos entre tabelas.

## 💭 **Considerações Adicionais:**

  - **Desempenho:**

    - O desempenho de consultas com INNER JOIN pode ser impactado pela presença de índices nas colunas envolvidas na condição de junção.

  - **Cláusulas Relacionadas:**

    - Além de INNER JOIN, existem outros tipos de junção, como LEFT JOIN, RIGHT JOIN e FULL JOIN, cada um com suas características específicas.

## 👩‍🏫 **Exemplo Prático Combinado:**

  - **Consulta com INNER JOIN e Condição Adicional:**

    ```sql
    SELECT Clientes.Nome, Pedidos.NumeroPedido, Pedidos.DataPedido
    FROM Clientes
    INNER JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente
    WHERE Pedidos.DataPedido >= '2023-01-01';
    ```

  - **Resultado:**
    ```plaintext
    | Nome         | NumeroPedido | DataPedido  |
    |--------------|--------------|-------------|
    | Maria Silva  | 1            | 2023-02-15  |
    | João Oliveira| 2            | 2023-03-20  |
    ```
