# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

# Первый commit
CREATE DATABASE store;
CREATE USER migrator WITH PASSWORD 'migrator_password';
GRANT ALL PRIVILEGES ON DATABASE store TO migrator;
GRANT ALL ON SCHEMA public TO migrator;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrator;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO migrator;

# Третий commit

SELECT  DATE(o.date_created) AS order_date, SUM(op.quantity) AS total_sausages
FROM orders o
JOIN order_product op ON o.id = op.order_id
WHERE o.date_created >= CURRENT_DATE - INTERVAL '7 days' AND o.date_created < CURRENT_DATE AND o.status = 'shipped'
GROUP BY DATE(o.date_created)
ORDER BY order_date DESC;
