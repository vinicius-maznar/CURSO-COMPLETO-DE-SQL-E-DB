# 🗃 **PROCEDIMENTOS ARMAZENADOS - STORED PROCEDURES**

# ⁉ **DEFINIÇÃO :** SÃO `BLOCOS DE PROGRAMAÇÃO` QUE FICAM ARMAZENADOS DENTRO DO BANCO DE DADOS;

## **PASSO 1:** DEFININDO O DELIMITADOR `$`;

- Alterar o `DELIMETER` é necessário para que o banco não pare no meio da leitura de uma procedure.
```SQL
/*INPUT*/
DELIMITER $
STATUS

/*OUTPUT*/
C:\Program Files (x86)\MySQL\MySQL Server 5.5\bin\mysql.exe  Ver 14.14 Distrib 5.5.60, for Win32 (AMD64)

Connection id:          31
Current database:       comercio
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        $
Server version:         5.5.60-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 4 days 12 hours 59 min 25 sec

Threads: 1  Questions: 1662  Slow queries: 0  Opens: 192  Flush tables: 1  Open tables: 0  Queries per second avg: 0.004
```

## **PASSO 2:** CRIANDO A `PROCEDURE` SEM PARÂMETROS;
```SQL
/*INPUT*/
DELIMITER $

CREATE PROCEDURE NOME_EMPRESA()
BEGIN

	SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END
$

DELIMITER ;
/*OUTPUT*/
mysql> DELIMITER $
mysql>
mysql> CREATE PROCEDURE NOME_EMPRESA()
    -> BEGIN
    ->
    -> SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.06 sec)

mysql> DELIMITER ;
```

## **PASSO 3:** CHAMANDO A `PROCEDURE` CRIADA;
```SQL
/*INPUT*/
CALL NOME_EMPRESA();

/*OUTPUT*/
mysql> CALL NOME_EMPRESA();
+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+
1 row in set (0.03 sec)

Query OK, 0 rows affected (0.03 sec)
```

## **PASSO 4:** CRIANDO A `PROCEDURE` COM PARÂMETROS;
```SQL
/*INPUT*/
DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
BEGIN

	SELECT NUMERO1 + NUMERO2 AS CONTA;

END
$

DELIMITER ;

/*OUTPUT*/
mysql> DELIMITER $
mysql>
mysql> CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT)
    -> BEGIN
    ->
    -> SELECT NUMERO1 + NUMERO2 AS CONTA;
    ->
    -> END
    -> $
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
```

## **PASSO 5:** CHAMANDO A `PROCEDURE` CRIADA;
```SQL
/*INPUT*/
mysql> CALL CONTA(345634,4354);
+--------+
| CONTA  |
+--------+
| 349988 |
+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> CALL CONTA(55654,56760);
+--------+
| CONTA  |
+--------+
| 112414 |
+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> CALL CONTA(45646,6766);
+-------+
| CONTA |
+-------+
| 52412 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)
```

## **PASSO 6:** DELETANDO A `PROCEDURE` CRIADA;
```SQL
/*INPUT*/
DROP PROCEDURE CONTA;

/*OUTPUT*/
mysql> DROP PROCEDURE CONTA;
Query OK, 0 rows affected (0.08 sec)
```
