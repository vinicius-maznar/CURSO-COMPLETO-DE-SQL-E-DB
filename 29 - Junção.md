# 👨‍👨‍👦 **Junção em Banco de Dados:**

## ⁉ **Definição:**

    - A junção é uma operação que combina linhas de duas ou mais tabelas com base em uma condição de relacionamento entre elas.

    - Tipos comuns de junção incluem INNER JOIN, LEFT JOIN, RIGHT JOIN e FULL JOIN.

## 👩‍🏫 **Exemplo:**

  - **Selecionando as informações da primeira tabela a ser unida.**

  - INPUT:
    ```sql
    SELECT NOME, EMAIL, IDCLIENTE
    FROM CLIENTE;
    ```

  - OUTPUT:
  ```SQL
  mysql> SELECT NOME, EMAIL, IDCLIENTE
      -> FROM CLIENTE;
  +--------+------------------+-----------+
  | NOME   | EMAIL            | IDCLIENTE |
  +--------+------------------+-----------+
  | JOAO   | JOAO@IG.COM.BR   |         1 |
  | CARLOS | CARLOS@IG.COM.BR |         2 |
  | ANA    | ANA@IG.COM.BR    |         3 |
  | CLARA  | NULL             |         4 |
  | JORGE  | JORGE@IG.COM.BR  |         5 |
  | CELIA  | CELIA@IG.COM.BR  |         6 |
  +--------+------------------+-----------+
  6 rows in set (0.00 sec)
  ```

  - **Selecionando as informações da segunda tabela a ser unida.**

  - INPUT:
    ```sql
    SELECT ID_CLIENTE, BAIRRO, CIDADE
    FROM ENDERECO;
    ```

  - OUTPUT:
  ```SQL
  mysql> SELECT ID_CLIENTE, BAIRRO, CIDADE
      -> FROM ENDERECO;
  +------------+----------+----------------+
  | ID_CLIENTE | BAIRRO   | CIDADE         |
  +------------+----------+----------------+
  |          4 | CENTRO   | B. HORIZONTE   |
  |          1 | CENTRO   | RIO DE JANEIRO |
  |          3 | JARDINS  | SAO PAULO      |
  |          2 | ESTACIO  | RIO DE JANEIRO |
  |          6 | FLAMENGO | RIO DE JANEIRO |
  |          5 | CENTRO   | VITORIA        |
  +------------+----------+----------------+
  6 rows in set (0.00 sec)
  ```
### - **UTILIZANDO A CLÁUSULA 'INNER JOIN':**


#### - SEM O FILTRO 'WHERE':

  - INPUT (COM COMENTÁRIOS):

  ```SQL
  SELECT NOME, SEXO, BAIRRO, CIDADE   /* PROJEÇÃO */
  FROM CLIENTE    /* ORIGEM */
    INNER JOIN ENDERECO     /* JUNÇÃO */
    ON IDCLIENTE = ID_CLIENTE;
  ```

  - INPUT (SEM COMENTÁRIOS):

  ```SQL
  SELECT NOME, SEXO, BAIRRO, CIDADE
  FROM CLIENTE
    INNER JOIN ENDERECO
    ON IDCLIENTE = ID_CLIENTE;
  ```

  - OUTPUT:
  
  ```SQL
  mysql> SELECT NOME, SEXO, BAIRRO, CIDADE
      -> FROM CLIENTE
      -> INNER JOIN ENDERECO
      -> ON IDCLIENTE = ID_CLIENTE;
  +--------+------+----------+----------------+
  | NOME   | SEXO | BAIRRO   | CIDADE         |
  +--------+------+----------+----------------+
  | CLARA  | F    | CENTRO   | B. HORIZONTE   |
  | JOAO   | M    | CENTRO   | RIO DE JANEIRO |
  | ANA    | F    | JARDINS  | SAO PAULO      |
  | CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
  | CELIA  | M    | FLAMENGO | RIO DE JANEIRO |
  | JORGE  | M    | CENTRO   | VITORIA        |
  +--------+------+----------+----------------+
  6 rows in set (0.00 sec)
  ``` 
  
