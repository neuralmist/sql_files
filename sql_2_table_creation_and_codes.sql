use practice_sql;

create table Books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100),
    genre VARCHAR(50),
    price DECIMAL(10,2)
);


insert into Books (book_id, book_title, genre, price) values
(201, 'Data Science Basics', 'Education', 450.00),
(202, 'Python Programming', 'Education', 350.00),
(203, 'Mystery Island', 'Fiction', 200.00),
(204, 'AI for Beginners', 'Education', 500.00),
(205, 'Romantic Tales', 'Fiction', 180.00);

create table Orders (
    order_id INT PRIMARY KEY,
    book_id INT,
    quantity INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

insert into Orders (order_id, book_id, quantity, order_date, total_amount) values
(1, 201, 2, '2024-02-01', 900.00),
(2, 202, 1, '2024-02-02', 350.00),
(3, 203, 3, '2024-02-02', 600.00),
(4, 204, 1, '2024-02-03', 500.00),
(5, 205, 4, '2024-02-03', 720.00);

show tables;

select * from Books;

select * from Orders;


# QUESTIONS 
#1. Retrieve book_title and price from Books table
select book_title,price from Books;

#2. Retrieve order_id and order_date from Orders table
select order_id,order_date from Orders;

#3.Show orders where total_amount is greater than 500
select * from Orders where total_amount>500;

#4.Display books belonging to the 'Education' genre
select * from Books where genre="Education";

#5.Retrieve order_id and total_amount for orders placed on '2024-02-03'
select order_id,total_amount from Orders where order_date="2024-02-03";

#6Retrieve book_id and book_title where price is greater than 300
select book_id,book_title from Books where price>300;

#7.Calculate total revenue from all orders
select sum(total_amount) from Orders;

#8.Calculate average book price
select avg(price) from Books;

#9.Calculate total quantity of books sold
select sum(quantity) from Orders;

#10.Count total number of orders
select count(order_id) from Orders;

