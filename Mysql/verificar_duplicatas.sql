SELECT name, email
FROM customers
GROUP BY name, email
HAVING COUNT(*) > 1