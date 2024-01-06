# 🤹‍♀️ **DML**

## ⁉ **Definição:**

- DML, ou Data Manipulation Language, é uma linguagem utilizada para manipular dados em um banco de dados. Ela permite realizar operações de inserção, atualização, exclusão e recuperação de dados.

## 👨‍💻 **Principais Comandos DML:**

  - **SELECT:**
    O comando SELECT é usado para recuperar dados de uma ou mais tabelas.

  - **INSERT:**
    O comando INSERT é utilizado para adicionar novos registros a uma tabela.

  - **UPDATE:**
    O comando UPDATE permite modificar os dados existentes em uma tabela.

  - **DELETE:**
    O comando DELETE é usado para remover registros de uma tabela.

## 👩‍🏫 **Exemplos de Utilização:**

  - **SELECT:**

    ```sql
    SELECT Nome, Idade FROM Clientes WHERE Cidade = 'São Paulo';
    ```

  - **INSERT:**

    ```sql
    INSERT INTO Produtos (Nome, Preco) VALUES ('Notebook', 1499.99);
    ```

  - **UPDATE:**

    ```sql
    UPDATE Clientes SET Sobrenome = 'Silva' WHERE ClienteID = 1;
    ```

  - **DELETE:**

    ```sql
    DELETE FROM Pedidos WHERE NumeroPedido = 1001;
    ```

## 👩‍🏫 **EXEMPLO PRÁTICO `UPDATE`:**

- `INSERT`

  - **Inserção de Dados faz parte do DATA MANIPULATION LANGUAGE**

```SQL INPUT
INSERT INTO CLIENTE VALUES(NULL,'PAULA','M',NULL,'789456447');
INSERT INTO ENDERECO VALUES(NULL,'RUA JOAQUIM SILVA','ALVORADA','NITEROI','RJ',7);
```
```SQL OUTPUT
mysql> INSERT INTO CLIENTE VALUES(NULL,'PAULA','M',NULL,'789456447');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA JOAQUIM SILVA','ALVORADA','NITEROI','RJ',7);
Query OK, 1 row affected (0.00 sec)
```

- `FILTROS`

  - **Filtragem e Subscrição de Dados fazem parte do DATA MANIPULATION LANGUAGE**

```SQL INPUT
SELECT * FROM CLIENTE
WHERE SEXO = 'M';
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE SEXO = 'M';
+-----------+--------+------+------------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF         |
+-----------+--------+------+------------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM.BR   | 12378945613 |
|         2 | CARLOS | M    | CARLOS@IG.COM.BR | 45612378956 |
|         5 | JORGE  | M    | JORGE@IG.COM.BR  | 75689412325 |
|         6 | CELIA  | M    | CELIA@IG.COM.BR  | 74896512325 |
|         7 | PAULA  | M    | NULL             | 789456447   |
+-----------+--------+------+------------------+-------------+
5 rows in set (0.00 sec)
```

- `CONFIRMANDO ID PARA ALTERAÇÃO`

- **Nunca faça um `UPDATE` de um registro sem fazer um SELECT (PROJETAR) da chave primária e seus respectivos dados
para assegurar a correção correta do registro desejado;**


  - PASSO 1:

```SQL INPUT
SELECT * FROM CLIENTE
WHERE IDCLIENTE = 7;
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE IDCLIENTE = 7;
+-----------+-------+------+-------+-----------+
| IDCLIENTE | NOME  | SEXO | EMAIL | CPF       |
+-----------+-------+------+-------+-----------+
|         7 | PAULA | M    | NULL  | 789456447 |
+-----------+-------+------+-------+-----------+
1 row in set (0.00 sec)
```

- `UPDATE`

  - PASSO 2:

```SQL INPUT
UPDATE CLIENTE
SET SEXO = 'F'
WHERE IDCLIENTE = 7;
```
```SQL OUTPUT
mysql> UPDATE CLIENTE
    -> SET SEXO = 'F'
    -> WHERE IDCLIENTE = 7;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
```

  - PASSO 3:

