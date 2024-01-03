# 🆎 **Tipagem de Tabelas de Bancos de Dados - CHAR E VARCHAR**

- Um banco tipado corretamente é um banco mais leve e mais rápido.

## 👯‍♂️ **TIPO CHAR E VARCHAR**

- 1 caracter corresponde a 1 byte (1 caracter = 1 byte).

## 🅰 **CHAR**

`CHAR(N)`

- O comando 'CHAR' define uma quantidade fixa de BYTES, de acordo com o valor definido dentro dos '( )'.

	- Mesmo que a cadeia de caracteres (String) inserida seja menor que o valor definido no comando 'CHAR', o espaço estipulado continuará do mesmo tamanho.

	- No caso acima, o espaço vago que resta impacta no tráfego de dados pelo excedente não utilizado.

## ⁉ **QUANDO UTILIZAR O 'CHAR'?**

- Quando se sabe que o número de caracteres em uma coluna nunca varia, como a representação de estados federativos (SP, RJ, MG, ...), o sexo de uma pessoa (F ou M) ou valores booleanos como Verdadeiro (0) ou Falso (1). 

- O comando 'CHAR', por não variar o seu tamanho, pode ser mais performático. 

## 🆎 **VARCHAR**

- VARCHAR(N): O comando 'VARCHAR' define uma quantidade, que pode variar, de BYTES, de acordo com o valor definido dentro dos '( )'.

- Caso a cadeia de caracteres (String) inserida seja menor que o valor definido no comando 'VARCHAR', o espaço estipulado irá variar conforme o dado inserido.