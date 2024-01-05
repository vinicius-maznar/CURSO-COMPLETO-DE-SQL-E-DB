/* PASSO 1: Inserindo dados */

/* INPUT */
INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAO@IG.COM.BR','12378945613');
INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOS@IG.COM.BR','45612378956');
INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM.BR','15975312312');
INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'14785236989');
INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM.BR','75689412325');
INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','CELIA@IG.COM.BR','74896512325');

/* OUTPUT
mysql> INSERT INTO CLIENTE VALUES(NULL,'JOAO','M','JOAO@IG.COM.BR','12378945613');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'CARLOS','M','CARLOS@IG.COM.BR','45612378956');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'ANA','F','ANA@IG.COM.BR','15975312312');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'CLARA','F',NULL,'14785236989');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'JORGE','M','JORGE@IG.COM.BR','75689412325');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO CLIENTE VALUES(NULL,'CELIA','M','CELIA@IG.COM.BR','74896512325');
Query OK, 1 row affected (0.00 sec)
*/


/* PASSO 7: Checando os dados inseridos */

/* INPUT */
SELECT * FROM CLIENTE;

/* OUTPUT
mysql> SELECT * FROM CLIENTE;
+-----------+--------+------+------------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF         |
+-----------+--------+------+------------------+-------------+
|         1 | JOAO   | M    | JOAO@IG.COM.BR   | 12378945613 |
|         3 | CARLOS | M    | CARLOS@IG.COM.BR | 45612378956 |
|         4 | ANA    | F    | ANA@IG.COM.BR    | 15975312312 |
|         5 | CLARA  | F    | NULL             | 14785236989 |
|         6 | JORGE  | M    | JORGE@IG.COM.BR  | 75689412325 |
|         7 | CELIA  | M    | CELIA@IG.COM.BR  | 74896512325 |
+-----------+--------+------+------------------+-------------+
6 rows in set (0.00 sec)
*/
