CREATE TABLE person (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(50), 
  age INTEGER, 
  height INTEGER,
  city VARCHAR(50),
  favorite_color VARCHAR(50)
  );

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('shane', 25, 190, 'richardson', 'blue');


SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

CREATE TABLE orders (order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(100), product_price NUMERIC, quantity INTEGER);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'apple', 1.99, 3), (1, 'orange', 1.75, 5), (2, 'chicken', 4.99, 4), (2, 'cheese', 3.99, 2), (3, 'grapes', 2.50, 1); 

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 1;

INSERT INTO artist (name)
VALUES ('Arcade Fire'), ('King Crimson'), ('Mars Volta');

SELECT * FROM artist
ORDER BY name DESC LIMIT(10);

SELECT * FROM artist
ORDER BY name ASC LIMIT(5);

SELECT * FROM artist
WHERE name LIKE ('Black%');

SELECT * FROM artist
WHERE name LIKE ('%Black%');

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee

SELECT MIN(birth_date) FROM employee

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'

SELECT MAX(total) FROM invoice

SELECT MIN(total) FROM invoice

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA','TX','AZ');

SELECT AVG(total) FROM invoice

SELECT SUM(total) FROM invoice



