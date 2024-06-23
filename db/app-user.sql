CREATE USER IF NOT EXISTS 'shipping'@'%' IDENTIFIED BY 'RoboShop@1';
GRANT ALL ON transactions.* TO 'shipping'@'%';
FLUSH PRIVILEGES;

