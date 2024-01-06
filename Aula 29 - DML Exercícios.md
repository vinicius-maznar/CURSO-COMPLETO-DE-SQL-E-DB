# 🛠 **DML: EXERCÍCIOS**

- **PASSO 1:** Conecte-se ao banco de dados COMERCIO:

	```SQL INPUT
	USE COMERCIO;
	```
	```SQL OUTPUT
	mysql> USE COMERCIO;
	Database changed
	mysql>
	```

- **PASSO 2:** Dê um SELECT na tabela onde dados serão inseridos. Inicie com a tabela `CLIENTE`.

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

- **PASSO 3:** Insira os dados a seguir na tabela CLIENTE.

```SQL INPUT
INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');
```
```SQL OUTPUT
mysql> INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');
Query OK, 1 row affected (0.01 sec)
```

- **PASSO 4:** Dê um `SELECT` para confirmar a inserção dos dados na tabela `CLIENTE`.

```SQL INPUT
SELECT * FROM CLIENTE;
```
```SQL OUTPUT
mysql> SELECT * FROM CLIENTE;
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR  | 45612378956 |
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 |
|         4 | CLARA   | F    | NULL              | 14785236989 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 |
|         6 | CELIA   | M    | CELIA@IG.COM.BR   | 74896512325 |
|         7 | PAULA   | F    | NULL              | 789456447   |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|        10 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|        11 | GIOVANA | F    | NULL              | 0876655     |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        14 | LORENA  | M    | NULL              | 774557887   |
|        15 | EDUARDO | M    | NULL              | 54376457    |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+
20 rows in set (0.00 sec)
```

- **PASSO 5:** Dê um SELECT na tabela onde dados serão inseridos. Agora, na tabela `ENDEREÇO`.

```SQL INPUT
SELECT * FROM ENDERECO;
```
```SQL OUTPUT
mysql> SELECT * FROM ENDERECO;
+------------+--------------------+------------+----------------+--------+------------+
| IDENDERECO | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|          7 | RUA JOAQUIM SILVA  | ALVORADA   | NITEROI        | RJ     |          7 |
|          8 | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     |          9 |
|          9 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|         10 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|         11 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|         12 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|         13 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|         14 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|         15 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|         16 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|         17 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|         18 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|         19 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|         20 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+------------+--------------------+------------+----------------+--------+------------+
20 rows in set (0.00 sec)
```

- **PASSO 6:** Insira os dados a seguir na tabela `ENDERECO`.

```SQL INPUT
INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);
```
```SQL OUTPUT
mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',20);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',21);
Query OK, 1 row affected (0.00 sec)

mysql>
```

- **PASSO 7:** Dê um `SELECT` para confirmar a inserção dos dados na tabela `ENDERECO`.

```SQL INPUT
SELECT * FROM ENDERECO;
```
```SQL OUTPUT
mysql> SELECT * FROM ENDERECO;
+------------+--------------------+------------+----------------+--------+------------+
| IDENDERECO | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+------------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO     | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO   | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     |          5 |
|          7 | RUA JOAQUIM SILVA  | ALVORADA   | NITEROI        | RJ     |          7 |
|          8 | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     |          9 |
|          9 | RUA MAIA LACERDA   | ESTACIO    | RIO DE JANEIRO | RJ     |         10 |
|         10 | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     |         11 |
|         11 | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     |         12 |
|         12 | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     |         13 |
|         13 | RUA CASTRO ALVES   | LEBLON     | RIO DE JANEIRO | RJ     |         14 |
|         14 | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     |         15 |
|         15 | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     |         16 |
|         16 | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     |         17 |
|         17 | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     |         18 |
|         18 | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     |         19 |
|         19 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         20 |
|         20 | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     |         21 |
+------------+--------------------+------------+----------------+--------+------------+
20 rows in set (0.00 sec)
```

- **PASSO 8:** Dê um SELECT na tabela onde dados serão inseridos. Agora, na tabela `TELEFONE`.

```SQL INPUT
SELECT * FROM TELEFONE;
```
```SQL OUTPUT
mysql> SELECT * FROM TELEFONE;
+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          3 | CEL  | 87866896 |          1 |
|          4 | COM  | 54768899 |          2 |
|          5 | RES  | 99667587 |          1 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          8 | COM  | 66687899 |          1 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
+------------+------+----------+------------+
10 rows in set (0.00 sec)
```
- **PASSO 9:** Insira os dados a seguir na tabela `TELEFONE`.

```SQL INPUT
INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);
```
```SQL OUTPUT
mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',20);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',20);
Query OK, 1 row affected (0.00 sec)

mysql>
```



# 👩‍🏫 **DML: EXERCÍCIOS PROPOSTOS `QUERY`:**

