SELECT m.store_id, AVG(n.quantity * n.list_price * (1 - n.discount)) AS avg_order_value
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.store_id;
