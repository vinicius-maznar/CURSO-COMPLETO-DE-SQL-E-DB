# 🏗 **ALTERANDO A ESTRUTURA DE TABELAS**

## **PASSO 1:** CRIANDO A TABELA EXEMPLO `TABELA`;
```SQL
/*INPUT*/
CREATE TABLE TABELA(
	COLUNA1 VARCHAR(30),
	COLUNA2 VARCHAR(30),
	COLUNA3 VARCHAR(30)
);


/*OUTPUT*/
mysql> CREATE TABLE TABELA(
    -> COLUNA1 VARCHAR(30),
    -> COLUNA2 VARCHAR(30),
    -> COLUNA3 VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.01 sec)
```

# ⚠ **NOTA 1: ADICIONANDO UMA `PK`**

- Lembrando que não é possível adicionar o `AUTO-INCREMENT` na `PRIMARY KEY` quando ela é inserida externamete pelo `ADD`.

- O `AUTO-INCREMENT` só pode ser configurado quando especificado como coluna na criação da tabela.

```SQL
/*INPUT*/
ALTER TABLE TABELA
ADD PRIMARY KEY(COLUNA1);

/*OUTPUT*/
mysql> ALTER TABLE TABELA
    -> ADD PRIMARY KEY(COLUNA1);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC TABELA;

/*OUTPUT*/
mysql> DESC TABELA;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI |         |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)
```


# ⚠ **NOTA 2: ADICIONANDO `COLUNA SEM POSIÇÃO` (A COLUNA INSERIDA OCUPA O `ULTIMO LUGAR` NA TABELA)**
```SQL
/*INPUT*/
ALTER TABLE TABELA
ADD COLUNA VARCHAR(30);

/*OUTPUT*/
mysql> ALTER TABLE TABELA
    -> ADD COLUNA VARCHAR(30);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC TABELA;

/*OUTPUT*/
mysql> DESC TABELA;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| COLUNA1 | varchar(30) | NO   | PRI |         |       |
| COLUNA2 | varchar(30) | YES  |     | NULL    |       |
| COLUNA3 | varchar(30) | YES  |     | NULL    |       |
| COLUNA  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)
```


# ⚠ **NOTA 3: ADICIONANDO UMA COLUNA COM POSIÇÃO**
```SQL
/*INPUT*/
ALTER TABLE TABELA
ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
AFTER COLUNA3;

/*OUTPUT*/
mysql> ALTER TABLE TABELA
    -> ADD COLUMN COLUNA4 VARCHAR(30) NOT NULL UNIQUE
    -> AFTER COLUNA3;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC TABELA;

/*OUTPUT*/
mysql> DESC TABELA;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI |         |       |
| COLUNA2   | varchar(30) | YES  |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)
```

# ⚠ **NOTA 4: MODIFICANDO O TIPO DE UM CAMPO**

- A alteração do tipo de uma coluna deve ter uma ligação lógica com os registros da coluna;

- Um registro com tipo `VARCHAR` ou `CHAR` só pode ser transformado para `INT` se o dado dentro desse registro for um caractere `NUMÉRICO`, dentro de uma `STRING`

	- **EXEMPLO:** 

		- `"1", "2", "3",` - com `VARCHAR` ou `CHAR` como tipo - podem ser convertidas para `1, 2, 3` - com tipagem `INT`.

		- `"A", "B", "C"` - com `VARCHAR` ou `CHAR` como tipo - `NÃO` podem ser convertidas para `A, B, C` - com tipagem `INT`, pois não há uma lógica entre a tipagem e o intercâmbio dos caracteres.

```SQL
/*INPUT*/
ALTER TABLE TABELA
MODIFY COLUNA2 DATE NOT NULL;

/*OUTPUT*/
mysql> ALTER TABLE TABELA
    -> MODIFY COLUNA2 DATE NOT NULL;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC TABELA;

/*OUTPUT*/
mysql> DESC TABELA;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI |         |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)
```

# ⚠ **NOTA 5: RENOMEANDO O NOME DA TABELA**
```SQL
/*INPUT*/
ALTER TABLE TABELA
RENAME PESSOA;

/*OUTPUT*/
mysql> ALTER TABLE TABELA
    -> RENAME PESSOA;
Query OK, 0 rows affected (0.02 sec)
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC PESSOA;

/*OUTPUT*/
mysql> DESC PESSOA;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| COLUNA1   | varchar(30) | NO   | PRI |         |       |
| COLUNA2   | date        | NO   |     | NULL    |       |
| COLUNA3   | varchar(30) | YES  |     | NULL    |       |
| COLUNA4   | varchar(30) | NO   | UNI | NULL    |       |
| COLUNA    | varchar(30) | YES  |     | NULL    |       |
| COLUNA100 | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)
```

## **PASSO 2:** CRIANDO A TABELA EXEMPLO `TIME`;

```SQL
/*INPUT*/
CREATE TABLE TIME(
	IDTIME INT PRIMARY KEY AUTO_INCREMENT,
	TIME VARCHAR(30),
	ID_PESSOA VARCHAR(30)
);

/*OUTPUT*/
mysql> CREATE TABLE TIME(
    -> IDTIME INT PRIMARY KEY AUTO_INCREMENT,
    -> TIME VARCHAR(30),
    -> ID_PESSOA VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.00 sec)
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC TIME;

/*OUTPUT*/
mysql> DESC TIME;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)
```

# ⚠ **NOTA 6: ADICIONANDO UMA FK**
```SQL
/*INPUT*/
ALTER TABLE TIME
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);

/*OUTPUT*/
ALTER TABLE TIME
ADD FOREIGN KEY(ID_PESSOA)
REFERENCES PESSOA(COLUNA1);
```

# 🔎✔ **CONFIRMANDO A ALTERAÇÃO FEITA:**

```SQL
/*INPUT*/
DESC PESSOA;

/*OUTPUT*/
mysql> DESC TIME;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| IDTIME    | int(11)     | NO   | PRI | NULL    | auto_increment |
| TIME      | varchar(30) | YES  |     | NULL    |                |
| ID_PESSOA | varchar(30) | YES  | MUL | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)
```

# ⚠ **NOTA 7: VERIFICANDO A CHAVES DE UMA TABELA**
```SQL
/*INPUT*/
SHOW CREATE TABLE TIME;

/*OUTPUT*/
mysql> SHOW CREATE TABLE TIME;
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                                                                                                                                                                                                                        |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TIME  | CREATE TABLE `time` (
  `IDTIME` int(11) NOT NULL AUTO_INCREMENT,
  `TIME` varchar(30) DEFAULT NULL,
  `ID_PESSOA` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`IDTIME`),
  KEY `ID_PESSOA` (`ID_PESSOA`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`ID_PESSOA`) REFERENCES `pessoa` (`COLUNA1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
```