# 🗃🗝 **AÇÕES DE CONSTRAINTS NA ORGANIZAÇÃO DE CHAVES**

- É uma boa prática inserir as `PK` e `FK` depois da criação da tabela;

- Com isso, é possivel criar tabelas independentes que serão referênciadas posteriormente, ajudando na modelagem lógica inicial;

# ⚠ **NOTA 1:** COLOCAR A CLÁUSULA `UNIQUE` OU NÃO, EM UMA FK, DEFINE SE A RELAÇÃO É (1,1) OU (1,N):

- `FK` COM A CLÁUSULA `UNIQUE` = RELACIOANEMENTO (1,1);

- `FK` SEM CLÁUSULA `UNIQUE` = RELACIONAMENTO (1,N);


## 👩‍🏫 **EXEMPLO BASE** `TABELA CLIENTE` E `TABELA TELEFONE`;


## **PASSO 1:** CRIANDO A `TABELA CLIENTE` E `TABELA TELEFONE`;
```SQL
/*INPUT*/
CREATE TABLE CLIENTE(
	IDCLIENTE INT,
	NOME VARCHAR(30) NOT NULL
);

CREATE TABLE TELEFONE(
	IDTELEFONE INT,
	TIPO VARCHAR(30) NOT NULL,
	NUMERO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT	
);

/*OUTPUT*/
mysql> CREATE TABLE CLIENTE(
    -> IDCLIENTE INT,
    -> NOME VARCHAR(30) NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE TELEFONE(
    -> IDTELEFONE INT,
    -> TIPO VARCHAR(30) NOT NULL,
    -> NUMERO VARCHAR(30) NOT NULL,
    -> ID_CLIENTE INT
    -> );
Query OK, 0 rows affected (0.28 sec)
```

## **PASSO 2:** CRIANDO UMA `CONSTRAINT` PARA INSERIR A `PRIMARY KEY` NA `TABELA CLIENTE`;
```SQL
/*INPUT*/
ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
PRIMARY KEY(IDCLIENTE);

/*OUTPUT*/
mysql> ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE
    -> PRIMARY KEY(IDCLIENTE);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
```

## **PASSO 3:** CRIANDO UMA `CONSTRAINT` PARA INSERIR A `PRIMARY KEY` NA `TABELA TELEFONE`;
```SQL
/*INPUT*/
ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);

/*OUTPUT*/
mysql> ALTER TABLE TELEFONE ADD CONSTRAINT FK_CLIENTE_TELEFONE
    -> FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE);
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0
```


## 🔎✔ **CONFIRMANDO A CRIAÇÃO DA `CONSTRAINT` PARA INSERIR A `FOREIGN KEY` NA `TABELA TELEFONE`;**
```SQL
/*INPUT*/
SHOW CREATE TABLE TELEFONE;

/*OUTPUT*/
mysql> SHOW CREATE TABLE TELEFONE;
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table    | Create Table                                                                                                                                                                                                                                                                                                                                            |
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TELEFONE | CREATE TABLE `telefone` (
  `IDTELEFONE` int(11) DEFAULT NULL,
  `TIPO` varchar(30) NOT NULL,
  `NUMERO` varchar(30) NOT NULL,
  `ID_CLIENTE` int(11) DEFAULT NULL,
  KEY `FK_CLIENTE_TELEFONE` (`ID_CLIENTE`),
  CONSTRAINT `FK_CLIENTE_TELEFONE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+----------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
```