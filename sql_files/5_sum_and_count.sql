SELECT SUM(population)
FROM world;

select distinct continent
from world;

select sum(gdp)
from world
where continent = 'Africa';

Select count(*)
from world
where area >= 1000000;

select sum(population)
from world
where name in ('Estonia', 'Latvia', 'Lithuania');

select continent, count(name)
from world
group by continent;

select continent, count(name)
from world
where population > 10000000
group by continent;

Select continent
from world
group by continent
having sum(population) >= 100000000;