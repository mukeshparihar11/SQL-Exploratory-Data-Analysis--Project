--  Change Over Time Analysis

-- Purpose:
--     - To track trends, growth, and changes in key metrics over time.
--     - For time-series analysis and identifying seasonality.
--     - To measure growth or decline over specific periods.

-- SQL Functions Used:
--     - Date Functions: DATE_FORMAT()
--     - Aggregate Functions: SUM(), COUNT() 


-- Analyse sales performance over time
-- Quick Date Functions


SELECT  
      YEAR(order_date) AS order_year,
      MONTH(order_date) AS order_month,
      SUM(sales_amount) AS total_sales,
      COUNT(DISTINCT customer_key) AS total_cust,
      SUM(quantity) AS total_quantity
FROM fact_sales
GROUP BY  YEAR(order_date) ,MONTH(order_date)
ORDER BY  YEAR(order_date) ,MONTH(order_date) ASC;

-- DATE_FORMAT :

SELECT  
    DATE_FORMAT(order_date,"%Y-%m") AS order_year,
    SUM(sales_amount) AS total_sales,
    COUNT(DISTINCT customer_key) AS total_cust,
    SUM(quantity) AS total_quantity
FROM fact_sales
GROUP BY DATE_FORMAT(order_date,"%Y-%m") 
ORDER BY DATE_FORMAT(order_date,"%Y-%m") ;
