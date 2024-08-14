/** Grocery list:
Bananas(4), Peanut butter (1), chocolate(2)**/

CREATE TABLE groceries(id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER);

INSERT INTO groceries VALUES(1, "Bananas",4);
INSERT INTO groceries VALUES(2, "Peanut butter",1);
INSERT INTO groceries VALUES(3, "Chocolate",2);
SELECT * FROM groceries;
