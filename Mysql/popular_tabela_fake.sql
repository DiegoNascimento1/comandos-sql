CREATE TABLE MinhaTabela (id INT AUTO_INCREMENT PRIMARY KEY,
coluna1 VARCHAR (50),
coluna2 INT , coluna3 DECIMAL (10, 2),
coluna4 DATE , coluna5 VARCHAR (100),
coluna6 FLOAT , coluna7 VARCHAR (50),
coluna8 BOOLEAN , coluna9 TEXT, coluna10 VARCHAR (255));

-- Inserir 5000 registros na tabela
DELIMITER //
CREATE PROCEDURE InserirRegistros() BEGIN DECLARE contador INT DEFAULT 1 ; WHILE contador <= 5000 DO
INSERT INTO MinhaTabela (coluna1, coluna2, coluna3, coluna4, coluna5, coluna6, coluna7, coluna8, coluna9, coluna10)
VALUES (CONCAT('Valor', contador),
        FLOOR (RAND() * 1000), 
        ROUND(RAND() * 1000, 2),
        DATE_ADD('2020-01-01' , INTERVAL
        FLOOR (RAND() * 1000) DAY),
        CONCAT('Texto', contador),
        RAND() * 100,
        CONCAT('Outro Valor', contador),
        RAND() > 0.5,
        CONCAT('Longo Texto', contador, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
        CONCAT('Final Valor', contador));
SET contador = contador + 1 ; END
WHILE; END //
DELIMITER ;
-- Chamar o procedimento para inserir os registros
CALL
InserirRegistros();