# ⛔ FILTRANDO VALORES NULOS

- **REGRA**: Para filtrar e projetar valores `NULL` utilizamos as seguintes cláusulas, como na linguagem natural do inglês:

- No exemplo abaixo, as Query serão utlizadas no DB 'FUNCIONARIOS' ( `USE FUNCIONARIOS;` ). 

#### `IS NULL`

```
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NULL;
```

#### `IS NOT NULL`

```
SELECT NOME, SEXO, ENDERECO
FROM CLIENTE
WHERE EMAIL IS NOT NULL;
```