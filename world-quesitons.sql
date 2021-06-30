USE world;

/* World question 1 to 20*/
SELECT COUNT(name) FROM city WHERE CountryCode='USA';

SELECT population, lifeexpectancy FROM country WHERE name='Argentina';

SELECT  name, lifeexpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy DESC LIMIT 1;

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

SELECT name, population FROM country WHERE population IS NOT NULL AND population!=0 ORDER BY population ASC LIMIT 1;

SELECT COUNT(CODE) FROM country;

SELECT name, surfacearea FROM country ORDER BY surfacearea DESC LIMIT 10;

SELECT name, population FROM city WHERE CountryCode='JPN' ORDER BY population DESC LIMIT 5;

UPDATE country SET HeadOfState = 'Elizabeth II' WHERE HeadOfState = 'Elisabeth II';
SELECT name, headofstate FROM country WHERE HeadOfState='Elizabeth II';

SELECT name FROM country WHERE (population/surfacearea>0.9) order by (population/surfacearea) LIMIT 10;

SELECT DISTINCT language From countrylanguage ORDER BY language ASC;

SELECT name, GNP FROM country ORDER BY GNP DESC LIMIT 10;

SELECT c2.Name, COUNT(c1.CountryCode) AS NumLanguages
FROM countrylanguage c1 JOIN country c2
ON c1.CountryCode=c2.Code GROUP BY CountryCode
ORDER BY  NumLanguages DESC LIMIT 10;

SELECT c2.Name AS CountryName FROM country c2
JOIN countrylanguage c1 ON c2.Code=c1.CountryCode
WHERE c1.Language = 'German' AND c1.Percentage>=50;

SELECT  name, lifeexpectancy FROM country WHERE LifeExpectancy IS NOT NULL ORDER BY LifeExpectancy ASC LIMIT 1;

SELECT GovernmentForm, COUNT(*) FROM country GROUP BY GovernmentForm ORDER BY COUNT(*) DESC LIMIT 3;

SELECT COUNT(IndepYear) FROM country;

