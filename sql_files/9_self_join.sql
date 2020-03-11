select count(*)
from stops;

select id
from stops
where name = 'Craiglockhart';

select distinct id,name
from stops 
join route on stop = id
where company = 'LRT' and num = 4
order by pos;

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
having count(*) > 1;

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53  and b.stop = 149;

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name = 'London Road';

SELECT distinct a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Haymarket' and stopb.name = 'Leith';

SELECT distinct a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name = 'Tollcross';

SELECT stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and a.company = 'LRT';

SELECT a.company, a.num,a.stop, b.company, b.num,b.stop
FROM route a JOIN route b ON
  (a.stop = 53 and b.stop=147) ;


SELECT a.num, a.company, stopb.name, d.num, d.company
FROM route a JOIN route b on ( a.num = b.num and a.company = b.company) 
JOIN route c on (b.stop = c.stop) JOIN route d on (c.num = d.num and c.company = d.company and d.stop = 147 )
JOIN stops stopa on a.stop = stopa.id 
JOIN stops stopb on b.stop = stopb.id
where a.stop = 53
order by a.num, stopb.name, d.num
