-- Comments in SQL Start with dash-dash --
insert into products (name, price, can_be_returned)
values ('chair', 44.00, false);

insert into products (name, price, can_be_returned)
values ('stool', 25.99, true);

insert into products (name, price, can_be_returned)
values ('table', 124.00, false);

SELECT * FROM products;
SELECT name FROM products;
SELECT name, prices FROM products;

insert into products (name, price, can_be_returned)
values ('desk', 100.00, true);

SELECT * FROM products WHERE can_be_returned = true;
SELECT * FROM products WHERE price < 44.00;
SELECT * FROM products WHERE price > 22.50 AND price < 99.99;

UPDATE products SET price = price - 20.00;

DELETE FROM products WHERE price < 25.00;

UPDATE products SET price = price + 20.00;
UPDATE products SET can_be_returned = true;

