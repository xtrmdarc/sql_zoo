Select name
from world 
where gdp/population > (Select gdp/population from world where name = 'United Kingdom');

Select name
from world 
where continent = 'Europe' and gdp/population > (Select gdp/population from world where name = 'United Kingdom');

Select name, continent
from world 
where continent in (select continent from world where name in ('Argentina', 'Australia'))
order by name;

Select name, population
from world 
where population between (select population from world where name = 'Canada') +1 and
(select population from world where name = 'Poland') - 1;

Select name, concat(round(population/(select population from world where name = 'Germany')*100),'%')
from world
where continent  = 'Europe';

Select name
from world
where gdp > ALL ( select gdp from world where continent = 'Europe' and gdp > 0);

SELECT continent, name, area FROM world x
WHERE area >= ALL
(SELECT area FROM world y
WHERE y.continent=x.continent
AND area>0);

Select name, continent, population
from world 
where continent not in (Select continent
from world
where population >= 25000000);

select name, continent
from world a
where population > 3 * (select max(population) from world b where a.continent = b.continent and b.name <> a.name);
