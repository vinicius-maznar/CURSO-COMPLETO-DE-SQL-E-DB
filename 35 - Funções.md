# 🛠🗝 **FUNÇÕES - IFNULL**

## ⁉ **DEFINIÇÃO: FUNÇÃO**

- É um bloco de código que executa determinada função.

- Existem funções com e sem parâmetros.

- O comando `NOW()` é um exemplo de função SEM parâmtros que retorna a data e a hora local.

## ⁉ **DEFINIÇÃO: FUNÇÃO IFNULL()**

- A função `IFNULL()` localiza um registro nulo em uma coluna especificada dentro do seu parâmetro e retorna um `ALIAS` para a palavra `NULL`,
que define o tipo do registro nulo.

```SQL
/*INPUT*/
SELECT C.NOME, IFNULL(C.EMAIL,'*********') AS EMAIL, E.ESTADO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

/*OUTPUT*/
mysql> SELECT C.NOME, IFNULL(C.EMAIL,'*********') AS EMAIL, E.ESTADO, T.NUMERO
    -> FROM CLIENTE C
    -> INNER JOIN ENDERECO E
    -> ON C.IDCLIENTE = E.ID_CLIENTE
    -> INNER JOIN TELEFONE T
    -> ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+-------------------+--------+----------+
| NOME    | EMAIL             | ESTADO | NUMERO   |
+---------+-------------------+--------+----------+
| JOAO    | JOAOA@IG.COM      | RJ     | 87866896 |
| JOAO    | JOAOA@IG.COM      | RJ     | 99667587 |
| JOAO    | JOAOA@IG.COM      | RJ     | 66687899 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 54768899 |
| CARLOS  | CARLOSA@IG.COM    | RJ     | 88687909 |
| ANA     | ANA@IG.COM        | SP     | 78989765 |
| ANA     | ANA@IG.COM        | SP     | 99766676 |
| JORGE   | JORGE@IG.COM      | ES     | 78458743 |
| JORGE   | JORGE@IG.COM      | ES     | 56576876 |
| JORGE   | JORGE@IG.COM      | ES     | 89986668 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 68976565 |
| FLAVIO  | FLAVIO@IG.COM     | MG     | 99656675 |
| GIOVANA | *********         | RJ     | 33567765 |
| GIOVANA | *********         | RJ     | 88668786 |
| GIOVANA | *********         | RJ     | 55689654 |
| KARLA   | KARLA@GMAIL.COM   | RJ     | 88687979 |
| DANIELE | DANIELE@GMAIL.COM | ES     | 88965676 |
| EDUARDO | *********         | PR     | 89966809 |
| ANTONIO | ANTONIO@IG.COM    | SP     | 88679978 |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 99655768 |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 89955665 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 77455786 |
| CARMEM  | CARMEM@IG.COM     | RJ     | 89766554 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 77755785 |
| ADRIANA | ADRIANA@GMAIL.COM | RJ     | 44522578 |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 44522578 |
+---------+-------------------+--------+----------+
26 rows in set (0.00 sec)
```
