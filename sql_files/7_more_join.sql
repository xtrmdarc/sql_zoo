SELECT id, title
FROM movie
WHERE yr=1962;

select yr
from movie
where title = 'Citizen Kane';

Select id, title, yr
from movie
where title like '%Star Trek%'
order by yr;

Select id
from actor 
where name = 'Glenn Close';

select id
from movie
where title = 'Casablanca';

select name
from movie join casting on id = movieid join actor a on a.id = actorid
where movieid = 11768;

select name
from movie join casting on id = movieid join actor a on a.id = actorid
where title = 'Alien';

select title
from movie join casting on id = movieid join actor a on a.id = actorid
where name = 'Harrison Ford';

select title
from movie join casting on id = movieid join actor a on a.id = actorid
where name = 'Harrison Ford' and ord <>1;

select title, name
from movie join casting on id = movieid join actor a on a.id = actorid
where yr = 1962 and ord = 1;

SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2;

select distinct title, (select name from actor a join casting b on a.id = b.actorid where b.movieid = m.id and b.ord = 1 )
from movie m join casting c on id = movieid
where actorid = (select id from actor where name = 'Julie Andrews');
 
select name
from movie join casting on id = movieid join actor a on a.id = actorid
group by name
having  sum(CASE WHEN ord = 1 then 1 else 0 end) >= 15
order by 1;

select title, count(actorid)
from movie join casting on id = movieid join actor a on a.id = actorid
where yr = 1978
group by 1
order by count(actorid) desc, name;

select name
from movie join casting on id = movieid join actor a on a.id = actorid
where movieid in (Select a.id from movie a join casting b on a.id = b.movieid join actor c on b.actorid = c.id where name = 'Art Garfunkel');
