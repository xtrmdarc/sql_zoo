
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

