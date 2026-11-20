# SQL Exploratory Data Analysis Project

Exploratory data analysis of a sales data warehouse using **MySQL**.
I loaded the data from CSV files, checked its quality, and explored
customers, products and sales to answer business questions.

## Dataset

The data follows a **star schema**: one fact table connected to two
dimension tables.

| Table | Type | Rows | Description |
|-------|------|------|-------------|
| `dim_customers` | Dimension | 18,484 | Customer details: country, gender, marital status, birthdate |
| `dim_products` | Dimension | 295 | Product details: category, subcategory, product line, cost |
| `fact_sales` | Fact | 60,398 | Sales transactions: order, ship and due dates, sales amount, quantity, price |

**Relationships**
- `fact_sales.customer_key` → `dim_customers.customer_key`
- `fact_sales.product_key` → `dim_products.product_key`

**Quick facts**
- Order dates range from **December 2010 to January 2014**
- 27,659 unique orders
- Customers come from 6 countries
- Products fall in 4 categories: Bikes, Components, Clothing, Accessories

## How the Data Was Loaded

1. Created the database `DataWarehouseAnalytics` and the three tables
   using `03_scripts/00_database.sql`
2. In MySQL Workbench, right-clicked each table and used the
   **Table Data Import Wizard** to import its CSV file
3. Verified the load with `SELECT COUNT(*)` and `SELECT * ... LIMIT 10`
   on every table

## Repository Structure

```
SQL-Exploratory-Data-Analysis--Project/
├── 01_datasets/        CSV files (dim_customers, dim_products, fact_sales)
├── 03_scripts/         SQL scripts, numbered in the order to run them
│   └── 00_database.sql
└── README.md
```

## Analysis Performed

- **Database exploration**: tables and columns in the database
- **Dimensions exploration**: unique countries, categories, subcategories
- **Date range exploration**: first and last order date, customer age range
- **Measures exploration**: total sales, quantity, average price, order count
- **Magnitude analysis**: sales and customers by country, gender and category
- **Ranking analysis**: top and bottom products and customers by revenue

## Key Insights

- Total sales across the whole period
- Best selling category
- Country with the most customers
- Product Report
- Customer report
- CHANGE OVER TIME ANALYSIS
-  YEAR OVER YEAR PERFORMANCE ANALYSIS
-  Segment products into cost ranges and
- count how many products fall into each segment


## Tools Used

- MySQL
- SQL: joins, aggregate functions, GROUP BY, window functions,CTE,Sub Query, Case Statement


**Mukesh Parihar**
+91-9821521617
