# 🆙 **A CLÁUSULA UPDATE**

## 🔨🆙 **Utilizando o 'UPDATE' para atualizar valores**

- **PASSO 1:** Use sempre um `SELECT` antes do update de um registro para confirmar se o dado é mesmo o correto a ser atualizado.

	- INPUT:
	```
	SELECT NOME, EMAIL
	FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT NOME, EMAIL
	    -> FROM CLIENTE;
	+--------+---------------------+
	| NOME   | EMAIL               |
	+--------+---------------------+
	| JOAO   | JOAO@GMAIL.COM      |
	| CELIA  | CELIA@GMAIL.COM     |
	| JORGE  | NULL                |
	| LILIAN | NULL                |
	| ANA    | ANA@GLOBO.COM       |
	| CARLA  | CARLA@TERATI.COM.BR |
	+--------+---------------------+
	6 rows in set (0.00 sec)
	```

- **PASSO 2:** Para fazer a atualização dos dados em uma tabela, usa-se o seguinte comando:

	- INPUT:
	```
	UPDATE CLIENTE
	SET EMAIL = 'LILIAN@HOTMAIL.COM';
	```

	- OUTPUT:
	```
	mysql> UPDATE CLIENTE
	    -> SET EMAIL = 'LILIAN@HOTMAIL.COM';
	Query OK, 6 rows affected (0.03 sec)
	Rows matched: 6  Changed: 6  Warnings: 0
	```

	- Visuazalindo as alterações feitas:

	- INPUT:
	```
	SELECT NOME, EMAIL
	FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT NOME, EMAIL
	    -> FROM CLIENTE;
	+--------+--------------------+
	| NOME   | EMAIL              |
	+--------+--------------------+
	| JOAO   | LILIAN@HOTMAIL.COM |
	| CELIA  | LILIAN@HOTMAIL.COM |
	| JORGE  | LILIAN@HOTMAIL.COM |
	| LILIAN | LILIAN@HOTMAIL.COM |
	| ANA    | LILIAN@HOTMAIL.COM |
	| CARLA  | LILIAN@HOTMAIL.COM |
	+--------+--------------------+
	6 rows in set (0.00 sec)
	```

### ⚠ **IMPORTANTE**: SEM A UTILIZAÇÃO DO `WHERE` PARA ESPECIFICAR OS REGISTROS QUE SERÃO AS ALTERADOS, A UTLIZAÇÃO É FEITA NA COLUNA INTEIRA.

## USANDO O `UPDATE` JUNTO COM O `WHERE`

- **PASSO 1:** Utiliza-se o `SELECT` para projetar os campos e registros a serem alterados:

	- INPUT:
	```
	SELECT NOME, EMAIL FROM CLIENTE
	WHERE NOME = 'JOAO';
	```

	- OUTPUT:
	```
	mysql> SELECT NOME, EMAIL FROM CLIENTE
	    -> WHERE NOME = 'JOAO';
	+------+--------------------+
	| NOME | EMAIL              |
	+------+--------------------+
	| JOAO | LILIAN@HOTMAIL.COM |
	+------+--------------------+
	1 row in set (0.00 sec)
	```

- **PASSO 2:** Fazer a alteração no campo especificado:

	- INPUT:
	```
	UPDATE CLIENTE
	SET EMAIL = 'JOAO@IG.COM.BR'
	WHERE NOME = 'JOAO';
	```

	- OUTPUT
	```
	mysql> UPDATE CLIENTE
	    -> SET EMAIL = 'JOAO@IG.COM.BR'
	    -> WHERE NOME = 'JOAO';
	Query OK, 1 row affected (0.02 sec)
	Rows matched: 1  Changed: 1  Warnings: 0
	```

		- Visuazalindo as alterações feitas:

	- INPUT:
	```
	SELECT NOME, EMAIL
	FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT NOME, EMAIL
	    -> FROM CLIENTE;
	+--------+--------------------+
	| NOME   | EMAIL              |
	+--------+--------------------+
	| JOAO   | JOAO@IG.COM.BR     |
	| CELIA  | LILIAN@HOTMAIL.COM |
	| JORGE  | LILIAN@HOTMAIL.COM |
	| LILIAN | LILIAN@HOTMAIL.COM |
	| ANA    | LILIAN@HOTMAIL.COM |
	| CARLA  | LILIAN@HOTMAIL.COM |
	+--------+--------------------+
	6 rows in set (0.00 sec)
	```

	- **PASSO 3:** Alterando outro campo:

	- INPUT:
	```
	UPDATE CLIENTE
	SET EMAIL = 'JORGE@IG.COM.BR'
	WHERE NOME = 'JORGE';
	```

	- OUTPUT
	```
	mysql> UPDATE CLIENTE
    -> SET EMAIL = 'JORGE@IG.COM.BR'
    -> WHERE NOME = 'JORGE';
	Query OK, 1 row affected (0.00 sec)
	Rows matched: 1  Changed: 1  Warnings: 0
	```

		- Visuazalindo as alterações feitas:

	- INPUT:
	```
	SELECT NOME, EMAIL
	FROM CLIENTE;
	```

	- OUTPUT:
	```
	mysql> SELECT NOME, EMAIL
	    -> FROM CLIENTE;
	+--------+--------------------+
	| NOME   | EMAIL              |
	+--------+--------------------+
	| JOAO   | JOAO@IG.COM.BR     |
	| CELIA  | LILIAN@HOTMAIL.COM |
	| JORGE  | JORGE@IG.COM.BR    |
	| LILIAN | LILIAN@HOTMAIL.COM |
	| ANA    | LILIAN@HOTMAIL.COM |
	| CARLA  | LILIAN@HOTMAIL.COM |
	+--------+--------------------+
	6 rows in set (0.00 sec)
	```