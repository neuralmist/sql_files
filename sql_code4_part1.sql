create database practice;
use practice;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

CREATE TABLE Order_Items (
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers VALUES
(1, 'Amit Sharma', 'Bangalore', '2023-01-15'),
(2, 'Priya Verma', 'Mumbai', '2023-03-22'),
(3, 'Rahul Das', 'Delhi', '2023-05-10'),
(4, 'Sneha Iyer', 'Chennai', '2023-07-19'),
(5, 'Arjun Reddy', 'Hyderabad', '2023-09-25'),
(6, 'Neha Kapoor', 'Bangalore', '2024-01-05');

INSERT INTO Products VALUES
(101, 'Laptop', 70000),
(102, 'Smartphone', 30000),
(103, 'Headphones', 2000),
(104, 'Keyboard', 1500),
(105, 'Mouse', 800);

INSERT INTO Orders VALUES
(1001, 1, '2024-01-10', 72000),
(1002, 2, '2024-02-15', 30000),
(1003, 1, '2024-03-05', 2000),
(1004, 3, '2024-03-18', 1500),
(1005, 4, '2024-04-12', 800),
(1006, 2, '2024-04-25', 70000),
(1007, 5, '2024-05-02', 30000),
(1008, 6, '2024-05-10', 2000);

INSERT INTO Order_Items VALUES
(1001, 101, 1),
(1001, 103, 1),
(1002, 102, 1),
(1003, 103, 1),
(1004, 104, 1),
(1005, 105, 1),
(1006, 101, 1),
(1007, 102, 1),
(1008, 103, 1);



# questions

#1.Get all customers from Bangalore
select * from Customers where City = "Bangalore";

#2.Show all orders placed after '2024-01-01'
select * from Orders where order_date > 2024-01-01;

#Find total number of customers
select count(distinct(customer_id)) from Customers;

#Get all products with price > 5000
select * from Products where price >5000;

#Show distinct cities from Customers
select distinct(city) from Customers;

#Find total amount spent by each customer
select customer_id,sum(amount) as total_amount from Orders group by customer_id;

