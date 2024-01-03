# 📤📥 **Filtros e Seleções**

## 👨‍💻 **FILTRANDO DADOS COM 'WHERE' E 'LIKE'**

- Enquanto a Projeção filtra a nível de colunas, o Filtro seleciona dados a nível de linhas, quantidade de registros.

- O Filtro eleva o processamento do Banco de Dados e aumenta a quantidade de dados trafegando pela rede.

- Banco de Dados = Teoria dos Conjuntos.

`SELECT NOME, TELEFONE FROM CLIENTE;`

## 👨‍💻 **FILTRANDO COM O COMANDO 'WHERE'**

```
SELECT NOME, SEXO FROM CLIENTE
WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE
WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO = 'RJ';
```

## 🔎⬜ **FILTRANDO (PESQUISANDO) DADOS INSERIDOS EM UM CAMPO COM O COMANDO 'LIKE'**

- O comando 'LIKE' substitui o sinal de igualdade dentro do comando 'WHERE'.

- Está incorreto colocar o 'LIKE' após o sinal de igualdade ('WHERE ENDERECO = LIKE 'RJ).

`SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE 'RJ';`

## 🧩 **CARACTER CORINGA ' % '**

- ' % ' significa 'Qualquer Coisa'.

```
SELECT NOME, SEXO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%RJ';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE 'OSCAR CURY%';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE ENDERECO LIKE '%CENTRO%';
```

## ⛰ **PANORAMA GERAL 1**

```
	mysql> SELECT NOME, SEXO FROM CLIENTE
	    -> WHERE SEXO = 'M';
	+-------+------+
	| NOME  | SEXO |
	+-------+------+
	| JOAO  | M    |
	| JORGE | M    |
	+-------+------+
	2 rows in set (0.00 sec)

	mysql> SELECT NOME, ENDERECO FROM CLIENTE
	    -> WHERE SEXO = 'F';
	+--------+-----------------------------------------------+
	| NOME   | ENDERECO                                      |
	+--------+-----------------------------------------------+
	| CELIA  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| LILIAN | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| ANA    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
	| CARLA  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	+--------+-----------------------------------------------+
	4 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO FROM CLIENTE
	    -> WHERE ENDERECO = 'RJ';
	Empty set (0.00 sec)

	mysql> SELECT NOME, SEXO FROM CLIENTE
	    -> WHERE ENDERECO LIKE 'RJ';
	Empty set (0.00 sec)

	mysql> SELECT * FROM CLIENTE;
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	| NOME   | SEXO | EMAIL               | CPF       | TELEFONE  | ENDERECO                                      |
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	| JOAO   | M    | JOAO@GMAIL.COM      | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | CELIA@GMAIL.COM     | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| JORGE  | M    | NULL                | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	| LILIAN | F    | NULL                | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| ANA    | F    | ANA@GLOBO.COM       |  85548962 | 548556985 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
	| CARLA  | F    | CARLA@TERATI.COM.BR |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	6 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO FROM CLIENTE
	    -> WHERE ENDERECO LIKE '%RJ';
	+--------+------+
	| NOME   | SEXO |
	+--------+------+
	| JOAO   | M    |
	| CELIA  | F    |
	| LILIAN | F    |
	+--------+------+
	3 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
	    -> WHERE ENDERECO LIKE '%RJ';
	+--------+------+-----------------------------------------------+
	| NOME   | SEXO | ENDERECO                                      |
	+--------+------+-----------------------------------------------+
	| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	+--------+------+-----------------------------------------------+
	3 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
	    -> WHERE ENDERECO LIKE 'OSCAR CURY%';
	+-------+------+-----------------------------------------------+
	| NOME  | SEXO | ENDERECO                                      |
	+-------+------+-----------------------------------------------+
	| JORGE | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	+-------+------+-----------------------------------------------+
	1 row in set (0.00 sec)

	mysql> SELECT * FROM CLIENTE;
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	| NOME   | SEXO | EMAIL               | CPF       | TELEFONE  | ENDERECO                                      |
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	| JOAO   | M    | JOAO@GMAIL.COM      | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | CELIA@GMAIL.COM     | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| JORGE  | M    | NULL                | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	| LILIAN | F    | NULL                | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| ANA    | F    | ANA@GLOBO.COM       |  85548962 | 548556985 | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
	| CARLA  | F    | CARLA@TERATI.COM.BR |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	+--------+------+---------------------+-----------+-----------+-----------------------------------------------+
	6 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
	    -> WHERE ENDERECO LIKE '%CENTRO%';
	+-------+------+-----------------------------------------------+
	| NOME  | SEXO | ENDERECO                                      |
	+-------+------+-----------------------------------------------+
	| CELIA | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| ANA   | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
	| CARLA | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	+-------+------+-----------------------------------------------+
	3 rows in set (0.00 sec)
```