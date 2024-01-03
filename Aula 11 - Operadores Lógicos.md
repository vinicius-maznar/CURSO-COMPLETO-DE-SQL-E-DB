# **OPERADORES LÓGICOS 'OU' E 'AND'**

## **PANORAMA GERAL 1**

```
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
6 rows in set (0.05 sec)
```

## **OR - (OU)**

- Para que a saída da Query seja verdadeira, basta que apenas uma condição seja verdadeira.

#### QUERY 1

```
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'M' OR ENDERECO LIKE '%RJ';
```

#### **EXEMPLO DA QUERY 1**

```
mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
    -> WHERE
    -> SEXO = 'M' OR ENDERECO LIKE '%RJ';
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| JOAO   | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ  |
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| JORGE  | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
+--------+------+-----------------------------------------------+
4 rows in set (0.00 sec)
```

#### **QUERY 2**

```
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
```

#### **EXEMPLO DA QUERY 2**

```
mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
    -> WHERE
    -> SEXO = 'F' OR ENDERECO LIKE '%ESTACIO';
+--------+------+-----------------------------------------------+
| NOME   | SEXO | ENDERECO                                      |
+--------+------+-----------------------------------------------+
| CELIA  | F    | RIACHUELO - CENTRO - RIO DE JANEIRO - RJ      |
| LILIAN | F    | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| ANA    | F    | PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP |
| CARLA  | F    | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
+--------+------+-----------------------------------------------+
4 rows in set (0.00 sec)
```

## **AND - (E)**

- Para que a saída seja verdadeira, todas as condições precisam ser verdadeiras.

#### **QUERY 3**

```
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'M' AND ENDERECO LIKE '%RJ';
```

#### **EXEMPLO DA QUERY 3**

```
mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
    -> WHERE
    -> SEXO = 'M' AND ENDERECO LIKE '%RJ';
+------+------+----------------------------------------------+
| NOME | SEXO | ENDERECO                                     |
+------+------+----------------------------------------------+
| JOAO | M    | MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ |
+------+------+----------------------------------------------+
1 row in set (0.00 sec)
```

#### **QUERY 4**

```
SELECT NOME, SEXO, ENDERECO FROM CLIENTE
WHERE
SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';
```

#### **EXEMPLO DA QUERY 4**

```
mysql> SELECT NOME, SEXO, ENDERECO FROM CLIENTE
    -> WHERE
    -> SEXO = 'F' AND ENDERECO LIKE '%ESTACIO';
Empty set (0.00 sec)
```