#### - **COM O FILTRO 'WHERE'**

  - INPUT (COM COMENTÁRIOS):

  ```SQL
  SELECT NOME, SEXO, BAIRRO, CIDADE   /* PROJEÇÃO */
  FROM CLIENTE    /* ORIGEM */
    INNER JOIN ENDERECO     /* JUNÇÃO */
    ON IDCLIENTE = ID_CLIENTE
  WHERE SEXO = 'F';   /* SELEÇÃO */
  ```

  - INPUT (SEM COMENTÁRIOS):

  ```SQL
  SELECT NOME, SEXO, BAIRRO, CIDADE
  FROM CLIENTE
    INNER JOIN ENDERECO
    ON IDCLIENTE = ID_CLIENTE
  WHERE SEXO = 'F';
  ```

  - OUTPUT:

  ```SQL
  mysql> SELECT NOME, SEXO, BAIRRO, CIDADE
      -> FROM CLIENTE
      -> INNER JOIN ENDERECO
      -> ON IDCLIENTE = ID_CLIENTE
      -> WHERE SEXO = 'F';
  +-------+------+---------+--------------+
  | NOME  | SEXO | BAIRRO  | CIDADE       |
  +-------+------+---------+--------------+
  | CLARA | F    | CENTRO  | B. HORIZONTE |
  | ANA   | F    | JARDINS | SAO PAULO    |
  +-------+------+---------+--------------+
  2 rows in set (0.00 sec)
  ```  

## 🔨🔌 **Operações de Junção:**

### - **INNER JOIN:**

      - Retorna apenas as linhas que têm correspondência nas duas tabelas.

  ```sql
      SELECT Pedidos.NumeroPedido, Clientes.Nome
      FROM Pedidos
      INNER JOIN Clientes ON Pedidos.IDCliente = Clientes.IDCliente;
  ```
### - **LEFT JOIN (ou LEFT OUTER JOIN):**

      - Retorna todas as linhas da tabela à esquerda e as linhas correspondentes da tabela à direita. Se não houver correspondência, as colunas da tabela à direita terão valores nulos.
  
  ```sql
      SELECT Clientes.Nome, Pedidos.NumeroPedido
      FROM Clientes
      LEFT JOIN Pedidos ON Clientes.IDCliente = Pedidos.IDCliente;
  ```
### - **RIGHT JOIN (ou RIGHT OUTER JOIN):**

      - Retorna todas as linhas da tabela à direita e as linhas correspondentes da tabela à esquerda. Se não houver correspondência, as colunas da tabela à esquerda terão valores nulos.
      
  ```sql
      SELECT Pedidos.NumeroPedido, Clientes.Nome
      FROM Pedidos
      RIGHT JOIN Clientes ON Pedidos.IDCliente = Clientes.IDCliente;
  ```
### - **FULL JOIN (ou FULL OUTER JOIN):**

      - Retorna todas as linhas quando há uma correspondência em uma das tabelas. As colunas da tabela sem correspondência terão valores nulos.
     
   ```sql
      SELECT Pedidos.NumeroPedido, Clientes.Nome
      FROM Pedidos
      FULL JOIN Clientes ON Pedidos.IDCliente = Clientes.IDCliente;
  ```

## 🤔 **Considerações Adicionais:**

  - **Condições de Junção:**
    - As condições de junção são especificadas utilizando a cláusula `ON` e geralmente envolvem a igualdade entre colunas de tabelas diferentes.

  - **Desempenho:**
    - A escolha do tipo de junção e a utilização eficiente de índices podem impactar o desempenho das consultas.

  - **Operações Relacionadas:**
    - Além da junção, outras operações como seleção e projeção podem ser combinadas para obter resultados mais específicos.

- **Exemplo Prático:**
  - **Consulta com INNER JOIN:**

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