- **1) Traga um relatório geral de TODOS OS CLIENTES (Considerando telefone e endereço);**

	- **PASSO 1:** Faça a descrição de todas as colunas na tabela `CLIENTE` (CLIENTE, ENDERECO, TELEFONE);

	```SQL INPUT
	DESC CLIENTE;
	DESC ENDERECO;
	DESC TELEFONE;
	```
	```SQL OUTPUT
	mysql> DESC CLIENTE;
	+-----------+---------------+------+-----+---------+----------------+
	| Field     | Type          | Null | Key | Default | Extra          |
	+-----------+---------------+------+-----+---------+----------------+
	| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
	| NOME      | varchar(30)   | NO   |     | NULL    |                |
	| SEXO      | enum('M','F') | NO   |     | NULL    |                |
	| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
	| CPF       | varchar(15)   | YES  | UNI | NULL    |                |
	+-----------+---------------+------+-----+---------+----------------+
	5 rows in set (0.01 sec)

	mysql> DESC ENDERECO;
	+------------+--------------+------+-----+---------+----------------+
	| Field      | Type         | Null | Key | Default | Extra          |
	+------------+--------------+------+-----+---------+----------------+
	| IDENDERECO | int(11)      | NO   | PRI | NULL    | auto_increment |
	| LOGRADOURO | varchar(100) | NO   |     | NULL    |                |
	| BAIRRO     | varchar(30)  | NO   |     | NULL    |                |
	| CIDADE     | varchar(30)  | NO   |     | NULL    |                |
	| ESTADO     | char(2)      | NO   |     | NULL    |                |
	| ID_CLIENTE | int(11)      | YES  | UNI | NULL    |                |
	+------------+--------------+------+-----+---------+----------------+
	6 rows in set (0.00 sec)

	mysql> DESC TELEFONE;
	+------------+-------------------------+------+-----+---------+----------------+
	| Field      | Type                    | Null | Key | Default | Extra          |
	+------------+-------------------------+------+-----+---------+----------------+
	| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
	| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
	| NUMERO     | varchar(30)             | NO   |     | NULL    |                |
	| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
	+------------+-------------------------+------+-----+---------+----------------+
	4 rows in set (0.01 sec)
```

- **PASSO 2:** Com a ajuda da referências das descrições de colunas das tabelas, construa a Query;

```SQL INPUT
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
	E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO,
	T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
```
```SQL OUTPUT
mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
    -> ;
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR  | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR  | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
26 rows in set (0.00 sec)
```

# 👩‍🏫 **TAREFA 2)** Traga um relatório geral de TODOS OS HOMENS (Considerando telefone e endereço);

- **PASSO 1:** Com base na Query construida anteriormente, acrescente o filtro `WHERE` para trazer os clientes do `SEXO MASCULINO` ;

	```SQL INPU
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
WHERE C.SEXO = 'M';
	```
	```SQL OUTPUT
	mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
    -> WHERE C.SEXO = 'M';
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR    | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR  | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR  | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR   | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        15 | EDUARDO | M    | NULL              | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
17 rows in set (0.00 sec)
```

## 👩‍🏫 **ALTERANDO OS CAMPOS ERRADOS NA TABELA ANTERIOR**

- **PASSO 1:** Anote os Ids que possuem campos incorretos;

	- IDs com campos incorretos: 12, 13, 18, 19;


- **PASSO 2:** Dando um `SELECT` nos IDs, utilizando a cláusula `IN (INTERVALO)` para uma prévia confirmação antes da alteração;

	```SQL INPUT
SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (6,12,14,13,18,19);
	```
	```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE IDCLIENTE IN (6,12,14,13,18,19);
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         6 | CELIA   | M    | CELIA@IG.COM.BR   | 74896512325 |
|        12 | KARLA   | M    | KARLA@GMAIL.COM   | 545676778   |
|        13 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    |
|        14 | LORENA  | M    | NULL              | 774557887   |
|        18 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    |
|        19 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   |
+-----------+---------+------+-------------------+-------------+
6 rows in set (0.00 sec)
```


- **PASSO 3:** Dando um `UPDATE` nos IDs incorretos com a filtragem para a alteração correta;

	```SQL INPUT
UPDATE CLIENTE SET SEXO = 'F'
WHERE IDCLIENTE IN (6,12,14,13,18,19);
	```
	```SQL OUTPUT
mysql> UPDATE CLIENTE SET SEXO = 'F'
    -> WHERE IDCLIENTE IN (6,12,14,13,18,19);
Query OK, 4 rows affected (0.01 sec)
Rows matched: 4  Changed: 4  Warnings: 0
	```


