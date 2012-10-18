SELECT T.surname,T."name",T.last_name, "group"."name" from "group",
	(SELECT *FROM student WHERE student.IS_HEAD = TRUE) AS T
WHERE T.group_id = "group".id 
ORDER BY T.surname, T."name", T.last_name ASC;