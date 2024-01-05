# 🗝 **Chave Primária na Modelagem de Dados:**

## ⁉ **Definição:**

    - Uma chave primária é um atributo ou conjunto de atributos 
    que identifica exclusivamente uma tupla (linha) em uma tabela.
    
    - Garante a unicidade e a identificação única de cada registro na tabela.

## 🧩 **Características Principais:**
    - Não pode conter valores nulos.

    - Deve ser única para cada registro na tabela.

    - Pode consistir em um único atributo ou em uma combinação de atributos.

### 👩‍🏫 **Exemplo:**

    - Na tabela "Clientes", um possível atributo de chave primária seria "IDCliente".

## ✔ **Vantagens:**
    - Facilita a identificação única de registros.

    - Melhora o desempenho em operações de consulta e junção de tabelas.

    - Garante a integridade referencial nas relações entre tabelas.

## 🤔 **Como Definir uma Chave Primária:**

  - Pode ser definida durante a criação da tabela, utilizando a cláusula `PRIMARY KEY`.

    ```sql
    CREATE TABLE Exemplo (
        ID INT PRIMARY KEY,
        Nome VARCHAR(50),
        Email VARCHAR(100)
    );
    ```
  
  - Pode ser adicionada posteriormente usando a cláusula `ALTER TABLE`.

    ```sql
    ALTER TABLE Exemplo
    ADD PRIMARY KEY (ID);
    ```

## 🗝🗝 **Chaves Primárias Compostas:**

  - Consiste em mais de um atributo para formar a chave primária.

  - Exemplo:

    ```sql
    CREATE TABLE Pedido (
        NumeroPedido INT,
        IDCliente INT,
        PRIMARY KEY (NumeroPedido, IDCliente),
        FOREIGN KEY (IDCliente) REFERENCES Clientes(IDCliente)
    );
    ```

## 💭🤔 **Considerações Adicionais:**

  - A escolha da chave primária depende da natureza dos dados e dos requisitos do sistema.

  - Além de chaves primárias, também existem chaves candidatas, que são atributos únicos que poderiam ser escolhidos como chave primária.

  - É importante manter a integridade referencial ao usar chaves primárias em relações entre tabelas.
