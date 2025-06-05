SELECT m.customer_id, SUM(n.quantity * n.list_price * (1 - n.discount)) AS total_revenue
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.customer_id
ORDER BY total_revenue DESC;
