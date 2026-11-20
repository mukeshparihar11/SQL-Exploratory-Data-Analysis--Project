 -- Create Database and Schemas

-- Script Purpose:

--     This script creates a new database named "DataWarehouseAnalytics" after checking if it already exists.
--     If the database exists, it is dropped and recreated. Additionally, 


-- # Drop and recreate the 'DataWarehouseAnalytics' database


-- # Create the 'DataWarehouseAnalytics' database


CREATE DATABASE DataWarehouseAnalytics;


USE DataWarehouseAnalytics;


CREATE TABLE dim_customers(
	customer_key int,
	customer_id int,
	customer_number varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	country varchar(50),
	marital_status varchar(50),
	gender varchar(50),
	birthdate date,
	create_date date
);


CREATE TABLE dim_products(
	product_key int ,
	product_id int ,
	product_number varchar(50) ,
	product_name varchar(50) ,
	category_id varchar(50) ,
	category varchar(50) ,
	subcategory varchar(50) ,
	maintenance varchar(50) ,
	cost int,
	product_line varchar(50),
	start_date date 
);


CREATE TABLE fact_sales(
	order_number varchar(50),
	product_key int,
	customer_key int,
	order_date date,
	shipping_date date,
	due_date date,
	sales_amount int,
	quantity tinyint,
	price int 
);

-- DATA LOADING.......

-- The data was loaded directly from CSV files into the tables.
-- I used the Table Data Import Wizard in MySQL Workbench.
--
-- Source files : dim_customer, dim_product,fact_sales.csv
-- Target tables: dim_customer, dim_product,fact_sales
--
-- How I did it:

-- 1. First, I created the table structure using the CREATE TABLE
--    queries above.
-- 2. Then I right-clicked the table and chose
--    "Table Data Import Wizard".
-- 3. I picked the CSV file and imported it into the existing table.

-- After loading, I checked my all tables that the data came in correctly:

SELECT COUNT(*) FROM dim_customers;

SELECT COUNT(*) FROM dim_products;

SELECT COUNT(*) FROM fact_sales;

-- and after that will check --

-- Data validation (NULL, duplicates )
-- Analysis queries .

