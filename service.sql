create table customer (
    customer_id integer primary key,
    customer_name text NOT NULL,
    customer_email text NOT NULL,
    customer_adress text,
    customer_phone integer
);
create table loan (
   loan_id integer primary key,
   product_id integer,
   customer_id integer,
   customer_name text,
   loan_date text NOT NULL,
   return_date date not NULL,
   loan_total integer not NULL,
   foreign key (product_id) REFERENCES product(product_id),
   foreign key (customer_id) REFERENCES customer(customer_id),
   foreign key (customer_name) REFERENCES customer(customer_name)
);
create table product (
    product_id integer primary key,
    product_name text NOT NULL,
    product_brand text,
    product_price integer,
    product_stock integer,
    product_description text,
    seller_id integer,
    foreign key (seller_id) REFERENCES seller(seller_id)
);
create table seller (
    seller_id integer primary key,
    seller_name text NOT NULL,
    seller_adress text,
    seller_phone integer,
    seller_email text
);