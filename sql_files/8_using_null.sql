select name
from teacher
where dept is null;

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
ON (teacher.dept=dept.id);

SELECT teacher.name, dept.name
FROM teacher left JOIN dept
ON (teacher.dept=dept.id);

SELECT teacher.name, dept.name
FROM teacher RIGHT JOIN dept
ON (teacher.dept=dept.id);

select name, COALESCE(mobile,'07986 444 2266')
from teacher;

select teacher.name, COALESCE(dept.name,'None')
from teacher
left join dept on dept = dept.id;

select count(id), count(mobile)
from teacher;

select dept.name, count(teacher.name)
from teacher  
right join dept on teacher.dept = dept.id
group by dept.name;

Select name, case when dept in (1,2) then 'Sci' else 'Art' end
from teacher;

Select name, case when dept in (1,2) then 'Sci' when dept = 3 then  'Art' else 'None' end
from teacher;
