SELECT product_id, AVG(discount) AS avg_discount
FROM order_items
GROUP BY product_id
ORDER BY avg_discount DESC
LIMIT 5;
