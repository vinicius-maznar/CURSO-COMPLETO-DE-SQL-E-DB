/* BANCO DE DADOS: COMERCIO */


/* PASSO 1: Criar o Banco de Dados */

/* INPUT */
CREATE DATABASE COMERCIO;

/* OUTPUT
mysql> CREATE DATABASE COMERCIO;
Query OK, 1 row affected (0.02 sec)
*/


/* PASSO 2: Conectar-se ao Banco de Dados */

/* INPUT */
USE COMERCIO;

/* OUTPUT
mysql> USE COMERCIO;
Database changed
*/


/* PASSO 3: Criar tabela 'CLIENTE'
	- O 'ENUM' é chamado de DOMÍNIO.

	- 'DOMÍNIO' são opções fixas.

	- O comando 'NOT NULL' impede que algum campo da coluna fique vazio.

	- 'AUTO_INCREMENT' é o comando para controlar automaticamente as chaves primárias numéricas.

	- O comando 'AUTO_INCREMENT' servirá para numerar e incrementar de forma automática a coluna IDCLIENTE.
	(Que é campo das chaves primárias numéricas e não podem se repetir).

/* INPUT */
CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	CPF VARCHAR(15) UNIQUE
);

/* OUTPUT
mysql> CREATE TABLE CLIENTE(
    -> IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30) NOT NULL,
    -> SEXO ENUM('M','F') NOT NULL,
    -> EMAIL VARCHAR(50) UNIQUE,
    -> CPF VARCHAR(15) UNIQUE
    -> );
Query OK, 0 rows affected (0.01 sec)
*/


/* PASSO 4: Criar a tabela 'ENDERECO' */

/* INPUT */
CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	LOGRADOURO VARCHAR(100) NOT NULL,
	BAIRRO VARCHAR (30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* OUTPUT
mysql> CREATE TABLE CLIENTE(
    -> IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30) NOT NULL,
    -> SEXO ENUM('M','F') NOT NULL,
    -> EMAIL VARCHAR(50) UNIQUE,
    -> CPF VARCHAR(15) UNIQUE
    -> );
Query OK, 0 rows affected (0.01 sec)
*/


/* PASSO 5: Criar a tabela 'TELEFONE' */

/* INPUT */
CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM ('RESIDENCIAL', 'COMERCIAL', 'CELULAR') NOT NULL,
	NUMERO VARCHAR(30) NOT NULL
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE)
);

/* OUTPUT
mysql> CREATE TABLE CLIENTE(
    -> IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    -> NOME VARCHAR(30) NOT NULL,
    -> SEXO ENUM('M','F') NOT NULL,
    -> EMAIL VARCHAR(50) UNIQUE,
    -> CPF VARCHAR(15) UNIQUE
    -> );
Query OK, 0 rows affected (0.01 sec)
*/
