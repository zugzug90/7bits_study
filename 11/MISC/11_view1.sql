CREATE OR REPLACE VIEW faculties_summary AS 
 SELECT fac.title, count(gsf.surname) AS count
   FROM ( SELECT gs.surname, f.title, f.id AS fac_id
           FROM faculty f
      LEFT JOIN ( SELECT g.id, s.surname, g.fac_id
                   FROM "group" g
              LEFT JOIN student s ON g.id = s.group_id) gs ON gs.fac_id = f.id) gsf
   JOIN faculty fac ON fac.id = gsf.fac_id
  GROUP BY fac.title;