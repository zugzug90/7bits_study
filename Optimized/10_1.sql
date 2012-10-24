SELECT S.surname, G."name" FROM student S 
INNER JOIN "group" G
ON S.group_id = G.id
WHERE S.is_head 
ORDER BY S.surname ASC