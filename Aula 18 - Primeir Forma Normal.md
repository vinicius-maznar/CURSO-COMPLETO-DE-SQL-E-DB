# 1️⃣ **PRIMEIRA FORMA NORMAL**

- **Primeira Forma Normal (1FN):**
  
  - ⁉ **Definição:**

    - A primeira forma normal é um princípio na modelagem de dados que garante a eliminação de duplicações e redundâncias em um banco de dados.

    - Colunas = CAMPOS.

  	- Linhas = REGISTROS.

  	- CHAVE NATURAL: É um registro, já existente entre no banco de dados, que pertence unanimamente a um respectivo dado, que não se repete entre outros registros.

  	- CHAVE ARTIFICIAL: É um registro criado, além dos dados originais, para que pertença unanimanente a umr espectivo dado, que não se repete entre outros regitros.
  
  
  - 🧩 **Características Principais:**

    - Cada coluna em uma tabela deve conter apenas valores atômicos, ou seja, valores indivisíveis.

    - Não deve haver repetição de grupos de colunas ou conjuntos de valores.

  	- Todo campo VETORIZADO se tornará outra tabela.

  	- Todo campo MULTIVALORADO  se tornará outra tabela (QUANDO O CAMPO FOR DIVISÍVEL).

  	- Toda tabela necessita de pelo menos um campo que identifque todo o registro com SENDO ÚNICO. Esse campo é chamado de
  	CHAVE PRIMÁRIA (PRIMARY KEY).

  
  - 👩‍🏫 **Exemplo:**
    
    - Antes da 1FN: 
      ```plaintext
      | LivroID | Autores                  |
      |---------|--------------------------|
      | 1       | Autor1, Autor2, Autor3   |
      | 2       | Autor2, Autor4           |
      ```
    - Após a 1FN:
      ```plaintext
      | LivroID | Autor       |
      |---------|-------------|
      | 1       | Autor1      |
      | 1       | Autor2      |
      | 1       | Autor3      |
      | 2       | Autor2      |
      | 2       | Autor4      |
      ```

- ✔ **Vantagens da 1FN:**
  - Melhora a eficiência na consulta e manipulação dos dados.
  - Evita redundâncias e facilita a manutenção do banco de dados.


- 💭🤔 **Considerações Adicionais:**
  - A 1FN é a base para formas normais subsequentes (2FN, 3FN, etc.).
  - É fundamental para garantir a integridade e consistência dos dados em um banco de dados relacional.
  - A aplicação da 1FN depende da natureza dos dados e dos requisitos específicos do projeto.