SELECT m.store_id,
       SUM(n.quantity * n.list_price * (1 - n.discount)) AS total_sales,
       SUM(n.quantity * n.list_price * n.discount) AS total_discount
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.store_id;
