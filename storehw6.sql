CREATE DATABASE store;
USE store;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(20)
);
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DOUBLE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products (
   product_id INT AUTO_INCREMENT PRIMARY KEY,
   product VARCHAR(20)

);

CREATE TABLE order_product_association(
 id int NOT NULL UNIQUE AUTO_INCREMENT,
 order_id int NOT NULL,
 product_id int NOT NULL,
 PRIMARY KEY (id)
);

#INSERT INTO Customers (customer_name)
#                                    VALUES ('James'),
 #                                          ('Jeff'),
  #                                         ('Jimmy');
#INSERT INTO orders (amount, customer_id)
 #                                   VALUES ('5', 1),
  #                                         ('3', 3),
   #                                        ('7', 2);
#INSERT INTO products (product)
 #                                   VALUES ('meat'),
  #                                         ('chips'),
   #                                        ('sauce');

SELECT * from orders;
SELECT * from products;
SELECT * from order_product_association;

INSERT INTO order_product_association (order_id, product_id) VALUES (3,3)