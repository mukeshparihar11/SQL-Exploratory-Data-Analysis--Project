/* Create Database and Schemas

Script Purpose:
    This script creates a new database named 'DataWarehouseAnalytics' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally,
   -- this script creates the tables dim_customers,dim_products and fact_sales.*/

-- Drop and recreate the 'DataWarehouseAnalytics' database .


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
