SET search_path TO person;

SELECT * FROM persons;

SELECT * FROM persons WHERE country_of_birth = 'Canada'
OR country_of_birth = 'Japan'
OR country_of_birth = 'Poland';

SELECT * FROM persons 
WHERE country_of_birth
IN('Canada', 'Japan','Poland');

SELECT * FROM persons 
WHERE first_name 
IN ('Ed','Jada','Herbie');

SELECT * FROM persons 
WHERE persons.id 
IN ( 7,45,16,13,4);

SELECT * FROM persons 
WHERE persons.last_name 
IN ('Upton','Perkins','Stit');

SELECT * FROM persons 
WHERE persons.id
BETWEEN 45 AND 51;

SELECT first_name , persons.id 
FROM persons 
WHERE persons.id 
BETWEEN 12 AND 20;

SELECT * FROM persons
WHERE date_of_birth 
BETWEEN '2019-01-01' AND '2019-12-31';

SELECT * FROM persons
WHERE date_of_birth 
BETWEEN '2020-01-01' AND '2020-12-31';

SELECT * FROM persons 
WHERE first_name LIKE 'A%';

SELECT * FROM persons 
WHERE first_name LIKE '%a';

SELECT * FROM persons 
WHERE email LIKE '%@google.com';

SELECT * FROM persons 
WHERE email LIKE '%@google.%';

SELECT * FROM persons 
WHERE first_name LIKE '__f';


SELECT  * FROM persons 
WHERE country_of_birth LIKE '_a__n';

SELECT * FROM persons 
WHERE country_of_birth ILIKE 'c%';

SELECT first_name FROM persons 
WHERE first_name ILIKE 'm%';

SELECT country_of_birth , COUNT(*)
FROM persons 
GROUP BY country_of_birth;

SELECT country_of_birth , COUNT(*)
FROM persons 
GROUP BY country_of_birth
ORDER BY country_of_birth;

SELECT country_of_birth , COUNT(*)
FROM persons 
GROUP BY country_of_birth 
LIMIT 5;


SELECT date_of_birth FROM persons
GROUP BY date_of_birth;

SELECT country_of_birth , COUNT(*) FROM persons 
GROUP BY country_of_birth
HAVING COUNT(*) > 4
ORDER BY country_of_birth;

SELECT country_of_birth , COUNT(*) FROM persons 
GROUP BY country_of_birth 
HAVING COUNT(*) > 3;

SELECT country_of_birth , COUNT(*) FROM persons 
GROUP BY country_of_birth
HAVING COUNT(*)<= 4
ORDER BY country_of_birth;























