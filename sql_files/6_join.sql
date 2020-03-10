SELECT matchid, player FROM goal 
WHERE teamid = 'GER';

SELECT id,stadium,team1,team2
FROM game ga
join goal go on ga.id  = go.matchid
where id 1012;

SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (id=matchid)
where teamid = 'GER';

SELECT team1, team2, player
FROM game JOIN goal ON (id=matchid)
where player like 'Mario%';

SELECT player, teamid, coach, gtime
FROM goal 
join eteam on teamid = id
WHERE gtime<=10;

select mdate, teamname
from game
join eteam on team1 = eteam.id
where coach = 'Fernando Santos';

select player 
from goal
join game on id = matchid 
where stadium = 'National Stadium, Warsaw';

SELECT distinct player
FROM game JOIN goal ON matchid = id 
WHERE teamid<>'GER' AND (team2='GER' OR team1='GER');

SELECT teamname, count(*)
FROM eteam JOIN goal ON id=teamid
group by teamname
ORDER BY teamname;

select stadium, count(*)
from game join goal on id = matchid
group by 1;

SELECT matchid,mdate, count(*)
FROM game JOIN goal ON matchid = id
WHERE (team1 = 'POL' OR team2 = 'POL')
group by 1,2;

Select matchid, mdate, count(*)
from game join goal on id= matchid
where teamid = 'GER'
group by 1,2;

SELECT mdate,
  team1,
  sum(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  sum(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game JOIN goal ON matchid = id
group by mdate,2,4
order by mdate, matchid, team1, team2;


SELECT subject, sum(response * A_STRONGLY_AGREE/100)
FROM nss
WHERE question='Q22'
AND subject in ('(8) Computer Science','(H) Creative Arts and Design')
group by 1;

SELECT subject, round(sum(response * A_STRONGLY_AGREE)/sum(response))
FROM nss
WHERE question='Q22'
AND subject in ('(8) Computer Science','(H) Creative Arts and Design')
group by 1;

SELECT institution,  round(sum(response*score/100)/sum(response) * 100)
FROM nss
WHERE question='Q22'
AND (institution LIKE '%Manchester%')
group by 1
ORDER BY institution;

SELECT institution, sum(sample), sum(case when subject = '(8) Computer Science' then response else 0 end)
FROM nss
WHERE question='Q01'
AND (institution LIKE '%Manchester%')
group by 1;