CREATE DATABASE camazon_DB;

USE camazon_DB;

CREATE TABLE IF NOT EXISTS products (
    item_id INT AUTO_INCREMENT NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT (100) NOT NULL,
    PRIMARY KEY (item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES 
('Air Plane', 'Toys', 20.00, 10),
('Basketball', 'Toys', 40.00, 15),
('Darth Vader', 'Toys', 8.00, 20),
('Christmas Lights', 'Home', 10.00, 35),
('Soap', 'Home', 5.00, 15),
('Blanket', 'Home', 30.00, 30),
('Sony Ps4', 'Electronics', 300.00, 8),
('Bladerunner', 'Electronics', 15.00, 20),
('Harry Potter', 'books', 10.00, 12),
('Astro Boy', 'books', 15.00, 18)
;

