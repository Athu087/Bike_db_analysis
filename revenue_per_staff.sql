SELECT m.staff_id, SUM(n.quantity * n.list_price * (1 - n.discount)) AS revenue_generated
FROM orders m
JOIN order_items n ON m.order_id = n.order_id
GROUP BY m.staff_id
ORDER BY revenue_generated DESC;
