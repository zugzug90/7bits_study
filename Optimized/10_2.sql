SELECT id,title FROM department DEP WHERE
NOT EXISTS (SELECT NULL FROM student WHERE student.department_id = DEP.id) 