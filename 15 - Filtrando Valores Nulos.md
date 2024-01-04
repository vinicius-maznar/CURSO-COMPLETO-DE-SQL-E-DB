# ⛔ FILTRANDO VALORES NULOS

- **REGRA**: Para filtrar e projetar valores `NULL` utilizamos as seguintes cláusulas, como na linguagem natural do inglês:

- Não é possível usar o símbolo '=' para o NULL, pois ele é considerado um registro vazio, que não existe,
logo não pode ser comparado com nenhum outro dado;

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
