SELECT department.title AS "Пустые Кафедры"  FROM department
WHERE department.id  
	NOT IN 
	(SELECT DISTINCT department_id FROM student);