```SQL INPUT
SELECT * FROM CLIENTE
WHERE IDCLIENTE = '7';
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE IDCLIENTE = '7';
+-----------+-------+------+-------+-----------+
| IDCLIENTE | NOME  | SEXO | EMAIL | CPF       |
+-----------+-------+------+-------+-----------+
|         7 | PAULA | F    | NULL  | 789456447 |
+-----------+-------+------+-------+-----------+
1 row in set (0.02 sec)
```

## 👩‍🏫 **EXEMPLO PRÁTICO `DELETE`:**

- `INSERT`

```SQL INPUT
INSERT INTO CLIENTE VALUES(NULL,'XXX','M',NULL,'XX');
```
```SQL OUTPUT
mysql> INSERT INTO CLIENTE VALUES(NULL,'XXX','M',NULL,'XX');
Query OK, 1 row affected (0.00 sec)
```

- `SELECT`

```SQL INPUT
SELECT * FROM CLIENTE;
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE;
+-----------+--------+------+------------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF         |
+-----------+--------+------+------------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM.BR   | 12378945613 |
|         2 | CARLOS | M    | CARLOS@IG.COM.BR | 45612378956 |
|         3 | ANA    | F    | ANA@IG.COM.BR    | 15975312312 |
|         4 | CLARA  | F    | NULL             | 14785236989 |
|         5 | JORGE  | M    | JORGE@IG.COM.BR  | 75689412325 |
|         6 | CELIA  | M    | CELIA@IG.COM.BR  | 74896512325 |
|         7 | PAULA  | F    | NULL             | 789456447   |
|         8 | XXX    | M    | NULL             | XX          |
+-----------+--------+------+------------------+-------------+
8 rows in set (0.00 sec)
```

- `CONFIRMANDO O ID DO REGISTRO A SER ALTERADO`

```SQL INPUT
SELECT * FROM CLIENTE
WHERE IDCLIENTE ='8';
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE IDCLIENTE ='8';
+-----------+------+------+-------+------+
| IDCLIENTE | NOME | SEXO | EMAIL | CPF  |
+-----------+------+------+-------+------+
|         8 | XXX  | M    | NULL  | XX   |
+-----------+------+------+-------+------+
1 row in set (0.00 sec)
```

- `DELETANDO O REGISTRO DESEJADO, APÓS A CONFIRMAÇÃO DO ID DO MESMO`

```SQL INPUT
DELETE FROM CLIENTE
WHERE IDCLIENTE = 8;
```
```SQL OUTPUT
mysql> DELETE FROM CLIENTE
    -> WHERE IDCLIENTE = 8;
Query OK, 1 row affected (0.00 sec)
```

- `DANDO UM SELECT NO REGISTRO PARA CONFIRMAR A ALTERAÇÃO`

```SQL INPUT
SELECT * FROM CLIENTE;
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE;
+-----------+--------+------+------------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF         |
+-----------+--------+------+------------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM.BR   | 12378945613 |
|         2 | CARLOS | M    | CARLOS@IG.COM.BR | 45612378956 |
|         3 | ANA    | F    | ANA@IG.COM.BR    | 15975312312 |
|         4 | CLARA  | F    | NULL             | 14785236989 |
|         5 | JORGE  | M    | JORGE@IG.COM.BR  | 75689412325 |
|         6 | CELIA  | M    | CELIA@IG.COM.BR  | 74896512325 |
|         7 | PAULA  | F    | NULL             | 789456447   |
+-----------+--------+------+------------------+-------------+
7 rows in set (0.00 sec)
```

## 🔁 **Transações:**

- As operações DML podem ser agrupadas em transações, garantindo que todas sejam executadas com sucesso ou nenhuma delas.

- **Commit e Rollback:**

  - **COMMIT:**
    Confirma as alterações realizadas em uma transação.

  - **ROLLBACK:**
    Desfaz as alterações em uma transação, revertendo para o estado anterior.


## ⚠ **Importância:**

- DML desempenha um papel crucial na manipulação eficiente e precisa dos dados em um banco de dados, permitindo a interação com as informações armazenadas.

## 👮‍♀️ **Segurança:**

  - O acesso a comandos DML pode ser controlado por meio de permissões no banco de dados, garantindo segurança e integridade dos dados.

## 🤔💭 **Conclusão:**

  - DML é fundamental para interagir dinamicamente com dados em um banco de dados, possibilitando a inserção, atualização, exclusão e recuperação de informações conforme necessário.