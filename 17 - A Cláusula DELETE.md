# ❌ **A CLÁUSULA DELETE**

- Muito cuidado ao usar a cláusula `DELETE`. Faça sempre uma projeção dos dados com o `SELECT` para conferir os mesmos.

- O `DELETE` deve ser sempre utilizado com o filtro `WHERE`.

## ⛔ DELETANDO REGISTROS COM A CLÁUSULA `DELETE`

- **PASSO 1:** Sempre conte a quantidade de registros antes de usar o comando `DELETE`

	- INPUT:
	```
	SELECT COUNT(*) AS "QUANTIDADE DE CLIENTES" FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT COUNT(*) AS "QUANTIDADE DE CLIENTES" FROM CLIENTE;
	+------------------------+
	| QUANTIDADE DE CLIENTES |
	+------------------------+
	|                      6 |
	+------------------------+
	1 row in set (0.00 sec)
	```

- **PASSO 2:** Contando a quantidade de registros com o nome 'Ana'

	- INPUT:
	```
	SELECT COUNT(*) AS "QUANTIDADE DE CLIENTES COM O NOME ANA" FROM CLIENTE
	WHERE NOME = 'ANA';
	```

	- OUTPUT:
	```
	mysql> SELECT COUNT(*) AS "QUANTIDADE DE CLIENTES COM O NOME ANA" FROM CLIENTE
	    -> WHERE NOME = 'ANA';
	+---------------------------------------+
	| QUANTIDADE DE CLIENTES COM O NOME ANA |
	+---------------------------------------+
	|                                     1 |
	+---------------------------------------+
	1 row in set (0.00 sec)
	```

- **PASSO 3:** Deletando o registro desejado

	- INPUT:
	```
	DELETE FROM CLIENTE
	WHERE NOME = 'ANA';
	```

	- OUTPUT:
	```
	mysql> DELETE FROM CLIENTE
	    -> WHERE NOME = 'ANA';
	Query OK, 1 row affected (0.02 sec)
	```

- **PASSO 4:** Confira, pela quantidade restante, se o registro foi realmente deletado (Se haviam 6 registros, um dele com o nome 'Ana', logo deverão restar 5 registros no total)


	- INPUT
	```
	SELECT COUNT(*) FROM CLIENTE;
	```

	- OUTPUT
	```
	mysql> SELECT COUNT(*) FROM CLIENTE;
	+----------+
	| COUNT(*) |
	+----------+
	|        5 |
	+----------+
	1 row in set (0.02 sec)
	```

## PROJETANDO ADIÇÃO

	- INPUT:
	```
	SELECT 6 - 1;
	```

	- OUTPUT:
	```
	mysql> SELECT 6 - 1;
	+-------+
	| 6 - 1 |
	+-------+
	|     5 |
	+-------+
	1 row in set (0.01 sec)
	```

## DELETANDO REGISTRO ESPECÍFICO

	- **PASSO 1:** Inserindo um novo registro

	- INPUT:
	```
	INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'4575-0048','RUA COPPER LEAF - WILLIAMSBURG - KITCHNER');
	```

	- OUTPUT:
	```
	mysql> INSERT INTO CLIENTE VALUES('CARLA','F','C.LOPES@UOL.COM',45638854,'4575-0048','RUA COPPER LEAF - WILLIAMSBURG - KITCHNER');
	Query OK, 1 row affected (0.00 sec)
	```

- **PASSO 2:** Conferindo se o registro foi inserido

	- INPUT:
	```
	SELECT * FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT * FROM CLIENTE;
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	| JOAO   | M    | JOAO@IG.COM.BR     | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | LILIAN@HOTMAIL.COM | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| CARLA  | F    | LILIAN@HOTMAIL.COM |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
	| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHNER     |
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	6 rows in set (0.00 sec)
	```

- **PASSO 3:** Projetando os dados a serem deletados

	- INPUT:
	```
	SELECT * FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM';
	```

	- OUTPUT:
	```
	mysql> SELECT * FROM CLIENTE
	    -> WHERE NOME = 'CARLA'
	    -> AND EMAIL = 'LILIAN@HOTMAIL.COM';
	+-------+------+--------------------+---------+----------+---------------------------------------------+
	| NOME  | SEXO | EMAIL              | CPF     | TELEFONE | ENDERECO                                    |
	+-------+------+--------------------+---------+----------+---------------------------------------------+
	| CARLA | F    | LILIAN@HOTMAIL.COM | 7745828 | 66587458 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG |
	+-------+------+--------------------+---------+----------+---------------------------------------------+
	1 row in set (0.00 sec)
	```

- **PASSO 4:** Deletando os dados desejados

	- INPUT:
	```
	DELETE FROM CLIENTE
	WHERE NOME = 'CARLA'
	AND EMAIL = 'LILIAN@HOTMAIL.COM';
	```

	- OUTPUT:
	```
	mysql> DELETE FROM CLIENTE
	    -> WHERE NOME = 'CARLA'
	    -> AND EMAIL = 'LILIAN@HOTMAIL.COM';
	Query OK, 1 row affected (0.03 sec)
	```

- **PASSO 5:** Conferindo se os dados foram deletados corretamente

	- INPUT:
	```
	SELECT * FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT * FROM CLIENTE;
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	| JOAO   | M    | JOAO@IG.COM.BR     | 988638273 | 22923110  | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
	| CELIA  | F    | LILIAN@HOTMAIL.COM | 541521456 | 25078869  | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
	| JORGE  | M    | JORGE@IG.COM.BR    | 885755896 | 58748895  | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
	| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
	| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHNER     |
	+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
	5 rows in set (0.00 sec)
	```
