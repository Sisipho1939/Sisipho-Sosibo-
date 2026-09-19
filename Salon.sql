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
-- FINAL PROJECT: Betty Salon Full Report
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS services;

CREATE TABLE clients (id INT PRIMARY KEY, name TEXT, phone TEXT);
INSERT INTO clients VALUES (1, 'Thandi', '0711111111');
INSERT INTO clients VALUES (2, 'Betty', '0722222222');
INSERT INTO clients VALUES (3, 'Noma', '0733333333');

CREATE TABLE services (id INT, client_id INT, service TEXT, amount INT, date TEXT);
INSERT INTO services VALUES (1, 1, 'Braids', 800, '2026-09-19');
INSERT INTO services VALUES (2, 2, 'Weave', 1700, '2026-09-19');
INSERT INTO services VALUES (3, 3, 'Wash', 350, '2026-09-19');
INSERT INTO services VALUES (4, 1, 'Wash', 150, '2026-09-19');

-- CEO REPORT - Le yiyo abaqeshi bayifunayo!
SELECT 
  c.name,
  COUNT(s.id) AS visits,
  SUM(s.amount) AS total_spent
FROM clients c
JOIN services s ON c.id = s.client_id
GROUP BY c.name
ORDER BY total_spent DESC;
Betty  | 1 | 1700
Thandi | 2 | 950
Noma   | 1 | 350
