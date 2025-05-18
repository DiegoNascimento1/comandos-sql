/* 
* Queries SQL básicas e avançadas para MySQL
* Este arquivo contém exemplos de consultas SQL para MySQL, abrangendo desde operações básicas até avançadas.
* As consultas são apresentadas com comentários explicativos para facilitar o entendimento.
*/

-- 1. Selecionar todas as colunas e linhas de uma tabela
SELECT * FROM tabela;
-- Retorna todos os dados da tabela. O * significa "todas as colunas".
-- Cuidado: pode ser lento em tabelas grandes ou se você só precisa de algumas colunas.

-- 2. Selecionar colunas específicas
SELECT coluna1, coluna2 FROM tabela;
-- Retorna apenas as colunas escolhidas, economizando recursos e facilitando a leitura.

-- 3. Filtrar resultados com WHERE
SELECT coluna1 FROM tabela WHERE coluna2 = 'valor';
-- WHERE limita os resultados a linhas que atendem à condição.
-- Pode usar operadores (=, <, >, <=, >=, <>, LIKE, IN, BETWEEN).

-- 4. Ordenar resultados
SELECT coluna1, coluna2 FROM tabela ORDER BY coluna2 DESC;
-- ORDER BY organiza os resultados por uma ou mais colunas.
-- ASC (crescente, padrão) ou DESC (decrescente).

-- 5. Limitar quantidade de resultados
SELECT * FROM tabela LIMIT 5;
-- LIMIT restringe o número de linhas retornadas, útil para prévias ou paginação.

-- 6. Paginação de resultados
SELECT * FROM tabela LIMIT 10 OFFSET 20;
-- OFFSET pula as primeiras 20 linhas e retorna as 10 seguintes.
-- Útil para implementar paginação em aplicações.

-- 7. Buscar valores distintos
SELECT DISTINCT coluna1 FROM tabela;
-- DISTINCT retorna apenas valores únicos, eliminando duplicatas.

-- 8. Funções de agregação (contagem, soma, média, etc.)
SELECT COUNT(*) FROM tabela;
SELECT AVG(coluna_numerica) FROM tabela;
SELECT SUM(coluna_numerica) FROM tabela;
-- COUNT conta linhas, AVG calcula média, SUM soma valores.

-- 9. Agrupar resultados
SELECT coluna1, COUNT(*) FROM tabela GROUP BY coluna1;
-- GROUP BY agrupa linhas com o mesmo valor em coluna1 e permite usar funções de agregação.

-- 10. Filtrar grupos com HAVING
SELECT coluna1, COUNT(*) FROM tabela GROUP BY coluna1 HAVING COUNT(*) > 1;
-- HAVING filtra resultados após o agrupamento (diferente do WHERE, que filtra antes).

-- 11. Junção de tabelas (INNER JOIN)
SELECT a.coluna1, b.coluna2
FROM tabelaA a
INNER JOIN tabelaB b ON a.chave = b.chave;
-- INNER JOIN retorna apenas linhas que têm correspondência nas duas tabelas.

-- 12. Junção externa (LEFT JOIN)
SELECT a.coluna1, b.coluna2
FROM tabelaA a
LEFT JOIN tabelaB b ON a.chave = b.chave;
-- LEFT JOIN retorna todas as linhas da tabelaA e as correspondentes da tabelaB (ou NULL se não houver correspondência).

-- 13. Subconsulta (subquery)
SELECT coluna1 FROM tabela WHERE coluna2 IN (SELECT coluna2 FROM outra_tabela WHERE condição);
-- Subqueries permitem usar o resultado de uma consulta dentro de outra.

-- 14. Alias (apelidos para colunas ou tabelas)
SELECT coluna1 AS apelido, coluna2 FROM tabela AS t;
-- AS cria nomes temporários para facilitar leitura ou evitar conflitos.

-- 15. Expressões condicionais (CASE)
SELECT coluna1,
       CASE
           WHEN coluna2 > 10 THEN 'Maior que 10'
           ELSE '10 ou menos'
       END AS resultado
FROM tabela;
-- CASE permite criar colunas calculadas com lógica condicional.