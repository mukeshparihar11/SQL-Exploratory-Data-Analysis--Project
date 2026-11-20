/* Cumulative Analysis

 Purpose:
     - To calculate running totals or moving averages for key metrics.
     - To track performance over time cumulatively.
     - Useful for growth analysis or identifying long-term trends.

 SQL Functions Used:
     - Window Functions: SUM() OVER(), AVG() OVER()

 Calculate the total sales per month
 and the running total that restarts every year */


SELECT
SELECT 
    order_year,
    total_sales,
    SUM(total_sales) OVER( ORDER BY order_year) AS runing_total_sales 
    
FROM (
SELECT 
    DATE_FORMAT(order_date, "%Y") AS order_year,
    SUM(sales_amount) AS total_sales
FROM fact_sales
GROUP BY DATE_FORMAT(order_date, "%Y")
ORDER BY DATE_FORMAT(order_date, "%Y")
) AS t;


-- Calculate the total sales per year
-- and the running total of sales over time

SELECT
    order_date,
    total_sales,
    ROUND(SUM(total_sales) OVER (ORDER BY order_date),2) AS running_total_sales,
    ROUND(AVG(avg_price) OVER (ORDER BY order_date),2) AS moving_average_price
FROM
(
    SELECT
        DATE_FORMAT(order_date, "%Y") AS order_date,
        SUM(sales_amount) AS total_sales,
        AVG(price)AS avg_price
    FROM fact_sales
    GROUP BY DATE_FORMAT(order_date , "%Y")
) t;
