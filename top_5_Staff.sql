SELECT staff_id, COUNT(DISTINCT customer_id) AS customers_served
FROM orders
GROUP BY staff_id
ORDER BY customers_served DESC
LIMIT 5;
