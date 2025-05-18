
# 🗃️ SQL Snippets Collection
Este repositório contém uma coleção de comandos SQL organizados por diferentes sistemas gerenciadores de banco de dados (SGBDs). Ele serve como uma referência rápida para desenvolvedores, DBAs e entusiastas que trabalham com múltiplos bancos de dados.

## 🧩 Estrutura do Repositório
```bash
comandos-sql/
├── Mysql/
│   ├── criar_usuario.sql # Criação de usuário até a versão 8 do mysql
│   ├── criar_usuario84.sql # Criação de usuário após a versão 8 do mysql
│   ├── ddl.sql
│   ├── dml.sql
│   ├── popular_tabela_fake.sql # Criação de tabela com dados aleatórios no mysql
│   ├── queries.sql
│   ├── verificar_duplicatas.sql # Queries para validação de dados duplicados na tabela
├── postgresql/ # Em Construção
│   ├── ddl.sql
│   ├── dml.sql
│   ├── queries.sql
├── sqlserver/ # Em Construção
│   ├── ddl.sql
│   ├── dml.sql
│   ├── queries.sql
├── oracle/ # Em Construção
│   ├── ddl.sql
│   ├── dml.sql
│   ├── queries.sql
└── README.md
```
ddl.sql – Comandos de definição de dados (CREATE, ALTER, DROP)

dml.sql – Comandos de manipulação de dados (INSERT, UPDATE, DELETE)

queries.sql – Consultas SELECT úteis e complexas

## 💡 Objetivo

Reunir em um só lugar comandos SQL úteis para:

- Aprendizado
- Desenvolvimento de sistemas multi-SGBD
- Testes de compatibilidade entre bancos
- Consulta rápida no dia a dia

## 🛠️ Como usar

1. Clone este repositório:
   ```bash
   git clone https://github.com/DiegoNascimento1/comandos-sql
   cd comandos-sql
   ```

2. Acesse a pasta do SGBD desejado:

    ```bash
    cd Mysql  # ou Postgresql, Sqlserver, Oracle...
    ```
3. Execute os comandos em seu cliente SQL preferido.

## 📦 SGBDs Suportados

- MySQL
- PostgreSQL
- SQL Server
- Oracle

## 🤝 Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

Como contribuir

1. Faça um fork do repositório

2. Crie uma branch:

    ```bash
    git checkout -b nova-feature
    ```

3. Adicione seus comandos

4. Faça o commit:

    ```bash
    git commit -am "Adiciona novo comando SQL para PostgreSQL"
    ```
5. Faça push para a branch:

    ```bash
    git push origin nova-feature
    ```

6. Abra um Pull Request e aguarde a aprovação após a revisão

## 🙏 Agradecimento

Este repositório foi feito com carinho ❤️ para toda a comunidade que vive e respira dados.  
Se este conteúdo te ajudou, compartilhe com alguém que também possa se beneficiar.

> <center> "Compartilhar conhecimento é multiplicar sabedoria."