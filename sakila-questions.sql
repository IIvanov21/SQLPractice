/* Sakila challenge question 1-6 */
USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE first_name = 'John';
SELECT * FROM actor WHERE last_name='Neeson';
SELECT * FROM actor WHERE (actor_id % 10) = 0;
SELECT description FROM film WHERE film_id=100; 
SELECT * FROM film WHERE rating = 'R';
/* Sakila questions 7-10 */
SELECT * FROM film WHERE rating != 'R';
SELECT * FROM film ORDER BY length ASC LIMIT 10;
SELECT * FROM film WHERE length=(SELECT MAX(length)FROM film);
SELECT * FROM film WHERE special_features='Deleted Scenes';
/* Sakila questions 11-15 */
