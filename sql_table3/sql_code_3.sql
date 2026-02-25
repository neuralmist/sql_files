use practice_sql;


create table customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city varchar(30),
signup_date DATE);

create table orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_total INT,
    order_date DATE
);

insert into  customers VALUES
(1, 'Amit', 'Mumbai', '2025-01-01'),
(2, 'Arya', 'Delhi', '2024-01-15'),
(3, 'Virat', 'Bangalore', '2025-01-31');

insert into orders values
(101,1, 450,'2025-01-22'),
(102,1,200,'2025-01-19'),
(103,2,700, '2025-01-25'),
(104,2,800,'2025-01-21'),
(105,3,300,'2024-06-02');

#Runner-up
select MAX(order_total)
FROM orders
WHERE order_total < (SELECT MAX(order_total) FROM orders);

#Above-average customers
SELECT customer_id, AVG(order_total)
FROM orders
GROUP BY customer_id
HAVING AVG(order_total) > (SELECT AVG(order_total) FROM orders);

#Levels
SELECT order_id,
CASE
WHEN order_total < 500 THEN 'Low'
WHEN order_total BETWEEN 500 AND 700 THEN 'Medium'
ELSE 'High'
END
FROM orders;

