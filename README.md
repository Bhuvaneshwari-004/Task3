# Task3
# Ecommerce SQL Project

This project uses MySQL to manage and analyze a sample e-commerce dataset.  
The goal is to create tables, insert data, run queries, and optimize performance using indexes.

---

## 📁 Files Included
- `ecommerce_sample.sql`: Contains database schema creation, data insertion, indexing, and SQL queries.
- `query_results.csv`: Exported results from SELECT queries.
- Screenshots: Images showing successful query execution in MySQL Workbench.

---

## 🧪 Features Demonstrated
- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
- SQL `JOIN`s between Customers, Orders, and Products
- `Aggregate Functions` like `SUM` and `AVG`
- Subqueries for filtering
- Performance optimization using `INDEXES`

---

## 🛠 Tools Used
- MySQL Workbench
- GitHub

# 🛒 Ecommerce SQL Project

This project demonstrates how to use SQL to manage and analyze a basic e-commerce database using **MySQL Workbench**.

---

## 📦 What’s Included

| File | Description |
|------|-------------|
| `ecommerce_sample.sql` | Full SQL script to create and populate the database, add indexes, and run sample queries |
| `query_results.csv` or `.xlsx` | Sample export of a query output (e.g., products in the Electronics category) |
| `screenshot.png` | Screenshot showing MySQL Workbench result and action log |
| `README.md` | Project description and summary of what was done |

---

## ✅ Features Implemented

- Created 3 related tables: `Customers`, `Products`, and `Orders`
- Inserted test data to simulate order activity
- Used SQL features:
  - `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
  - `JOIN` across tables
  - `Aggregate Functions`: `SUM`, `AVG`
  - Subqueries
- Performance optimized with `INDEX` on:
  - Foreign keys (`customer_id`, `product_id`)
  - Search fields (`country`, `category`)

---

## 💡 Example Queries Used

```sql
-- Join example
SELECT c.customer_name, p.product_name, o.total_amount
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id;

-- Group by example
SELECT category, AVG(price) AS avg_price
FROM Products
GROUP BY category;

-- Subquery example
SELECT customer_name
FROM Customers
WHERE customer_id IN (
    SELECT customer_id
    FROM Orders
    WHERE quantity > 1
);

