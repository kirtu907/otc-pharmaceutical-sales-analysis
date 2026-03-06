CREATE DATABASE otc_sales;
USE otc_sales;
CREATE TABLE sales (
    Date DATE,
    Product VARCHAR(100),
    Sales_Person VARCHAR(100),
    Boxes_Shipped INT,
    Amount FLOAT,
    Country VARCHAR(100),
    Revenue FLOAT
);

SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 10;
DESCRIBE sales;
SELECT COUNT(*) AS total_records
FROM sales;
SELECT SUM(Revenue) AS total_revenue
FROM sales;
SELECT SUM(Boxes_Shipped) AS total_boxes
FROM sales;
SELECT 
    Product,
    SUM(Revenue) AS total_revenue,
    SUM(Boxes_Shipped) AS boxes_sold
FROM sales
GROUP BY Product
ORDER BY total_revenue DESC;
SELECT 
    Country,
    SUM(Revenue) AS country_revenue
FROM sales
GROUP BY Country
ORDER BY country_revenue DESC;
SELECT 
    Sales_Person,
    SUM(Revenue) AS revenue_generated,
    SUM(Boxes_Shipped) AS boxes_sold
FROM sales
GROUP BY Sales_Person
ORDER BY revenue_generated DESC;
SELECT 
	YEAR(Date) AS year,
    MONTH(Date) AS month,
    SUM(Revenue) AS monthly_revenue
FROM sales
GROUP BY year, month
ORDER BY year, month;
SELECT 
    Product,
    SUM(Revenue) AS revenue
FROM sales
GROUP BY Product
ORDER BY revenue DESC
LIMIT 5;
SELECT 
    Product ,
    AVG(Revenue) AS avg_order_value
FROM sales
GROUP BY Product
ORDER BY avg_order_value DESC;
SELECT 
    Product,
    COUNT(*) AS total_orders,
    SUM(Revenue) AS total_revenue,
    AVG(Revenue) AS avg_order_value
FROM sales
GROUP BY Product
ORDER BY total_revenue DESC;