CREATE TABLE clothes_store (id INTEGER PRIMARY KEY, item TEXT, price INTEGER, num_of_items_sold INTEGER, aisle INTEGER);

INSERT INTO clothes_store VALUES (1, "Jeans", 50, 20, 2);
INSERT INTO clothes_store VALUES (2, "Shirt", 40, 50, 2);
INSERT INTO clothes_store VALUES (3, "Skirt", 60, 8, 1);
INSERT INTO clothes_store VALUES (4, "T-Shirt", 10, 85, 2);
INSERT INTO clothes_store VALUES (5, "Top", 35, 47, 1);

SELECT * FROM clothes_store;
SELECT item, price FROM clothes_store ORDER BY price;
SELECT aisle, item FROM clothes_store GROUP BY aisle;
