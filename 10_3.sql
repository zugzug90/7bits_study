SELECT intersum."name",intersum.q, s1.surname, s1.name, s1.last_name  FROM student AS s1 
INNER JOIN
	(SELECT "group"."name", "group".id, total.q FROM "group", 
		(SELECT COUNT(s.id) AS q, g.id AS gid FROM student AS s 
			INNER JOIN 
			"group" AS g ON (s.group_id=g.id)
	GROUP BY (g.id)) AS total WHERE "group".id = gid)
AS intersum
ON intersum.id = s1.group_id WHERE (s1.is_head = true) 

--  intersum IS subQuery |name|id|total| for each group
-- s1 IS subTable from student
-- total is Aggregating GroupBy+Count()