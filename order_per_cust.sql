SELECT m.order_id, m.customer_id, SUM(n.quantity * n.list_price * (1 - n.discount)) AS order_total
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.order_id, m.customer_id
ORDER BY order_total DESC
LIMIT 1;
