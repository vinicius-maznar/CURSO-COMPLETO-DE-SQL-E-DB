# 👯‍♀️ **Cardinalidade e Obrigatoriedade na Modelagem de Dados:**

## **Cardinalidade (O MÁXIMO QUE PODERÁ ACONTECER):**

  - N = Mais de um;

  - 1 = Apenas 1;

  - É representado pelo segundo algarísmo no par de relação (1:1) (0:N) (1:N).
   
  - Refere-se à relação entre as entidades em um modelo de dados.
  
  - Descreve o número de ocorrências de uma entidade que pode estar associado a um número de ocorrências da outra entidade.
  
  - Tipos comuns de cardinalidade incluem "um para um" (1:1), "um para muitos" (1:N) e "muitos para muitos" (N:N).


## **Obrigatoriedade (SE VAI ACONTECER):**

  - É representado pelo primeiro algarísmo no par de relação (1:1) (0:N) (1:N).

  - 0 = FALSO, ou seja, NÃO EXISTE a obrigatoriedade.

    - **EXEMPLO:** Se entre a tabela `CLIENTE` e `TELEFONE` **NÃO EXISTE** obrigatoriedade (0), é possivel entrar com os dados do cliente sem inserir os dados sobre o telefone.

  - 1 = VERDADEIRO, ou seja, EXISTE a obrigatoriedade.

    - - **EXEMPLO:** Se entre a tabela `CLIENTE` e `ENDERECO` **EXISTE** obrigatoriedade (0), não será possível entrar com os dados do cliente sem inserir também os dados do endereço.

  - Indica se a existência de uma entidade é obrigatória ou opcional em relação a outra entidade.
  
  - Pode ser "obrigatório" (representado por um traço sólido ─), indicando que a entidade deve estar presente, ou "opcional" (representado por um círculo vazio ○), indicando que a entidade pode estar ausente.
  

## 👩‍🏫 **Exemplo Prático:**

  - Considere um modelo de dados com duas entidades, Livro e Autor.
  
  - A cardinalidade e obrigatoriedade podem ser representadas da seguinte forma:
  
    - Um livro pode ter um ou mais autores (1:N), indicando uma cardinalidade "um para muitos".
  
    - Um autor pode estar associado a muitos livros (1:N), também indicando uma cardinalidade "um para muitos".
  
    - A linha que conecta as entidades pode ser acompanhada por símbolos para indicar obrigatoriedade ou opcionalidade. Exemplo: ─● indica que a existência do Autor é obrigatória na associação com Livro.


## 💎 **Importância na Modelagem:**
  
  - Cardinalidade e obrigatoriedade são cruciais para definir as relações entre as entidades, influenciando a estrutura do banco de dados.
  
  - Auxiliam na compreensão de como os dados estão inter-relacionados e nas operações que podem ser realizadas nas tabelas.


## 💭🤔 **Considerações Adicionais:**
  
  - A correta definição de cardinalidade e obrigatoriedade é essencial para garantir a integridade referencial no banco de dados.
  
  - A análise dos requisitos do sistema e dos relacionamentos entre as entidades é crucial para determinar a cardinalidade e obrigatoriedade adequadas.

  - A leitura da relação entre 2 tabelas é lida pelo segundo algarísmo do par;

    - **EXEMPLO 1:** A tabela `CLIENTE` (1,1) com a tabela `ENDERECO` (1,1) possui um relação de 1 x 1. Pois o segundo algarismo dos pares de cada tabela é 1.

    - **EXEMPLO 2:** A tabela `CLIENTE` (1,1) com a tabela `TELEFONE` (0,N) possui um relação de 1 x N. Pois o segundo algarismo dos pares de cada tabela é 1 e N, respectivamente. 
