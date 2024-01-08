# 🗃 **ORDENANDO DADOS - `ORDER BY`**

## ⁉ **Descrição:**

  - A cláusula ORDER BY é usada para classificar os resultados de uma consulta em ordem ascendente ou descendente com base em uma ou mais colunas.

# ⚠ **NOTA 1: A ÚNICA FORMA DE ORDENAR UMA TABELA É UTILIZANDO O COMANDO `ORDER BY`. SEM ELE, O RESULTADO É ALEATÓRIO**

- **PASSO 1:** CRIANDO A `TABELA ALUNOS` para o exemplo;
```SQL
/*INPUT*/
CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

/*OUTPUT*/
mysql> CREATE TABLE ALUNOS(
    -> NUMERO INT,
    -> NOME VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.01 sec)
```

- **PASSO 2:** INSERINDO DADOS NA `TABELA ALUNOS`;
```SQL
/*INPUT*/
INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE');

/*OUTPUT*/
mysql> CREATE TABLE ALUNOS(
    -> NUMERO INT,
    -> NOME VARCHAR(30)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO ALUNOS VALUES(1,'JOAO');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO ALUNOS VALUES(1,'MARIA');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ALUNOS VALUES(2,'ZOE');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(2,'ANDRE');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(3,'CLARA');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ALUNOS VALUES(1,'CLARA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(4,'MAFRA');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ALUNOS VALUES(5,'JANAINA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(1,'JANAINA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(3,'MARCELO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(4,'GIOVANI');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ALUNOS VALUES(5,'ANTONIO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(6,'ANA');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ALUNOS VALUES(6,'VIVIANE');
Query OK, 1 row affected (0.00 sec)
```
- **PASSO 3:** CONFIRMANDO A `TABELA ALUNO` MONTADA E ALIMENTADA;
```SQL
/*INPUT*/
SELECT * FROM ALUNOS;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      1 | CLARA   |
|      4 | MAFRA   |
|      5 | JANAINA |
|      1 | JANAINA |
|      3 | MARCELO |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

- **PASSO 4:** ORDENANDO A `TABELA ALUNOS` PELA COLUNA `NUMERO`;
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY NUMERO;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY NUMERO;SELECT * FROM ALUNOS
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

- **PASSO 4:** ORDENANDO A `TABELA ALUNOS` PELA `PRIMEIRA` COLUNA;
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 1;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

- **PASSO 5:** ORDENANDO A `TABELA ALUNOS` PELA `SEGUNDA` COLUNA;
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 2;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | ANA     |
|      2 | ANDRE   |
|      5 | ANTONIO |
|      3 | CLARA   |
|      1 | CLARA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      1 | JANAINA |
|      1 | JOAO    |
|      4 | MAFRA   |
|      3 | MARCELO |
|      1 | MARIA   |
|      6 | VIVIANE |
|      2 | ZOE     |
+--------+---------+
14 rows in set (0.00 sec)
```

- **PASSO 6:** ORDENANDO A `TABELA ALUNOS` POR MAIS DE UMA COLUNA;

	- Os dados semelhantes são agrupados pela `PRIMEIRA COLUNA(NUMEROS)` - No exemplo, o agrupamento é por ordem numérica. E cada subgrupo formado também é organizado pela `SEGUNDA COLUNA`(NOME) - No exemplo, em ordem alfabética.
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY NUMERO, NOME;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.01 sec)
```

- **OU**

```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1, 2;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

# ⚠ **NOTA 1: QUANDO FOR DESEJADO MESCLAR O `ORDER BY` COM A PROJEÇÃO `SELECT`, SEMPRE UTILIZE OS NOMES DAS COLUNAS POR EXTENSO.**

