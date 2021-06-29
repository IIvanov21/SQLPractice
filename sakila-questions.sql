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
SELECT last_name FROM actor GROUP BY last_name HAVING  COUNT(last_name)=1 ORDER BY last_name DESC; 
SELECT last_name FROM actor GROUP BY last_name HAVING COUNT(last_name)>1 ORDER BY last_name ASC;
/*Question Answer: 13.Which actor has appeared in the most films?*/
SELECT a.actor_id, a.first_name, a.last_name
FROM actor a
JOIN film_actor f ON a.actor_id=f.actor_id
group by a.actor_id, a.last_name
order by count(*) desc ;

SELECT release_year FROM film WHERE title='Academy Dinosaur';
SELECT AVG(length) FROM film;
