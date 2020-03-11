
SELECT A_STRONGLY_AGREE	
FROM nss
WHERE question='Q01'
AND institution='Edinburgh Napier University'
AND subject='(8) Computer Science';

SELECT institution, subject
FROM nss
WHERE question='Q15' and score >= 100;

SELECT institution,score
FROM nss
WHERE question='Q15'
AND subject='(8) Computer Science'
AND score < 50;

SELECT subject, sum(response)
FROM nss
WHERE question='Q22'
AND subject in ('(8) Computer Science','(H) Creative Arts and Design')
group by subject;

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