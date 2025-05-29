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
![{D88C52FB-46BF-498E-8B96-BE39F057D16D}](https://github.com/user-attachments/assets/a529d7b9-5d5d-4133-9f04-8532d85c7c7b)
![{A832C0B4-60BA-4644-94A2-E1965357DD70}](https://github.com/user-attachments/assets/6554027b-9f84-448f-bbcc-825c86ae221d)
![{61DC0BD0-82D7-424B-886A-1E79FFE8A2DF}](https://github.com/user-attachments/assets/125236f5-2c82-4fcb-8449-dc01daed7cf1)
![{321151DC-25D4-4614-8FC7-975B2242A653}](https://github.com/user-attachments/assets/a187d1f8-31c5-43f1-a9d8-00898b129fcf)
![{E54406B0-7876-44BA-8D78-791A88EEA473}](https://github.com/user-attachments/assets/b6432471-7da0-4c7a-b33a-ebfdb756780b)
![{45024987-41DF-4CD8-B825-D1C8CC224125}](https://github.com/user-attachments/assets/56f25b20-e9f6-4313-bcba-a0f498b72f50)
![{5874EAFD-FDB8-4337-A45E-8689BAEEF8D7}](https://github.com/user-attachments/assets/3e3694ce-2f29-4d9d-b8cc-fb5707aaa1bc)
![{D6812020-E08F-4A2F-AA61-C50D6EFCDC9A}](https://github.com/user-attachments/assets/48e033de-dc06-4f9c-bf37-462da7395460)

