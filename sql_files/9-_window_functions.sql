SELECT lastName, party, votes
FROM ge
WHERE constituency = 'S14000024' AND yr = 2017
ORDER BY votes DESC;

SELECT party, votes,
       RANK() OVER (ORDER BY votes DESC) as posn
FROM ge
WHERE constituency = 'S14000024' AND yr = 2017
ORDER BY party;

SELECT yr,party, votes,
      RANK() OVER (PARTITION BY yr ORDER BY votes DESC) as posn
FROM ge
WHERE constituency = 'S14000021'
ORDER BY party,yr;

SELECT constituency,party, votes,
              RANK() OVER (PARTITION by constituency ORDER BY votes desc) posn
FROM ge
WHERE constituency BETWEEN 'S14000021' AND 'S14000026'
AND yr  = 2017
ORDER BY 4,1;

Select constituency, party from 
(SELECT constituency, party, RANK() OVER (PARTITION by constituency ORDER BY votes desc) posn
FROM ge
WHERE constituency BETWEEN 'S14000021' AND 'S14000026' AND
yr  = 2017) A
where A.posn = 1;

Select party, count(*) from 
(SELECT constituency, party, RANK() OVER (PARTITION by constituency ORDER BY votes desc) posn
  FROM ge
 WHERE constituency like  'S%' AND
yr  = 2017) A
where A.posn = 1
group by 1;