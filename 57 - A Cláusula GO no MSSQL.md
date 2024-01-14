# 🔫 **CLÁUSULA GO NO MSSQL:**

## ⁉ **DEFINIÇÃO:**

  - A cláusula `GO` não é um comando SQL, mas sim uma instrução utilizada como delimitador em scripts Transact-SQL no Microsoft SQL Server.

## 🎯 **FINALIDADE:**

  - A cláusula `GO` é utilizada para separar batches de comandos SQL, indicando o término de um bloco de instruções.

## 🛠 **UTILIZAÇÃO:**

  - É comumente usada em scripts que contêm definições de procedimentos armazenados, triggers, views, entre outros.

## ⚠ **OBSERVAÇÕES:**
  - A cláusula `GO` não é interpretada pelo servidor SQL, sendo processada pela ferramenta de administração (como SQL Server Management Studio - SSMS).

  - Define o limite de um batch de comandos, permitindo a execução em partes separadas.

## 👩‍🏫 **EXEMPLO:**

  ```sql
CREATE PROCEDURE MeuProcedimento
AS
BEGIN
-- Corpo do procedimento

SELECT * FROM MinhaTabela;
END
  GO

-- Próximo batch
USE OutroBanco
GO

CREATE TABLE MinhaOutraTabela (
  ID INT PRIMARY KEY,
  Nome VARCHAR(50)
)
GO
    ```
