SELECT *FROM
(SELECT DISTINCT G."name",S.surname,S.count,S.is_head FROM "group" AS G
INNER JOIN
(SELECT group_id, id, surname,"name",is_head, count(group_id) OVER (PARTITION BY group_id) FROM student) AS S
ON G.id = S.group_id) AS GS
WHERE GS.is_head = TRUE