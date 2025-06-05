SELECT staff_id, COUNT(*) AS total_orders_handled
FROM orders
GROUP BY staff_id
ORDER BY total_orders_handled DESC
LIMIT 1;
