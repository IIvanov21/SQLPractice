/* Sakila challenge question 1-5 */
USE sakila;
SELECT * FROM actor;
SELECT * FROM actor WHERE last_name='Neeson';
SELECT * FROM actor WHERE (actor_id % 10) = 0;
SELECT description FROM film WHERE film_id=100; 
SELECT * FROM film WHERE rating = 'R';