/* JUNÇÃO 'INNER JOIN' - PASSO A PASSO */

/* Em ordem: 	PROJEÇÃO, ORIGEM, JUNÇÃO, SELEÇÃO */

/* PASSO 1 (1ª PARTE DA QUERY: PROJEÇÃO) - Montar a projeção */


SELECT NOME, SEXO, EMAIL, TIPO, NUMERO


/* PASSO 2 - (2ª PARTE DA QUERY: ORIGEM) - Apontar a primeira tabela a ser unida 
como a Origem dos dados que vãos ser projetados */


FROM CLIENTE


/* PASSO 3 - (3ª PARTE DA QUERY: JUNÇÃO) - Apontar a segunda tabela para que se possa fazer a junção dos dados.
E quais dados serão os fatores que unem as tabelas */


INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE


/* PASSO 4 - (4ª PARTE DA QUERY: SELEÇÃO) -  Definir os paramêtros do filtro para a projeção dos dados desejados */


WHERE SEXO = 'F';


/* QUERY COMPLETA */


/* INPUT */
SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE
	INNER JOIN ENDERECO
	ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F';


/* OUTPUT
mysql> SELECT NOME, SEXO, BAIRRO, CIDADE
    -> FROM CLIENTE
    -> INNER JOIN ENDERECO
    -> ON IDCLIENTE = ID_CLIENTE
    -> WHERE SEXO = 'F';
+-------+------+---------+--------------+
| NOME  | SEXO | BAIRRO  | CIDADE       |
+-------+------+---------+--------------+
| CLARA | F    | CENTRO  | B. HORIZONTE |
| ANA   | F    | JARDINS | SAO PAULO    |
+-------+------+---------+--------------+
2 rows in set (0.00 sec)
*/