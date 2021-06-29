USE world;

/* World question 1 to 7*/
SELECT COUNT(name) FROM city WHERE CountryCode='USA';

SELECT population, lifeexpectancy FROM country WHERE name='Argentina';

SELECT  name, MAX(LifeExpectancy) IS NOT NULL FROM country GROUP BY name ORDER BY name LIMIT 1;

SELECT city.name FROM city
JOIN country ON city.id=country.capital
WHERE country.name='Spain';

SELECT countrylanguage.language FROM countrylanguage
JOIN country ON countrylanguage.countrycode=country.code
WHERE country.region='Southeast Asia';

SELECT name From city WHERE name LIKE 'F%' LIMIT 25;

SELECT city.countrycode, COUNT(city.countrycode) as value FROM city
JOIN country ON city.countrycode=country.code
WHERE country.code='CHN'LIMIT 1;


