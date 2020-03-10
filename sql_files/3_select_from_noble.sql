SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature';

Select yr, subject
from nobel
where winner = 'Albert Einstein';

Select winner
from nobel
where yr >= 2000
and subject = 'Peace';

Select yr, subject, winner
from nobel
where subject = 'Literature' and yr between 1980 and 1989;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

Select winner 
from nobel 
where winner like 'John%';

Select yr, subject, winner
from nobel
where subject = 'Physics' and yr = 1980 xor subject = 'Chemistry' and yr = 1984;

Select yr, subject, winner
from nobel
where yr = 1980 and subject not in ('Chemistry','Medicine');

Select yr, subject, winner 
from nobel
where subject = 'Medicine' and yr < 1910  xor subject = 'Literature' and yr >= 2004;

Select *
from nobel
where winner = concat('PETER GR',char(220),'NBERG');

SELECT *
from nobel
where winner = "EUGENE O'NEILL";

SELECT *
from nobel
where winner = "EUGENE O'NEILL";

Select winner, yr, subject
from nobel
where winner like 'Sir%'
order by yr desc;

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Physics','Chemistry'), subject,winner;

SELECT name FROM world
WHERE population >
(SELECT population FROM world
WHERE name='Russia');

