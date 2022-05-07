create table customers
(
    customer_id   int auto_increment
        primary key,
    customer_name varchar(20) null
);

create table order_product_association
(
    id         int auto_increment
        primary key,
    order_id   int not null,
    product_id int not null,
    constraint id
        unique (id)
);

create table orders
(
    order_id    int auto_increment
        primary key,
    customer_id int    null,
    amount      double null,
    constraint orders_ibfk_1
        foreign key (customer_id) references customers (customer_id)
);

create index customer_id
    on orders (customer_id);

create table products
(
    id      int auto_increment
        primary key,
    product varchar(20) not null,
    constraint id
        unique (id)
);


