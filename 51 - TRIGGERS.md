# 🔫 **TRIGGERS EM BANCOS DE DADOS**

## ⁉ **DEFINIÇÃO:**
  - Triggers são procedimentos armazenados que são automaticamente executados em resposta a eventos específicos em tabelas ou visualizações de um banco de dados.

	  - **Eventos Disparadores:**
	    - Incluem INSERT, UPDATE e DELETE, podendo ser acionados antes ou depois da execução da operação.

	  - **Finalidades Comuns:**
	    - Validar ou modificar dados antes de serem inseridos, atualizados ou removidos.
	    - Executar ações automáticas em resposta a alterações nas tabelas.
	    - Implementar lógica de negócios complexa ou auditoria.

## 📣 **SINTAXE BÁSICA:**

  - Exemplo de criação de uma trigger:
```SQL
      CREATE TRIGGER NOME_TRIGGER
      BEFORE INSERT ON NOME_TABELA
      FOR EACH ROW
      BEGIN
        -- LÓGICA DA TRIGGER AQUI
      END;
```

## 🧩 **TIPOS DE TRIGGERS:**
   
   - **BEFORE Triggers:** Executados antes da operação principal.
   - **AFTER Triggers:** Executados após a operação principal.
   - **INSTEAD OF Triggers:** Substituem a operação principal.

## 🤔 **CONSIDERAÇÕES DE DESEMPENHO:**

   - Triggers podem impactar o desempenho do sistema, por isso devem ser usados com cuidado.
   - Devem ser projetados eficientemente para evitar atrasos nas operações do banco de dados.


## **PASSO 1:** CRIANDO A DB `BIBLIOTECA`;
```SQL
/*INPUT*/


/*OUTPUT*/

```
