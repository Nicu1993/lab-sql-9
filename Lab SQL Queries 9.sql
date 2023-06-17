use sakila;

-- 1. Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

CREATE DATABASE IF NOT EXISTS rentals_may;
USE rentals_may;
CREATE TABLE IF NOT EXISTS rentals_may (
rental_id int(11) UNIQUE NOT NULL,
rental_date date DEFAULT NULL,
inventory_id int(20) DEFAULT NULL,
customer_id int(11) DEFAULT NULL,
renturn_date date DEFAULT NULL,
staff_id int(11) DEFAULT NULL,
last_update date DEFAULT NULL,

CONSTRAINT PRIMARY KEY (rental_id));


-- 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rentals_may
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

select * from rentals_may;


-- 3. Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

-- 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rentals_june
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

-- 5. Check the number of rentals for each customer for May.
select customer_id,count(rental_id) from rentals_may
group by customer_id order by count(rental_id) desc;

-- 6.Check the number of rentals for each customer for June.
select customer_id,count(rental_id) from rentals_june
group by customer_id order by count(rental_id) desc;

-- 7. Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:

-- 7.1 Check the number of rentals for each customer for May

-- 7.2 Check the number of rentals for each customer for June
