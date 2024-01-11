# 👴👶 **CONCEITO `OLD` E `NEW` EM TRIGGERS:**

## ⁉ **DEFINIÇÃO:**

  - `OLD` e `NEW` são palavras-chave utilizadas em triggers no contexto de eventos que modificam dados, como INSERT, UPDATE e DELETE.

  - **`OLD`:**
    - Representa os valores antigos (anteriores à modificação) das colunas afetadas pela operação da trigger.

    - Usado em triggers AFTER UPDATE e BEFORE DELETE.

  - **`NEW`:**
    - Representa os novos valores (posteriores à modificação) das colunas afetadas pela operação da trigger.

    - Usado em triggers AFTER INSERT e AFTER UPDATE.

# 🛠 **Utilização Comum:**

  - Em triggers BEFORE UPDATE ou BEFORE INSERT, `NEW` é usado para modificar os valores antes da operação real no banco de dados.

  - Em triggers AFTER UPDATE ou AFTER DELETE, `OLD` é frequentemente usado para registrar ou auditar as mudanças ocorridas.

## 👩‍🏫 **EXEMPLO DE USO:**

```SQL
    DELIMITER $
    CREATE TRIGGER exemplo_trigger
    BEFORE UPDATE ON tabela
    FOR EACH ROW
    BEGIN
      -- Utilizando OLD e NEW para lógica personalizada
      IF OLD.coluna <> NEW.coluna THEN
        -- Executar ações específicas se o valor for modificado
        INSERT INTO log_mudancas (tabela, coluna, valor_antigo, valor_novo)
        VALUES ('tabela', 'coluna', OLD.coluna, NEW.coluna);
      END IF;
    END;
    $
    DELIMITER ;
```