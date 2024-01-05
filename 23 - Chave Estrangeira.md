# 🗝✈ **CHAVE ESTRANGEIRA NA MODELAGEM DE DADOS**


## ⁉ **Definição:**

    - Uma chave estrangeira é um atributo ou conjunto de atributos em uma tabela que se refere à chave primária de outra tabela.

    - Estabelece uma relação entre as tabelas, geralmente representando um vínculo entre os dados.

    - É a chave primária de uma tabela que vai até outra tabela para fazer referência entre registros.

## 👯‍♀️🗝 **Chaves estrangeiras e suas regras de relacionamento**

    - Relacionamento (1:1): A chave estrangeira fica na tabela mais fraca.

    - Relacionamento (1:N): A chave estrangeira ficara sempre na cardinalidade N.

## 🧩 **Características Principais:**

    - Garante a integridade referencial entre as tabelas.

    - Permite a criação de relações entre dados distribuídos em diferentes tabelas.

    - Pode aceitar valores nulos, indicando relacionamentos opcionais.

## 👩‍🏫 **Exemplo:**

    - Na tabela "Pedidos", a coluna "IDCliente" pode ser uma chave estrangeira referenciando a chave primária "IDCliente" na tabela "Clientes".

## ✔ **Vantagens:**

    - Evita inconsistências nos dados relacionados.

    - Facilita a recuperação de informações através de junções entre tabelas.

    - Suporta a normalização do banco de dados.

## 🤔 **Como Definir uma Chave Estrangeira:**

  - Pode ser definida durante a criação da tabela, utilizando a cláusula `FOREIGN KEY`.

    ```sql
    CREATE TABLE Pedidos (
        NumeroPedido INT PRIMARY KEY,
        IDCliente INT,
        DataPedido DATE,
        FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
    );
    ```

  - Pode ser adicionada posteriormente usando a cláusula `ALTER TABLE`.

    ```sql
    ALTER TABLE Pedidos
    ADD FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente);
    ```

## 🔨🗝✈ **Operações com Chave Estrangeira:**

  - **Inserção:** Os valores inseridos na coluna de chave estrangeira devem existir na tabela referenciada.

  - **Atualização:** Mudanças na chave primária da tabela referenciada devem ser tratadas, geralmente utilizando a opção `ON UPDATE CASCADE`.

  - **Exclusão:** Existem opções como `ON DELETE CASCADE`, que automaticamente excluem registros relacionados quando o registro pai é excluído.

## ✈🗝🗝✈ **Chaves Estrangeiras Compostas:**

  - Podem envolver mais de um atributo para referenciar a chave primária composta de outra tabela.

  - Exemplo:
  
    ```sql
    CREATE TABLE ItensPedido (
        NumeroPedido INT,
        IDProduto INT,
        Quantidade INT,
        PRIMARY KEY (NumeroPedido, IDProduto),
        FOREIGN KEY (NumeroPedido) REFERENCES Pedidos(NumeroPedido),
        FOREIGN KEY (IDProduto) REFERENCES Produtos(IDProduto)
    );
    ```

## 💭🤔 **Considerações Adicionais:**
  - A utilização adequada de chaves estrangeiras é essencial para garantir a consistência e integridade dos dados em um banco de dados relacional.

  - A normalização do banco de dados muitas vezes envolve o uso efetivo de chaves primárias e estrangeiras para reduzir a redundância e melhorar a eficiência.
