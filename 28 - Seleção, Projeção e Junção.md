# 👉 **Seleção em Banco de Dados:**

## ⁉ **Definição:**

    - É uma subconjunto  do conjunto total de registros de uma tabela.

    - A seleção, também conhecida como filtro, é uma operação que extrai um subconjunto de linhas de uma tabela com base em uma condição específica.

    - Utiliza a cláusula `WHERE` em uma consulta SQL. Cláusula de seleção.

## 👩‍🏫 **Exemplo:**

    ```sql
    SELECT * FROM Clientes WHERE Cidade = 'São Paulo';
    ```

    ```sql
    SELECT NOME, SEXO, EMAIL
    FROM CLIENTE
    WHERE SEXO = 'F';
    ```

    ```sql
    SELECT NUMERO
    FROM TELEFONE
    WHERE TIPO = 'CEL';
    ```

## 🎥 **Projeção em Banco de Dados:**

## ⁉ **Definição:**

    - Mostrar algo na tela. É tudo que você quer ver na tela.

    - A projeção é uma operação que extrai um subconjunto de colunas de uma tabela, mostrando apenas os atributos desejados.

    - Utiliza a cláusula `SELECT` em uma consulta SQL.

## 👩‍🏫 **Exemplo:**

    ```sql
    SELECT NOME, EMAIL FROM CLIENTES;
    ```

    ```sql
    SELECT NOW() AS DATA_ATUAL;
    ```

    ```sql
    SELECT 2 + 2 AS SOMA;
    ```

    ```sql
    SELECT 2 + 2 AS SOMA;
    ```

    ```sql
    SELECT 2 + 2 AS SOMA, NOME, NOW()
    FROM CLIENTE;
    ```

## 🔌 **Junção em Banco de Dados:**

## ⁉ **Definição:**

    - A junção é uma operação que combina linhas de duas ou mais tabelas com base em uma condição de relacionamento entre elas.
    
    - Tipos comuns de junção incluem INNER JOIN, LEFT JOIN, RIGHT JOIN e FULL JOIN.

## 👩‍🏫 **Exemplo (INNER JOIN):**

    ```sql
    SELECT Pedidos.NumeroPedido, Clientes.Nome
    FROM Pedidos
    INNER JOIN Clientes ON Pedidos.IDCliente = Clientes.IDCliente;
    ```

## 💭 **Considerações Adicionais:**
  
  - **Performance:**
    - A eficiência na execução de consultas envolve otimização, índices e escolhas adequadas de operações.
  - **Condições de Junção:**
    - As condições de junção podem envolver igualdade (`=`), desigualdade (`<>`), entre outras.
  - **Operadores Lógicos:**
    - Em operações de seleção, operadores lógicos como `AND`, `OR` e `NOT` são utilizados para criar condições mais complexas.

    ```sql
    SELECT NOME, SEXO, EMAIL  /* PROJEÇÃO */

    FROM Clientes   /* ORIGEM */
    
    WHERE SEXO = 'F';   /* SELEÇÃO */
    ```

## 👩‍🏫 **Exemplo Combinado:**

  - **Consulta com Seleção, Projeção e Junção:**

    ```sql
    SELECT Pedidos.NumeroPedido, Clientes.Nome, Pedidos.DataPedido
    FROM Pedidos
    INNER JOIN Clientes ON Pedidos.IDCliente = Clientes.IDCliente
    WHERE Pedidos.DataPedido >= '2023-01-01';
    ```
  
  - **Resultado:**
    ```plaintext
    | NumeroPedido | Nome         | DataPedido  |
    |--------------|--------------|-------------|
    | 1            | Maria Silva  | 2023-02-15  |
    | 2            | João Oliveira| 2023-03-20  |
    ```
