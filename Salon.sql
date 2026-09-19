-- Betty Salon Database - Day 1-3
DROP TABLE IF EXISTS salon;
CREATE TABLE salon (id INT, name TEXT, amount INT);
INSERT INTO salon VALUES (1, 'Thandi', 800);
INSERT INTO salon VALUES (2, 'Betty', 1700);
INSERT INTO salon VALUES (3, 'Noma', 350);

-- Day 2: WHERE, UPDATE, DELETE
SELECT * FROM salon WHERE amount > 1000;
SELECT COUNT(*) AS total_clients FROM salon;
SELECT SUM(amount) AS total_mali FROM salon;
SELECT AVG(amount) AS average FROM salon;
