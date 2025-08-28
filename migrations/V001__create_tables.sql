CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    picture_url TEXT
);

CREATE TABLE product_info (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INTEGER NOT NULL
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE orders_date (
    id SERIAL PRIMARY KEY,
    date_created TIMESTAMP NOT NULL,
    status VARCHAR(50) NOT NULL
);

CREATE TABLE order_product (
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL
);
