# 📖🎲 **DICIONÁRIO DE DADOS EM BANCOS DE DADOS:**

## ⁉ **DEFINIÇÃO:**
  - Um dicionário de dados é uma coleção organizada de metadados que descreve as estruturas, definições e relações no ambiente de um banco de dados.

  - **Metadados:**
    - Incluem informações sobre tabelas, colunas, tipos de dados, índices, chaves primárias, estrangeiras, procedimentos armazenados e outros elementos do banco de dados.

# ⚠ **NOTA 1: `METADADOS` = DADOS QUE ORGANIZAM OS PRÓPRIOS DADOS (DADOS DOS DADOS)**

## 🏷 **FINALIDADES:**

  - Fornece uma fonte centralizada e estruturada de informações sobre o banco de dados.
  
  - Facilita a compreensão da estrutura e organização dos dados.
  
  - Auxilia desenvolvedores, administradores e usuários na interação eficiente com o banco de dados.

## 🧩 **ELEMENTOS COMUNS:**
  
  - Descrições de tabelas e colunas.
  
  - Restrições e regras de integridade.
  
  - Definições de índices e chaves.
  
  - Informações sobre procedimentos armazenados e visões.
  
  - Detalhes sobre relacionamentos entre tabelas.

## 🎯 **IMPORTÂNCIA NA MODELAGEM DE DADOS:**

  - Essencial para o design, manutenção e compreensão dos bancos de dados.
  
  - Facilita a colaboração entre equipes de desenvolvimento, administração e análise de dados.

## 🔨 **TAREFA 1:** USANDO O DICIONÁRIO `INFORMATION_SCHEMA`;

## **PASSO 1:** CONECTANDO-SE A DB `INFORMATION_SCHEMA`;
```SQL
/*INPUT*/
USE INFORMATION_SCHEMA;

/*OUTPUT*/
mysql> USE INFORMATION_SCHEMA;
Database changed
```

## **PASSO 2:** VISUALIZANDO AS TABELAS DA DB `INFORMATION_SCHEMA`;
```SQL
/*INPUT*/
SHOW TABLES;

/*OUTPUT*/
mysql> SHOW TABLES;
+---------------------------------------+
| Tables_in_information_schema          |
+---------------------------------------+
| CHARACTER_SETS                        |
| COLLATIONS                            |
| COLLATION_CHARACTER_SET_APPLICABILITY |
| COLUMNS                               |
| COLUMN_PRIVILEGES                     |
| ENGINES                               |
| EVENTS                                |
| FILES                                 |
| GLOBAL_STATUS                         |
| GLOBAL_VARIABLES                      |
| KEY_COLUMN_USAGE                      |
| PARAMETERS                            |
| PARTITIONS                            |
| PLUGINS                               |
| PROCESSLIST                           |
| PROFILING                             |
| REFERENTIAL_CONSTRAINTS               |
| ROUTINES                              |
| SCHEMATA                              |
| SCHEMA_PRIVILEGES                     |
| SESSION_STATUS                        |
| SESSION_VARIABLES                     |
| STATISTICS                            |
| TABLES                                |
| TABLESPACES                           |
| TABLE_CONSTRAINTS                     |
| TABLE_PRIVILEGES                      |
| TRIGGERS                              |
| USER_PRIVILEGES                       |
| VIEWS                                 |
| INNODB_BUFFER_PAGE                    |
| INNODB_TRX                            |
| INNODB_BUFFER_POOL_STATS              |
| INNODB_LOCK_WAITS                     |
| INNODB_CMPMEM                         |
| INNODB_CMP                            |
| INNODB_LOCKS                          |
| INNODB_CMPMEM_RESET                   |
| INNODB_CMP_RESET                      |
| INNODB_BUFFER_PAGE_LRU                |
+---------------------------------------+
40 rows in set (0.00 sec)
```

## **PASSO 3:** LOCALIZANDO E DESCREVENDO A `TABELA TABLE_CONSTRAINTS`;
```SQL
/*INPUT*/
DESC TABLE_CONSTRAINTS;

/*OUTPUT*/
mysql> DESC TABLE_CONSTRAINTS;
+--------------------+--------------+------+-----+---------+-------+
| Field              | Type         | Null | Key | Default | Extra |
+--------------------+--------------+------+-----+---------+-------+
| CONSTRAINT_CATALOG | varchar(512) | NO   |     |         |       |
| CONSTRAINT_SCHEMA  | varchar(64)  | NO   |     |         |       |
| CONSTRAINT_NAME    | varchar(64)  | NO   |     |         |       |
| TABLE_SCHEMA       | varchar(64)  | NO   |     |         |       |
| TABLE_NAME         | varchar(64)  | NO   |     |         |       |
| CONSTRAINT_TYPE    | varchar(64)  | NO   |     |         |       |
+--------------------+--------------+------+-----+---------+-------+
6 rows in set (0.02 sec)
```

