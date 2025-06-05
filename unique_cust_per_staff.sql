SELECT staff_id, COUNT(DISTINCT customer_id) AS unique_customers
FROM orders
GROUP BY staff_id;
