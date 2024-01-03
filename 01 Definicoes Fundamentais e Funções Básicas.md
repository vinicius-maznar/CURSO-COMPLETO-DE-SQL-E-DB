# 👩‍🏫 **DEFINIÇÕES FUNDAMENTAIS**

- **BANCO DE DADOS:** 	
	Conjunto de arquivos agrupados, geralmente estabelecendo algum tipo de relação entre si, localizados no HD.

- **SGBD (SISTEMA DE GERENCIAMENTO DE BANCO DE DADOS):** 
	É a tela do prompt de comandos (tela preta) que se conecta com um conjunto de dados agrupados e que é utlizado como interface para que o usuário possa interagir com estes dados.

- **FUNÇÃO BÁSICA DO BANDO DE DADOS:** 
	Além de guardar informações, é comparar os dados que o usuário inseriu com os dados armazenados em uma determinada tabela. Gerenciar dados.

- **FUNÇÃO BÁSICA DO FRONT-END:** 
	Mostrar as informarções contidas no bando de dados de forma amigável para o usuário.

## 🔎 **PROCURAR UM DIRETÓRIO DE DADOS:**

**COMANDO:** 
- `SHOW VARIABLES LIKE 'datadir';`

```
			mysql> show variables like 'datadir';
			+---------------+---------------------------------------------+
			| Variable_name | Value                                       |
			+---------------+---------------------------------------------+
			| datadir       | C:\ProgramData\MySQL\MySQL Server 5.5\Data\ |
			+---------------+---------------------------------------------+
```
