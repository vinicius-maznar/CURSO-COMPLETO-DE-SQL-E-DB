# 🔢 **TIPAGEM DE BANCO DE DADOS - ENUM E TIPOS NUMÉRICOS**

## 📝 **ENUM**

- ENUM equivale a palavra Enumeração. É um conjunto de dados enumerados, um conjunto físico de dados.

- O ENUM é utilizado quando se quer limitar a quantidade de dados em uma coluna. Ou seja, quando queremos que, em uma coluna, só seja possível inserir os dados que deliberadamente escolhemos.

- O usuário apenas seleciona as informações disponíveis, sem a necessidade de inserir qualquer dado além dos disponíveis.

- O ENUM só está disponível no MYSQL. Em outros Bancos de Dados é utilizado o comando 'CONSTRAINT'.

## 🔢 **TIPOS NUMÉRICOS - INT e FLOAT**

- O tipo INT corresponde aos números inteiros (10, 660, 12345, ...).

- O tipo FLOAT corresponde ao números com ponto flutuante, ou seja, os números decimais. Quanto maior as casa decimais, mais preciso o número será.

- A quantidade de casas decimais é definida por parâmetros. No comando FLOAT(10, 2),  o valor antes da vírgula define a quantidade total de casas do número. O valor depois da vírgula define a quantidade de casas depois do ponto decimal.

- O maior número de algarismos do tipo INT é de 11 dígitos. Números que possuem mais algarismo costumam ser representados com o tipo 'VARCHAR'. 