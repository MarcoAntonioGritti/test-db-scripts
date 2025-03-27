## Estrutura do Projeto

A estrutura do projeto está organizada da seguinte forma:

```
```
Teste Banco De Dados/
├── src/  # Código-fonte do projeto
│   ├── dados_cadastrais/  # Código relacionado aos dados cadastrais
│   ├── dados_contabeis/   # Código relacionado aos dados contábeis
│
├── README.md  # Documentação principal do projeto
```

## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes itens instalados:

- **Banco de Dados**: (ex.: MySQL, PostgreSQL, SQL Server, etc.)

## Configuração do Ambiente

1. Clone este repositório para sua máquina local:
   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```
2. Baixar extensões necessárias para trabalhar com o banco de dados:

    - **SQLTools**: Extensão para facilitar a conexão e interação com bancos de dados diretamente no editor.
    - **SQLTools MySQL/MariaDB/TiDB**: Driver para suporte a bancos de dados MySQL, MariaDB e TiDB.

    Instale essas extensões no seu editor de código (ex.: Visual Studio Code) para uma melhor experiência.

## Funcionalidades

- **Criação de Banco de Dados**: Scripts para criar e configurar o banco de dados.
- **Consultas SQL**: Consultas otimizadas para manipulação e extração de dados.

## Como Usar

1. **Criação do Banco de Dados**:
    Antes de tudo, execute o script `create_database.sql` para criar o banco de dados principal.

2. **Configuração dos Dados Cadastrais**:
    - Navegue até a pasta `src/dados_cadastrais/`.
    - Execute os scripts na seguinte ordem:
      1. `create_table.sql`: Criação das tabelas necessárias.
      2. `importacao_dados_relatorio_cadop.sql`: Importação dos dados cadastrais.
      3. `buscar_dados_cadastrais.sql`: Consultas para buscar os dados cadastrados.

3. **Configuração dos Dados Contábeis**:
    - Navegue até a pasta `src/dados_contabeis/`.
    - Para cada período (ex.: `periodo_2023`, `periodo_2024`), siga a sequência:
      1. `create_table.sql`: Criação das tabelas específicas para o período.
      2. Execute os scripts na ordem dos arquivos dentro da pasta correspondente ao período.

4. **Execução de Consultas**:
    - Utilize os scripts em `buscar_periodo_2023.sql` e `buscar_periodo_2024.sql` para realizar análises.
    - Utilize os srcipts em `consulta_analitica_ultimo_ano.sql` e `consulta_analitica_ultimo_trimestre.sql` para realizar análises.

Certifique-se de seguir a sequência indicada para evitar erros de dependência entre os scripts.
