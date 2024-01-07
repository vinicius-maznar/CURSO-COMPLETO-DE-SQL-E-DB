# 🔎 **VIEWS**

## ⁉ **DEFINIÇÃO: VIEWS**

- É uma nomenclatura de nome mais curto que aponta para uma query já estruturada;

- É comum usar `VIEWS` para query que são muito utilizadas ou que são bastante extensas e refinadas;

- **PASSO 1:** Crie ou utilize a `QUERY` desejada;
```SQL
/*INPUT*/
SELECT 	C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*OUTPUT*/
mysql> SELECT C.NOME,
    -> C.SEXO,
    -> C.EMAIL,
    -> T.TIPO,
    -> T.NUMERO,
    -> E.BAIRRO,
    -> E.CIDADE,
    -> E.ESTADO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | NULL              | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | NULL              | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
26 rows in set (0.02 sec)
```


- **PASSO 2:** CRIE O UMA `VIEW` PARA A QUERY UTILIZADA;
```SQL
/*INPUT*/
CREATE VIEW RELATORIO AS
SELECT 	C.NOME, 
		C.SEXO, 
		C.EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*OUTPUT*/
mysql> CREATE VIEW RELATORIO AS
    -> SELECT C.NOME,
    -> C.SEXO,
    -> C.EMAIL,
    -> T.TIPO,
    -> T.NUMERO,
    -> E.BAIRRO,
    -> E.CIDADE,
    -> E.ESTADO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE;
Query OK, 0 rows affected (0.08 sec)
```


- **PASSO 3:** UTILIZE A `VIEW`;
```SQL
/*INPUT*/
SELECT * FROM RELATORIO;

/*OUTPUT*/
mysql> SELECT * FROM RELATORIO;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | NULL              | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | NULL              | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
26 rows in set (0.02 sec)
```

# ⚠ **NOTA 1: COMO LOCALIZAR AS `VIEWS` EXISTENTES**

- **PASSO 1:** UTILIZE O COMANDO `SHOW TABLES;` ;
```SQL
/*INPUT*/
SHOW TABLES;

/*OUTPUT*/
mysql> SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| relatorio          |
| telefone           |
+--------------------+
5 rows in set (0.00 sec)
```


# ⚠ **NOTA 2: COMO DELETAR UMA `VIEW`**

- **PASSO 1:** `DROP VIEW <NOME DA VIEW>;` ;
```SQL
/*INPUT*/
DROP VIEW RELATORIO;

/*OUTPUT*/
mysql> DROP VIEW RELATORIO;
Query OK, 0 rows affected (0.01 sec)
```

- **PASSO 2:** CONFIRMANDO A EXCLUSÃO `VIEW RELATORIO` ;
```SQL
/*INPUT*/
SHOW TABLES;

/*OUTPUT*/
mysql> SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| produto            |
| telefone           |
+--------------------+
4 rows in set (0.00 sec)
```

# ⚠ **NOTA 3: DICAS DE NOMENCLATURA PARA `VIEWS` E FUNÇÕES**

- INSIRA UM PREFIXO. É POSSÍVEL TAMBÉM MESCLAR FUNÇÕES QUANDO SE DEFINE UMA `VIEW`;

```SQL
/*INPUT*/
CREATE VIEW V_RELATORIO AS
SELECT 	C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'********') AS EMAIL, 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*OUTPUT*/
mysql> CREATE VIEW V_RELATORIO AS
    -> SELECT C.NOME,
    -> C.SEXO,
    -> IFNULL(C.EMAIL,'********') AS EMAIL,
    -> T.TIPO,
    -> T.NUMERO,
    -> E.BAIRRO,
    -> E.CIDADE,
    -> E.ESTADO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE;
Query OK, 0 rows affected (0.01 sec)
```

- **PASSO 3:** UTILIZE A `VIEW`;
```SQL
/*INPUT*/
SELECT * FROM V_RELATORIO;

/*OUTPUT*/
mysql> SELECT * FROM V_RELATORIO;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| JORGE   | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JORGE   | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | ********          | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | ********          | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | ********          | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | ********          | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
26 rows in set (0.00 sec)
```

# ⚠ **NOTA 4: FAZENDO UM `SELECT` SOBRE UMA `VIEW`**

- **PASSO 1:** `TITULO` ;
```SQL
/*INPUT*/
SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

/*OUTPUT*/
mysql> SELECT NOME, NUMERO, ESTADO
    -> FROM V_RELATORIO;
+---------+----------+--------+
| NOME    | NUMERO   | ESTADO |
+---------+----------+--------+
| JOAO    | 87866896 | RJ     |
| JOAO    | 99667587 | RJ     |
| JOAO    | 66687899 | RJ     |
| CARLOS  | 54768899 | RJ     |
| CARLOS  | 88687909 | RJ     |
| ANA     | 78989765 | SP     |
| ANA     | 99766676 | SP     |
| JORGE   | 78458743 | ES     |
| JORGE   | 56576876 | ES     |
| JORGE   | 89986668 | ES     |
| FLAVIO  | 68976565 | MG     |
| FLAVIO  | 99656675 | MG     |
| GIOVANA | 33567765 | RJ     |
| GIOVANA | 88668786 | RJ     |
| GIOVANA | 55689654 | RJ     |
| KARLA   | 88687979 | RJ     |
| DANIELE | 88965676 | ES     |
| EDUARDO | 89966809 | PR     |
| ANTONIO | 88679978 | SP     |
| ANTONIO | 99655768 | PR     |
| ELAINE  | 89955665 | SP     |
| CARMEM  | 77455786 | RJ     |
| CARMEM  | 89766554 | RJ     |
| ADRIANA | 77755785 | RJ     |
| ADRIANA | 44522578 | RJ     |
| JOICE   | 44522578 | RJ     |
+---------+----------+--------+
26 rows in set (0.00 sec)
```
