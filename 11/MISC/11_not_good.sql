-- CREATE Views: faculties_summary AND groups_summary AT FIRST!!!
SELECT faculty.title AS "Фак.-т/Группа",faculties_summary.count AS "Кол.-во", faculty.decan_surname AS "Декан/Староста" FROM faculty, faculties_summary WHERE faculty.id = 1 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 1
UNION ALL 
SELECT faculty.title,faculties_summary.count, faculty.decan_surname  FROM faculty, faculties_summary WHERE faculty.id = 2 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 2
UNION ALL 
SELECT faculty.title,faculties_summary.count, faculty.decan_surname  FROM faculty, faculties_summary WHERE faculty.id = 3 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 3
UNION ALL
SELECT faculty.title,faculties_summary.count, faculty.decan_surname  FROM faculty, faculties_summary WHERE faculty.id = 4 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 4
UNION ALL
SELECT faculty.title,faculties_summary.count, faculty.decan_surname  FROM faculty, faculties_summary WHERE faculty.id = 5 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 5
UNION ALL
SELECT faculty.title,faculties_summary.count, faculty.decan_surname  FROM faculty, faculties_summary WHERE faculty.id = 6 AND faculties_summary.title = faculty.title
UNION ALL
SELECT group_name, q, surname FROM groups_summary WHERE fac_id = 6