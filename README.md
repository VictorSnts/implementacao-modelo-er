# implementacao-modelo-er
Projeto desenvolvido no curso "Modelagem de banco de dados relacional: entendendo SQL" da Alura que resultou em uma implementação de um modelo entidade-relacionamento proposto. Alem do conteudo do curso, realizei a criação do banco de dados em um container Docker, utilizando Dockerfile e Docker Compose.

## Curso - Modelagem de banco de dados relacional: entendendo SQL
### Dependencias para  execução:
- Comando para construir e iniciar o DB em um container Docker (Primeira execução)
    - docker-compose up --build
    Com a execução desse comando sera criado um container rodando um banco de dados MySql com o schema "clube_do_livro" e as tabelas "ESTOQUE", "LIVROS", "VENDAS" e "VENDEDORES" criadas de acordo com o modelo entidade-relacionamento e alguns dados inseridos nessas tabelas.

- Comando para iniciar o container
    - docker-compose up

- Acesso ao banco no Workbench
    - Hostname: 127.0.0.1
    - Port: 3306
    - Password: senha_root

### Objetivo:
Este curso teve como objetivo apresentar os fundamentos essenciais do SQL e MySQL, desde a importância da linguagem SQL na implementação de modelos relacionais até a criação e manipulação de tabelas, incluindo a definição de chaves primárias e estrangeiras para garantir a integridade dos dados. Apresentou técnicas para inserir, atualizar e excluir informações, além de explorar o uso de filtros e funções de agregação para obter informações específicas e métricas relevantes. Também introduziu os conceitos de junção entre tabelas, proporcionando uma compreensão abrangente das operações fundamentais para o gerenciamento eficaz de bancos de dados relacionais.

### Habilidades Adquiridas:
- Criar um Container com um banco de dados MySql utilizando Dockerfile e Docker compose
- Construir um esquema usando o comando CREATE SCHEMA;
- Criar uma tabela usando o comando CREATE TABLE incluindo chaver primarias e estrangeiras;
- Inserir dados usando o comando INSERT;
- Desativar e ativar as restrições de chave estrangeira usando o comando SET FOREIGN_KEY_CHECKS.
- Selecionar as informações usando o comando SELECT;
- Selecionar informações específicas usando o WHERE para criar filtros;
- Aplicar os comandos AND, OR e NOT para adicionar condições e personalizar os filtros da consulta;
- Selecionar informaçõessem linhas duplicadas com o comando SELECT DISTINCT;
- Ordenar a tabela usando o comando ORDER BY;
- Deletar e atualizar informações usando o DELETE e o UPDATE.
- Construir filtro usando duas tabelas com o comando WHERE;
- Usar funções de agregações para trazer métricas nas consultas;
- Identificar a origem do campo selecionado usando o modelo TABELA.CAMPO;
- Fazer a junção entre tabelas com o INNER JOIN, LEFT JOIN e RIGHT JOIN.
