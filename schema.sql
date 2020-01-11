DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL, 
	department_name VARCHAR(100) NOT NULL, 
	price DECIMAL(11, 2) NOT NULL, 
	stock_quantity INTEGER NOT NULL, 
    PRIMARY KEY (item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
    VALUES("Telluride SXL", "SUV", 55000, 4),
        ("Telluride EX", "SUV", 45000, 3), 
        ("Telluride S", "SUV", 35000, 4), 
        ("Sorento SXL", "SUV", 36000, 2), 
        ("Sorento L", "SUV", 28000, 10), 
        ("Optima S", "Sedan", 23000, 15), 
        ("Optima L", "Sedan", 20000, 20), 
        ("Forte S", "Sedan", 18000, 15), 
        ("Soul EX", "Compact", 18000, 5),      
        ("Soul X", "Compact", 17500, 3); 
        

ALTER TABLE products
  ADD product_sales INTEGER NOT NULL DEFAULT 0;

SELECT * FROM products;

CREATE TABLE departments (
	department_id INTEGER AUTO_INCREMENT NOT NULL, 
    department_name VARCHAR(100) NOT NULL, 
    over_head_costs DECIMAL(11, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (department_id)
); 

INSERT INTO departments(department_name, over_head_costs)
VALUES("SUV", 60000), ("Sedan", 50000), ("Compact", 40000);

SELECT * FROM departments;