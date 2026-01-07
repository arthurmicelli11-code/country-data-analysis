-- Top 10 contries GDP

SELECT country, population, gdp
FROM country_data
ORDER BY gdp DESC
LIMIT 10;


-- GDP per capita for countries with large population

SELECT country, population, gdp 
       ROUND(gdp/population, 2) AS gdp_per_capita
FROM country_data
WHERE population > 10000000
ORDER BY gdp_per_capita DESC; 


-- Average GDP and population by region

SELECT region,
       ROUND(AVG(gdp), 2) AS avg_gdp,
       ROUND(AVG(population), 2) AS avg_population,
FROM country_data
GROUP BY region
ORDER BY avg_gdp DESC;




