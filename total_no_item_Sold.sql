SELECT m.store_id, SUM(n.quantity) AS items_sold
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.store_id;
