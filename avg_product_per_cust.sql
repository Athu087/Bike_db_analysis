SELECT m.customer_id, AVG(n.quantity) AS avg_products_per_order
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.customer_id;
