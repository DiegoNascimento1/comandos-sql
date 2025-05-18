/*
* Comandos DML (Data Manipulation Language) no MySQL
* DML (Data Manipulation Language) - Linguagem de Manipulação de Dados
* Comandos DML são usados para manipular os dados dentro de um banco de dados.
* Os principais comandos DML incluem INSERT, SELECT, UPDATE e DELETE.
*/

-- 1. INSERT: Insere novos registros em uma tabela.
INSERT INTO nome_tabela (coluna1, coluna2, coluna3)
VALUES (valor1, valor2, valor3);

-- 2. SELECT: Consulta dados de uma tabela.
SELECT coluna1, coluna2
FROM nome_tabela
WHERE id = valor_id;

-- 3. UPDATE: Atualiza dados existentes em uma tabela.
UPDATE nome_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2
WHERE id = valor_id;

-- 4. DELETE: Remove registros de uma tabela.
DELETE FROM nome_tabela
WHERE id = valor_id;
