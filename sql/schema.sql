CREATE DATABASE IF NOT EXISTS pizza_sales;
USE pizza_sales;

-- Orders table
CREATE TABLE orders (
    order_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_time TIME NOT NULL,
    PRIMARY KEY (order_id)
) ENGINE=InnoDB;

-- Order details table
CREATE TABLE order_details (
    order_details_id INT NOT NULL,
    order_id INT NOT NULL,
    pizza_id VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (order_details_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
) ENGINE=InnoDB;

-- Pizza types table
CREATE TABLE pizza_types (
    pizza_type_id VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    ingredients TEXT,
    PRIMARY KEY (pizza_type_id)
) ENGINE=InnoDB;

-- Pizzas table
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) NOT NULL,
    pizza_type_id VARCHAR(50) NOT NULL,
    size VARCHAR(10) NOT NULL,
    price DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (pizza_id),
    FOREIGN KEY (pizza_type_id) REFERENCES pizza_types(pizza_type_id)
) ENGINE=InnoDB;

DESCRIBE order_details;
DESCRIBE pizzas;
ALTER TABLE order_details
CHANGE COLUMN pizz_id pizza_id VARCHAR(50);
