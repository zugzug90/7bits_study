SELECT TOTAL."name",TOTAL.starost,COUNT(*) 
FROM
	(SELECT  S.group_id, S.id,S.surname, STAROST.surname AS starost, G."name"  FROM student AS S, student AS STAROST, "group" AS G 
	WHERE
	STAROST.is_head
	AND 
	G.id = S.group_id 	
	AND
	STAROST.group_id = S.group_id) AS TOTAL
GROUP BY TOTAL.starost,TOTAL."name"
