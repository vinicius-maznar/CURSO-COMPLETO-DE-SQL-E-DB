# 🔎📝 **PROCEDURES: TRABALHANDO COM TABELAS - CRIANDO PROCEDURE PARA INSERIR DADOS**


## **PASSO 1:** CRIANDO A `PROCEDURE` `LE_CURSO()` PARA CONSULTAR DADOS;
```SQL
/*INPUT*/
DELIMITER #
CREATE PROCEDURE LE_CURSO(P_IDCURSO INT)
BEGIN

	SELECT NOME,HORAS,VALOR FROM CURSOS
	WHERE IDCURSO = P_IDCURSO;
END
#
DELIMITER ;

/*OUTPUT*/
mysql> DELIMITER #
mysql> CREATE PROCEDURE LE_CURSO(P_IDCURSO INT)
    -> BEGIN
    ->
    -> SELECT NOME,HORAS,VALOR FROM CURSOS
    -> WHERE IDCURSO = P_CURSO;
    -> END
    -> #
Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER ;
mysql>
```

## **PASSO 2:** TESTANDO `PROCEDURE` `LE_CURSO()` PARA CONSULTAR DADOS;
```SQL
/*INPUT*/
CALL LE_CURSO(3);

/*OUTPUT*/
mysql> CALL LE_CURSO(3);
+----------+-------+---------+
| NOME     | HORAS | VALOR   |
+----------+-------+---------+
| POWER BI |    20 | 1000.00 |
+----------+-------+---------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)
```