- Caso haja algum índice numérico na parte do agrupamento `(ORDER BY 1, 2;)`, os nomes das colunas na projeção `(SELECT NOME, NUMERO;)` devem constar na ordem respectiva a dos índices numéricos no `ORDER BY`
```SQL
/*INPUT*/
SELECT NUMERO, NOME FROM ALUNOS
ORDER BY 1, 2;

/*OUTPUT*/
mysql> SELECT NUMERO, NOME FROM ALUNOS
    -> ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

# ⚠ **NOTA 2: AGRUPANDO OS DADOS POR ASCENDÊNCIA `ASC`**

- O `ASC` é padrão. Mesmo não o mencionando na ordenação da query;
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1 ASC;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 1 ASC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+
14 rows in set (0.00 sec)
```

# ⚠ **NOTA 3: AGRUPANDO OS DADOS POR DESCENDÊNCIA `DESC`**
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1 DESC;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 1 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | VIVIANE |
|      6 | ANA     |
|      5 | ANTONIO |
|      5 | JANAINA |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      3 | CLARA   |
|      3 | MARCELO |
|      2 | ANDRE   |
|      2 | ZOE     |
|      1 | JANAINA |
|      1 | CLARA   |
|      1 | MARIA   |
|      1 | JOAO    |
+--------+---------+
14 rows in set (0.00 sec)
```

# ⚠ **NOTA 4: AGRUPANDO OS DADOS POR DESCENDÊNCIA `DESC` EM TODAS AS COLUNAS**
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;

/*OUTPUT*/
mysql> SELECT * FROM ALUNOS
    -> ORDER BY 1 DESC, 2 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | VIVIANE |
|      6 | ANA     |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | MARCELO |
|      3 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
+--------+---------+
14 rows in set (0.00 sec)
```

# ⚠ **NOTA 5: AGRUPANDO OS DADOS COM `JOIN`**
```SQL
/*INPUT*/
SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;

/*OUTPUT*/
mysql> SELECT  C.NOME,
    -> C.SEXO,
    -> IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL",
    -> T.TIPO,
    -> T.NUMERO,
    -> E.BAIRRO,
    -> E.CIDADE,
    -> E.ESTADO
    -> FROM CLIENTE C
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    -> ORDER BY 1;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | CLIENTE SEM EMAIL | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | CLIENTE SEM EMAIL | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
26 rows in set (0.00 sec)
```

# ⚠ **NOTA 4: AGRUPANDO OS DADOS EM UMA `VIEW`**
```SQL
/*INPUT*/
SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;

/*OUTPUT*/
mysql> SELECT * FROM V_RELATORIO
    -> ORDER BY 1;
+---------+------+-------------------+------+----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 77755785 | CENTRO     | RIO DE JANEIRO | RJ     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | COM  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@IG.COM        | CEL  | 78989765 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@IG.COM        | CEL  | 99766676 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@IG.COM    | COM  | 88679978 | JARDINS    | SAO PAULO      | SP     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 99655768 | BOM RETIRO | CURITIBA       | PR     |
| CARLOS  | M    | CARLOSA@IG.COM    | COM  | 54768899 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOSA@IG.COM    | CEL  | 88687909 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 77455786 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | RES  | 89766554 | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 88965676 | CENTRO     | VITORIA        | ES     |
| EDUARDO | M    | ********          | CEL  | 89966809 | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | RES  | 89955665 | LAPA       | SAO PAULO      | SP     |
| FLAVIO  | M    | FLAVIO@IG.COM     | RES  | 68976565 | CASCADURA  | B. HORIZONTE   | MG     |
| FLAVIO  | M    | FLAVIO@IG.COM     | CEL  | 99656675 | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | ********          | CEL  | 33567765 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | ********          | CEL  | 88668786 | CENTRO     | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | ********          | COM  | 55689654 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | CEL  | 87866896 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | RES  | 99667587 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAOA@IG.COM      | COM  | 66687899 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | CEL  | 44522578 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOSE    | M    | JORGE@IG.COM      | CEL  | 78458743 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 56576876 | CENTRO     | VITORIA        | ES     |
| JOSE    | M    | JORGE@IG.COM      | RES  | 89986668 | CENTRO     | VITORIA        | ES     |
| KARLA   | F    | KARLA@GMAIL.COM   | COM  | 88687979 | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+----------+------------+----------------+--------+
26 rows in set (0.00 sec)
```
