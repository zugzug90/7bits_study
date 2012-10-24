SELECT 1,F.id,F.title,F.decan_surname,  COUNT(G.id) FROM faculty AS F
LEFT OUTER JOIN
"group" AS G
ON F.id = G.fac_id
	LEFT OUTER JOIN student S
	ON S.group_id = G.id
GROUP BY F.title,F.id,F.decan_surname
UNION
SELECT *FROM (SELECT 2,TOTAL.fac_id,TOTAL."name",TOTAL.starost,COUNT(*) 
FROM
	(SELECT  G.fac_id,S.group_id, S.id,S.surname, STAROST.surname AS starost, G."name"  FROM student AS S, student AS STAROST, "group" AS G 
	WHERE
	STAROST.is_head
	AND 
	G.id = S.group_id 	
	AND
	STAROST.group_id = S.group_id) AS TOTAL
GROUP BY TOTAL.starost,TOTAL."name",TOTAL.fac_id) AS GCOUNT
ORDER BY 2,1,5 ASC
