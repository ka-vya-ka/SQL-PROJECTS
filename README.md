---

# E-Commerce Sales Analysis Using SQL

**Author:** Kavya Chaturvedi

## Overview

This repository contains a complete SQL-based analysis of an E-Commerce transactions dataset. The project demonstrates practical SQL skills, exploring customer behavior, sales trends, product performance, and payment patterns.

## Dataset

**Name:** Kaggle E-Commerce Transactions Dataset\
**Number of records:** \~50,000 transactions\
**Source:** [Kaggle E-Commerce Transactions Dataset](https://www.kaggle.com/datasets/smayanj/e-commerce-transactions-dataset)\
**Columns:**

- `transaction_id` : Unique order number
- `user_name` : Unique customer identifier
- `age` : Customer age
- `country` : Country of customer
- `product_category` : Category of the product purchased
- `purchase_amount` : Amount spent per transaction
- `payment_method` : Method of payment
- `transaction_date` : Date of purchase

## Project Objective

Analyze e-commerce transactions to extract actionable insights for business decision-making, including sales trends, customer behavior, and payment method analysis. This project is ideal for showcasing SQL and analytical skills.

## SQL Analysis Sections

### 1. Data Exploration

- Total orders
- Number of unique customers
- Unique product categories
- Total sales revenue
- Top 5 countries by order count

### 2. Sales Insights

- Product categories generating the highest revenue
- Average order value per transaction
- Most sold products by transaction count

### 3. Customer Analysis

- Top customers by total spend
- Customers with more than 5 purchases
- Country-wise average spend per customer
- Age group segmentation

### 4. Payment Insights

- Total transactions per payment method
- Payment method usage by product category
- Countries using UPI the most

### 5. Advanced Insights

- Popular product categories by country
- Repeat customers (more than one order)
- Customers who purchased from multiple categories

### More Insights

- High-value customers (spent > ₹10,000)
- Summary table by country (total orders, revenue, average order value)

## SQL Features Used

- Aggregations: `SUM`, `AVG`, `COUNT`
- Grouping & Filtering: `GROUP BY`, `HAVING`
- Sorting & Limiting: `ORDER BY`, `LIMIT`
- Conditional Logic: `CASE WHEN`
- Views & Tables: `CREATE VIEW`, `CREATE TABLE`

## Files in This Repository

- `ecommerce_transactions.csv` : Original dataset
- CODE`_QUERIES.sql` : SQL queries used for analysis
- `project_report.pdf` : Detailed project report summarizing the analysis

## Key Findings (Illustrative)

| Metric                        | Result |
| ----------------------------- | ------ |
| Total Orders                  | 50,000 |
| Unique Customers              | 100    |
| Top Category                  | SPORTS |
| Most Used Payment             | UPI    |
| Highest Average Spent Country | USA    |

## Tools

- SQLite (DB Browser for SQLite)

## Author

**Kavya Chaturvedi**\
SQL | Data Analytics | Data Science

---

**Note:** The SQL queries in `ecommerce_project_queries.sql` can be executed in SQLite to reproduce the analysis. Some advanced queries (views, tables) may require running on a system that fully supports these commands if SQLite shows limitations.

