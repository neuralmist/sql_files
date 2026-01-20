use practice_sql;

show tables;

-- retrive all the tables
select * from products;
select * from sales;

-- 2 . Retrieve the product_name and unit_price from the Products table.
select product_name,unit_price from products;

-- 3. Retrieve the sale_id and sale_date from the Sales table
select sale_id,sale_date from sales;

-- 4.  Filter the Sales table to show only sales with a total_price greater than $100.
select * from sales where total_price>100;

-- 5. 5. Filter the Products table to show only products in the 'Electronics' category.
select * from products where category="Electronics";

-- 6. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024.
select sale_id,total_price from Sales where sale_date="2024-01-03";

-- 7. Retrieve the product_id and product_name from the Products table for products with a unit_price greater than $100.
select product_id,product_name from Products where unit_price>100;

-- 8. Calculate the total revenue generated from all sales in the Sales table.
select SUM(total_price) from sales;

-- 9. Calculate the average unit_price of products in the Products table.
select AVG(unit_price) from products;

-- 10. Calculate the total quantity_sold from the Sales table.
select SUM(quantity_sold) from sales;


