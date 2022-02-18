create table customers
(
    customer_id   int auto_increment
        primary key,
    customer_name varchar(20) null
);

create table orders2
(
    order_id    int auto_increment
        primary key,
    customer_id int    null,
    amount      double null,
    constraint orders2_ibfk_1
        foreign key (customer_id) references customers (customer_id)
);

create index customer_id
    on orders2 (customer_id);


