# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

# Первый commit
CREATE DATABASE store;
CREATE USER migrator WITH PASSWORD 'migrator_password';
GRANT ALL PRIVILEGES ON DATABASE store TO migrator;
GRANT ALL ON SCHEMA public TO migrator;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO migrator;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO migrator;
