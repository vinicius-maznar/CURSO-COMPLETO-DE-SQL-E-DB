# 📝 **Partes da Query (SELEÇÃO, PROJEÇÃO E JUNÇÃO)**

## 👉 **O COMANDO 'SELECT' - (Que Pertence a PROJEÇÃO)**

- O comando 'SELECT' mostra (projeta) as informações selecionadas e especificadas no corpo do comando.

## ⁉ O QUE ENGLOBA O COMANDO 'SHOW TABLES' - QUE SÓ EXISTE NO MYSQL?

- O comando 'SHOW TABLES', existente somente no MYSQL, corresponde ao comando ' SELECT FROM <Dicionário de Dados>; '.

- Todo Banco de Dados possuí seu respectivo DICIONÁRIO DE DADOS.

##  **CONSTRUINDO PROJEÇÕES**

## 🦸‍♀️ **ALIAS DE COLUNAS (ALIAS = MÁSCARA DE FORMATAÇÃO PARA PROJETAR O NOME DE UMA COLUNA)**

`SELECT NOW();`

`SELECT NOW() AS DATA_HORA;`

`SELECT NOW() AS DATA_HORA, 'VINICIUS AZNAR' AS ALUNO;`

`SELECT 'VINICIUS AZNAR';`

`SELECT 'BANCO DE DADOS';`

- O comando 'SELECT' não significa selecionar.

- 'SELECT' projeta as informações selecionadas para o usuário.

- Com o comando 'SELECT' é possível projetar colunas que existem em uma tabela real, dentro do Banco de Dados, ou colunas hipotéticas, que podem não existir dentro da estrutura de alguma tabela (Projetar colunas que não existem).

## 👩‍🏫 **EXEMPLOS DE COMANDO DE PROJEÇÃO**

```
SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;
 ```

## 📚 **SOMENTE PARA FINS ACADÊMICOS**

- O comando abaixo pode impactar de forma negativa na performance e tráfego dos dados, pois a Query solicitada se torna muito robusta, requisitando um número maior de dados do que o necessário, aumentando o processamento do Banco de Dados de forma desnecessária e impactando a velocidade da rede por conta do tráfego maior exigido.

- O seguinte comando também ignora o índice de uma tabela e, consequentemente, gera um 'FULL SCAN' em toda a tabela de uma forma desnecessária, lendo e trazendo cada informação contida dentro da tabela especificada no comando.

`SELECT * FROM CLIENTE;`

## ⛰ **PANORAMA GERAL**

```
	mysql> SELECT NOW();
	+---------------------+
	| NOW()               |
	+---------------------+
	| 2024-01-02 08:09:22 |
	+---------------------+
	1 row in set (0.00 sec)

	mysql> SELECT NOW();
	+---------------------+
	| NOW()               |
	+---------------------+
	| 2024-01-02 08:11:18 |
	+---------------------+
	1 row in set (0.01 sec)

	mysql>
	mysql> SELECT 'VINICIUS AZNAR';
	+----------------+
	| VINICIUS AZNAR |
	+----------------+
	| VINICIUS AZNAR |
	+----------------+
	1 row in set (0.00 sec)

	mysql>
	mysql> SELECT 'BANCO DE DADOS';
	+----------------+
	| BANCO DE DADOS |
	+----------------+
	| BANCO DE DADOS |
	+----------------+
	1 row in set (0.01 sec)

	mysql> SELECT NOW();
	+---------------------+
	| NOW()               |
	+---------------------+
	| 2024-01-02 08:14:26 |
	+---------------------+
	1 row in set (0.00 sec)

	mysql>
	mysql> SELECT NOW() AS DATA_HORA;
	+---------------------+
	| DATA_HORA           |
	+---------------------+
	| 2024-01-02 08:14:26 |
	+---------------------+
	1 row in set (0.00 sec)

	mysql>
	mysql> SELECT NOW() AS DATA_HORA, 'VINICIUS AZNAR' AS ALUNO;
	+---------------------+----------------+
	| DATA_HORA           | ALUNO          |
	+---------------------+----------------+
	| 2024-01-02 08:14:27 | VINICIUS AZNAR |
	+---------------------+----------------+
	1 row in set (0.00 sec)

	mysql> SELECT NOME, SEXO, EMAIL FROM CLIENTE;
	+--------+------+---------------------+
	| NOME   | SEXO | EMAIL               |
	+--------+------+---------------------+
	| JOAO   | M    | JOAO@GMAIL.COM      |
	| CELIA  | F    | CELIA@GMAIL.COM     |
	| JORGE  | M    | NULL                |
	| LILIAN | F    | NULL                |
	| ANA    | F    | ANA@GLOBO.COM       |
	| CARLA  | F    | CARLA@TERATI.COM.BR |
	+--------+------+---------------------+
	6 rows in set (0.00 sec)

	mysql> SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;
	+---------+------+---------------------+
	| CLIENTE | SEXO | EMAIL               |
	+---------+------+---------------------+
	| JOAO    | M    | JOAO@GMAIL.COM      |
	| CELIA   | F    | CELIA@GMAIL.COM     |
	| JORGE   | M    | NULL                |
	| LILIAN  | F    | NULL                |
	| ANA     | F    | ANA@GLOBO.COM       |
	| CARLA   | F    | CARLA@TERATI.COM.BR |
	+---------+------+---------------------+
	6 rows in set (0.00 sec)

	mysql> SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;
	+--------+------+---------------------+-----------------------------------------------+
	| NOME   | SEXO | EMAIL               | ENDERECO                                      |
	+--------+------+---------------------+-----------------------------------------------+
	| JOAO   | M    | JOAO@GMAIL.COM      | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | CELIA@GMAIL.COM     | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| JORGE  | M    | NULL                | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	| LILIAN | F    | NULL                | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| ANA    | F    | ANA@GLOBO.COM       | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
	| CARLA  | F    | CARLA@TERATI.COM.BR | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	+--------+------+---------------------+-----------------------------------------------+
	6 rows in set (0.00 sec)

	mysql> SELECT EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;
	+---------------------+------+-----------------------------------------------+--------+
	| EMAIL               | SEXO | ENDERECO                                      | NOME   |
	+---------------------+------+-----------------------------------------------+--------+
	| JOAO@GMAIL.COM      | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  | JOAO   |
	| CELIA@GMAIL.COM     | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      | CELIA  |
	| NULL                | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG | JORGE  |
	| NULL                | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ | LILIAN |
	| ANA@GLOBO.COM       | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP | ANA    |
	| CARLA@TERATI.COM.BR | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   | CARLA  |
	+---------------------+------+-----------------------------------------------+--------+
	6 rows in set (0.00 sec)

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

	mysql> SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;
	+---------------------+------+-----------------------------------------------+--------+---------------------+
	| EMAIL               | SEXO | ENDERECO                                      | NOME   | DATA_HORA           |
	+---------------------+------+-----------------------------------------------+--------+---------------------+
	| JOAO@GMAIL.COM      | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  | JOAO   | 2024-01-02 08:57:08 |
	| CELIA@GMAIL.COM     | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      | CELIA  | 2024-01-02 08:57:08 |
	| NULL                | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG | JORGE  | 2024-01-02 08:57:08 |
	| NULL                | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ | LILIAN | 2024-01-02 08:57:08 |
	| ANA@GLOBO.COM       | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP | ANA    | 2024-01-02 08:57:08 |
	| CARLA@TERATI.COM.BR | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   | CARLA  | 2024-01-02 08:57:08 |
	+---------------------+------+-----------------------------------------------+--------+---------------------+
	6 rows in set (0.00 sec)
```