- **PASSO 4:** Dando um `SELECT *` na tabela `CLIENTE` para confirmar as alterações;

	```SQL INPUT
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
WHERE C.SEXO = 'M';
	```
	```SQL OUTPUT
mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
    -> WHERE C.SEXO = 'M';
+-----------+---------+------+------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL            | CPF         | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         1 | JOAO    | M    | JOAO@IG.COM.BR   | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 87866896 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR   | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 99667587 |
|         1 | JOAO    | M    | JOAO@IG.COM.BR   | 12378945613 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 66687899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 54768899 |
|         2 | CARLOS  | M    | CARLOS@IG.COM.BR | 45612378956 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 88687909 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR  | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | CEL  | 78458743 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR  | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 56576876 |
|         5 | JORGE   | M    | JORGE@IG.COM.BR  | 75689412325 | RUA URUGUAIANA     | CENTRO     | VITORIA        | ES     | RES  | 89986668 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM    | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565 |
|         9 | FLAVIO  | M    | FLAVIO@IG.COM    | 4657765     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675 |
|        15 | EDUARDO | M    | NULL             | 54376457    | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809 |
|        17 | ANTONIO | M    | ANTONIO@UOL.COM  | 3423565     | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768 |
+-----------+---------+------+------------------+-------------+--------------------+------------+----------------+--------+------+----------+
12 rows in set (0.00 sec)
	```


# 👩‍🏫 **TAREFA 3)** Traga um relatório geral de TODAS AS MULHERES (Considerando telefone e endereço);

- **PASSO 1:** Com base na Query construida anteriormente, acrescente o filtro `WHERE` para trazer os clientes do `SEXO FEMININO` ;

	```SQL INPU
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
WHERE C.SEXO = 'F';
	```
	```SQL OUTPUT
mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
    -> WHERE C.SEXO = 'F';
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        16 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
14 rows in set (0.00 sec)
```

## 👩‍🏫 **ALTERANDO OS CAMPOS ERRADOS NA TABELA ANTERIOR**

- **PASSO 1:** Anote os Ids que possuem campos incorretos;

	- IDs com campos incorretos: 16;


- **PASSO 2:** Dando um `SELECT` nos IDs, utilizando a cláusula `IN (INTERVALO)` para uma prévia confirmação antes da alteração;

	```SQL INPUT
SELECT * FROM CLIENTE
WHERE IDCLIENTE = 16;
	```
	```SQL OUTPUT
mysql> SELECT * FROM CLIENTE
    -> WHERE IDCLIENTE = 16;SELECT * FROM CLIENTE
+-----------+---------+------+----------------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL          | CPF      |
+-----------+---------+------+----------------+----------+
|        16 | ANTONIO | F    | ANTONIO@IG.COM | 12436767 |
+-----------+---------+------+----------------+----------+
1 row in set (0.00 sec)
```


- **PASSO 3:** Dando um `UPDATE` nos IDs incorretos com a filtragem para a alteração correta;

	```SQL INPUT
UPDATE CLIENTE SET SEXO = 'M'
WHERE IDCLIENTE = 16;
	```
	```SQL OUTPUT
mysql> UPDATE CLIENTE SET SEXO = 'M'
    -> WHERE IDCLIENTE = 16;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0
	```


- **PASSO 4:** Dando um `SELECT *` na tabela `CLIENTE` para confirmar as alterações;

	```SQL INPUT
SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
WHERE C.SEXO = 'F';
	```
	```SQL OUTPUT
mysql> SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF, E.LOGRADOURO, E.BAIRRO, E.CIDADE, E.ESTADO, T.TIPO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
    -> WHERE C.SEXO = 'F';
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | LOGRADOURO         | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO   |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 78989765 |
|         3 | ANA     | F    | ANA@IG.COM.BR     | 15975312312 | RUA PRES VARGAS    | JARDINS    | SAO PAULO      | SP     | CEL  | 99766676 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786 |
|        11 | GIOVANA | F    | NULL              | 0876655     | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654 |
|        12 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979 |
|        13 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676 |
|        18 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786 |
|        19 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785 |
|        20 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578 |
|        21 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 44522578 |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+----------+
13 rows in set (0.00 sec)
	```

- **`TAREFA 5)`** Traga a quantidade total de `HOMENS` e `MULHERS`.
Como a consulta é baseada no gênero dos funcionários, deve-se agrupar e separar a contagem por `SEXO`.


	```SQL INPUT
SELECT COUNT(*) AS QUANTIDADE, SEXO
FROM CLIENTE
GROUP BY SEXO;
	```
	```SQL OUTPUT
mysql> SELECT COUNT(*) AS QUANTIDADE, SEXO
    -> FROM CLIENTE
    -> GROUP BY SEXO;
+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|          8 | M    |
|         12 | F    |
+------------+------+
2 rows in set (0.00 sec)
	```