SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS order_count
FROM orders
GROUP BY month
ORDER BY order_count DESC
LIMIT 1;
