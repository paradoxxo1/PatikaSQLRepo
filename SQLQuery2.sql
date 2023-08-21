-- film tablosunu oluþturma
CREATE TABLE film (
    film_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    length INT,
    rental_rate DECIMAL(5, 2)
);

-- customer tablosunu oluþturma
CREATE TABLE customer (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);
SELECT title, description
FROM film;

SELECT *
FROM film
WHERE length > 60 AND length < 75;


SELECT *
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);


SELECT last_name
FROM customer
WHERE CAST(first_name AS varchar(255)) = 'Mary';


SELECT *
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99);
