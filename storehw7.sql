CREATE DATABASE store;
USE store;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(20)
);
CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    amount DOUBLE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE products (
   product_id INT AUTO_INCREMENT PRIMARY KEY,
   product VARCHAR(20)

);

CREATE TABLE order_product_association(
 id int auto_increment primary key,
 order_id int NOT NULL,
 product_id int NOT NULL,
 constraint id unique (id)
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

DELETE FROM orders where order_id in (4, 5, 6);
DELETE FROM order_product_association where id in (4, 5, 6, 7);
DELETE FROM customers where customer_id in (4, 5, 6);

SELECT * FROM customers;
SELECT * from orders;
SELECT * from products;
SELECT * from order_product_association;

SELECT customers.customer_name, orders.customer_id
FROM customers
INNER JOIN orders on customers.customer_id = orders.customer_id;