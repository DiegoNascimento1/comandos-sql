/*
* DDL (Data Definition Language) - Linguagem de Definição de Dados
* Comandos DDL são usados para definir e modificar a estrutura de um banco de dados.
* Os principais comandos DDL incluem CREATE, ALTER, DROP e TRUNCATE.
*/

-- 1. CREATE: Cria um novo banco de dados ou tabela.
-- CREATE TABLE: Cria a tabela 'clientes'
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_nascimento DATE
);

-- CREATE INDEX: Cria um índice para o email dos clientes
CREATE INDEX idx_clientes_email ON clientes(email);

-- CREATE TABLE: Cria a tabela 'pedidos'
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATE,
    valor DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- 2. ALTER: Modifica a estrutura de um banco de dados ou tabela existente.
-- ALTER TABLE: Adiciona uma nova coluna 'telefone' à tabela 'clientes'
ALTER TABLE clientes
ADD COLUMN telefone VARCHAR(20);

-- ALTER TABLE: Modifica o tipo da coluna 'nome' para aceitar até 150 caracteres
ALTER TABLE clientes
MODIFY COLUMN nome VARCHAR(150) NOT NULL;

-- 3. DROP: Remove um banco de dados ou tabela existente.
-- ALTER TABLE: Remove a coluna 'data_nascimento' da tabela 'clientes'
ALTER TABLE clientes
DROP COLUMN data_nascimento;

-- DROP TABLE: Remove a tabela 'pedidos' do banco de dados
DROP TABLE pedidos;

-- DROP INDEX: Remove o índice criado para o email dos clientes
DROP INDEX idx_clientes_email ON clientes;

-- 4. TRUNCATE: Remove todos os dados de uma tabela, mas mantém a estrutura.
-- TRUNCATE TABLE: Remove todos os dados da tabela 'clientes', mas mantém a estrutura
TRUNCATE TABLE clientes;
