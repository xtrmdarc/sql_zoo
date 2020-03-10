SELECT name, continent, population FROM world;

SELECT name FROM world
WHERE population >= 200000000;

Select name, gdp/population
from world
where population >= 200000000;

Select name, population/1000000 PM
from world
where continent = 'South America';

Select name, population
from world
where name in ('France', 'Germany', 'Italy');

Select name
from world
where name like '%united%';

Select name, population, area
from world
where area > 3000000 or population > 250000000;

select name, population, area
from world
where  area > 3000000 xor population > 250000000;

select name, round(population/1000000,2),round(gdp/1000000000,2)
from world
where continent = 'South America';

Select name, round(gdp/population/1000)*1000
from world
where gdp >= 1000000000000;

SELECT name, capital
FROM world
WHERE length(name) = length(capital);

SELECT name, capital
FROM world
where left(name,1) = left(capital,1) and name <> capital;

SELECT name
FROM world
WHERE name LIKE '%a%'
AND name like '%e%'
AND name like '%i%'
AND name like '%o%'
AND name like '%u%'
AND name NOT LIKE '%_% %_%';