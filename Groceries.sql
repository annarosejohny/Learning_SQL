/** Grocery list**/
 
CREATE TABLE groceries (id INTEGER PRIMARY KEY, item TEXT, quantity INTEGER, aisle INTEGER);

INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 1, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 0, 4);

SELECT name FROM groceries WHERE aisle > 5 ORDER BY aisle;

/* Calculate sum*/
SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle;
/*answer = |aisle |sum|
           |2     |9  |
           |4     |1  | ...*/



