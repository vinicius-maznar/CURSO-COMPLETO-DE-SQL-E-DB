# 🗃🗝 **ORGANIZAÇÃO DE CHAVES**

## 👩‍🏫 **EXEMPLO BASE** `TABELA JOGADOR` E A `TABELA TIME`;

## ⁉ **Definição:**

  - Constraints são regras aplicadas a uma ou mais colunas de uma tabela para garantir a integridade e consistência dos dados. As chaves são um tipo comum de constraint que define relações entre tabelas.

  - **Chave Primária (PRIMARY KEY):**
    Uma chave primária é uma constraint que identifica exclusivamente cada registro em uma tabela. É usada para garantir unicidade e permite a indexação eficiente da tabela.

  - **Chave Estrangeira (FOREIGN KEY):**
    A chave estrangeira é uma constraint que cria uma relação entre duas tabelas, referenciando a chave primária de uma tabela na outra. Isso mantém a integridade referencial entre as tabelas.

  - **Chave Única (UNIQUE):**
    A constraint UNIQUE assegura que todos os valores em uma coluna ou conjunto de colunas sejam únicos. Não permite duplicatas, mas permite valores nulos, desde que haja no máximo um valor nulo.

  - **Chave Alternativa (ALTERNATE KEY):**
    Uma chave alternativa é uma coluna ou conjunto de colunas que poderiam ter sido escolhidas como chave primária se a chave primária atual não existisse.

# ⚠ **NOTA 1: INTEGRIDADE REFERENCIAL EM SQL:**

- A integridade referencial é um conceito fundamental em bancos de dados que garante a consistência dos relacionamentos entre tabelas.

  - **Chave Estrangeira (FOREIGN KEY):**
    - Estabelece uma conexão entre duas tabelas, onde a coluna na tabela referenciada deve ter valores correspondentes à coluna na tabela referenciadora.
    - Mantém a consistência dos dados, evitando relações inválidas.

  - **Objetivo:**
    - Assegura que não seja possível criar registros dependentes sem referência a registros existentes na tabela pai.
    - Evita a criação de relações órfãs ou inválidas.

  - **Ações de Atualização e Exclusão:**
    - **CASCADE:** Atualiza ou exclui automaticamente os registros dependentes na tabela referenciadora.
    - **SET NULL:** Define os valores das chaves estrangeiras como nulos na tabela referenciadora.
    - **SET DEFAULT:** Define os valores das chaves estrangeiras como os valores padrão.
    - **RESTRICT:** Impede a atualização ou exclusão se existirem registros dependentes.

## **PASSO 1:** CRIANDO A `TABELA JOGADOR` E A `TABELA TIME`;
```SQL
/*INPUT*/
CREATE TABLE JOGADOR(
	IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30)
);

CREATE TABLE TIMES(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	NOME_TIME VARCHAR(30),
	ID_JOGADOR INT,
	FOREIGN KEY(ID_JOGADOR) REFERENCES JOGADOR (IDJOGADOR)
);

/*OUTPUT*/
mysql> CREATE TABLE JOGADOR(
    -> IDJOGADOR INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> CREATE TABLE TIMES(
    -> IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME_TIME VARCHAR(30),
    -> ID_JOGADOR INT,
    -> FOREIGN KEY(ID_JOGADOR) REFERENCES JOGADOR (IDJOGADOR)
    -> );
Query OK, 0 rows affected (0.02 sec)
```

## **PASSO 2:** ALIMENTANDO A `TABELA JOGADOR` E A `TABELA TIME`;
```SQL
/*INPUT*/
INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);

/*OUTPUT*/
mysql> INSERT INTO JOGADOR VALUES(NULL,'GUERRERO');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TIMES VALUES(NULL,'FLAMENGO',1);
Query OK, 1 row affected (0.01 sec)
```

## 🔎✔ **CONFIRMANDO A INSERÇÃO DE DADOS:**

```SQL
/*INPUT*/
SELECT * FROM TIMES;

/*OUTPUT*/
mysql> SELECT * FROM TIMES;
+--------+-----------+------------+
| IDTIME | NOME_TIME | ID_JOGADOR |
+--------+-----------+------------+
|      1 | FLAMENGO  |          1 |
+--------+-----------+------------+
1 row in set (0.00 sec)
```
