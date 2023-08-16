-- mysql-init/init.sql
DROP USER 'myuser'@'%';
CREATE DATABASE IF NOT EXISTS authservice_db;
CREATE DATABASE IF NOT EXISTS global_db;
CREATE USER 'myuser'@'%' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON authservice_db.* TO 'myuser'@'%';
GRANT ALL PRIVILEGES ON global_db.* TO 'myuser'@'%';
FLUSH PRIVILEGES;
