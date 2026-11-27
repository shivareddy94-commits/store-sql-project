# Store SQL Project

A MySQL practice project with a small online store database.
I designed the tables, added sample data, and wrote 20 queries
from basic to advanced.

## Tables
- **customers**: customer_id, name, city, join_date
- **products**: product_id, product_name, category, price
- **orders**: order_id, customer_id, order_date
- **order_items**: order_id, product_id, quantity

## Files
- `schema.sql`: creates the database and tables
- `data.sql`: inserts sample data
- `queries.sql`: 20 queries with comments

## SQL skills used
- SELECT, WHERE, ORDER BY, LIMIT
- COUNT, SUM, AVG, GROUP BY, HAVING
- INNER JOIN, LEFT JOIN (including finding rows with no match)
- Subqueries

## How to run
1. Open MySQL Workbench
2. Run `schema.sql`, then `data.sql`
3. Run any query from `queries.sql`

## Example query
Customers who never placed an order:
```sql
SELECT c.name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
```