## **PASSO 4:** PROJETANDO AS COLUNAS DESEJADAS DA TABELA `TABLE_CONSTRAINTS`;
```SQL
/*INPUT*/
SELECT CONSTRAINT_SCHEMA AS "BANCO",
      TABLE_NAME AS "TABELA",
      CONSTRAINT_TYPE AS "TIPO"
      FROM TABLE_CONSTRAINTS;

/*OUTPUT*/
mysql> SELECT CONSTRAINT_SCHEMA AS "BANCO",
    ->       TABLE_NAME AS "TABELA",
    ->       CONSTRAINT_TYPE AS "TIPO"
    ->       FROM TABLE_CONSTRAINTS;
+---------+---------------------------+-------------+
| BANCO   | TABELA                    | TIPO        |
+---------+---------------------------+-------------+
| mysql   | columns_priv              | PRIMARY KEY |
| mysql   | db                        | PRIMARY KEY |
| mysql   | event                     | PRIMARY KEY |
| mysql   | func                      | PRIMARY KEY |
| mysql   | help_category             | PRIMARY KEY |
| mysql   | help_category             | UNIQUE      |
| mysql   | help_keyword              | PRIMARY KEY |
| mysql   | help_keyword              | UNIQUE      |
| mysql   | help_relation             | PRIMARY KEY |
| mysql   | help_topic                | PRIMARY KEY |
| mysql   | help_topic                | UNIQUE      |
| mysql   | host                      | PRIMARY KEY |
| mysql   | ndb_binlog_index          | PRIMARY KEY |
| mysql   | plugin                    | PRIMARY KEY |
| mysql   | proc                      | PRIMARY KEY |
| mysql   | procs_priv                | PRIMARY KEY |
| mysql   | proxies_priv              | PRIMARY KEY |
| mysql   | servers                   | PRIMARY KEY |
| mysql   | tables_priv               | PRIMARY KEY |
| mysql   | time_zone                 | PRIMARY KEY |
| mysql   | time_zone_leap_second     | PRIMARY KEY |
| mysql   | time_zone_name            | PRIMARY KEY |
| mysql   | time_zone_transition      | PRIMARY KEY |
| mysql   | time_zone_transition_type | PRIMARY KEY |
| mysql   | user                      | PRIMARY KEY |
| projeto | cliente                   | PRIMARY KEY |
| projeto | cursos                    | PRIMARY KEY |
| projeto | jogador                   | PRIMARY KEY |
| projeto | pessoa                    | PRIMARY KEY |
| projeto | pessoa                    | UNIQUE      |
| projeto | telefone                  | FOREIGN KEY |
| projeto | times                     | PRIMARY KEY |
| projeto | times                     | FOREIGN KEY |
| projeto | vendedores                | PRIMARY KEY |
| sakila  | actor                     | PRIMARY KEY |
| sakila  | address                   | PRIMARY KEY |
| sakila  | address                   | FOREIGN KEY |
| sakila  | category                  | PRIMARY KEY |
| sakila  | city                      | PRIMARY KEY |
| sakila  | city                      | FOREIGN KEY |
| sakila  | country                   | PRIMARY KEY |
| sakila  | customer                  | PRIMARY KEY |
| sakila  | customer                  | FOREIGN KEY |
| sakila  | customer                  | FOREIGN KEY |
| sakila  | film                      | PRIMARY KEY |
| sakila  | film                      | FOREIGN KEY |
| sakila  | film                      | FOREIGN KEY |
| sakila  | film_actor                | PRIMARY KEY |
| sakila  | film_actor                | FOREIGN KEY |
| sakila  | film_actor                | FOREIGN KEY |
| sakila  | film_category             | PRIMARY KEY |
| sakila  | film_category             | FOREIGN KEY |
| sakila  | film_category             | FOREIGN KEY |
| sakila  | film_text                 | PRIMARY KEY |
| sakila  | inventory                 | PRIMARY KEY |
| sakila  | inventory                 | FOREIGN KEY |
| sakila  | inventory                 | FOREIGN KEY |
| sakila  | language                  | PRIMARY KEY |
| sakila  | payment                   | PRIMARY KEY |
| sakila  | payment                   | FOREIGN KEY |
| sakila  | payment                   | FOREIGN KEY |
| sakila  | payment                   | FOREIGN KEY |
| sakila  | rental                    | PRIMARY KEY |
| sakila  | rental                    | UNIQUE      |
| sakila  | rental                    | FOREIGN KEY |
| sakila  | rental                    | FOREIGN KEY |
| sakila  | rental                    | FOREIGN KEY |
| sakila  | staff                     | PRIMARY KEY |
| sakila  | staff                     | FOREIGN KEY |
| sakila  | staff                     | FOREIGN KEY |
| sakila  | store                     | PRIMARY KEY |
| sakila  | store                     | UNIQUE      |
| sakila  | store                     | FOREIGN KEY |
| sakila  | store                     | FOREIGN KEY |
| world   | city                      | PRIMARY KEY |
| world   | city                      | FOREIGN KEY |
| world   | country                   | PRIMARY KEY |
| world   | countrylanguage           | PRIMARY KEY |
| world   | countrylanguage           | FOREIGN KEY |
+---------+---------------------------+-------------+
79 rows in set (1.09 sec)
```

