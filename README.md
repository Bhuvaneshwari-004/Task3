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
![{D838BCDF-F9AA-4888-AE26-40D61397A1E0}](https://github.com/user-attachments/assets/5ed76d84-95b4-4f43-915a-84abe9946604)
![{D838BCDF-F9AA-4888-AE26-40D61397A1E0}](https://github.com/user-attachments/assets/621dbb3d-f7ac-4904-8c5f-4aaed5958ef5)
![{2A627B1C-5B1C-4834-9266-F1835E4F76B4}](https://github.com/user-attachments/assets/479c8278-9010-4136-9a7c-59fa4e140228)
![{D838BCDF-F9AA-4888-AE26-40D61397A1E0}](https://github.com/user-attachments/assets/aeb95234-4b73-4cd5-96ce-285815c3ec49)
![{A26B8FC7-7D78-4317-9047-A7855B396384}](https://github.com/user-attachments/assets/83235600-8780-40e7-aa02-04152db56030)
![{64899CAD-BD8D-4AD8-8325-377CBD8F3D83}](https://github.com/user-attachments/assets/70d74485-8d56-4ab0-85cb-ead57941ea5d)
![{3E2B2E15-AD3B-41E1-8786-7A5C70349428}](https://github.com/user-attachments/assets/c599e5d8-92b3-47aa-aad0-b86fbb2437d4)
![{2A627B1C-5B1C-4834-9266-F1835E4F76B4}](https://github.com/user-attachments/assets/92ab8e71-2578-4642-93ca-c4fe36408480)

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




