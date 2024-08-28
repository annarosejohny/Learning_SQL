/* Create table about the people and what they do here */
CREATE TABLE movie_stars(id INTEGER PRIMARY KEY AUTOINCREMENT, fullname TEXT, Partner TEXT);
INSERT INTO movie_stars(fullname, partner) VALUES ("Alexis Bledel", "Vincent Kartheiser");
INSERT INTO movie_stars(fullname, partner) VALUES ("Blake Lively", "Ryan Reynolds");
INSERT INTO movie_stars(fullname, partner) VALUES ("Keith Urban","Nicole Kidman");
INSERT INTO movie_stars(fullname, partner) VALUES ("Angelina Jollie","Brad Pitt");
INSERT INTO movie_stars(fullname, partner) VALUES ("Ben Affleck", "Jennifer Garner");
INSERT INTO movie_stars(fullname, partner) VALUES ("John Krasinski", "Emily Blunt"); 
INSERT INTO movie_stars(fullname, partner) VALUES ("Ryan Phillippe", "Reese Witherspoon"); 


CREATE TABLE movies_together(id INTEGER PRIMARY KEY AUTOINCREMENT, movie_name TEXT, actor_actress TEXT);
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("crypto", "Alexis Bledel");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("it", "Ryan Reynolds");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("Green Lantern", "Blake Lively");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("The fighter","Keith Urban");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("By the sea", "Brad Pitt");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("Elektra", "Jennifer Garner");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("A Quiet Place", "Emily Blunt");
INSERT INTO movies_together(movie_name, actor_actress) VALUES ("Cruel intentions", "Ryan Phillippe");

SELECT * FROM movie_stars;
SELECT * FROM movies_together;

/* Returns a table with the movie names that the actors acted together */
SELECT movie_stars.fullname, movies_together.movie_name FROM movie_stars JOIN movies_together ON movie_stars.partner = movies_together.actor_actress OR movie_stars.fullname = movies_together.actor_actress ORDER BY fullname;

