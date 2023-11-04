SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.code = languages.country_code
WHERE languages.language = 'Slovene'
ORDER BY languages.percentage DESC;

SELECT countries.id, languages.language, COUNT(cities.id) as total_cities
FROM countries
JOIN cities ON countries.id = cities.country_id
JOIN languages ON countries.id = languages.country_id
GROUP BY countries.id, languages.language
ORDER BY total_cities DESC;

SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON cities.country_code = countries.code
WHERE countries.name = 'Mexico' AND cities.population > 500000;

SELECT l.country_code, l.Language, l.Percentage
FROM languages AS l
WHERE l.Percentage > 89
ORDER BY l.Percentage DESC;

SELECT * 
FROM countries 
WHERE surface_area < 501 
AND population > 100000;

SELECT * 
FROM countries 
WHERE government_form = 'Constitutional Monarchy' 
AND capital > 200 
AND life_expectancy > 75 
LIMIT 0, 1000;

SELECT countries.name, cities.name, cities.district, cities.population
FROM cities
JOIN countries ON cities.country_code = countries.code
WHERE countries.name = 'Argentina' AND cities.district = 'Buenos Aires' AND cities.population > 500000;

SELECT Region, COUNT(DISTINCT Code) AS NumberOfCountries 
FROM countries 
GROUP BY Region 
ORDER BY NumberOfCountries DESC 
LIMIT 0, 1000;