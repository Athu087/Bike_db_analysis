SELECT m.customer_id, COUNT(m.order_id) AS total_orders, 
       SUM(n.quantity * n.list_price * (1 - n.discount)) AS total_spent
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.customer_id
HAVING total_orders > 5 AND total_spent > 500;

