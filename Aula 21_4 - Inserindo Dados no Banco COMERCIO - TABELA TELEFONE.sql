/* PASSO 1: Inserindo dados */

/* INPUT */
INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);

/* OUTPUT
mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);
Query OK, 1 row affected (0.01 sec)
*/


/* PASSO 2: Checando os dados inseridos */

/* INPUT */
SELECT * FROM TELEFONE;

/* OUTPUT
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
*/