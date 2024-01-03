## 📝 **CRIANDO TABELA NO BANCO DE DADOS**

- Vamos criar a tabela CLIENTE já com seus respectivos atributos;

- Para criar uma nova tabela dentro do Bando de Dados, já conectado, usá-se o seguinte comando:

```
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)

);
```

## ⚠ **LEMBRE-SE:**
- Dentro da estrutura do comando, após o último atributo NÃO SE DEVE COLOCAR outra vírgula!

## ⛰ **PANORAMA GERAL 1**

```
	mysql> CREATE DATABASE PROJETO;
	Query OK, 1 row affected (0.03 sec)

	mysql> CREATE DATABASE EXEMPLO;
	Query OK, 1 row affected (0.00 sec)

	mysql> USE PROJETO;
	Database changed

	mysql> CREATE TABLE CLIENTE(
	    -> NOME VARCHAR(30),
	    -> SEXO CHAR(1),
	    -> EMAIL VARCHAR(30),
	    -> CPF INT(11),
	    -> TELEFONE VARCHAR(30),
	    -> ENDERECO VARCHAR(100)
	    ->
	    -> );
	Query OK, 0 rows affected (0.01 sec)
```

## 🔎⁉ **VERIFICANDO AS TABELAS DO BANCO**

- Para mostrar as tabelas existentes no banco de dados, utiliza-se o seguinte comando:

`SHOW TABLES;`

## 🔬❗ **VERIFICANDO OS COMPONENTES DENTRO DE UMA TABELA**

- Para mostrar a estrutura interna de uma tabela existente no Bando de Dados, utiliza-se o seguinte comando:

`DESC CLIENTE;`

- A palavra 'CLIENTE', no comando acima, representa o nome dado a tabela a ser verificada.

## ⛰ **PANORAMA GERAL 2**

```
	mysql> SHOW TABLES;
	+-------------------+
	| Tables_in_projeto |
	+-------------------+
	| cliente           |
	+-------------------+
	1 row in set (0.02 sec)

	mysql> DESC CLIENTE;
	+----------+--------------+------+-----+---------+-------+
	| Field    | Type         | Null | Key | Default | Extra |
	+----------+--------------+------+-----+---------+-------+
	| NOME     | varchar(30)  | YES  |     | NULL    |       |
	| SEXO     | char(1)      | YES  |     | NULL    |       |
	| EMAIL    | varchar(30)  | YES  |     | NULL    |       |
	| CPF      | int(11)      | YES  |     | NULL    |       |
	| TELEFONE | varchar(30)  | YES  |     | NULL    |       |
	| ENDERECO | varchar(100) | YES  |     | NULL    |       |
	+----------+--------------+------+-----+---------+-------+
	6 rows in set (0.02 sec)
```