CREATE DATABASE storehw5;
USE storehw5;

CREATE TABLE customers (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   name varchar(20) NOT NULL,
   PRIMARY KEY (id)
);
CREATE TABLE orders3 (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   name varchar(20) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE products (
   id int NOT NULL UNIQUE AUTO_INCREMENT,
   name varchar(20) NOT NULL,
   PRIMARY KEY (id)
);

CREATE TABLE order_product_association(
 id int NOT NULL UNIQUE AUTO_INCREMENT,
 order_id int NOT NULL,
 product_id int NOT NULL,
 PRIMARY KEY (id)
);


INSERT INTO customers ( name ) VALUES
                                   ('Jim'),
                                   ('John'),
                                   ('Jeff');
INSERT INTO orders3 ( name ) VALUES
                                   ('chips'),
                                   ('pizza'),
                                   ('marinara');
INSERT INTO products ( product ) VALUES
                                   ('snack'),
                                   ('meal'),
                                   ('sauce');

SELECT * from orders3;
SELECT * from products;
SELECT * from order_product_association;

INSERT INTO order_product_association (order_id, product_id) VALUES (3,3)