## **PASSO 5:** PROJETANDO AS COLUNAS DESEJADAS DA TABELA `TABLE_CONSTRAINTS` REFERENTE A UM BANCO DE DADOS DE DADOS ESPECÍFICO - `DB PROJETO`;
```SQL
/*INPUT*/
SELECT CONSTRAINT_SCHEMA AS "BANCO",
      TABLE_NAME AS "TABELA",
      CONSTRAINT_NAME AS "NOME REGRA",
      CONSTRAINT_TYPE AS "TIPO"
      FROM TABLE_CONSTRAINTS
      WHERE CONSTRAINT_SCHEMA = 'PROJETO';

/*OUTPUT*/
mysql> SELECT CONSTRAINT_SCHEMA AS "BANCO",
    ->       TABLE_NAME AS "TABELA",
    ->       CONSTRAINT_NAME AS "NOME REGRA",
    ->       CONSTRAINT_TYPE AS "TIPO"
    ->       FROM TABLE_CONSTRAINTS
    ->       WHERE CONSTRAINT_SCHEMA = 'PROJETO';
+---------+------------+---------------------+-------------+
| BANCO   | TABELA     | NOME REGRA          | TIPO        |
+---------+------------+---------------------+-------------+
| projeto | cliente    | PRIMARY             | PRIMARY KEY |
| projeto | cursos     | PRIMARY             | PRIMARY KEY |
| projeto | jogador    | PRIMARY             | PRIMARY KEY |
| projeto | pessoa     | PRIMARY             | PRIMARY KEY |
| projeto | pessoa     | COLUNA4             | UNIQUE      |
| projeto | telefone   | FK_CLIENTE_TELEFONE | FOREIGN KEY |
| projeto | times      | PRIMARY             | PRIMARY KEY |
| projeto | times      | times_ibfk_1        | FOREIGN KEY |
| projeto | vendedores | PRIMARY             | PRIMARY KEY |
+---------+------------+---------------------+-------------+
9 rows in set (0.28 sec)
```

# ⚠ **NOTA 1: APAGANDO CONSTRAINTS**

```SQL
/*INPUT*/
USE INFORMATION_SCHEMA;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;

/*OUTPUT*/
mysql> ALTER TABLE TELEFONE
    -> DROP FOREIGN KEY FK_CLIENTE_TELEFONE;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

## 🔎✔ **CONFIRMANDO:**

```SQL
/*INPUT*/


/*OUTPUT*/
mysql> USE INFORMATION_SCHEMA;
Database changed
mysql> SELECT CONSTRAINT_SCHEMA AS "BANCO",
    ->       TABLE_NAME AS "TABELA",
    ->       CONSTRAINT_NAME AS "NOME REGRA",
    ->       CONSTRAINT_TYPE AS "TIPO"
    ->       FROM TABLE_CONSTRAINTS
    ->       WHERE CONSTRAINT_SCHEMA = 'PROJETO';
+---------+------------+--------------+-------------+
| BANCO   | TABELA     | NOME REGRA   | TIPO        |
+---------+------------+--------------+-------------+
| projeto | cliente    | PRIMARY      | PRIMARY KEY |
| projeto | cursos     | PRIMARY      | PRIMARY KEY |
| projeto | jogador    | PRIMARY      | PRIMARY KEY |
| projeto | pessoa     | PRIMARY      | PRIMARY KEY |
| projeto | pessoa     | COLUNA4      | UNIQUE      |
| projeto | times      | PRIMARY      | PRIMARY KEY |
| projeto | times      | times_ibfk_1 | FOREIGN KEY |
| projeto | vendedores | PRIMARY      | PRIMARY KEY |
+---------+------------+--------------+-------------+
8 rows in set (0.23 sec)
```